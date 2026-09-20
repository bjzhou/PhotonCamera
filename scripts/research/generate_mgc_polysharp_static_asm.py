#!/usr/bin/env python3
"""Lift the pinned MGC V25 Polysharp AOT closures into a static-assembly capsule.

Four closures are extracted from the pinned libgcastartup.so:
  * CensusHighFreqBlenderHalide + SharpenDOGHalide  (the luma-refine pair)
  * SeparableIterativePolyFilterHalide              (polynomial sharpening core)
  * HaloMaskHalide + BlendTwoImagesWithTauAndMask   (Polysharp halo and blend)

Together with the RAISR capsule (generate_mgc_raisr_static_asm.py) they are the
whole `polysharp_raisr2020.cc` / `polysharp_utils.cc` output-magnification chain.

Both generators share one implementation: this file imports the RAISR generator
and only overrides the closure set, the task slots, the symbol prefix and the
capsule placeholder.

Boundary evidence, ABI notes and the driver structure live in
.codex-tmp/ida/mgc_v25/polysharp_recon/POLYSHARP_KERNELS.md.

Run:  python3 scripts/research/generate_mgc_polysharp_static_asm.py \
        <libgcastartup.so> <mgc_polysharp_static.S.in> <mgc_polysharp_capsule.bin>
"""

from __future__ import annotations

import argparse
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))

import generate_mgc_raisr_static_asm as lift  # noqa: E402

lift.SYMBOL_PREFIX = "photon_mgc_polysharp"
lift.TEXT_SECTION_BASENAME = "photon_mgc.Polysharp"
lift.DATA_SECTION_BASENAME = "photon_mgc.polysharp"
lift.CAPSULE_PLACEHOLDER = "@MGC_POLYSHARP_CAPSULE@"

# ---------------------------------------------------------------------------
# Closure 1: the luma-refine pair, CensusHighFreqBlenderHalide + SharpenDOGHalide.
#
# The two pipelines are page-connected (Census ends at 0x35A9084, whose page is
# 0x35A9000, and SharpenDOG starts there), so one capsule cannot lift them as two
# closures: they would both copy page 0x35A9000.  They are therefore one closure
# with twelve task slots; each keeps its own exported entry symbol.
#
# Census: wrapper 0x35A216C calls the AOT entry 0x35A75B0, which owns four
# halide_do_par_for nests at 0x35A8688/0x35A87E0/0x35A892C/0x35A8AD0 and reads
# the .got slots 0x61E70A8..0x61E70C8.
# SharpenDOG: wrapper 0x35A1B24 calls the AOT entry 0x35B57F4, seven nests
# 0x35B68F4/0x35B6AE0/0x35B6CC0/0x35B6F04/0x35B7060/0x35B71D8/0x35B85CC and
# slots 0x61E70D0..0x61E7100.
# The reachability walk from entry+workers covers one contiguous CFI-free run
# 0x35A27F8..0x35BC114 that stops before the RAISR composite closure.
REFINE_RANGES = (
    lift.CodeRange("CensusTask0", 0x35A27F8, 0x35A27F8, 0x35A509C),
    lift.CodeRange("CensusTask1", 0x35A509C, 0x35A509C, 0x35A57E4),
    lift.CodeRange("CensusTask2", 0x35A57E4, 0x35A57E4, 0x35A7254),
    lift.CodeRange("CensusTask3", 0x35A7254, 0x35A7254, 0x35A7308),
    lift.CodeRange("CensusBridge", 0x35A7308, 0x35A7308, 0x35A75B0),
    lift.CodeRange("CensusEntry", 0x35A75B0, 0x35A75B0, 0x35A9084,
                   "photon_mgc_polysharp_census"),
    lift.CodeRange("SharpenDogTask0", 0x35A9084, 0x35A9084, 0x35AD774),
    lift.CodeRange("SharpenDogTask1", 0x35AD774, 0x35AD774, 0x35ADF68),
    lift.CodeRange("SharpenDogTask2", 0x35ADF68, 0x35ADF68, 0x35AE584),
    lift.CodeRange("SharpenDogTask3", 0x35AE584, 0x35AE584, 0x35AEBCC),
    lift.CodeRange("SharpenDogTask4", 0x35AEBCC, 0x35AEBCC, 0x35B0644),
    lift.CodeRange("SharpenDogTask5", 0x35B0644, 0x35B0644, 0x35B20E0),
    lift.CodeRange("SharpenDogBridge", 0x35B20E0, 0x35B20E0, 0x35B57F4),
    lift.CodeRange("SharpenDogEntry", 0x35B57F4, 0x35B57F4, 0x35BC114,
                   "photon_mgc_polysharp_sharpen_dog"),
)

# ---------------------------------------------------------------------------
# Closure 2: SeparableIterativePolyFilterHalide.
# Polysharp() 0x357680C -> lib_enhance wrapper 0x228B8A8 -> AOT entry 0x357F4C8,
# three nests with .got slots 0x61E7000..0x61E7018.  Entry+workers cover the
# contiguous run 0x35769F0..0x35816C4, which ends at the CFI-covered coefficient
# helper 0x35816C4.
POLY_FILTER_RANGES = (
    lift.CodeRange("PolyFilterTask0", 0x35769F0, 0x35769F0, 0x357A378),
    lift.CodeRange("PolyFilterTask1", 0x357A378, 0x357A378, 0x357B834),
    lift.CodeRange("PolyFilterTask2", 0x357B834, 0x357B834, 0x357E514),
    lift.CodeRange("PolyFilterBridge", 0x357E514, 0x357E514, 0x357F4C8),
    lift.CodeRange("PolyFilterEntry", 0x357F4C8, 0x357F4C8, 0x35816C4,
                   "photon_mgc_polysharp_poly_filter"),
)

# ---------------------------------------------------------------------------
# Closure 3: the halo/blend pair, HaloMaskHalide + BlendTwoImagesWithTauAndMask.
#
# The Polysharp implementation 0x35816C4 calls HaloMaskHalide (entry 0x35872BC,
# logged as `HaloMaskHalide failed.`) and BlendTwoImagesWithTauAndMask (entry
# 0x3583C5C, logged as `BlendTwoImagesWithTauAndMask failed.`).
#
# They are one closure because HaloMask's cold path reads the .got slot
# 0x61E7038 -> 0x3584E18, a worker that sits immediately after the Blend entry's
# code, so the two page spans are not separable (0x3584E18 rounds down to page
# 0x3584000, inside Blend's pages).
#
# Nests: Blend 0x3584A2C (slot 0x61E7030) and HaloMask 0x3588034 / 0x3587DF0 /
# its cold sibling, which read slots 0x61E7048 / 0x61E7038 / 0x61E7040.  The
# HaloMask half is one contiguous run 0x3584E18..0x35882FC once all three workers
# are roots.
HALO_BLEND_RANGES = (
    lift.CodeRange("BlendTask0", 0x35822D4, 0x35822D4, 0x35823B8),
    lift.CodeRange("BlendTask1", 0x35823B8, 0x35823B8, 0x3582C8C),
    lift.CodeRange("BlendTask2", 0x3582C8C, 0x3582C8C, 0x3583C5C),
    lift.CodeRange("BlendEntry", 0x3583C5C, 0x3583C5C, 0x3584E18,
                   "photon_mgc_polysharp_blend_tau_mask"),
    lift.CodeRange("HaloMaskTask0", 0x3584E18, 0x3584E18, 0x35855C8),
    lift.CodeRange("HaloMaskTask1", 0x35855C8, 0x35855C8, 0x35861D4),
    lift.CodeRange("HaloMaskTask2", 0x35861D4, 0x35861D4, 0x35872BC),
    lift.CodeRange("HaloMaskEntry", 0x35872BC, 0x35872BC, 0x35882FC,
                   "photon_mgc_polysharp_halo_mask"),
)

lift.CODE_CLOSURES = (
    lift.CodeClosure("polysharp_refine", REFINE_RANGES),
    lift.CodeClosure("polysharp_poly_filter", POLY_FILTER_RANGES),
    lift.CodeClosure("polysharp_halo_blend", HALO_BLEND_RANGES),
)
lift.CODE_RANGES = tuple(
    code_range for closure in lift.CODE_CLOSURES for code_range in closure.ranges
)

lift.TASK_SLOTS = {
    "polysharp_refine": {        0x61E70A8: 0x35A27F8,
        0x61E70B0: 0x35A509C,
        0x61E70B8: 0x35A57E4,
        0x61E70C0: 0x35A7254,
        0x61E70C8: 0x35A7308,
        0x61E70D0: 0x35A9084,
        0x61E70D8: 0x35AD774,
        0x61E70E0: 0x35ADF68,
        0x61E70E8: 0x35AE584,
        0x61E70F0: 0x35AEBCC,
        0x61E70F8: 0x35B0644,
        0x61E7100: 0x35B20E0,
    },
    "polysharp_poly_filter": {
        0x61E7000: 0x35769F0,
        0x61E7008: 0x357A378,
        0x61E7010: 0x357B834,
        0x61E7018: 0x357E514,
    },
    "polysharp_halo_blend": {
        0x61E7020: 0x35822D4,
        0x61E7028: 0x35823B8,
        0x61E7030: 0x3582C8C,
        0x61E7038: 0x3584E18,
        0x61E7040: 0x35855C8,
        0x61E7048: 0x35861D4,
    },
}

# The lifted closures call the same Halide runtime entries the RAISR capsule
# already shims, plus `memset` through this library's second PLT copy.  AOT code
# never reaches a lifted sibling closure here: the refine chain's composite call
# lives in the C++ driver, not inside these kernels.
lift.HOST_TARGETS = dict(lift.HOST_TARGETS)
lift.HOST_TARGETS[0x6057D20] = "memset"


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("source", type=Path)
    parser.add_argument("output", type=Path)
    parser.add_argument("capsule", type=Path)
    arguments = parser.parse_args()
    lift.generate(arguments.source, arguments.output, arguments.capsule)


if __name__ == "__main__":
    main()
