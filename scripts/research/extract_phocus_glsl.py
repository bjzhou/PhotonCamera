#!/usr/bin/env python3
"""Extract embedded GLSL sources from Phocus' Android native library.

The extractor combines three sources of evidence:

1. NUL-terminated strings beginning with ``#version`` in the ELF file.
2. Exported 8-byte shader-source pointer symbols from ``llvm-nm``.
3. AArch64 relative relocations from ``llvm-readobj`` that connect a pointer
   symbol to the corresponding GLSL string.

Exact duplicate sources are written once. All source offsets and symbol aliases
remain available in manifest.json and manifest.csv.
"""

from __future__ import annotations

import argparse
import csv
import hashlib
import json
import re
import shutil
import subprocess
from collections import defaultdict
from dataclasses import dataclass, field
from pathlib import Path


NM_LINE = re.compile(
    r"^(?P<address>[0-9a-fA-F]{16})\s+"
    r"(?P<size>[0-9a-fA-F]{16})\s+"
    r"(?P<kind>\S)\s+(?P<name>.+)$"
)
RELOCATION_LINE = re.compile(
    r"^\s*0x(?P<address>[0-9A-Fa-f]+)\s+"
    r"R_AARCH64_RELATIVE\s+-\s+0x(?P<target>[0-9A-Fa-f]+)\s*$"
)
SHADER_SYMBOL = re.compile(r"(?i)(shader(source)?|fragmentshader|computeshader|vertexshader)$")


@dataclass
class Occurrence:
    offset: int
    symbols: list[str] = field(default_factory=list)


@dataclass
class Shader:
    source: str
    digest: str
    occurrences: list[Occurrence] = field(default_factory=list)
    symbols: set[str] = field(default_factory=set)
    category: str = "99_unattributed"
    stage: str = "fragment"
    relative_path: str = ""


def run_tool(command: list[str]) -> str:
    completed = subprocess.run(
        command,
        check=True,
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
        text=True,
        encoding="utf-8",
        errors="replace",
    )
    return completed.stdout


def find_tool(name: str) -> str:
    path = shutil.which(name)
    if path:
        return path
    llvm_path = Path(r"C:\Program Files\LLVM\bin") / f"{name}.exe"
    if llvm_path.exists():
        return str(llvm_path)
    raise FileNotFoundError(f"Cannot locate {name}")


def read_shader_symbols(binary: Path) -> dict[int, list[str]]:
    output = run_tool([find_tool("llvm-nm"), "-D", "-S", "-C", str(binary)])
    result: dict[int, list[str]] = defaultdict(list)
    for line in output.splitlines():
        match = NM_LINE.match(line)
        if not match:
            continue
        if match.group("kind") != "D" or int(match.group("size"), 16) != 8:
            continue
        name = match.group("name")
        if not SHADER_SYMBOL.search(name):
            continue
        result[int(match.group("address"), 16)].append(name)
    return result


def read_relative_relocations(binary: Path) -> dict[int, int]:
    output = run_tool([find_tool("llvm-readobj"), "--relocations", str(binary)])
    result: dict[int, int] = {}
    for line in output.splitlines():
        match = RELOCATION_LINE.match(line)
        if match:
            result[int(match.group("address"), 16)] = int(match.group("target"), 16)
    return result


def is_plausible_glsl(raw: bytes) -> bool:
    return 16 <= len(raw) <= 1_000_000


def scan_glsl(data: bytes) -> dict[int, str]:
    result: dict[int, str] = {}
    cursor = 0
    marker = b"#version"
    while True:
        start = data.find(marker, cursor)
        if start < 0:
            break
        end = data.find(b"\0", start)
        if end < 0:
            break
        raw = data[start:end]
        if is_plausible_glsl(raw):
            result[start] = raw.decode("utf-8", errors="replace").replace("\r\n", "\n")
        cursor = start + len(marker)
    return result


def detect_stage(source: str, symbols: set[str]) -> str:
    lowered_source = source.lower()
    if "gl_globalinvocationid" in lowered_source or "local_size_" in lowered_source:
        return "compute"
    if "gl_position" in lowered_source and "gl_fragcoord" not in lowered_source:
        return "vertex"
    return "fragment"


def classify(symbols: set[str], source: str) -> str:
    symbol_evidence = " ".join(sorted(symbols)).lower()
    evidence = symbol_evidence if symbols else source[:1500].lower()

    rules = [
        ("07_hdr_ultrahdr", ("gainmap", "gain_map", "applyhdr", "hdr_gamma", "hdr_lstar", "hdrshader")),
        ("02_demosaic", ("demosaic",)),
        (
            "01_raw_sensor",
            (
                "bayer",
                "blacklevel",
                "black_level",
                "hotpixel",
                "hot_pixel",
                "highlightrecovery",
                "highlight_recovery",
                "multi2",
                "neutralisation",
                "scene_calibration",
                "scenecalibration",
                "orientation_90",
                "orientation_180",
                "orientation_270",
            ),
        ),
        (
            "03_denoise",
            ("denoise", "rgbnr", "noise", "cachecmos", "cache_cmos", "graynr"),
        ),
        (
            "05_lens_geometry",
            (
                "lens",
                "aberration",
                "vignette",
                "defringe",
                "fringe",
                "keystone",
                "orientation",
                "alignment",
                "resize",
                "repeatmargin",
                "repeat_margin",
            ),
        ),
        (
            "06_detail_texture",
            ("clarity", "unsharp", "film_grain", "filmgrain", "highres", "high_res"),
        ),
        (
            "04_color_tone",
            (
                "color",
                "gamma",
                "gradation",
                "filmcurve",
                "film_curve",
                "selective",
                "mark_hue",
                "highlightstrength",
                "highlight_strength",
                "desathighlight",
                "desat_highlight",
                "icc",
                "customcmm",
                "custom_cmm",
                "grayscale",
                "rgb2gray",
            ),
        ),
        (
            "00_common_io",
            (
                "vertex",
                "fillwithblack",
                "fill_black",
                "shift",
                "yuv2rgb",
                "yuv_2_rgb",
                "formatconvert",
                "format_convert",
                "u16f28ui",
                "fp16",
                "block_downsample",
            ),
        ),
    ]
    for category, needles in rules:
        if any(needle in evidence for needle in needles):
            return category
    return "99_unattributed"


def simplify_symbol(name: str) -> str:
    substitutions = (
        "_computeShaderSource",
        "_fragmentShaderSource",
        "_vertexShaderSource",
        "computeShaderSource",
        "fragmentShaderSource",
        "vertexShaderSource",
        "ShaderSource",
        "Shader",
    )
    result = name
    for suffix in substitutions:
        if result.endswith(suffix):
            result = result[: -len(suffix)]
            break
    result = re.sub(r"[^A-Za-z0-9._-]+", "_", result).strip("_.-")
    return result or "shader"


def choose_name(symbols: set[str], offset: int) -> str:
    if not symbols:
        return f"unattributed_0x{offset:x}"
    candidates = sorted(
        symbols,
        key=lambda value: (
            value in {"fragmentShaderSource", "vertexShaderSource"},
            "::" in value,
            -len(value),
            value.lower(),
        ),
    )
    return simplify_symbol(candidates[0])


def extension_for(stage: str) -> str:
    return {"compute": ".comp", "vertex": ".vert", "fragment": ".frag"}[stage]


def build_shaders(binary: Path) -> tuple[list[Shader], dict[str, int]]:
    data = binary.read_bytes()
    scanned = scan_glsl(data)
    pointer_symbols = read_shader_symbols(binary)
    relocations = read_relative_relocations(binary)

    symbols_by_source: dict[int, list[str]] = defaultdict(list)
    unresolved_symbols = 0
    for pointer_address, symbols in pointer_symbols.items():
        target = relocations.get(pointer_address)
        if target is None:
            unresolved_symbols += len(symbols)
            continue
        symbols_by_source[target].extend(symbols)

    shaders_by_hash: dict[str, Shader] = {}
    for offset, source in sorted(scanned.items()):
        digest = hashlib.sha256(source.encode("utf-8")).hexdigest()
        shader = shaders_by_hash.setdefault(digest, Shader(source=source, digest=digest))
        aliases = sorted(set(symbols_by_source.get(offset, [])))
        shader.occurrences.append(Occurrence(offset=offset, symbols=aliases))
        shader.symbols.update(aliases)

    shaders = list(shaders_by_hash.values())
    for shader in shaders:
        first_offset = min(item.offset for item in shader.occurrences)
        shader.stage = detect_stage(shader.source, shader.symbols)
        shader.category = classify(shader.symbols, shader.source)
        base_name = choose_name(shader.symbols, first_offset)
        shader.relative_path = str(
            Path(shader.category) / f"{base_name}_0x{first_offset:x}{extension_for(shader.stage)}"
        ).replace("\\", "/")

    shaders.sort(key=lambda item: (item.category, item.relative_path))
    stats = {
        "binary_bytes": len(data),
        "version_markers": data.count(b"#version"),
        "glsl_occurrences": len(scanned),
        "unique_sources": len(shaders),
        "exported_source_symbols": sum(len(value) for value in pointer_symbols.values()),
        "resolved_source_symbols": sum(len(value) for value in symbols_by_source.values()),
        "unresolved_source_symbols": unresolved_symbols,
        "attributed_occurrences": sum(bool(symbols_by_source.get(offset)) for offset in scanned),
        "unattributed_occurrences": sum(not symbols_by_source.get(offset) for offset in scanned),
    }
    return shaders, stats


def write_output(binary: Path, output: Path, shaders: list[Shader], stats: dict[str, int]) -> None:
    output.mkdir(parents=True, exist_ok=True)
    managed_categories = {
        "00_common_io",
        "01_raw_sensor",
        "02_demosaic",
        "03_denoise",
        "04_color_tone",
        "05_lens_geometry",
        "06_detail_texture",
        "07_hdr_ultrahdr",
        "99_unattributed",
    }
    for category in managed_categories:
        category_dir = output / category
        if category_dir.is_dir():
            shutil.rmtree(category_dir)
    for shader in shaders:
        target = output / shader.relative_path
        target.parent.mkdir(parents=True, exist_ok=True)
        header = (
            "/*\n"
            " * Recovered from a compiled proprietary binary for personal study.\n"
            f" * SHA-256: {shader.digest}\n"
            f" * ELF offsets: {', '.join(f'0x{item.offset:x}' for item in shader.occurrences)}\n"
            f" * Symbols: {', '.join(sorted(shader.symbols)) if shader.symbols else 'unattributed'}\n"
            " */\n\n"
        )
        target.write_text(header + shader.source.rstrip() + "\n", encoding="utf-8", newline="\n")

    manifest = {
        "source_binary": str(binary.resolve()),
        "stats": stats,
        "categories": sorted({shader.category for shader in shaders}),
        "shaders": [
            {
                "file": shader.relative_path,
                "category": shader.category,
                "stage": shader.stage,
                "sha256": shader.digest,
                "bytes": len(shader.source.encode("utf-8")),
                "lines": shader.source.count("\n") + 1,
                "symbols": sorted(shader.symbols),
                "occurrences": [
                    {"offset": f"0x{item.offset:x}", "symbols": item.symbols}
                    for item in shader.occurrences
                ],
            }
            for shader in shaders
        ],
    }
    (output / "manifest.json").write_text(
        json.dumps(manifest, ensure_ascii=False, indent=2) + "\n",
        encoding="utf-8",
        newline="\n",
    )

    with (output / "manifest.csv").open("w", encoding="utf-8", newline="") as stream:
        writer = csv.writer(stream)
        writer.writerow(
            ["file", "category", "stage", "sha256", "bytes", "lines", "offsets", "symbols"]
        )
        for shader in shaders:
            writer.writerow(
                [
                    shader.relative_path,
                    shader.category,
                    shader.stage,
                    shader.digest,
                    len(shader.source.encode("utf-8")),
                    shader.source.count("\n") + 1,
                    " ".join(f"0x{item.offset:x}" for item in shader.occurrences),
                    " | ".join(sorted(shader.symbols)),
                ]
            )

    category_counts: dict[str, int] = defaultdict(int)
    for shader in shaders:
        category_counts[shader.category] += 1

    readme = f"""# Phocus GLSL 研究提取集

本目录从 Android Phocus 的 `libcrosssdk.so` 中静态恢复 GLSL，仅用于个人学习和互操作研究。

## 提取结果

- 二进制中的 GLSL 文本实例：{stats['glsl_occurrences']}
- 按源代码内容去重后：{stats['unique_sources']}
- 可解析的导出 Shader 源符号：{stats['resolved_source_symbols']}
- 有符号归属的文本实例：{stats['attributed_occurrences']}
- 暂时无法绑定导出符号的文本实例：{stats['unattributed_occurrences']}

完全相同的源码只保存一份；`manifest.json` 和 `manifest.csv` 保留了所有 ELF 偏移、符号别名及重复实例。

## 目录

| 目录 | 内容 | 文件数 |
|---|---|---:|
| `00_common_io` | 公共顶点、格式转换、填充及输入输出 | {category_counts.get('00_common_io', 0)} |
| `01_raw_sensor` | Bayer、黑电平、坏点、中和、场景校准 | {category_counts.get('01_raw_sensor', 0)} |
| `02_demosaic` | 多阶段 Demosaic 与色噪处理 | {category_counts.get('02_demosaic', 0)} |
| `03_denoise` | CMOS/CCD、RGB 与灰度降噪 | {category_counts.get('03_denoise', 0)} |
| `04_color_tone` | 色彩变换、曲线、Gamma、选择性色彩 | {category_counts.get('04_color_tone', 0)} |
| `05_lens_geometry` | 镜头、色差、暗角、缩放、方向和透视 | {category_counts.get('05_lens_geometry', 0)} |
| `06_detail_texture` | Clarity、锐化和胶片颗粒 | {category_counts.get('06_detail_texture', 0)} |
| `07_hdr_ultrahdr` | HDR 传递函数、Gain Map 生成与应用 | {category_counts.get('07_hdr_ultrahdr', 0)} |
| `99_unattributed` | 可恢复但不能可靠绑定模块名的源码 | {category_counts.get('99_unattributed', 0)} |

## 阅读顺序

建议先看：

1. `01_raw_sensor`：黑电平、Bayer 中和和高光重建。
2. `02_demosaic`：按 `pass_0a1 → 0a2 → 0b → 0c → 1 → 2 → 3` 阅读。
3. `03_denoise`：结合 Demosaic 的 color-noise pass 理解。
4. `04_color_tone`：Hasselblad Gamma、Film Curve、Gradation 和色彩 LUT。
5. `07_hdr_ultrahdr`：SDR/HDR 映射以及 UltraHDR Gain Map。

## 注意

- 文件头注释是提取器添加的，不属于原始 Shader。
- 部分 Shader 依赖宿主端创建的纹理格式、UBO、LUT 和调度尺寸，不能脱离 C++ 管线直接运行。
- 分类根据导出符号及源码特征完成，`manifest.json` 才是精确来源索引。
- 原始程序属于其权利人；请勿把这些文件当作开源代码复制进产品或公开再分发。
"""
    (output / "README.md").write_text(readme, encoding="utf-8", newline="\n")

    notice = """# 来源与使用说明

这些 GLSL 源码由已编译的 Hasselblad Phocus Android 原生库静态恢复。

- 它们不是 PhotonCamera 项目的源代码。
- 它们不是开源发布物，也未附带可授予再分发权利的许可证。
- 本目录的用途是个人学习、兼容性分析和算法研究。
- 若要在产品中实现类似功能，应根据数学原理独立实现，不应直接复制这些源码。
"""
    (output / "NOTICE.md").write_text(notice, encoding="utf-8", newline="\n")


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("binary", type=Path, help="Path to libcrosssdk.so")
    parser.add_argument("output", type=Path, help="Output directory")
    return parser.parse_args()


def main() -> None:
    args = parse_args()
    shaders, stats = build_shaders(args.binary)
    write_output(args.binary, args.output, shaders, stats)
    print(json.dumps(stats, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
