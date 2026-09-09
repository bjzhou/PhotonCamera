#include "mgc_type18_gyro.hpp"

#include <algorithm>
#include <cmath>
#include <stdexcept>

namespace mgc_eis_reconstruction::type18 {
namespace {

constexpr double kVectorEpsilon = 9.999999974752427e-7;
constexpr float kSlerpEndpointEpsilon = 9.999999974752427e-7F;
constexpr float kSlerpNearParallel = 0.9999989867210388F;
constexpr float kSlerpInvalidDot = 1.0000009536743164F;

Vec3 projectedOntoAxis(const Vec3 &value, const Vec3 &axis) {
  // 0x340FEF4/0x3410200 evaluates this projection in scalar float, with the
  // first two products folded before adding z.  The delayed pose stream is
  // sensitive to this exact reduction.
  const float axis_x = static_cast<float>(axis.x);
  const float axis_y = static_cast<float>(axis.y);
  const float axis_z = static_cast<float>(axis.z);
  const float value_x = static_cast<float>(value.x);
  const float value_y = static_cast<float>(value.y);
  const float value_z = static_cast<float>(value.z);
  const float projection =
      axis_x * value_x + axis_y * value_y + axis_z * value_z;
  return {static_cast<float>(axis_x * projection),
          static_cast<float>(axis_y * projection),
          static_cast<float>(axis_z * projection)};
}

// gyro.cc stores and composes xyzw float quaternions.  The public
// reconstruction type is double precision for matrix work, so keep the
// storage-boundary conversion explicit instead of allowing the pose queue to
// silently retain higher precision than the original ring.
struct FloatQuaternion {
  float x = 0.0F;
  float y = 0.0F;
  float z = 0.0F;
  float w = 1.0F;
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
  // 0x3411D10..0x3411D28 folds x·x'+z·z' and y·y'+w·w' before
  // the final scalar add; do not replace this with an arbitrary reduction.
  const float xz = lhs.x * rhs.x + lhs.z * rhs.z;
  const float yw = lhs.y * rhs.y + lhs.w * rhs.w;
  return xz + yw;
}

FloatQuaternion normalizeFloatQuaternion(FloatQuaternion value) {
  // 0x340FDB0..0x340FDC8 squares xyzw, folds x²+z² and y²+w²
  // in parallel, then adds those lanes.  This pairing is observable in the
  // stored primary pose after the second gyro sample.
  const float xz = value.x * value.x + value.z * value.z;
  const float yw = value.y * value.y + value.w * value.w;
  const float reciprocal = 1.0F / std::sqrt(xz + yw);
  return {value.x * reciprocal, value.y * reciprocal, value.z * reciprocal,
          value.w * reciprocal};
}

FloatQuaternion multiplyFloatQuaternion(const FloatQuaternion &lhs,
                                        const FloatQuaternion &rhs) {
  // 0x3411A28 is the usual Hamilton product, but its NEON implementation
  // fixes the reduction tree.  In particular x and y are *not* evaluated as
  // a left-associated four-term expression.  These groupings are observable
  // after a long run of float-only gyro integration.
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

FloatQuaternion axisAngleToFloatQuaternion(float axis_x, float axis_y,
                                           float axis_z, float angle) {
  // 0x3411894 first renormalizes the supplied axis before calling sincosf.
  // Retaining both normalizations is essential: even an axis that was just
  // normalized by the ingress routine differs by float ULPs.
  const float xy = axis_x * axis_x + axis_y * axis_y;
  const float norm_axis = std::sqrt(xy + axis_z * axis_z);
  if (norm_axis < 9.999999974752427e-7F) {
    return {};
  }
  const float reciprocal_axis = 1.0F / norm_axis;
  const float half_angle = angle * 0.5F;
  float sine = 0.0F;
  float cosine = 1.0F;
#if defined(__APPLE__)
  // macOS exposes the paired float helper under its Darwin spelling. Bionic
  // exports sincosf, which is the original V25 call target.
  __sincosf(half_angle, &sine, &cosine);
#else
  ::sincosf(half_angle, &sine, &cosine);
#endif
  const float scale = sine * reciprocal_axis;
  return {axis_x * scale, axis_y * scale, axis_z * scale, cosine};
}

FloatQuaternion fromFloatAngularRate(const Vec3 &radians_per_second,
                                     std::int64_t delta_ns) {
  const float rate_x = static_cast<float>(radians_per_second.x);
  const float rate_y = static_cast<float>(radians_per_second.y);
  const float rate_z = static_cast<float>(radians_per_second.z);
  // 0x340FD08..0x340FD78: the rate norm is evaluated before time scaling.
  const float rate_xy = rate_x * rate_x + rate_y * rate_y;
  const float rate_norm = std::sqrt(rate_xy + rate_z * rate_z);
  const float seconds = static_cast<float>(delta_ns) * 1.0e-9F;
  if (rate_norm < 9.999999974752427e-7F) {
    return axisAngleToFloatQuaternion(1.0F, 0.0F, 0.0F, 0.0F);
  }
  const float reciprocal_rate = 1.0F / rate_norm;
  return axisAngleToFloatQuaternion(
      rate_x * reciprocal_rate, rate_y * reciprocal_rate,
      rate_z * reciprocal_rate, rate_norm * seconds);
}

FloatQuaternion querySlerpFloat(FloatQuaternion from, FloatQuaternion to,
                                 float amount) {
  from = normalizeFloatQuaternion(from);
  amount = std::max(0.0F, std::min(amount, 1.0F));
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
    return to;
  }
  if (absolute_cosine > 0.9999989867210388F) {
    return normalizeFloatQuaternion(
        {from.x * (1.0F - amount) + to.x * amount,
         from.y * (1.0F - amount) + to.y * amount,
         from.z * (1.0F - amount) + to.z * amount,
         from.w * (1.0F - amount) + to.w * amount});
  }

  // 0x3411D90..0x3411DEC calls the float Bionic entry points and forms the
  // signed `to` weight as inv_sin * signed_sin(amount * angle).  Keeping the
  // operation tree explicit matters for the sub-sample pose used by EIS.
  const float angle = ::acosf(absolute_cosine);
  const float inverse_sine = 1.0F / ::sinf(angle);
  const float signed_to_sine = cosine < 0.0F
                                    ? -::sinf(amount * angle)
                                    : ::sinf(amount * angle);
  const float to_weight = inverse_sine * signed_to_sine;
  const float from_weight =
      ::sinf((1.0F - amount) * angle) * inverse_sine;
  return {from.x * from_weight + to.x * to_weight,
          from.y * from_weight + to.y * to_weight,
          from.z * from_weight + to.z * to_weight,
          from.w * from_weight + to.w * to_weight};
}

} // namespace

GyroSample GyroStationaryDetector::gate(const GyroSample &sample) {
  // Exact constructor constants from V25 0x6BCB90/0x6B69C8:
  // mean=0.004, variance=0.001, high-rate scale=5, rate threshold=0.02,
  // window=100. The remaining threshold multiplier fields are all 1.0 in
  // this createHandle path, so the effective limits stay fixed.
  constexpr float kMeanThreshold = 0.004000000189989805f;
  constexpr float kVarianceThreshold = 0.0010000000474974513f;
  constexpr float kHighRateScale = 5.0f;
  constexpr float kRateThreshold = 0.019999999552965164f;
  constexpr std::size_t kWindowLength = 100;
  constexpr float kInverseWindow = 1.0f / 100.0f;

  const float raw_x = static_cast<float>(sample.radians_per_second.x);
  const float raw_y = static_cast<float>(sample.radians_per_second.y);
  const float raw_z = static_cast<float>(sample.radians_per_second.z);
  const float maximum_rate =
      std::max(std::abs(raw_z), std::max(std::abs(raw_y), std::abs(raw_x)));
  const float scale =
      maximum_rate <= kRateThreshold ? 1.0f : kHighRateScale;
  const StoredSample stored{raw_x * scale, raw_y * scale, raw_z * scale};

  samples_.push_back(stored);
  sum_.x += stored.x;
  sum_.y += stored.y;
  sum_.z += stored.z;
  sum_squares_.x += stored.x * stored.x;
  sum_squares_.y += stored.y * stored.y;
  sum_squares_.z += stored.z * stored.z;
  if (samples_.size() > kWindowLength) {
    const StoredSample oldest = samples_.front();
    samples_.pop_front();
    sum_.x -= oldest.x;
    sum_.y -= oldest.y;
    sum_.z -= oldest.z;
    sum_squares_.x -= oldest.x * oldest.x;
    sum_squares_.y -= oldest.y * oldest.y;
    sum_squares_.z -= oldest.z * oldest.z;
  }

  if (samples_.size() == kWindowLength) {
    const float mean_x = sum_.x * kInverseWindow;
    const float mean_y = sum_.y * kInverseWindow;
    const float mean_z = sum_.z * kInverseWindow;
    const float variance_x =
        sum_squares_.x * kInverseWindow - mean_x * mean_x;
    const float variance_y =
        sum_squares_.y * kInverseWindow - mean_y * mean_y;
    const float variance_z =
        sum_squares_.z * kInverseWindow - mean_z * mean_z;
    stationary_ = variance_x < kVarianceThreshold &&
                  variance_y < kVarianceThreshold &&
                  variance_z < kVarianceThreshold &&
                  std::abs(mean_x) < kMeanThreshold &&
                  std::abs(mean_y) < kMeanThreshold &&
                  std::abs(mean_z) < kMeanThreshold;
  }

  if (!stationary_) {
    return sample;
  }
  GyroSample gated = sample;
  gated.radians_per_second = {};
  return gated;
}

bool GyroStationaryDetector::isStationary() const { return stationary_; }

std::vector<Vec3> collectHorizonRotationVectors(
    const std::deque<GyroPoseRecord> &records, std::int64_t start_timestamp_ns,
    std::int64_t end_timestamp_ns, std::int64_t sample_period_ns) {
  std::vector<Vec3> result;
  if (start_timestamp_ns >= end_timestamp_ns || sample_period_ns < 1) {
    return result;
  }

  auto current = std::lower_bound(
      records.begin(), records.end(), start_timestamp_ns,
      [](const GyroPoseRecord &record, std::int64_t timestamp) {
        return record.timestamp_ns < timestamp;
      });
  if (current == records.end() || current->timestamp_ns >= end_timestamp_ns) {
    return result;
  }

  Quaternion previous_orientation = current->orientation;
  std::int64_t previous_timestamp_ns = current->timestamp_ns;
  ++current;
  for (; current != records.end() && current->timestamp_ns < end_timestamp_ns;
       ++current) {
    if (current->timestamp_ns - previous_timestamp_ns < sample_period_ns) {
      continue;
    }
    const Quaternion delta =
        current->orientation * previous_orientation.inverse();
    result.push_back(quaternionLog(delta));
    previous_orientation = current->orientation;
    previous_timestamp_ns = current->timestamp_ns;
  }
  return result;
}

GyroPoseQueue::GyroPoseQueue(std::int64_t decomposed_pose_delay_ns,
                             std::size_t capacity)
    : decomposed_pose_delay_ns_(decomposed_pose_delay_ns),
      capacity_(capacity) {
  if (decomposed_pose_delay_ns < 0) {
    throw std::invalid_argument("Decomposed-pose delay must be non-negative");
  }
  if (capacity == 0) {
    throw std::invalid_argument("Gyro ring capacity must be positive");
  }
}

Quaternion GyroPoseQueue::integrate(const Quaternion &previous,
                                    const Vec3 &radians_per_second,
                                    std::int64_t delta_ns) {
  const FloatQuaternion delta =
      fromFloatAngularRate(radians_per_second, delta_ns);
  const FloatQuaternion previous_float = toFloatQuaternion(previous);
  // 0x340FD98..0x340FDDC: DeltaQ * previous pose, then pairwise float
  // normalization before storing the new primary record.
  return toQuaternion(
      normalizeFloatQuaternion(multiplyFloatQuaternion(delta, previous_float)));
}

void GyroPoseQueue::pushPrimary(const GyroPoseRecord &record) {
  if (primary_records_.size() == capacity_) {
    primary_records_.pop_front();
  }
  primary_records_.push_back(record);
}

void GyroPoseQueue::pushSecondary(const GyroPoseRecord &record) {
  if (secondary_records_.size() == capacity_) {
    secondary_records_.pop_front();
  }
  secondary_records_.push_back(record);
}

const GyroPoseRecord &
GyroPoseQueue::primaryAt(std::int64_t timestamp_ns) const {
  const auto found = std::lower_bound(
      primary_records_.begin(), primary_records_.end(), timestamp_ns,
      [](const GyroPoseRecord &record, std::int64_t timestamp) {
        return record.timestamp_ns < timestamp;
      });
  if (found == primary_records_.end() || found->timestamp_ns != timestamp_ns) {
    throw std::logic_error(
        "Delayed decomposed cursor is missing from the primary gyro ring");
  }
  return *found;
}

Vec3 GyroPoseQueue::updateRunningGyroMean(
    const GyroPoseRecord &previous_record) {
  // The V25 queue stores the running sums and final mean as three float32
  // scalars (0x3410508..0x3410540 and 0x34106A4..0x34106B8).  Vec3 is a
  // double public type, so explicitly round every persisted update rather
  // than allowing a higher-precision accumulator to leak into the axis.
  const float previous_x =
      static_cast<float>(previous_record.radians_per_second.x);
  const float previous_y =
      static_cast<float>(previous_record.radians_per_second.y);
  const float previous_z =
      static_cast<float>(previous_record.radians_per_second.z);
  running_sum_.x = static_cast<float>(static_cast<float>(running_sum_.x) +
                                      previous_x);
  running_sum_.y = static_cast<float>(static_cast<float>(running_sum_.y) +
                                      previous_y);
  running_sum_.z = static_cast<float>(static_cast<float>(running_sum_.z) +
                                      previous_z);
  ++running_count_;

  if (running_oldest_timestamp_ns_ == -1) {
    running_oldest_timestamp_ns_ = previous_record.timestamp_ns;
  } else if (previous_record.timestamp_ns - running_oldest_timestamp_ns_ >=
             kRunningGyroWindowThresholdNs) {
    const auto oldest = std::lower_bound(
        primary_records_.begin(), primary_records_.end(),
        running_oldest_timestamp_ns_,
        [](const GyroPoseRecord &record, std::int64_t timestamp) {
          return record.timestamp_ns < timestamp;
        });
    if (oldest == primary_records_.end() ||
        oldest->timestamp_ns != running_oldest_timestamp_ns_) {
      throw std::logic_error(
          "Running-average cursor is missing from the primary gyro ring");
    }
    running_sum_.x = static_cast<float>(static_cast<float>(running_sum_.x) -
                                        static_cast<float>(
                                            oldest->radians_per_second.x));
    running_sum_.y = static_cast<float>(static_cast<float>(running_sum_.y) -
                                        static_cast<float>(
                                            oldest->radians_per_second.y));
    running_sum_.z = static_cast<float>(static_cast<float>(running_sum_.z) -
                                        static_cast<float>(
                                            oldest->radians_per_second.z));
    --running_count_;
    const auto next = std::next(oldest);
    running_oldest_timestamp_ns_ =
        next == primary_records_.end() ? previous_record.timestamp_ns
                                       : next->timestamp_ns;
  }

  if (running_count_ < 1) {
    running_mean_ = {};
  } else {
    const float count = static_cast<float>(running_count_);
    running_mean_ = {
        static_cast<float>(static_cast<float>(running_sum_.x) / count),
        static_cast<float>(static_cast<float>(running_sum_.y) / count),
        static_cast<float>(static_cast<float>(running_sum_.z) / count),
    };
  }
  return running_mean_;
}

bool GyroPoseQueue::push(const GyroSample &sample) {
  if (!primary_records_.empty() &&
      sample.timestamp_ns <= primary_records_.back().timestamp_ns) {
    return false;
  }

  const Vec3 float_rate{static_cast<float>(sample.radians_per_second.x),
                        static_cast<float>(sample.radians_per_second.y),
                        static_cast<float>(sample.radians_per_second.z)};

  if (primary_records_.empty()) {
    const GyroPoseRecord first{float_rate,
                               sample.timestamp_ns,
                               Quaternion::identity()};
    pushPrimary(first);
    if (decomposed_pose_delay_ns_ == 0) {
      pushSecondary(first);
    }
    return true;
  }

  const GyroPoseRecord &previous_primary = primary_records_.back();
  const std::int64_t primary_delta_ns =
      sample.timestamp_ns - previous_primary.timestamp_ns;
  const Quaternion primary_orientation =
      integrate(previous_primary.orientation, float_rate,
                primary_delta_ns);

  // 0x33BDBB4 passes the previous primary record, before the current primary
  // record is enqueued. This one-sample ordering is observable in the delayed
  // stream and must not be replaced by an average including the current rate.
  const Vec3 mean = updateRunningGyroMean(previous_primary);
  const float mean_x = static_cast<float>(mean.x);
  const float mean_y = static_cast<float>(mean.y);
  const float mean_z = static_cast<float>(mean.z);
  const float mean_magnitude =
      std::sqrt(mean_x * mean_x + mean_y * mean_y + mean_z * mean_z);
  const Vec3 dominant_axis =
      mean_magnitude > static_cast<float>(kVectorEpsilon)
          ? Vec3{static_cast<float>(mean_x / mean_magnitude),
                 static_cast<float>(mean_y / mean_magnitude),
                 static_cast<float>(mean_z / mean_magnitude)}
          : Vec3{};

  if (decomposed_pose_delay_ns_ == 0) {
    const Vec3 projected =
        projectedOntoAxis(float_rate, dominant_axis);
    const Quaternion previous_secondary = secondary_records_.back().orientation;
    const std::int64_t secondary_delta_ns =
        sample.timestamp_ns - secondary_records_.back().timestamp_ns;
    pushSecondary({projected, sample.timestamp_ns,
                   integrate(previous_secondary, projected,
                             secondary_delta_ns)});
  } else if (next_decomposed_timestamp_ns_ == -1) {
    // 0x33BDC94 seeds the delayed ring on the second gyro sample. Its rate is
    // copied verbatim and its pose is identity; the cursor is the same current
    // timestamp even though that primary record is enqueued below.
    next_decomposed_timestamp_ns_ = sample.timestamp_ns;
    pushSecondary({float_rate, sample.timestamp_ns,
                   Quaternion::identity()});
  } else {
    while (sample.timestamp_ns - next_decomposed_timestamp_ns_ >=
           decomposed_pose_delay_ns_) {
      const GyroPoseRecord &historical =
          primaryAt(next_decomposed_timestamp_ns_);
      const Vec3 projected =
          projectedOntoAxis(historical.radians_per_second, dominant_axis);
      const GyroPoseRecord &previous_secondary = secondary_records_.back();
      pushSecondary(
          {projected, historical.timestamp_ns,
           integrate(previous_secondary.orientation, projected,
                     historical.timestamp_ns -
                         previous_secondary.timestamp_ns)});

      const auto current = std::lower_bound(
          primary_records_.begin(), primary_records_.end(),
          historical.timestamp_ns,
          [](const GyroPoseRecord &record, std::int64_t timestamp) {
            return record.timestamp_ns < timestamp;
          });
      const auto next = std::next(current);
      next_decomposed_timestamp_ns_ =
          next == primary_records_.end() ? sample.timestamp_ns
                                         : next->timestamp_ns;
    }
  }

  pushPrimary(
      {float_rate, sample.timestamp_ns, primary_orientation});
  return true;
}

bool GyroPoseQueue::isTimestampCovered(std::int64_t timestamp_ns,
                                       bool require_secondary) const {
  constexpr std::int64_t kTimestampToleranceNs = 50'000'000;
  if (timestamp_ns < 0 || primary_records_.empty() ||
      primary_records_.front().timestamp_ns > timestamp_ns + kTimestampToleranceNs ||
      primary_records_.back().timestamp_ns + kTimestampToleranceNs < timestamp_ns) {
    return false;
  }
  return !require_secondary ||
         (!secondary_records_.empty() &&
          secondary_records_.front().timestamp_ns <= timestamp_ns + kTimestampToleranceNs &&
          secondary_records_.back().timestamp_ns + kTimestampToleranceNs >= timestamp_ns);
}

Quaternion GyroPoseQueue::interpolate(
    const std::deque<GyroPoseRecord> &records,
    std::int64_t timestamp_ns) {
  if (records.empty()) {
    return Quaternion::identity();
  }
  if (timestamp_ns <= records.front().timestamp_ns) {
    return records.front().orientation;
  }
  if (timestamp_ns >= records.back().timestamp_ns) {
    return records.back().orientation;
  }
  const auto upper = std::lower_bound(
      records.begin(), records.end(), timestamp_ns,
      [](const GyroPoseRecord &record, std::int64_t timestamp) {
        return record.timestamp_ns < timestamp;
      });
  if (upper == records.end()) {
    return records.back().orientation;
  }
  if (upper->timestamp_ns == timestamp_ns || upper == records.begin()) {
    return upper->orientation;
  }
  const GyroPoseRecord &lower = *std::prev(upper);
  // 0x3410A88..0x3410A94 explicitly converts both integer deltas to float
  // before division, then passes that float to the float-only gyro SLERP.
  const float amount =
      static_cast<float>(timestamp_ns - lower.timestamp_ns) /
      static_cast<float>(upper->timestamp_ns - lower.timestamp_ns);
  return toQuaternion(querySlerpFloat(toFloatQuaternion(lower.orientation),
                                      toFloatQuaternion(upper->orientation),
                                      amount));
}

bool GyroPoseQueue::query(std::int64_t timestamp_ns, Quaternion *primary,
                          Quaternion *secondary) const {
  if (primary == nullptr) {
    throw std::invalid_argument("Primary gyro pose output must not be null");
  }
  if (!isTimestampCovered(timestamp_ns, secondary != nullptr)) {
    return false;
  }
  *primary = interpolate(primary_records_, timestamp_ns);
  if (secondary != nullptr) {
    *secondary = interpolate(secondary_records_, timestamp_ns);
  }
  return true;
}

const std::deque<GyroPoseRecord> &GyroPoseQueue::primaryRecords() const {
  return primary_records_;
}

const std::deque<GyroPoseRecord> &GyroPoseQueue::secondaryRecords() const {
  return secondary_records_;
}

Vec3 GyroPoseQueue::runningGyroMean() const { return running_mean_; }

std::int64_t GyroPoseQueue::nextDecomposedTimestamp() const {
  return next_decomposed_timestamp_ns_;
}

} // namespace mgc_eis_reconstruction::type18
