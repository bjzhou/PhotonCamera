#include "sony_lens_correction.h"

#include <algorithm>
#include <cmath>
#include <functional>

#include "common.h"
#include "dng_warp_rectilinear.h"

namespace {

constexpr int kPolynomialTerms = 4;      // DNG WarpRectilinear radial terms in r^2
constexpr int kFitSamples = 2048;
constexpr int kScaleSearchIterations = 32;
constexpr double kMinFrameScale = 0.5;   // destination zoom factor search range
constexpr double kMaxFrameScale = 2.0;
constexpr int kFitRefinements = 3;
constexpr int kVignettingMapColumns = 65;

double interpolateLinearSpline(const double *xi, const double *yi, int n, double x) {
  if (x <= xi[0]) return yi[0];
  for (int i = 1; i < n; ++i) {
    if (x <= xi[i]) {
      const double t = (x - xi[i - 1]) / (xi[i] - xi[i - 1]);
      return yi[i - 1] + t * (yi[i] - yi[i - 1]);
    }
  }
  return yi[n - 1];
}

double evaluatePolynomial(const double coefficients[kPolynomialTerms], double r2) {
  return coefficients[0] +
         r2 * (coefficients[1] + r2 * (coefficients[2] + r2 * coefficients[3]));
}

struct FrameGeometry {
  double width;
  double height;
  double centerX;
  double centerY;
  double normRadius;
};

FrameGeometry frameGeometry(int width, int height) {
  FrameGeometry geometry{};
  geometry.width = width;
  geometry.height = height;
  // WarpRectilinear center 0.5 / 0.5; the normalization radius is the farthest corner
  // distance, which equals the half diagonal used by the Sony splines.
  geometry.centerX = 0.5 * width;
  geometry.centerY = 0.5 * height;
  geometry.normRadius = std::hypot(std::max(geometry.centerX, width - geometry.centerX),
                                   std::max(geometry.centerY, height - geometry.centerY));
  return geometry;
}

// ratioAtDestination(r) maps a normalized destination radius to the destination-to-source
// radius ratio. Returns true when every destination pixel center on the frame border lands on a
// source pixel center inside the frame.
bool coversFrame(const FrameGeometry &geometry,
                 const std::function<double(double)> &ratioAtDestination) {
  const double maxX = geometry.width - 1.0;
  const double maxY = geometry.height - 1.0;
  auto covered = [&](double x, double y) {
    const double dx = (x - geometry.centerX) / geometry.normRadius;
    const double dy = (y - geometry.centerY) / geometry.normRadius;
    const double r = std::min(std::sqrt(dx * dx + dy * dy), 1.0);
    const double ratio = ratioAtDestination(r);
    if (!std::isfinite(ratio) || ratio <= 0.0) return false;
    const double sourceX = geometry.centerX + geometry.normRadius * dx * ratio;
    const double sourceY = geometry.centerY + geometry.normRadius * dy * ratio;
    return sourceX >= 0.0 && sourceX <= maxX && sourceY >= 0.0 && sourceY <= maxY;
  };
  const int w = static_cast<int>(geometry.width);
  const int h = static_cast<int>(geometry.height);
  for (int x = 0; x < w; ++x) {
    if (!covered(x, 0.0) || !covered(x, maxY)) return false;
  }
  for (int y = 1; y < h - 1; ++y) {
    if (!covered(0.0, y) || !covered(maxX, y)) return false;
  }
  return true;
}

// Finds the smallest destination zoom factor k for which ratio(r) = sourceRatio(r / k) / k
// covers the frame in all three planes. Returns a non-positive value when no factor in the
// search range works.
double solveFrameScale(const FrameGeometry &geometry,
                       const std::function<double(int, double)> &sourceRatio) {
  auto coveredAt = [&](double k) {
    for (int plane = 0; plane < 3; ++plane) {
      if (!coversFrame(geometry, [&](double r) { return sourceRatio(plane, r / k) / k; })) {
        return false;
      }
    }
    return true;
  };
  if (!coveredAt(kMaxFrameScale)) return -1.0;
  double lo = kMinFrameScale;
  double hi = kMaxFrameScale;
  if (coveredAt(lo)) return lo;
  for (int i = 0; i < kScaleSearchIterations; ++i) {
    const double mid = 0.5 * (lo + hi);
    if (coveredAt(mid)) {
      hi = mid;
    } else {
      lo = mid;
    }
  }
  return hi;
}

bool solveLinearSystem(double a[kPolynomialTerms][kPolynomialTerms], double b[kPolynomialTerms],
                       double x[kPolynomialTerms]) {
  for (int col = 0; col < kPolynomialTerms; ++col) {
    int pivot = col;
    for (int row = col + 1; row < kPolynomialTerms; ++row) {
      if (std::abs(a[row][col]) > std::abs(a[pivot][col])) pivot = row;
    }
    if (std::abs(a[pivot][col]) < 1e-300) return false;
    if (pivot != col) {
      std::swap(a[pivot], a[col]);
      std::swap(b[pivot], b[col]);
    }
    for (int row = col + 1; row < kPolynomialTerms; ++row) {
      const double factor = a[row][col] / a[col][col];
      for (int k = col; k < kPolynomialTerms; ++k) a[row][k] -= factor * a[col][k];
      b[row] -= factor * b[col];
    }
  }
  for (int row = kPolynomialTerms - 1; row >= 0; --row) {
    double sum = b[row];
    for (int k = row + 1; k < kPolynomialTerms; ++k) sum -= a[row][k] * x[k];
    x[row] = sum / a[row][row];
  }
  for (int i = 0; i < kPolynomialTerms; ++i) {
    if (!std::isfinite(x[i])) return false;
  }
  return true;
}

// Weighted least squares of the spline ratio by a0 + a1 rho^2 + a2 rho^4 + a3 rho^6 over
// [0, rhoMax]. The weight rho^3 minimizes the mean squared pixel displacement over the image
// area (displacement error ~ rho * ratio error, area element ~ rho drho).
bool fitRadialPolynomial(const SonyLensCorrection &correction, int plane, double rhoMax,
                         double coefficients[kPolynomialTerms]) {
  double normal[kPolynomialTerms][kPolynomialTerms] = {};
  double rhs[kPolynomialTerms] = {};
  for (int i = 0; i < kFitSamples; ++i) {
    const double rho = rhoMax * (i + 0.5) / kFitSamples;
    const double rho2 = rho * rho;
    const double weight = rho2 * rho;
    const double target = correction.planeRatio(plane, rho);
    const double basis[kPolynomialTerms] = {1.0, rho2, rho2 * rho2, rho2 * rho2 * rho2};
    for (int r = 0; r < kPolynomialTerms; ++r) {
      rhs[r] += weight * basis[r] * target;
      for (int c = 0; c < kPolynomialTerms; ++c) {
        normal[r][c] += weight * basis[r] * basis[c];
      }
    }
  }
  return solveLinearSystem(normal, rhs, coefficients);
}

double maxFitDisplacementPixels(const SonyLensCorrection &correction, int plane, double rhoMax,
                                const double coefficients[kPolynomialTerms],
                                double normRadius) {
  double worst = 0.0;
  for (int i = 0; i <= kFitSamples; ++i) {
    const double rho = rhoMax * i / kFitSamples;
    const double spline = correction.planeRatio(plane, rho);
    const double polynomial = evaluatePolynomial(coefficients, rho * rho);
    worst = std::max(worst, std::abs(polynomial - spline) * rho * normRadius);
  }
  return worst;
}

}  // namespace

double SonyRadialSpline::evaluate(double radius, double identity) const {
  return count > 0 ? interpolateLinearSpline(knots, values, count, radius) : identity;
}

double SonyLensCorrection::planeRatio(int plane, double radius) const {
  const double ratio = distortion.evaluate(radius, 1.0);
  if (plane == 0) return ratio * caRed.evaluate(radius, 1.0);
  if (plane == 2) return ratio * caBlue.evaluate(radius, 1.0);
  return ratio;
}

namespace {

// Reads the knot count header. Returns 0 for an absent component, -1 for a malformed one.
int sonyKnotCount(const std::vector<int16_t> &tag, int perKnot) {
  if (tag.empty() || tag[0] == 0) return 0;
  if (tag[0] < 0 || tag[0] % perKnot != 0) return -1;
  const int count = tag[0] / perKnot;
  if (count < 2 || count > kSonyLensCorrectionMaxKnots ||
      static_cast<int>(tag.size()) < count * perKnot + 1) {
    return -1;
  }
  return count;
}

// Fills spline knots at (i + 0.5) / (n - 1) of the half diagonal with decoded values.
// Returns whether any stored value differs from the identity encoding (0).
template <typename Decode>
bool decodeSpline(const std::vector<int16_t> &tag, int count, int valueOffset,
                  SonyRadialSpline &spline, Decode decode) {
  spline.count = count;
  bool nonIdentity = false;
  for (int i = 0; i < count; ++i) {
    const int16_t raw = tag[valueOffset + i];
    spline.knots[i] = (i + 0.5) / (count - 1);
    spline.values[i] = decode(raw);
    nonIdentity = nonIdentity || raw != 0;
  }
  if (!nonIdentity) spline.count = 0;
  return nonIdentity;
}

}  // namespace

bool decodeSonyLensCorrection(const SonyLensCorrectionTags &tags, SonyLensCorrection &out) {
  out = SonyLensCorrection{};
  const int distortionKnots = sonyKnotCount(tags.distortion, 1);
  const int caKnots = sonyKnotCount(tags.chromaticAberration, 2);
  const int vignettingKnots = sonyKnotCount(tags.vignetting, 1);
  if (distortionKnots < 0 || caKnots < 0 || vignettingKnots < 0) {
    LOGW("Sony lens correction: malformed arrays dist=%zu/%d ca=%zu/%d vig=%zu/%d",
         tags.distortion.size(), tags.distortion.empty() ? 0 : tags.distortion[0],
         tags.chromaticAberration.size(),
         tags.chromaticAberration.empty() ? 0 : tags.chromaticAberration[0],
         tags.vignetting.size(), tags.vignetting.empty() ? 0 : tags.vignetting[0]);
    return false;
  }

  const bool hasDistortion = decodeSpline(
      tags.distortion, distortionKnots, 1, out.distortion,
      [](int16_t v) { return v * std::ldexp(1.0, -14) + 1.0; });
  auto decodeCa = [](int16_t v) { return v * std::ldexp(1.0, -21) + 1.0; };
  const bool hasCaRed =
      decodeSpline(tags.chromaticAberration, caKnots, 1, out.caRed, decodeCa);
  const bool hasCaBlue =
      decodeSpline(tags.chromaticAberration, caKnots, 1 + caKnots, out.caBlue, decodeCa);
  // Sony stores vignetting falloff as 2^(0.5 - 2^(v * 2^-13 - 1)); correction divides by it.
  out.hasVignetting = decodeSpline(
      tags.vignetting, vignettingKnots, 1, out.vignettingGain, [](int16_t v) {
        return std::pow(2.0, std::pow(2.0, v * std::ldexp(1.0, -13) - 1.0) - 0.5);
      });
  out.hasGeometry = hasDistortion || hasCaRed || hasCaBlue;
  LOGI("Sony lens correction: knots dist=%d caR=%d caB=%d vig=%d",
       out.distortion.count, out.caRed.count, out.caBlue.count, out.vignettingGain.count);
  return out.hasGeometry || out.hasVignetting;
}

bool buildSonyWarpRectilinear(const SonyLensCorrection &correction, int width, int height,
                              std::vector<float> &record) {
  record.clear();
  if (!correction.hasGeometry || width < 2 || height < 2) return false;
  const FrameGeometry geometry = frameGeometry(width, height);

  // Frame scale from the splines themselves, then alternate polynomial fits over the radius
  // range the scaled destination reaches and re-solve the scale on the fitted polynomials, so
  // the coverage guarantee holds for exactly what the GPU evaluates.
  double scale = solveFrameScale(geometry, [&](int plane, double rho) {
    return correction.planeRatio(plane, rho);
  });
  if (scale <= 0.0) {
    LOGW("Sony lens correction: no frame scale covers the distortion");
    return false;
  }

  double coefficients[3][kPolynomialTerms] = {};
  for (int refinement = 0; refinement < kFitRefinements; ++refinement) {
    const double rhoMax = 1.0 / scale;
    for (int plane = 0; plane < 3; ++plane) {
      if (!fitRadialPolynomial(correction, plane, rhoMax, coefficients[plane])) {
        LOGW("Sony lens correction: polynomial fit failed for plane %d", plane);
        return false;
      }
    }
    scale = solveFrameScale(geometry, [&](int plane, double rho) {
      return evaluatePolynomial(coefficients[plane], rho * rho);
    });
    if (scale <= 0.0) {
      LOGW("Sony lens correction: fitted polynomial cannot cover the frame");
      return false;
    }
  }

  record.assign(kDngWarpRectilinearRecordFloats, 0.0f);
  const double rhoMax = 1.0 / scale;
  for (int plane = 0; plane < 3; ++plane) {
    // ratio(r) = P(r / k) / k  =>  coefficient i scales by k^-(2i + 1).
    double factor = 1.0 / scale;
    float *planeRecord = record.data() + plane * kDngWarpRectilinearPlaneCoefficients;
    for (int term = 0; term < kPolynomialTerms; ++term) {
      planeRecord[term] = static_cast<float>(coefficients[plane][term] * factor);
      factor /= scale * scale;
    }
    LOGI("Sony lens correction: plane=%d kr=[%.8f, %.8f, %.8f, %.8f] fitErrMax=%.3fpx",
         plane, planeRecord[0], planeRecord[1], planeRecord[2], planeRecord[3],
         maxFitDisplacementPixels(correction, plane, rhoMax, coefficients[plane],
                                  geometry.normRadius));
  }
  record[kDngWarpRectilinearCenterOffset] = 0.5f;
  record[kDngWarpRectilinearCenterOffset + 1] = 0.5f;
  LOGI("Sony lens correction: warp knots dist=%d ca=%d frameScale=%.5f size=%dx%d",
       correction.distortion.count, correction.caRed.count, 1.0 / scale, width, height);
  return true;
}

bool buildSonyVignettingGainMap(const SonyLensCorrection &correction, int width, int height,
                                std::vector<float> &packed, int &mapWidth, int &mapHeight,
                                float grid[8]) {
  packed.clear();
  mapWidth = 0;
  mapHeight = 0;
  if (!correction.hasVignetting || width < 2 || height < 2) return false;

  const int columns = kVignettingMapColumns;
  const int rows = std::max(2, static_cast<int>(std::lround(
                                   (columns - 1) * static_cast<double>(height) / width)) + 1);
  const FrameGeometry geometry = frameGeometry(width, height);
  packed.resize(static_cast<size_t>(columns) * rows * 4);
  for (int row = 0; row < rows; ++row) {
    // GainMap points sit at normalized positions origin + index * spacing over the bounds.
    const double y = height * static_cast<double>(row) / (rows - 1);
    for (int column = 0; column < columns; ++column) {
      const double x = width * static_cast<double>(column) / (columns - 1);
      const double r = std::hypot(x - geometry.centerX, y - geometry.centerY) /
                       geometry.normRadius;
      const float gain = static_cast<float>(correction.vignettingGain.evaluate(r, 1.0));
      float *point = packed.data() + (static_cast<size_t>(row) * columns + column) * 4;
      point[0] = point[1] = point[2] = point[3] = gain;
    }
  }
  mapWidth = columns;
  mapHeight = rows;
  grid[0] = 0.0f;
  grid[1] = 0.0f;
  grid[2] = 1.0f / (columns - 1);
  grid[3] = 1.0f / (rows - 1);
  grid[4] = 0.0f;
  grid[5] = 0.0f;
  grid[6] = static_cast<float>(width);
  grid[7] = static_cast<float>(height);
  LOGI("Sony lens correction: vignetting map %dx%d centerGain=%.4f cornerGain=%.4f",
       columns, rows, packed[(static_cast<size_t>(rows / 2) * columns + columns / 2) * 4],
       packed[0]);
  return true;
}
