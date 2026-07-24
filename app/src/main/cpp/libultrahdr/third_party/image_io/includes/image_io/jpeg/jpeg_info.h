#ifndef IMAGE_IO_JPEG_JPEG_INFO_H_  // NOLINT
#define IMAGE_IO_JPEG_JPEG_INFO_H_  // NOLINT

#include <vector>

#include "image_io/base/data_range.h"
#include "image_io/jpeg/jpeg_segment_info.h"
#include "image_io/jpeg/jpeg_xmp_info.h"

namespace photos_editing_formats {
namespace image_io {

/// A class to represent interesting depth and image information in a JPEG file,
/// and where it is located so that it can be efficiently extracted.
class JpegInfo {
 public:
  JpegInfo() { JpegXmpInfo::InitializeVector(&xmp_info_vector_); }
  JpegInfo(const JpegInfo&) = default;
  JpegInfo& operator=(const JpegInfo&) = default;

  /// @return The vector of data ranges indicating the locations of the images.
  const std::vector<DataRange>& GetImageRanges() const { return image_ranges_; }

  /// @return The vector of interesting segment info structures.
  const std::vector<JpegSegmentInfo>& GetSegmentInfos() const {
    return segment_infos_;
  }

  /// @param image_index The image containing the sought after segment info.
  /// @param type The type of segment info to get.
  /// @return The segment info, or one that is invalid if not found.
  JpegSegmentInfo GetSegmentInfo(size_t image_index,
                                 const std::string& type) const {
    for (const auto& segment_info : GetSegmentInfos()) {
      if (segment_info.GetImageIndex() == image_index &&
          segment_info.GetType() == type) {
        return segment_info;
      }
    }
    return JpegSegmentInfo(0, DataRange(), "");
  }

  /// @return True if there is Apple depth information.
  bool HasAppleDepth() const { return apple_depth_image_range_.IsValid(); }

  /// @return True if there is Apple matte information.
  bool HasAppleMatte() const { return apple_matte_image_range_.IsValid(); }

  /// @return True if there is GDepth type depth information.
  bool HasGDepth() const {
    return HasImage(JpegXmpInfo::kGDepthInfoType);
  }

  /// @return True if there is GImage information.
  bool HasGImage() const {
    return HasImage(JpegXmpInfo::kGImageInfoType);
  }

  /// @return True if there is either Apple or GDepth information.
  bool HasDepth() const { return HasAppleDepth() || HasGDepth(); }

  /// @return True if there is an extratable image present.
  bool HasExtractableImage() const {
    return HasAppleDepth() || HasAppleMatte() || HasGDepth() || HasGImage();
  }

  /// @param xmp_info_type The type of xmp image information desired.
  /// @return True if there is information of the given type.
  bool HasImage(JpegXmpInfo::Type xmp_info_type) const {
    return !GetSegmentDataRanges(xmp_info_type).empty();
  }

  /// @return The DataRange where the Apple depth information is located.
  const DataRange& GetAppleDepthImageRange() const {
    return apple_depth_image_range_;
  }

  /// @return The DataRange where the Apple matte information is located.
  const DataRange& GetAppleMatteImageRange() const {
    return apple_matte_image_range_;
  }

  /// @param type The type of Xmp data to get the mime type of.
  /// @return The mime type for the Xmp data of the given type.
  std::string GetMimeType(JpegXmpInfo::Type type) const {
    return xmp_info_vector_[type].GetMimeType();
  }

  /// @param type The type of Xmp data to get the segment data ranges of.
  /// @return The segment data ranges containing the Xmp data of the given type.
  const std::vector<DataRange>& GetSegmentDataRanges(
      JpegXmpInfo::Type type) const {
    return xmp_info_vector_[type].GetSegmentDataRanges();
  }

  /// Adds a DataRange to the vector of image DataRanges.
  /// @param image_range The data range of an image.
  void AddImageRange(const DataRange& image_range) {
    image_ranges_.push_back(image_range);
  }

  /// Adds a JpegSegmentInfo to the vector of JpegSegmentInfos.
  /// @param jpeg_segment_info The info structure to add.
  void AddSegmentInfo(const JpegSegmentInfo& segment_info) {
    segment_infos_.push_back(segment_info);
  }

  /// @param data_range The DataRange where Apple depth information is located.
  void SetAppleDepthImageRange(const DataRange& data_range) {
    apple_depth_image_range_ = data_range;
  }

  /// @param data_range The DataRange where Apple matte information is located.
  void SetAppleMatteImageRange(const DataRange& data_range) {
    apple_matte_image_range_ = data_range;
  }

  /// @param type The type of Xmp data to set the mime type of.
  /// @param mime_type The mime type of the Xmp data.
  void SetMimeType(JpegXmpInfo::Type type, const std::string& mime_type) {
    xmp_info_vector_[type].SetMimeType(mime_type);
  }

  /// @param type The type of Xmp data to set segment data ranges of.
  /// @param segment_data_ranges The segment that contain the Xmp data.
  void SetSegmentDataRanges(JpegXmpInfo::Type type,
                            const std::vector<DataRange>& segment_data_ranges) {
    xmp_info_vector_[type].SetSegmentDataRanges(segment_data_ranges);
  }

 private:
  /// The DataRanges of all images.
  std::vector<DataRange> image_ranges_;

  /// Interesting segment information. Currently information about APP0/JFIF,
  /// APP1/EXIF and APP2/MPF segments are saved here.
  std::vector<JpegSegmentInfo> segment_infos_;

  /// The DataRange of the Apple depth information.
  DataRange apple_depth_image_range_;

  /// The DataRange of the Apple depth information.
  DataRange apple_matte_image_range_;

  /// A vector holding information about the Xmp segments containing GDepth and
  /// GImage data.
  std::vector<JpegXmpInfo> xmp_info_vector_;
};

}  // namespace image_io
}  // namespace photos_editing_formats

#endif // IMAGE_IO_JPEG_JPEG_INFO_H_  // NOLINT
