#include "image_io/base/string_ref_data_source.h"

#include <string>

namespace photos_editing_formats {
namespace image_io {

namespace {

/// @param str The string from which to create a DataSegment.
/// @return A DataSegment the byte pointer of which is taken from the str.
std::shared_ptr<DataSegment> CreateDataSegment(const std::string &str) {
  Byte *bytes = reinterpret_cast<Byte *>(const_cast<char *>(str.c_str()));
  return DataSegment::Create(DataRange(0, str.length()), bytes,
                             DataSegment::BufferDispositionPolicy::kDontDelete);
}

}  // namespace

StringRefDataSource::StringRefDataSource(const std::string &string_ref)
    : DataSegmentDataSource(CreateDataSegment(string_ref)),
      string_ref_(string_ref) {}

}  // namespace image_io
}  // namespace photos_editing_formats
