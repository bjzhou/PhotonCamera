#include "image_io/base/byte_buffer.h"

#include <cstring>
#include <utility>

namespace photos_editing_formats {
namespace image_io {

using std::string;
using std::unique_ptr;

/// @param byte_data The byte data to write to the buffer at pos.
/// @param pos The location in a buffer to write the byte data to.
/// @return The number of bytes written to the buffer at pos.
static size_t WriteBytes(const ByteData& byte_data, Byte* pos) {
  size_t byte_count = byte_data.GetByteCount();
  if (!byte_count) {
    return 0;
  }
  if (byte_data.GetType() == ByteData::kHex) {
    const string& value = byte_data.GetValue();
    for (size_t index = 0; index < byte_count; ++index) {
      if (!ByteData::Hex2Byte(value[2 * index], value[2 * index + 1], pos++)) {
        return 0;
      }
    }
  } else {
    std::memcpy(pos, byte_data.GetValue().c_str(), byte_count);
  }
  return byte_count;
}

ByteBuffer::ByteBuffer(size_t size, std::unique_ptr<Byte[]> buffer)
    : buffer_(std::move(buffer)), size_(size) {
  if (!buffer_) {
    size_ = 0;
  }
  if (!size_) {
    buffer_.reset();
  }
}

ByteBuffer::ByteBuffer(const std::vector<ByteData>& byte_data_vector) {
  size_ = 0;
  for (const auto& byte_data : byte_data_vector) {
    size_ += byte_data.GetByteCount();
  }
  if (!size_) {
    return;
  }
  // Note that within google3, std::make_unique is not available, and clangtidy
  // says use absl::make_unique. This library attempts to minimize the number of
  // dependencies on google3, hence the no lint on the next line.
  buffer_.reset(new Byte[size_]);  // NOLINT
  Byte* pos = buffer_.get();
  for (const auto& byte_data : byte_data_vector) {
    size_t bytes_written = WriteBytes(byte_data, pos);
    if (bytes_written == 0 && byte_data.GetByteCount() != 0) {
      size_ = 0;
      buffer_.reset(nullptr);
    }
    pos += bytes_written;
  }
}

bool ByteBuffer::SetBigEndianValue(size_t location, std::uint16_t value) {
  if (location + 1 >= size_) {
    return false;
  }
  buffer_[location] = static_cast<Byte>(value >> 8);
  buffer_[location + 1] = static_cast<Byte>(value & 0xFF);
  return true;
}

Byte* ByteBuffer::Release() {
  size_ = 0;
  return buffer_.release();
}

}  // namespace image_io
}  // namespace photos_editing_formats
