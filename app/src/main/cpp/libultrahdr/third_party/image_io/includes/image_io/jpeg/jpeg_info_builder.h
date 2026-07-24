#ifndef IMAGE_IO_JPEG_JPEG_INFO_BUILDER_H_  // NOLINT
#define IMAGE_IO_JPEG_JPEG_INFO_BUILDER_H_  // NOLINT

#include <set>
#include <string>
#include <vector>

#include "image_io/base/data_range.h"
#include "image_io/jpeg/jpeg_info.h"
#include "image_io/jpeg/jpeg_segment_processor.h"
#include "image_io/jpeg/jpeg_xmp_info_builder.h"

namespace photos_editing_formats {
namespace image_io {

/// JpegInfoBuilder is JpegSegmentProcessor that collects the location and type
/// of depth information in the JPEG file so that subsequent operations can
/// efficiently maniuplate it.
class JpegInfoBuilder : public JpegSegmentProcessor {
 public:
  JpegInfoBuilder();

  /// @return The JpegInfo with the depth information obtained from the
  ///     scanner as a result of processing the segments it processes.
  const JpegInfo& GetInfo() const { return jpeg_info_; }

  /// @param image_limit The max number of images to process. By default there
  ///     is no limit on the number of images processed.
  void SetImageLimit(int image_limit) { image_limit_ = image_limit; }

  /// By default the info builder does not capture the value of the segment in
  /// the segment infos contained in the @c JpegInfo object. Call this function
  /// to capture the bytes of the indicated segment types.
  /// @param type The type of segment info to capture the value of.
  void SetCaptureSegmentBytes(const std::string& segment_info_type);

  /// @return True if the segment is a primary Xmp segment.
  bool IsPrimaryXmpSegment(const JpegSegment& segment) const;

  /// @return True if the segment is an extended Xmp segment.
  bool IsExtendedXmpSegment(const JpegSegment& segment) const;

  void Start(JpegScanner* scanner) override;
  void Process(JpegScanner* scanner, const JpegSegment& segment) override;
  void Finish(JpegScanner* scanner) override;

 private:
  /// @return True if the data members indicate Apple depth is present.
  bool HasAppleDepth() const;

  /// @return True if the data members indicate Apple matte is present.
  bool HasAppleMatte() const;

  /// @return True if the segment is an Mpf segment.
  bool IsMpfSegment(const JpegSegment& segment) const;

  /// @return True if the segment is an Exif segment.
  bool IsExifSegment(const JpegSegment& segment) const;

  /// @return True if the segment is an Jfif segment.
  bool IsJfifSegment(const JpegSegment& segment) const;

  /// Captures the segment bytes into the a JpegSegmentInfo's byte vector if
  /// the SetCaptureSegmentBytes() has been called for the segment info type.
  /// @param type The type of segment info being processed.
  /// @param segment The segment being processed.
  /// @param bytes A vector to hold the segment bytes.
  void MaybeCaptureSegmentBytes(const std::string& type,
                                const JpegSegment& segment,
                                std::vector<Byte>* bytes) const;

  /// @return True if the segment's extended xmp guid matches the one from the
  ///     primary xmp segment.
  bool HasMatchingExtendedXmpGuid(const JpegSegment& segment) const;

  /// @return True if the segment contains the given id.
  bool HasId(const JpegSegment& segment, const char* id) const;

  /// Sets the primary segment guid value using properties in the given segment.
  /// @param The segment from which to obtain the primary xmp guid value.
  void SetPrimaryXmpGuid(const JpegSegment& segment);

  /// Sets the Xmp mime type using property values in the given segment.
  /// @param The segment from which to obtain the mime property value.
  /// @param xmp_info_type The type of xmp data that determines the mime
  ///     property name to look for.
  void SetXmpMimeType(const JpegSegment& segment,
                      JpegXmpInfo::Type xmp_info_type);

  /// The limit on the number of images to process. After this many images have
  /// been found, the Process() function will tell the JpegScanner to stop.
  int image_limit_;

  /// The number of images encountered in the JPEG file so far.
  int image_count_;

  /// The number of APP2/MPF segments encountered per image. One criterial used
  /// to determine if Apple depth data is present is that the first image has
  /// an APP2/MPF segment.
  std::vector<int> image_mpf_count_;

  /// The number of APP1/XMP segments encountered per image. Another criteria
  /// used to determine if Apple depth data is present is that the second or
  /// following image contains one of these segments.
  std::vector<int> image_xmp_apple_depth_count_;

  /// The number of APP1/XMP segments encountered per image. Another criteria
  /// used to determine if Apple matte data is present is that the second or
  /// following image contains one of these segments.
  std::vector<int> image_xmp_apple_matte_count_;

  /// The DataRange of the most recent SOI type segment. This is used to compute
  /// the range of the image that represents the Apple depth data.
  DataRange most_recent_soi_marker_range_;

  /// The GUID value of the APP1/XMP segments that contain GDepth/GImage data.
  std::string primary_xmp_guid_;

  /// Builder helpers for gdepth and gimage xmp type segments.
  JpegXmpInfoBuilder gdepth_info_builder_;
  JpegXmpInfoBuilder gimage_info_builder_;

  /// The collected data describing the type/location of data in the JPEG file.
  JpegInfo jpeg_info_;

  /// The types of the segment info type to capture the bytes of.
  std::set<std::string> capture_segment_bytes_types_;
};

}  // namespace image_io
}  // namespace photos_editing_formats

#endif // IMAGE_IO_JPEG_JPEG_INFO_BUILDER_H_  // NOLINT
