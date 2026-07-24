#ifndef IMAGE_IO_UTILS_STRING_OUTPUTTER_H_  // NOLINT
#define IMAGE_IO_UTILS_STRING_OUTPUTTER_H_  // NOLINT

#include <functional>
#include <string>

namespace photos_editing_formats {
namespace image_io {

/// A typedef for a function that accepts a string and writes it somewhere.
/// These types of functions are typically used in command line tools to write
/// the output of the tool to stdout or some other location. The function
/// should not write its own new line at the end of the str.
using StringOutputter = std::function<void(const std::string& str)>;

}  // namespace image_io
}  // namespace photos_editing_formats

#endif  // IMAGE_IO_UTILS_STRING_OUTPUTTER_H_  // NOLINT
