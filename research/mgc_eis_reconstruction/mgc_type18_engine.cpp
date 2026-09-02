#include "mgc_eis_reconstruction.hpp"

#include "mgc_type18_gyro.hpp"
#include "mgc_type18_lookahead.hpp"
#include "mgc_type18_projection.hpp"

#include <algorithm>
#include <cmath>
#include <deque>
#include <stdexcept>
#include <utility>

namespace mgc_eis_reconstruction {
namespace {

constexpr std::size_t kMaximumOutputCacheSize = 120;
constexpr double kMaximumAllowedProtrusion = 0.0;
// createHandle(..., cropFactor=0.5) scales the fallback parameter source to
// 0.05 for the look-ahead input/output crop and 0.025 for its inner allowed
// rectangle. The full native output configuration applies the corresponding
// projection crop scale after construction.
constexpr double kLookaheadCropMargin = 0.05;
constexpr double kAllowedInnerMargin = 0.025;
constexpr double kOutputCropZoom =
    1.0 / (1.0 - 2.0 * kLookaheadCropMargin);
constexpr double kProjectionDenominatorEpsilon = 0.000001;

type18::Parameters parametersFor(const EngineConfig &config) {
  type18::Parameters parameters;
  // The motion-filtering factory selects this exact half-window from the MGC
  // product profile.  V25's type-7 fallback has seven frames; type 18 has
  // ten.  Keep it alongside the queue delay rather than letting either path
  // retain a stale type-18 literal.
  parameters.half_window_frames = config.lookahead_frames;
  // 0x22FD640 and 0x22FE244 pass params+416 to the rolling-shutter projection
  // builder. The ensuing conditional is only the calibrated OIS/lens-offset
  // intrinsic adjustment; profile 7 leaves it false. Photon has no calibrated
  // profile-7 lens model, so its existing geometry path correctly keeps K
  // unchanged, but carry the recovered profile field explicitly rather than
  // treating the type-18 setting as a common default.
  parameters.apply_lens_offsets_to_intrinsics = config.lookahead_frames != 7;
  return parameters;
}

double clamp01(double value) {
  return std::max(0.0, std::min(value, 1.0));
}

type18::ProtrusionRect insetRect(double width, double height,
                                 double margin) {
  return {width * margin, width * (1.0 - margin), height * margin,
          height * (1.0 - margin)};
}

} // namespace

class Engine::Impl {
public:
  explicit Impl(EngineConfig config)
      : config_(std::move(config)), parameters_(parametersFor(config_)),
        delayed_gyro_(static_cast<std::int64_t>(parameters_.half_window_frames) *
                      type18::Parameters::kFramePeriodNs),
        realtime_gyro_(0), motion_filter_(parameters_),
        pressure_filter_(parameters_) {
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
    if (!validConfig()) {
      throw std::invalid_argument("Invalid MGC EIS engine configuration");
    }
  }

  void setActiveArraySize(int width, int height) {
    if (width <= 0 || height <= 0) {
      throw std::invalid_argument("Active array dimensions must be positive");
    }
    config_.active_array_width = width;
    config_.active_array_height = height;
  }

  void setCropWindowSize(int width, int height) {
    if (width <= 0 || height <= 0) {
      throw std::invalid_argument("Crop dimensions must be positive");
    }
    config_.crop_width = width;
    config_.crop_height = height;
  }

  void setStrength(double strength) {
    if (!(strength >= 0.0 && strength <= 1.0)) {
      throw std::invalid_argument(
          "Stabilization strength must be between zero and one");
    }
    config_.stabilization_strength = strength;
  }

  bool pushGyro(const GyroSample &sample) {
    // V25 0x22C0980 runs the shared 100-sample stationary detector before
    // 0x22C3F70 fans the same (possibly zeroed) sample into both queues.
    const GyroSample gated_sample = gyro_stationary_detector_.gate(sample);
    tripod_mode_ = gyro_stationary_detector_.isStationary();
    const bool delayed = delayed_gyro_.push(gated_sample);
    const bool realtime = realtime_gyro_.push(gated_sample);
    return delayed && realtime;
  }

  bool pushLensOffset(const LensOffsetSample &sample) {
    if (!lens_offsets_.empty() &&
        sample.timestamp_ns < lens_offsets_.back().timestamp_ns) {
      return false;
    }
    lens_offsets_.push_back(sample);
    while (lens_offsets_.size() > 2048) {
      lens_offsets_.pop_front();
    }
    // Profile 7 disables the raw-offset-to-intrinsics branch (params+416=0).
    // The empty profile configuration also has no calibrated lens model. In
    // either case, applying raw shifts would invent a calibration and
    // reverse/scale motion incorrectly.
    return true;
  }

  std::optional<StabilizedFrame> processFrame(const FrameMetadata &frame) {
    if (!pending_frames_.empty() &&
        frame.frame_timestamp_ns <=
            pending_frames_.back().frame_timestamp_ns) {
      throw std::invalid_argument("Frame timestamps must be monotonic");
    }
    if (!(frame.inverse_focal_length > 0.0)) {
      return dropped(frame.frame_timestamp_ns);
    }

    FrameMetadata queued_frame = frame;
    queued_frame.sequence_id = next_frame_sequence_++;
    pending_frames_.push_back(queued_frame);
    if (pending_frames_.size() <=
        static_cast<std::size_t>(parameters_.half_window_frames)) {
      return std::nullopt;
    }

    StabilizedFrame output = stabilizeFront();
    // `timestamp_ns` is the EIS first-row-centre time. Keep the independent
    // Camera2 source-buffer timestamp with the delayed output rather than
    // asking a downstream consumer to reconstruct the mapping.
    output.source_timestamp_ns = pending_frames_.front().source_timestamp_ns;
    previous_frame_timestamp_ns_ =
        pending_frames_.front().frame_timestamp_ns;
    pending_frames_.pop_front();
    cacheOutput(output);
    return output;
  }

  std::vector<StabilizedFrame> flush() {
    // Method 4 cannot synthesize the missing +1..+10 frame metadata. MGC's
    // stop path drains those images as unstabilized/dropped rather than
    // reflecting or freezing the last pose.
    std::vector<StabilizedFrame> result;
    result.reserve(pending_frames_.size());
    while (!pending_frames_.empty()) {
      StabilizedFrame output =
          dropped(pending_frames_.front().frame_timestamp_ns);
      output.source_timestamp_ns = pending_frames_.front().source_timestamp_ns;
      result.push_back(std::move(output));
      pending_frames_.pop_front();
    }
    return result;
  }

  bool getTransformBetweenFrames(std::int64_t from_timestamp_ns,
                                 std::int64_t to_timestamp_ns,
                                 std::vector<Mat3> *strip_transforms) const {
    if (strip_transforms == nullptr) {
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
    if (from == nullptr || to == nullptr ||
        from->transforms.size() != to->transforms.size()) {
      return false;
    }
    strip_transforms->clear();
    strip_transforms->reserve(from->transforms.size());
    for (std::size_t index = 0; index < from->transforms.size(); ++index) {
      strip_transforms->push_back(to->transforms[index].inverse() *
                                  from->transforms[index]);
    }
    return true;
  }

  int numStrips() const { return config_.num_strips; }
  int numFramesToLookAhead() const { return parameters_.half_window_frames; }
  bool isTripodMode() const { return tripod_mode_; }

private:
  struct FutureGeometry {
    std::vector<Mat3> real;
    std::vector<Mat3> inverse_real;
  };

  struct OutputCacheEntry {
    std::int64_t timestamp_ns = 0;
    std::vector<Mat3> transforms;
  };

  bool validConfig() const {
    return config_.output_width > 0 && config_.output_height > 0 &&
           config_.active_array_width > 0 &&
           config_.active_array_height > 0 && config_.crop_width > 0 &&
           config_.crop_height > 0 && config_.num_strips == 12 &&
           config_.lookahead_frames >= 3 && config_.lookahead_frames <= 10 &&
           config_.lookahead_frames == parameters_.half_window_frames &&
           config_.stabilization_strength >= 0.0 &&
           config_.stabilization_strength <= 1.0;
  }

  static StabilizedFrame dropped(std::int64_t timestamp_ns) {
    StabilizedFrame result;
    result.timestamp_ns = timestamp_ns;
    return result;
  }

  Mat3 intrinsicsFor(const FrameMetadata &frame) const {
    const double focal = static_cast<double>(config_.output_width) /
                         frame.inverse_focal_length;
    return Mat3::cameraIntrinsics(
        focal, focal, static_cast<double>(config_.output_width) * 0.5,
        static_cast<double>(config_.output_height) * 0.5);
  }

  bool queryPair(const type18::GyroPoseQueue &queue,
                 std::int64_t timestamp_ns, type18::PosePair *pair) const {
    return queue.query(timestamp_ns, &pair->primary, &pair->secondary);
  }

  type18::BaselinePoseWindow makeBaselineWindow(
      const type18::GyroPoseQueue &queue, std::int64_t center_timestamp_ns,
      std::int64_t measured_frame_period_ns) const {
    type18::BaselinePoseWindow window;
    if (!queryPair(queue, center_timestamp_ns, &window.current)) {
      throw std::runtime_error("Current delayed gyro pose is unavailable");
    }
    if (!queryPair(queue,
                   center_timestamp_ns - type18::Parameters::kFramePeriodNs,
                   &window.previous)) {
      window.previous = window.current;
    }

    // 0x22D6944 increments the historical counter only after querying
    // center - 2*period, and continues while counter < params+272.  With
    // the profile-specific half-window this includes the corresponding extra deltas through
    // center - 11*period, in addition to the initial center-to-previous
    // delta assembled by 0x22D66A4..0x22D66DC.
    for (int distance = 2;
         distance <= parameters_.half_window_frames + 1; ++distance) {
      type18::PosePair older;
      if (!queryPair(queue,
                     center_timestamp_ns -
                         type18::Parameters::kFramePeriodNs * distance,
                     &older)) {
        break;
      }
      window.older.push_back(older);
    }
    for (int distance = 1; distance <= parameters_.half_window_frames;
         ++distance) {
      Quaternion future;
      if (!queue.query(center_timestamp_ns +
                           type18::Parameters::kFramePeriodNs * distance,
                       &future)) {
        break;
      }
      window.future_primary.push_back(future);
    }
    const std::int64_t positive_period =
        std::max<std::int64_t>(measured_frame_period_ns, 1);
    window.nominal_to_measured_period_ratio =
        33'333'000.0 / static_cast<double>(positive_period);
    return window;
  }

  type18::PoseCandidates makeCandidates(
      const type18::GyroPoseQueue &queue, std::int64_t center_timestamp_ns,
      const Quaternion &reference) const {
    std::vector<Quaternion> poses;
    poses.reserve(static_cast<std::size_t>(
        parameters_.half_window_frames * 2 + 1));
    for (int distance = -parameters_.half_window_frames;
         distance <= parameters_.half_window_frames; ++distance) {
      Quaternion primary;
      const std::int64_t timestamp =
          center_timestamp_ns + type18::Parameters::kFramePeriodNs * distance;
      bool queried = false;
      if (parameters_.candidate_uses_secondary_pose_stream) {
        Quaternion secondary;
        queried = queue.query(timestamp, &primary, &secondary);
        if (queried) {
          poses.push_back(secondary);
        }
      } else {
        // 0x22FD848 passes a null secondary output pointer when selector
        // lookahead+352 (params+272) is false. Requiring a secondary sample
        // here silently discarded the newest primary future poses, because
        // that stream is intentionally delayed; it was the source of the
        // incorrect low-amplitude wide candidate.
        queried = queue.query(timestamp, &primary);
        if (queried) {
          poses.push_back(primary);
        }
      }
      if (!queried) {
        // 0x22FD848 skips a failed query. Supplying the reference produces
        // exactly the same identity relative contribution in the fixed-size
        // clean-room accumulator.
        poses.push_back(reference);
      }
    }
    return type18::accumulatePoseCandidates(poses, reference, parameters_);
  }

  std::vector<Quaternion> queryRowOrientations(
      const type18::GyroPoseQueue &queue, std::int64_t first_row_timestamp_ns,
      std::int64_t rolling_shutter_ns) const {
    const std::vector<std::int64_t> offsets =
        type18::makeRollingShutterRowOffsets(rolling_shutter_ns,
                                             config_.num_strips);
    std::vector<Quaternion> result;
    result.reserve(offsets.size());
    for (const std::int64_t offset : offsets) {
      Quaternion orientation;
      if (!queue.query(first_row_timestamp_ns + offset, &orientation)) {
        return {};
      }
      result.push_back(orientation);
    }
    return result;
  }

  FutureGeometry buildFutureGeometry(
      const type18::GyroPoseQueue &queue, const FrameMetadata &metadata,
      std::int64_t center_timestamp_ns, bool dense) const {
    std::vector<Quaternion> orientations;
    if (dense) {
      orientations = queryRowOrientations(
          queue, center_timestamp_ns - metadata.rolling_shutter_skew_ns / 2,
          metadata.rolling_shutter_skew_ns);
    } else {
      const std::array<double, 2> source_rows{
          kLookaheadCropMargin * static_cast<double>(config_.output_height),
          (1.0 - kLookaheadCropMargin) *
              static_cast<double>(config_.output_height),
      };
      const auto offsets = type18::makeBoundingRowOffsets(
          metadata.rolling_shutter_skew_ns, source_rows,
          static_cast<double>(config_.output_height));
      orientations.reserve(2);
      for (const std::int64_t offset : offsets) {
        Quaternion orientation;
        const std::int64_t first_row =
            center_timestamp_ns - metadata.rolling_shutter_skew_ns / 2;
        if (!queue.query(first_row + offset, &orientation)) {
          return {};
        }
        orientations.push_back(orientation);
      }
    }

    FutureGeometry geometry;
    if (orientations.empty()) {
      return geometry;
    }
    geometry.real = type18::buildRealCameraProjectionRows(
        orientations, {intrinsicsFor(metadata)});
    geometry.inverse_real.reserve(geometry.real.size());
    for (const Mat3 &projection : geometry.real) {
      geometry.inverse_real.push_back(projection.inverse());
    }
    return geometry;
  }

  std::vector<Mat3> virtualProjection(const Quaternion &pose,
                                      const Mat3 &intrinsics) const {
    // Parameter-set byte +415 is zero: V25 uses one shared virtual
    // projection even though each real rolling-shutter row has its own pose.
    return type18::buildVirtualCameraProjectionRows(pose, {}, {intrinsics});
  }

  double fullGridCorrection(const Quaternion &requested,
                            const Quaternion &fallback,
                            const FutureGeometry &geometry,
                            const Mat3 &virtual_intrinsics) const {
    if (geometry.inverse_real.size() < 2) {
      return 1.1;
    }
    const double width = static_cast<double>(config_.output_width);
    const double height = static_cast<double>(config_.output_height);
    // The dense feasibility pass has a different domain from the earlier
    // two-row probe.  It projects the complete source frame and asks whether
    // the fixed 5% output safety frame can be reverse-projected inside that
    // source.  Feeding the two-row 5%-inset input rectangle here pairs each
    // rolling-shutter boundary with the wrong source scanline and makes the
    // outer correction oscillate as it alternates between incompatible
    // geometry models.
    const type18::ProtrusionRect input{0.0, width, 0.0, height};
    const type18::ProtrusionRect output =
        insetRect(width, height, kLookaheadCropMargin);
    const type18::ProtrusionRect allowed{0.0, width, 0.0, height};
    return type18::computeFullGridCropCorrectionFraction(
        requested, fallback, geometry.inverse_real,
        [this, &virtual_intrinsics](const Quaternion &pose) {
          return virtualProjection(pose, virtual_intrinsics);
        },
        input, output, allowed, width, height,
        kMaximumAllowedProtrusion);
  }

  double twoRowScore(const Quaternion &virtual_pose,
                     const FutureGeometry &geometry,
                     const Mat3 &virtual_intrinsics) const {
    if (geometry.inverse_real.size() < 2) {
      return 1.0;
    }
    const double width = static_cast<double>(config_.output_width);
    const double height = static_cast<double>(config_.output_height);
    const type18::ProtrusionRect input =
        insetRect(width, height, kLookaheadCropMargin);
    const type18::ProtrusionRect output =
        insetRect(width, height, kLookaheadCropMargin);
    const type18::ProtrusionRect allowed =
        insetRect(width, height, kAllowedInnerMargin);
    const std::vector<bool> mask(geometry.inverse_real.size() - 1, true);
    return type18::evaluateProjectionProtrusion(
               geometry.inverse_real,
               virtualProjection(virtual_pose, virtual_intrinsics), input,
               output, allowed, mask, width, height)
        .maximum;
  }

  Vec2 projectedPoseDisplacement(const Quaternion &from,
                                 const Quaternion &to,
                                 const Mat3 &intrinsics) const {
    // 0x22DEAA4: H = P(to) * inverse(P(from)); project the image centre,
    // divide both axes by image width, and retain the binary's +1e-6
    // homogeneous denominator bias.
    const Mat3 from_projection =
        type18::makeCameraProjection(intrinsics, from);
    const Mat3 to_projection = type18::makeCameraProjection(intrinsics, to);
    const Mat3 relative = to_projection * from_projection.inverse();
    const double x = static_cast<double>(config_.output_width) * 0.5;
    const double y = static_cast<double>(config_.output_height) * 0.5;
    const double homogeneous_x =
        relative.at(0, 0) * x + relative.at(0, 1) * y +
        relative.at(0, 2);
    const double homogeneous_y =
        relative.at(1, 0) * x + relative.at(1, 1) * y +
        relative.at(1, 2);
    const double homogeneous_w =
        relative.at(2, 0) * x + relative.at(2, 1) * y +
        relative.at(2, 2) + kProjectionDenominatorEpsilon;
    const double width = static_cast<double>(config_.output_width);
    return {(homogeneous_x / homogeneous_w - x) / width,
            (homogeneous_y / homogeneous_w - y) / width};
  }

  Vec2 projectedExposureMotion(
      const type18::GyroPoseQueue &queue, std::int64_t center_timestamp_ns,
      std::int64_t exposure_time_ns, const Mat3 &intrinsics) const {
    // 0x22D91D8 reads frame metadata +56, the exposure duration, and builds
    // the two projections at center +/- exposure/2. Rolling-shutter skew is
    // used by the independent per-row real-camera projection path.
    Quaternion exposure_start;
    Quaternion exposure_end;
    if (!queue.query(center_timestamp_ns - exposure_time_ns / 2,
                     &exposure_start) ||
        !queue.query(center_timestamp_ns + exposure_time_ns / 2,
                     &exposure_end)) {
      return {};
    }
    return projectedPoseDisplacement(exposure_start, exposure_end,
                                     intrinsics);
  }

  double projectedMotionCandidateBlend(double magnitude) const {
    // Exact two-branch scalar at 0x22D95E8..0x22D9654. Both branches are
    // multiplied by the hard-coded 0.2 candidate ceiling.
    if (magnitude <= parameters_.projected_motion_threshold) {
      return std::max(
                 magnitude * parameters_.projected_motion_small_slope +
                     parameters_.projected_motion_small_offset,
                 0.0) *
             parameters_.projected_candidate_max_blend;
    }
    const double exponent =
        -parameters_.projected_motion_large_slope *
        (magnitude - parameters_.projected_motion_center);
    return parameters_.projected_candidate_max_blend /
           (std::exp(exponent) + 1.0);
  }

  double capProjectedCandidateBlend(double requested,
                                    const Quaternion &previous_output,
                                    const Quaternion &measured_pose,
                                    const Vec2 &raw_projected_motion,
                                    const Mat3 &intrinsics) const {
    const double maximum = parameters_.projected_pose_motion_limit *
                           std::hypot(raw_projected_motion.x,
                                      raw_projected_motion.y);
    const auto displacement_for = [&](double amount) {
      const Quaternion candidate = type18::interpolatePose(
          previous_output, measured_pose, amount, previous_output);
      const Vec2 displacement = projectedPoseDisplacement(
          previous_output, candidate, intrinsics);
      return std::hypot(displacement.x, displacement.y);
    };
    if (displacement_for(requested) <= maximum) {
      return requested;
    }
    double low = 0.0;
    double high = requested;
    while (low + 0.000001 < high) {
      const double middle = (low + high) * 0.5;
      if (displacement_for(middle) <= maximum) {
        low = middle;
      } else {
        high = middle;
      }
    }
    return low;
  }

  void prepareProjectedMotionHistory(const Vec2 &current_motion,
                                     std::int64_t frame_sequence) {
    const double magnitude =
        std::hypot(current_motion.x, current_motion.y);
    projected_motion_magnitudes_.push_back(magnitude);
    while (projected_motion_magnitudes_.size() > 60) {
      projected_motion_magnitudes_.pop_front();
    }
    if (projected_motion_magnitudes_.size() < 3) {
      return;
    }
    const std::size_t size = projected_motion_magnitudes_.size();
    const double prior = projected_motion_magnitudes_[size - 2];
    if (prior > projected_motion_magnitudes_[size - 3] &&
        prior >= projected_motion_magnitudes_.back() &&
        prior >= parameters_.projected_peak_threshold) {
      projected_motion_peak_frames_.push_back(frame_sequence);
      while (projected_motion_peak_frames_.size() > 60) {
        projected_motion_peak_frames_.pop_front();
      }
    }
  }

  double updateProjectedMotionHistoryGain(
      std::int64_t frame_sequence,
      std::int64_t measured_frame_period_ns) {
    // V25 0x22D8BD4. The state at engine +2656 is constructed as zero.
    // With fewer than two detected peaks its target is one; otherwise the
    // reciprocal mean peak spacing over the last 30 normalized frames drives
    // the very steep rate logistic at params +392/+396.
    double target = 1.0;
    const double normalized_periods =
        std::round(33'333'000.0 / static_cast<double>(
                                       std::max<std::int64_t>(
                                           measured_frame_period_ns, 1)));
    if (projected_motion_peak_frames_.size() >= 2) {
      const std::int64_t oldest_allowed = std::max<std::int64_t>(
          static_cast<std::int64_t>(
              static_cast<double>(frame_sequence) -
              normalized_periods *
                  parameters_.projected_history_window_frames),
          0);
      double interval_sum = 0.0;
      int interval_count = 0;
      for (std::size_t upper = projected_motion_peak_frames_.size() - 1;
           upper > 0; --upper) {
        const std::int64_t lower_frame =
            projected_motion_peak_frames_[upper - 1];
        if (lower_frame < oldest_allowed) {
          break;
        }
        interval_sum += static_cast<double>(
            projected_motion_peak_frames_[upper] - lower_frame);
        ++interval_count;
      }
      if (interval_count >=
              parameters_.projected_history_min_intervals &&
          interval_sum > 0.0 && normalized_periods > 0.0) {
        const double reciprocal_mean_spacing =
            1.0 /
            (interval_sum /
             (normalized_periods * static_cast<double>(interval_count)));
        const double exponent =
            -parameters_.projected_history_rate_slope *
            (reciprocal_mean_spacing -
             parameters_.projected_history_rate_center);
        target = 1.0 - 1.0 / (std::exp(exponent) + 1.0);
      }
    }
    const double previous_weight =
        target >= projected_motion_history_gain_
            ? parameters_.projected_gain_rise_previous_weight
            : parameters_.projected_gain_fall_previous_weight;
    projected_motion_history_gain_ =
        projected_motion_history_gain_ * previous_weight +
        target * (1.0 - previous_weight);
    return projected_motion_history_gain_;
  }

  struct CandidateBlendControl {
    double requested = 0.0;
    double capped = 0.0;
    double history_gain = 0.0;
    double result = 0.0;
  };

  CandidateBlendControl lookaheadCandidateBlend(
      const type18::GyroPoseQueue &queue,
      std::int64_t center_timestamp_ns, std::int64_t exposure_time_ns,
      const Quaternion &measured_pose, const Mat3 &intrinsics,
      double current_motion_blend, const Vec2 &current,
      double motion_history_gain) {
    const double motion_scale = 1.0 - current_motion_blend;
    const double requested = projectedMotionCandidateBlend(
        std::hypot(current.x * motion_scale, current.y * motion_scale));
    const double capped = capProjectedCandidateBlend(
        requested, previous_output_pose_, measured_pose, current, intrinsics);

    double maximum = capped;
    int maximum_distance = 0;
    for (int distance = 1; distance <= parameters_.half_window_frames;
         ++distance) {
      const Vec2 future = projectedExposureMotion(
          queue,
          center_timestamp_ns +
              type18::Parameters::kFramePeriodNs * distance,
          exposure_time_ns, intrinsics);
      const double value = projectedMotionCandidateBlend(
          std::hypot(future.x * motion_scale, future.y * motion_scale));
      if (value > maximum) {
        maximum = value;
        maximum_distance = distance;
      }
    }
    const double raw_result = capped +
                              (maximum - capped) /
                                  static_cast<double>(maximum_distance + 1);
    // 0x22D9814..0x22D984C multiplies by the persistent history gain before
    // comparing with the previous final control value and damping a fall.
    double result = raw_result * motion_history_gain;
    if (result < previous_projected_candidate_blend_) {
      result = previous_projected_candidate_blend_ *
                   parameters_.projected_blend_fall_previous_weight +
               result *
                   (1.0 -
                    parameters_.projected_blend_fall_previous_weight);
    }
    previous_projected_candidate_blend_ = result;
    return {requested, capped, motion_history_gain, result};
  }

  type18::GyroActivityMetrics activityMetrics(
      const type18::GyroPoseQueue &queue,
      std::int64_t first_row_timestamp_ns,
      std::int64_t statistics_window_ns,
      std::int64_t sample_period_ns) const {
    // 0x22D5648..0x22D56A8 fixes the future endpoint search to
    // half_window*33,333,333ns. 0x230F094 backs the endpoint toward the
    // current frame until the primary pose ring covers it, then computes pose
    // deltas over the caller-selected interval and minimum sample cadence.
    std::int64_t end_timestamp_ns =
        first_row_timestamp_ns +
        parameters_.half_window_frames * type18::Parameters::kFramePeriodNs;
    if (parameters_.half_window_frames >= 1) {
      do {
        if (queue.isTimestampCovered(end_timestamp_ns, false)) {
          break;
        }
        end_timestamp_ns -= type18::Parameters::kFramePeriodNs;
      } while (end_timestamp_ns > first_row_timestamp_ns);
    }
    const std::int64_t start_timestamp_ns =
        statistics_window_ns > 0
            ? end_timestamp_ns - statistics_window_ns
            : first_row_timestamp_ns;
    if (!queue.isTimestampCovered(start_timestamp_ns, false)) {
      return {};
    }
    return type18::computeGyroActivityMetrics(
        type18::collectHorizonRotationVectors(
            queue.primaryRecords(), start_timestamp_ns, end_timestamp_ns,
            sample_period_ns),
        parameters_);
  }

  StabilizedFrame stabilizeFront() {
    const FrameMetadata &frame = pending_frames_.front();
    const type18::GyroPoseQueue &queue =
        frame.half_resolution_sensor_mode ? realtime_gyro_ : delayed_gyro_;
    const std::int64_t center_timestamp =
        frame.frame_timestamp_ns + frame.rolling_shutter_skew_ns / 2;
    // 0x22D660C..0x22D666C uses the current output frame minus the previous
    // output frame. It never uses the next buffered frame's period.
    const std::int64_t measured_period =
        previous_frame_timestamp_ns_ > 0
            ? frame.frame_timestamp_ns - previous_frame_timestamp_ns_
            : 33'333'000;

    type18::PosePair current;
    if (!queryPair(queue, center_timestamp, &current)) {
      return dropped(frame.frame_timestamp_ns);
    }

    // gyro_nonlinear_filter.cc's first-valid-frame branch (engine +2080)
    // seeds +1168 and +1200 from the measured primary pose before method 4
    // composes its baseline increment. Starting this persistent pose at the
    // global quaternion identity instead makes the filter fight all rotation
    // accumulated between gyro registration and the first camera frame.
    const bool initialize_output_pose = !output_pose_initialized_;
    if (initialize_output_pose) {
      previous_output_pose_ = current.primary;
      output_pose_initialized_ = true;
    }

    // gyro_nonlinear_filter.cc 0x22DA58C..0x22DA994 does not run method 4 on
    // the first valid frame. It seeds +1168/+1200 from the measured primary
    // pose, keeps +1184 at identity, builds the virtual projection directly
    // from +1168 and jumps to the dense-warp output path. Running look-ahead
    // here mixes an uninitialized motion history into the first output and
    // creates a startup drag in the opposite direction.
    if (initialize_output_pose) {
      const Mat3 virtual_intrinsics = intrinsicsFor(frame);
      const FutureGeometry dense_current =
          buildFutureGeometry(queue, frame, center_timestamp, true);
      if (dense_current.real.size() !=
          static_cast<std::size_t>(config_.num_strips)) {
        return dropped(frame.frame_timestamp_ns);
      }
      const std::vector<Mat3> virtual_rows =
          virtualProjection(current.primary, virtual_intrinsics);
      const std::vector<Mat3> pixel_warps = type18::composeDenseWarpRows(
          dense_current.real, virtual_rows, false, Mat3::identity());

      StabilizedFrame output;
      output.timestamp_ns = frame.frame_timestamp_ns;
      output.tripod_mode = tripod_mode_;
      output.applied_strength = config_.stabilization_strength;
      output.diagnostic_measured_pose = current.primary;
      output.diagnostic_secondary_measured_pose = current.secondary;
      output.diagnostic_virtual_pose = current.primary;
      output.strip_input_to_output.reserve(pixel_warps.size());
      for (const Mat3 &pixel_warp : pixel_warps) {
        output.strip_input_to_output.push_back(
            type18::applyCropZoomToClipHomography(
                type18::convertPixelHomographyToClip(
                    pixel_warp, static_cast<double>(config_.output_width),
                    static_cast<double>(config_.output_height)),
                kOutputCropZoom));
      }
      return output;
    }

    const type18::BaselinePoseWindow baseline_window =
        makeBaselineWindow(queue, center_timestamp, measured_period);
    const Quaternion baseline_increment =
        type18::computeBaselineVirtualPose(baseline_window, parameters_);
    const Quaternion motion_pose =
        (baseline_increment * previous_output_pose_).normalized();
    const type18::PoseCandidates candidates =
        makeCandidates(queue, center_timestamp,
                       parameters_.candidate_uses_secondary_pose_stream
                           ? current.secondary
                           : current.primary);
    const Mat3 virtual_intrinsics = intrinsicsFor(frame);
    const Vec2 projected_current_motion = projectedExposureMotion(
        queue, center_timestamp, frame.exposure_time_ns,
        virtual_intrinsics);
    prepareProjectedMotionHistory(projected_current_motion,
                                  frame.sequence_id);
    const double projected_motion_history_gain =
        updateProjectedMotionHistoryGain(frame.sequence_id,
                                         measured_period);

    std::vector<FutureGeometry> future_geometry;
    std::vector<double> raw_two_row_scores;
    future_geometry.reserve(static_cast<std::size_t>(
        parameters_.half_window_frames + 1));
    raw_two_row_scores.reserve(future_geometry.capacity());
    for (int index = 0; index <= parameters_.half_window_frames; ++index) {
      const std::int64_t future_center =
          center_timestamp + type18::Parameters::kFramePeriodNs * index;
      // 0x22FD640 receives the one frame-state/metadata object being
      // stabilized and advances only its gyro/OIS timestamps by 33,333,333ns.
      // Later buffered frames are not substituted as future intrinsics.
      future_geometry.push_back(buildFutureGeometry(
          queue, frame, future_center, false));
      raw_two_row_scores.push_back(twoRowScore(
          previous_output_pose_, future_geometry.back(), virtual_intrinsics));
    }

    const std::int64_t horizon_statistics_window_ns =
        static_cast<std::int64_t>(
            parameters_.horizon_statistics_window_seconds * 1.0e9);
    const type18::GyroActivityMetrics activity = activityMetrics(
        queue, frame.frame_timestamp_ns, horizon_statistics_window_ns,
        type18::Parameters::kActivitySamplePeriodNs);
    double current_motion_blend = activity.motion_blend;
    // 0x230F094 leaves sqrt(mean.x² + mean.y² + mean.z²) in S0 on return.
    // 0x22D9C20 compares that mean-motion magnitude with params+312 before
    // multiplying the logistic blend by the directional signal written to
    // the out parameter.  It does not compare the directional signal itself.
    // Thus a low net-motion window retains its logistic blend even when its
    // individual samples have a high directional alignment.
    if (norm(activity.mean) >= parameters_.motion_direction_gate) {
      current_motion_blend *= activity.directional_alignment;
    }
    current_motion_blend = clamp01(current_motion_blend);
    const CandidateBlendControl candidate_control = lookaheadCandidateBlend(
        queue, center_timestamp, frame.exposure_time_ns,
        current.primary, virtual_intrinsics, current_motion_blend,
        projected_current_motion,
        projected_motion_history_gain);
    const double tight_candidate_blend = candidate_control.result;
    // 0x22FE420..0x22FE48C invokes the same primitive a second time with no
    // past statistics window. Its independent directional scalar is measured
    // only across [frame_timestamp, frame_timestamp + 10 frames) and controls
    // the 10-to-3 future-score horizon.
    const type18::GyroActivityMetrics future_activity = activityMetrics(
        queue, frame.frame_timestamp_ns, 0,
        type18::Parameters::kFramePeriodNs);
    const int future_index = type18::effectiveFutureIndex(
        future_activity.directional_alignment,
        static_cast<int>(raw_two_row_scores.size()), parameters_);
    // 0x22FDA40 evaluates and averages the complete 0..N two-row horizon
    // before 0x22FDEE4 composes the virtual pose.  The independent horizon
    // signal below only limits the later expensive full-grid probing; using
    // it to truncate this average changed V25's input-11 oracle pressure
    // from 0.266624421 to 0.005074956 and made the controller appear almost
    // inactive.
    const double two_row_pressure =
        type18::meanNormalizedProtrusionScore(raw_two_row_scores,
                                              parameters_);

    std::vector<double> selected_scores;
    if (future_index >= 0) {
      selected_scores.assign(raw_two_row_scores.begin(),
                             raw_two_row_scores.begin() + future_index + 1);
    }
    double full_grid_future_pressure =
        type18::meanNormalizedProtrusionScore(selected_scores, parameters_);

    // 0x22BDA3C seeds its first candidate blend from the newest virtual-pose
    // history entry (the first output is seeded from the measured pose), then
    // moves toward the sigma-6 candidate by the two-row pressure.
    const Quaternion two_row_pose = type18::interpolatePose(
        previous_output_pose_, candidates.wide, two_row_pressure,
        previous_output_pose_);
    const double filtered_motion_blend =
        // 0x22BDEE0 is invoked before full-grid scoring and consumes the
        // same complete two-row aggregate used for the first pose SLERP.
        motion_filter_.update(current_motion_blend, two_row_pressure);
    // Type 18 sets params+352, so 0x22FDEE4 always performs this first SLERP
    // using frame-state +136 before blending toward the baseline motion pose.
    const Quaternion preblended_pose = type18::interpolatePose(
        two_row_pose, candidates.tight, tight_candidate_blend, two_row_pose);
    const Quaternion intermediate_pose = type18::interpolatePose(
        preblended_pose, motion_pose, filtered_motion_blend, preblended_pose);

    const FutureGeometry dense_current =
        buildFutureGeometry(queue, frame, center_timestamp, true);
    if (dense_current.real.size() !=
        static_cast<std::size_t>(config_.num_strips)) {
      return dropped(frame.frame_timestamp_ns);
    }
    const double current_full_grid_pressure = fullGridCorrection(
        intermediate_pose, candidates.tight, dense_current,
        virtual_intrinsics);

    for (int index = 0; index < future_index; ++index) {
      const int next = index + 1;
      if (!type18::shouldProbeFutureFullGrid(
              raw_two_row_scores[static_cast<std::size_t>(index)],
              raw_two_row_scores[static_cast<std::size_t>(next)])) {
        continue;
      }
      const std::int64_t future_center =
          center_timestamp + type18::Parameters::kFramePeriodNs * next;
      const FutureGeometry full_future = buildFutureGeometry(
          queue, frame, future_center, true);
      Quaternion future_actual;
      if (queue.query(future_center, &future_actual)) {
        const double future_full_grid = fullGridCorrection(
            intermediate_pose, future_actual, full_future,
            virtual_intrinsics);
        full_grid_future_pressure +=
            (future_full_grid - full_grid_future_pressure) /
            static_cast<double>(next + 1);
      }
      break;
    }

    const double spatial_pressure = type18::combineSpatialPressure(
        filtered_motion_blend, current_full_grid_pressure,
        full_grid_future_pressure);
    const double temporal_pressure = pressure_filter_.update(spatial_pressure);
    // pack_lookahead_frame_state writes min(filter+0x98c, filter+0x988) to
    // frame-state +0x84. Both constructor fields start at 1.0, and valid
    // strength is <= 1, so type-18 supplies the current strength here.
    const double final_blend = type18::finalPoseBlend(
        temporal_pressure, config_.stabilization_strength);
    Quaternion output_pose = type18::interpolatePose(
        intermediate_pose, candidates.tight, final_blend,
        intermediate_pose);

    // 0x22DB9F4 performs the method-4 outer full-grid feasibility pass and
    // applies its returned correction directly. The strength-adjusted form at
    // 0x22DDF44 belongs to the method-3/6 branch, not this path.
    const double outer_correction = fullGridCorrection(
        output_pose, current.primary, dense_current, virtual_intrinsics);
    output_pose = type18::interpolatePose(
        output_pose, current.primary, outer_correction, output_pose);
    previous_output_pose_ = output_pose;

    const std::vector<Mat3> virtual_rows =
        virtualProjection(output_pose, virtual_intrinsics);
    const std::vector<Mat3> pixel_warps = type18::composeDenseWarpRows(
        dense_current.real, virtual_rows, false, Mat3::identity());

    StabilizedFrame output;
    output.timestamp_ns = frame.frame_timestamp_ns;
    output.tripod_mode = tripod_mode_;
    output.applied_strength = config_.stabilization_strength;
    output.diagnostic_measured_pose = current.primary;
    output.diagnostic_secondary_measured_pose = current.secondary;
    output.diagnostic_virtual_pose = output_pose;
    output.diagnostic_baseline_increment = baseline_increment;
    output.diagnostic_motion_pose = motion_pose;
    output.diagnostic_wide_pose = candidates.wide;
    output.diagnostic_tight_pose = candidates.tight;
    output.diagnostic_intermediate_pose = intermediate_pose;
    output.diagnostic_horizon_mean_rotation = activity.mean;
    output.diagnostic_horizon_rotation_stddev = activity.standard_deviation;
    output.diagnostic_horizon_directional_alignment =
        activity.directional_alignment;
    output.diagnostic_horizon_logistic_motion_blend = activity.motion_blend;
    output.diagnostic_future_horizon_index = future_index;
    output.diagnostic_future_horizon_alignment =
        future_activity.directional_alignment;
    output.diagnostic_future_horizon_pressure = full_grid_future_pressure;
    output.diagnostic_current_motion_blend = current_motion_blend;
    output.diagnostic_filtered_motion_blend = filtered_motion_blend;
    output.diagnostic_projected_motion = projected_current_motion;
    output.diagnostic_projected_candidate_requested =
        candidate_control.requested;
    output.diagnostic_projected_candidate_capped = candidate_control.capped;
    output.diagnostic_projected_candidate_history_gain =
        candidate_control.history_gain;
    output.diagnostic_tight_candidate_blend = tight_candidate_blend;
    output.diagnostic_raw_two_row_scores = raw_two_row_scores;
    output.diagnostic_mean_future_pressure = two_row_pressure;
    output.diagnostic_current_full_grid_pressure = current_full_grid_pressure;
    output.diagnostic_temporal_pressure = temporal_pressure;
    output.diagnostic_final_blend = final_blend;
    output.diagnostic_outer_correction = outer_correction;
    output.strip_input_to_output.reserve(pixel_warps.size());
    for (const Mat3 &pixel_warp : pixel_warps) {
      output.strip_input_to_output.push_back(
          type18::applyCropZoomToClipHomography(
              type18::convertPixelHomographyToClip(
                  pixel_warp, static_cast<double>(config_.output_width),
                  static_cast<double>(config_.output_height)),
              kOutputCropZoom));
    }
    return output;
  }

  void cacheOutput(const StabilizedFrame &frame) {
    if (frame.strip_input_to_output.empty()) {
      return;
    }
    output_cache_.push_back({frame.timestamp_ns, frame.strip_input_to_output});
    while (output_cache_.size() > kMaximumOutputCacheSize) {
      output_cache_.pop_front();
    }
  }

  EngineConfig config_;
  type18::Parameters parameters_;
  type18::GyroStationaryDetector gyro_stationary_detector_;
  type18::GyroPoseQueue delayed_gyro_;
  type18::GyroPoseQueue realtime_gyro_;
  type18::LowProtrusionMotionFilter motion_filter_;
  type18::TemporalPressureFilter pressure_filter_;
  std::deque<LensOffsetSample> lens_offsets_;
  std::deque<FrameMetadata> pending_frames_;
  std::deque<OutputCacheEntry> output_cache_;
  std::deque<double> projected_motion_magnitudes_;
  std::deque<std::int64_t> projected_motion_peak_frames_;
  Quaternion previous_output_pose_ = Quaternion::identity();
  std::int64_t next_frame_sequence_ = 0;
  std::int64_t previous_frame_timestamp_ns_ = 0;
  double projected_motion_history_gain_ = 0.0;
  double previous_projected_candidate_blend_ = 0.0;
  bool output_pose_initialized_ = false;
  bool tripod_mode_ = false;
};

Engine::Engine(EngineConfig config)
    : impl_(std::make_unique<Impl>(std::move(config))) {}

Engine::~Engine() = default;
Engine::Engine(Engine &&) noexcept = default;
Engine &Engine::operator=(Engine &&) noexcept = default;

void Engine::setActiveArraySize(int width, int height) {
  impl_->setActiveArraySize(width, height);
}

void Engine::setCropWindowSize(int width, int height) {
  impl_->setCropWindowSize(width, height);
}

void Engine::setStabilizationStrength(double strength) {
  impl_->setStrength(strength);
}

int Engine::numStrips() const { return impl_->numStrips(); }
int Engine::numFramesToLookAhead() const {
  return impl_->numFramesToLookAhead();
}
bool Engine::isTripodMode() const { return impl_->isTripodMode(); }

bool Engine::pushGyro(const GyroSample &sample) {
  return impl_->pushGyro(sample);
}

bool Engine::pushLensOffset(const LensOffsetSample &sample) {
  return impl_->pushLensOffset(sample);
}

std::optional<StabilizedFrame>
Engine::processFrame(const FrameMetadata &frame) {
  return impl_->processFrame(frame);
}

std::vector<StabilizedFrame> Engine::flush() { return impl_->flush(); }

bool Engine::getTransformBetweenFrames(
    std::int64_t from_timestamp_ns, std::int64_t to_timestamp_ns,
    std::vector<Mat3> *strip_transforms) const {
  return impl_->getTransformBetweenFrames(from_timestamp_ns, to_timestamp_ns,
                                          strip_transforms);
}

} // namespace mgc_eis_reconstruction
