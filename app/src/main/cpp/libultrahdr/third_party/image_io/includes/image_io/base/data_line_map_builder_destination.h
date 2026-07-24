#ifndef IMAGE_IO_BASE_DATA_LINE_MAP_BUILDER_DESTINATION_H_  // NOLINT
#define IMAGE_IO_BASE_DATA_LINE_MAP_BUILDER_DESTINATION_H_  // NOLINT

#include "image_io/base/data_destination.h"
#include "image_io/base/data_line_map.h"

namespace photos_editing_formats {
namespace image_io {

/// A class to build a data line map of the string implied by the transfer
/// range of a data segment before passing the transfer off to an optional
/// next data destination.
class DataLineMapBuilderDestination : public DataDestination {
 public:
  /// @param data_line_map The data line map to build.
  /// @param next_destination An optional next transfer data destination
  DataLineMapBuilderDestination(DataLineMap* data_line_map,
                                DataDestination* next_destination)
      : data_line_map_(data_line_map),
        next_destination_(next_destination),
        bytes_transferred_(0) {}
  void StartTransfer() override {
    if (next_destination_ != nullptr) {
      next_destination_->StartTransfer();
    }
  }
  void FinishTransfer() override {
    if (next_destination_ != nullptr) {
      next_destination_->FinishTransfer();
    }
  }
  TransferStatus Transfer(const DataRange& transfer_range,
                          const DataSegment& data_segment) override {
    bytes_transferred_ += transfer_range.GetLength();
    data_line_map_->FindDataLines(transfer_range, data_segment);
    return next_destination_ != nullptr
               ? next_destination_->Transfer(transfer_range, data_segment)
               : kTransferOk;
  }
  size_t GetBytesTransferred() const override { return bytes_transferred_; }

 private:
  DataLineMap* data_line_map_;
  DataDestination* next_destination_;
  size_t bytes_transferred_;
};

}  // namespace image_io
}  // namespace photos_editing_formats

#endif  // IMAGE_IO_BASE_DATA_LINE_MAP_BUILDER_DESTINATION_H_  // NOLINT
