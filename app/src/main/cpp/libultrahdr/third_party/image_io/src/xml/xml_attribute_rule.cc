#include "image_io/xml/xml_attribute_rule.h"

#include "image_io/xml/xml_handler.h"
#include "image_io/xml/xml_token_context.h"

namespace photos_editing_formats {
namespace image_io {

XmlAttributeRule::XmlAttributeRule() : XmlRule("Attribute") {
  // S? Name S? = S? 'Value'
  AddOptionalWhitespaceTerminal();
  AddNameTerminal().WithAction(
      [&](const XmlActionContext& context) { return HandleName(context); });
  AddOptionalWhitespaceTerminal();
  AddLiteralTerminal("=");
  AddOptionalWhitespaceTerminal();
  AddQuotedStringTerminal().WithAction(
      [&](const XmlActionContext& context) { return HandleValue(context); });
}

DataMatchResult XmlAttributeRule::HandleName(const XmlActionContext& context) {
  XmlTokenContext token_context(context);
  return context.GetHandler()->AttributeName(token_context);
}

DataMatchResult XmlAttributeRule::HandleValue(const XmlActionContext& context) {
  XmlTokenContext token_context(context);
  return context.GetHandler()->AttributeValue(token_context);
}

}  // namespace image_io
}  // namespace photos_editing_formats
