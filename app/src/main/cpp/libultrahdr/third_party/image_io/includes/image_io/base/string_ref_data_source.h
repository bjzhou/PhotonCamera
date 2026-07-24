#ifndef IMAGE_IO_BASE_STRING_REF_DATA_SOURCE_H_  // NOLINT
#define IMAGE_IO_BASE_STRING_REF_DATA_SOURCE_H_  // NOLINT

#include <string>

#include "image_io/base/data_segment_data_source.h"

namespace photos_editing_formats {
namespace image_io {

/// A DataSource that reads bytes from a string held by ref. The underlying
/// string must have a lifetime that exceeds the lifetime of this data source,
/// and the string contents must not change while the data source is referencing
/// it.
class StringRefDataSource : public DataSegmentDataSource {
 public:
  /// Constructs a StringRefDataSource using the given string.
  /// @param string_refg The string to read from.
  explicit StringRefDataSource(const std::string& string_ref);

  /// Returns the string being used as the data source.
  const std::string& GetStringRef() const { return string_ref_; }

 private:
  /// The string to read from.
  const std::string& string_ref_;
};

}  // namespace image_io
}  // namespace photos_editing_formats

#endif  // IMAGE_IO_BASE_STRING_REF_DATA_SOURCE_H_  // NOLINT
