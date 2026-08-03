#ifndef IMAGE_IO_BASE_MESSAGE_STORE_H_  // NOLINT
#define IMAGE_IO_BASE_MESSAGE_STORE_H_  // NOLINT

#include <vector>
#include "image_io/base/message.h"

namespace photos_editing_formats {
namespace image_io {

/// An abstract base class for storing and reporting on Messages.
class MessageStore {
 public:
  virtual ~MessageStore() = default;

  /// Clears the messages maintained by the store.
  virtual void ClearMessages() = 0;

  // @message The message to add to the store.
  virtual void AddMessage(const Message& message) = 0;

  /// @return A vector of messages maintained by the store; this vector may be
  ///     empty even if the AddMessage function was called, depending on the
  ///     concrete subclass is implemented.
  virtual std::vector<Message> GetMessages() const = 0;

  /// @return Whether the store has error messages or not. This value is
  ///     guarenteed to be accurate based on the latest calls to the
  ///     ClearMessages and AddMessage functions.
  virtual bool HasErrorMessages() const = 0;
};

/// A MessageStore that saves the messages in a vector. The implementation of
/// this class is not thread safe.
class VectorMessageStore : public MessageStore {
 public:
  void ClearMessages() override { messages_.clear(); }
  void AddMessage(const Message& message) override {
    messages_.push_back(message);
  }
  std::vector<Message> GetMessages() const override { return messages_; }
  bool HasErrorMessages() const override {
    for (const auto& message : messages_) {
      if (message.GetType() != Message::kStatus) {
        return true;
      }
    }
    return false;
  }

 private:
  std::vector<Message> messages_;
};

/// A MessageStore that simply keeps track of whether error messages have been
/// added or not, but does not store the messages themselves. The implementation
/// of this class is should not cause any crashes if run in a multi-threaded
/// environment, though there may be some cases where erroneous results are
/// returned by the HasErrorMessages function.
class ErrorFlagMessageStore : public MessageStore {
 public:
  ErrorFlagMessageStore() : has_error_(false) {}
  void ClearMessages() override { has_error_ = false; }
  void AddMessage(const Message& message) override {
    if (message.IsError()) {
      has_error_ = true;
    }
  }
  std::vector<Message> GetMessages() const override {
    return std::vector<Message>();
  }
  bool HasErrorMessages() const override { return has_error_; }

 private:
  bool has_error_;
};

}  // namespace image_io
}  // namespace photos_editing_formats

#endif // IMAGE_IO_BASE_MESSAGE_STORE_H_  // NOLINT
