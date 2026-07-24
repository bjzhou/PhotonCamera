#include "image_io/jpeg/jpeg_xmp_info_builder.h"

#include <string>

namespace photos_editing_formats {
namespace image_io {

void JpegXmpInfoBuilder::ProcessSegment(const JpegSegment& segment) {
  // If the property has not yet been found, look for it, and if found, add the
  // segment's range to the vector of ranges.
  size_t extended_xmp_data_begin =
      segment.GetPayloadDataLocation() + kXmpExtendedHeaderSize;
  size_t property_value_begin = extended_xmp_data_begin;
  if (property_segment_ranges_.empty()) {
    std::string property_name =
        JpegXmpInfo::GetDataPropertyName(xmp_info_type_);
    property_value_begin = segment.FindXmpPropertyValueBegin(
        extended_xmp_data_begin, property_name.c_str());
    if (property_value_begin != segment.GetEnd()) {
      property_segment_ranges_.push_back(segment.GetDataRange());
    }
  } else if (!property_end_segment_range_.IsValid()) {
    // The start of the property value was encountered in a previous segment -
    // if the closing quote has not yet been found, then add the segment's range
    // to the vector or ranges.
    property_segment_ranges_.push_back(segment.GetDataRange());
  }

  // If the start of the property value has been found but the end has not, look
  // for the end in this segment.
  if (!property_segment_ranges_.empty() &&
      !property_end_segment_range_.IsValid()) {
    size_t property_value_end =
        segment.FindXmpPropertyValueEnd(property_value_begin);
    if (property_value_end != segment.GetEnd()) {
      property_end_segment_range_ = segment.GetDataRange();
    }
  }
}

}  // namespace image_io
}  // namespace photos_editing_formats
