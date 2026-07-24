#ifndef IMAGE_IO_XML_XML_ATTRIBUTE_RULE_H_  // NOLINT
#define IMAGE_IO_XML_XML_ATTRIBUTE_RULE_H_  // NOLINT

#include "image_io/xml/xml_rule.h"

namespace photos_editing_formats {
namespace image_io {

/// The XmlAttributeRule parses the following syntax:
/// S? Name S? = S? 'Value'
/// S? Name S? = S? "Value"
class XmlAttributeRule : public XmlRule {
 public:
  XmlAttributeRule();

 private:
  /// Builds an XmlTokenContext from the XmlActionContext and calls the
  /// handler's AttributeName() function.
  /// @param context The action context from the name terminal.
  /// @return The result value from the handler's function.
  DataMatchResult HandleName(const XmlActionContext& context);

  /// Builds an XmlTokenContext from the XmlActionContext and calls the
  /// handler's AttributeValue() function.
  /// @param context The action context from the quoted string terminal.
  /// @return The result value from the handler's function.
  DataMatchResult HandleValue(const XmlActionContext& context);
};

}  // namespace image_io
}  // namespace photos_editing_formats

#endif // IMAGE_IO_XML_XML_ATTRIBUTE_RULE_H_  // NOLINT
