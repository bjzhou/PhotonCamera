#ifndef IMAGE_IO_JPEG_JPEG_SEGMENT_PROCESSOR_H_  // NOLINT
#define IMAGE_IO_JPEG_JPEG_SEGMENT_PROCESSOR_H_  // NOLINT

#include "image_io/jpeg/jpeg_segment.h"

namespace photos_editing_formats {
namespace image_io {

class JpegScanner;

/// JpegSegmentProcessor is the abstract base class for implementations that do
/// something with the JPEG segments that the JpegScanner identifies.
class JpegSegmentProcessor {
 public:
  virtual ~JpegSegmentProcessor() = default;

  /// This function is called at the start of the JPegScanner::Run() function to
  /// allow this JpegProcessor to initialize its data structures. It can also
  /// inform the JpegScanner about preferences for the types of segments it is
  /// interested in by calling the JpegScanner::UpdateInterestingMarkerFlags()
  /// function.
  /// @param scanner The scanner that is starting the JpegProcessor.
  virtual void Start(JpegScanner* scanner) = 0;

  /// This function is called repeatedly by the JpegScanner as it identifies
  /// segments in the JPEG file. The JpegProcessor can access the data in the
  /// segment to do interesting things, or can update the scanner's preferences
  /// like in the Start() function.
  /// @param scanner The scanner that is providing the segment to the processor.
  /// @param segment The segment provided by the scanner to the processor.
  virtual void Process(JpegScanner* scanner, const JpegSegment& segment) = 0;

  /// This function is called after the JpegScanner has provided all the
  /// segments to the JpegProcessor to allow the processor to finish its work
  /// processing the segments.
  /// @param scanner The scanner that is informing the processor that it is done
  ///     finding segments.
  virtual void Finish(JpegScanner* scanner) = 0;
};

}  // namespace image_io
}  // namespace photos_editing_formats

#endif // IMAGE_IO_JPEG_JPEG_SEGMENT_PROCESSOR_H_  // NOLINT
