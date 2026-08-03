#include "image_io/base/byte_pointer_data_destination.h"

#include <algorithm>
#include <cstring>

#include "image_io/base/data_range.h"
#include "image_io/base/data_segment.h"

namespace photos_editing_formats {
namespace image_io {

void BytePointerDataDestination::StartTransfer() {}

DataDestination::TransferStatus BytePointerDataDestination::Transfer(
    const DataRange& transfer_range, const DataSegment& data_segment) {
  if (transfer_range.IsValid()) {
    size_t size_remaining = size_ - bytes_transferred_;
    size_t bytes_to_copy = std::min(size_remaining, transfer_range.GetLength());
    const Byte* buffer = data_segment.GetBuffer(transfer_range.GetBegin());
    if (buffer) {
      std::memcpy(bytes_ + bytes_transferred_, buffer, bytes_to_copy);
      bytes_transferred_ += bytes_to_copy;
      return bytes_transferred_ == size_ ? kTransferDone : kTransferOk;
    }
  }
  return kTransferError;
}

void BytePointerDataDestination::FinishTransfer() {}

}  // namespace image_io
}  // namespace photos_editing_formats
