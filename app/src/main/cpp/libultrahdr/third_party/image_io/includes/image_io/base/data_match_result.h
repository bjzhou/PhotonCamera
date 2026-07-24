#ifndef IMAGE_IO_BASE_DATA_MATCH_RESULT_H_  // NOLINT
#define IMAGE_IO_BASE_DATA_MATCH_RESULT_H_  // NOLINT

#include "image_io/base/message.h"

namespace photos_editing_formats {
namespace image_io {

/// The result of a some sort of match operation of the text in a data segment.
/// The data associated with a match result include the number of bytes
/// consumed to produce the result, type of match, and in the case of an error
/// an optional Message describing the error.
class DataMatchResult {
 public:
  /// The type of match.
  enum Type {
    /// An error occurred while performing the match operation.
    kError = -1,

    /// No match was found.
    kNone = 0,

    /// A partial match of some sort was found.
    kPartial = 1,

    /// A partial match was found, but the end of the data in the segment or
    /// the available range was found.
    kPartialOutOfData = 2,

    /// A full match was found.
    kFull = 3,
  };

  DataMatchResult() : DataMatchResult(kNone, 0) {}
  explicit DataMatchResult(Type type) : DataMatchResult(type, 0) {}
  DataMatchResult(Type type, size_t bytes_consumed)
      : message_(Message::kStatus, 0, ""),
        bytes_consumed_(bytes_consumed),
        type_(type),
        has_message_(false),
        can_continue_(true) {}

  /// @return The type of the match result.
  Type GetType() const { return type_; }

  /// @return Whether the result indicates processing can continue.
  bool CanContinue() const { return can_continue_; }

  /// @return Whether the match result has a message associated with it.
  bool HasMessage() const { return has_message_; }

  /// @return The message associated with the result.
  const Message& GetMessage() const { return message_; }

  /// @return The number of bytes consumed to produce the result.
  size_t GetBytesConsumed() const { return bytes_consumed_; }

  /// @param delta The byte count to increase the bytes consumed value with.
  size_t IncrementBytesConsumed(size_t delta) {
    bytes_consumed_ += delta;
    return bytes_consumed_;
  }

  /// @param type The type to use for this match result.
  /// @return A reference to this match result.
  DataMatchResult& SetType(Type type) {
    type_ = type;
    return *this;
  }

  /// Sets the flag that indicates whether processing can continue.
  /// @param can_continue The new value for the can_continue_ flag.
  DataMatchResult& SetCanContinue(bool can_continue) {
    can_continue_ = can_continue;
    return *this;
  }

  /// @param bytes_consumed The byte count to use for this match result.
  /// @return A reference to this match result.
  DataMatchResult& SetBytesConsumed(size_t bytes_consumed) {
    bytes_consumed_ = bytes_consumed;
    return *this;
  }

  /// @param message The message to use for this match result.
  /// @return A reference to this match result.
  DataMatchResult& SetMessage(const Message& message) {
    message_ = message;
    has_message_ = true;
    return *this;
  }

  /// @param type The message type to use for this match result.
  /// @param text The message text to use for this match result.
  /// @return A reference to this match result.
  DataMatchResult& SetMessage(const Message::Type type,
                              const std::string& text) {
    return SetMessage(Message(type, 0, text));
  }

  /// @param other The other result to test for equality with this one.
  /// @return Whether this and the other results are equal
  bool operator==(const DataMatchResult& other) const {
    return can_continue_ == other.can_continue_ &&
           has_message_ == other.has_message_ && type_ == other.type_ &&
           bytes_consumed_ == other.bytes_consumed_ &&
           message_ == other.message_;
  }

  /// @param other The other result to test for inequality with this one.
  /// @return Whether this and the other results are not equal
  bool operator!=(const DataMatchResult& other) const {
    return !(*this == other);
  }

 private:
  Message message_;
  size_t bytes_consumed_;
  Type type_;
  bool has_message_;
  bool can_continue_;
};

}  // namespace image_io
}  // namespace photos_editing_formats

#endif // IMAGE_IO_BASE_DATA_MATCH_RESULT_H_  // NOLINT
