#include "image_io/jpeg/jpeg_info_builder.h"

#include <limits>
#include <sstream>
#include <string>

#include "image_io/base/message_handler.h"
#include "image_io/jpeg/jpeg_marker.h"
#include "image_io/jpeg/jpeg_scanner.h"
#include "image_io/jpeg/jpeg_segment.h"

namespace photos_editing_formats {
namespace image_io {

using std::string;
using std::stringstream;
using std::vector;

JpegInfoBuilder::JpegInfoBuilder()
    : image_limit_(std::numeric_limits<int>::max()), image_count_(0),
      gdepth_info_builder_(JpegXmpInfo::kGDepthInfoType),
      gimage_info_builder_(JpegXmpInfo::kGImageInfoType) {}

void JpegInfoBuilder::SetCaptureSegmentBytes(
    const std::string& segment_info_type) {
  capture_segment_bytes_types_.insert(segment_info_type);
}

void JpegInfoBuilder::Start(JpegScanner* scanner) {
  JpegMarker::Flags marker_flags;
  marker_flags[JpegMarker::kSOI] = true;
  marker_flags[JpegMarker::kEOI] = true;
  marker_flags[JpegMarker::kAPP0] = true;
  marker_flags[JpegMarker::kAPP1] = true;
  marker_flags[JpegMarker::kAPP2] = true;
  scanner->UpdateInterestingMarkerFlags(marker_flags);
}

void JpegInfoBuilder::Process(JpegScanner* scanner,
                              const JpegSegment& segment) {
  // SOI segments are used to track of the number of images in the JPEG file.
  // Apple depth images start with a SOI marker, so store its range for later.
  JpegMarker marker = segment.GetMarker();
  if (marker.GetType() == JpegMarker::kSOI) {
    image_count_++;
    image_mpf_count_.push_back(0);
    image_xmp_apple_depth_count_.push_back(0);
    image_xmp_apple_matte_count_.push_back(0);
    most_recent_soi_marker_range_ =
        DataRange(segment.GetBegin(), segment.GetBegin() + JpegMarker::kLength);
  } else if (marker.GetType() == JpegMarker::kEOI) {
    if (most_recent_soi_marker_range_.IsValid()) {
      DataRange image_range(most_recent_soi_marker_range_.GetBegin(),
                            segment.GetBegin() + JpegMarker::kLength);
      jpeg_info_.AddImageRange(image_range);
      // This image range might represent the Apple depth or matte image if
      // other info indicates such an image is in progress and the apple image
      // range has not yet been set.
      if (HasAppleDepth() && !jpeg_info_.GetAppleDepthImageRange().IsValid()) {
        jpeg_info_.SetAppleDepthImageRange(image_range);
      }
      if (HasAppleMatte() && !jpeg_info_.GetAppleMatteImageRange().IsValid()) {
        jpeg_info_.SetAppleMatteImageRange(image_range);
      }
      if (image_count_ >= image_limit_) {
        scanner->SetDone();
      }
    }
  } else if (marker.GetType() == JpegMarker::kAPP0) {
    // APP0/JFIF segments are interesting.
    if (image_count_ > 0 && IsJfifSegment(segment)) {
      const auto& data_range = segment.GetDataRange();
      JpegSegmentInfo segment_info(image_count_ - 1, data_range, kJfif);
      MaybeCaptureSegmentBytes(kJfif, segment, segment_info.GetMutableBytes());
      jpeg_info_.AddSegmentInfo(segment_info);
    }
  } else if (marker.GetType() == JpegMarker::kAPP2) {
    // APP2/MPF segments. JPEG files with Apple depth information have this
    // segment in the primary (first) image of the file, but note their presence
    // where ever they are found.
    if (image_count_ > 0 && IsMpfSegment(segment)) {
      ++image_mpf_count_[image_count_ - 1];
      const auto& data_range = segment.GetDataRange();
      JpegSegmentInfo segment_info(image_count_ - 1, data_range, kMpf);
      MaybeCaptureSegmentBytes(kMpf, segment, segment_info.GetMutableBytes());
      jpeg_info_.AddSegmentInfo(segment_info);
    }
  } else if (marker.GetType() == JpegMarker::kAPP1) {
    // APP1/XMP segments. Both Apple depth and GDepthV1 image formats have
    // APP1/XMP segments with important information in them. There are two types
    // of XMP segments, a primary one (that starts with kXmpId) and an extended
    // one (that starts with kExtendedXmpId). Apple depth information is only in
    // the former, while GDepthV1/GImageV1 information is in both.
    if (IsPrimaryXmpSegment(segment)) {
      // The primary XMP segment in a non-primary image (i.e., not the first
      // image in the file) may contain Apple depth/matte information.
      if (image_count_ > 1 && HasId(segment, kXmpAppleDepthId)) {
        ++image_xmp_apple_depth_count_[image_count_ - 1];
      } else if (image_count_ > 1 && HasId(segment, kXmpAppleMatteId)) {
        ++image_xmp_apple_matte_count_[image_count_ - 1];
      } else if (image_count_ == 1 && (HasId(segment, kXmpGDepthV1Id) ||
                                       HasId(segment, kXmpGImageV1Id))) {
        // The primary XMP segment in the primary image may contain GDepthV1
        // and/or GImageV1 data.
        SetPrimaryXmpGuid(segment);
        SetXmpMimeType(segment, JpegXmpInfo::kGDepthInfoType);
        SetXmpMimeType(segment, JpegXmpInfo::kGImageInfoType);
      }
    } else if (image_count_ == 1 && IsExtendedXmpSegment(segment)) {
      // The extended XMP segment in the primary image may contain GDepth and/or
      // GImage data.
      if (HasMatchingExtendedXmpGuid(segment)) {
        gdepth_info_builder_.ProcessSegment(segment);
        gimage_info_builder_.ProcessSegment(segment);
      }
    } else if (image_count_ > 0 && IsExifSegment(segment)) {
      const auto& data_range = segment.GetDataRange();
      JpegSegmentInfo segment_info(image_count_ - 1, data_range, kExif);
      MaybeCaptureSegmentBytes(kExif, segment, segment_info.GetMutableBytes());
      jpeg_info_.AddSegmentInfo(segment_info);
    }
  }
}

void JpegInfoBuilder::Finish(JpegScanner* scanner) {
  jpeg_info_.SetSegmentDataRanges(
      JpegXmpInfo::kGDepthInfoType,
      gdepth_info_builder_.GetPropertySegmentRanges());
  jpeg_info_.SetSegmentDataRanges(
      JpegXmpInfo::kGImageInfoType,
      gimage_info_builder_.GetPropertySegmentRanges());
}

bool JpegInfoBuilder::HasAppleDepth() const {
  if (image_count_ > 1 && image_mpf_count_[0]) {
    for (size_t image = 1; image < image_xmp_apple_depth_count_.size();
         ++image) {
      if (image_xmp_apple_depth_count_[image]) {
        return true;
      }
    }
  }
  return false;
}

bool JpegInfoBuilder::HasAppleMatte() const {
  if (image_count_ > 1 && image_mpf_count_[0]) {
    for (size_t image = 1; image < image_xmp_apple_matte_count_.size();
         ++image) {
      if (image_xmp_apple_matte_count_[image]) {
        return true;
      }
    }
  }
  return false;
}

bool JpegInfoBuilder::IsPrimaryXmpSegment(const JpegSegment& segment) const {
  size_t location = segment.GetPayloadDataLocation();
  return segment.BytesAtLocationStartWith(location, kXmpId);
}

bool JpegInfoBuilder::IsExtendedXmpSegment(const JpegSegment& segment) const {
  size_t location = segment.GetPayloadDataLocation();
  return segment.BytesAtLocationStartWith(location, kXmpExtendedId);
}

bool JpegInfoBuilder::IsMpfSegment(const JpegSegment& segment) const {
  size_t payload_data_location = segment.GetPayloadDataLocation();
  return segment.BytesAtLocationStartWith(payload_data_location, kMpf);
}

bool JpegInfoBuilder::IsExifSegment(const JpegSegment& segment) const {
  size_t payload_data_location = segment.GetPayloadDataLocation();
  return segment.BytesAtLocationStartWith(payload_data_location, kExif);
}

bool JpegInfoBuilder::IsJfifSegment(const JpegSegment& segment) const {
  size_t payload_data_location = segment.GetPayloadDataLocation();
  return segment.BytesAtLocationStartWith(payload_data_location, kJfif);
}

void JpegInfoBuilder::MaybeCaptureSegmentBytes(const std::string& type,
                                               const JpegSegment& segment,
                                               std::vector<Byte>* bytes) const {
  if (capture_segment_bytes_types_.count(type) == 0) {
    return;
  }
  bytes->clear();
  bytes->reserve(segment.GetLength());
  size_t segment_begin = segment.GetBegin();
  size_t segment_end = segment.GetEnd();
  for (size_t location = segment_begin; location < segment_end; ++location) {
    ValidatedByte validated_byte = segment.GetValidatedByte(location);
    if (!validated_byte.is_valid) {
      bytes->clear();
      return;
    }
    bytes->emplace_back(validated_byte.value);
  }
}

bool JpegInfoBuilder::HasMatchingExtendedXmpGuid(
    const JpegSegment& segment) const {
  if (primary_xmp_guid_.empty()) {
    return false;
  }
  if (segment.GetLength() <= kXmpExtendedHeaderSize) {
    return false;
  }
  size_t start = segment.GetPayloadDataLocation() + sizeof(kXmpExtendedId);
  return segment.BytesAtLocationStartWith(start, primary_xmp_guid_.c_str());
}

bool JpegInfoBuilder::HasId(const JpegSegment& segment, const char* id) const {
  return segment.BytesAtLocationContain(segment.GetPayloadDataLocation(), id);
}

void JpegInfoBuilder::SetPrimaryXmpGuid(const JpegSegment& segment) {
  primary_xmp_guid_ = segment.ExtractXmpPropertyValue(
      segment.GetPayloadDataLocation(), kXmpHasExtendedId);
}

void JpegInfoBuilder::SetXmpMimeType(const JpegSegment& segment,
                                     JpegXmpInfo::Type xmp_info_type) {
  string property_name = JpegXmpInfo::GetMimePropertyName(xmp_info_type);
  jpeg_info_.SetMimeType(xmp_info_type, segment.ExtractXmpPropertyValue(
                                            segment.GetPayloadDataLocation(),
                                            property_name.c_str()));
}

}  // namespace image_io
}  // namespace photos_editing_formats
