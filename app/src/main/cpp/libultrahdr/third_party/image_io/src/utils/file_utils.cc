#include "image_io/utils/file_utils.h"

#include <sys/stat.h>
#include <fstream>
#include <iostream>
#include <memory>

#include "image_io/base/data_range.h"

namespace photos_editing_formats {
namespace image_io {

using std::fstream;
using std::istream;
using std::ostream;
using std::unique_ptr;

bool GetFileSize(const std::string& file_name, size_t* size) {
  struct stat stat_buf;
  if (stat(file_name.c_str(), &stat_buf)) {
    return false;
  } else {
    if (size) {
      *size = stat_buf.st_size;
    }
    return true;
  }
}

unique_ptr<ostream> OpenOutputFile(const std::string& file_name,
                                   MessageHandler* message_handler) {
  auto* file_stream = new fstream(file_name, std::ios::out | std::ios::binary);
  if (file_stream && !file_stream->is_open()) {
    delete file_stream;
    file_stream = nullptr;
    if (message_handler) {
      message_handler->ReportMessage(Message::kStdLibError, file_name);
    }
  }
  return unique_ptr<ostream>(file_stream);
}

unique_ptr<istream> OpenInputFile(const std::string& file_name,
                                  MessageHandler* message_handler) {
  auto* file_stream = new fstream(file_name, std::ios::in | std::ios::binary);
  if (file_stream && !file_stream->is_open()) {
    delete file_stream;
    file_stream = nullptr;
    if (message_handler) {
      message_handler->ReportMessage(Message::kStdLibError, file_name);
    }
  }
  return unique_ptr<istream>(file_stream);
}

std::shared_ptr<DataSegment> ReadEntireFile(const std::string& file_name,
                                            MessageHandler* message_handler) {
  size_t buffer_size = 0;
  std::shared_ptr<DataSegment> shared_data_segment;
  if (GetFileSize(file_name, &buffer_size)) {
    unique_ptr<istream> shared_istream =
        OpenInputFile(file_name, message_handler);
    if (shared_istream) {
      Byte* buffer = new Byte[buffer_size];
      if (buffer) {
        shared_data_segment =
            DataSegment::Create(DataRange(0, buffer_size), buffer);
        shared_istream->read(reinterpret_cast<char*>(buffer), buffer_size);
        size_t bytes_read = shared_istream->tellg();
        if (bytes_read != buffer_size) {
          shared_data_segment.reset();
        }
      }
    }
  }
  if (!shared_data_segment && message_handler) {
    message_handler->ReportMessage(Message::kStdLibError, file_name);
  }
  return shared_data_segment;
}

}  // namespace image_io
}  // namespace photos_editing_formats
