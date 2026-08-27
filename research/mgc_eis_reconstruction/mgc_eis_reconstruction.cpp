#include "mgc_eis_reconstruction.hpp"

#include <algorithm>
#include <cmath>
#include <limits>
#include <stdexcept>
#include <utility>

namespace mgc_eis_reconstruction {
namespace {

constexpr double kEpsilon = 1.0e-12;
constexpr std::int64_t kVisualMatchWindowNs = 50'000'000;
constexpr std::size_t kMaximumOutputCacheSize = 120;

double clamp(double value, double minimum, double maximum) {
  return std::max(minimum, std::min(value, maximum));
}

double quaternionDot(const Quaternion &lhs, const Quaternion &rhs) {
  return lhs.w * rhs.w + lhs.x * rhs.x + lhs.y * rhs.y + lhs.z * rhs.z;
}

Quaternion negated(const Quaternion &value) {
  return {-value.w, -value.x, -value.y, -value.z};
}

Mat3 blendHomography(const Mat3 &from, const Mat3 &to, double amount) {
  Mat3 result;
  const double t = clamp(amount, 0.0, 1.0);
  for (std::size_t i = 0; i < result.v.size(); ++i) {
    result.v[i] = from.v[i] + (to.v[i] - from.v[i]) * t;
  }
  if (std::abs(result.v[8]) > kEpsilon) {
    const double scale = 1.0 / result.v[8];
    for (double &value : result.v) {
      value *= scale;
    }
  }
  return result;
}

double profileTimeConstant(const EngineConfig &config) {
  switch (config.profile) {
  case StabilizationProfile::kStandard:
    return config.standard_smoothing_time_seconds;
  case StabilizationProfile::kActive:
    return config.active_smoothing_time_seconds;
  case StabilizationProfile::kLocked:
    return config.locked_smoothing_time_seconds;
  }
  return config.standard_smoothing_time_seconds;
}

} // namespace

Vec3 Vec3::operator+(const Vec3 &rhs) const {
  return {x + rhs.x, y + rhs.y, z + rhs.z};
}

Vec3 Vec3::operator-(const Vec3 &rhs) const {
  return {x - rhs.x, y - rhs.y, z - rhs.z};
}

Vec3 Vec3::operator*(double scale) const {
  return {x * scale, y * scale, z * scale};
}

Vec3 Vec3::operator/(double scale) const {
  if (std::abs(scale) < kEpsilon) {
    throw std::domain_error("Vec3 division by zero");
  }
  return {x / scale, y / scale, z / scale};
}

Vec3 &Vec3::operator+=(const Vec3 &rhs) {
  x += rhs.x;
  y += rhs.y;
  z += rhs.z;
  return *this;
}

double dot(const Vec3 &lhs, const Vec3 &rhs) {
  return lhs.x * rhs.x + lhs.y * rhs.y + lhs.z * rhs.z;
}

double norm(const Vec3 &value) { return std::sqrt(dot(value, value)); }

Vec3 normalized(const Vec3 &value) {
  const double length = norm(value);
  return length < kEpsilon ? Vec3{} : value / length;
}

Quaternion Quaternion::identity() { return {}; }

Quaternion Quaternion::fromRotationVector(const Vec3 &radians) {
  const double angle = norm(radians);
  if (angle < 1.0e-8) {
    // sin(angle / 2) / angle, expanded around zero.
    const double scale = 0.5 - angle * angle / 48.0;
    return Quaternion{1.0 - angle * angle / 8.0, radians.x * scale,
                      radians.y * scale, radians.z * scale}
        .normalized();
  }
  const double half_angle = angle * 0.5;
  const double scale = std::sin(half_angle) / angle;
  return {std::cos(half_angle), radians.x * scale, radians.y * scale,
          radians.z * scale};
}

Quaternion Quaternion::normalized() const {
  const double length = std::sqrt(w * w + x * x + y * y + z * z);
  if (length < kEpsilon) {
    return identity();
  }
  return {w / length, x / length, y / length, z / length};
}

Quaternion Quaternion::conjugate() const { return {w, -x, -y, -z}; }

Quaternion Quaternion::inverse() const {
  const double squared_norm = w * w + x * x + y * y + z * z;
  if (squared_norm < kEpsilon) {
    throw std::domain_error("Cannot invert a zero quaternion");
  }
  const Quaternion conjugated = conjugate();
  return {conjugated.w / squared_norm, conjugated.x / squared_norm,
          conjugated.y / squared_norm, conjugated.z / squared_norm};
}

Quaternion Quaternion::operator*(const Quaternion &rhs) const {
  return {
      w * rhs.w - x * rhs.x - y * rhs.y - z * rhs.z,
      w * rhs.x + x * rhs.w + y * rhs.z - z * rhs.y,
      w * rhs.y - x * rhs.z + y * rhs.w + z * rhs.x,
      w * rhs.z + x * rhs.y - y * rhs.x + z * rhs.w,
  };
}

Quaternion slerp(Quaternion from, Quaternion to, double t) {
  from = from.normalized();
  to = to.normalized();
  t = clamp(t, 0.0, 1.0);

  double cosine = quaternionDot(from, to);
  if (cosine < 0.0) {
    to = negated(to);
    cosine = -cosine;
  }
  if (cosine > 0.9995) {
    return Quaternion{
        from.w + (to.w - from.w) * t,
        from.x + (to.x - from.x) * t,
        from.y + (to.y - from.y) * t,
        from.z + (to.z - from.z) * t,
    }
        .normalized();
  }

  const double angle = std::acos(clamp(cosine, -1.0, 1.0));
  const double sine = std::sin(angle);
  const double from_weight = std::sin((1.0 - t) * angle) / sine;
  const double to_weight = std::sin(t * angle) / sine;
  return Quaternion{
      from.w * from_weight + to.w * to_weight,
      from.x * from_weight + to.x * to_weight,
      from.y * from_weight + to.y * to_weight,
      from.z * from_weight + to.z * to_weight,
  }
      .normalized();
}

Vec3 quaternionLog(Quaternion value) {
  value = value.normalized();
  if (value.w < 0.0) {
    value = negated(value);
  }
  const double vector_length =
      std::sqrt(value.x * value.x + value.y * value.y + value.z * value.z);
  if (vector_length < 1.0e-9) {
    return {2.0 * value.x, 2.0 * value.y, 2.0 * value.z};
  }
  const double angle = 2.0 * std::atan2(vector_length, value.w);
  const double scale = angle / vector_length;
  return {value.x * scale, value.y * scale, value.z * scale};
}

Quaternion quaternionExp(const Vec3 &tangent) {
  return Quaternion::fromRotationVector(tangent);
}

Mat3 Mat3::identity() {
  return {{1.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 1.0}};
}

Mat3 Mat3::translation(double x, double y) {
  return {{1.0, 0.0, x, 0.0, 1.0, y, 0.0, 0.0, 1.0}};
}

Mat3 Mat3::cameraIntrinsics(double fx, double fy, double cx, double cy) {
  if (fx <= 0.0 || fy <= 0.0) {
    throw std::invalid_argument("Camera focal length must be positive");
  }
  return {{fx, 0.0, cx, 0.0, fy, cy, 0.0, 0.0, 1.0}};
}

Mat3 Mat3::fromQuaternion(const Quaternion &input) {
  const Quaternion q = input.normalized();
  const double xx = q.x * q.x;
  const double yy = q.y * q.y;
  const double zz = q.z * q.z;
  const double xy = q.x * q.y;
  const double xz = q.x * q.z;
  const double yz = q.y * q.z;
  const double wx = q.w * q.x;
  const double wy = q.w * q.y;
  const double wz = q.w * q.z;
  return {{
      1.0 - 2.0 * (yy + zz),
      2.0 * (xy - wz),
      2.0 * (xz + wy),
      2.0 * (xy + wz),
      1.0 - 2.0 * (xx + zz),
      2.0 * (yz - wx),
      2.0 * (xz - wy),
      2.0 * (yz + wx),
      1.0 - 2.0 * (xx + yy),
  }};
}

double &Mat3::at(int row, int column) {
  return v.at(static_cast<std::size_t>(row * 3 + column));
}

double Mat3::at(int row, int column) const {
  return v.at(static_cast<std::size_t>(row * 3 + column));
}

Mat3 Mat3::operator*(const Mat3 &rhs) const {
  Mat3 result{};
  for (int row = 0; row < 3; ++row) {
    for (int column = 0; column < 3; ++column) {
      for (int inner = 0; inner < 3; ++inner) {
        result.at(row, column) += at(row, inner) * rhs.at(inner, column);
      }
    }
  }
  return result;
}

Mat3 Mat3::inverse() const {
  const double a = v[0];
  const double b = v[1];
  const double c = v[2];
  const double d = v[3];
  const double e = v[4];
  const double f = v[5];
  const double g = v[6];
  const double h = v[7];
  const double i = v[8];
  const double determinant =
      a * (e * i - f * h) - b * (d * i - f * g) + c * (d * h - e * g);
  if (std::abs(determinant) < kEpsilon) {
    throw std::domain_error("Cannot invert a singular 3x3 matrix");
  }
  const double inverse_determinant = 1.0 / determinant;
  return {{
      (e * i - f * h) * inverse_determinant,
      (c * h - b * i) * inverse_determinant,
      (b * f - c * e) * inverse_determinant,
      (f * g - d * i) * inverse_determinant,
      (a * i - c * g) * inverse_determinant,
      (c * d - a * f) * inverse_determinant,
      (d * h - e * g) * inverse_determinant,
      (b * g - a * h) * inverse_determinant,
      (a * e - b * d) * inverse_determinant,
  }};
}

Vec2 Mat3::transformPoint(const Vec2 &point) const {
  const double denominator = at(2, 0) * point.x + at(2, 1) * point.y + at(2, 2);
  if (std::abs(denominator) < kEpsilon) {
    return {std::numeric_limits<double>::infinity(),
            std::numeric_limits<double>::infinity()};
  }
  return {
      (at(0, 0) * point.x + at(0, 1) * point.y + at(0, 2)) / denominator,
      (at(1, 0) * point.x + at(1, 1) * point.y + at(1, 2)) / denominator,
  };
}

Engine::Engine(EngineConfig config) : config_(std::move(config)) {
  if (config_.active_array_width <= 0) {
    config_.active_array_width = config_.output_width;
  }
  if (config_.active_array_height <= 0) {
    config_.active_array_height = config_.output_height;
  }
  if (config_.crop_width <= 0) {
    config_.crop_width = config_.active_array_width;
  }
  if (config_.crop_height <= 0) {
    config_.crop_height = config_.active_array_height;
  }
  if (!validateConfig()) {
    throw std::invalid_argument("Invalid EIS engine configuration");
  }
}

bool Engine::validateConfig() const {
  return config_.output_width > 0 && config_.output_height > 0 &&
         config_.active_array_width > 0 && config_.active_array_height > 0 &&
         config_.crop_width > 0 && config_.crop_height > 0 &&
         config_.num_strips > 0 && config_.lookahead_frames >= 0 &&
         config_.default_focal_length_px > 0.0 &&
         config_.stabilization_strength >= 0.0 &&
         config_.stabilization_strength <= 1.0 &&
         config_.gyro_bias_time_constant_seconds > 0.0 &&
         profileTimeConstant(config_) > 0.0;
}

void Engine::setActiveArraySize(int width, int height) {
  if (width <= 0 || height <= 0) {
    throw std::invalid_argument("Active array dimensions must be positive");
  }
  config_.active_array_width = width;
  config_.active_array_height = height;
}

void Engine::setCropWindowSize(int width, int height) {
  if (width <= 0 || height <= 0) {
    throw std::invalid_argument("Crop dimensions must be positive");
  }
  config_.crop_width = width;
  config_.crop_height = height;
}

void Engine::setStabilizationStrength(double strength) {
  if (strength < 0.0 || strength > 1.0) {
    throw std::invalid_argument(
        "Stabilization strength must be between zero and one");
  }
  config_.stabilization_strength = strength;
}

int Engine::numStrips() const { return config_.num_strips; }

int Engine::numFramesToLookAhead() const { return config_.lookahead_frames; }

bool Engine::isTripodMode() const { return tripod_mode_; }

bool Engine::pushGyro(const GyroSample &sample) {
  if (last_gyro_ && sample.timestamp_ns <= last_gyro_->timestamp_ns) {
    return false;
  }
  if (!last_gyro_) {
    last_gyro_ = sample;
    poses_.push_back({sample.timestamp_ns, integrated_orientation_,
                      sample.radians_per_second});
    updateTripodState(sample);
    return true;
  }

  const double dt =
      static_cast<double>(sample.timestamp_ns - last_gyro_->timestamp_ns) *
      kNsToSeconds;
  if (!(dt > 0.0) || dt > 1.0) {
    // A one-second gap is treated as a discontinuity instead of being
    // integrated into a catastrophic pose jump.
    last_gyro_ = sample;
    poses_.push_back({sample.timestamp_ns, integrated_orientation_,
                      sample.radians_per_second - gyro_bias_});
    still_since_ns_.reset();
    tripod_mode_ = false;
    return false;
  }

  const double raw_speed = norm(sample.radians_per_second);
  if (raw_speed < config_.tripod_gyro_threshold_rad_s * 4.0) {
    const double bias_alpha =
        1.0 - std::exp(-dt / config_.gyro_bias_time_constant_seconds);
    gyro_bias_ += (sample.radians_per_second - gyro_bias_) * bias_alpha;
  }

  const Vec3 previous_rate = last_gyro_->radians_per_second - gyro_bias_;
  const Vec3 current_rate = sample.radians_per_second - gyro_bias_;
  const Vec3 midpoint_rate = (previous_rate + current_rate) * 0.5;
  integrated_orientation_ = (integrated_orientation_ *
                             Quaternion::fromRotationVector(midpoint_rate * dt))
                                .normalized();
  poses_.push_back(
      {sample.timestamp_ns, integrated_orientation_, current_rate});
  last_gyro_ = sample;
  updateTripodState(sample);
  return true;
}

void Engine::updateTripodState(const GyroSample &sample) {
  const double speed = norm(sample.radians_per_second - gyro_bias_);
  if (speed <= config_.tripod_gyro_threshold_rad_s) {
    if (!still_since_ns_) {
      still_since_ns_ = sample.timestamp_ns;
    }
    const double still_seconds =
        static_cast<double>(sample.timestamp_ns - *still_since_ns_) *
        kNsToSeconds;
    tripod_mode_ = still_seconds >= config_.tripod_hold_seconds;
  } else {
    still_since_ns_.reset();
    tripod_mode_ = false;
  }
}

bool Engine::pushLensOffset(const LensOffsetSample &sample) {
  if (!lens_offsets_.empty() &&
      sample.timestamp_ns <= lens_offsets_.back().timestamp_ns) {
    return false;
  }
  lens_offsets_.push_back(sample);
  return true;
}

void Engine::pushVisualMotion(const VisualMotion &motion) {
  if (motion.confidence <= 0.0) {
    return;
  }
  if (!visual_motions_.empty() &&
      motion.timestamp_ns <= visual_motions_.back().timestamp_ns) {
    throw std::invalid_argument("Visual motion timestamps must be monotonic");
  }
  VisualMotion clamped_motion = motion;
  clamped_motion.confidence = clamp(motion.confidence, 0.0, 1.0);
  visual_motions_.push_back(clamped_motion);
}

Quaternion Engine::orientationAt(std::int64_t timestamp_ns) const {
  if (poses_.empty()) {
    return Quaternion::identity();
  }
  if (timestamp_ns <= poses_.front().timestamp_ns) {
    return poses_.front().orientation;
  }
  if (timestamp_ns >= poses_.back().timestamp_ns) {
    return poses_.back().orientation;
  }
  const auto upper =
      std::lower_bound(poses_.begin(), poses_.end(), timestamp_ns,
                       [](const PoseSample &pose, std::int64_t timestamp) {
                         return pose.timestamp_ns < timestamp;
                       });
  const auto lower = std::prev(upper);
  const double span =
      static_cast<double>(upper->timestamp_ns - lower->timestamp_ns);
  const double amount =
      static_cast<double>(timestamp_ns - lower->timestamp_ns) / span;
  return slerp(lower->orientation, upper->orientation, amount);
}

Vec3 Engine::angularVelocityAt(std::int64_t timestamp_ns) const {
  if (poses_.empty()) {
    return {};
  }
  const auto nearest =
      std::lower_bound(poses_.begin(), poses_.end(), timestamp_ns,
                       [](const PoseSample &pose, std::int64_t timestamp) {
                         return pose.timestamp_ns < timestamp;
                       });
  if (nearest == poses_.begin()) {
    return nearest->filtered_gyro;
  }
  if (nearest == poses_.end()) {
    return poses_.back().filtered_gyro;
  }
  const auto previous = std::prev(nearest);
  return timestamp_ns - previous->timestamp_ns <
                 nearest->timestamp_ns - timestamp_ns
             ? previous->filtered_gyro
             : nearest->filtered_gyro;
}

Vec2 Engine::lensOffsetAt(std::int64_t timestamp_ns, int camera_index) const {
  const LensOffsetSample *before = nullptr;
  const LensOffsetSample *after = nullptr;
  for (const LensOffsetSample &sample : lens_offsets_) {
    if (sample.camera_index != camera_index) {
      continue;
    }
    if (sample.timestamp_ns <= timestamp_ns) {
      before = &sample;
    }
    if (sample.timestamp_ns >= timestamp_ns) {
      after = &sample;
      break;
    }
  }
  if (!before && !after) {
    return {};
  }
  if (!before) {
    return after->offset;
  }
  if (!after || before->timestamp_ns == after->timestamp_ns) {
    return before->offset;
  }
  const double amount =
      static_cast<double>(timestamp_ns - before->timestamp_ns) /
      static_cast<double>(after->timestamp_ns - before->timestamp_ns);
  return {
      before->offset.x + (after->offset.x - before->offset.x) * amount,
      before->offset.y + (after->offset.y - before->offset.y) * amount,
  };
}

Quaternion Engine::smoothedOrientation(std::size_t pending_index,
                                       const PendingFrame &frame) const {
  const Quaternion reference = frame.center_orientation;
  Vec3 weighted_tangent{};
  double total_weight = 0.0;
  const double sigma = std::max(config_.lookahead_sigma_frames, 0.5);

  for (std::size_t i = pending_index; i < pending_frames_.size(); ++i) {
    const double distance = static_cast<double>(i - pending_index);
    if (distance > static_cast<double>(config_.lookahead_frames + 1)) {
      break;
    }
    const double weight =
        std::exp(-0.5 * distance * distance / (sigma * sigma));
    Quaternion relative =
        reference.inverse() * pending_frames_[i].center_orientation;
    if (relative.w < 0.0) {
      relative = negated(relative);
    }
    weighted_tangent += quaternionLog(relative) * weight;
    total_weight += weight;
  }
  if (total_weight < kEpsilon) {
    return reference;
  }
  return (reference * quaternionExp(weighted_tangent / total_weight))
      .normalized();
}

std::optional<StabilizedFrame>
Engine::processFrame(const FrameMetadata &frame) {
  if (!pending_frames_.empty() &&
      frame.frame_timestamp_ns <=
          pending_frames_.back().metadata.frame_timestamp_ns) {
    throw std::invalid_argument("Frame timestamps must be monotonic");
  }

  const std::int64_t last_strip_time =
      frame.frame_timestamp_ns + frame.rolling_shutter_skew_ns / 2;
  if (!poses_.empty() && poses_.back().timestamp_ns < last_strip_time) {
    // MGC's Java scheduler normally prevents this call until gyro/OIS and
    // metadata have crossed the next frame boundary.
    return std::nullopt;
  }

  PendingFrame pending;
  pending.metadata = frame;
  pending.center_orientation = orientationAt(frame.frame_timestamp_ns);
  pending.center_lens_offset =
      lensOffsetAt(frame.frame_timestamp_ns, frame.camera_index);
  pending_frames_.push_back(pending);

  if (pending_frames_.size() <=
      static_cast<std::size_t>(config_.lookahead_frames)) {
    return std::nullopt;
  }

  StabilizedFrame result = stabilizePending(0);
  pending_frames_.pop_front();
  cacheOutput(result);
  const std::int64_t keep_from =
      pending_frames_.empty()
          ? result.timestamp_ns - 1'000'000'000
          : pending_frames_.front().metadata.frame_timestamp_ns - 1'000'000'000;
  pruneSensorHistory(keep_from);
  return result;
}

StabilizedFrame Engine::stabilizePending(std::size_t pending_index) {
  const PendingFrame &pending = pending_frames_.at(pending_index);
  const FrameMetadata &frame = pending.metadata;
  const Quaternion lookahead_target =
      smoothedOrientation(pending_index, pending);

  Quaternion virtual_orientation = pending.center_orientation;
  if (!virtual_orientation_) {
    virtual_orientation_ = pending.center_orientation;
    virtual_orientation_timestamp_ns_ = frame.frame_timestamp_ns;
  } else {
    const double dt =
        std::max(0.0, static_cast<double>(frame.frame_timestamp_ns -
                                          *virtual_orientation_timestamp_ns_) *
                          kNsToSeconds);
    const double time_constant = profileTimeConstant(config_);
    double alpha = 1.0 - std::exp(-dt / time_constant);

    // Locked mode holds the virtual camera while the gyro classifier says
    // the device is stationary. This mirrors the native library's exposed
    // tripod state structurally; the exact transition constants are not
    // recoverable.
    if (config_.profile == StabilizationProfile::kLocked && tripod_mode_) {
      alpha = 0.0;
    }
    virtual_orientation_ =
        slerp(*virtual_orientation_, lookahead_target, alpha);
    virtual_orientation_timestamp_ns_ = frame.frame_timestamp_ns;
  }
  virtual_orientation = *virtual_orientation_;

  double safe_strength = config_.stabilization_strength;
  for (int strip = 0; strip < config_.num_strips; ++strip) {
    const double row_fraction = (static_cast<double>(strip) + 0.5) /
                                static_cast<double>(config_.num_strips);
    const std::int64_t strip_timestamp =
        frame.frame_timestamp_ns - frame.rolling_shutter_skew_ns / 2 +
        static_cast<std::int64_t>(row_fraction * frame.rolling_shutter_skew_ns);
    safe_strength = std::min(
        safe_strength,
        constrainStrength(
            frame, orientationAt(strip_timestamp), virtual_orientation,
            lensOffsetAt(strip_timestamp, frame.camera_index), safe_strength));
  }

  StabilizedFrame output;
  output.timestamp_ns = frame.frame_timestamp_ns;
  output.tripod_mode = tripod_mode_;
  output.applied_strength = safe_strength;
  output.strip_output_to_input.reserve(
      static_cast<std::size_t>(config_.num_strips));

  for (int strip = 0; strip < config_.num_strips; ++strip) {
    const double row_fraction = (static_cast<double>(strip) + 0.5) /
                                static_cast<double>(config_.num_strips);
    const std::int64_t strip_timestamp =
        frame.frame_timestamp_ns - frame.rolling_shutter_skew_ns / 2 +
        static_cast<std::int64_t>(row_fraction * frame.rolling_shutter_skew_ns);
    output.strip_output_to_input.push_back(makeStripWarp(
        frame, orientationAt(strip_timestamp), virtual_orientation,
        lensOffsetAt(strip_timestamp, frame.camera_index), safe_strength));
  }
  return output;
}

Mat3 Engine::makeStripWarp(const FrameMetadata &frame,
                           const Quaternion &actual_orientation,
                           const Quaternion &virtual_orientation,
                           const Vec2 &lens_offset, double strength) const {
  strength = clamp(strength, 0.0, 1.0);
  const Quaternion applied_virtual =
      slerp(actual_orientation, virtual_orientation, strength);
  // A ray rendered by the virtual camera is sampled in the actual camera:
  // ray_actual = R_actual * inverse(R_virtual) * ray_virtual.
  const Quaternion correction =
      (actual_orientation * applied_virtual.inverse()).normalized();

  const double focal = frame.focal_length_px > 0.0
                           ? frame.focal_length_px
                           : config_.default_focal_length_px;
  const Mat3 output_intrinsics =
      Mat3::cameraIntrinsics(focal, focal, (config_.output_width - 1) * 0.5,
                             (config_.output_height - 1) * 0.5);
  const Mat3 input_intrinsics =
      Mat3::cameraIntrinsics(focal, focal, (config_.crop_width - 1) * 0.5,
                             (config_.crop_height - 1) * 0.5);
  const Mat3 gyro_warp = input_intrinsics * Mat3::fromQuaternion(correction) *
                         output_intrinsics.inverse();

  const double lens_x =
      lens_offset.x * config_.ois_pixels_per_unit_x * strength;
  const double lens_y =
      lens_offset.y * config_.ois_pixels_per_unit_y * strength;
  Mat3 result = Mat3::translation(lens_x, lens_y) * gyro_warp;

  // The current MGC Java call passes a null image buffer, so this branch is
  // dormant for that observed path. It models the library's optional
  // KLT/RegionFlow motion estimate when an external estimate is supplied.
  const VisualMotion *closest = nullptr;
  std::int64_t closest_distance = kVisualMatchWindowNs + 1;
  for (const VisualMotion &visual : visual_motions_) {
    const std::int64_t distance =
        std::llabs(visual.timestamp_ns - frame.frame_timestamp_ns);
    if (distance < closest_distance) {
      closest = &visual;
      closest_distance = distance;
    }
  }
  if (closest && closest_distance <= kVisualMatchWindowNs) {
    // Gyro remains the prior; visual motion contributes only according to
    // its robust-estimator confidence.
    result = blendHomography(result, closest->output_to_input * result,
                             closest->confidence * strength);
  }
  return result;
}

bool Engine::warpFitsCrop(const Mat3 &transform) const {
  const double maximum_x = static_cast<double>(config_.crop_width - 1) -
                           config_.safety_margin_pixels;
  const double maximum_y = static_cast<double>(config_.crop_height - 1) -
                           config_.safety_margin_pixels;
  const double minimum = config_.safety_margin_pixels;
  const std::array<Vec2, 8> boundary_points{{
      {0.0, 0.0},
      {static_cast<double>(config_.output_width - 1), 0.0},
      {0.0, static_cast<double>(config_.output_height - 1)},
      {static_cast<double>(config_.output_width - 1),
       static_cast<double>(config_.output_height - 1)},
      {(config_.output_width - 1) * 0.5, 0.0},
      {(config_.output_width - 1) * 0.5,
       static_cast<double>(config_.output_height - 1)},
      {0.0, (config_.output_height - 1) * 0.5},
      {static_cast<double>(config_.output_width - 1),
       (config_.output_height - 1) * 0.5},
  }};
  for (const Vec2 &point : boundary_points) {
    const Vec2 warped = transform.transformPoint(point);
    if (!std::isfinite(warped.x) || !std::isfinite(warped.y) ||
        warped.x < minimum || warped.y < minimum || warped.x > maximum_x ||
        warped.y > maximum_y) {
      return false;
    }
  }
  return true;
}

double Engine::constrainStrength(const FrameMetadata &frame,
                                 const Quaternion &actual_orientation,
                                 const Quaternion &virtual_orientation,
                                 const Vec2 &lens_offset,
                                 double requested_strength) const {
  double low = 0.0;
  double high = clamp(requested_strength, 0.0, 1.0);
  if (warpFitsCrop(makeStripWarp(frame, actual_orientation, virtual_orientation,
                                 lens_offset, high))) {
    return high;
  }
  if (!warpFitsCrop(makeStripWarp(frame, actual_orientation,
                                  virtual_orientation, lens_offset, 0.0))) {
    // No stabilizing correction can fix invalid base geometry. Returning
    // zero exposes the configuration problem without inventing a fallback
    // transform.
    return 0.0;
  }
  for (int iteration = 0; iteration < 24; ++iteration) {
    const double middle = (low + high) * 0.5;
    if (warpFitsCrop(makeStripWarp(frame, actual_orientation,
                                   virtual_orientation, lens_offset, middle))) {
      low = middle;
    } else {
      high = middle;
    }
  }
  return low;
}

std::vector<StabilizedFrame> Engine::flush() {
  std::vector<StabilizedFrame> outputs;
  while (!pending_frames_.empty()) {
    StabilizedFrame output = stabilizePending(0);
    pending_frames_.pop_front();
    cacheOutput(output);
    outputs.push_back(std::move(output));
  }
  return outputs;
}

bool Engine::getTransformBetweenFrames(
    std::int64_t from_timestamp_ns, std::int64_t to_timestamp_ns,
    std::vector<Mat3> *strip_transforms) const {
  if (!strip_transforms) {
    throw std::invalid_argument("strip_transforms must not be null");
  }
  const OutputCacheEntry *from = nullptr;
  const OutputCacheEntry *to = nullptr;
  for (const OutputCacheEntry &entry : output_cache_) {
    if (entry.timestamp_ns == from_timestamp_ns) {
      from = &entry;
    }
    if (entry.timestamp_ns == to_timestamp_ns) {
      to = &entry;
    }
  }
  if (!from || !to || from->transforms.size() != to->transforms.size()) {
    return false;
  }
  strip_transforms->clear();
  strip_transforms->reserve(from->transforms.size());
  for (std::size_t i = 0; i < from->transforms.size(); ++i) {
    strip_transforms->push_back(to->transforms[i].inverse() *
                                from->transforms[i]);
  }
  return true;
}

void Engine::cacheOutput(const StabilizedFrame &frame) {
  output_cache_.push_back({frame.timestamp_ns, frame.strip_output_to_input});
  while (output_cache_.size() > kMaximumOutputCacheSize) {
    output_cache_.pop_front();
  }
}

void Engine::pruneSensorHistory(std::int64_t oldest_needed_timestamp_ns) {
  while (poses_.size() > 2 &&
         poses_[1].timestamp_ns < oldest_needed_timestamp_ns) {
    poses_.pop_front();
  }
  while (lens_offsets_.size() > 2 &&
         lens_offsets_[1].timestamp_ns < oldest_needed_timestamp_ns) {
    lens_offsets_.pop_front();
  }
  while (!visual_motions_.empty() &&
         visual_motions_.front().timestamp_ns < oldest_needed_timestamp_ns) {
    visual_motions_.pop_front();
  }
}

std::string confidenceNotice() {
  return "Confirmed ABI/dataflow reconstruction plus clean-room mathematics; "
         "not bit-exact original MGC source. Device calibration, filter "
         "coefficients, crop optimizer and UI-mode/native-profile mapping "
         "remain proprietary/unknown.";
}

} // namespace mgc_eis_reconstruction
