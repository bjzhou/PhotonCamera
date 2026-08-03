#ifndef IMAGE_IO_BASE_DATA_DESTINATION_H_  // NOLINT
#define IMAGE_IO_BASE_DATA_DESTINATION_H_  // NOLINT

#include "image_io/base/data_range.h"
#include "image_io/base/data_segment.h"
#include "image_io/base/types.h"

namespace photos_editing_formats {
namespace image_io {

/// DataDestination is the abstract base class for implementations that can
/// efficiently move data from one location and/or form to another. In such
/// a transfer, the StartTransfer() and FinishTransfer() functions are always
/// called, and in between the Transfer() function may be called zero or more
/// times. See the DataSource class to see how to initiate a transfer operation.
class DataDestination {
 public:
  /// These values indicate what should be done after a DataSource calls a
  /// DataDestination's Transfer() function.
  enum TransferStatus {
    /// An error occurred in the transfer process. DataSource's TransferData()
    /// function should stop calling DataDestination's Transfer() function, and
    /// return to its caller.
    kTransferError,

    /// The transfer was successful. DataSource's TransferData() function can
    /// keep calling DataDestination's Transfer() of needed, or if not,
    /// return to its caller.
    kTransferOk,

    /// The transfer was successful and the DataDestination has decided that
    /// it has enough data. DataSource's TransferData() function should stop
    /// calling DataDestination's Transfer() function and return to its caller.
    kTransferDone
  };

  virtual ~DataDestination() = default;

  /// This function is called prior to the first call to the Transfer() function
  /// to allow implementation subclasses a chance to initialize their data
  /// members for the transfer process. If a data destination sends its bytes
  /// to another data destination, this function must call its StartTransfer()
  /// function.
  virtual void StartTransfer() = 0;

  /// This function is called to transfer a portion or all of the data in the
  /// data segment from the caller to wherever the receiver needs it to go.
  /// @param transfer_range The portion of the data in the data_segment that is
  ///     to be transferred.
  /// @param data_segment The data, some or all of which is to be transferred.
  /// @return A transfer status value indicating what should be done next.
  virtual TransferStatus Transfer(const DataRange& transfer_range,
                                  const DataSegment& data_segment) = 0;

  /// This function is called after the final call to the Transfer() function to
  /// allow implementation subclasses a chance to finalize their transfer
  /// operations.  If a data destination sends its bytes to another data
  /// destination, this function must call its FinishTransfer() function.
  virtual void FinishTransfer() = 0;

  /// @return The number of bytes written to the data destination. There is some
  /// flexibility in the actual value returned. Most "end-point" destination
  /// subclasses return the actual number of bytes received/written. Other
  /// "mid-point" destinations are allowed to return the value from the next
  /// destination in the chain, or the actual number of bytes they are asked
  /// to transfer via the transfer_range parameter of the Transfer()
  /// function.
  virtual size_t GetBytesTransferred() const = 0;
};

}  // namespace image_io
}  // namespace photos_editing_formats

#endif // IMAGE_IO_BASE_DATA_DESTINATION_H_  // NOLINT
