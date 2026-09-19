# /// script
# dependencies = ["moderngl", "numpy"]
# ///
"""Offscreen regression probe against the embedded V25 Sabre GLSL.

Run with uv outside the sandbox. --shader-dir contains the JVM-exported production
base.frag, rejection.frag and dilate.frag, plus the pre-fix old-rejection.frag.
This exercises desktop GL, not an Android device or its installed application.
The default checks detail-adaptive rejection; --expect-v25 checks historical parity.
Results describe rejection weights, not complete RAW fusion, image sharpness or MTF.
"""

from pathlib import Path
from dataclasses import dataclass
import argparse
import json
import re

import moderngl
import numpy as np


VERTEX = """#version 300 es
precision highp float;
out highp vec2 tex_coord;
void main() {
    vec2 p = vec2((gl_VertexID << 1) & 2, gl_VertexID & 2);
    tex_coord = p;
    gl_Position = vec4(p * 2.0 - 1.0, 0.0, 1.0);
}
"""


@dataclass
class Case:
    name: str
    guide: np.ndarray
    alternate: np.ndarray
    flow: tuple
    family: str
    fully_accepted: bool = False
    low_detail: bool = False
    residual_detail: bool = False


def synthetic_cases(width, height):
    """The original 26 synthetic-guide cases, without camera sampling assumptions."""
    y, x = np.mgrid[:height, :width]
    flat = np.full((height, width, 4), 0.5)
    flat[:, :, 3] = 0.0005 * 1024
    stripes = flat.copy()
    stripes[:, :, 1] = 0.25 + (x % 2) * 0.5
    stripes[:, :, 3] = -(0.5 ** 2 * 20 / 81) * 1024
    rgb = flat.copy()
    rgb[:, :, :3] = (0.5 + 0.15 * np.sin(x * 0.5) * np.cos(y * 0.3))[:, :, None]
    rgb[:, :, 3] = (0.001 + (x % 7) * 0.0001) * 1024
    mixed = rgb.copy()
    mixed[:, :, 3] *= np.where((x + y) % 3 == 0, -1, 1)
    changed = flat.copy()
    changed[:, :, :3] = 0.8
    zero = (0, 0, 0, 0)
    cases = [
        Case("identical_flat", flat, flat, zero, "synthetic", True, True),
        Case("identical_green_stripes", stripes, stripes, zero, "synthetic", True),
        Case("identical_rgb_texture", rgb, rgb, zero, "synthetic", True, True),
        Case("mixed_variance_signs", mixed, mixed, zero, "synthetic", low_detail=True),
        Case("aligned_integer_shift", stripes, np.roll(stripes, 1, axis=1),
             (1 / width, 0, 0, 0), "synthetic", True),
        Case("fractional_flow", rgb, rgb, (0.37 / width, -0.21 / height, 0, 0),
             "synthetic", low_detail=True),
        Case("changed_content", flat, changed, zero, "synthetic", low_detail=True),
    ]
    for green in (False, True):
        for variance in (0.0005, 0.02):
            edge = flat.copy()
            edge[:, :, :3] = np.where(x[:, :, None] < width // 2, 0.25, 0.75)
            edge[:, :, 3] = variance * 1024 * (-1 if green else 1)
            for offset in (0.0, 0.25, 0.5, 1.0):
                cases.append(Case(
                    f"edge_green{green}_variance{variance}_residual{offset}",
                    edge, edge, (offset / width, 0, 0, 0), "synthetic",
                    fully_accepted=offset == 0,
                    low_detail=variance == 0.0005,
                    residual_detail=variance == 0.02 and offset > 0,
                ))
    for offset in (0.25, 0.5, 1.0):
        cases.append(Case(f"green_stripes_residual{offset}", stripes, stripes,
                          (offset / width, 0, 0, 0), "synthetic", residual_detail=True))
    return cases


def scene_guide(width, height, kind, shift, seed, sigma, blur=0.0):
    """Sample a continuous scene and reproduce sqrt-domain guide statistics.

    The four synthetic Bayer channels share a continuous signal. Their independent
    noise and the constant LUT are controlled test inputs, not a calibrated sensor.
    Blur applies to the scene before sensor noise and guide statistics are added.
    """
    y, x = np.mgrid[:height, :width]
    px, py = x - shift[0], y - shift[1]
    if kind == "flat":
        signal = np.full_like(px, 0.5, dtype=float)
    elif kind == "edge":
        signal = 0.5 + 0.25 * np.tanh((px - width / 2 + 0.25 * (py - height / 2)) / 0.8)
    else:
        frequency = 0.2 if kind == "texture" else 0.4
        signal = 0.5 + 0.2 * np.sin(2 * np.pi * frequency * (px + 0.2 * py))
    if blur:
        for axis in (0, 1):
            padding = [(0, 0), (0, 0)]
            padding[axis] = (1, 1)
            padded = np.pad(signal, padding, mode="edge")
            before = np.take(padded, np.arange(signal.shape[axis]), axis=axis)
            after = np.take(padded, np.arange(signal.shape[axis]) + 2, axis=axis)
            signal = signal * (1 - blur) + (before + after) * (blur / 2)
    channels = signal[:, :, None] + np.random.default_rng(seed).normal(
        0, sigma, (height, width, 4)
    )
    rgb_samples = channels[:, :, (0, 1, 3)].copy()
    rgb_samples[:, :, 1] = (channels[:, :, 1] + channels[:, :, 2]) / 2
    rgb_pad = np.pad(rgb_samples, ((1, 1), (1, 1), (0, 0)), mode="edge")
    green_pad = np.pad(channels[:, :, 1:3], ((1, 1), (1, 1), (0, 0)), mode="edge")
    rgb_sum = np.zeros_like(rgb_samples)
    rgb_sq = np.zeros_like(rgb_samples)
    average = np.zeros_like(rgb_samples)
    green_sum = np.zeros((height, width))
    green_sq = np.zeros((height, width))
    for j in range(3):
        for i in range(3):
            rgb = rgb_pad[j:j + height, i:i + width]
            green = green_pad[j:j + height, i:i + width]
            rgb_sum += rgb
            rgb_sq += rgb * rgb
            average += rgb * (0.5 if i == 1 else 0.25) * (0.5 if j == 1 else 0.25)
            green_sum += green.sum(axis=2)
            green_sq += (green * green).sum(axis=2)
    rgb_var = np.maximum(0, rgb_sq / 9 - (rgb_sum / 9) ** 2)
    green_var = np.maximum(0, green_sq / 18 - (green_sum / 18) ** 2)
    green_only = green_var > 6 * 0.0005
    result = np.empty((height, width, 4))
    result[:, :, :3] = average
    result[:, :, 1] = np.where(green_only, rgb_samples[:, :, 1], average[:, :, 1])
    result[:, :, 3] = 1024 * np.where(
        green_only, -np.maximum(rgb_var[:, :, 1], green_var), rgb_var.mean(axis=2)
    )
    return result


def sampled_cases(width, height):
    """72 sampled-scene cases plus 12 independently blurred alternate frames."""
    cases = []
    for kind in ("flat", "edge", "texture", "fine_texture"):
        for sigma in (0.0, 0.0316227766):
            reference = scene_guide(width, height, kind, (0.0, 0.0), 123, sigma)
            for shift in ((0.0, 0.0), (0.25, -0.25), (0.5, 0.25)):
                alternate = scene_guide(width, height, kind, shift, 456, sigma)
                for residual in (0.0, 0.25, 0.5):
                    cases.append(Case(
                        f"sampled_{kind}_sigma{sigma}_shift{shift}_residual{residual}",
                        reference, alternate,
                        ((shift[0] + residual) / width, shift[1] / height, 0, 0),
                        "sampled",
                        fully_accepted=sigma == 0 and shift == (0.0, 0.0) and residual == 0,
                        low_detail=kind == "flat",
                        residual_detail=kind != "flat" and residual > 0,
                    ))
            if kind != "flat":
                for blur in (0.15, 0.35):
                    alternate = scene_guide(width, height, kind, (0.0, 0.0), 456, sigma, blur)
                    cases.append(Case(
                        f"blurred_{kind}_sigma{sigma}_blur{blur}", reference,
                        alternate, (0, 0, 0, 0), "blurred",
                    ))
    return cases


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--mgc-library", type=Path, required=True)
    parser.add_argument("--shader-dir", type=Path, required=True)
    parser.add_argument("--width", type=int, default=64)
    parser.add_argument("--height", type=int, default=64)
    parser.add_argument("--expect-v25", action="store_true", help="Require historical V25 parity.")
    parser.add_argument("--quiet", action="store_true", help="Print only the final summary.")
    args = parser.parse_args()
    data = args.mgc_library.read_bytes()
    chunks = {}
    offsets = {}
    for match in re.finditer(rb"[\x09\x0a\x0d\x20-\x7e]{24,}\x00", data):
        chunk = match.group()[:-1].decode("ascii")
        name = re.search(r"// RELOAD_BEGIN (\w+)", chunk)
        if name:
            chunks[name[1]] = chunk
            offsets[name[1]] = hex(match.start())
    common = "#version 300 es\n" + "\n".join(chunks[name] for name in (
        "kTypePrecision", "kVaryingTexCoord", "kUniformTexSize",
        "kOutputFragColor", "kFunctionSampleBicubic",
    ))
    # Match the production raster-to-UV adapter. Interpolating V25's varying on a
    # different fullscreen triangle introduces a separate rounding variable, especially
    # where guide alpha cancels to zero. The embedded filter/rejection bodies are unchanged.
    common += "\n#define tex_coord (gl_FragCoord.xy / tex_size.xy)\n"
    original_base = common + chunks["kBaseFrameRefColorUniforms"] + chunks["kBaseFrameRefColorEntryPoint"]
    original_rejection = common + "\n".join(chunks[name] for name in (
        "kOutputPixelDiff", "kRejectionUniforms", "kFunctionMirrorUVs",
        "kRejectionFunctions", "kRejectionEntryPoint",
    ))
    ctx = moderngl.create_standalone_context(require=330)
    programs = {
        name: ctx.program(vertex_shader=VERTEX, fragment_shader=source)
        for name, source in {
            "original_base": original_base,
            "original_rejection": original_rejection,
            **{name: (args.shader_dir / (name + ".frag")).read_text() for name in (
                "base", "rejection", "dilate", "old-rejection",
            )},
        }.items()
    }
    width, height = args.width, args.height
    assert width >= 32 and height >= 32 and width % 2 == 0 and height % 2 == 0

    def texture(array, linear=True):
        array = np.asarray(array, dtype=np.float16)
        tex = ctx.texture((array.shape[1], array.shape[0]), array.shape[2], array.tobytes(), dtype="f2")
        tex.filter = (moderngl.LINEAR, moderngl.LINEAR) if linear else (moderngl.NEAREST, moderngl.NEAREST)
        tex.repeat_x = tex.repeat_y = False
        return tex

    def draw(name, textures, uniforms, size, components, dtype):
        program = programs[name]
        output = [ctx.texture(size, count, dtype=dtype) for count in components]
        for tex in output:
            tex.filter = (moderngl.LINEAR, moderngl.LINEAR)
            tex.repeat_x = tex.repeat_y = False
        framebuffer = ctx.framebuffer(output)
        framebuffer.use()
        ctx.viewport = (0, 0, *size)
        for unit, (key, tex) in enumerate(textures.items()):
            if key in program:
                tex.use(unit)
                program[key].value = unit
        for key, value in uniforms.items():
            if key in program:
                program[key].value = value
        vao = ctx.vertex_array(program, [])
        vao.render(vertices=3)
        vao.release()
        framebuffer.release()
        return output

    lut = np.full((2, 10, 4), 0.0005, dtype=np.float16)
    lut[:, :, 3] = 0
    noise = texture(lut)
    unblocker = texture(np.zeros((1, 1, 1)))
    uniform_pairs = {
        "uFrameBorderPadded": ("frame_border_padded", (1.5 / width, 1.5 / height, 1 - 1.5 / width, 1 - 1.5 / height)),
        "uFlowScaleOffset": ("flow_scale_offset", (1.0, 1.0, 0.0, 0.0)),
        "uUnblockerScale": ("unblocker_scale", (1.0, 1.0)),
        "uNoiseTextureScaleBias": ("noise_texture_scale_bias", (0.9, 0.5, 0.05, 0.25)),
        "uUnblockerReductionThreshold": ("unblocker_reduction_threshold", 2016.0 / width * 1e-4),
        "uExtraMotionRobustnessBoost": ("extra_motion_robustness_boost", 6.0),
        "uMotionRobustnessBoostVarianceThreshold": ("motion_robustness_boost_variance_threshold", 25.0),
        "uExtraMotionRobustnessMotionThreshold": ("extra_motion_robustness_motion_threshold", 2016.0 / width * 1e-4),
    }
    production_uniforms = {key: value for key, (_, value) in uniform_pairs.items()}
    production_uniforms.update(uGuideSize=(width, height), uRejectionSize=(width, height), uColorDifferenceMultiplier=(0.07, 0.35))
    original_uniforms = {key: value for key, value in uniform_pairs.values()}
    original_uniforms.update(tex_size=(width, height, 1 / width, 1 / height), color_difference_multiplier=(0.07, 0.35, 0, 0), enable_photometric_correction=0)

    def run(guide, alt, flow_value, version):
        resources = []
        base_tex, alt_tex, flow = texture(guide), texture(alt), texture(np.array([[flow_value]]))
        resources.extend((base_tex, alt_tex, flow))
        is_original = version == "original"
        if version != "old":
            filtered = draw(
                "original_base" if is_original else "base",
                {"base_frame_guide_texture" if is_original else "uBaseGuide": base_tex},
                original_uniforms if is_original else production_uniforms,
                (width, height), (4,), "f2",
            )[0]
            resources.append(filtered)
            base_tex = filtered
        sampler_names = ("base_frame_guide_texture", "alt_frame_guide_texture", "alt_flow_texture", "unblocker_texture", "noise_estimates_texture") if is_original else ("uBaseGuide", "uAltGuide", "uFlow", "uUnblocker", "uNoiseEstimates")
        outputs = draw(
            {"original": "original_rejection", "production": "rejection", "old": "old-rejection"}[version],
            dict(zip(sampler_names, (base_tex, alt_tex, flow, unblocker, noise))),
            original_uniforms if is_original else production_uniforms,
            (width, height), (1, 1), "f1",
        )
        resources.extend(outputs)
        weight = draw("dilate", {"uRejection": outputs[0]}, {"uInputSize": (width, height)}, (width // 2, height // 2), (1,), "f1")[0]
        resources.append(weight)
        reverse = np.frombuffer(outputs[0].read(), dtype=np.uint8).reshape(height, width).copy()
        accepted = np.frombuffer(weight.read(), dtype=np.uint8).reshape(height // 2, width // 2).copy()
        pixel_difference = np.frombuffer(outputs[1].read(), dtype=np.uint8).reshape(height, width).copy()
        for item in resources:
            item.release()
        return reverse, accepted, pixel_difference

    cases = synthetic_cases(width, height) + sampled_cases(width, height)
    report = {
        "renderer": ctx.info["GL_RENDERER"], "size": [width, height],
        "mode": "historical_v25_parity" if args.expect_v25 else "detail_adaptive_rejection",
        "versions": {
            "original": "Embedded MGC V25 Classic Sabre with symmetric bicubic rejection",
            "production": "JVM-exported application shaders supplied by --shader-dir",
            "old": "Pre-fix asymmetric rejection supplied as old-rejection.frag",
        },
        "scope": "Desktop GL rejection and final acceptance maps; no RAW merge, image MTF or device validation.",
        "inputs": "26 synthetic-guide, 72 sampled-scene and 12 blurred-alternate cases; fixed noise LUT and zero motion prior/unblocker.",
        "source_offsets": {name: offsets[name] for name in (
            "kBaseFrameRefColorEntryPoint", "kFunctionSampleBicubic", "kRejectionFunctions"
        )},
        "cases": [],
    }
    reduced_synthetic_edges = 0
    reduced_synthetic_stripes = 0
    for case in cases:
        results = {
            version: run(case.guide, case.alternate, case.flow, version)
            for version in ("original", "production", "old")
        }
        record = {"name": case.name, "family": case.family}
        for version, (reverse, weight, pixel_difference) in results.items():
            interior = weight[4:-4, 4:-4]
            record[version] = {
                "mean_acceptance": float(interior.mean() / 255),
                "fully_rejected_fraction": float((interior == 0).mean()),
                "edge_band_acceptance": float(weight[4:-4, width // 4 - 2:width // 4 + 2].mean() / 255),
                "center_row": (weight[height // 4, width // 4 - 4:width // 4 + 4].astype(float) / 255).tolist(),
                "mean_pixel_difference": float(pixel_difference[8:-8, 8:-8].mean() / 255),
            }
        original, production = results["original"], results["production"]
        map_errors = {
            label: int(np.abs(a.astype(int) - b.astype(int)).max())
            for label, a, b in zip(("reverse_rejection", "final_acceptance", "pixel_difference"), original, production)
        }
        record["max_difference_from_v25_u8"] = map_errors
        acceptance_delta = production[1].astype(int) - original[1].astype(int)
        record["max_acceptance_increase_u8"] = int(acceptance_delta.max())
        record["acceptance_reduced_fraction"] = float((acceptance_delta[4:-4, 4:-4] < 0).mean())
        record["low_detail_expected_unchanged"] = case.low_detail
        if args.expect_v25:
            # One U8 code permits equivalent arithmetic scheduling on another desktop GPU.
            assert max(map_errors.values()) <= 1, record
        else:
            assert map_errors["pixel_difference"] == 0, record
            assert record["max_acceptance_increase_u8"] <= 1, record
            if case.low_detail:
                assert max(map_errors.values()) == 0, record
            if case.family == "synthetic" and case.residual_detail:
                reduced = record["acceptance_reduced_fraction"] > 0
                if case.name.startswith("edge_"):
                    reduced_synthetic_edges += reduced
                else:
                    reduced_synthetic_stripes += reduced
        if case.fully_accepted:
            assert record["production"]["mean_acceptance"] == 1.0, record
        if case.name == "identical_green_stripes":
            assert record["old"]["fully_rejected_fraction"] == 1.0, record
        if case.name == "changed_content":
            assert record["production"]["fully_rejected_fraction"] == 1.0, record
        report["cases"].append(record)
        if not args.quiet:
            print(json.dumps(record))
    if not args.expect_v25:
        assert reduced_synthetic_edges > 0, "No residual synthetic edge became more selective."
        assert reduced_synthetic_stripes > 0, "No residual synthetic stripe became more selective."
    report["summary"] = {
        "case_count": len(cases),
        "family_counts": {family: sum(case.family == family for case in cases)
                          for family in ("synthetic", "sampled", "blurred")},
        "low_detail_unchanged_cases": sum(case.low_detail for case in cases),
        "fully_accepted_cases": sum(case.fully_accepted for case in cases),
        "reduced_synthetic_edges": reduced_synthetic_edges,
        "reduced_synthetic_stripes": reduced_synthetic_stripes,
        "passed": True,
    }
    output = args.shader_dir / f"gpu-probe-results-{width}x{height}.json"
    output.write_text(json.dumps(report, indent=2) + "\n")
    noise.release()
    unblocker.release()
    for program in programs.values():
        program.release()
    ctx.release()
    expectation = "historical V25 parity" if args.expect_v25 else "detail-adaptive rejection invariants"
    print(f"PASS: {len(cases)} cases verify {expectation}. Report: {output}")
    print("Scope: desktop GPU acceptance weights, not complete-fusion sharpness or MTF.")


if __name__ == "__main__":
    main()
