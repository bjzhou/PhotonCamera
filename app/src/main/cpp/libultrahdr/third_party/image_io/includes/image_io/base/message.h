#ifndef IMAGE_IO_BASE_MESSAGE_H_  // NOLINT
#define IMAGE_IO_BASE_MESSAGE_H_  // NOLINT

#include <string>

namespace photos_editing_formats {
namespace image_io {

/// A message that is reported to and managed by the MessageHandler, and
/// possibly written by a MessageWriter.
class Message {
 public:
  /// The types of Messages.
  enum Type {
    /// A Status message.
    kStatus,

    /// A Warning message.
    kWarning,

    /// An error from the stdlib was detected. The std::errno variable can be
    /// used to programmatically decide what to do, or use the std::strerror
    /// function to get a string description of the error.
    kStdLibError,

    /// A premature end of the data being processed was found.
    kPrematureEndOfDataError,

    /// An expected string value was not found in the data being processed.
    kStringNotFoundError,

    /// An error occurred while decoding the data being processed.
    kDecodingError,

    /// An error occurred while parsing the data.
    kSyntaxError,

    /// An error occurred while using the data.
    kValueError,

    /// An internal error of some sort occurred.
    kInternalError
  };

  /// @param type The type of message to create.
  /// @param system_errno The errno value to use for kStdLibError type messages.
  /// @param text The text of the message.
  Message(Type type, int system_errno, const std::string& text)
      : type_(type), system_errno_(system_errno), text_(text) {}

  Message() = delete;

  bool operator==(const Message& rhs) const {
    return type_ == rhs.type_ && system_errno_ == rhs.system_errno_ &&
           text_ == rhs.text_;
  }

  bool operator!=(const Message& rhs) const {
    return type_ != rhs.type_ || system_errno_ != rhs.system_errno_ ||
           text_ != rhs.text_;
  }

  /// @return The type of message.
  Type GetType() const { return type_; }

  /// @return The system errno value used for kStdLibError messages.
  int GetSystemErrno() const { return system_errno_; }

  /// @return The text of the message.
  const std::string& GetText() const { return text_; }

  /// @return Whether the message is an error message.
  bool IsError() const {
    return type_ != Message::kStatus && type_ != Message::kWarning;
  }

  /// @return Whether the message is a warning message.
  bool IsWarning() const { return type_ == Message::kWarning; }

  /// @return Whether the message is a status message.
  bool IsStatus() const { return type_ == Message::kStatus; }

 private:
  /// The type of message.
  Type type_;

  /// If type == kStdLibError, the system's errno value at the time
  /// the error was reported, else it's value is 0.
  int system_errno_;

  /// The text associated with the message.
  std::string text_;
};

}  // namespace image_io
}  // namespace photos_editing_formats

#endif // IMAGE_IO_BASE_MESSAGE_H_  // NOLINT
