#ifndef IMAGE_IO_BASE_BYTE_DATA_H_  // NOLINT
#define IMAGE_IO_BASE_BYTE_DATA_H_  // NOLINT

#include <cctype>
#include <string>

#include "image_io/base/types.h"

namespace photos_editing_formats {
namespace image_io {

/// A string representation of byte data destined to be added to a ByteBuffer,
/// and thence defining a portion of a DataSegment.
class ByteData {
 public:
  /// The type of data represented in the string value.
  enum Type {
    /// The string value contains hex digits.
    kHex,

    /// The string value contains ascii text. When adding the string to
    /// a ByteBuffer, do not add the terminating null character.
    kAscii,

    /// The string value contains ascii text. When adding the string to
    /// a ByteBuffer, add the terminating null character as well.
    kAscii0
  };

  /// @param type The type of byte data
  /// @param value The string value of the byte data.
  ByteData(Type type, const std::string& value) : type_(type), value_(value) {}

  /// @return The type of byte data.
  Type GetType() const { return type_; }

  /// @return The string value of the byte data.
  const std::string& GetValue() const { return value_; }

  /// @return Whether the byte data string value has a valid length and is made
  ///     up of a valid set of characters.
  bool IsValid() const { return IsValidLength() && HasValidCharacters(); }

  /// @return Whether the byte data string value has a valid length. The kAscii
  ///     and kAscii0 type values have no restrictions, but the kHex type values
  ///     must have an even number of characters (zero length is ok).
  bool IsValidLength() const {
    return type_ != kHex || ((value_.length() % 2) == 0u);
  }

  /// @return Whether the byte data string value is made up of valid characters.
  ///     The kAscii and kAscii0 type values have no restrictions, but the kHex
  ///     type values can only have these characters: [0-9][a-f][A-F]
  bool HasValidCharacters() const {
    if (type_ != kHex) {
      return true;
    }
    for (const auto& chr : value_) {
      if (!isxdigit(chr)) {
        return false;
      }
    }
    return true;
  }

  /// @return The number of bytes this data requires when converted to Bytes,
  ///     or 0 if the byte data is invalid.
  size_t GetByteCount() const {
    if (!IsValid()) {
      return 0;
    } else if (type_ == kHex) {
      return value_.length() / 2;
    } else if (type_ == kAscii) {
      return value_.length();
    } else {
      return value_.length() + 1;
    }
  }

  /// @param hex_digit The hex character to convert to its decimal equivalent.
  /// @return The decimal equivalent of the hex_digit, or -1 if the character is
  ///     not a valid hex digit.
  static int Hex2Decimal(char hex_digit) {
    if (hex_digit >= '0' && hex_digit <= '9') {
      return static_cast<int>(hex_digit - '0');
    } else if (hex_digit >= 'a' && hex_digit <= 'f') {
      return static_cast<int>(hex_digit - 'a' + 10);
    } else if (hex_digit >= 'A' && hex_digit <= 'F') {
      return static_cast<int>(hex_digit - 'A' + 10);
    } else {
      return -1;
    }
  }

  /// @param hi_char The hi-order nibble of the byte.
  /// @param hi_char The lo-order nibble of the byte.
  /// @param value The pointer to the Byte to receive the value.
  /// @return Whether the conversion was successful.
  static bool Hex2Byte(char hi_char, char lo_char, Byte* value) {
    int hi = Hex2Decimal(hi_char);
    int lo = Hex2Decimal(lo_char);
    if (hi < 0 || lo < 0 || value == nullptr) {
      return false;
    }
    *value = ((hi << 4) | lo);
    return true;
  }

  /// @param value The byte value to convert to a two digit hex string.
  /// @return The hex string equivalent of the value.
  static std::string Byte2Hex(Byte value) {
    const char kHexChars[] = "0123456789ABCDEF";
    std::string str(2, ' ');
    str[0] = kHexChars[(value >> 4) & 0xF];
    str[1] = kHexChars[value & 0xF];
    return str;
  }

  /// @param value The size_t value to convert to an eight digit hex string.
  /// @return The big endian hex string equivalent of the value.
  static std::string Size2BigEndianHex(size_t value) {
    std::string hex_string = Byte2Hex((value >> 24) & 0xFF);
    hex_string += Byte2Hex((value >> 16) & 0xFF);
    hex_string += Byte2Hex((value >> 8) & 0xFF);
    hex_string += Byte2Hex(value & 0xFF);
    return hex_string;
  }

  /// @param value The UInt16 value to convert to an eight digit hex string.
  /// @return The big endian hex string equivalent of the value.
  static std::string UInt162BigEndianHex(UInt16 value) {
    std::string hex_string = Byte2Hex((value >> 8) & 0xFF);
    hex_string += Byte2Hex(value & 0xFF);
    return hex_string;
  }

 private:
  Type type_;
  std::string value_;
};

}  // namespace image_io
}  // namespace photos_editing_formats

#endif // IMAGE_IO_BASE_BYTE_DATA_H_  // NOLINT
