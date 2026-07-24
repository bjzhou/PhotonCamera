#include "image_io/base/message_writer.h"

#include <cstring>
#include <sstream>
#include <string>

namespace photos_editing_formats {
namespace image_io {

using std::string;
using std::stringstream;

string MessageWriter::GetFormattedMessage(const Message& message) const {
  stringstream message_stream;
  auto type = message.GetType();
  if (type != Message::kStatus) {
    message_stream << GetTypeCategory(type) << ":";
  }
  if (type == Message::kInternalError || type == Message::kStdLibError) {
    message_stream << GetTypeDescription(type, message.GetSystemErrno()) << ":";
  }
  message_stream << message.GetText();
  return message_stream.str();
}

string MessageWriter::GetTypeCategory(Message::Type type) const {
  string category;
  switch (type) {
    case Message::kStatus:
      category = "STATUS";
      break;
    case Message::kWarning:
      category = "WARNING";
      break;
    case Message::kStdLibError:
    case Message::kPrematureEndOfDataError:
    case Message::kStringNotFoundError:
    case Message::kDecodingError:
    case Message::kSyntaxError:
    case Message::kValueError:
    case Message::kInternalError:
      category = "ERROR";
      break;
  }
  return category;
}

string MessageWriter::GetTypeDescription(Message::Type type,
                                         int system_errno) const {
  string description;
  switch (type) {
    case Message::kStatus:
      break;
    case Message::kWarning:
      break;
    case Message::kStdLibError:
      description = system_errno > 0 ? std::strerror(system_errno) : "Unknown";
      break;
    case Message::kPrematureEndOfDataError:
      description = "Premature end of data";
      break;
    case Message::kStringNotFoundError:
      description = "String not found";
      break;
    case Message::kDecodingError:
      description = "Decoding error";
      break;
    case Message::kSyntaxError:
      description = "Syntax error";
      break;
    case Message::kValueError:
      description = "Value error";
      break;
    case Message::kInternalError:
      description = "Internal error";
      break;
  }
  return description;
}

}  // namespace image_io
}  // namespace photos_editing_formats
