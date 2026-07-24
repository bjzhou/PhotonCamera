#ifndef IMAGE_IO_BASE_BYTE_POINTER_DATA_DESTINATION_H_  // NOLINT
#define IMAGE_IO_BASE_BYTE_POINTER_DATA_DESTINATION_H_  // NOLINT

#include "image_io/base/data_destination.h"

namespace photos_editing_formats {
namespace image_io {

/// A DataDestination that writes its output to byte buffer, the pointer to
/// which is supplied by the client along with a size of that buffer.
class BytePointerDataDestination : public DataDestination {
 public:
  /// Constructs an BytesDataDestination using the given a buffer and size.
  /// @param bytes The buffer to receive the bytes.
  /// @param size The size of the buffer to receive the bytes.
  BytePointerDataDestination(Byte* bytes, size_t size)
      : bytes_(bytes), size_(size), bytes_transferred_(0) {}
  BytePointerDataDestination(const BytePointerDataDestination&) = delete;
  BytePointerDataDestination& operator=(const BytePointerDataDestination&) =
      delete;

  /// @return The number of bytes written to the bytes buffer.
  size_t GetBytesTransferred() const override { return bytes_transferred_; }

  void StartTransfer() override;
  TransferStatus Transfer(const DataRange& transfer_range,
                          const DataSegment& data_segment) override;
  void FinishTransfer() override;

 private:
  /// The bytes buffer to receive the data.
  Byte* bytes_;

  /// The size of the bytes buffer.
  size_t size_;

  /// The number of bytes written so far.
  size_t bytes_transferred_;
};

}  // namespace image_io
}  // namespace photos_editing_formats

#endif  // IMAGE_IO_BASE_BYTE_POINTER_DATA_DESTINATION_H_  // NOLINT
