#ifndef IMAGE_IO_JPEG_JPEG_SEGMENT_LISTER_H_  // NOLINT
#define IMAGE_IO_JPEG_JPEG_SEGMENT_LISTER_H_  // NOLINT

#include <string>
#include <vector>

#include "image_io/jpeg/jpeg_segment_processor.h"

namespace photos_editing_formats {
namespace image_io {

/// JpegSegmentLister is an implementation of JpegSegmentProcesor that creates
/// a listing (in the form of a vector of strings) describing the segments.
class JpegSegmentLister : public JpegSegmentProcessor {
 public:
  JpegSegmentLister();
  void Start(JpegScanner* scanner) override;
  void Process(JpegScanner* scanner, const JpegSegment& segment) override;
  void Finish(JpegScanner* scanner) override;

  /// @return The lines representing the listing of the segments.
  const std::vector<std::string>& GetLines() const { return lines_; }

 private:
  /// The number of occurences of the various segment types.
  std::vector<int> marker_type_counts_;

  /// The lines representing the listing output.
  std::vector<std::string> lines_;
};

}  // namespace image_io
}  // namespace photos_editing_formats

#endif // IMAGE_IO_JPEG_JPEG_SEGMENT_LISTER_H_  // NOLINT
