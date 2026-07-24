#include "image_io/xml/xml_token_context.h"

#include <string>

#include "image_io/xml/xml_action.h"
#include "image_io/xml/xml_terminal.h"

namespace photos_editing_formats {
namespace image_io {

using std::vector;

namespace {

const XmlPortion kAllPortions =
    XmlPortion::kBegin | XmlPortion::kMiddle | XmlPortion::kEnd;

XmlPortion GetPortion(const XmlActionContext& context) {
  return XmlTokenContext::ComputeTokenPortion(
      context.GetTerminal()->GetScanner()->GetScanCallCount(),
      context.GetResult().GetType());
}

}  // namespace

XmlTokenContext::XmlTokenContext(const XmlActionContext& context)
    : DataContext(context),
      result_(context.GetResult()),
      token_range_(context.GetTerminal()->GetScanner()->GetTokenRange()),
      token_portion_(GetPortion(context)) {}

XmlTokenContext::XmlTokenContext(size_t location, const DataRange& range,
                                 const DataSegment& segment,
                                 const DataLineMap& data_line_map,
                                 const DataMatchResult& result,
                                 const DataRange& token_range,
                                 const XmlPortion& token_portion)
    : DataContext(location, range, segment, data_line_map),
      result_(result),
      token_range_(token_range),
      token_portion_(token_portion) {}

bool XmlTokenContext::BuildTokenValue(std::string* value,
                                      bool trim_first_and_last_chars) const {
  bool contains_end = ContainsAny(token_portion_, XmlPortion::kEnd);
  size_t end_delta = trim_first_and_last_chars && contains_end ? 1 : 0;
  size_t begin_delta = 0;
  if (ContainsAny(token_portion_, XmlPortion::kBegin)) {
    begin_delta = trim_first_and_last_chars ? 1 : 0;
    value->clear();
  }
  if (ContainsAny(token_portion_, kAllPortions)) {
    const auto& segment = GetSegment();
    DataRange range_with_deltas(token_range_.GetBegin() + begin_delta,
                                token_range_.GetEnd() - end_delta);
    auto clipped_range = GetRange().GetIntersection(range_with_deltas);
    if (clipped_range.IsValid()) {
      const char* cbytes = reinterpret_cast<const char*>(
          segment.GetBuffer(clipped_range.GetBegin()));
      value->append(cbytes, clipped_range.GetLength());
    }
  }
  return contains_end;
}

bool XmlTokenContext::BuildTokenValueRanges(
    vector<DataRange>* value_ranges, bool trim_first_and_last_chars) const {
  size_t delta = trim_first_and_last_chars ? 1 : 0;
  auto clipped_range = GetRange().GetIntersection(token_range_);
  if (ContainsAny(token_portion_, XmlPortion::kBegin)) {
    value_ranges->clear();
    if (clipped_range.IsValid()) {
      value_ranges->push_back(
          DataRange(clipped_range.GetBegin() + delta, clipped_range.GetEnd()));
    }

  } else if (ContainsAny(token_portion_, kAllPortions)) {
    if (clipped_range.IsValid()) {
      if (!value_ranges->empty() &&
          value_ranges->back().GetEnd() == clipped_range.GetBegin()) {
        value_ranges->back() =
            DataRange(value_ranges->back().GetBegin(), clipped_range.GetEnd());
      } else {
        value_ranges->push_back(clipped_range);
      }
    }
  }
  bool has_end = ContainsAny(token_portion_, XmlPortion::kEnd);
  if (has_end && !value_ranges->empty() && clipped_range.IsValid() &&
      trim_first_and_last_chars) {
    auto& back_range = value_ranges->back();
    back_range = DataRange(back_range.GetBegin(), back_range.GetEnd() - delta);
  }
  return has_end;
}

XmlPortion XmlTokenContext::ComputeTokenPortion(
    size_t token_scan_count, DataMatchResult::Type result_type) {
  const bool first_scan = token_scan_count == 1;
  const bool subsequent_scan = token_scan_count > 1;
  const bool full_match = result_type == DataMatchResult::kFull;
  const bool partial_match =
      result_type == DataMatchResult::kPartialOutOfData ||
      result_type == DataMatchResult::kPartial;
  XmlPortion portion = XmlPortion::kNone;
  if (first_scan && full_match) {
    portion = kAllPortions;
  } else if (first_scan && partial_match) {
    portion = XmlPortion::kBegin | XmlPortion::kMiddle;
  } else if (subsequent_scan && full_match) {
    portion = XmlPortion::kMiddle | XmlPortion::kEnd;
  } else if (subsequent_scan && partial_match) {
    portion = XmlPortion::kMiddle;
  }
  return portion;
}

}  // namespace image_io
}  // namespace photos_editing_formats
