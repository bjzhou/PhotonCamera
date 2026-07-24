#ifndef IMAGE_IO_BASE_DATA_LINE_MAP_H_  // NOLINT
#define IMAGE_IO_BASE_DATA_LINE_MAP_H_  // NOLINT

#include <vector>

#include "image_io/base/data_range.h"
#include "image_io/base/data_segment.h"

namespace photos_editing_formats {
namespace image_io {

/// The line number and range of a text line in a data source. The range does
/// not include the terminating new line. Valid line numbers are greater than 0.
struct DataLine {
  DataLine() : number(0) {}
  DataLine(size_t a_number, const DataRange& a_range)
      : number(a_number), range(a_range) {}
  size_t number;
  DataRange range;
};

/// A class that maps a data source location to a data line structure that has
/// the line number and data range of the line.
class DataLineMap {
 public:
  DataLineMap() : last_line_incomplete_(false) {}

  /// Returns the number of data lines in the map.
  size_t GetDataLineCount() const { return data_lines_.size(); }

  /// Returns the data lines
  const std::vector<DataLine> GetDataLines() const { return data_lines_; }

  /// Returns the data line assocated with the location, or one the number of
  /// which is zero and the range of which is invalid.
  DataLine GetDataLine(size_t location) const;

  /// Finds the next set of data line numbers and ranges in the segment and adds
  /// them to the map. If the map is empty, the line numbers will start at 1;
  /// otherwise the numbering of the new lines will start at the next line
  /// number indicated in the map.
  void FindDataLines(const DataRange& range, const DataSegment& segment);

  /// Clears the map and returns it to its startup state.
  void Clear();

 private:
  /// The data lines in the map, sorted by ascending range.GetBegin() value.
  std::vector<DataLine> data_lines_;

  /// Whether the last data line in the vector is complete (ended in a newline).
  bool last_line_incomplete_;
};

}  // namespace image_io
}  // namespace photos_editing_formats

#endif // IMAGE_IO_ BASE_DATA_LINE_MAP_H_  // NOLINT
