#include "image_io/jpeg/jpeg_segment.h"

#include <cctype>
#include <iomanip>
#include <sstream>
#include <string>

namespace photos_editing_formats {
namespace image_io {

using std::string;
using std::stringstream;

/// Finds the character allowing it to be preceded by whitespace characters.
/// @param segment The segment in which to look for the character.
/// @param start_location The location at which to start looking.
/// @param value The character value to look for.
/// @return The location of the character or segment.GetEnd() if not found,
///     of non whitespace characters are found first.
static size_t SkipWhiteSpaceFindChar(const JpegSegment& segment,
                                     size_t start_location, char value) {
  for (size_t location = start_location; location < segment.GetEnd();
       ++location) {
    ValidatedByte validated_byte = segment.GetValidatedByte(location);
    if (!validated_byte.is_valid) {
      return segment.GetEnd();
    }
    if (validated_byte.value == Byte(value)) {
      return location;
    }
    if (!std::isspace(validated_byte.value)) {
      return segment.GetEnd();
    }
  }
  return segment.GetEnd();
}

size_t JpegSegment::GetVariablePayloadSize() const {
  if (!GetMarker().HasVariablePayloadSize()) {
    return 0;
  }
  size_t payload_location = GetPayloadLocation();
  ValidatedByte hi = GetValidatedByte(payload_location);
  ValidatedByte lo = GetValidatedByte(payload_location + 1);
  if (!hi.is_valid || !lo.is_valid) {
    return 0;
  }
  return static_cast<size_t>(hi.value) << 8 | static_cast<size_t>(lo.value);
}

bool JpegSegment::BytesAtLocationStartWith(size_t location,
                                           const char* str) const {
  while (*str && Contains(location)) {
    ValidatedByte validated_byte = GetValidatedByte(location++);
    if (!validated_byte.is_valid || Byte(*str++) != validated_byte.value) {
      return false;
    }
  }
  return *str == 0;
}

bool JpegSegment::BytesAtLocationContain(size_t location,
                                         const char* str) const {
  return Find(location, str) != GetEnd();
}

size_t JpegSegment::Find(size_t location, const char* str) const {
  Byte byte0 = static_cast<Byte>(*str);
  while ((location = Find(location, byte0)) < GetEnd()) {
    if (BytesAtLocationStartWith(location, str)) {
      return location;
    }
    ++location;
  }
  return GetEnd();
}

size_t JpegSegment::Find(size_t start_location, Byte value) const {
  if (!begin_segment_ && !end_segment_) {
    return GetEnd();
  }
  size_t value_location = GetEnd();
  if (begin_segment_ && !end_segment_) {
    value_location = begin_segment_->Find(start_location, value);
  } else {
    value_location =
      DataSegment::Find(start_location, value, begin_segment_, end_segment_);
  }
  return Contains(value_location) ? value_location : GetEnd();
}

std::string JpegSegment::ExtractXmpPropertyValue(
    size_t start_location, const char* property_name) const {
  size_t begin_value_location =
      FindXmpPropertyValueBegin(start_location, property_name);
  if (begin_value_location != GetEnd()) {
    size_t end_value_location = FindXmpPropertyValueEnd(begin_value_location);
    if (end_value_location != GetEnd()) {
      DataRange data_range(begin_value_location, end_value_location);
      return ExtractString(data_range);
    }
  }
  return "";
}

size_t JpegSegment::FindXmpPropertyValueBegin(size_t start_location,
                                              const char* property_name) const {
  size_t property_location = Find(start_location, property_name);
  if (property_location != GetEnd()) {
    size_t equal_location = SkipWhiteSpaceFindChar(
        *this, property_location + strlen(property_name), '=');
    if (equal_location != GetEnd()) {
      size_t quote_location =
          SkipWhiteSpaceFindChar(*this, equal_location + 1, '"');
      if (quote_location != GetEnd()) {
        return quote_location + 1;
      }
    }
  }
  return GetEnd();
}

size_t JpegSegment::FindXmpPropertyValueEnd(size_t start_location) const {
  return Find(start_location, Byte('"'));
}

std::string JpegSegment::ExtractString(const DataRange& data_range) const {
  std::string value;
  if (Contains(data_range.GetBegin()) && data_range.GetEnd() <= GetEnd()) {
    size_t start_location = data_range.GetBegin();
    size_t length = data_range.GetLength();
    value.resize(length, ' ');
    for (size_t index = 0; index < length; ++index) {
      ValidatedByte validated_byte = GetValidatedByte(start_location + index);
      if (!validated_byte.value) {  // Invalid bytes have a zero value.
        value.resize(0);
        break;
      }
      value[index] = static_cast<char>(validated_byte.value);
    }
  }
  return value;
}

void JpegSegment::GetPayloadHexDumpStrings(size_t byte_count,
                                           std::string* hex_string,
                                           std::string* ascii_string) const {
  stringstream ascii_stream;
  stringstream hex_stream;
  hex_stream << std::hex << std::uppercase;

  size_t dump_count = GetMarker().IsEntropySegmentDelimiter()
                          ? byte_count
                          : std::min(byte_count, GetLength() - 2);
  for (size_t index = 0; index < dump_count; ++index) {
    ValidatedByte payload_byte = GetValidatedByte(GetPayloadLocation() + index);
    if (!payload_byte.is_valid) {
      break;
    }
    Byte value = payload_byte.value;
    hex_stream << std::setfill('0') << std::setw(2) << static_cast<int>(value);
    ascii_stream << (isprint(value) ? static_cast<char>(value) : '.');
  }
  size_t current_count = ascii_stream.str().length();
  for (size_t index = current_count; index < byte_count; ++index) {
    hex_stream << "  ";
    ascii_stream << ".";
  }
  *hex_string = hex_stream.str();
  *ascii_string = ascii_stream.str();
}

}  // namespace image_io
}  // namespace photos_editing_formats
