"""Typed, lifetime-managed access to the repository's Adobe DNG SDK."""
from __future__ import annotations

import ctypes as ct
from pathlib import Path
import subprocess
import sys

import numpy as np

from errors import ToolError
HERE = Path(__file__).resolve().parent


def load_sdk() -> ct.CDLL:
    build = HERE / "build"
    # Always let CMake check dependencies; stale profile math must not survive SDK edits.
    subprocess.run(["cmake", "-S", str(HERE), "-B", str(build),
                    "-DCMAKE_BUILD_TYPE=Release"], check=True, stdout=sys.stderr)
    subprocess.run(["cmake", "--build", str(build), "-j", "8"],
                   check=True, stdout=sys.stderr)
    suffix = "dylib" if sys.platform == "darwin" else "so"
    lib = ct.CDLL(str(build / f"libphoton_dcp.{suffix}"))
    fp = np.ctypeslib.ndpointer(dtype=np.float32, flags="C_CONTIGUOUS")
    dp = np.ctypeslib.ndpointer(dtype=np.float64, flags="C_CONTIGUOUS")
    for name, arguments, result in [
        ("dcp_open", [ct.c_char_p], ct.c_void_p),
        ("dcp_close", [ct.c_void_p], None),
        ("dcp_error", [], ct.c_char_p),
        ("dcp_version", [], ct.c_char_p),
        ("dcp_name", [ct.c_void_p], ct.c_char_p),
        ("dcp_info", [ct.c_void_p, dp], None),
        ("dcp_apply", [ct.c_void_p, ct.c_int, fp, fp, ct.c_int], ct.c_int),
    ]:
        function = getattr(lib, name)
        function.argtypes, function.restype = arguments, result
    return lib


class Profile:
    def __init__(self, lib: ct.CDLL, path: Path):
        self.lib, self.path = lib, path.resolve()
        self.handle = lib.dcp_open(str(self.path).encode())
        if not self.handle:
            raise ToolError("sdk_failure", path=self.path, detail=lib.dcp_error().decode())
        info = np.empty(23 + 4097, dtype=np.float64)
        lib.dcp_info(self.handle, info)
        self.matrix = info[:9].reshape(3, 3).copy()
        self.to_srgb = info[9:18].reshape(3, 3).copy()
        self.exposure = float(info[18])
        self.hdr, self.embedded_curve = bool(info[19]), bool(info[20])
        self.maps = [bool(info[21]), bool(info[22])]
        self.curve = info[23:].copy()
        self.name = lib.dcp_name(self.handle).decode("utf-8")
        if not np.isfinite(info).all():
            self.close()
            raise ToolError("nonfinite_profile", path=self.path)

    def close(self):
        if self.handle:
            self.lib.dcp_close(self.handle)
            self.handle = None

    def __enter__(self):
        return self

    def __exit__(self, *_):
        self.close()

    def apply(self, stage: int, rgb: np.ndarray) -> np.ndarray:
        rgb = np.ascontiguousarray(rgb, dtype=np.float32)
        output = np.empty_like(rgb)
        if not self.lib.dcp_apply(self.handle, stage, rgb, output, len(rgb)):
            raise ToolError("sdk_failure", path=self.path, detail=self.lib.dcp_error().decode())
        if not np.isfinite(output).all():
            raise ToolError("nonfinite_stage", name=self.name, stage=stage)
        return output.astype(np.float64)

    def describe(self) -> dict:
        return {"path": str(self.path), "name": self.name,
                "camera_wb_to_prophoto_d50": self.matrix.tolist(),
                "prophoto_d50_to_linear_srgb": self.to_srgb.tolist(),
                "baseline_exposure_offset_ev": self.exposure,
                "tone_curve": "embedded_sdk_spline" if self.embedded_curve else "ACR3",
                "supports_overrange": self.hdr, "hue_sat_map": self.maps[0],
                "look_table": self.maps[1]}
