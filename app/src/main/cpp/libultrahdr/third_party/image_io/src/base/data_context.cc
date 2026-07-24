#include "image_io/base/data_context.h"

#include <algorithm>
#include <cctype>
#include <iomanip>
#include <sstream>
#include <string>

#include "image_io/base/byte_data.h"

namespace photos_editing_formats {
namespace image_io {

namespace {

void AddNames(const std::list<std::string>& name_list, std::stringstream* ss) {
  for (const auto& name : name_list) {
    *ss << name << ":";
  }
}

}  // namespace

std::string DataContext::GetInvalidLocationAndRangeErrorText() const {
  std::stringstream ss;
  ss << "Invalid location:" << location_ << " range:[" << range_.GetBegin()
     << "," << range_.GetEnd() << ") segment_range:["
     << segment_.GetDataRange().GetBegin() << ","
     << segment_.GetDataRange().GetEnd() << ")";
  return GetErrorText(ss.str(), "");
}

std::string DataContext::GetErrorText(
    const std::string& error_description,
    const std::string& expectation_description) const {
  std::list<std::string> none;
  return GetErrorText(none, none, error_description, expectation_description);
}

std::string DataContext::GetErrorText(
    const std::list<std::string>& prefix_name_list,
    const std::list<std::string>& postfix_name_list,
    const std::string& error_description,
    const std::string& expectation_description) const {
  const std::string kContinue("- ");
  std::stringstream ss;

  // Write error description if present.
  if (!error_description.empty()) {
    ss << error_description << std::endl;
  }

  // Write name:name:... if present.
  std::string names_string =
      GetNamesString(prefix_name_list, postfix_name_list);
  if (!names_string.empty()) {
    ss << kContinue << names_string << std::endl;
  }

  // Get the line:XX part of the line string.
  DataLine data_line;
  std::string line_number_string;
  if (IsValidLocationAndRange()) {
    data_line = line_info_map_.GetDataLine(location_);
    line_number_string = GetLineNumberString(data_line);
  }

  // Get the line_string related ranges and the line string.
  DataRange clipped_range, line_range;
  size_t spaces_before_caret = line_number_string.length();
  GetClippedAndLineRange(data_line, &clipped_range, &line_range);
  std::string line_string =
      GetLineString(clipped_range, line_range, &spaces_before_caret);

  // Write the line string
  ss << kContinue << line_number_string << line_string << std::endl;

  // Write the caret and expectation description
  size_t spaces_count = location_ + spaces_before_caret - line_range.GetBegin();
  std::string spaces(spaces_count, ' ');
  ss << kContinue << spaces << '^';
  if (!expectation_description.empty()) {
    ss << "expected:" << expectation_description;
  }
  return ss.str();
}

std::string DataContext::GetNamesString(
    const std::list<std::string>& prefix_name_list,
    const std::list<std::string>& postfix_name_list) const {
  std::stringstream ss;
  if (!prefix_name_list.empty() || !name_list_.empty() ||
      !postfix_name_list.empty()) {
    AddNames(prefix_name_list, &ss);
    AddNames(name_list_, &ss);
    AddNames(postfix_name_list, &ss);
  }
  return ss.str();
}

std::string DataContext::GetLineNumberString(const DataLine& data_line) const {
  std::stringstream liness;
  liness << "line:";
  if (data_line.number == 0) {
    liness << "?:";
  } else {
    liness << data_line.number << ":";
  }
  return liness.str();
}

void DataContext::GetClippedAndLineRange(const DataLine& data_line,
                                         DataRange* clipped_range,
                                         DataRange* line_range) const {
  // Lines could be really long, so provide some sane limits: some kLimit chars
  // on either side of the current location.
  const size_t kLimit = 25;
  size_t line_begin, line_end;
  *clipped_range = data_line.range.IsValid()
                       ? range_.GetIntersection(data_line.range)
                       : range_;
  if (clipped_range->IsValid() && clipped_range->Contains(location_)) {
    line_begin = (clipped_range->GetBegin() + kLimit < location_)
                     ? location_ - kLimit
                     : clipped_range->GetBegin();
    line_end = std::min(line_begin + 2 * kLimit, clipped_range->GetEnd());
  } else {
    line_begin = location_;
    line_end = std::min(location_ + 2 * kLimit, range_.GetEnd());
    *clipped_range = DataRange(line_begin, line_end);
  }
  *line_range = DataRange(line_begin, line_end);
}

std::string DataContext::GetLineString(const DataRange& clipped_range,
                                       const DataRange& line_range,
                                       size_t* spaces_before_caret) const {
  std::stringstream ss;
  if (!IsValidLocationAndRange()) {
    ss << "Invalid location or range";
    return ss.str();
  }

  const char* cbytes =
      reinterpret_cast<const char*>(segment_.GetBuffer(line_range.GetBegin()));
  if (cbytes != nullptr) {
    if (line_range.GetBegin() != clipped_range.GetBegin()) {
      ss << "...";
      *spaces_before_caret += 3;
    }
    for (size_t index = 0; index < line_range.GetLength(); ++index) {
      char cbyte = cbytes[index];
      if (isprint(cbyte)) {
        ss << cbyte;
      } else {
        ss << "\\x" << ByteData::Byte2Hex(cbyte);
        if (index + line_range.GetBegin() < location_) {
          *spaces_before_caret += 4;
        }
      }
    }
    if (line_range.GetEnd() != clipped_range.GetEnd()) {
      ss << "...";
    }
  }
  return ss.str();
}

}  // namespace image_io
}  // namespace photos_editing_formats
