#ifndef IMAGE_IO_JPEG_JPEG_SEGMENT_H_  // NOLINT
#define IMAGE_IO_JPEG_JPEG_SEGMENT_H_  // NOLINT

#include "image_io/base/data_range.h"
#include "image_io/base/data_segment.h"
#include "image_io/jpeg/jpeg_marker.h"

namespace photos_editing_formats {
namespace image_io {

/// A JpegSegment is an entity in a JPEG file that starts with a JpegMarker and
/// is followed by zero or more payload bytes. The JpegSegment has a DataRange
/// that indicates the position of the segment in the originating DataSource.
/// A JpegScanner obtains DataSegment instances from a DataSource in such a way
/// that it can guarantee that a JpegSegment will span at most two DataSegment
/// instances. Clients of JpegSegment need not be concerned with the number of
/// underlying DataSegments if they use the member functions defined here to
/// access the segment's bytes.
class JpegSegment {
 public:
  /// If a JpegSegment has a variable length data payload, the payload data is
  /// located at this offset from the start of the payload.
  static constexpr size_t kVariablePayloadDataOffset = 2;

  /// Constructs a JpegSegment starting and ending at the indicated points in
  /// the given DataSegment instances, the second of which may be null.
  /// @param begin The start of JpegSegment range.
  /// @param end The end of JpegSegment range.
  /// @param begin_segment The DataSegment that contains the begin location of
  ///     the JpegSegment and the end if the end_segment is null.
  /// @param end_segment The DataSegment that contains the end location of the
  ///     JpegSegment if it is not null.
  JpegSegment(size_t begin, size_t end, const DataSegment* begin_segment,
              const DataSegment* end_segment)
      : data_range_(begin, end),
        begin_segment_(begin_segment),
        end_segment_(end_segment){}
  ~JpegSegment() = default;

  /// @return The DataRange of the data in the segment.
  const DataRange& GetDataRange() const { return data_range_; }

  /// @return The begin location of the segment's data range.
  size_t GetBegin() const { return data_range_.GetBegin(); }

  /// @return The end location of the segment's data range.
  size_t GetEnd() const { return data_range_.GetEnd(); }

  /// @return The length of the segment's data range.
  size_t GetLength() const { return data_range_.GetLength(); }

  /// @return True if the segment's range contains the location, else false.
  bool Contains(size_t location) const {
    return data_range_.Contains(location);
  }

  /// @return The location of the segment's JpegMarker.
  size_t GetMarkerLocation() const { return GetBegin(); }

  /// @return The location of the segment's payload, which includes the payload
  ///     length if applicable for the type of segment.
  size_t GetPayloadLocation() const { return GetBegin() + JpegMarker::kLength; }

  /// @return The location of the segment's payload's data.
  size_t GetPayloadDataLocation() const {
    return GetMarker().HasVariablePayloadSize()
               ? GetPayloadLocation() + kVariablePayloadDataOffset
               : GetPayloadLocation();
  }

  /// @param The location at which to obtain the byte value.
  /// @return The validated byte value at the location, or 0/false if the
  /// segment's range does not contain the location.
  ValidatedByte GetValidatedByte(size_t location) const {
    return DataSegment::GetValidatedByte(location, begin_segment_,
                                                   end_segment_);
  }

  /// @return The payload size or zero if the segment's marker indicates the
  ///     segment does not have a payload. The payload size includes the two
  ///     bytes that encode the length of the payload. I.e., the payload data
  ///     size is two less than the value returned by this function.
  size_t GetVariablePayloadSize() const;

  /// @param location The start location of the compare operation.
  /// @param str The string to compare the bytes with.
  /// @return True if the segment's bytes at the given location equals the str.
  bool BytesAtLocationStartWith(size_t location, const char* str) const;

  /// @param location The start location of the search operation.
  /// @param str The string to search for.
  /// @return True if the segment's contains the string, starting at location.
  bool BytesAtLocationContain(size_t location, const char* str) const;

  /// @param start_location The location at which to start the search.
  /// @param value The byte value to search for.
  /// @return The location in the segment's bytes of the next occurrence of the
  ///     given byte value, starting at the indicated location, or the segment's
  ///     range's GetEnd() location if not found.
  size_t Find(size_t start_location, Byte value) const;

  /// @param start_location The location at which to start the search.
  /// @param str The string to search for.
  /// @return the location in the segment's bytes of the next occurrence of the
  ///     given string value,  starting at the indicated location, or the
  ///     segment's range's GetEnd() location if not found.
  size_t Find(size_t location, const char* str) const;

  /// XMP property names have the syntax property_name="property_value".
  /// @param segment The segment in which to look for the property name/value.
  /// @param start_location Where to start looking for the property name.
  /// @param property_name The name of the property to look for.
  /// @return The string value associated with the xmp property name, or an
  ///     empty string if the property was not found.
  std::string ExtractXmpPropertyValue(size_t start_location,
                                      const char* property_name) const;

  /// XMP property names have the syntax property_name="property_value".
  /// @start_location The location in the segment to begin looking for the
  ///     property_name=" syntax.
  /// @return The location of the next byte following the quote, or GetEnd() if
  ///     the property_name=" syntax was not found.
  size_t FindXmpPropertyValueBegin(size_t start_location,
                                   const char* property_name) const;

  /// XMP property names have the syntax property_name="property_value".
  /// @start_location The location in the segment to begin looking for the final
  ///     quote of the property value.
  /// @return The location of quote that terminates the property_value, or
  ///     GetEnd() if the final quote was not found.
  size_t FindXmpPropertyValueEnd(size_t start_location) const;

  /// @param The DataRange to use to extract a string from the segment's bytes.
  /// @return The string extracted from the segment at locations indicated by
  ///     the data_range, or an empty string if the data_range is not contained
  ///     in the segment's range, or any invalid or zero bytes are encountered.
  std::string ExtractString(const DataRange& data_range) const;

  /// @return the JpegMarker of this segment.
  JpegMarker GetMarker() const {
    size_t marker_type_location = GetMarkerLocation() + 1;
    // An invalid ValidatedByte has a value of 0, and a JpegMarker with a 0
    // type value is invalid, so its ok to just grab the ValidatedByte's value.
    return JpegMarker(GetValidatedByte(marker_type_location).value);
  }

  /// Fills two strings with byte_count bytes from the start of the segment's
  /// payload in a form suitable for creating a "hex dump" of the segment. Note
  /// that if the jpeg segment has a entropy delimiter type marker, there is
  /// technically no payload to dump. However in this case, as long as a valid
  /// byte can be obtained from the jpeg segment's underlying data segments, a
  /// byte value will be dumped to the strings.
  /// @param byte_count The number of bytes to dump from the segment's payload.
  /// @param hex_string A string that will be at most 2 * byte_count in length
  ///     that will contain the hex values of the bytes.
  /// @param ascii_string A string that will be at most byte_count in length
  ///     that will contain the printable character of the bytes, or a '.' for
  ///     non-printable byte values.
  void GetPayloadHexDumpStrings(size_t byte_count, std::string* hex_string,
                                std::string* ascii_string) const;

 private:
  /// The DataRange of the JpegSegment.
  DataRange data_range_;

  /// The DataSegment that contains the begin of the range and possibly the
  /// end. This DataSegment will never be null.
  const DataSegment* begin_segment_;

  /// The DataSegment, that if not null, will contain the end location of the
  /// JPegSegment's DataRange.
  const DataSegment* end_segment_;
};

}  // namespace image_io
}  // namespace photos_editing_formats

#endif // IMAGE_IO_JPEG_JPEG_SEGMENT_H_  // NOLINT
