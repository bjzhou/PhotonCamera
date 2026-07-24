#ifndef IMAGE_IO_EXTRAS_BASE64_DECODER_DATA_DESTINATION_H_  // NOLINT
#define IMAGE_IO_EXTRAS_BASE64_DECODER_DATA_DESTINATION_H_  // NOLINT
#define IMAGE_IO_noumenon_base64_h

#include <vector>

#include "image_io/base/data_destination.h"
#include "image_io/base/message_handler.h"

namespace photos_editing_formats {
namespace image_io {

/// Base64DecoderDataDestination is typically used in a chain of DataDestination
/// instances. For example, it can be used to decode base64 encoded JPEG data in
/// APP1/XMP data segments.
class Base64DecoderDataDestination : public DataDestination {
 public:
  /// @param next_destination The next DataDestination in the chain which will
  /// be sent the decoded bytes received by the Transfer() function.
  /// @param message_handler An optional message handler to write messages to.
  Base64DecoderDataDestination(DataDestination* next_destination,
                               MessageHandler* message_handler)
      : next_destination_(next_destination),
        message_handler_(message_handler),
        next_decoded_location_(0),
        has_error_(false) {}

  /// @return True if there was an error in the decoding process.
  bool HasError() const { return has_error_; }

  void StartTransfer() override;
  TransferStatus Transfer(const DataRange& transfer_range,
                          const DataSegment& data_segment) override;
  void FinishTransfer() override;

  /// @return The number of bytes written not to this decoder destination, but
  /// to the next destination. Returns zero if the next destination is null.
  size_t GetBytesTransferred() const override {
    return next_destination_ ? next_destination_->GetBytesTransferred() : 0;
  }

 private:
  /// The destination that the decoded data is sent to.
  DataDestination* next_destination_;

  /// An optional message handler to write messages to.
  MessageHandler* message_handler_;

  /// If the transfer_range parameter of the Transfer function does not have a
  /// length that is a multiple of 4, then the leftover bytes are placed in this
  /// vector and are prepended to the data in the next call to Transfer.
  std::vector<Byte> leftover_bytes_;

  /// The DataRanges supplied to the Transfer function can't be sent down the
  /// chain to the next destination because the number of bytes differ (by 4/3).
  /// This value records the number of bytes decoded so far, and the beginning
  /// of the DataRange sent to the destination's Transfer function.
  size_t next_decoded_location_;

  /// A true value indicates that an error occurred in the decoding process.
  bool has_error_;
};

}  // namespace image_io
}  // namespace photos_editing_formats

#endif // IMAGE_IO_EXTRAS_BASE64_DECODER_DATA_DESTINATION_H_  // NOLINT
