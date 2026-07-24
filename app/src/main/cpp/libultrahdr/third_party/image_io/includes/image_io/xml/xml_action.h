#ifndef IMAGE_IO_XML_XML_ACTION_H_  // NOLINT
#define IMAGE_IO_XML_XML_ACTION_H_  // NOLINT

#include <functional>

#include "image_io/base/data_match_result.h"
#include "image_io/xml/xml_handler_context.h"

namespace photos_editing_formats {
namespace image_io {

class XmlActionContext;
class XmlTerminal;

/// The definition for an action function associated with an XmlTerminal.
/// If the action does not need to change the result of the terminal, it can
/// simply return the value from XmlActionContext::GetResult().
using XmlAction =
    std::function<DataMatchResult(const XmlActionContext& context)>;

/// The data context passed from an XmlTerminal to its action function.
class XmlActionContext : public XmlHandlerContext {
 public:
  XmlActionContext(const XmlHandlerContext& context, XmlTerminal* terminal,
                   const DataMatchResult& result)
      : XmlHandlerContext(context), terminal_(terminal), result_(result) {}
  XmlActionContext(size_t location, const DataRange& range,
                   const DataSegment& segment, const DataLineMap& data_line_map,
                   XmlHandler* handler, XmlTerminal* terminal,
                   const DataMatchResult& result)
      : XmlHandlerContext(location, range, segment, data_line_map, handler),
        terminal_(terminal),
        result_(result) {}

  /// @return The terminal associated with the context.
  XmlTerminal* GetTerminal() const { return terminal_; }

  /// @return The result associated with the constext.
  const DataMatchResult& GetResult() const { return result_; }

  /// @param bytes_consumed The value to set in the returned result.
  /// @return A result based on the context's action, but with its bytes
  /// consumed value set to the given value.
  DataMatchResult GetResultWithBytesConsumed(size_t bytes_consumed) const {
    auto result = result_;
    return result.SetBytesConsumed(bytes_consumed);
  }

 private:
  XmlTerminal* terminal_;
  DataMatchResult result_;
};

}  // namespace image_io
}  // namespace photos_editing_formats

#endif // IMAGE_IO_XML_XML_ACTION_H_  // NOLINT
