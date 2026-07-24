#include "image_io/extras/base64_decoder_data_destination.h"

#include <memory>
#include <sstream>
#include <vector>

#include "image_io/base/data_segment.h"
#include "image_io/base/message_handler.h"
#include <modp_b64/modp_b64.h>

namespace photos_editing_formats {
namespace image_io {

using std::shared_ptr;
using std::unique_ptr;
using std::vector;

// Set this flag to 1 for debugging output.
#define PHOTOS_EDITING_FORMATS_IMAGE_IO_EXTRAS_BASE64_DECODER_DATA_DEST_DEBUG 0

/// A helper function to adjust the parameters for the base64 decoder function
/// that are used by the Base64DecoderDataDestination to those that are required
/// to call the modp_b64_decode function.
/// @param src The source bytes to decode.
/// @param len The number of source bytes to decode.
/// @param out The output buffer to receive the decoded bytes, assumed to be
///     large enough (which the Base64DecoderDataDestination code does).
/// @param pad_count The number of pad characters detected at the end of the
///     src buffer.
/// @return The number of decoded bytes placed in the out buffer.
static size_t base64_decode(const Byte* src, size_t len, Byte* out,
                            size_t* pad_count) {
  // The base64 encoding is described at https://en.wikipedia.org/wiki/Base64.
  // It uses these 64 printable characters: [0-9], [a-z], [A-Z], + and /. Since
  // each character can represent 6 bits, 4 encoded characters can be used to
  // represent 3 decoded bytes (6*4 = 3*8). There is the possibility that up to
  // two padding bytes have to be added to the src that is encoded to ensure
  // that the total number of encoded bytes is evenly divisible by 3. The = char
  // is used for the purpose of completing the multiple-of-4 encoded bytes. The
  // = may appear only at the end of the buffer being decoded, or else its an
  // error.
  const char kPadChar = '=';
  if (len > 2 && src[len - 1] == kPadChar && src[len - 2] == kPadChar) {
    // If the final two chars of the src buffer are pads then pad count is 2.
    *pad_count = 2;
  } else if (len > 1 && src[len - 1] == kPadChar) {
    // If the final char of the src buffer is a pad then pad count is 1.
    *pad_count = 1;
  } else {
    *pad_count = 0;
  }
  int bytes_decoded = modp_b64_decode(reinterpret_cast<char*>(out),
                                      reinterpret_cast<const char*>(src),
                                      static_cast<int>(len));
  return bytes_decoded > 0 ? bytes_decoded : 0;
}

void Base64DecoderDataDestination::StartTransfer() {
  next_destination_->StartTransfer();
}

DataDestination::TransferStatus Base64DecoderDataDestination::Transfer(
    const DataRange& transfer_range, const DataSegment& data_segment) {
  const Byte* encoded_buffer =
      data_segment.GetBuffer(transfer_range.GetBegin());
  if (!encoded_buffer || !transfer_range.IsValid() || HasError()) {
    return kTransferError;
  }

  // If there are left over bytes from the last call, steal enough bytes from
  // the current encoded buffer to make up chunk's worth. If there are no more
  // bytes in the encoded buffer (must be a small buffer) then we're done.
#if PHOTOS_EDITING_FORMATS_IMAGE_IO_EXTRAS_BASE64_DECODER_DATA_DEST_DEBUG
  std::stringstream sstream1;
  sstream1 << "  " << leftover_bytes_.size() << " bytes left over";
  MessageHandler::Get()->ReportMessage(MessageHandler::kStatus, sstream1.str());
#endif  // PHOTOS_EDITING_FORMATS_IMAGE_IO_EXTRAS_BASE64_DECODER_DATA_DEST_DEBUG
  size_t number_stolen_bytes = 0;
  std::vector<Byte> leftover_and_stolen_bytes;
  if (!leftover_bytes_.empty()) {
    // Note that because of the way the leftover_bytes are captured at the end
    // of this function, leftover_bytes.size() will be in the range [0:4). The
    // number_stolen_bytes is always less than or equal to the number of bytes
    // in the transfer_range. If the transfer_range happens to be small, and
    // the leftover_bytes.size() + number_stolen_bytes does not equal 4, then
    // no decoding can be done, and so the function just returns kTransferOk,
    // indicating that the transfer operation should continue. The next call to
    // Transfer() will either have enough bytes avaiable to be stolen so that
    // the bytes can be decoded, or the process of premature return will be
    // repeated, up to 3 times, worst case, where the transfer_range length is
    // 1 each time Transfer is called.
    number_stolen_bytes =
        std::min(transfer_range.GetLength(), 4 - leftover_bytes_.size() % 4);
    leftover_bytes_.insert(leftover_bytes_.end(), encoded_buffer,
                           encoded_buffer + number_stolen_bytes);
    if (number_stolen_bytes == transfer_range.GetLength() &&
        leftover_bytes_.size() % 4) {
      return kTransferOk;
    }
    using std::swap;
    swap(leftover_and_stolen_bytes, leftover_bytes_);
  }

  // Figure out the size of the buffer to hold the decoded bytes. When computing
  // the number_remaining_bytes, note that number_stolen_bytes is 0 if there are
  // no leftover_bytes, or in the range [1:3], and if the transfer_range length
  // equals the number_stolen_bytes, then the execution does not get to this
  // point, but rather the function returns in the above code block. Thus it is
  // safe to subtract number_stolen_bytes from the transfer_range's length to
  // obtain a (guarenteed) positive value for number_remaining_bytes.
  size_t number_remaining_bytes =
      transfer_range.GetLength() - number_stolen_bytes;
  size_t number_leftover_and_stolen_decoded_bytes =
      leftover_and_stolen_bytes.size() / 4 * 3;
  size_t number_remaining_chunks = number_remaining_bytes / 4;
  size_t number_remaining_decoded_bytes = number_remaining_chunks * 3;
  size_t decoded_buffer_length =
      number_leftover_and_stolen_decoded_bytes + number_remaining_decoded_bytes;
  unique_ptr<Byte[]> decoded_buffer(new Byte[decoded_buffer_length]);

  // Decode the left over and stolen bytes first.
  size_t pad_count1 = 0;
  size_t total_bytes_decoded = 0;
  if (number_leftover_and_stolen_decoded_bytes) {
    total_bytes_decoded = base64_decode(leftover_and_stolen_bytes.data(),
                                        leftover_and_stolen_bytes.size(),
                                        decoded_buffer.get(), &pad_count1);
    if (total_bytes_decoded + pad_count1 !=
        number_leftover_and_stolen_decoded_bytes) {
      if (message_handler_) {
        message_handler_->ReportMessage(Message::kDecodingError, "");
      }
      has_error_ = true;
      return kTransferError;
    }
  }

  // Decode the remaining bytes from the encoded buffer.
  size_t pad_count2 = 0;
  if (number_remaining_decoded_bytes) {
    size_t number_bytes_decoded = base64_decode(
        encoded_buffer + number_stolen_bytes, number_remaining_chunks * 4,
        decoded_buffer.get() + total_bytes_decoded, &pad_count2);
    total_bytes_decoded += number_bytes_decoded;
    if (total_bytes_decoded + pad_count1 + pad_count2 !=
        decoded_buffer_length) {
      if (message_handler_) {
        message_handler_->ReportMessage(Message::kDecodingError, "");
      }
      has_error_ = true;
      return kTransferError;
    }
  }

  // Capture any new left over bytes. The number_new_leftover_bytes will always
  // be in the range [0:4).
  size_t number_processed_bytes =
      number_stolen_bytes + number_remaining_chunks * 4;
  size_t number_new_leftover_bytes =
      transfer_range.GetLength() - number_processed_bytes;
  if (number_new_leftover_bytes) {
    leftover_bytes_.insert(
        leftover_bytes_.end(), encoded_buffer + number_processed_bytes,
        encoded_buffer + number_processed_bytes + number_new_leftover_bytes);
  }

#if PHOTOS_EDITING_FORMATS_IMAGE_IO_EXTRAS_BASE64_DECODER_DATA_DEST_DEBUG
  std::stringstream sstream2;
  sstream2 << "  " << leftover_bytes_.size() << " new bytes left over";
  MessageHandler::Get()->ReportMessage(Message::kStatus, sstream2.str());
#endif  // PHOTOS_EDITING_FORMATS_IMAGE_IO_EXTRAS_BASE64_DECODER_DATA_DEST_DEBUG

  // And call the next stage
  size_t decoded_location = next_decoded_location_;
  next_decoded_location_ += (total_bytes_decoded);
  DataRange decoded_range(decoded_location, next_decoded_location_);
  shared_ptr<DataSegment> decoded_data_segment =
      DataSegment::Create(decoded_range, decoded_buffer.release());
  return next_destination_->Transfer(decoded_range, *decoded_data_segment);
}

void Base64DecoderDataDestination::FinishTransfer() {
  if (leftover_bytes_.size() % 4) {
    if (message_handler_) {
      message_handler_->ReportMessage(Message::kDecodingError, "");
    }
    has_error_ = true;
  }
  next_destination_->FinishTransfer();
}

}  // namespace image_io
}  // namespace photos_editing_formats
