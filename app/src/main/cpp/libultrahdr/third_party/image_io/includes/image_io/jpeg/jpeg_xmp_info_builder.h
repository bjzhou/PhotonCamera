#ifndef IMAGE_IO_JPEG_JPEG_XMP_INFO_BUILDER_H_  // NOLINT
#define IMAGE_IO_JPEG_JPEG_XMP_INFO_BUILDER_H_  // NOLINT

#include <vector>

#include "image_io/jpeg/jpeg_segment.h"
#include "image_io/jpeg/jpeg_xmp_info.h"

namespace photos_editing_formats {
namespace image_io {

/// A helper class for building information about the segments that contain
/// extended xmp data of various types.
class JpegXmpInfoBuilder {
 public:
  /// @param xmp_info_type The type of xmp information to build.
  explicit JpegXmpInfoBuilder(JpegXmpInfo::Type xmp_info_type)
      : xmp_info_type_(xmp_info_type) {}

  /// @param segment The segment to examine for xmp data.
  void ProcessSegment(const JpegSegment& segment);

  /// @return The vector of segment data ranges that contains xmp property data.
  const std::vector<DataRange>& GetPropertySegmentRanges() const {
    return property_segment_ranges_;
  }

 private:
  /// The type of xmp data to collect.
  JpegXmpInfo::Type xmp_info_type_;

  /// The vector of segment data ranges that contains xmp property data.
  std::vector<DataRange> property_segment_ranges_;

  /// The segment data range that contains the xmp property data end.
  DataRange property_end_segment_range_;
};

}  // namespace image_io
}  // namespace photos_editing_formats

#endif // IMAGE_IO_JPEG_JPEG_XMP_INFO_BUILDER_H_  // NOLINT
