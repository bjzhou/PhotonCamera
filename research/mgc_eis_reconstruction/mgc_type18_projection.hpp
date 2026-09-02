#pragma once

#include "mgc_eis_reconstruction.hpp"
#include "mgc_type18_lookahead.hpp"

#include <array>
#include <cstddef>
#include <cstdint>
#include <functional>
#include <vector>

namespace mgc_eis_reconstruction::type18 {

// Exact per-row offsets from 0x22CE380 when per-scanline projection is
// enabled. The samples cover both rolling-shutter endpoints: i*skew/(N-1).
std::vector<std::int64_t>
makeRollingShutterRowOffsets(std::int64_t rolling_shutter_ns, int row_count);

// The non-per-scanline branch builds two projections at explicit source row
// coordinates. MGC converts the float numerator to int64 before signed
// division by the integer-valued frame height.
std::array<std::int64_t, 2> makeBoundingRowOffsets(
    std::int64_t rolling_shutter_ns,
    const std::array<double, 2> &source_rows, double frame_height);

// Exact decision at 0x33BF394. A request just beyond the newest gyro sample
// is clamped back only when its positive gap is smaller than tolerance_ns.
std::int64_t adjustGyroQueryTimestamp(std::int64_t requested_ns,
                                      std::int64_t newest_gyro_ns,
                                      std::int64_t tolerance_ns);

Mat3 makeCameraProjection(const Mat3 &intrinsics,
                          const Quaternion &orientation);

// Reconstructs the projection-matrix part of 0x22CE380 after timestamped gyro
// and optional OIS-adjusted intrinsics have been resolved. intrinsics accepts
// either one shared matrix or one matrix per row.
std::vector<Mat3> buildRealCameraProjectionRows(
    const std::vector<Quaternion> &actual_orientations,
    const std::vector<Mat3> &intrinsics);

// Reconstructs 0x229B84C/0x22CF06C. Each row pose is composed in the binary's
// order: row_relative * base_virtual, then P_virtual = K * R.
std::vector<Mat3> buildVirtualCameraProjectionRows(
    const Quaternion &base_virtual_orientation,
    const std::vector<Quaternion> &row_relative_orientations,
    const std::vector<Mat3> &intrinsics);

// Matrix core of 0x229D234. 0x5886128 first post-multiplies the injected
// projection, then 0x5885F18 pre-multiplies inverse(P_real):
// H = (P_virtual * injected_projection) * inverse(P_real).
std::vector<Mat3> composeDenseWarpRows(
    const std::vector<Mat3> &real_projections,
    const std::vector<Mat3> &virtual_projections,
    bool virtual_projection_per_row,
    const Mat3 &injected_projection = Mat3::identity());

// Exact matrix-space adapter at V25 0x5667084. The native EIS core works in
// top-left-origin pixel coordinates while Java's qhi/iha mesh consumes clip
// coordinates. H_clip = C_pixel_to_clip * H_pixel * P_clip_to_pixel.
Mat3 convertPixelHomographyToClip(const Mat3 &pixel_homography,
                                  double frame_width,
                                  double frame_height);

// V25 0x5666FA0, consumed at 0x22DD5AC after the pixel-to-clip adapter.
// MGC represents zoom projectively: dividing the homogeneous denominator row
// makes x/w and y/w expand about clip-space origin without changing the
// source texture coordinates.
Mat3 applyCropZoomToClipHomography(const Mat3 &clip_homography,
                                   double zoom_factor);

// Result of 0x22CDB08. MGC initializes the maximum to -1 and only marks the
// single worst scanline interval when that maximum is positive.
struct ProjectionProtrusionResult {
  double maximum = -1.0;
  std::size_t worst_interval = 0;
  bool has_worst_interval = false;
  std::vector<bool> worst_interval_mask;
};

// Reconstructs the geometric core at 0x22CDB08 and its helpers 0x5887A8C,
// 0x588A500, and 0x588A840. inv_real_projections must contain at least two
// scanline-boundary matrices. virtual_projections accepts one shared matrix or
// one matrix per real boundary. input_interval/output_interval/allowed are in
// pixel coordinates and are normalized by frame_width/frame_height only at
// the point where MGC performs the four protrusion tests.
ProjectionProtrusionResult evaluateProjectionProtrusion(
    const std::vector<Mat3> &inv_real_projections,
    const std::vector<Mat3> &virtual_projections,
    const ProtrusionRect &input_interval,
    const ProtrusionRect &output_interval,
    const ProtrusionRect &allowed,
    const std::vector<bool> &input_protrusion_mask, double frame_width,
    double frame_height);

using VirtualProjectionBuilder =
    std::function<std::vector<Mat3>(const Quaternion &)>;

// Exact scalar returned by 0x22CEB9C. Zero means the requested virtual pose
// already fits. Otherwise MGC tests the fallback pose, then binary-searches
// the slerp fraction using only the initially worst scanline interval. A
// required correction above 0.99, an invalid fallback, or insufficient
// projection rows returns the binary's 1.1 sentinel.
double computeFullGridCropCorrectionFraction(
    const Quaternion &requested_pose, const Quaternion &fallback_pose,
    const std::vector<Mat3> &inv_real_projections,
    const VirtualProjectionBuilder &build_virtual_projections,
    const ProtrusionRect &input_interval,
    const ProtrusionRect &output_interval,
    const ProtrusionRect &allowed, double frame_width, double frame_height,
    double maximum_allowed_protrusion);

} // namespace mgc_eis_reconstruction::type18
