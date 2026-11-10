#pragma once

#include <cstdint>
#include <vector>

// Sony in-camera lens correction parameters stored in ARW TIFF IFDs:
//   0x7032 VignettingCorrParams, 0x7035 ChromaticAberrationCorrParams,
//   0x7037 DistortionCorrParams.
// Each array starts with its knot count (CA stores 2 * knots: red then blue); a zero count means
// the body has no data for that component (e.g. third-party lenses without profiles). Knots are
// uniformly spaced over the radius normalized by the half diagonal around the image center and
// are interpolated with a linear spline (darktable / RawTherapee embedded-metadata semantics).
struct SonyLensCorrectionTags {
  std::vector<int16_t> distortion;
  std::vector<int16_t> chromaticAberration;
  std::vector<int16_t> vignetting;
};

constexpr int kSonyLensCorrectionTagVignetting = 0x7032;
constexpr int kSonyLensCorrectionTagChromaticAberration = 0x7035;
constexpr int kSonyLensCorrectionTagDistortion = 0x7037;
constexpr int kSonyLensCorrectionMaxKnots = 16;

struct SonyRadialSpline {
  int count = 0;  // 0: component absent (identity)
  double knots[kSonyLensCorrectionMaxKnots] = {};
  double values[kSonyLensCorrectionMaxKnots] = {};

  double evaluate(double radius, double identity) const;
};

struct SonyLensCorrection {
  // Destination-to-source radius ratio from distortion.
  SonyRadialSpline distortion;
  // Destination-to-source radius ratio of red / blue relative to green (lateral CA).
  SonyRadialSpline caRed;
  SonyRadialSpline caBlue;
  // Multiplicative gain that removes vignetting at the source radius.
  SonyRadialSpline vignettingGain;
  bool hasGeometry = false;
  bool hasVignetting = false;

  // Combined destination-to-source ratio for plane 0..2 (R, G, B).
  double planeRatio(int plane, double radius) const;
};

// Validates and decodes each tag array independently. Returns false when no component carries a
// correction.
bool decodeSonyLensCorrection(const SonyLensCorrectionTags &tags, SonyLensCorrection &out);

// Builds one DNG WarpRectilinear record (see dng_warp_rectilinear.h) whose per-plane radial
// polynomials reproduce the Sony splines. The frame scale is folded into the polynomials so the
// whole width x height destination is covered by source pixels in every plane.
bool buildSonyWarpRectilinear(const SonyLensCorrection &correction, int width, int height,
                              std::vector<float> &record);

// Builds a DNG GainMap-style vignetting table packed as RGGB-ordered float4 per grid point
// (all four CFA channels carry the same radial gain). grid receives
// [originH, originV, spacingH, spacingV, boundsLeft, boundsTop, boundsRight, boundsBottom].
bool buildSonyVignettingGainMap(const SonyLensCorrection &correction, int width, int height,
                                std::vector<float> &packed, int &mapWidth, int &mapHeight,
                                float grid[8]);
