#ifndef IMAGE_IO_JPEG_JPEG_SCANNER_H_  // NOLINT
#define IMAGE_IO_JPEG_JPEG_SCANNER_H_  // NOLINT

#include <memory>

#include "image_io/base/data_segment.h"
#include "image_io/base/data_source.h"
#include "image_io/base/message_handler.h"
#include "image_io/jpeg/jpeg_marker.h"
#include "image_io/jpeg/jpeg_segment_processor.h"

namespace photos_editing_formats {
namespace image_io {

/// JpegScanner reads DataSegments from a DataSource, finds interesting
/// JpegSegments and passes them on to a JpegSegmentProcessor for further
/// examination.
class JpegScanner {
 public:
  explicit JpegScanner(MessageHandler* message_handler)
      : message_handler_(message_handler),
        data_source_(nullptr),
        segment_processor_(nullptr),
        current_location_(0),
        done_(false),
        has_error_(false) {}

  /// Called to start and run the scanner.
  /// @param data_source The DataSource from which to obtain DataSegments.
  /// @param segment_processor The processor of the JpegSegment instances.
  void Run(DataSource* data_source, JpegSegmentProcessor* segment_processor);

  /// If the JpegSegmentProcessor determines that it has seen enough JpegSegment
  /// instances, it can call this function to terminate the scanner prematurely.
  void SetDone() { done_ = true; }

  /// @return True if the done flag was set by SetDone(), else false.
  bool IsDone() const { return done_; }

  /// @return True if the scanner encountered errors.
  bool HasError() const { return has_error_; }

  /// @return The DataSource from which DataSegments are being read.
  DataSource* GetDataSource() const { return data_source_; }

  /// JpegSegmentProcessor instances can call this function to inform the
  /// scanner about the types of JpegSegment instances it is interested in.
  /// The JpegScanner will not send any uninteresting segments to the processor.
  void UpdateInterestingMarkerFlags(const JpegMarker::Flags& marker_flags) {
    interesting_marker_flags_ = marker_flags;
  }

 private:
  /// Called from the Run() function to do the heavy lifting.
  void FindAndProcessSegments();

  /// @param marker The marker of the JpegSegment under construction.
  /// @param begin_location The start of the JpegSegment under construction.
  /// @return The size of the segment payload of given marker type that starts
  ///     at the specified location.
  size_t GetPayloadSize(const JpegMarker& marker, size_t begin_location);

  /// @return The validated byte value at the given location.
  ValidatedByte GetValidatedByte(size_t location);

  /// Calls GetValidatedByte() and returns its value if the byte is valid, else
  /// sets the get_byte_error_ flag.
  /// @return the byte value at the given location, or 0 if the byte is invalid.
  Byte GetByte(size_t location);

  /// Asks the DataSource for the next DataSegment.
  void GetNextSegment();

 private:
  /// An optional message handler to write messages to.
  MessageHandler* message_handler_;

  /// The DataSource from which DataSegments are obtained.
  DataSource* data_source_;

  /// The JpegSegmentProcessor to which JpegSegments are sent.
  JpegSegmentProcessor* segment_processor_;

  /// The JpegSegment types of interest to the JpegSegmentProcessor.
  JpegMarker::Flags interesting_marker_flags_;

  /// Depending on the DataSource, a given JpegSegment may span up to two
  /// DataSegments. These are they.
  std::shared_ptr<DataSegment> current_segment_;
  std::shared_ptr<DataSegment> next_segment_;

  /// The current location of the scanner  in the DataSource.
  size_t current_location_;

  /// A flag that indicates the scanner is done, naturally or prematurely.
  bool done_;

  /// A flag that indicates an error occurred while getting Byte data.
  bool has_error_;
};

}  // namespace image_io
}  // namespace photos_editing_formats

#endif // IMAGE_IO_JPEG_JPEG_SCANNER_H_  // NOLINT
