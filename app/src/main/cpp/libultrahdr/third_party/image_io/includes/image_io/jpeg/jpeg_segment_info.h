#ifndef IMAGE_IO_JPEG_JPEG_SEGMENT_INFO_H_  // NOLINT
#define IMAGE_IO_JPEG_JPEG_SEGMENT_INFO_H_  // NOLINT

#include <string>
#include <vector>

#include "image_io/base/data_range.h"
#include "image_io/base/types.h"

namespace photos_editing_formats {
namespace image_io {

/// Interesting segment types.
const char kExif[] = "Exif";
const char kJfif[] = "JFIF";
const char kMpf[] = "MPF";

/// A class that holds interesting information about a JpegSegment.
class JpegSegmentInfo {
 public:
  /// @param image_index The index of the image in a @c DataSource that contains
  ///     the segment.
  /// @param data_range The range in the segment in the @c DataSource.
  /// @param type The type of segment.
  JpegSegmentInfo(size_t image_index, const DataRange& data_range,
                  const std::string& type)
      : image_index_(image_index), data_range_(data_range), type_(type) {}

  /// Constructs an empty, invalid segment info.
  JpegSegmentInfo() : image_index_(0) {}

  JpegSegmentInfo(const JpegSegmentInfo&) = default;
  JpegSegmentInfo& operator=(const JpegSegmentInfo&) = default;

  /// @param rhs The segment info to compare with this one.
  /// @return Whether the segment infos are equal
  bool operator==(const JpegSegmentInfo& rhs) const {
    return image_index_ == rhs.image_index_ && data_range_ == rhs.data_range_ &&
           type_ == rhs.type_ && bytes_ == rhs.bytes_;
  }

  /// @param rhs The segment info to compare with this one.
  /// @return Whether the segment infos are not equal
  bool operator!=(const JpegSegmentInfo& rhs) const {
    return !(*this == rhs);
  }

  /// @return Whether the segment info is valid.
  bool IsValid() const { return !type_.empty() && data_range_.IsValid(); }

  /// @return The image index of the segment info.
  size_t GetImageIndex() const { return image_index_; }

  /// @return The data range of the segment info.
  const DataRange& GetDataRange() const { return data_range_; }

  /// @return The type of the segment info.
  const std::string& GetType() const { return type_; }

  /// @return The (optional) bytes of the segment to which the info refers.  The
  ///     vector will be empty unless the GetMutableBytes() function has been
  ///     and the vector filled with the segment contents.
  const std::vector<Byte>& GetBytes() const { return bytes_; }

  /// @return A non-const pointer to the bytes vector.
  std::vector<Byte>* GetMutableBytes() { return &bytes_; }

 private:
  // The image index where the segment is located.
  size_t image_index_;

  // The data range of the segment.
  DataRange data_range_;

  // The type of segment.
  std::string type_;

  // The (optional) bytes of the segment.
  std::vector<Byte> bytes_;
};

}  // namespace image_io
}  // namespace photos_editing_formats

#endif // IMAGE_IO_JPEG_JPEG_SEGMENT_INFO_H_  // NOLINT
