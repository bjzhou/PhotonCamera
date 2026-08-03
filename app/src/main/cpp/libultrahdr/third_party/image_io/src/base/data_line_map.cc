#include "image_io/base/data_line_map.h"

#include <algorithm>

namespace photos_editing_formats {
namespace image_io {

DataLine DataLineMap::GetDataLine(size_t location) const {
  if (data_lines_.empty()) {
    return DataLine();
  }
  DataLine key(0, DataRange(location, location));
  auto not_less_pos =
      std::lower_bound(data_lines_.begin(), data_lines_.end(), key,
                       [](const DataLine& lhs, const DataLine& rhs) {
                         return lhs.range.GetBegin() < rhs.range.GetBegin();
                       });
  if (not_less_pos == data_lines_.end()) {
    --not_less_pos;
  } else if (not_less_pos != data_lines_.begin()) {
    auto prev_pos = not_less_pos - 1;
    if (location < prev_pos->range.GetEnd()) {
      not_less_pos = prev_pos;
    }
  }
  if (not_less_pos->range.Contains(location)) {
    return *not_less_pos;
  }
  return DataLine();
}

void DataLineMap::FindDataLines(const DataRange& range,
                                const DataSegment& segment) {
  size_t line_end;
  size_t range_end = range.GetEnd();
  size_t line_begin = range.GetBegin();
  size_t next_number = GetDataLineCount() + 1;
  while (line_begin < range_end) {
    line_end = std::min(range_end, segment.Find(line_begin, '\n'));
    if (last_line_incomplete_ && !data_lines_.empty()) {
      line_begin = data_lines_.back().range.GetBegin();
      data_lines_.back().range = DataRange(line_begin, line_end);
      if (line_end < range_end &&
          segment.GetValidatedByte(line_end).value == '\n') {
        last_line_incomplete_ = false;
      }
    } else {
      data_lines_.emplace_back(next_number++, DataRange(line_begin, line_end));
    }
    line_begin = line_end + 1;
  }
  last_line_incomplete_ =
      line_end == range_end || segment.GetValidatedByte(line_end).value != '\n';
}

void DataLineMap::Clear() {
  data_lines_.clear();
  last_line_incomplete_ = false;
}

}  // namespace image_io
}  // namespace photos_editing_formats
