#ifndef IMAGE_IO_GCONTAINER_GCONTAINER_H_  // NOLINT
#define IMAGE_IO_GCONTAINER_GCONTAINER_H_  // NOLINT

#include <iostream>
#include <string>
#include <vector>

namespace photos_editing_formats {
namespace image_io {
namespace gcontainer {

// Writes an image to a output_file_name, appending other_files (if they each
// exist) after the image's EOI marker.
// input_file_name must be a JPEG file.
bool WriteImageAndFiles(const std::string& input_file_name,
                        const std::vector<std::string>& other_files,
                        const std::string& output_file_name);

// Retrieves the bytes (of size file_length)  starting at file_starT_offset
// bytes after the EOI marker in input_file_name. Returns true if parsing was
// successful, false otherwise. GContainer callers are expected to have
// file_start_offset and file_length from the image metadata.
//
// input_file_name must be a JPEG.
// file_start_offset is the nth byte after (and excluding) the EOI marker in
// input_file_name. file_length is the size (in bytes) of content to parse.
// out_file_contents is populated with the requsted contents only if parsing is
// successful.
bool ParseFileAfterImage(const std::string& input_file_name,
                         size_t file_start_offset, size_t file_length,
                         std::string* out_file_contents);

// Used by AOSP.
bool ParseFileAfterImageFromStream(size_t start_offset, size_t length,
                                   std::istream& input_jpeg_stream,
                                   std::string* out_contents);

}  // namespace gcontainer
}  // namespace image_io
}  // namespace photos_editing_formats

#endif  // IMAGE_IO_GCONTAINER_GCONTAINER_H_  // NOLINT
