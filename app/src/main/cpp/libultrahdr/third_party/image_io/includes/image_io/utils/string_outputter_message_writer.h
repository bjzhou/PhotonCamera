#ifndef IMAGE_IO_UTILS_STRING_OUTPUTTER_MESSAGE_WRITER_H_  // NOLINT
#define IMAGE_IO_UTILS_STRING_OUTPUTTER_MESSAGE_WRITER_H_  // NOLINT

#include "image_io/base/message_writer.h"
#include "image_io/utils/string_outputter.h"

namespace photos_editing_formats {
namespace image_io {

/// A MessageWriter that writes the messages to the StringOutputter function.
class StringOutputterMessageWriter : public MessageWriter {
 public:
  /// @param outputter The outputter function to write messages to.
  explicit StringOutputterMessageWriter(const StringOutputter& outputter)
      : outputter_(outputter) {}
  void WriteMessage(const Message& message) override {
    outputter_(GetFormattedMessage(message));
    outputter_("\n");
  }

 private:
  StringOutputter outputter_;
};

}  // namespace image_io
}  // namespace photos_editing_formats

#endif  // IMAGE_IO_UTILS_STRING_OUTPUTTER_MESSAGE_WRITER_H_  // NOLINT
