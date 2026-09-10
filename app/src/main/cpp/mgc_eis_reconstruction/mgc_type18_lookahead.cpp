#include "mgc_type18_lookahead.hpp"

#include <algorithm>
#include <cmath>
#ifdef MGC_EIS_BASELINE_TRACE
#include <cstdio>
#endif
#include <stdexcept>

namespace mgc_eis_reconstruction::type18 {
namespace {

constexpr double kPi = 3.14159265358979323846;
constexpr double kSlerpEndpointEpsilon = 9.999999974752427e-7;
constexpr double kSlerpNearParallel = 0.9999989867210388;
constexpr double kSlerpInvalidDot = 1.0000009536743164;

double quaternionDot(const Quaternion &lhs, const Quaternion &rhs) {
  return lhs.w * rhs.w + lhs.x * rhs.x + lhs.y * rhs.y + lhs.z * rhs.z;
}

Quaternion add(const Quaternion &lhs, const Quaternion &rhs) {
  return {lhs.w + rhs.w, lhs.x + rhs.x, lhs.y + rhs.y, lhs.z + rhs.z};
}

Quaternion scale(const Quaternion &value, double amount) {
  return {value.w * amount, value.x * amount, value.y * amount,
          value.z * amount};
}

// Behavior of 0x33BF8C0, including the binary's endpoint and near-parallel
// thresholds. The fallback is returned only for a numerically invalid dot
// product outside the tolerated normalized range.
Quaternion mgcSlerp(Quaternion from, Quaternion to, Quaternion fallback,
                    double amount) {
  from = from.normalized();
  amount = std::min(amount, 1.0);
  amount = std::max(amount, 0.0);
  if (amount < kSlerpEndpointEpsilon) {
    return from;
  }

  to = to.normalized();
  if (amount > kSlerpNearParallel) {
    return to;
  }

  const double dot = quaternionDot(from, to);
  const double absolute_dot = std::abs(dot);
  if (absolute_dot >= kSlerpInvalidDot) {
    return fallback;
  }
  if (absolute_dot > kSlerpNearParallel) {
    const double signed_amount = dot < 0.0 ? -amount : amount;
    return add(scale(from, 1.0 - amount), scale(to, signed_amount))
        .normalized();
  }

  const double angle = std::acos(absolute_dot);
  const double inverse_sine = 1.0 / std::sin(angle);
  const double from_weight = std::sin((1.0 - amount) * angle) * inverse_sine;
  const double to_weight =
      std::sin(amount * angle) * inverse_sine * (dot < 0.0 ? -1.0 : 1.0);
  return add(scale(from, from_weight), scale(to, to_weight));
}

void pushRing(std::deque<double> *history, double value, int capacity) {
  if (capacity <= 0) {
    return;
  }
  if (history->size() == static_cast<std::size_t>(capacity)) {
    history->pop_front();
  }
  history->push_back(value);
}

struct AxisAngle {
  Vec3 axis{1.0, 0.0, 0.0};
  double angle = 0.0;
};

AxisAngle quaternionToAxisAngle(const Quaternion &input) {
  const Quaternion q = input.normalized();
  const double vector_norm = std::sqrt(q.x * q.x + q.y * q.y + q.z * q.z);
  if (vector_norm < 1.0e-6) {
    return {};
  }
  return {{q.x / vector_norm, q.y / vector_norm, q.z / vector_norm},
          2.0 * std::acos(std::max(-1.0, std::min(q.w, 1.0)))};
}

Quaternion axisAngleToQuaternion(const Vec3 &rotation_vector) {
  const double angle = norm(rotation_vector);
  if (angle < 1.0e-6) {
    return Quaternion::identity();
  }
  return Quaternion::fromRotationVector(rotation_vector);
}

Quaternion multiplyLeftToRight(const std::vector<Quaternion> &values) {
  Quaternion product = Quaternion::identity();
  for (const Quaternion &value : values) {
    product = value * product;
  }
  return product;
}

// The baseline path is a separate float-only routine in libgcastartup.  Keep
// its arithmetic here rather than feeding its intermediate values through the
// app-wide double-precision Quaternion helpers: the latter erases the ULP
// differences that the original's adaptive future-domain gate preserves.
struct FloatQuaternion {
  float x = 0.0F;
  float y = 0.0F;
  float z = 0.0F;
  float w = 1.0F;
};

struct FloatAxisAngle {
  float x = 1.0F;
  float y = 0.0F;
  float z = 0.0F;
  float angle = 0.0F;
};

FloatQuaternion toFloatQuaternion(const Quaternion &value) {
  return {static_cast<float>(value.x), static_cast<float>(value.y),
          static_cast<float>(value.z), static_cast<float>(value.w)};
}

Quaternion toQuaternion(const FloatQuaternion &value) {
  return {static_cast<double>(value.w), static_cast<double>(value.x),
          static_cast<double>(value.y), static_cast<double>(value.z)};
}

float floatQuaternionDot(const FloatQuaternion &lhs,
                         const FloatQuaternion &rhs) {
  // Every V25 quaternion primitive folds the xyzw lanes as (x,z) + (y,w):
  // 0x3411824, 0x3411AE4 and 0x3411E1C all use EXT/FADD/FADDP.  Do not use
  // the conventional left-to-right four-term expression here.
  const float xz = lhs.x * rhs.x + lhs.z * rhs.z;
  const float yw = lhs.y * rhs.y + lhs.w * rhs.w;
  return xz + yw;
}

FloatQuaternion normalizeFloatQuaternion(FloatQuaternion value) {
  const float xz = value.x * value.x + value.z * value.z;
  const float yw = value.y * value.y + value.w * value.w;
  const float inverse_length = 1.0F / std::sqrt(xz + yw);
  value.x *= inverse_length;
  value.y *= inverse_length;
  value.z *= inverse_length;
  value.w *= inverse_length;
  return value;
}

FloatQuaternion invertFloatQuaternion(const FloatQuaternion &value) {
  const float squared_length = floatQuaternionDot(value, value);
  FloatQuaternion inverse{-value.x, -value.y, -value.z, value.w};
  if (squared_length > 9.999999974752427e-7F) {
    const float reciprocal = 1.0F / squared_length;
    inverse.x *= reciprocal;
    inverse.y *= reciprocal;
    inverse.z *= reciprocal;
    inverse.w *= reciprocal;
  }
  return inverse;
}

FloatQuaternion multiplyFloatQuaternion(const FloatQuaternion &lhs,
                                        const FloatQuaternion &rhs) {
  // Exact addition tree of the shared V25 quaternion multiply helper
  // (0x3411A28).  The same primitive is used by the baseline and gyro paths.
  const float x =
      (lhs.y * rhs.z + (rhs.x * lhs.w + lhs.x * rhs.w)) - lhs.z * rhs.y;
  const float y =
      rhs.x * lhs.z + ((lhs.w * rhs.y - lhs.x * rhs.z) + lhs.y * rhs.w);
  const float z =
      ((lhs.x * rhs.y + lhs.w * rhs.z) - lhs.y * rhs.x) + lhs.z * rhs.w;
  const float w =
      ((lhs.w * rhs.w - lhs.x * rhs.x) - lhs.y * rhs.y) - lhs.z * rhs.z;
  return {x, y, z, w};
}

#ifdef MGC_EIS_BASELINE_TRACE
void traceFloatQuaternion(const char *label, std::size_t index,
                          const FloatQuaternion &value) {
  std::fprintf(stderr, "%s index=%zu q=%.9g,%.9g,%.9g,%.9g\n", label,
               index, value.x, value.y, value.z, value.w);
}

void traceFloatAxisAngle(const char *label, std::size_t index,
                         const FloatAxisAngle &value) {
  std::fprintf(stderr, "%s index=%zu axis=%.9g,%.9g,%.9g angle=%.9g\n",
               label, index, value.x, value.y, value.z, value.angle);
}
#endif

FloatQuaternion slerpFloatQuaternion(FloatQuaternion from,
                                     FloatQuaternion to,
                                     FloatQuaternion fallback, float amount) {
  from = normalizeFloatQuaternion(from);
  amount = std::min(amount, 1.0F);
  amount = std::max(amount, 0.0F);
  if (amount < 9.999999974752427e-7F) {
    return from;
  }

  to = normalizeFloatQuaternion(to);
  if (amount > 0.9999989867210388F) {
    return to;
  }

  const float cosine = floatQuaternionDot(from, to);
  const float absolute_cosine = std::abs(cosine);
  if (absolute_cosine >= 1.0000009536743164F) {
    return fallback;
  }
  if (absolute_cosine > 0.9999989867210388F) {
    // Unlike the general SLERP branch, 0x3411BA8 does not apply the sign of
    // the dot product to `to` in its near-parallel linear path.
    return normalizeFloatQuaternion(
        {from.x * (1.0F - amount) + to.x * amount,
         from.y * (1.0F - amount) + to.y * amount,
         from.z * (1.0F - amount) + to.z * amount,
         from.w * (1.0F - amount) + to.w * amount});
  }

  const float angle = ::acosf(absolute_cosine);
  const float inverse_sine = 1.0F / ::sinf(angle);
  const float from_weight = ::sinf((1.0F - amount) * angle) * inverse_sine;
  const float to_weight = inverse_sine *
                          (cosine < 0.0F ? -::sinf(amount * angle)
                                          : ::sinf(amount * angle));
  return {from.x * from_weight + to.x * to_weight,
          from.y * from_weight + to.y * to_weight,
          from.z * from_weight + to.z * to_weight,
          from.w * from_weight + to.w * to_weight};
}

FloatAxisAngle toFloatAxisAngle(const FloatQuaternion &input) {
  const FloatQuaternion value = normalizeFloatQuaternion(input);
  const float xy = value.x * value.x + value.y * value.y;
  const float vector_length = std::sqrt(xy + value.z * value.z);
  if (vector_length < 9.999999974752427e-7F) {
    return {};
  }
  const float reciprocal = 1.0F / vector_length;
  return {value.x * reciprocal, value.y * reciprocal, value.z * reciprocal,
          2.0F * ::acosf(value.w)};
}

FloatQuaternion fromFloatRotationVector(float x, float y, float z) {
  // The baseline supplies a vector angle here, but V25 expands it back into
  // axis+angle and calls 0x3411894, which normalizes the axis once more
  // before sincosf.  Preserve both float boundaries.
  const float xy = x * x + y * y;
  const float angle = std::sqrt(xy + z * z);
  if (angle < 9.999999974752427e-7F) {
    return {};
  }
  const float reciprocal = 1.0F / angle;
  const float axis_x = x * reciprocal;
  const float axis_y = y * reciprocal;
  const float axis_z = z * reciprocal;
  const float axis_xy = axis_x * axis_x + axis_y * axis_y;
  const float axis_reciprocal =
      1.0F / std::sqrt(axis_xy + axis_z * axis_z);
  float sine = 0.0F;
  float cosine = 1.0F;
#if defined(__APPLE__)
  __sincosf(angle * 0.5F, &sine, &cosine);
#else
  ::sincosf(angle * 0.5F, &sine, &cosine);
#endif
  const float scale = sine * axis_reciprocal;
  return {axis_x * scale, axis_y * scale, axis_z * scale, cosine};
}

float floatHalfAngleDistance(const FloatQuaternion &lhs,
                             const FloatQuaternion &rhs) {
  const float cosine = floatQuaternionDot(normalizeFloatQuaternion(lhs),
                                          normalizeFloatQuaternion(rhs));
  const float capped_high = cosine > 1.0F ? 1.0F : cosine;
  const float capped = capped_high < -1.0F ? -1.0F : capped_high;
  return ::acosf(std::abs(capped));
}

} // namespace

Quaternion interpolatePose(const Quaternion &from, const Quaternion &to,
                           double amount, const Quaternion &fallback) {
  return mgcSlerp(from, to, fallback, amount);
}

double quaternionHalfAngleDistance(const Quaternion &lhs,
                                   const Quaternion &rhs) {
  const double normalized_dot =
      quaternionDot(lhs.normalized(), rhs.normalized());
  return std::acos(std::abs(std::max(-1.0, std::min(normalized_dot, 1.0))));
}

Quaternion computeBaselineVirtualPose(const BaselinePoseWindow &window,
                                      const Parameters &parameters) {
  const std::size_t half_window =
      static_cast<std::size_t>(parameters.half_window_frames);
  if (window.older.size() > half_window ||
      window.future_primary.size() > half_window) {
    throw std::invalid_argument(
        "Baseline pose window exceeds the type-18 half-window");
  }
  if (!(window.nominal_to_measured_period_ratio > 0.0)) {
    throw std::invalid_argument("Frame-period ratio must be positive");
  }

  const FloatQuaternion current_selected = toFloatQuaternion(
      parameters.use_secondary_pose_stream ? window.current.secondary
                                            : window.current.primary);
  FloatQuaternion previous_selected = toFloatQuaternion(
      parameters.use_secondary_pose_stream ? window.previous.secondary
                                            : window.previous.primary);

  // 0x22D66A4..0x22D6F8C: adaptively retained selected-stream deltas.
  std::vector<FloatQuaternion> retained;
  FloatQuaternion previous_selected_delta = multiplyFloatQuaternion(
      current_selected, invertFloatQuaternion(previous_selected));
  retained.push_back(previous_selected_delta);

  // Complete primary-stream domain. The binary prepends older deltas and
  // appends future deltas before computing its float-only running mean axis.
  std::vector<FloatQuaternion> all_primary_deltas;
  FloatQuaternion previous_primary = toFloatQuaternion(window.previous.primary);
  all_primary_deltas.push_back(multiplyFloatQuaternion(
      toFloatQuaternion(window.current.primary),
      invertFloatQuaternion(previous_primary)));

  float historical_distance = 0.0F;
  const float angular_scale = static_cast<float>(parameters.domain_angular_scale);
  const float distance_budget =
      static_cast<float>(parameters.domain_distance_budget);
  for (std::size_t index = 0; index < window.older.size(); ++index) {
    const PosePair &older = window.older[index];
    const FloatQuaternion older_selected = toFloatQuaternion(
        parameters.use_secondary_pose_stream ? older.secondary : older.primary);
    const FloatQuaternion selected_delta = multiplyFloatQuaternion(
        previous_selected, invertFloatQuaternion(older_selected));
    const FloatQuaternion older_primary = toFloatQuaternion(older.primary);
    const FloatQuaternion primary_delta = multiplyFloatQuaternion(
        previous_primary, invertFloatQuaternion(older_primary));
    all_primary_deltas.insert(all_primary_deltas.begin(), primary_delta);

    historical_distance += angular_scale *
                           floatHalfAngleDistance(selected_delta,
                                                  previous_selected_delta);
    if (historical_distance + static_cast<float>(index + 1) <
        distance_budget) {
      retained.insert(retained.begin(), selected_delta);
    }
    previous_selected_delta = selected_delta;
    previous_selected = older_selected;
    previous_primary = older_primary;
  }

  previous_primary = toFloatQuaternion(window.current.primary);
  std::vector<FloatQuaternion> future_primary_deltas;
  future_primary_deltas.reserve(window.future_primary.size());
  for (const Quaternion &future_primary : window.future_primary) {
    const FloatQuaternion future = toFloatQuaternion(future_primary);
    const FloatQuaternion delta = multiplyFloatQuaternion(
        future, invertFloatQuaternion(previous_primary));
    all_primary_deltas.push_back(delta);
    future_primary_deltas.push_back(delta);
    previous_primary = future;
  }

#ifdef MGC_EIS_BASELINE_TRACE
  for (std::size_t index = 0; index < all_primary_deltas.size(); ++index) {
    traceFloatQuaternion("RECON_DOMAIN", index, all_primary_deltas[index]);
  }
#endif

  FloatQuaternion remaining_product{};
  for (const FloatQuaternion &value : all_primary_deltas) {
    remaining_product = multiplyFloatQuaternion(value, remaining_product);
  }
  FloatQuaternion remaining_mean = slerpFloatQuaternion(
      {}, remaining_product, {},
      1.0F / static_cast<float>(all_primary_deltas.size()));
  FloatAxisAngle mean_axis_angle = toFloatAxisAngle(remaining_mean);

  float future_distance = 0.0F;
  FloatQuaternion previous_projected = previous_selected_delta;

  for (std::size_t index = 0; index < future_primary_deltas.size(); ++index) {
    const FloatAxisAngle future_axis_angle =
        toFloatAxisAngle(future_primary_deltas[index]);
#ifdef MGC_EIS_BASELINE_TRACE
    traceFloatAxisAngle("RECON_MEAN_AXIS", index, mean_axis_angle);
    traceFloatAxisAngle("RECON_FUTURE_AXIS", index, future_axis_angle);
#endif
    // 0x22D6DC8..0x22D6DF0 first multiplies each mean-axis lane by the
    // dot product, then multiplies that result by the future angle.  Do not
    // fold the angle into the dot product: these are distinct float rounds
    // and the adaptive retention predicate is intentionally ULP-sensitive.
    const float projected_dot =
        future_axis_angle.x * mean_axis_angle.x +
        future_axis_angle.y * mean_axis_angle.y +
        future_axis_angle.z * mean_axis_angle.z;
    const float projected_x =
        (mean_axis_angle.x * projected_dot) * future_axis_angle.angle;
    const float projected_y =
        (mean_axis_angle.y * projected_dot) * future_axis_angle.angle;
    const float projected_z =
        (mean_axis_angle.z * projected_dot) * future_axis_angle.angle;
    const FloatQuaternion projected = fromFloatRotationVector(
        projected_x, projected_y, projected_z);

#ifdef MGC_EIS_BASELINE_TRACE
    traceFloatQuaternion("RECON_PROJECTED", index, projected);
#endif

    if (index > 0) {
      future_distance += angular_scale *
                         floatHalfAngleDistance(projected, previous_projected);
      if (future_distance + static_cast<float>(index) < distance_budget) {
        retained.push_back(previous_projected);
      }

      // 0x22D6D2C indexes the complete domain by the future-loop index,
      // right-multiplies its inverse into the running product, then rebuilds
      // the remaining mean axis using count - index.
      remaining_product = multiplyFloatQuaternion(
          remaining_product, invertFloatQuaternion(all_primary_deltas[index]));
      const float remaining_count =
          static_cast<float>(all_primary_deltas.size() - index);
      remaining_mean = slerpFloatQuaternion(
          {}, remaining_product, {}, 1.0F / remaining_count);
      mean_axis_angle = toFloatAxisAngle(remaining_mean);
    }
    previous_projected = projected;
  }

  FloatQuaternion retained_product{};
#ifdef MGC_EIS_BASELINE_TRACE
  for (std::size_t index = 0; index < retained.size(); ++index) {
    traceFloatQuaternion("RECON_RETAINED", index, retained[index]);
  }
#endif
  for (const FloatQuaternion &value : retained) {
    retained_product = multiplyFloatQuaternion(value, retained_product);
  }
  const float output_denominator =
      static_cast<float>(window.nominal_to_measured_period_ratio) *
      static_cast<float>(retained.size());
  return toQuaternion(slerpFloatQuaternion(
      {}, retained_product, {}, 1.0F / output_denominator));
}

std::vector<double> makeSymmetricHalfGaussian(int half_window_frames,
                                              double sigma) {
  if (half_window_frames < 0) {
    throw std::invalid_argument("Gaussian half-window must be non-negative");
  }
  if (!(sigma > 0.0)) {
    throw std::invalid_argument("Gaussian sigma must be positive");
  }

  std::vector<double> result(
      static_cast<std::size_t>(half_window_frames + 1));
  const double denominator = 2.0 * sigma * sigma;
  double symmetric_sum = 0.0;
  for (int distance = 0; distance <= half_window_frames; ++distance) {
    const double unnormalized =
        std::exp(-static_cast<double>(distance * distance) / denominator);
    result[static_cast<std::size_t>(distance)] = unnormalized;
    symmetric_sum += distance == 0 ? unnormalized : 2.0 * unnormalized;
  }
  for (double &weight : result) {
    weight /= symmetric_sum;
  }
  return result;
}

PoseCandidates accumulatePoseCandidates(
    const std::vector<Quaternion> &poses,
    const Quaternion &reference_orientation, const Parameters &parameters) {
  const int half_window = parameters.half_window_frames;
  const std::size_t expected_size =
      static_cast<std::size_t>(2 * half_window + 1);
  if (poses.size() != expected_size) {
    throw std::invalid_argument("Pose window must contain exactly 2*N+1 poses");
  }

  const std::vector<double> wide_weights =
      makeSymmetricHalfGaussian(half_window, parameters.gaussian_sigma);
  const std::vector<double> tight_weights =
      makeSymmetricHalfGaussian(half_window, 1.0);

  // 0x22BC790 reverses the positive half of the sigma-1 kernel and
  // renormalizes it by w[0] + sum(w[1..N]) == (1 + w[0]) / 2.
  const double future_sum =
      tight_weights.front() + (1.0 - tight_weights.front()) * 0.5;
  std::vector<double> future_weights(
      static_cast<std::size_t>(half_window + 1));
  for (int index = 0; index <= half_window; ++index) {
    future_weights[static_cast<std::size_t>(index)] =
        tight_weights[static_cast<std::size_t>(half_window - index)] /
        future_sum;
  }

  const Quaternion inverse_reference = reference_orientation.inverse();
  Quaternion wide = Quaternion::identity();
  Quaternion tight = Quaternion::identity();
  Quaternion future = Quaternion::identity();
  for (int signed_index = -half_window; signed_index <= half_window;
       ++signed_index) {
    const Quaternion relative =
        poses[static_cast<std::size_t>(signed_index + half_window)] *
        inverse_reference;
    const std::size_t distance =
        static_cast<std::size_t>(std::abs(signed_index));

    // This left-multiplication order is the one emitted at 0x22BD96C,
    // 0x22BD99C and 0x22BD9CC. It is deliberately not replaced with a
    // tangent-space average.
    wide = mgcSlerp(Quaternion::identity(), relative,
                    Quaternion::identity(), wide_weights[distance]) *
           wide;
    tight = mgcSlerp(Quaternion::identity(), relative,
                     Quaternion::identity(), tight_weights[distance]) *
            tight;
    if (signed_index >= 0) {
      const std::size_t future_index =
          static_cast<std::size_t>(signed_index);
      future = mgcSlerp(Quaternion::identity(), relative,
                        Quaternion::identity(),
                        future_weights[future_index]) *
               future;
    }
  }

  return {
      (wide * reference_orientation).normalized(),
      (tight * reference_orientation).normalized(),
      (future * reference_orientation).normalized(),
  };
}

double normalizeProtrusionScore(double raw_score,
                                const Parameters &parameters) {
  const double non_negative = std::max(raw_score, 0.0);
  const double normalized =
      std::pow(non_negative / parameters.protrusion_score_divisor,
               parameters.protrusion_score_exponent);
  return std::min(normalized, 1.0);
}

double meanNormalizedProtrusionScore(const std::vector<double> &raw_scores,
                                     const Parameters &parameters) {
  if (raw_scores.empty()) {
    return 0.0;
  }
  double sum = 0.0;
  for (const double raw_score : raw_scores) {
    sum += normalizeProtrusionScore(raw_score, parameters);
  }
  return sum / static_cast<double>(raw_scores.size());
}

double signedPointProtrusion(const ProtrusionRect &allowed,
                             const Vec2 &point) {
  if (!(allowed.left < allowed.right) || !(allowed.top < allowed.bottom)) {
    throw std::invalid_argument("Protrusion rectangle must have positive area");
  }

  const double beyond_left = allowed.left - point.x;
  const double beyond_right = point.x - allowed.right;
  const double beyond_top = allowed.top - point.y;
  const double beyond_bottom = point.y - allowed.bottom;
  const double outside_x = std::max({beyond_left, beyond_right, 0.0});
  const double outside_y = std::max({beyond_top, beyond_bottom, 0.0});
  if (outside_x > 0.0 || outside_y > 0.0) {
    return std::hypot(outside_x, outside_y);
  }
  return std::max(
      {beyond_left, beyond_right, beyond_top, beyond_bottom});
}

double maximumBoundaryProtrusion(const ProtrusionRect &allowed,
                                 const std::vector<Vec2> &boundary_points) {
  double maximum = -1.0;
  for (const Vec2 &point : boundary_points) {
    maximum = std::max(maximum, signedPointProtrusion(allowed, point));
  }
  return maximum;
}

int effectiveFutureIndex(double gyro_activity_signal, int score_count,
                         const Parameters &parameters) {
  if (score_count <= 0) {
    return -1;
  }
  // ARM64 FCVTAS matches std::lround for finite values: nearest integer with
  // halfway cases rounded away from zero.
  const long selected = std::lround(
      gyro_activity_signal * (3.0 - parameters.half_window_frames) +
      parameters.half_window_frames);
  return std::min(score_count - 1, static_cast<int>(selected));
}

bool shouldProbeFutureFullGrid(double current_raw_score,
                              double next_raw_score) {
  return next_raw_score >= Parameters::kFutureScoreThreshold &&
         next_raw_score - current_raw_score >=
             Parameters::kFutureScoreDeltaThreshold;
}

double combineSpatialPressure(double motion_blend,
                              double current_full_grid_score,
                              double mean_two_row_score) {
  const double weighted_future =
      std::cos(motion_blend * kPi * 0.5) * mean_two_row_score;
  return std::min(std::max(current_full_grid_score, weighted_future), 1.0);
}

GyroActivityMetrics computeGyroActivityMetrics(
    const std::vector<Vec3> &rotation_vectors,
    const Parameters &parameters) {
  constexpr double kActivityEpsilon = 9.999999974752427e-7;
  GyroActivityMetrics result;
  if (rotation_vectors.empty()) {
    return result;
  }

  Vec3 squared_sum;
  for (const Vec3 &value : rotation_vectors) {
    result.mean += value;
    squared_sum.x += value.x * value.x;
    squared_sum.y += value.y * value.y;
    squared_sum.z += value.z * value.z;
  }
  const double count = static_cast<double>(rotation_vectors.size());
  result.mean = result.mean / count;
  result.standard_deviation = {
      std::sqrt(std::max(squared_sum.x / count -
                             result.mean.x * result.mean.x,
                         0.0)),
      std::sqrt(std::max(squared_sum.y / count -
                             result.mean.y * result.mean.y,
                         0.0)),
      std::sqrt(std::max(squared_sum.z / count -
                             result.mean.z * result.mean.z,
                         0.0)),
  };

  const double standard_deviation_sum = result.standard_deviation.x +
                                        result.standard_deviation.y +
                                        result.standard_deviation.z;
  const double mean_l1 = std::abs(result.mean.x) + std::abs(result.mean.y) +
                         std::abs(result.mean.z);
  if (standard_deviation_sum < kActivityEpsilon) {
    result.motion_blend = mean_l1 > kActivityEpsilon ? 1.0 : 0.0;
  } else {
    const double ratio = mean_l1 / standard_deviation_sum;
    const double logit = parameters.motion_logistic_offset +
                         parameters.motion_logistic_scale * ratio;
    result.motion_blend = 1.0 / (std::exp(-logit) + 1.0);
  }

  const double mean_magnitude = norm(result.mean);
  if (mean_magnitude > kActivityEpsilon) {
    double alignment_sum = 0.0;
    for (const Vec3 &value : rotation_vectors) {
      const double magnitude = norm(value);
      const double divisor = magnitude > kActivityEpsilon ? magnitude : 1.0;
      const double cosine = dot(result.mean, value) /
                            (mean_magnitude * divisor);
      alignment_sum += std::max(cosine, 0.0);
    }
    result.directional_alignment =
        std::min(alignment_sum / count, 1.0);
  }
  return result;
}

EffectiveCropMarginResult updateEffectiveCropMargin(
    const EffectiveCropMarginInput &input, EffectiveCropMarginState *state) {
  if (state == nullptr) {
    throw std::invalid_argument("Effective crop-margin state is null");
  }
  if (input.filtering_method == 4 && !(input.method4_scale > 0.0)) {
    throw std::invalid_argument("Method-4 crop scale must be positive");
  }

  const double frame_scale = std::max(input.frame_scale, 1.0);
  const double unscaled_margin =
      0.5 * (1.0 - (1.0 - 2.0 * input.configured_crop_ratio) /
                       frame_scale);
  const double method_scale =
      input.filtering_method == 4 ? input.method4_scale : 1.0;
  const double current_margin =
      std::min(input.maximum_margin, unscaled_margin / method_scale);

  double filtering_margin = current_margin;
  if (input.filtering_enabled && input.frame_mode != 5) {
    if (input.frame_mode == 1) {
      if (current_margin > state->filtering_margin) {
        filtering_margin =
            state->filtering_margin * input.filter_alpha +
            current_margin * (1.0 - input.filter_alpha);
      }
    } else {
      const double filtered =
          state->filtering_margin * input.filter_alpha +
          input.configured_crop_ratio * (1.0 - input.filter_alpha);
      filtering_margin = std::min(current_margin, filtered);
    }
  }
  state->filtering_margin = filtering_margin;

  double optimization_input_margin = filtering_margin;
  if (input.frame_mode != 1) {
    const double mixed =
        (1.0 - input.secondary_mix) * filtering_margin +
        input.secondary_margin * input.secondary_mix;
    optimization_input_margin = std::min(filtering_margin, mixed);
  }

  if (input.frame_mode == 5) {
    state->optimization_margin = current_margin;
  } else {
    const bool zero_history_weight =
        input.filtering_method == 4 &&
        input.method4_zero_optimization_history_weight;
    const double history_weight =
        zero_history_weight ? 0.0 : input.filter_alpha;
    state->optimization_margin =
        state->optimization_margin * history_weight +
        optimization_input_margin * (1.0 - history_weight);
  }

  return {current_margin, state->filtering_margin, optimization_input_margin,
          state->optimization_margin};
}

TemporalPressureFilter::TemporalPressureFilter(Parameters parameters)
    : parameters_(parameters),
      release_weight_(parameters.pressure_release_initial) {}

double TemporalPressureFilter::update(double pressure) {
  double filtered = pressure;
  if (!history_.empty()) {
    const double previous = history_.back();
    if (pressure >= previous) {
      release_weight_ = parameters_.pressure_release_initial;
    } else {
      release_weight_ =
          std::max(release_weight_ - parameters_.pressure_release_step, 0.0);
      filtered = release_weight_ * previous +
                 (1.0 - release_weight_) * pressure;
    }
  }
  pushRing(&history_, filtered, parameters_.history_capacity);
  return filtered;
}

void TemporalPressureFilter::reset() {
  history_.clear();
  release_weight_ = parameters_.pressure_release_initial;
}

LowProtrusionMotionFilter::LowProtrusionMotionFilter(Parameters parameters)
    : parameters_(parameters) {}

double LowProtrusionMotionFilter::update(double current_motion_blend,
                                         double protrusion_score) {
  double filtered = current_motion_blend;
  if (parameters_.low_protrusion_threshold > protrusion_score &&
      !history_.empty() && current_motion_blend > history_.back()) {
    filtered = parameters_.motion_rise_previous_weight * history_.back() +
               (1.0 - parameters_.motion_rise_previous_weight) *
                   current_motion_blend;
  }
  pushRing(&history_, filtered, parameters_.history_capacity);
  return filtered;
}

void LowProtrusionMotionFilter::reset() { history_.clear(); }

double finalPoseBlend(double pressure, double frame_blend) {
  // V25 0x22FDF94 combines the temporal crop pressure with frame-state +132
  // before the last lookahead pose blend. The later method-4 outer crop pass
  // applies its correction directly and does not call this scalar helper.
  return 1.0 - (1.0 - pressure) * frame_blend;
}

LookaheadPoseComposer::LookaheadPoseComposer(Parameters parameters)
    : motion_filter_(parameters), pressure_filter_(parameters) {}

LookaheadCompositionResult
LookaheadPoseComposer::update(const LookaheadCompositionInput &input) {
  LookaheadCompositionResult result;

  // 0x22BDA3C takes the newest virtual-pose history entry as its first
  // endpoint, then pressure-selects the sigma-6 candidate.
  result.two_row_pose =
      mgcSlerp(input.previous_output_pose, input.candidates.wide,
               input.previous_output_pose, input.two_row_protrusion_score);

  // 0x22BDEE0: only low-protrusion upward motion changes are rate-limited.
  result.filtered_motion_blend = motion_filter_.update(
      input.current_motion_blend, input.two_row_protrusion_score);
  result.intermediate_pose = result.two_row_pose;
  if (input.preblend_tight_candidate) {
    result.intermediate_pose =
        mgcSlerp(result.intermediate_pose, input.candidates.tight,
                 result.intermediate_pose, input.tight_candidate_blend);
  }
  result.intermediate_pose =
      mgcSlerp(result.intermediate_pose, input.motion_pose,
               result.intermediate_pose, result.filtered_motion_blend);

  // 0x22BE240 receives the filtered motion blend in ARM64 S0. It is not a
  // gyro-speed signal. Rising spatial pressure is immediate; falling
  // pressure uses the asymmetric release state.
  result.spatial_pressure =
      combineSpatialPressure(result.filtered_motion_blend,
                             input.current_full_grid_pressure,
                             input.mean_future_pressure);
  result.temporal_pressure = pressure_filter_.update(result.spatial_pressure);
  result.final_blend =
      finalPoseBlend(result.temporal_pressure, input.frame_blend);
  result.output_pose =
      mgcSlerp(result.intermediate_pose, input.candidates.tight,
               result.intermediate_pose, result.final_blend);
  return result;
}

void LookaheadPoseComposer::reset() {
  motion_filter_.reset();
  pressure_filter_.reset();
}

} // namespace mgc_eis_reconstruction::type18
