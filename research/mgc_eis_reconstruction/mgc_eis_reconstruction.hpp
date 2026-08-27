#pragma once

#include <array>
#include <cstdint>
#include <deque>
#include <optional>
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

// Row-major 3x3 matrix. The reconstruction uses an output-to-input warp:
// input_pixel ~ H * output_pixel.
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

enum class StabilizationProfile {
  kStandard,
  kActive,
  kLocked,
};

struct GyroSample {
  std::int64_t timestamp_ns = 0;
  // Camera-coordinate angular velocity in radians/second.
  Vec3 radians_per_second;
};

struct LensOffsetSample {
  std::int64_t timestamp_ns = 0;
  // The native ABI accepts raw float offsets. Converting them to pixels is
  // calibration-dependent and is controlled by ois_pixels_per_unit below.
  Vec2 offset;
  int camera_index = 0;
};

struct VisualMotion {
  std::int64_t timestamp_ns = 0;
  Mat3 output_to_input = Mat3::identity();
  double confidence = 0.0;
};

struct FrameMetadata {
  std::int64_t frame_timestamp_ns = 0;
  std::int64_t exposure_time_ns = 0;
  std::int64_t rolling_shutter_skew_ns = 0;
  int camera_index = 0;
  bool half_resolution_sensor_mode = false;

  // MGC derives the effective horizontal field scale as:
  // crop_width / active_width * physical_sensor_width / focal_length.
  // Supplying focal_length_px directly is more convenient for this
  // reconstruction. If it is <= 0, EngineConfig::default_focal_length_px is
  // used.
  double focal_length_px = 0.0;
};

struct EngineConfig {
  // Defaults make the reconstruction runnable; except for the public ABI
  // ranges (for example strength in [0, 1]), they are not claimed to be MGC
  // tuning constants. Real MGC values come from its device configuration and
  // calibration protobufs.
  int output_width = 1920;
  int output_height = 1080;
  int active_array_width = 0;
  int active_array_height = 0;
  int crop_width = 0;
  int crop_height = 0;

  int num_strips = 16;
  int lookahead_frames = 0;
  StabilizationProfile profile = StabilizationProfile::kStandard;
  double stabilization_strength = 1.0;

  double default_focal_length_px = 1200.0;
  double gyro_bias_time_constant_seconds = 8.0;
  double standard_smoothing_time_seconds = 0.14;
  double active_smoothing_time_seconds = 0.28;
  double locked_smoothing_time_seconds = 0.75;
  double lookahead_sigma_frames = 2.0;
  double tripod_gyro_threshold_rad_s = 0.012;
  double tripod_hold_seconds = 0.8;

  // Converts processLensOffset() units into active-array pixels. The real
  // value is supplied by per-device calibration and is not recoverable as a
  // universal constant from the APK.
  double ois_pixels_per_unit_x = 1.0;
  double ois_pixels_per_unit_y = 1.0;

  // Prevents the warp from touching the crop boundary. The native library
  // has its own device-tuned constraint; this value is a reconstruction.
  double safety_margin_pixels = 2.0;
};

struct StabilizedFrame {
  std::int64_t timestamp_ns = 0;
  std::vector<Mat3> strip_output_to_input;
  bool tripod_mode = false;
  double applied_strength = 0.0;
};

class Engine {
public:
  explicit Engine(EngineConfig config);

  void setActiveArraySize(int width, int height);
  void setCropWindowSize(int width, int height);
  void setStabilizationStrength(double strength);

  int numStrips() const;
  int numFramesToLookAhead() const;
  bool isTripodMode() const;

  bool pushGyro(const GyroSample &sample);
  bool pushLensOffset(const LensOffsetSample &sample);
  void pushVisualMotion(const VisualMotion &motion);

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
  struct PoseSample {
    std::int64_t timestamp_ns = 0;
    Quaternion orientation;
    Vec3 filtered_gyro;
  };

  struct PendingFrame {
    FrameMetadata metadata;
    Quaternion center_orientation;
    Vec2 center_lens_offset;
  };

  struct OutputCacheEntry {
    std::int64_t timestamp_ns = 0;
    std::vector<Mat3> transforms;
  };

  bool validateConfig() const;
  Quaternion orientationAt(std::int64_t timestamp_ns) const;
  Vec3 angularVelocityAt(std::int64_t timestamp_ns) const;
  Vec2 lensOffsetAt(std::int64_t timestamp_ns, int camera_index) const;
  Quaternion smoothedOrientation(std::size_t pending_index,
                                 const PendingFrame &frame) const;
  void updateTripodState(const GyroSample &sample);
  StabilizedFrame stabilizePending(std::size_t pending_index);
  Mat3 makeStripWarp(const FrameMetadata &frame,
                     const Quaternion &actual_orientation,
                     const Quaternion &virtual_orientation,
                     const Vec2 &lens_offset, double strength) const;
  bool warpFitsCrop(const Mat3 &transform) const;
  double constrainStrength(const FrameMetadata &frame,
                           const Quaternion &actual_orientation,
                           const Quaternion &virtual_orientation,
                           const Vec2 &lens_offset,
                           double requested_strength) const;
  void cacheOutput(const StabilizedFrame &frame);
  void pruneSensorHistory(std::int64_t oldest_needed_timestamp_ns);

  EngineConfig config_;
  std::deque<PoseSample> poses_;
  std::deque<LensOffsetSample> lens_offsets_;
  std::deque<VisualMotion> visual_motions_;
  std::deque<PendingFrame> pending_frames_;
  std::deque<OutputCacheEntry> output_cache_;

  Vec3 gyro_bias_;
  std::optional<GyroSample> last_gyro_;
  Quaternion integrated_orientation_;
  std::optional<Quaternion> virtual_orientation_;
  std::optional<std::int64_t> virtual_orientation_timestamp_ns_;
  std::optional<std::int64_t> still_since_ns_;
  bool tripod_mode_ = false;
};

std::string confidenceNotice();

} // namespace mgc_eis_reconstruction
