#pragma once

#include "mgc_eis_reconstruction.hpp"

#include <cstddef>
#include <cstdint>
#include <deque>
#include <vector>

namespace mgc_eis_reconstruction::type18 {

// Confirmed at 0x22820F0 for device type 18: 33333333ns multiplied by the
// method-4 half-window (10 frames).
constexpr std::int64_t kDecomposedPoseDelayNs = 333'333'330;
constexpr std::int64_t kRunningGyroWindowThresholdNs = 1'000'000'001;
constexpr std::size_t kGyroRingCapacity = 10'000;

// V25 createHandle 0x22BFD38..0x22BFD78 constructs this detector immediately
// in front of both gyro queues. processGyro 0x22C0980 then replaces xyz with
// zero whenever the detector reports a stationary 100-sample window.
class GyroStationaryDetector {
public:
  GyroSample gate(const GyroSample &sample);
  bool isStationary() const;

private:
  struct StoredSample {
    float x = 0.0f;
    float y = 0.0f;
    float z = 0.0f;
  };

  std::deque<StoredSample> samples_;
  StoredSample sum_;
  StoredSample sum_squares_;
  bool stationary_ = false;
};

// Logical form of gyro.cc's 48-byte ring record. The binary stores float xyz,
// two int64 timestamps and an xyzw float quaternion; this clean-room form uses
// the reconstruction's double-precision math types without changing the
// update order.
struct GyroPoseRecord {
  Vec3 radians_per_second;
  std::int64_t timestamp_ns = 0;
  Quaternion orientation = Quaternion::identity();
};

struct QueriedGyroPose {
  Quaternion primary = Quaternion::identity();
  Quaternion secondary = Quaternion::identity();
};

// V25 0x3411340 followed by 0x230F094: collect primary gyro-pose records in
// [start, end), then retain a record only after at least sample_period_ns has
// elapsed and convert selected_pose * inverse(previous_selected_pose) to an
// axis-angle rotation vector. The first collected pose is the reference and
// is not itself emitted.
std::vector<Vec3> collectHorizonRotationVectors(
    const std::deque<GyroPoseRecord> &records, std::int64_t start_timestamp_ns,
    std::int64_t end_timestamp_ns, std::int64_t sample_period_ns);

// Stateful reconstruction of gyro.cc 0x33BDA1C, 0x33BE2D4, 0x33BE698,
// 0x33BE798 and 0x33BEA28. The secondary ring is not a smoothed copy of the
// primary orientation: it is a delayed integration of historical angular
// rates projected onto a one-second running-average axis.
class GyroPoseQueue {
public:
  explicit GyroPoseQueue(
      std::int64_t decomposed_pose_delay_ns = kDecomposedPoseDelayNs,
      std::size_t capacity = kGyroRingCapacity);

  bool push(const GyroSample &sample);

  bool isTimestampCovered(std::int64_t timestamp_ns,
                          bool require_secondary) const;
  bool query(std::int64_t timestamp_ns, Quaternion *primary,
             Quaternion *secondary = nullptr) const;

  const std::deque<GyroPoseRecord> &primaryRecords() const;
  const std::deque<GyroPoseRecord> &secondaryRecords() const;
  Vec3 runningGyroMean() const;
  std::int64_t nextDecomposedTimestamp() const;

private:
  Vec3 updateRunningGyroMean(const GyroPoseRecord &previous_record);
  void pushPrimary(const GyroPoseRecord &record);
  void pushSecondary(const GyroPoseRecord &record);
  const GyroPoseRecord &primaryAt(std::int64_t timestamp_ns) const;
  static Quaternion integrate(const Quaternion &previous,
                              const Vec3 &radians_per_second,
                              std::int64_t delta_ns);
  static Quaternion interpolate(const std::deque<GyroPoseRecord> &records,
                                std::int64_t timestamp_ns);

  std::int64_t decomposed_pose_delay_ns_;
  std::size_t capacity_;
  std::deque<GyroPoseRecord> primary_records_;
  std::deque<GyroPoseRecord> secondary_records_;

  std::int64_t running_oldest_timestamp_ns_ = -1;
  std::int64_t running_count_ = 0;
  Vec3 running_sum_;
  Vec3 running_mean_;

  std::int64_t next_decomposed_timestamp_ns_ = -1;
};

} // namespace mgc_eis_reconstruction::type18
