#ifndef IMAGE_IO_XML_XML_PI_RULE_H_  // NOLINT
#define IMAGE_IO_XML_XML_PI_RULE_H_  // NOLINT

#include "image_io/xml/xml_rule.h"

namespace photos_editing_formats {
namespace image_io {

/// The XmlPiRule parses the processing information syntax: "<?...?>". This
/// syntax is considerably simplified from the official XML specification. As
/// documented in the comments for the XmlHandler Pi() function, The leading
/// "<?" syntax is never sent to the handler, while the trailing "?>" literal
/// is always sent as part of the processing content token. This approach makes
/// it much easier to parse XML syntax. The alternate start point constructor
/// is used by the XmlElementContentRule.
class XmlPiRule : public XmlRule {
 public:
  XmlPiRule();
  explicit XmlPiRule(StartPoint start_point);

 private:
  /// Builds an XmlTokenContext from the XmlActionContext and calls the
  /// handler's Pi() function.
  /// @param context The action context from the rule's terminal.
  /// @return The result value from the handler's function.
  DataMatchResult HandlePiValue(const XmlActionContext& context);
};

}  // namespace image_io
}  // namespace photos_editing_formats

#endif // IMAGE_IO_XML_XML_PI_RULE_H_  // NOLINT
