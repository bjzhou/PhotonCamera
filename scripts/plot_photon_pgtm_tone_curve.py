# /// script
# requires-python = ">=3.11"
# dependencies = [
#   "matplotlib>=3.9,<4",
# ]
# ///
"""Plot the adjustable Photon PGTM profile tone curve.

Run from the repository root:

    uv run scripts/plot_photon_pgtm_tone_curve.py

The generated image is written under app/build/reports by default. Every curve
parameter and the marked input value can be overridden from the command line.
"""

from __future__ import annotations

import argparse
import math
from pathlib import Path

import matplotlib.pyplot as plt


DEFAULT_TOE_POWER = 2.8
DEFAULT_TOE_WIDTH = 0.01
DEFAULT_MID_POWER = 1
DEFAULT_SHOULDER_POWER = 1.15
DEFAULT_BALANCE = 0.95
DEFAULT_MARK_INPUT = 0.18
DEFAULT_SAMPLE_COUNT = 2049


def positive_float(value: str) -> float:
    parsed = float(value)
    if not math.isfinite(parsed) or parsed <= 0.0:
        raise argparse.ArgumentTypeError("value must be finite and greater than zero")
    return parsed


def normalized_float(value: str) -> float:
    parsed = float(value)
    if not math.isfinite(parsed) or not 0.0 <= parsed <= 1.0:
        raise argparse.ArgumentTypeError("value must be finite and within [0, 1]")
    return parsed


def photon_pgtm_tone_curve(
    input_value: float,
    *,
    toe_power: float,
    toe_width: float,
    mid_power: float,
    shoulder_power: float,
    balance: float,
) -> float:
    """Evaluate the same monotonic formula used by DngProfileToneCurve.kt."""
    if input_value <= 0.0:
        return 0.0
    if input_value >= 1.0:
        return 1.0

    normalized_toe_input = (input_value + toe_width) / (1.0 + toe_width)
    toe_transition = normalized_toe_input ** (mid_power - toe_power)
    numerator = input_value**toe_power * toe_transition
    shoulder = balance * (1.0 - input_value) ** shoulder_power
    return numerator / (numerator + shoulder)


def parse_args() -> argparse.Namespace:
    repository_root = Path(__file__).resolve().parents[1]
    default_output = (
        repository_root
        / "app"
        / "build"
        / "reports"
        / "photon-pgtm-tone-curve.png"
    )
    parser = argparse.ArgumentParser(
        description="Plot the adjustable Photon PGTM profile tone curve."
    )
    parser.add_argument("--toe-power", type=positive_float, default=DEFAULT_TOE_POWER)
    parser.add_argument("--toe-width", type=positive_float, default=DEFAULT_TOE_WIDTH)
    parser.add_argument("--mid-power", type=positive_float, default=DEFAULT_MID_POWER)
    parser.add_argument(
        "--shoulder-power",
        type=positive_float,
        default=DEFAULT_SHOULDER_POWER,
    )
    parser.add_argument("--balance", type=positive_float, default=DEFAULT_BALANCE)
    parser.add_argument(
        "--mark-input",
        type=normalized_float,
        default=DEFAULT_MARK_INPUT,
        help="Input position to annotate, default: 0.18",
    )
    parser.add_argument(
        "--samples",
        type=int,
        default=DEFAULT_SAMPLE_COUNT,
        help="Number of uniformly spaced samples, default: 2049",
    )
    parser.add_argument(
        "--output",
        type=Path,
        default=default_output,
        help=f"Output PNG or SVG path, default: {default_output}",
    )
    parser.add_argument(
        "--show",
        action="store_true",
        help="Open an interactive Matplotlib window after saving.",
    )
    args = parser.parse_args()
    if args.samples < 2:
        parser.error("--samples must be at least 2")
    return args


def main() -> None:
    args = parse_args()
    parameters = {
        "toe_power": args.toe_power,
        "toe_width": args.toe_width,
        "mid_power": args.mid_power,
        "shoulder_power": args.shoulder_power,
        "balance": args.balance,
    }
    inputs = [index / (args.samples - 1) for index in range(args.samples)]
    outputs = [
        photon_pgtm_tone_curve(input_value, **parameters)
        for input_value in inputs
    ]
    mark_output = photon_pgtm_tone_curve(args.mark_input, **parameters)
    parameter_label = (
        f"toePower={args.toe_power:g}, toeWidth={args.toe_width:g}, "
        f"midPower={args.mid_power:g}, shoulderPower={args.shoulder_power:g}, "
        f"balance={args.balance:g}"
    )

    figure, axis = plt.subplots(figsize=(8, 8), constrained_layout=True)
    axis.plot(inputs, inputs, color="#8A8A8A", linewidth=1.2, linestyle="--", label="Linear")
    axis.plot(
        inputs,
        outputs,
        color="#2F70D0",
        linewidth=2.4,
        label="Photon PGTM",
    )
    axis.axvline(args.mark_input, color="#D06A2F", linewidth=1.0, linestyle=":")
    axis.axhline(mark_output, color="#D06A2F", linewidth=1.0, linestyle=":")
    axis.scatter(
        [args.mark_input],
        [mark_output],
        color="#D06A2F",
        edgecolor="white",
        linewidth=1.0,
        s=64,
        zorder=3,
    )
    axis.annotate(
        f"x = {args.mark_input:.6f}\ny = {mark_output:.9f}",
        xy=(args.mark_input, mark_output),
        xytext=(18, 22),
        textcoords="offset points",
        arrowprops={"arrowstyle": "->", "color": "#D06A2F"},
        bbox={"boxstyle": "round,pad=0.35", "fc": "white", "ec": "#D06A2F"},
    )
    axis.set(
        title=f"Photon PGTM Profile Tone Curve\n{parameter_label}",
        xlabel="Input",
        ylabel="Output",
        xlim=(0.0, 1.0),
        ylim=(0.0, 1.0),
        aspect="equal",
    )
    axis.grid(True, color="#D0D0D0", linewidth=0.7, alpha=0.7)
    axis.legend(loc="lower right")

    args.output.parent.mkdir(parents=True, exist_ok=True)
    figure.savefig(args.output, dpi=180)
    print(f"mark: x={args.mark_input:.9f}, y={mark_output:.9f}")
    print(f"output: {args.output.resolve()}")

    if args.show:
        plt.show()
    else:
        plt.close(figure)


if __name__ == "__main__":
    main()
