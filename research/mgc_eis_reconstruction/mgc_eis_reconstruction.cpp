#include "mgc_eis_reconstruction.hpp"

#include <algorithm>
#include <cmath>
#include <limits>
#include <stdexcept>

namespace mgc_eis_reconstruction {
namespace {

constexpr double kEpsilon = 1.0e-12;

double clamp(double value, double minimum, double maximum) {
  return std::max(minimum, std::min(value, maximum));
}

double quaternionDot(const Quaternion &lhs, const Quaternion &rhs) {
  return lhs.w * rhs.w + lhs.x * rhs.x + lhs.y * rhs.y + lhs.z * rhs.z;
}

Quaternion negated(const Quaternion &value) {
  return {-value.w, -value.x, -value.y, -value.z};
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
  const double denominator =
      at(2, 0) * point.x + at(2, 1) * point.y + at(2, 2);
  if (std::abs(denominator) < kEpsilon) {
    return {std::numeric_limits<double>::infinity(),
            std::numeric_limits<double>::infinity()};
  }
  return {
      (at(0, 0) * point.x + at(0, 1) * point.y + at(0, 2)) / denominator,
      (at(1, 0) * point.x + at(1, 1) * point.y + at(1, 2)) / denominator,
  };
}

std::string confidenceNotice() {
  return "Clean-room reconstruction of the V25 fallback type-18 gyro, "
         "look-ahead, crop-pressure, rolling-shutter projection, and JNI "
         "matrix-adapter paths; no MGC shared object is loaded or packaged.";
}

} // namespace mgc_eis_reconstruction
