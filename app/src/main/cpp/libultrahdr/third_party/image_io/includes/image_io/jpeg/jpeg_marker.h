#ifndef IMAGE_IO_JPEG_JPEG_MARKER_H_  // NOLINT
#define IMAGE_IO_JPEG_JPEG_MARKER_H_  // NOLINT

#include <bitset>
#include <string>

#include "image_io/base/types.h"

namespace photos_editing_formats {
namespace image_io {

/// The size of the array that would be needed to reference all marker types.
const size_t kJpegMarkerArraySize = 256;

/// A JpegMarker begins each JpegSegment in a JPEG file. The first byte of a
/// marker is 0xFF, and the second byte is the marker type value. Bytes with
/// values 0x00 and 0xFF indicate not a JpegMarker, but a zero byte or fill
/// byte, respectively. That is the sequence FF00 must be interpreted as a
/// single byte with a 0 value. The specification says that multiple fill bytes
/// may appear before a valid marker start: FFFFFFDA - the leading FFFF should
/// be ignored.
class JpegMarker {
 public:
  /// The length of the marker in the JPEG file. One byte for the 0xFF value,
  /// and one byte for the marker type.
  static const size_t kLength = 2;

  /// The offset from the start of the JpegMarker that contains the marker type.
  static const size_t kTypeOffset = 1;

  /// The special byte value that may start a marker.
  static const Byte kStart = 0xFF;

  /// Special marker type values referenced elsewhere in the code.
  static const Byte kZERO = 0;
  static const Byte kSOS = 0xDA;
  static const Byte kSOI = 0xD8;
  static const Byte kEOI = 0xD9;
  static const Byte kAPP0 = 0xE0;
  static const Byte kAPP1 = 0xE1;
  static const Byte kAPP2 = 0xE2;
  static const Byte kFILL = 0xFF;

  /// A set of bits, one for each type of marker.
  using Flags = std::bitset<kJpegMarkerArraySize>;

  /// Creates a JpegMarker with the given type value.
  explicit JpegMarker(Byte type) : type_(type) {}

  JpegMarker() = delete;

  /// Not all byte values are used to represent markers. Bytes with values 0x00
  /// and 0xFF indicate a zero byte or fill byte, respectively.
  /// @return Whether this is a valid marker.
  bool IsValid() const { return type_ != kZERO && type_ != kFILL; }

  /// @return The type of the marker.
  Byte GetType() const { return type_; }

  /// @return The name of the marker type.
  const std::string GetName() const;

  /// @param prefix A prefix for the returned string.
  /// @return The <prefix>XX hex string representation of the type.
  const std::string GetHexString(const std::string& prefix) const;

  /// Some markers have two extra bytes that indicate the size of the segment's
  /// data payload. See https://www.w3.org/Graphics/JPEG/itu-t81.pdf, Table B-2.
  /// @return Whether this marker type has such a variable length payload.
  bool HasVariablePayloadSize() const;

  /// Some markers are delimiters in an otherwise continuous stream of bytes in
  /// the JPEG file. See https://www.w3.org/Graphics/JPEG/itu-t81.pdf, Section
  /// B.2.1.
  /// @return Whether this is an entropy segment delimiter marker.
  bool IsEntropySegmentDelimiter() const;

 private:
  /// The type value of the marker.
  Byte type_;
};

}  // namespace image_io
}  // namespace photos_editing_formats

#endif // IMAGE_IO_JPEG_JPEG_MARKER_H_  // NOLINT
