#include "image_io/jpeg/jpeg_segment_lister.h"

#include <iomanip>
#include <sstream>
#include <string>

#include "image_io/jpeg/jpeg_marker.h"
#include "image_io/jpeg/jpeg_scanner.h"
#include "image_io/jpeg/jpeg_segment.h"

namespace photos_editing_formats {
namespace image_io {

/// The width of the type column.
constexpr size_t kTypeWidth = 5;

/// The width of the number columns.
constexpr size_t kNumWidth = 12;

/// The number of bytes to dump from each segment.
constexpr size_t kDumpCount = 16;

/// The width of the ascii dump column, including the surrounding [] brackets.
constexpr size_t kAscWidth = kDumpCount + 2;

/// The width of the hex dump column, including the surrounding [] brackets.
constexpr size_t kHexWidth = 2 * kDumpCount + 2;

using std::string;
using std::stringstream;

namespace {

/// @param value The value to convert to a string.
/// @return The value paraemter as a string of length kNumWidth.
string Size2String(size_t value) {
  stringstream stream;
  stream << std::setw(kNumWidth) << std::right << value;
  return stream.str();
}

/// @param value The value to convert to a hex string.
/// @return The value paraemter as a hex string of length kNumWidth.
string Size2HexString(size_t value) {
  stringstream stream;
  stream << std::hex << std::uppercase << std::setw(kNumWidth) << std::right
         << value;
  return stream.str();
}

/// @param str The string to add brackets to.
/// @return The str value enclosed by square brackets.
string BracketedString(const string& str) {
  stringstream stream;
  stream << '[' << str << ']';
  return stream.str();
}

/// @param str The string to center.
/// @param width The width to center the string in.
/// @return A string with leading/trailing spaces added so that it is centered.
string CenteredString(const string& str, size_t width) {
  if (str.length() >= width) {
    return str;
  }
  size_t spacing = width - str.length();
  size_t leading = spacing / 2;
  size_t trailing = spacing - leading;
  return string(leading, ' ') + str + string(trailing, ' ');
}

/// @param type The type value of the segment. If this value is empty, then a
///     divider line with dashes is created.
/// @param begin The begin value of the segment.
/// @param count The count (size) of the segment.
/// @param hex_string The hex dump string of the segment.
/// @param asc_string The ascii dump string of the segment.
/// @return A line with the various parameters properly spaced.
string SegmentLine(string type, string begin, string count, string hex_string,
                   string asc_string) {
  if (type.empty()) {
    type = string(kTypeWidth, '-');
    begin = count = string(kNumWidth, '-');
    hex_string = string(kHexWidth, '-');
    asc_string = string(kAscWidth, '-');
  }
  stringstream line_stream;
  line_stream << std::setw(kTypeWidth) << std::left << type << " "
              << std::setw(kNumWidth) << std::right << begin << " "
              << std::setw(kNumWidth) << std::right << count << " "
              << std::setw(kHexWidth) << std::right << hex_string << " "
              << std::setw(kAscWidth) << std::right << asc_string;
  return line_stream.str();
}

/// @param type The type value of the summary. If this value is empty, then a
///     divider line with dashes is created.
/// @param count The number of the segments of the given type.
/// @return A line with the parameters properly spaced.
string SummaryLine(string type, string count) {
  if (type.empty()) {
    type = string(kTypeWidth, '-');
    count = string(kNumWidth, '-');
  }
  stringstream line_stream;
  line_stream << std::setw(kTypeWidth) << std::left << type << " "
              << std::setw(kNumWidth) << std::right << count;
  return line_stream.str();
}

}  // namespace

JpegSegmentLister::JpegSegmentLister()
    : marker_type_counts_(kJpegMarkerArraySize, 0) {}

void JpegSegmentLister::Start(JpegScanner* scanner) {
  scanner->UpdateInterestingMarkerFlags(JpegMarker::Flags().set());
  string divider_line = SegmentLine("", "", "", "", "");
  lines_.push_back(divider_line);
  lines_.push_back(SegmentLine("Type", "Offset", "Payload Size",
                               CenteredString("Hex Payload", kHexWidth),
                               CenteredString("Ascii Payload", kAscWidth)));
  lines_.push_back(divider_line);
}

void JpegSegmentLister::Process(JpegScanner* scanner,
                                const JpegSegment& segment) {
  JpegMarker marker = segment.GetMarker();
  string hex_payload, ascii_payload;
  ++marker_type_counts_[marker.GetType()];
  segment.GetPayloadHexDumpStrings(kDumpCount, &hex_payload, &ascii_payload);
  lines_.push_back(SegmentLine(
      marker.GetName(), Size2HexString(segment.GetBegin()),
      Size2HexString(segment.GetEnd() - segment.GetBegin() - 2),
      BracketedString(hex_payload), BracketedString(ascii_payload)));
}

void JpegSegmentLister::Finish(JpegScanner* scanner) {
  lines_.push_back("");
  string divider_line = SummaryLine("", "");
  lines_.push_back(divider_line);
  lines_.push_back(SummaryLine("Type", "Count"));
  lines_.push_back(divider_line);
  int total_segments = 0;
  for (int type = 0; type < kJpegMarkerArraySize; ++type) {
    int count = marker_type_counts_[type];
    if (count) {
      total_segments += count;
      lines_.push_back(
          SummaryLine(JpegMarker(type).GetName(), Size2String(count)));
    }
  }
  lines_.push_back(divider_line);
  lines_.push_back(SummaryLine("TOTAL", Size2String(total_segments)));
}

}  // namespace image_io
}  // namespace photos_editing_formats
