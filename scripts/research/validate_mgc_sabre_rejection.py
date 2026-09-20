# /// script
# dependencies = ["moderngl", "numpy"]
# ///
"""Offscreen regression probe against the embedded V25 Sabre GLSL.

Run with uv outside the sandbox. --shader-dir contains the JVM-exported production
base.frag, rejection.frag and dilate.frag, plus the pre-fix old-rejection.frag.
This exercises desktop GL, not an Android device or its installed application.
"""

from pathlib import Path
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


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--mgc-library", type=Path, required=True)
    parser.add_argument("--shader-dir", type=Path, required=True)
    parser.add_argument("--width", type=int, default=64)
    parser.add_argument("--height", type=int, default=64)
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
            {"original": "original_rejection", "fixed": "rejection", "old": "old-rejection"}[version],
            dict(zip(sampler_names, (base_tex, alt_tex, flow, unblocker, noise))),
            original_uniforms if is_original else production_uniforms,
            (width, height), (1, 1), "f1",
        )
        resources.extend(outputs)
        weight = draw("dilate", {"uRejection": outputs[0]}, {"uInputSize": (width, height)}, (width // 2, height // 2), (1,), "f1")[0]
        resources.append(weight)
        reverse = np.frombuffer(outputs[0].read(), dtype=np.uint8).reshape(height, width).copy()
        accepted = np.frombuffer(weight.read(), dtype=np.uint8).reshape(height // 2, width // 2).copy()
        for item in resources:
            item.release()
        return reverse, accepted

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
    shifted = np.roll(stripes, 1, axis=1)
    cases = (
        ("identical_flat", flat, flat, (0, 0, 0, 0)),
        ("identical_green_stripes", stripes, stripes, (0, 0, 0, 0)),
        ("identical_rgb_texture", rgb, rgb, (0, 0, 0, 0)),
        ("mixed_variance_signs", mixed, mixed, (0, 0, 0, 0)),
        ("aligned_integer_shift", stripes, shifted, (1 / width, 0, 0, 0)),
        ("fractional_flow", rgb, rgb, (0.37 / width, -0.21 / height, 0, 0)),
        ("changed_content", flat, changed, (0, 0, 0, 0)),
    )
    report = {"renderer": ctx.info["GL_RENDERER"], "size": [width, height], "source_offsets": {name: offsets[name] for name in ("kBaseFrameRefColorEntryPoint", "kFunctionSampleBicubic", "kRejectionFunctions")}, "cases": []}
    for name, guide, alt, flow in cases:
        results = {version: run(guide, alt, flow, version) for version in ("original", "fixed", "old")}
        record = {"name": name}
        for version, (reverse, weight) in results.items():
            interior = weight[4:-4, 4:-4]
            record[version] = {"mean_acceptance": float(interior.mean() / 255), "fully_rejected_fraction": float((interior == 0).mean())}
        max_error = max(int(np.abs(a.astype(int) - b.astype(int)).max()) for a, b in zip(results["original"], results["fixed"]))
        record["max_v25_error_u8"] = max_error
        # Allow a single U8 quantization code for GPU arithmetic scheduling differences.
        assert max_error <= 1, record
        if name.startswith("identical") or name == "aligned_integer_shift":
            assert record["fixed"]["mean_acceptance"] == 1.0, record
        if name == "identical_green_stripes":
            assert record["old"]["fully_rejected_fraction"] == 1.0, record
        if name == "changed_content":
            assert record["fixed"]["fully_rejected_fraction"] == 1.0, record
        report["cases"].append(record)
        print(json.dumps(record))
    (args.shader_dir / f"gpu-probe-results-{width}x{height}.json").write_text(json.dumps(report, indent=2) + "\n")
    print("PASS: production shaders match V25; static texture rejection is removed and content rejection is retained.")


if __name__ == "__main__":
    main()
