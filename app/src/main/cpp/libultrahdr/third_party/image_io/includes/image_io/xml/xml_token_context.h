#ifndef IMAGE_IO_XML_XML_TOKEN_CONTEXT_H_  // NOLINT
#define IMAGE_IO_XML_XML_TOKEN_CONTEXT_H_  // NOLINT

#include <string>
#include <vector>

#include "image_io/base/data_context.h"
#include "image_io/base/data_match_result.h"
#include "image_io/base/data_range.h"
#include "image_io/xml/xml_portion.h"

namespace photos_editing_formats {
namespace image_io {

class XmlActionContext;

/// A token context is passed from the action of an XmlTerminal to an XmlHandler
/// associated with the XmlActionContext used to call the action function.
class XmlTokenContext : public DataContext {
 public:
  explicit XmlTokenContext(const XmlActionContext& context);
  XmlTokenContext(size_t location, const DataRange& range,
                  const DataSegment& segment, const DataLineMap& data_line_map,
                  const DataMatchResult& result, const DataRange& token_range,
                  const XmlPortion& token_portion);

  /// @return The result associated with the context.
  const DataMatchResult& GetResult() const { return result_; }

  /// @return The token range for the token. Note that the token range may not
  /// be a subrange of the context's GetRange() or even the context's segment's
  /// data range. Such would be the case when a token's value is split across
  /// two or more data segments.
  const DataRange& GetTokenRange() const { return token_range_; }

  /// @return The portion of the token that this context represents. This
  /// portion value can be the bitwise or of any of the XmlPortion bit values.
  const XmlPortion& GetTokenPortion() const { return token_portion_; }

  /// Builds the string value of the token. If the context's token portion has
  /// the XmlPortion::kBegin bit set, the string value is first cleared. Then
  /// the string is extracted from the context's data source and appended onto
  /// the value. Remember that some token values (especially attribute values)
  /// can be quite long so care should be excercised when obtaining values with
  /// this function.
  /// @param value The value of the token being built.
  /// @param trim_first_and_last_chars Whether to remove the first and last
  /// characters of the token. This is nice to use when the token value is a
  /// quoted string and the value itself is wanted without the quote marks.
  /// @return Whether the token value is complete (i.e., the context's portion
  /// had the XmlPortion::kEnd bit set).
  bool BuildTokenValue(std::string* value,
                       bool trim_first_and_last_chars = false) const;

  /// Builds the complete range of the token, which may need to be represented
  /// by multiple disjoint ranges. If the token portion indicates all portions
  /// of the token are present, then this simply clears the vector and pushes
  /// copies the value returned by the GetTokenRange() into it. Otherwise, it
  /// does the heavy lifting to build the vector of ranges.
  /// @param value_ranges The vector of ranges of the token being built.
  /// @param trim_first_and_last_chars Whether to remove the first and last
  /// characters of the token. This is nice to use when the token value is a
  /// If this parameter is true, the effect will be to increase the begin value
  /// of the first range by 1 and decrease the last range's end by 1.
  /// @return Whether the token range value is complete (i.e., the context's
  /// portion had the XmlPortion::kEnd bit set).
  bool BuildTokenValueRanges(std::vector<DataRange>* value_ranges,
                             bool trim_first_and_last_chars = false) const;

  static XmlPortion ComputeTokenPortion(size_t token_scan_count,
                                        DataMatchResult::Type result_type);

 private:
  DataMatchResult result_;
  DataRange token_range_;
  XmlPortion token_portion_;
};

}  // namespace image_io
}  // namespace photos_editing_formats

#endif  // IMAGE_IO_XML_XML_TOKEN_CONTEXT_H_  // NOLINT
