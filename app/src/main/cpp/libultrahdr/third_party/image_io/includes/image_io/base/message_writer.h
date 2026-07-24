#ifndef IMAGE_IO_BASE_MESSAGE_WRITER_H_  // NOLINT
#define IMAGE_IO_BASE_MESSAGE_WRITER_H_  // NOLINT

#include "image_io/base/message.h"

namespace photos_editing_formats {
namespace image_io {

/// A message writer is used by MessageHandler to write messages as they are
/// reported via the ReportMessage function. The main function, WriteMessage
/// must be implemented by subclasses. Subclasses can also override any or all
/// of the other virtual functions, GetFormattedMessage(), GetTypeCategory()
/// and GetTypeDescription() to suit their needs.
class MessageWriter {
 public:
  virtual ~MessageWriter() = default;

  /// This function is called to write a message. Implementations can call the
  /// GetFormattedMessage function and write it wherever it needs to go, or
  /// do something else entirely.
  /// @param message The message to write.
  virtual void WriteMessage(const Message& message) = 0;

  /// Formats the message into a single string suitable for writing. This
  /// implementation returns a string that has the format
  /// <GetTypeCategory()><GetTypeDescription()>:text
  /// @param message The message for which a formatted string is wanted.
  /// @return A string describing the message.
  virtual std::string GetFormattedMessage(const Message& message) const;

  /// @param type The type of message to get the category of.
  /// @return A string describing the type category; this implementation returns
  ///     (the obviously nonlocalized strings) "STATUS" or "ERROR"
  virtual std::string GetTypeCategory(Message::Type type) const;

  /// @param type The type of message to get the description of.
  /// @param system_errno Used for kStdLibError type messages.
  /// @return A (non-localized) string description of the type.
  virtual std::string GetTypeDescription(Message::Type type,
                                         int system_errno) const;
};

}  // namespace image_io
}  // namespace photos_editing_formats

#endif // IMAGE_IO_BASE_MESSAGE_WRITER_H_  // NOLINT
