#ifndef IMAGE_IO_JPEG_JPEG_XMP_INFO_H_  // NOLINT
#define IMAGE_IO_JPEG_JPEG_XMP_INFO_H_  // NOLINT

#include <cstdint>
#include <string>
#include <vector>

#include "image_io/base/data_range.h"

namespace photos_editing_formats {
namespace image_io {

const size_t kXmpGuidSize = 32;
const char kXmpId[] = "http://ns.adobe.com/xap/1.0/";
const char kXmpExtendedId[] = "http://ns.adobe.com/xmp/extension/";
const size_t kXmpExtendedHeaderSize =
    sizeof(kXmpExtendedId) + kXmpGuidSize + 2 * sizeof(std::uint32_t);

/// Constants used to find and process information in APP1/XMP type segments.
const char kXmpAppleDepthId[] = "http://ns.apple.com/depthData/1.0";
const char kXmpAppleMatteId[] = "http://ns.apple.com/portraitEffectsMatte/1.0/";
const char kXmpGDepthV1Id[] = "http://ns.google.com/photos/1.0/depthmap/";
const char kXmpGImageV1Id[] = "http://ns.google.com/photos/1.0/image/";
const char kXmpHasExtendedId[] = "xmpNote:HasExtendedXMP";

/// JpegXmpInfo maintains information about the data in an Xmp property, such as
/// are used to store the GDepth and GImage data.
class JpegXmpInfo {
 public:
  /// The possible types of Xmp information.
  enum Type {
    /// GDepth:Data type information.
    kGDepthInfoType,

    /// GImage:Data type information.
    kGImageInfoType,
  };

  /// Initializes a vector of JpegXmpinfo instances, indexed by their type.
  /// @param xmp_info_vector The vector to initialize.
  static void InitializeVector(std::vector<JpegXmpInfo>* xmp_info_vector);

  /// @param xmp_info_type The type to get the identifier of.
  /// @return The identfier that appears at the start of the Xmp segment.
  static std::string GetIdentifier(Type jpeg_xmp_info_type);

  /// @param xmp_info_type The type to get the data property name of.
  /// @return The name of the data property that appears in the Xmp segment.
  static std::string GetDataPropertyName(Type jpeg_xmp_info_type);

  /// @param xmp_info_type The type to get the mime property name of.
  /// @return The name of the mime property that appears in the primary
  ///     Xmp segment.
  static std::string GetMimePropertyName(Type jpeg_xmp_info_type);

  explicit JpegXmpInfo(Type type) : type_(type) {}
  JpegXmpInfo(const JpegXmpInfo&) = default;
  JpegXmpInfo& operator=(const JpegXmpInfo&) = default;

  /// @return The type of the Xmp property information.
  Type GetType() const { return type_; }

  /// @return The mime type of the Xmp data.
  std::string GetMimeType() const { return mime_type_; }

  /// @param mime_type The mime type to assign to this instance.
  void SetMimeType(const std::string& mime_type) { mime_type_ = mime_type; }

  /// @return The segment's data ranges where this Xmp data occurs.
  const std::vector<DataRange>& GetSegmentDataRanges() const {
    return segment_data_ranges_;
  }

  /// @param The segment data ranges to assign to this instance.
  void SetSegmentDataRanges(const std::vector<DataRange>& segment_data_ranges) {
    segment_data_ranges_ = segment_data_ranges;
  }

 private:
  /// The type of the Xmp information.
  Type type_;

  /// The mime type of the Xmp data.
  std::string mime_type_;

  /// The segment data ranges that contain the Xmp data.
  std::vector<DataRange> segment_data_ranges_;
};

}  // namespace image_io
}  // namespace photos_editing_formats

#endif // IMAGE_IO_JPEG_JPEG_XMP_INFO_H_  // NOLINT
