#!/usr/bin/env python3
"""Generate the camera UI's matte graphite background texture."""

from __future__ import annotations

import argparse
import math
from dataclasses import dataclass
from pathlib import Path

import numpy as np
from PIL import Image, ImageFilter


PROJECT_ROOT = Path(__file__).resolve().parents[1]
DEFAULT_OUTPUT = (
    PROJECT_ROOT / "app/src/main/res/drawable-nodpi/camera_bg.jpg"
)
REFERENCE_TEXTURE_SPACING_PX = 6.0


@dataclass(frozen=True)
class CameraBackgroundStyle:
    """Parameters expressed in output-image pixel and RGB-value units."""

    base_color: tuple[int, int, int] = (44, 45, 47)
    vertical_shading: float = 1.4
    macro_strength: float = 0.7
    macro_scale: float = 190.0
    texture_strength: float = 0.85
    texture_density: float = 0.42
    texture_softness: float = 1.8
    vignette_strength: float = 1.1


DEFAULT_STYLE = CameraBackgroundStyle()


def parse_hex_color(value: str) -> tuple[int, int, int]:
    value = value.removeprefix("#")
    if len(value) != 6:
        raise argparse.ArgumentTypeError("颜色必须使用 #RRGGBB 格式")
    try:
        return tuple(int(value[index : index + 2], 16) for index in (0, 2, 4))
    except ValueError as error:
        raise argparse.ArgumentTypeError("颜色必须使用 #RRGGBB 格式") from error


def normalized(array: np.ndarray) -> np.ndarray:
    array = array.astype(np.float32, copy=False)
    array -= float(array.mean())
    rms = float(np.sqrt(np.mean(np.square(array))))
    if rms > 1e-6:
        array /= rms
    return array


def resized_noise(
    width: int,
    height: int,
    *,
    spacing: float,
    rng: np.random.Generator,
) -> Image.Image:
    """Create smoothly interpolated noise with a controllable feature spacing."""

    grid_width = max(3, math.ceil(width / spacing) + 2)
    grid_height = max(3, math.ceil(height / spacing) + 2)
    samples = rng.normal(127.5, 34.0, (grid_height, grid_width))
    samples = np.clip(samples, 0.0, 255.0).astype(np.uint8)
    return Image.fromarray(samples, mode="L").resize(
        (width, height),
        resample=Image.Resampling.BICUBIC,
    )


def generate_background(
    width: int,
    height: int,
    *,
    seed: int,
    style: CameraBackgroundStyle,
) -> Image.Image:
    rng = np.random.default_rng(seed)

    macro_image = resized_noise(
        width,
        height,
        spacing=style.macro_scale,
        rng=rng,
    ).filter(ImageFilter.GaussianBlur(radius=style.macro_scale * 0.12))
    macro = normalized(np.asarray(macro_image, dtype=np.float32))

    texture_spacing = REFERENCE_TEXTURE_SPACING_PX / style.texture_density
    texture_image = resized_noise(
        width,
        height,
        spacing=texture_spacing,
        rng=rng,
    )
    texture_soft = texture_image.filter(
        ImageFilter.GaussianBlur(radius=style.texture_softness)
    )
    texture = normalized(
        np.asarray(texture_image, dtype=np.float32)
        - np.asarray(texture_soft, dtype=np.float32)
    )

    vertical = np.linspace(
        style.vertical_shading * 0.5,
        -style.vertical_shading * 0.5,
        height,
        dtype=np.float32,
    )[:, None]

    x = np.linspace(-1.0, 1.0, width, dtype=np.float32)[None, :]
    y = np.linspace(-1.0, 1.0, height, dtype=np.float32)[:, None]
    distance = np.clip((np.square(x) + np.square(y)) * 0.5, 0.0, 1.0)
    vignette = -style.vignette_strength * np.power(distance, 1.6)

    luminance_offset = (
        vertical
        + vignette
        + macro * style.macro_strength
        + texture * style.texture_strength
    )
    base = np.asarray(style.base_color, dtype=np.float32)
    pixels = base[None, None, :] + luminance_offset[:, :, None]
    pixels = np.clip(np.rint(pixels), 0.0, 255.0).astype(np.uint8)
    return Image.fromarray(pixels, mode="RGB")


def positive_float(value: str) -> float:
    parsed = float(value)
    if parsed <= 0.0:
        raise argparse.ArgumentTypeError("数值必须大于 0")
    return parsed


def non_negative_float(value: str) -> float:
    parsed = float(value)
    if parsed < 0.0:
        raise argparse.ArgumentTypeError("数值不能小于 0")
    return parsed


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(
        description="生成可调参数的相机机身深色纹理背景。",
        formatter_class=argparse.ArgumentDefaultsHelpFormatter,
        epilog=(
            "示例：uv run --project scripts "
            "scripts/generate_camera_background.py "
            "--texture-strength 0.65 --texture-density 0.35"
        ),
    )
    parser.add_argument("--output", type=Path, default=DEFAULT_OUTPUT)
    parser.add_argument("--width", type=int, default=1170)
    parser.add_argument("--height", type=int, default=2532)
    parser.add_argument("--seed", type=int, default=20260727)
    parser.add_argument(
        "--base-color",
        type=parse_hex_color,
        default=DEFAULT_STYLE.base_color,
        metavar="#RRGGBB",
    )
    parser.add_argument(
        "--vertical-shading",
        type=non_negative_float,
        default=DEFAULT_STYLE.vertical_shading,
        help="顶部至底部的明暗差，数值越大底部越暗",
    )
    parser.add_argument(
        "--macro-strength",
        type=non_negative_float,
        default=DEFAULT_STYLE.macro_strength,
        help="大范围材质明暗变化强度",
    )
    parser.add_argument(
        "--macro-scale",
        type=positive_float,
        default=DEFAULT_STYLE.macro_scale,
        help="大范围材质变化尺度（像素）",
    )
    parser.add_argument(
        "--texture-strength",
        type=non_negative_float,
        default=DEFAULT_STYLE.texture_strength,
        help="细纹理对比度；降低可让纹理更隐约",
    )
    parser.add_argument(
        "--texture-density",
        type=positive_float,
        default=DEFAULT_STYLE.texture_density,
        help="细纹理相对密度；降低可让纹理更疏",
    )
    parser.add_argument(
        "--texture-softness",
        type=positive_float,
        default=DEFAULT_STYLE.texture_softness,
        help="细纹理柔化半径（像素）；提高可减少锐利颗粒",
    )
    parser.add_argument(
        "--vignette-strength",
        type=non_negative_float,
        default=DEFAULT_STYLE.vignette_strength,
        help="边缘暗角强度",
    )
    parser.add_argument("--quality", type=int, default=90, help="JPEG 质量")
    return parser


def main() -> None:
    parser = build_parser()
    args = parser.parse_args()
    if args.width <= 0 or args.height <= 0:
        parser.error("宽度和高度必须大于 0")
    if not 1 <= args.quality <= 100:
        parser.error("JPEG 质量必须在 1 到 100 之间")

    style = CameraBackgroundStyle(
        base_color=args.base_color,
        vertical_shading=args.vertical_shading,
        macro_strength=args.macro_strength,
        macro_scale=args.macro_scale,
        texture_strength=args.texture_strength,
        texture_density=args.texture_density,
        texture_softness=args.texture_softness,
        vignette_strength=args.vignette_strength,
    )
    image = generate_background(
        args.width,
        args.height,
        seed=args.seed,
        style=style,
    )

    output = args.output.expanduser().resolve()
    output.parent.mkdir(parents=True, exist_ok=True)
    image.save(
        output,
        format="JPEG",
        quality=args.quality,
        subsampling=0,
        optimize=True,
    )
    print(f"Generated {output} ({args.width}x{args.height}, seed={args.seed})")
    print(
        "Style: "
        f"base=#{args.base_color[0]:02X}{args.base_color[1]:02X}"
        f"{args.base_color[2]:02X}, "
        f"texture_strength={args.texture_strength}, "
        f"texture_density={args.texture_density}, "
        f"texture_softness={args.texture_softness}, "
        f"macro_strength={args.macro_strength}"
    )


if __name__ == "__main__":
    main()
