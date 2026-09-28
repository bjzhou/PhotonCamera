"""LUT IO and differentiable trilinear sampling. Layout: [C, B, G, R]."""

from pathlib import Path
import struct

import numpy as np
import torch
from torch import Tensor
from torch.nn import functional as F


def identity_lut(size: int = 33) -> Tensor:
    axis = torch.linspace(0, 1, size, dtype=torch.float32)
    b, g, r = torch.meshgrid(axis, axis, axis, indexing="ij")
    return torch.stack((r, g, b))


def read_lut(path: str | Path, size: int | None = 33) -> Tensor:
    path = Path(path)
    if path.suffix.lower() == ".plut":
        raw = path.read_bytes()
        if len(raw) < 16:
            raise ValueError(f"Truncated PLUT: {path}")
        magic, version, n, kind = struct.unpack_from("<4sIII", raw)
        if magic != b"PLUT" or version not in (1, 2, 3, 4) or kind not in (0, 1):
            raise ValueError(f"Unsupported PLUT header: {path}")
        offset = 16 + (4 if version >= 2 else 0) + (4 if version >= 3 else 0)
        if len(raw) < offset:
            raise ValueError(f"Truncated PLUT metadata: {path}")
        curve = struct.unpack_from("<I", raw, 16)[0] if version >= 2 else 0
        gamut = struct.unpack_from("<I", raw, 20)[0] if version >= 3 else 0
        if curve != 0 or gamut != 0:
            raise ValueError(
                f"Only sRGB LUTs are accepted (curve={curve}, gamut={gamut}): {path}"
            )
        if not 2 <= n <= 129 or len(raw) != offset + n**3 * 3 * (kind + 1):
            raise ValueError(f"Invalid PLUT dimensions or payload length: {path}")
        values = np.frombuffer(raw, dtype="<u2" if kind else "u1", offset=offset)
        values = values.astype(np.float32) / (65535 if kind else 255)
    elif path.suffix.lower() == ".cube":
        n, rows = 0, []
        domain_min, domain_max = [0.0, 0.0, 0.0], [1.0, 1.0, 1.0]
        for number, line in enumerate(
            path.read_text(encoding="utf-8-sig").splitlines(), 1
        ):
            parts = line.split("#", 1)[0].strip().split()
            if not parts or parts[0] == "TITLE":
                continue
            key = parts[0]
            if key == "LUT_3D_SIZE" and len(parts) == 2:
                n = int(parts[1])
            elif key in ("DOMAIN_MIN", "DOMAIN_MAX") and len(parts) == 4:
                if key == "DOMAIN_MIN":
                    domain_min = list(map(float, parts[1:]))
                else:
                    domain_max = list(map(float, parts[1:]))
            elif len(parts) == 3:
                rows.append(list(map(float, parts)))
            else:
                raise ValueError(f"Unsupported CUBE line {number}: {path}")
        # DOMAIN describes INPUT coordinates, never an output normalization.
        if domain_min != [0.0, 0.0, 0.0] or domain_max != [1.0, 1.0, 1.0]:
            raise ValueError(f"Expected CUBE input domain [0,1]: {path}")
        if not 2 <= n <= 129 or len(rows) != n**3:
            raise ValueError(f"Invalid CUBE size or row count: {path}")
        values = np.asarray(rows, dtype=np.float32)
    else:
        raise ValueError(f"Expected .cube or .plut: {path}")
    if not np.isfinite(values).all() or values.min() < 0 or values.max() > 1:
        raise ValueError(f"Expected finite sRGB LUT outputs in [0,1]: {path}")
    lut = torch.from_numpy(values.reshape(n, n, n, 3).copy()).permute(3, 0, 1, 2)
    if size is not None and n != size:
        lut = F.interpolate(
            lut[None], size=(size,) * 3, mode="trilinear", align_corners=True
        )[0]
    return lut.contiguous()


def write_lut(path: str | Path, lut: Tensor) -> None:
    path = Path(path)
    lut = lut.detach().float().cpu()
    if lut.ndim != 4 or lut.shape[0] != 3 or len(set(lut.shape[1:])) != 1:
        raise ValueError("Expected [3,N,N,N] LUT")
    if not torch.isfinite(lut).all() or lut.min() < 0 or lut.max() > 1:
        raise ValueError("LUT output must be finite and in [0,1]")
    n = lut.shape[-1]
    rows = lut.permute(1, 2, 3, 0).contiguous().numpy().reshape(-1, 3)
    path.parent.mkdir(parents=True, exist_ok=True)
    if path.suffix.lower() == ".plut":
        # v3, uint16, sRGB transfer function (0), sRGB primaries (0).
        path.write_bytes(
            struct.pack("<4sIIIII", b"PLUT", 3, n, 1, 0, 0)
            + np.rint(rows * 65535).astype("<u2").tobytes()
        )
    elif path.suffix.lower() == ".cube":
        with path.open("w", encoding="utf-8") as file:
            file.write(f"LUT_3D_SIZE {n}\nDOMAIN_MIN 0 0 0\nDOMAIN_MAX 1 1 1\n")
            np.savetxt(file, rows, fmt="%.8f")
    else:
        raise ValueError("Output extension must be .cube or .plut")


def apply_lut(lut: Tensor, image: Tensor) -> Tensor:
    """FP32, differentiable in the LUT; same R-fastest convention as App GL textures.

    Gather-based sampling also works on MPS, which does not universally support
    volumetric grid_sample. No colour-space transforms or 8-bit intermediate.
    """
    with torch.autocast(device_type=image.device.type, enabled=False):
        lut, image = lut.float(), image.float()
        batch, _, height, width = image.shape
        n = lut.shape[-1]
        if lut.shape[0] == 1 and batch != 1:
            lut = lut.expand(batch, -1, -1, -1, -1)
        xyz = image.clamp(0, 1).flatten(2) * (n - 1)
        lo = xyz.floor().long().clamp(max=n - 2)
        f = xyz - lo.float()
        flat = lut.reshape(batch, 3, -1)
        result = torch.zeros_like(image).flatten(2)
        for db in (0, 1):
            for dg in (0, 1):
                for dr in (0, 1):
                    idx = (lo[:, 2] + db) * n * n + (lo[:, 1] + dg) * n + lo[:, 0] + dr
                    weight = f[:, 0] if dr else 1 - f[:, 0]
                    weight = weight * (f[:, 1] if dg else 1 - f[:, 1])
                    weight = weight * (f[:, 2] if db else 1 - f[:, 2])
                    result = (
                        result
                        + flat.gather(2, idx[:, None].expand(-1, 3, -1))
                        * weight[:, None]
                    )
        return result.reshape(batch, 3, height, width)
