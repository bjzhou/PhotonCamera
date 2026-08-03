#include "image_io/base/message_handler.h"

#include <memory>
#include <string>
#include <utility>

#include "image_io/base/cout_message_writer.h"

namespace photos_editing_formats {
namespace image_io {

using std::string;
using std::unique_ptr;

MessageHandler::MessageHandler()
    : message_writer_(new CoutMessageWriter),
      message_store_(new VectorMessageStore),
      message_stats_(new MessageStats) {}

void MessageHandler::SetMessageWriter(
    std::unique_ptr<MessageWriter> message_writer) {
  message_writer_ = std::move(message_writer);
}

void MessageHandler::SetMessageStore(
    std::unique_ptr<MessageStore> message_store) {
  message_store_ = std::move(message_store);
}

void MessageHandler::ReportMessage(Message::Type type, const string& text) {
  int system_errno = (type == Message::kStdLibError) ? errno : 0;
  ReportMessage(Message(type, system_errno, text));
}

void MessageHandler::ReportMessage(const Message& message) {
  if (message.IsError()) {
    message_stats_->error_count++;
  } else if (message.IsWarning()) {
    message_stats_->warning_count++;
  } else {
    message_stats_->status_count++;
  }
  if (message_store_) {
    message_store_->AddMessage(message);
  }
  if (message_writer_) {
    message_writer_->WriteMessage(message);
  }
}

}  // namespace image_io
}  // namespace photos_editing_formats
