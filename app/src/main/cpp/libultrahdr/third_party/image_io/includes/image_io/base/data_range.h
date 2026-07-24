#ifndef IMAGE_IO_BASE_DATA_RANGE_H_  // NOLINT
#define IMAGE_IO_BASE_DATA_RANGE_H_  // NOLINT

#include <algorithm>

namespace photos_editing_formats {
namespace image_io {

/// A class to specify a range of bytes in some sort of array. The range is
/// defined like others in STL to include the begin value and exclude the end
/// value: [begin,end). Invalid ranges where end <= begin are ok - no exceptions
/// are ever thrown - but the IsValid() function will return false, and other
/// functions will behave in an appropriate fashion.
class DataRange {
 public:
  /// The main constructor to define a range.
  /// @param begin The begin location of the range.
  /// @param end The end location of the range.
  DataRange(size_t begin, size_t end) : begin_(begin), end_(end) {}

  /// The default construtor defines an invalid range in which both begin and
  /// end are set to 0.
  DataRange() : begin_(0), end_(0) {}

  DataRange(const DataRange& data_range) = default;
  DataRange& operator=(const DataRange& data_range) = default;

  /// @return The begin value of the range.
  size_t GetBegin() const { return begin_; }

  /// @return The end value of the rangel.
  size_t GetEnd() const { return end_; }

  /// @return Whether the range is valid.
  bool IsValid() const { return begin_ < end_; }

  /// @return The length of the range, or 0 if the range is invalid.
  size_t GetLength() const { return IsValid() ? end_ - begin_ : 0; }

  /// Determines if the location is in this range or not.
  /// @param location The location being considered for this test.
  /// @return True if the location is in the range, else false.
  bool Contains(size_t location) const {
    return location >= begin_ && location < end_;
  }

  /// Determines if another DataRange is a subrange of this range or not.
  /// @param data_range The DataRange being considered for this test.
  /// @return True if data_range is subrange of this range, else not.
  bool Contains(const DataRange& data_range) const {
    return IsValid() && data_range.IsValid() && data_range.begin_ >= begin_ &&
           data_range.end_ <= end_;
  }

  /// Computes the DataRange that is the intersection of another range with this
  /// one. If there is no intersection, the resulting range will be invalid.
  /// @param data_range The DataRange to use compute the intersection with this
  ///     one.
  /// @return The DataRange that represents the intersection, or one that is
  ///     is invalid if the ranges do not overlap at all.
  DataRange GetIntersection(const DataRange& data_range) const {
    return DataRange((std::max)(data_range.begin_, begin_),
                     (std::min)(data_range.end_, end_));
  }

  /// @param rhs A DataRange to compare with this one.
  /// @return True if the two ranges are equal (even if invalid), else false.
  bool operator==(const DataRange& rhs) const {
    return begin_ == rhs.begin_ && end_ == rhs.end_;
  }

  /// @param rhs A DataRange to compare with this one.
  /// @return True if the two ranges not equal (even if invalid), else false.
  bool operator!=(const DataRange& rhs) const {
    return begin_ != rhs.begin_ || end_ != rhs.end_;
  }

 private:
  /// The begin value of the range.
  size_t begin_;

  /// The end value of the range.
  size_t end_;
};

}  // namespace image_io
}  // namespace photos_editing_formats

#endif // IMAGE_IO_BASE_DATA_RANGE_H_  // NOLINT
