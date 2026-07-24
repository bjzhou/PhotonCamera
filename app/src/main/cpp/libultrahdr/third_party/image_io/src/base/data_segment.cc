#include "image_io/base/data_segment.h"

#include <algorithm>
#include <cstring>

namespace photos_editing_formats {
namespace image_io {

using std::default_delete;
using std::shared_ptr;

shared_ptr<DataSegment> DataSegment::Create(
    const DataRange& data_range, const Byte* buffer,
    DataSegment::BufferDispositionPolicy buffer_policy) {
  return shared_ptr<DataSegment>(
      new DataSegment(data_range, buffer, buffer_policy),
      default_delete<DataSegment>());
}

size_t DataSegment::Find(size_t start_location, Byte value) const {
  if (!Contains(start_location)) {
    return GetEnd();
  }
  const Byte* location = reinterpret_cast<const Byte*>(
      memchr((buffer_ + start_location) - GetBegin(), value,
             GetEnd() - start_location));
  return location ? (location - buffer_) + GetBegin() : GetEnd();
}

size_t DataSegment::Find(size_t location, const char* str,
                         size_t str_length) const {
  char char0 = *str;
  while (Contains(location)) {
    size_t memchr_count = GetEnd() - location;
    const void* void0_ptr = memchr(GetBuffer(location), char0, memchr_count);
    if (void0_ptr) {
      const Byte* byte0_ptr = reinterpret_cast<const Byte*>(void0_ptr);
      size_t byte0_location = (byte0_ptr - buffer_) + GetBegin();
      if (byte0_location + str_length <= GetEnd()) {
        const char* char0_ptr = reinterpret_cast<const char*>(void0_ptr);
        if (strncmp(char0_ptr, str, str_length) == 0) {
          return byte0_location;
        }
      }
    }
    ++location;
  }
  return GetEnd();
}

ValidatedByte DataSegment::GetValidatedByte(size_t location,
                                            const DataSegment* segment1,
                                            const DataSegment* segment2) {
  for (const DataSegment* segment : {segment1, segment2}) {
    if (segment && segment->Contains(location)) {
      return segment->GetValidatedByte(location);
    }
  }
  return InvalidByte();
}

size_t DataSegment::Find(size_t start_location, Byte value,
                         const DataSegment* segment1,
                         const DataSegment* segment2) {
  if (segment1 && segment2 && segment1->GetEnd() == segment2->GetBegin()) {
    size_t value_location = segment2->GetEnd();
    if (segment1->Contains(start_location)) {
      value_location = segment1->Find(start_location, value);
      if (value_location == segment1->GetEnd()) {
        value_location = segment2->Find(segment2->GetBegin(), value);
      }
    } else {
      value_location = segment2->Find(start_location, value);
    }
    return value_location;
  }
  size_t segment1_end = segment1 ? segment1->GetEnd() : 0;
  return segment2 ? std::max(segment1_end, segment2->GetEnd()) : segment1_end;
}

}  // namespace image_io
}  // namespace photos_editing_formats
