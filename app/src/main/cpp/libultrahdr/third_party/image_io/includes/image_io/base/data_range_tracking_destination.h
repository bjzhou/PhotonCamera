#ifndef IMAGE_IO_BASE_DATA_RANGE_TRACKING_DESTINATION_H_  // NOLINT
#define IMAGE_IO_BASE_DATA_RANGE_TRACKING_DESTINATION_H_  // NOLINT

#include "image_io/base/data_destination.h"
#include "image_io/base/data_range.h"

namespace photos_editing_formats {
namespace image_io {

/// A DataDestination that tracks the transfer_range values as they are passed
/// from the caller of the Transfer() function to next DataDestination.
/// Instances of this class can be used to track the number of bytes transferred
/// and/or to ensure that multiple calls to the Transfer() function are called
/// with transfer_range values that join in a end-to-begin fashion. This data
/// can be used to make sure that the data transferred meets the expectations of
/// the client.
class DataRangeTrackingDestination : public DataDestination {
 public:
  /// @param destination The DataDestination that is next in the chain, or
  ///     nullptr if there is no destination.
  explicit DataRangeTrackingDestination(DataDestination* destination)
      : destination_(destination),
        bytes_transferred_(0),
        has_disjoint_transfer_ranges_(false) {}

  /// @return The number of bytes written to the data destination. Bytes are
  /// considered "written" even if the next destination is a nullptr.
  size_t GetBytesTransferred() const override { return bytes_transferred_; }

  /// @return The tracked data range (see the class comment for how this value
  ///     is computed).
  const DataRange& GetTrackedDataRange() const { return tracked_data_range_; }

  /// @return Whether disjoint transfer data ranges were detected by the
  ///     Transfer() function. Disjoint transfer ranges occur when two calls
  ///     to the Transfer() function occur where first_range.GetEnd() is not
  ////    equal to the second_range.GetBegin().
  bool HasDisjointTransferRanges() const {
    return has_disjoint_transfer_ranges_;
  }

  void StartTransfer() override;
  TransferStatus Transfer(const DataRange& transfer_range,
                          const DataSegment& data_segment) override;
  void FinishTransfer() override;

 private:
  DataDestination* destination_;
  DataRange tracked_data_range_;
  size_t bytes_transferred_;
  bool has_disjoint_transfer_ranges_;
};

}  // namespace image_io
}  // namespace photos_editing_formats

#endif // IMAGE_IO_BASE_DATA_RANGE_TRACKING_DESTINATION_H_  // NOLINT
