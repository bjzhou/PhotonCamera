#ifndef IMAGE_IO_BASE_TYPES_H_  // NOLINT
#define IMAGE_IO_BASE_TYPES_H_  // NOLINT

#include <cstdint>
#include <cstdlib>

namespace photos_editing_formats {
namespace image_io {

/// The various integer and byte types used in this package.
using Byte = std::uint8_t;
using Int32 = std::int32_t;
using Int64 = std::int64_t;
using UInt8 = std::uint8_t;
using UInt16 = std::uint16_t;
using UInt32 = std::uint32_t;
using UInt64 = std::uint64_t;

/// A Byte value and a validity flag.
struct ValidatedByte {
  explicit ValidatedByte(Byte value_arg) : value(value_arg), is_valid(true) {}
  ValidatedByte(const ValidatedByte&) = default;
  ValidatedByte& operator=(const ValidatedByte&) = default;
  Byte value;
  bool is_valid;
};

/// Equality operator for ValidatedByte
inline bool operator==(const ValidatedByte& lhs, const ValidatedByte& rhs) {
  return lhs.value == rhs.value && lhs.is_valid == rhs.is_valid;
}

/// Inquality operator for ValidatedByte
inline bool operator!=(const ValidatedByte& lhs, const ValidatedByte& rhs) {
  return lhs.value != rhs.value || lhs.is_valid != rhs.is_valid;
}

/// @return a validated byte that has a false is_valid value.
inline ValidatedByte InvalidByte() {
  ValidatedByte invalid_byte(0);
  invalid_byte.is_valid = false;
  return invalid_byte;
}

}  // namespace image_io
}  // namespace photos_editing_formats

#endif // IMAGE_IO_BASE_TYPES_H_  // NOLINT
