#ifndef IMAGE_IO_BASE_DATA_CONTEXT_H_  // NOLINT
#define IMAGE_IO_BASE_DATA_CONTEXT_H_  // NOLINT

#include <list>
#include <string>

#include "image_io/base/data_line_map.h"
#include "image_io/base/data_range.h"
#include "image_io/base/data_segment.h"

namespace photos_editing_formats {
namespace image_io {

/// A class to represent a position in a textual subrange of a DataSegment, and
/// a means to create an usable error message that shows the relevant line
/// number and line text and the location as a "caret" position. The class also
/// provides a list of names that can be used to add context to the errors.
class DataContext {
 public:
  /// @param location A location in the data segment.
  /// @param range A subrange of the data segment's range.
  /// @param data_line_map A map for obtaining the line number and range given
  /// the location.
  DataContext(size_t location, const DataRange& range,
              const DataSegment& segment, const DataLineMap& data_line_map)
      : location_(location),
        range_(range),
        segment_(segment),
        line_info_map_(data_line_map) {}

  /// @return The location of the context.
  size_t GetLocation() const { return location_; }

  /// @param location A new value to use to set the location of the context.
  void SetLocation(size_t location) { location_ = location; }

  /// @param delta A delta value that is added to the location of the context.
  /// @return The new location of the context.
  size_t IncrementLocation(size_t delta) {
    location_ += delta;
    return location_;
  }

  /// @return The range of the data segment defined by this context.
  const DataRange& GetRange() const { return range_; }

  /// @param range Sets a new range to use for this context.
  void SetRange(const DataRange& range) { range_ = range; }

  /// @return The data segment of this context.
  const DataSegment& GetSegment() const { return segment_; }

  /// @return The line info map of this context.
  const DataLineMap& GetDataLineMap() const { return line_info_map_; }

  /// @return Whether the context's location and range are valid for use with
  /// the data segment's range.
  bool IsValidLocationAndRange() const {
    return range_.IsValid() && range_.Contains(location_) &&
           segment_.GetDataRange().Contains(range_);
  }

  /// @return A pointer to the data segment's buffer, cast as a const char* type
  /// pointer, or nullptr if the location and/or range are invalid.
  const char* GetCharBytes() const {
    return IsValidLocationAndRange()
               ? reinterpret_cast<const char*>(segment_.GetBuffer(location_))
               : nullptr;
  }

  /// @return The number of bytes available from the location of the context to
  /// the end of the context's range, or 0 if the location and/or range are
  /// invalid.
  size_t GetBytesAvailable() const {
    return IsValidLocationAndRange() ? range_.GetEnd() - location_ : 0;
  }

  /// @return The context's name list that is used when creating error messages.
  std::list<std::string>& GetNameList() { return name_list_; }

  /// @return The context's name list that is used when creating error messages.
  const std::list<std::string>& GetNameList() const { return name_list_; }

  /// @return An error message that describes the location/range data segment
  /// range that leads to the IsValidLocationRange() function returning false.
  /// Great to user for internal error messages.
  std::string GetInvalidLocationAndRangeErrorText() const;

  /// @return An error message with the given descriptions for the error and the
  /// expectation. See the other GetErrorText() function documentation for more
  /// details on the format of the error messsage.
  std::string GetErrorText(const std::string& error_description,
                           const std::string& expectation_description) const;

  /// @return An error message with the given descriptions for the error and the
  /// expectation. The format of the error message is:
  ///   error_description
  ///   - prefix_name_list:name_list:postfix_name_list:
  ///   - at line:number:line_contents
  ///   -                ^expected:expectation_description
  /// If error_description is empty then the first line containing it is not
  /// written. If expectation_description is empty, then the expected:... part
  /// of the last line is not written. If the context's name list, and the
  /// pre/postfix name lists are all empty, then that line is not written.
  std::string GetErrorText(const std::list<std::string>& prefix_name_list,
                           const std::list<std::string>& postfix_name_list,
                           const std::string& error_description,
                           const std::string& expectation_description) const;

 private:
  /// @return The string with the contents of the prefix_name_list, name_list_
  /// and the postfix namelist concatenated with a ":" separator.
  std::string GetNamesString(
      const std::list<std::string>& prefix_name_list,
      const std::list<std::string>& postfix_name_list) const;

  /// @return The line number string of the form line:XX, where XX is the data
  /// line's number or "?" if the nmber is zero.
  std::string GetLineNumberString(const DataLine& data_line) const;

  /// Gets the clipped and line ranges using the data line's range value.
  void GetClippedAndLineRange(const DataLine& data_line,
                              DataRange* clipped_range,
                              DataRange* line_range) const;

  /// Gets the line string using the clipped and line ranges and updates the
  /// number of spaces before the caret depending on the contents of the line.
  std::string GetLineString(const DataRange& clipped_range,
                            const DataRange& line_range,
                            size_t* spaces_before_caret) const;

  /// See the constructor for documentation on the data members.
  size_t location_;
  DataRange range_;
  const DataSegment& segment_;
  const DataLineMap& line_info_map_;
  std::list<std::string> name_list_;
};

}  // namespace image_io
}  // namespace photos_editing_formats

#endif // IMAGE_IO_BASE_DATA_CONTEXT_H_  // NOLINT
