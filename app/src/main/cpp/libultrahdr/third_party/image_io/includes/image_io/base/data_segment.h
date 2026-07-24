#ifndef IMAGE_IO_BASE_DATA_SEGMENT_H_  // NOLINT
#define IMAGE_IO_BASE_DATA_SEGMENT_H_  // NOLINT

#include <cstring>
#include <memory>

#include "image_io/base/data_range.h"
#include "image_io/base/types.h"

namespace photos_editing_formats {
namespace image_io {

class DataRange;

/// A DataSegment represents a portion of a larger "array" of byte data. Each
/// data segment knows (via its DataRange member) its location in the larger
/// array. The byte data of each data segment is accessed by its location
/// in that larger array. Instances of DataSegment are typically created or
/// managed by instances of DataSource which offers them up to client code.
/// A shared_ptr is used to control the lifetime of DataSegments. For more
/// information on this, see the comments in DataSource.
class DataSegment {
 public:
  /// A creation parameter for indicating whether or not, upon destruction, the
  /// DataSegment's buffer should be deallocated.
  enum BufferDispositionPolicy {
    /// Policy to deallocate the buffer upon destruction.
    kDelete,

    /// Policy to leave the buffer upon destruction.
    kDontDelete
  };

  /// Creates a new DataSegment with the given DataRange and byte buffer.
  /// @param data_range The DataRange of the byte data in the buffer.
  /// @param buffer The byte data of the data segment.
  /// @param buffer_policy The buffer ownership policy (Delete or DontDelete).
  /// @return A shared pointer to the data segment.
  static std::shared_ptr<DataSegment> Create(
      const DataRange& data_range, const Byte* buffer,
      BufferDispositionPolicy buffer_policy);

  /// Creates a new DataSegment with the given DataRange and byte buffer.
  /// The DataSegment takes ownership of the buffer and will delete the buffer
  /// when the DataSegment itself is destroyed.
  /// @param data_range The DataRange of the byte data in the buffer.
  /// @param buffer The byte data of the data segment; The DataSegment takes
  ///     ownership of the buffer and will delete it when it is deleted.
  /// @return A shared pointer to the data segment.
  static std::shared_ptr<DataSegment> Create(const DataRange& data_range,
                                             const Byte* buffer) {
    return Create(data_range, buffer, BufferDispositionPolicy::kDelete);
  }

  /// @return The DataRange of the data in the segment.
  const DataRange& GetDataRange() const { return data_range_; }

  /// @return The begin location of the segment's data range.
  size_t GetBegin() const { return data_range_.GetBegin(); }

  /// @return The end location of the segment's data range.
  size_t GetEnd() const { return data_range_.GetEnd(); }

  /// @return The length of the segment's data range.
  size_t GetLength() const { return data_range_.GetLength(); }

  /// @return Whether the segment's range is valid.
  bool Contains(size_t location) const {
    return data_range_.Contains(location);
  }

  /// Gets the validated byte value of the segment at the given location.
  /// @param location The location in the segment to get the byte value of.
  /// @return The validated byte at the given location or 0/false if the
  /// segment's range does does not contain the location.
  ValidatedByte GetValidatedByte(size_t location) const {
    return Contains(location) ? ValidatedByte(buffer_[location - GetBegin()])
                              : InvalidByte();
  }

  /// Returns a pointer to the type at the give location in the dta segment.
  /// @param location The location of the byte to get the buffer pointer of.
  /// @return The pointer to the byte in the segment's buffer, or the nullptr
  ///     if the segment does not contain the location.
  const Byte* GetBuffer(size_t location) const {
    return Contains(location) ? &buffer_[location - GetBegin()] : nullptr;
  }

  /// Finds the location of the string in the data segment. Although a data
  /// segment has an array of Bytes (an unsigned quantity), very often the
  /// data they contain are strings - a sequence of bytes, none of which have
  /// the sign bit set. As an aid in expressing the alorithms for finding such
  /// strings, this function allows client code to express the searched-for
  /// string as a zero-terminated array of chars.
  /// @param start_location The location at which to start looking.
  /// @param str The string to find in the segment. The strlen function is
  ///     used to find the length of the string to search for.
  /// @return The location of the start of the string, or the segment's end
  ///     location value.
  size_t Find(size_t start_location, const char* str) const {
    return Find(start_location, str, std::strlen(str));
  }

  /// Finds the location of the string in the data segment. Although a data
  /// segment has an array of Bytes (an unsigned quantity), very often the
  /// data they contain are strings - a sequence of bytes, none of which have
  /// the sign bit set. As an aid in expressing the alorithms for finding such
  /// strings, this function allows client code to express the searched-for
  /// string as an array of chars and a length.
  /// @param start_location The location at which to start looking.
  /// @param str The string to find in the segment.
  /// @param str_length The length of the string to find.
  /// @return The location of the start of the string, or the segment's end
  ///     location value.
  size_t Find(size_t location, const char* str, size_t str_length) const;

  /// Finds the location of the given byte value in the data segment.
  /// @param start_location The location at which to start looking.
  /// @param value The byte value to search for.
  /// @return The location of the value, or the segment's end location value.
  size_t Find(size_t start_location, Byte value) const;

  /// Sometimes the data of concern spans two data segments. For instance, a
  /// JPEG data segment marker may start at the end of one data segment and
  /// extend into the following segment. This helper function makes it easier to
  /// write code to treat two data segments as one entity for the purpose of
  /// getting the byte value at the given location.
  /// @param location The location in the segment to get the byte value of.
  /// @param segment1 The first data segment to use (maybe nullptr).
  /// @param segment2 The second data segment to use (may be nullptr).
  /// @return The validated byte at the given location, or InvalidByte() if
  ///      neither segment contains the location.
  static ValidatedByte GetValidatedByte(size_t location,
                                        const DataSegment* segment1,
                                        const DataSegment* segment2);

  /// Sometimes the data of concern spans two data segments. For instance, a
  /// JPEG data segment marker may start at the end of one data segment and
  /// extend into the following segment. This helper function makes it easier to
  /// write code to treat two data segments as one entity for the purpose of
  /// finding a byte value.
  /// @param start_location The location at which to start looking.
  /// @param value The byte value to search for.
  /// @param segment1 The first data segment to use.
  /// @param segment2 The second data segment to use.
  /// @return The location of the value if it's found and the two segments are
  ///         contiguous (i.e., if segment1->GetEnd() == segment2->GetBegin()),
  ///         else the max(segment1->GetEnd(), segment2->GetEnd()).
  static size_t Find(size_t start_location, Byte value,
                     const DataSegment* segment1, const DataSegment* segment2);

 private:
  DataSegment(const DataRange& data_range, const Byte* buffer,
              BufferDispositionPolicy buffer_policy)
      : data_range_(data_range),
        buffer_(buffer),
        buffer_policy_(buffer_policy) {}

  ~DataSegment() {
    // If kDelete is not set (default) the buffer memory will remain allocated.
    if (buffer_policy_ == BufferDispositionPolicy::kDelete) {
      delete[] buffer_;
    }
  }

  /// The default_delete needs to be a friend so that the shared pointer can
  /// call the private destructor.
  friend struct std::default_delete<DataSegment>;

 private:
  /// The data range of the data segment.
  DataRange data_range_;

  /// The buffer that contains the segment data.
  const Byte* buffer_;

  /// The policy that dictates whether or not the buffer will be deallocated.
  BufferDispositionPolicy buffer_policy_;
};

}  // namespace image_io
}  // namespace photos_editing_formats

#endif  // IMAGE_IO_BASE_DATA_SEGMENT_H_  // NOLINT
