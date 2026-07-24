#ifndef IMAGE_IO_BASE_BYTE_BUFFER_H_  // NOLINT
#define IMAGE_IO_BASE_BYTE_BUFFER_H_  // NOLINT

#include <memory>
#include <vector>

#include "image_io/base/byte_data.h"

namespace photos_editing_formats {
namespace image_io {

/// This class provides a means to allocate and fill a Byte buffer with the
/// data specified in a vector of ByteData objects, and then to release that
/// buffer to be used in a DataSegment. This is used for testing purposes
/// initially, but has applicability for use in the image_io itself.
class ByteBuffer {
 public:
  /// Constructs a ByteBuffer using a previously allocated buffer.
  /// @param size The size of the buffer.
  /// @param buffer The previously allocated buffer
  ByteBuffer(size_t size, std::unique_ptr<Byte[]> buffer);

  /// Constructs a ByteBuffer using the vector of byte data.
  /// @param byte_data_vector The data to used to define the length and value of
  ///     the buffer. If any ByteData in the vector is of kHex type, and it
  ///     contains invalid hex digits, the size value will be set to 0,
  ///     resulting in a ByteBuffer the IsValid() function of which will return
  ///     false.
  explicit ByteBuffer(const std::vector<ByteData>& byte_data_vector);

  /// @return Whether the byte buffer is valid.
  bool IsValid() const { return size_ > 0; }

  /// @return The size of the byte buffer.
  size_t GetSize() const { return size_; }

  /// @param location The location in the byte buffer to set.
  /// @param value The two-byte value.
  /// @return Whether the value was set successfully.
  bool SetBigEndianValue(size_t location, std::uint16_t value);

  /// Releases the buffer to the caller and sets this ByteBuffer object to an
  /// invalid state. That is, after this call IsValid() will return false, and
  /// GetSize() will return 0.
  /// @return The buffer pointer or nullptr if the ByteBuffer was invalid. The
  ///     caller is responsible for deleting the buffer when done.
  Byte* Release();

 private:
  std::unique_ptr<Byte[]> buffer_;
  size_t size_;
};

}  // namespace image_io
}  // namespace photos_editing_formats

#endif // IMAGE_IO_BASE_BYTE_BUFFER_H_  // NOLINT
