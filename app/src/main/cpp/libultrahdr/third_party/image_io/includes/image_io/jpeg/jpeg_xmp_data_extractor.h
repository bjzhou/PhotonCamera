#ifndef IMAGE_IO_JPEG_JPEG_XMP_DATA_EXTRACTOR_H_  // NOLINT
#define IMAGE_IO_JPEG_JPEG_XMP_DATA_EXTRACTOR_H_  // NOLINT

#include "image_io/base/data_destination.h"
#include "image_io/base/message_handler.h"
#include "image_io/jpeg/jpeg_info.h"

namespace photos_editing_formats {
namespace image_io {

/// A class that can make use of the data in a JpegInfo instance to extract
/// the xmp data JpegSegments passed to it and forward it to a DataDestination.
class JpegXmpDataExtractor : public DataDestination {
 public:
  /// @param xmp_info_type The type of xmp data being extracted.
  /// @param segment_count The number of segment ranges over which the xmp
  ///     data is spread.
  /// @param data_destination The destination to which the extracted xmp data
  ///     is to be sent.
  JpegXmpDataExtractor(JpegXmpInfo::Type xmp_info_type, size_t segment_count,
                       DataDestination* data_destination,
                       MessageHandler* message_handler)
      : xmp_info_type_(xmp_info_type),
        last_segment_index_(segment_count - 1),
        data_destination_(data_destination),
        message_handler_(message_handler),
        segment_index_(0),
        has_error_(false) {}

  /// Set the current segment index to the given value.
  /// @param segment_index The index of the segment currently being processed.
  void SetSegmentIndex(size_t segment_index) { segment_index_ = segment_index; }

  /// @return True if there was an error in the extraction process.
  bool HasError() const { return has_error_; }

  void StartTransfer() override;
  TransferStatus Transfer(const DataRange& transfer_range,
                const DataSegment& data_segment) override;
  void FinishTransfer() override;

  /// @return The number of bytes written not to this extractor destination, but
  /// to the next destination. Returns zero if the next destination is null.
  size_t GetBytesTransferred() const override {
    return data_destination_ ? data_destination_->GetBytesTransferred() : 0;
  }

 private:
  /// The type of xmp data being extracted.
  JpegXmpInfo::Type xmp_info_type_;

  /// The xmp data require special processing when the last segment is being
  /// transferred. This value is the index of the last segment.
  size_t last_segment_index_;

  /// The DataDestination that the extracted xmp data is sent to.
  DataDestination* data_destination_;

  /// An optional message handler to write messages to.
  MessageHandler* message_handler_;

  /// The xmp data is spread over one or more segments in the DataSource. This
  /// index tracks which one is being transferred.
  size_t segment_index_;

  /// A true value indicates that an error occurred in the decoding process.
  bool has_error_;
};

}  // namespace image_io
}  // namespace photos_editing_formats

#endif // IMAGE_IO_JPEG_JPEG_XMP_DATA_EXTRACTOR_H_  // NOLINT
