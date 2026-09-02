#pragma once

#include <array>
#include <cstdint>
#include <deque>
#include <optional>
#include <memory>
#include <string>
#include <vector>

namespace mgc_eis_reconstruction {

// Clean-room structural reconstruction of the sensor-driven path exposed by
// EisNative. It is intentionally not presented as Google's original source.

constexpr double kNsToSeconds = 1.0e-9;

struct Vec2 {
  double x = 0.0;
  double y = 0.0;
};

struct Vec3 {
  double x = 0.0;
  double y = 0.0;
  double z = 0.0;

  Vec3 operator+(const Vec3 &rhs) const;
  Vec3 operator-(const Vec3 &rhs) const;
  Vec3 operator*(double scale) const;
  Vec3 operator/(double scale) const;
  Vec3 &operator+=(const Vec3 &rhs);
};

double dot(const Vec3 &lhs, const Vec3 &rhs);
double norm(const Vec3 &value);
Vec3 normalized(const Vec3 &value);

struct Quaternion {
  double w = 1.0;
  double x = 0.0;
  double y = 0.0;
  double z = 0.0;

  static Quaternion identity();
  static Quaternion fromRotationVector(const Vec3 &radians);

  Quaternion normalized() const;
  Quaternion conjugate() const;
  Quaternion inverse() const;
  Quaternion operator*(const Quaternion &rhs) const;
};

Quaternion slerp(Quaternion from, Quaternion to, double t);
Vec3 quaternionLog(Quaternion value);
Quaternion quaternionExp(const Vec3 &tangent);

// Row-major 3x3 matrix. Production output follows MGC's iha contract:
// output_clip ~ H * input_clip.
struct Mat3 {
  std::array<double, 9> v{};

  static Mat3 identity();
  static Mat3 translation(double x, double y);
  static Mat3 cameraIntrinsics(double fx, double fy, double cx, double cy);
  static Mat3 fromQuaternion(const Quaternion &q);

  double &at(int row, int column);
  double at(int row, int column) const;
  Mat3 operator*(const Mat3 &rhs) const;
  Mat3 inverse() const;
  Vec2 transformPoint(const Vec2 &point) const;
};

struct GyroSample {
  std::int64_t timestamp_ns = 0;
  // Android device-coordinate angular velocity in radians/second, after the
  // same sensor-orientation remap performed by MGC's htd Java feeder.
  Vec3 radians_per_second;
};

struct LensOffsetSample {
  std::int64_t timestamp_ns = 0;
  // Optical-axis displacement in pre-correction active-array pixels.
  Vec2 offset;
  int camera_index = 0;
};

struct LensIntrinsicsSample {
  std::int64_t timestamp_ns = 0;
  // Camera2 order: fx, fy, cx, cy, skew, in pre-correction active-array
  // pixels. These samples already include OIS, focus and optical-zoom motion;
  // they must never be combined with LensOffsetSample for the same row.
  std::array<double, 5> intrinsics{};
  int camera_index = 0;
};

struct FrameMetadata {
  // Assigned by Engine on submission. MGC keeps the same monotonic frame id
  // at metadata +72 and records it when projected motion forms a local peak.
  std::int64_t sequence_id = 0;
  // Camera2 SENSOR_TIMESTAMP of the exact source buffer. This is distinct
  // from frame_timestamp_ns, which is the first-row centre timestamp consumed
  // by the EIS math. The delayed engine must return this ownership key with
  // its output so a seven-frame look-ahead transform can never be applied to
  // the current buffer.
  std::int64_t source_timestamp_ns = 0;
  std::int64_t frame_timestamp_ns = 0;
  std::int64_t exposure_time_ns = 0;
  std::int64_t rolling_shutter_skew_ns = 0;
  int camera_index = 0;
  bool half_resolution_sensor_mode = false;

  // Full horizontal field scale used by MGC's JNI call:
  // crop_width / active_width * physical_sensor_width / focal_length.
  double inverse_focal_length = 0.0;

  // Static CameraCharacteristics intrinsic calibration used as the nominal
  // optical state. Dynamic API-35 samples are converted to deltas from this
  // state before being applied to the output projection.
  std::array<double, 5> nominal_lens_intrinsics{};
  bool has_nominal_lens_intrinsics = false;
  int active_array_width = 0;
  int active_array_height = 0;
  int crop_width = 0;
  int crop_height = 0;
  int pre_correction_active_array_width = 0;
  int pre_correction_active_array_height = 0;
};

struct EngineConfig {
  // MGC V25 profile 7 fixes the strip/look-ahead parameters below. The
  // reconstruction also retains profile 18 only for differential research.
  // Method 4 consumes strength in the packed lookahead frame state; its outer
  // full-grid feasibility correction is applied directly.
  int output_width = 1920;
  int output_height = 1080;
  int active_array_width = 0;
  int active_array_height = 0;
  int crop_width = 0;
  int crop_height = 0;

  int num_strips = 12;
  int lookahead_frames = 10;
  double stabilization_strength = 1.0;
};

struct StabilizedFrame {
  std::int64_t timestamp_ns = 0;
  // Ownership key copied from the buffered FrameMetadata, not derived from
  // timestamp_ns. The latter is on the EIS first-row time axis.
  std::int64_t source_timestamp_ns = 0;
  std::vector<Mat3> strip_input_to_output;
  bool tripod_mode = false;
  double applied_strength = 0.0;
  // Internal trace values from the same output frame. They are not part of
  // the Java ABI; the JNI wrapper uses them to isolate gyro integration,
  // virtual-pose filtering and matrix adaptation on one timestamp axis.
  Quaternion diagnostic_measured_pose = Quaternion::identity();
  Quaternion diagnostic_secondary_measured_pose = Quaternion::identity();
  Quaternion diagnostic_virtual_pose = Quaternion::identity();
  Quaternion diagnostic_baseline_increment = Quaternion::identity();
  Quaternion diagnostic_motion_pose = Quaternion::identity();
  Quaternion diagnostic_wide_pose = Quaternion::identity();
  Quaternion diagnostic_tight_pose = Quaternion::identity();
  Quaternion diagnostic_intermediate_pose = Quaternion::identity();
  Vec3 diagnostic_horizon_mean_rotation{};
  Vec3 diagnostic_horizon_rotation_stddev{};
  double diagnostic_horizon_directional_alignment = 0.0;
  double diagnostic_horizon_logistic_motion_blend = 0.0;
  int diagnostic_future_horizon_index = -1;
  double diagnostic_future_horizon_alignment = 0.0;
  double diagnostic_future_horizon_pressure = 0.0;
  double diagnostic_current_motion_blend = 0.0;
  double diagnostic_filtered_motion_blend = 0.0;
  Vec2 diagnostic_projected_motion{};
  double diagnostic_projected_candidate_requested = 0.0;
  double diagnostic_projected_candidate_capped = 0.0;
  double diagnostic_projected_candidate_history_gain = 0.0;
  double diagnostic_tight_candidate_blend = 0.0;
  std::vector<double> diagnostic_raw_two_row_scores;
  double diagnostic_mean_future_pressure = 0.0;
  double diagnostic_current_full_grid_pressure = 0.0;
  double diagnostic_temporal_pressure = 0.0;
  double diagnostic_final_blend = 0.0;
  double diagnostic_outer_correction = 0.0;
};

class Engine {
public:
  explicit Engine(EngineConfig config);
  ~Engine();

  Engine(const Engine &) = delete;
  Engine &operator=(const Engine &) = delete;
  Engine(Engine &&) noexcept;
  Engine &operator=(Engine &&) noexcept;

  void setActiveArraySize(int width, int height);
  void setCropWindowSize(int width, int height);
  void setStabilizationStrength(double strength);

  int numStrips() const;
  int numFramesToLookAhead() const;
  bool isTripodMode() const;

  bool pushGyro(const GyroSample &sample);
  bool pushLensOffset(const LensOffsetSample &sample);
  bool pushLensIntrinsics(const LensIntrinsicsSample &sample);

  // Matches EisNative's delayed-output behavior: the returned timestamp can
  // belong to an older frame when look-ahead is enabled.
  std::optional<StabilizedFrame> processFrame(const FrameMetadata &frame);

  // Emits all delayed frames at stop/end-of-stream.
  std::vector<StabilizedFrame> flush();

  // Relative transform equivalent in purpose to
  // getTransformBetweenFrames(). It is computed from cached stabilized
  // outputs and returns false if either timestamp is unavailable.
  bool getTransformBetweenFrames(std::int64_t from_timestamp_ns,
                                 std::int64_t to_timestamp_ns,
                                 std::vector<Mat3> *strip_transforms) const;

private:
  class Impl;
  std::unique_ptr<Impl> impl_;
};

std::string confidenceNotice();

} // namespace mgc_eis_reconstruction
