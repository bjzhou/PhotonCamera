#ifndef IMAGE_IO_BASE_MESSAGE_HANDLER_H_  // NOLINT
#define IMAGE_IO_BASE_MESSAGE_HANDLER_H_  // NOLINT

#include <memory>
#include <string>
#include <vector>

#include "image_io/base/message.h"
#include "image_io/base/message_stats.h"
#include "image_io/base/message_store.h"
#include "image_io/base/message_writer.h"

namespace photos_editing_formats {
namespace image_io {

/// MessageHandler provides the functions that all the code in this library uses
/// to report status and error conditions.
class MessageHandler {
 public:
  /// The default constructor for MessageHandler creates a MessageWriter and
  /// VectorMessageStore for handling writing and storing messages.
  MessageHandler();

  /// Sets the message writer to use when ReportMessage() is called. If client
  /// code does not call this function, the MessageHandler returned by the Get()
  /// function will have a CoutMessageWriter by default. If client code calls
  /// this function with a null, then ReportMessage() will not write messages at
  /// all, but just add them to the messages store.
  /// @param message_writer The message writer that ReportMessage uses, or null.
  void SetMessageWriter(std::unique_ptr<MessageWriter> message_writer);

  /// Sets the message store to use when ReportMessage() is called. If client
  /// code does not call this function, the MessageHandler returned by the Get()
  /// function will have a VectorMessageStore by default. If client code calls
  /// this function with a null, then ReportMessage() will not save messages at
  /// all, but just write them to the messages writer.
  /// @param message_store The message store that ReportMessage uses, or null.
  void SetMessageStore(std::unique_ptr<MessageStore> message_store);

  /// Clears the messages maintained by the message handler's store. Client code
  /// should call this function before calling any other standalone or class
  /// function in this library so as to provide a clean starting point with
  /// respect to error and status messages. Once all the calls have been made,
  /// client code should examine the messages or call HasErrorMessages() to
  /// determine the whether the calls succeeded or not. Finally client code
  /// should call this function again so that memory is not leaked when it is
  /// done using this library.
  void ClearMessages() {
    message_stats_->Clear();
    if (message_store_) {
      message_store_->ClearMessages();
    }
  }

  /// @return Whether the message handler's store has error messages or not.
  bool HasErrorMessages() const { return GetErrorMessageCount() > 0; }

  /// @return The number of error messages reported.
  size_t GetErrorMessageCount() const { return message_stats_->error_count; }

  /// @return The number of warning messages reported.
  size_t GetWarningMessageCount() const {
    return message_stats_->warning_count;
  }

  /// @return The number of status messages reported.
  size_t GetStatusMessageCount() const { return message_stats_->status_count; }

  /// @return The message stats object as a shared pointer.
  std::shared_ptr<MessageStats> GetMessageStats() const {
    return message_stats_;
  }

  /// @return The vector of errors maintained by the message handler's store.
  std::vector<Message> GetMessages() const {
    return message_store_ ? message_store_->GetMessages()
                          : std::vector<Message>();
  }

  /// Reports an error or a status message. This function is called from library
  /// code when it detects an error condition or wants to report status. If the
  /// message type is Message::kStdLibError, then the current value of the
  /// system's errno variable is used when the message is created. The message
  /// is added to the messages vector and if the message writer is not null, its
  /// WriteMessage function is called.
  /// @param type The type of message.
  /// @param text Text associated with the message.
  void ReportMessage(Message::Type type, const std::string& text);

  /// @param message The message to report.
  void ReportMessage(const Message& message);

 private:
  /// The message writer used by ReportMessage, or null.
  std::unique_ptr<MessageWriter> message_writer_;

  /// The message store for saving messages for later, or null.
  std::unique_ptr<MessageStore> message_store_;

  /// The message stats for counting messages.
  std::shared_ptr<MessageStats> message_stats_;
};

}  // namespace image_io
}  // namespace photos_editing_formats

#endif // IMAGE_IO_BASE_MESSAGE_HANDLER_H_  // NOLINT
