"""Frozen source/style splits and reproducible on-the-fly paired examples."""

from collections import Counter
import hashlib
import json
from pathlib import Path
import random

import numpy as np
from PIL import Image, ImageOps
import torch
from torch.utils.data import Dataset

from .lut import apply_lut, identity_lut, read_lut


def file_hash(path: Path) -> str:
    with path.open("rb") as file:
        return hashlib.file_digest(file, "sha256").hexdigest()


def load_image(path: str | Path, size: int) -> torch.Tensor:
    with Image.open(path) as file:
        if file.format != "JPEG":
            raise ValueError(f"Expected JPEG: {path}")
        file.draft("RGB", (size, size))
        image = ImageOps.exif_transpose(file).convert("RGB")
        image = image.resize((size, size), Image.Resampling.BICUBIC)
        return torch.from_numpy(np.asarray(image).copy()).permute(2, 0, 1).float() / 255


def split_groups(groups: list[str], seed: int) -> dict[str, str]:
    groups = sorted(set(groups))
    if len(groups) < 3:
        raise ValueError(
            "At least 3 independent groups are required for train/validation/test"
        )
    random.Random(seed).shuffle(groups)
    heldout = max(1, round(len(groups) * 0.15))
    return {
        group: "validation" if i < heldout else "test" if i < heldout * 2 else "train"
        for i, group in enumerate(groups)
    }


def prepare_manifest(
    images: Path, luts: Path, output: Path, seed: int, groups_file: Path | None = None
) -> dict:
    """No generated examples enter the split: split sources and styles first.

    groups_file optionally maps paths relative to images to capture/session IDs.
    Otherwise each photo folder is one group. Exact decoded duplicates are removed.
    """
    groups = json.loads(groups_file.read_text()) if groups_file else {}
    image_rows, lut_rows, excluded = [], [], []
    seen_images, seen_luts = {}, {}
    for path in sorted(images.rglob("*")):
        if path.name.lower() not in ("origin.jpg", "original.jpg"):
            continue
        if (
            path.name.lower() == "original.jpg"
            and (path.parent / "origin.jpg").exists()
        ):
            continue
        relative = path.relative_to(images).as_posix()
        with Image.open(path) as file:
            if file.format != "JPEG":
                raise ValueError(f"Not a JPEG: {path}")
            image = ImageOps.exif_transpose(file).convert("RGB")
            pixels = hashlib.sha256(
                str(image.size).encode() + image.tobytes()
            ).hexdigest()
            width, height = image.size
        if pixels in seen_images:
            excluded.append(
                {
                    "path": str(path.resolve()),
                    "reason": "duplicate image",
                    "same_as": seen_images[pixels],
                }
            )
            continue
        seen_images[pixels] = str(path.resolve())
        image_rows.append(
            {
                "path": str(path.resolve()),
                "sha256": file_hash(path),
                "pixels_sha256": pixels,
                "group": groups.get(
                    relative, path.parent.relative_to(images).as_posix()
                ),
                "width": width,
                "height": height,
            }
        )
    # Only top-level style LUTs. Log restoration / camera calibration folders are not style data.
    for path in sorted(luts.iterdir()):
        if path.suffix.lower() not in (".plut", ".cube"):
            continue
        try:
            lut = read_lut(path)
        except ValueError as error:
            # Record rejected source files; never repair payloads or fabricate missing samples.
            category = "non_srgb" if "Only sRGB LUTs" in str(error) else "invalid_lut"
            excluded.append(
                {
                    "path": str(path.resolve()),
                    "category": category,
                    "reason": str(error),
                }
            )
            continue
        digest = hashlib.sha256(lut.numpy().tobytes()).hexdigest()
        if digest in seen_luts:
            excluded.append(
                {
                    "path": str(path.resolve()),
                    "reason": "duplicate LUT",
                    "same_as": seen_luts[digest],
                }
            )
            continue
        seen_luts[digest] = str(path.resolve())
        lut_rows.append(
            {
                "path": str(path.resolve()),
                "sha256": file_hash(path),
                "lut_sha256": digest,
                "group": groups.get("lut:" + path.name, path.stem),
            }
        )
    image_split = split_groups([x["group"] for x in image_rows], seed)
    lut_split = split_groups([x["group"] for x in lut_rows], seed + 1)
    for rows, splits in ((image_rows, image_split), (lut_rows, lut_split)):
        for row in rows:
            row["split"] = splits[row["group"]]
    if any(
        sum(row["split"] == split for row in image_rows) < 2
        for split in ("train", "validation", "test")
    ):
        raise ValueError(
            "Each image split needs at least 2 distinct originals; add more source groups"
        )
    counts = {
        "images": dict(Counter(x["split"] for x in image_rows)),
        "luts": dict(Counter(x["split"] for x in lut_rows)),
    }
    warnings = []
    if len(image_rows) < 1000:
        warnings.append(
            "Fewer than 1000 unique originals; inspect scene coverage before claiming generalization."
        )
    if len(lut_rows) < 100:
        warnings.append(
            "Fewer than 100 unique LUTs; mixtures do not replace independent style diversity."
        )
    if not groups_file:
        warnings.append(
            "Split by photo directory. Group burst/near-duplicate scenes with --groups before final evaluation."
        )
    result = {
        "version": 1,
        "seed": seed,
        "encoding": "srgb",
        "layout": "C,B,G,R",
        "lut_size": 33,
        "images": image_rows,
        "luts": lut_rows,
        "excluded": excluded,
        "counts": counts,
        "warnings": warnings,
    }
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(json.dumps(result, ensure_ascii=False, indent=2) + "\n")
    return {
        "counts": counts,
        "excluded": len(excluded),
        "exclusions": dict(Counter(x.get("category", x["reason"]) for x in excluded)),
        "warnings": warnings,
    }


def read_manifest(path: Path, verify: bool = True) -> dict:
    manifest = json.loads(path.read_text())
    if (
        manifest["version"],
        manifest["encoding"],
        manifest["layout"],
        manifest["lut_size"],
    ) != (1, "srgb", "C,B,G,R", 33):
        raise ValueError("Unsupported data manifest")
    for kind in ("images", "luts"):
        assignments = {}
        for row in manifest[kind]:
            for key in (row["group"], row["sha256"]):
                if key in assignments and assignments[key] != row["split"]:
                    raise ValueError(f"Cross-split data leakage: {row['path']}")
                assignments[key] = row["split"]
            if verify and file_hash(Path(row["path"])) != row["sha256"]:
                raise ValueError(f"Data changed since preparation: {row['path']}")
    return manifest


def audit_resampling(manifest_path: Path, output: Path, samples: int = 4096) -> dict:
    """Measure sampled representation error, independently of any learned model."""
    if samples < 1:
        raise ValueError("Sample count must be positive")
    manifest = read_manifest(manifest_path)
    generator = torch.Generator().manual_seed(manifest["seed"])
    probe = torch.rand(1, 3, 1, samples, generator=generator)
    rows = []
    for record in manifest["luts"]:
        native = read_lut(record["path"], size=None)
        target = read_lut(record["path"])
        error = (apply_lut(native[None], probe) - apply_lut(target[None], probe)).abs()
        rows.append(
            {
                "path": record["path"],
                "source_size": native.shape[-1],
                "mean_abs": error.mean().item(),
                "max_abs": error.max().item(),
            }
        )
    summary = {
        "lut_count": len(rows),
        "samples_per_lut": samples,
        "domain": "uniform sRGB RGB",
        "mean_of_mean_abs": sum(row["mean_abs"] for row in rows) / len(rows),
        "sampled_max_abs": max(row["max_abs"] for row in rows),
        "note": "Sampled errors, not worst-case bounds. Effects are rendered using native grids.",
    }
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(json.dumps(summary | {"luts": rows}, indent=2) + "\n")
    return summary


class PairDataset(Dataset):
    def __init__(
        self,
        manifest: dict,
        image_split: str,
        lut_split: str,
        samples: int,
        size: int = 320,
        augment: bool = False,
    ):
        self.images = [
            x["path"] for x in manifest["images"] if x["split"] == image_split
        ]
        paths = [x["path"] for x in manifest["luts"] if x["split"] == lut_split]
        if not paths:
            raise ValueError(f"No LUTs in {lut_split}")
        self.luts = torch.stack([read_lut(path) for path in paths])
        self.native_luts = [read_lut(path, size=None) for path in paths]
        if len(self.images) < 2:
            raise ValueError(f"At least 2 images required in {image_split}")
        self.samples, self.size, self.augment = samples, size, augment
        self.seed, self.epoch = manifest["seed"], 0
        self.identity = identity_lut()

    def __len__(self):
        return self.samples

    def __getitem__(self, index):
        rng = random.Random(self.seed + index + self.epoch * 1_000_003)
        if self.augment:
            a, b = rng.sample(range(len(self.images)), 2)
            style = rng.randrange(len(self.luts))
            other_style = (
                rng.randrange(len(self.luts)) if rng.random() < 0.25 else style
            )
            mixture = rng.random() if other_style != style else 0.0
            strength = 0.0 if rng.random() < 0.1 else rng.uniform(0.4, 1.0)
        else:
            # Cycle styles first so every held-out style is evaluated if samples >= LUT count.
            a = index % len(self.images)
            b = (
                a
                + 1
                + (index // (len(self.luts) * len(self.images)))
                % (len(self.images) - 1)
            ) % len(self.images)
            style = other_style = index % len(self.luts)
            mixture, strength = 0.0, 1.0
        images = torch.stack([load_image(self.images[i], self.size) for i in (a, b)])
        if self.augment and rng.random() < 0.5:
            images = images.flip(-1)
        target = torch.lerp(self.luts[style], self.luts[other_style], mixture)
        target = torch.lerp(self.identity, target, strength)
        # Render native grids, not the resampled supervision grid. This preserves the
        # source LUT's real effect and makes 33^3 representation error measurable.
        effects = apply_lut(self.native_luts[style][None], images)
        if mixture:
            effects = torch.lerp(
                effects, apply_lut(self.native_luts[other_style][None], images), mixture
            )
        effects = torch.lerp(images, effects, strength)
        return images, target, effects
