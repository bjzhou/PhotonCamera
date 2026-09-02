#include "mgc_type18_projection.hpp"

#include <algorithm>
#include <array>
#include <cmath>
#include <limits>
#include <stdexcept>
#include <string>

namespace mgc_eis_reconstruction::type18 {
namespace {

const Mat3 &matrixForRow(const std::vector<Mat3> &matrices,
                         std::size_t row, std::size_t row_count,
                         const char *label) {
  if (matrices.size() == 1) {
    return matrices.front();
  }
  if (matrices.size() == row_count) {
    return matrices[row];
  }
  throw std::invalid_argument(std::string(label) +
                              " must contain one or one-per-row matrix");
}

Mat3 fitHomography(const std::array<Vec2, 4> &source,
                   const std::array<Vec2, 4> &destination) {
  // h22 is fixed to one, leaving the same eight projective degrees of
  // freedom solved by geometry helper 0x5886CD8.
  std::array<std::array<double, 9>, 8> augmented{};
  for (std::size_t point = 0; point < source.size(); ++point) {
    const double x = source[point].x;
    const double y = source[point].y;
    const double u = destination[point].x;
    const double v = destination[point].y;
    auto &x_equation = augmented[point * 2];
    x_equation = {x, y, 1.0, 0.0, 0.0, 0.0, -u * x, -u * y, u};
    auto &y_equation = augmented[point * 2 + 1];
    y_equation = {0.0, 0.0, 0.0, x, y, 1.0, -v * x, -v * y, v};
  }

  for (std::size_t column = 0; column < 8; ++column) {
    std::size_t pivot = column;
    for (std::size_t row = column + 1; row < 8; ++row) {
      if (std::abs(augmented[row][column]) >
          std::abs(augmented[pivot][column])) {
        pivot = row;
      }
    }
    if (std::abs(augmented[pivot][column]) <=
        std::numeric_limits<double>::epsilon()) {
      throw std::invalid_argument("Scanline quadrilateral is degenerate");
    }
    if (pivot != column) {
      std::swap(augmented[pivot], augmented[column]);
    }

    const double divisor = augmented[column][column];
    for (std::size_t entry = column; entry < 9; ++entry) {
      augmented[column][entry] /= divisor;
    }
    for (std::size_t row = 0; row < 8; ++row) {
      if (row == column) {
        continue;
      }
      const double factor = augmented[row][column];
      for (std::size_t entry = column; entry < 9; ++entry) {
        augmented[row][entry] -= factor * augmented[column][entry];
      }
    }
  }

  Mat3 result = Mat3::identity();
  result.at(0, 0) = augmented[0][8];
  result.at(0, 1) = augmented[1][8];
  result.at(0, 2) = augmented[2][8];
  result.at(1, 0) = augmented[3][8];
  result.at(1, 1) = augmented[4][8];
  result.at(1, 2) = augmented[5][8];
  result.at(2, 0) = augmented[6][8];
  result.at(2, 1) = augmented[7][8];
  return result;
}

ProtrusionRect normalizedRect(const ProtrusionRect &rect, double width,
                              double height) {
  return {rect.left / width, rect.right / width, rect.top / height,
          rect.bottom / height};
}

std::array<Vec2, 4> rectangleCorners(const ProtrusionRect &rect) {
  return {{{rect.left, rect.top},
           {rect.right, rect.top},
           {rect.left, rect.bottom},
           {rect.right, rect.bottom}}};
}

} // namespace

std::vector<std::int64_t>
makeRollingShutterRowOffsets(std::int64_t rolling_shutter_ns, int row_count) {
  if (row_count <= 0) {
    throw std::invalid_argument("Rolling-shutter row count must be positive");
  }
  if (row_count == 1) {
    return {0};
  }

  std::vector<std::int64_t> offsets;
  offsets.reserve(static_cast<std::size_t>(row_count));
  const std::int64_t denominator = row_count - 1;
  for (int row = 0; row < row_count; ++row) {
    offsets.push_back(static_cast<std::int64_t>(row) * rolling_shutter_ns /
                      denominator);
  }
  return offsets;
}

std::array<std::int64_t, 2> makeBoundingRowOffsets(
    std::int64_t rolling_shutter_ns,
    const std::array<double, 2> &source_rows, double frame_height) {
  const std::int64_t integer_height =
      static_cast<std::int64_t>(static_cast<float>(frame_height));
  if (integer_height == 0) {
    throw std::invalid_argument("Frame height must not truncate to zero");
  }
  const float skew = static_cast<float>(rolling_shutter_ns);
  return {
      static_cast<std::int64_t>(static_cast<float>(source_rows[0]) * skew) /
          integer_height,
      static_cast<std::int64_t>(static_cast<float>(source_rows[1]) * skew) /
          integer_height,
  };
}

std::int64_t adjustGyroQueryTimestamp(std::int64_t requested_ns,
                                      std::int64_t newest_gyro_ns,
                                      std::int64_t tolerance_ns) {
  const std::int64_t gap = requested_ns - newest_gyro_ns;
  if (gap > 0 && gap < tolerance_ns && newest_gyro_ns >= 0) {
    return newest_gyro_ns;
  }
  return requested_ns;
}

Mat3 makeCameraProjection(const Mat3 &intrinsics,
                          const Quaternion &orientation) {
  // 0x229B7AC writes R first and 0x5885F18 performs lhs = rhs * lhs.
  return intrinsics * Mat3::fromQuaternion(orientation);
}

std::vector<Mat3> buildRealCameraProjectionRows(
    const std::vector<Quaternion> &actual_orientations,
    const std::vector<Mat3> &intrinsics) {
  if (actual_orientations.empty()) {
    return {};
  }
  std::vector<Mat3> result;
  result.reserve(actual_orientations.size());
  for (std::size_t row = 0; row < actual_orientations.size(); ++row) {
    result.push_back(makeCameraProjection(
        matrixForRow(intrinsics, row, actual_orientations.size(),
                     "Real intrinsics"),
        actual_orientations[row]));
  }
  return result;
}

std::vector<Mat3> buildVirtualCameraProjectionRows(
    const Quaternion &base_virtual_orientation,
    const std::vector<Quaternion> &row_relative_orientations,
    const std::vector<Mat3> &intrinsics) {
  const std::size_t row_count =
      row_relative_orientations.empty() ? 1
                                        : row_relative_orientations.size();
  std::vector<Mat3> result;
  result.reserve(row_count);
  for (std::size_t row = 0; row < row_count; ++row) {
    const Quaternion orientation =
        row_relative_orientations.empty()
            ? base_virtual_orientation
            : row_relative_orientations[row] * base_virtual_orientation;
    result.push_back(makeCameraProjection(
        matrixForRow(intrinsics, row, row_count, "Virtual intrinsics"),
        orientation));
  }
  return result;
}

std::vector<Mat3> composeDenseWarpRows(
    const std::vector<Mat3> &real_projections,
    const std::vector<Mat3> &virtual_projections,
    bool virtual_projection_per_row, const Mat3 &injected_projection) {
  if (real_projections.empty()) {
    return {};
  }
  if (virtual_projections.empty()) {
    throw std::invalid_argument("Virtual projection vector is empty");
  }
  if (virtual_projection_per_row &&
      virtual_projections.size() != real_projections.size()) {
    throw std::invalid_argument(
        "Per-row real and virtual projection counts must match");
  }

  std::vector<Mat3> result;
  result.reserve(real_projections.size());
  for (std::size_t row = 0; row < real_projections.size(); ++row) {
    const Mat3 &virtual_projection =
        virtual_projection_per_row ? virtual_projections[row]
                                   : virtual_projections.front();
    result.push_back((virtual_projection * injected_projection) *
                     real_projections[row].inverse());
  }
  return result;
}

Mat3 convertPixelHomographyToClip(const Mat3 &pixel_homography,
                                  double frame_width,
                                  double frame_height) {
  if (!(frame_width > 0.0) || !(frame_height > 0.0)) {
    throw std::invalid_argument("Frame dimensions must be positive");
  }
  const Mat3 clip_to_pixel{{
      frame_width * 0.5, 0.0, frame_width * 0.5,
      0.0, -frame_height * 0.5, frame_height * 0.5,
      0.0, 0.0, 1.0,
  }};
  const Mat3 pixel_to_clip{{
      2.0 / frame_width, 0.0, -1.0,
      0.0, -2.0 / frame_height, 1.0,
      0.0, 0.0, 1.0,
  }};
  Mat3 result = pixel_to_clip * pixel_homography * clip_to_pixel;
  const double scale = result.at(2, 2);
  if (std::abs(scale) <= std::numeric_limits<double>::epsilon()) {
    throw std::domain_error("Clip homography has a zero normalization term");
  }
  for (double &value : result.v) {
    value /= scale;
  }
  return result;
}

Mat3 applyCropZoomToClipHomography(const Mat3 &clip_homography,
                                   double zoom_factor) {
  if (zoom_factor == 0.0 || !std::isfinite(zoom_factor)) {
    throw std::invalid_argument("Crop zoom factor must be finite and nonzero");
  }
  Mat3 result = clip_homography;
  // homography_transform.cc::Zoom at V25 0x5666FA0 divides precisely the
  // third row (h20, h21, h22). Do not renormalize h22 afterwards: qhi/iha
  // consumes the homogeneous w and the projective scale is the crop itself.
  result.at(2, 0) /= zoom_factor;
  result.at(2, 1) /= zoom_factor;
  result.at(2, 2) /= zoom_factor;
  return result;
}

ProjectionProtrusionResult evaluateProjectionProtrusion(
    const std::vector<Mat3> &inv_real_projections,
    const std::vector<Mat3> &virtual_projections,
    const ProtrusionRect &input_interval,
    const ProtrusionRect &output_interval,
    const ProtrusionRect &allowed,
    const std::vector<bool> &input_protrusion_mask, double frame_width,
    double frame_height) {
  if (inv_real_projections.size() < 2) {
    throw std::invalid_argument(
        "At least two inverse real projections are required");
  }
  if (virtual_projections.empty()) {
    throw std::invalid_argument("Virtual projection vector is empty");
  }
  if (virtual_projections.size() >= 2 &&
      virtual_projections.size() != inv_real_projections.size()) {
    throw std::invalid_argument(
        "Real and per-row virtual projection counts must match");
  }
  const std::size_t interval_count = inv_real_projections.size() - 1;
  if (input_protrusion_mask.size() < interval_count) {
    throw std::invalid_argument(
        "Input protrusion mask is shorter than scanline interval count");
  }
  if (!(input_interval.left < input_interval.right) ||
      !(input_interval.top < input_interval.bottom) ||
      !(output_interval.left < output_interval.right) ||
      !(output_interval.top < output_interval.bottom)) {
    throw std::invalid_argument("Projection intervals must have positive area");
  }
  if (!(frame_width > 0.0) || !(frame_height > 0.0)) {
    throw std::invalid_argument("Frame dimensions must be positive");
  }

  ProjectionProtrusionResult result;
  result.worst_interval_mask.assign(interval_count, false);
  const ProtrusionRect normalized_allowed =
      normalizedRect(allowed, frame_width, frame_height);
  const double input_step =
      (input_interval.bottom - input_interval.top) /
      static_cast<double>(interval_count);
  const double output_step =
      (output_interval.bottom - output_interval.top) /
      static_cast<double>(interval_count);

  for (std::size_t interval = 0; interval < interval_count; ++interval) {
    if (!input_protrusion_mask[interval]) {
      continue;
    }
    const double input_top =
        input_interval.top + input_step * static_cast<double>(interval);
    const double input_bottom = input_interval.top +
                                input_step * static_cast<double>(interval + 1);
    const double output_top =
        output_interval.top + output_step * static_cast<double>(interval);
    const double output_bottom = output_interval.top +
                                 output_step * static_cast<double>(interval + 1);

    const ProtrusionRect source_rect{input_interval.left,
                                     input_interval.right, input_top,
                                     input_bottom};
    const std::array<Vec2, 4> source = rectangleCorners(source_rect);
    const std::size_t virtual_top =
        virtual_projections.size() >= 2 ? interval : 0;
    const std::size_t virtual_bottom =
        virtual_projections.size() >= 2 ? interval + 1 : 0;
    const Mat3 top_projection =
        virtual_projections[virtual_top] * inv_real_projections[interval];
    const Mat3 bottom_projection =
        virtual_projections[virtual_bottom] *
        inv_real_projections[interval + 1];
    const std::array<Vec2, 4> projected{
        top_projection.transformPoint(source[0]),
        top_projection.transformPoint(source[1]),
        bottom_projection.transformPoint(source[2]),
        bottom_projection.transformPoint(source[3]),
    };

    const Mat3 output_to_input = fitHomography(source, projected).inverse();
    const ProtrusionRect output_rect{output_interval.left,
                                     output_interval.right, output_top,
                                     output_bottom};
    const std::array<Vec2, 4> output_corners = rectangleCorners(output_rect);
    double interval_maximum = -1'000'000.0;
    for (const Vec2 &output_corner : output_corners) {
      const Vec2 input_point = output_to_input.transformPoint(output_corner);
      interval_maximum = std::max(
          interval_maximum,
          signedPointProtrusion(
              normalized_allowed,
              Vec2{input_point.x / frame_width,
                   input_point.y / frame_height}));
    }
    if (interval_maximum > result.maximum) {
      result.maximum = interval_maximum;
      result.worst_interval = interval;
      result.has_worst_interval = true;
    }
  }

  if (result.has_worst_interval && result.maximum > 0.0) {
    result.worst_interval_mask[result.worst_interval] = true;
  }
  return result;
}

double computeFullGridCropCorrectionFraction(
    const Quaternion &requested_pose, const Quaternion &fallback_pose,
    const std::vector<Mat3> &inv_real_projections,
    const VirtualProjectionBuilder &build_virtual_projections,
    const ProtrusionRect &input_interval,
    const ProtrusionRect &output_interval,
    const ProtrusionRect &allowed, double frame_width, double frame_height,
    double maximum_allowed_protrusion) {
  constexpr double kBinaryTolerance = 0.01;
  if (inv_real_projections.size() < 2) {
    return 1.0;
  }
  if (!build_virtual_projections) {
    throw std::invalid_argument("Virtual projection builder is empty");
  }

  const std::vector<bool> all_intervals(inv_real_projections.size() - 1,
                                        true);
  const ProjectionProtrusionResult requested = evaluateProjectionProtrusion(
      inv_real_projections, build_virtual_projections(requested_pose),
      input_interval, output_interval, allowed, all_intervals, frame_width,
      frame_height);
  if (requested.maximum <= 0.0) {
    return 0.0;
  }

  const ProjectionProtrusionResult fallback = evaluateProjectionProtrusion(
      inv_real_projections, build_virtual_projections(fallback_pose),
      input_interval, output_interval, allowed, all_intervals, frame_width,
      frame_height);
  if (fallback.maximum > 0.0) {
    return 1.0;
  }

  double low = 0.0;
  double high = 1.0;
  do {
    const double midpoint = (low + high) * 0.5;
    const Quaternion candidate = interpolatePose(
        requested_pose, fallback_pose, midpoint, requested_pose);
    const ProjectionProtrusionResult score = evaluateProjectionProtrusion(
        inv_real_projections, build_virtual_projections(candidate),
        input_interval, output_interval, allowed,
        requested.worst_interval_mask, frame_width, frame_height);
    if (score.maximum > maximum_allowed_protrusion) {
      low = midpoint;
    } else {
      high = midpoint;
    }
  } while (high - low > kBinaryTolerance);

  return std::min(high, 1.0);
}

} // namespace mgc_eis_reconstruction::type18
