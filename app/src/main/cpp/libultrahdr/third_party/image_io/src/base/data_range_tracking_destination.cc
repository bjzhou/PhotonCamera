#include "image_io/base/data_range_tracking_destination.h"

namespace photos_editing_formats {
namespace image_io {

void DataRangeTrackingDestination::StartTransfer() {
  tracked_data_range_ = DataRange();
  bytes_transferred_ = 0;
  has_disjoint_transfer_ranges_ = false;
  if (destination_ != nullptr) {
    destination_->StartTransfer();
  }
}

DataDestination::TransferStatus DataRangeTrackingDestination::Transfer(
    const DataRange& transfer_range, const DataSegment& data_segment) {
  DataDestination::TransferStatus transfer_status =
      destination_ ? destination_->Transfer(transfer_range, data_segment)
                   : DataDestination::kTransferOk;
  if (transfer_status != kTransferError) {
    bytes_transferred_ += transfer_range.GetLength();
  }
  if (has_disjoint_transfer_ranges_) {
    return transfer_status;
  }
  if (!tracked_data_range_.IsValid()) {
    tracked_data_range_ = transfer_range;
    return transfer_status;
  }
  if (tracked_data_range_.GetEnd() == transfer_range.GetBegin()) {
    tracked_data_range_ =
        DataRange(tracked_data_range_.GetBegin(), transfer_range.GetEnd());
    return transfer_status;
  } else {
    has_disjoint_transfer_ranges_ = true;
    return transfer_status;
  }
}

void DataRangeTrackingDestination::FinishTransfer() {
  if (destination_ != nullptr) {
    destination_->FinishTransfer();
  }
}

}  // namespace image_io
}  // namespace photos_editing_formats
