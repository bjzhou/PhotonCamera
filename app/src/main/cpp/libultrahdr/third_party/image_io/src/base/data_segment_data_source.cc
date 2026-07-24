#include "image_io/base/data_segment_data_source.h"

#include "image_io/base/data_destination.h"
#include "image_io/base/data_range.h"
#include "image_io/base/data_segment.h"

namespace photos_editing_formats {
namespace image_io {

void DataSegmentDataSource::Reset() {}

std::shared_ptr<DataSegment> DataSegmentDataSource::GetDataSegment(
    size_t begin, size_t min_size) {
  DataRange range(begin, begin + min_size);
  if (range.GetIntersection(shared_data_segment_->GetDataRange()).IsValid()) {
    return shared_data_segment_;
  } else {
    return std::shared_ptr<DataSegment>(nullptr);
  }
}

DataSource::TransferDataResult DataSegmentDataSource::TransferData(
    const DataRange& data_range, size_t /*best_size*/,
    DataDestination* data_destination) {
  bool data_transferred = false;
  DataDestination::TransferStatus status = DataDestination::kTransferDone;
  DataRange transfer_range =
      shared_data_segment_->GetDataRange().GetIntersection(data_range);
  if (data_destination && transfer_range.IsValid()) {
    data_transferred = true;
    status = data_destination->Transfer(transfer_range, *shared_data_segment_);
  }
  if (data_transferred) {
    return status == DataDestination::kTransferError ? kTransferDataError
                                                     : kTransferDataSuccess;
  } else {
    return data_destination ? kTransferDataNone : kTransferDataError;
  }
}

}  // namespace image_io
}  // namespace photos_editing_formats
