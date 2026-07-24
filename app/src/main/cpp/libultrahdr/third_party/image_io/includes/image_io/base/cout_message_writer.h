#ifndef IMAGE_IO_BASE_COUT_MESSAGE_WRITER_H_  // NOLINT
#define IMAGE_IO_BASE_COUT_MESSAGE_WRITER_H_  // NOLINT

#include <iostream>

#include "image_io/base/message_writer.h"

namespace photos_editing_formats {
namespace image_io {

/// This subclass of MessageWriter writes messages to std::cout.
class CoutMessageWriter : public MessageWriter {
 public:
  void WriteMessage(const Message& message) override {
    std::cout << GetFormattedMessage(message) << std::endl;
  }
};

}  // namespace image_io
}  // namespace photos_editing_formats

#endif // IMAGE_IO_BASE_COUT_MESSAGE_WRITER_H_  // NOLINT
