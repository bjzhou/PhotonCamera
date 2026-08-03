#include "image_io/base/ostream_ref_data_destination.h"

#include "image_io/base/data_range.h"
#include "image_io/base/data_segment.h"

namespace photos_editing_formats {
namespace image_io {

using std::ostream;

void OStreamRefDataDestination::StartTransfer() {}

DataDestination::TransferStatus OStreamRefDataDestination::Transfer(
    const DataRange& transfer_range, const DataSegment& data_segment) {
  if (transfer_range.IsValid() && !HasError()) {
    size_t bytes_written = 0;
    size_t bytes_to_write = transfer_range.GetLength();
    const Byte* buffer = data_segment.GetBuffer(transfer_range.GetBegin());
    if (buffer) {
      ostream::pos_type prewrite_pos = ostream_ref_.tellp();
      ostream_ref_.write(reinterpret_cast<const char*>(buffer), bytes_to_write);
      ostream::pos_type postwrite_pos = ostream_ref_.tellp();
      if (postwrite_pos != EOF) {
        bytes_written = ostream_ref_.tellp() - prewrite_pos;
        bytes_transferred_ += bytes_written;
      }
    }
    if (bytes_written != bytes_to_write) {
      if (message_handler_) {
        message_handler_->ReportMessage(Message::kStdLibError, name_);
      }
      has_error_ = true;
      return kTransferError;
    }
  }
  return kTransferOk;
}

void OStreamRefDataDestination::FinishTransfer() {
    ostream_ref_.flush();
}

}  // namespace image_io
}  // namespace photos_editing_formats
