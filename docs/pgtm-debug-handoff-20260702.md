# PGTM Debug Handoff 2026-07-02

## Context

This branch captures the PGTM halo debugging work from 2026-07-02. The issue is visible in RAW rendering when the Google Pixel-style tone map is enabled: regions that look visually close in the pre-PGTM linear image split into different brightness bands after PGTM, producing halo around keycaps. The user confirmed:

- The halo is absent before PGTM in the linear image.
- Baseline exposure is not the root cause.
- A constant `0.25` PGTM darkens in the app and system gallery, but Lightroom ignores PGTM.
- A constant `0.25` PGTM has no halo after lifting, so the artifact is caused by generated PGTM data, not tag application alone.
- The visible halo region maps roughly to PGTM table input `0.08..0.14`.
- The solution must follow the Adobe DNG SDK/DNG spec semantics, not an ad-hoc luminance estimate.

## Official DNG Semantics Used

Adobe DNG 1.7.1 / DNG SDK 1.7.1 documents ProfileGainTableMap and ProfileGainTableMap2 with these constraints:

- PGTM input is computed from `(R, G, B, min(R,G,B), max(R,G,B)) * MapInputWeights`.
- For PGTM2, the input is clamped and raised by `Gamma`.
- PGTM should be applied in Reference Input Medium Metric / profile linear color space.
- BaselineExposure is applied before PGTM.
- PGTM is applied before ProfileToneCurve.
- Table lookup indexes use `tableInput * MapPointsN`, with final lookup clamped to valid table entries.

The official docs source used during debugging was Adobe's DNG page:

https://helpx.adobe.com/camera-raw/digital-negative.html

The DNG 1.7.1 PDF was also downloaded locally during debugging as `/private/tmp/DNG_Spec_1_7_1_0.pdf` and converted to `/private/tmp/dng_spec_1_7_1_0.txt`.

## Root Causes Found

1. CPU and GPU PGTM stats were previously based on a custom camera-space `0.5*luma + 0.5*maxChannel` input. That does not match DNG PGTM semantics.

2. PGTM generation was not consistently transforming stats samples into profile/RIMM linear RGB before computing the five-weight input.

3. Rendering previously clamped profile RGB before computing PGTM input. DNG PGTM input should be derived from the linear profile/RIMM value after BaselineExposure, before optional render-domain clamp.

4. The old test samples were partially derived from DNGs but were not recomputed after switching to the correct RIMM/profile input. They could pass while no longer proving the generator matched the original DNG metadata.

5. The offline `DngProfileGainTableMapPatcher` was a divergent path. It rewrote DNG files after save and could not strictly reconstruct full DNG profile/RIMM metadata. This conflicted with the UI switch path.

## Code Changes

### Generator

File:

- `app/src/main/java/com/hinnka/mycamera/raw/DngHdrProfileGainTableGenerator.kt`

Main changes:

- Added shared official PGTM input weights:
  - R `0.1495`
  - G `0.2935`
  - B `0.0570`
  - min `0.1250`
  - max `0.3750`
- Added `sceneInputFromLinearRgb(...)` and `sceneInputFromProfileRgb(...)`.
- Generator stats are now assumed to be post-BaselineExposure profile/RIMM five-weight scene inputs.
- Table input indexing is back to the DNG convention: `index / pointCount`, except last entry maps to `1.0`.
- Dense-highlight scene max fitting was changed so dense highlight cases do not blindly chase `maxInput` outliers. The target now depends on `p98` and tail percentile stats, which lets older Pixel DNG-derived samples and the keycap sample pass together.
- Added diagnostic band support for temporary PGTM range isolation.

### CPU Stats Builder

File:

- `app/src/main/java/com/hinnka/mycamera/raw/RawProfileGainTableMapBuilder.kt`

Main changes:

- Replaced the custom luma/max stat input with `sceneInputFromLinearRgb(...)`.
- Passes `metadata.colorCorrectionMatrix` so the stats input is computed in profile/RIMM linear space.
- Handles both CFA raw and LinearRaw RGB inputs through the same official five-weight input path.

### GPU HDR Stacker Stats

Files:

- `app/src/main/java/com/hinnka/mycamera/processor/GlesRawStacker.kt`
- `app/src/main/java/com/hinnka/mycamera/raw/RawHdrLinearFusionProcessor.kt`

Main changes:

- `GlesRawStacker` now accepts `colorCorrectionMatrix`.
- PGTM stats compute shader transforms sampled RGB by `uColorCorrectionMatrix`, multiplies BaselineExposure gain, then computes the official five-weight PGTM input.
- `RawHdrLinearFusionProcessor` passes `metadata.colorCorrectionMatrix` to the GPU stacker.

### Render Path

File:

- `app/src/main/java/com/hinnka/mycamera/raw/RawDemosaicProcessor.kt`

Main changes:

- PGTM input is computed after the color matrix into profile/RIMM linear space.
- PGTM input is computed from `rgb * baselineGain`.
- PGTM gain is applied before optional profile RGB clamp.
- Table lookup uses `tableInput * MapPointsN`.
- Embedded PGTM can be wrapped by `DngPgtmDiagnostic` for temporary debug bands.

### Diagnostics

File:

- `app/src/main/java/com/hinnka/mycamera/raw/DngPgtmDiagnostic.kt`

Main changes:

- Centralized temporary PGTM diagnostic band configuration.
- Default is disabled:
  - `PGTM_DIAGNOSTIC_BAND_INDEX = 0`
  - `PGTM_VISUAL_OVERLAY_MODE = 0`
- Fine bands cover `0.080..0.140` in `0.005` increments.

### Removed Offline Patcher

Files:

- Deleted `app/src/main/java/com/hinnka/mycamera/raw/DngProfileGainTableMapPatcher.kt`
- Updated `app/src/main/java/com/hinnka/mycamera/gallery/GalleryManager.kt`

Main changes:

- Removed debug rewrite of existing DNG PGTM during RAW preview refresh.
- PGTM generation now stays in-memory and follows the same path as the UI `rawGooglePixelToneMap` switch.

## DNG Samples Recomputed

The old synthetic "Pixel samples" test was replaced with explicit DNG-derived fixtures in:

- `app/src/test/java/com/hinnka/mycamera/raw/DngHdrProfileGainTableGeneratorTest.kt`

Fixtures currently used:

- `PXL_20260628_175619159.RAW-02.ORIGINAL..dng`
  - baseline `0.99`
  - embedded PGTM weight sum `0.5074623`
  - embedded input headroom `1.0079140`
  - RIMM stats:
    - p10 `0.337668`
    - p50 `0.428147`
    - p90 `0.556421`
    - p98 `0.622064`
    - highlight `0.237918`
    - tailP95 `1.769715`
    - tailP98 `1.848588`
    - tailP99 `1.960254`
    - maxInput `3.247468`

- `PXL_20260630_100508552.RAW-02.ORIGINAL..dng`
  - baseline `1.38`
  - embedded PGTM weight sum `0.6550936`
  - embedded input headroom `1.7050014`
  - RIMM stats:
    - p10 `0.322686`
    - p50 `0.387230`
    - p90 `0.493896`
    - p98 `0.552372`
    - highlight `0.213364`
    - tailP95 `1.592500`
    - tailP98 `1.797323`
    - tailP99 `1.881310`
    - maxInput `1.991887`

- `PXL_20260629_213614190.RAW-02.ORIGINAL..dng`
  - baseline `1.40`
  - embedded PGTM weight sum `0.7948943`
  - embedded input headroom `2.0977387`
  - RIMM stats:
    - p10 `0.270184`
    - p50 `0.340886`
    - p90 `0.418926`
    - p98 `0.456479`
    - highlight `0.012236`
    - tailP95 `0.920819`
    - tailP98 `1.325456`
    - tailP99 `1.543746`
    - maxInput `4.766730`

- `PXL_20260702_144246096.RAW-02.ORIGINAL..dng`
  - baseline `1.46`
  - embedded PGTM weight sum `0.6642112`
  - embedded input headroom `1.8273006`
  - RIMM stats:
    - p10 `0.272827`
    - p50 `0.344414`
    - p90 `0.406222`
    - p98 `0.429191`
    - highlight `0.038032`
    - tailP95 `0.998236`
    - tailP98 `1.243947`
    - tailP99 `1.443504`
    - maxInput `2.448398`

The analysis script used locally during debugging was:

```bash
uv run python /private/tmp/analyze_google_pgtm.py /Users/zhoubinjia/Downloads/PXL_20260702_144246096.RAW-02.ORIGINAL..dng
```

The script was temporary and is not committed.

## Test Coverage

Commands run successfully on this branch:

```bash
./gradlew testDefaultDebugUnitTest --tests com.hinnka.mycamera.raw.DngHdrProfileGainTableGeneratorTest
./gradlew compileDefaultDebugKotlin
./gradlew testDefaultDebugUnitTest
```

The generator tests now include:

- DNG-derived RIMM fixture matching against embedded Pixel PGTM weight/headroom.
- Keycap low-range output and slope checks around table input `0.080..0.140`.
- Monotonic output checks.
- Brightness reversal checks.
- Highlight shoulder ordering checks.
- Google HDR ProfileToneCurve samples.

## Notes For Continued Debugging

- If halo still appears visually, use `DngPgtmDiagnostic` to enable visual overlay or isolate one table-input band at a time. Keep diagnostic constants disabled before committing production changes.
- The main live/UI path is now the source of truth. Avoid reintroducing file-level DNG rewrites unless full DNG color/profile metadata is parsed and it is proven to be byte-for-byte equivalent to the UI path.
- Lightroom desktop/mobile was observed to ignore PGTM in the tested sentinel DNGs, while the app and system gallery applied it. Use the app/system gallery for PGTM render validation.
- `app/build.gradle.kts` had an unrelated pre-existing version change in the worktree before this branch was created. It is intentionally not part of this PGTM commit.
