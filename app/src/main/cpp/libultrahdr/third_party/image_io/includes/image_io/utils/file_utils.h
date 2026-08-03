#ifndef IMAGE_IO_UTILS_FILE_UTILS_H_  // NOLINT
#define IMAGE_IO_UTILS_FILE_UTILS_H_  // NOLINT

#include <iostream>
#include <memory>
#include <string>

#include "image_io/base/data_segment.h"
#include "image_io/base/message_handler.h"

namespace photos_editing_formats {
namespace image_io {

/// @param file_name The name of the file to get the size in bytes of.
/// @param size A pointer to a variable to receive the size.
/// @return Whether file size was obtained properly.
bool GetFileSize(const std::string& file_name, size_t* size);

/// @param file_name The name of the file to open for output.
/// @param message_handler Optional message handler to write messages to.
/// @return An ostream pointer or nullptr if the open failed.
std::unique_ptr<std::ostream> OpenOutputFile(const std::string& file_name,
                                             MessageHandler* message_handler);

/// @param file_name The name of the file to open for input.
/// @param message_handler Optional message handler to write messages to.
/// @return An istream pointer or nullptr if the open failed.
std::unique_ptr<std::istream> OpenInputFile(const std::string& file_name,
                                            MessageHandler* message_handler);

/// Opens the named file for input, gets its size, and reads the entire contents
/// into a data segment that is returned to the caller.
/// @param file_name The name of the file to open for input.
/// @param message_handler Optional message handler to write messages to.
/// @return A DataSegment pointer or nullptr if the open and reading failed.
std::shared_ptr<DataSegment> ReadEntireFile(const std::string& file_name,
                                            MessageHandler* message_handler);

}  // namespace image_io
}  // namespace photos_editing_formats

#endif // IMAGE_IO_UTILS_FILE_UTILS_H_  // NOLINT
