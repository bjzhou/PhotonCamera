#pragma once

#include "mgc_eis_reconstruction.hpp"

#include <cstddef>
#include <deque>
#include <vector>

namespace mgc_eis_reconstruction::type18 {

// Exact constants selected by motion_filtering_params.cc for device type 18
// (switch case 0x12) and consumed by the non-Ceres method-4 lookahead path.
// Field offsets refer to the original parameter block at 0x22D6164.
struct Parameters {
  int domain_transform_window_length = 30;     // +188
  double domain_angular_scale = 2000.0;        // +192
  double domain_distance_budget = 32.0;        // +196
  double horizon_statistics_window_seconds = 0.7; // +208
  bool use_secondary_pose_stream = true;       // +220
  int half_window_frames = 10;                 // +264
  // The lookahead constructor copies this parameter block at offset +80.
  // Consequently accumulate_weighted_gyro_poses() reads this selector at
  // lookahead +352 == parameters +272. Type 18 leaves it at the factory
  // default of zero and therefore queries/accumulates the primary pose.
  bool candidate_uses_secondary_pose_stream = false; // +272
  double gaussian_sigma = 6.0;                 // +276
  double protrusion_score_divisor = 0.2;       // +280
  double protrusion_score_exponent = 2.0;      // +284
  double pressure_release_initial = 0.95;      // +288
  double pressure_release_step = 0.05;         // +292
  double motion_logistic_offset = -8.3469;     // +296
  double motion_logistic_scale = 10.7854;      // +300
  double low_protrusion_threshold = 0.001;     // +304
  double motion_rise_previous_weight = 0.925;  // +308
  double motion_direction_gate = 0.01;         // +312
  // Projected rolling-shutter motion controller at 0x22D9520. The
  // nonlinear filter copies the parameter block beginning at filter +8;
  // therefore the binary reads this sequence at filter +364..+416. These
  // values are decoded directly from V25's type-18 factory, not inferred
  // from the controller branches.
  double projected_motion_large_slope = 1200.0;   // params +356
  double projected_motion_center = 0.006;         // params +360
  double projected_motion_small_slope = 26.2687;  // params +364
  double projected_motion_small_offset = -0.0525; // params +368
  double projected_motion_threshold = 0.002798;   // params +372
  double projected_blend_fall_previous_weight = 0.8; // params +376
  double projected_peak_threshold = 0.01;         // params +380
  int projected_history_window_frames = 30;      // params +384
  int projected_history_min_intervals = 2;       // params +388
  double projected_history_rate_center = 15.0;   // params +392
  double projected_history_rate_slope = 150.0;   // params +396
  double projected_gain_rise_previous_weight = 0.5; // params +400
  double projected_gain_fall_previous_weight = 0.95; // params +404
  double projected_pose_motion_limit = 0.5;      // params +408
  double projected_candidate_max_blend = 0.2;
  int history_capacity = 50;                   // +68
  bool lookahead_enabled = true;               // +344
  bool nonlinear_pose_blend_enabled = true;    // +352
  // The factory selects false for profile 7 and true for type 18. V25 passes
  // this directly to build_real_camera_projection_rows(), where it gates the
  // optional lens-offset-to-intrinsics transform. It is not a stabilization
  // gain and must never be interpreted as one.
  bool apply_lens_offsets_to_intrinsics = true; // +416
  bool ceres_optimization_enabled = false;      // +526

  static constexpr std::int64_t kFramePeriodNs = 33'333'333;
  static constexpr std::int64_t kActivitySamplePeriodNs = 33'333'332;
  static constexpr double kFutureScoreThreshold = 0.06;
  static constexpr double kFutureScoreDeltaThreshold = 0.04;
};

// The nonlinear filter receives two gyro-pose streams from QueryPose. Device
// type 18 selects the secondary stream for the adaptive-domain decisions but
// retains the primary stream for its symmetric past/future motion axis.
struct PosePair {
  Quaternion primary;
  Quaternion secondary;
};

// Public form of V25 0x33BF8C0 used by every type-18 pose blend. The separate
// fallback argument is observable in the original ABI and is returned only
// for an invalid normalized dot product.
Quaternion interpolatePose(const Quaternion &from, const Quaternion &to,
                           double amount,
                           const Quaternion &fallback);

struct BaselinePoseWindow {
  PosePair current;
  PosePair previous;
  // Ordered newest to oldest: t-2, t-3, ... . MGC stops at the first pose
  // query failure, so fewer than half_window_frames entries are valid.
  std::vector<PosePair> older;
  // Ordered nearest to farthest: t+1, t+2, ... . Only the primary stream is
  // queried for future timestamps.
  std::vector<Quaternion> future_primary;
  // 33,333,000 / measured frame period, recovered at 0x22966B8..0x22966C8.
  double nominal_to_measured_period_ratio = 1.0;
};

// Exact scalar primitive at 0x33BF600: acos(abs(dot(normalize(a),
// normalize(b)))). It is a quaternion half-angle, not the full SO(3) angle.
double quaternionHalfAngleDistance(const Quaternion &lhs,
                                   const Quaternion &rhs);

// Reconstructs the active method-4 branch of 0x2296470. The returned
// quaternion is a per-frame baseline virtual-camera increment; the caller at
// 0x229BAB4/0x229BD74 composes it with the persistent virtual pose before the
// lookahead crop-pressure stages.
Quaternion computeBaselineVirtualPose(
    const BaselinePoseWindow &window,
    const Parameters &parameters = Parameters{});

// MGC stores only the center-to-edge half of a symmetric Gaussian. The
// returned vector contains weights for distances [0, half_window_frames] and
// is normalized against the complete symmetric kernel.
std::vector<double> makeSymmetricHalfGaussian(int half_window_frames,
                                              double sigma);

struct PoseCandidates {
  Quaternion wide;
  Quaternion tight;
  Quaternion future;
};

// Reconstructs 0x22BD844. poses must be ordered from -N through +N around the
// reference frame and therefore contain exactly 2*N+1 quaternions.
PoseCandidates accumulatePoseCandidates(
    const std::vector<Quaternion> &poses,
    const Quaternion &reference_orientation,
    const Parameters &parameters = Parameters{});

double normalizeProtrusionScore(
    double raw_score, const Parameters &parameters = Parameters{});

double meanNormalizedProtrusionScore(
    const std::vector<double> &raw_scores,
    const Parameters &parameters = Parameters{});

struct ProtrusionRect {
  double left = 0.0;
  double right = 0.0;
  double top = 0.0;
  double bottom = 0.0;
};

// Reconstructs geometry helper 0x588A840. The result is negative inside the
// allowed rectangle, zero on its edge, and positive outside. Corner overflow
// uses Euclidean distance.
double signedPointProtrusion(const ProtrusionRect &allowed,
                             const Vec2 &point);

double maximumBoundaryProtrusion(const ProtrusionRect &allowed,
                                 const std::vector<Vec2> &boundary_points);

// 0x22BE240 reduces the future horizon as the gyro activity signal rises.
// score_count is the number of already computed two-row protrusion scores.
int effectiveFutureIndex(double gyro_activity_signal, int score_count,
                         const Parameters &parameters = Parameters{});

bool shouldProbeFutureFullGrid(double current_raw_score,
                              double next_raw_score);

double combineSpatialPressure(double motion_blend,
                              double current_full_grid_score,
                              double mean_two_row_score);

struct GyroActivityMetrics {
  Vec3 mean;
  Vec3 standard_deviation;
  double motion_blend = 0.0;
  double directional_alignment = 0.0;
};

// Scalar/vector core of 0x22CF250 after its gyro records have been collected
// or resampled. Type 18 derives motion_blend from mean-L1/stddev-sum with its
// logistic constants, and derives the future-horizon signal from the mean
// non-negative cosine alignment with the window's mean motion direction.
GyroActivityMetrics computeGyroActivityMetrics(
    const std::vector<Vec3> &rotation_vectors,
    const Parameters &parameters = Parameters{});

// Scalar inputs consumed by 0x229DCC8. The two persistent margins are kept
// separate because MGC returns filtering_margin (+3168) to the packed frame
// state while updating optimization_margin (+3172) from the optional
// secondary-margin blend.
struct EffectiveCropMarginInput {
  double configured_crop_ratio = 0.0;   // engine +32
  double frame_scale = 1.0;             // frame metadata +44
  int filtering_method = 4;             // frame metadata +224
  int frame_mode = 1;                   // frame metadata +184
  double method4_scale = 1.0;           // engine +3164
  double maximum_margin = 0.0;          // engine +632
  double filter_alpha = 0.0;            // engine +640
  bool filtering_enabled = false;       // engine +533
  double secondary_margin = 0.0;        // engine +636
  double secondary_mix = 0.0;           // ARM64 S0 / a5
  // engine +74: when non-zero in method 4, 0x229DDDC..0x229DDE0 selects a
  // zero history weight for optimization_margin.
  bool method4_zero_optimization_history_weight = false;
};

struct EffectiveCropMarginState {
  double filtering_margin = 0.0;    // engine +3168
  double optimization_margin = 0.0; // engine +3172
};

struct EffectiveCropMarginResult {
  double current_margin = 0.0;
  double filtering_margin = 0.0;
  double optimization_input_margin = 0.0;
  double optimization_margin = 0.0;
};

// Reconstructs the scalar state transitions of 0x229DCC8. The original also
// emits a small frame-geometry object through sub_588A964; that independent
// geometry packaging is intentionally not represented by this scalar API.
EffectiveCropMarginResult updateEffectiveCropMargin(
    const EffectiveCropMarginInput &input, EffectiveCropMarginState *state);

class TemporalPressureFilter {
public:
  explicit TemporalPressureFilter(Parameters parameters = {});

  // Exact release behavior at the end of 0x22BE240. Rising pressure is
  // applied immediately. Falling pressure is blended with the previous frame
  // using a coefficient that decreases by pressure_release_step per frame.
  double update(double pressure);
  void reset();

private:
  Parameters parameters_;
  std::deque<double> history_;
  double release_weight_;
};

class LowProtrusionMotionFilter {
public:
  explicit LowProtrusionMotionFilter(Parameters parameters = {});

  // Reconstructs the scalar branch in 0x22BDEE0. Only a rising motion blend
  // under very low protrusion is slowed; all other changes pass through.
  double update(double current_motion_blend, double protrusion_score);
  void reset();

private:
  Parameters parameters_;
  std::deque<double> history_;
};

double finalPoseBlend(double pressure, double frame_blend);

struct LookaheadCompositionInput {
  PoseCandidates candidates;
  // 0x22BDA3C starts its first blend from the newest output-pose ring entry,
  // or identity when that ring is empty.
  Quaternion previous_output_pose = Quaternion::identity();
  Quaternion motion_pose = Quaternion::identity(); // frame state +112
  double two_row_protrusion_score = 0.0;
  double current_motion_blend = 0.0; // frame state +128
  bool preblend_tight_candidate = false; // lookahead object +432
  double tight_candidate_blend = 0.0;    // frame state +136
  double current_full_grid_pressure = 0.0;
  double mean_future_pressure = 0.0;
  double frame_blend = 0.0; // frame state +132
};

struct LookaheadCompositionResult {
  Quaternion two_row_pose;
  Quaternion intermediate_pose;
  Quaternion output_pose;
  double filtered_motion_blend = 0.0;
  double spatial_pressure = 0.0;
  double temporal_pressure = 0.0;
  double final_blend = 0.0;
};

// Stateful reconstruction of 0x22BDA3C -> 0x22BDEE0 -> 0x22BE240 after the
// geometry evaluators have produced their scalar protrusion pressures.
class LookaheadPoseComposer {
public:
  explicit LookaheadPoseComposer(Parameters parameters = {});

  LookaheadCompositionResult update(const LookaheadCompositionInput &input);
  void reset();

private:
  LowProtrusionMotionFilter motion_filter_;
  TemporalPressureFilter pressure_filter_;
};

} // namespace mgc_eis_reconstruction::type18
