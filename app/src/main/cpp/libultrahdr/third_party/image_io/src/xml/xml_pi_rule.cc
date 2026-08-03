#include "image_io/xml/xml_pi_rule.h"

#include "image_io/xml/xml_handler.h"
#include "image_io/xml/xml_token_context.h"

namespace photos_editing_formats {
namespace image_io {

XmlPiRule::XmlPiRule() : XmlPiRule(kFirstStartPoint) {}

XmlPiRule::XmlPiRule(XmlRule::StartPoint start_point) : XmlRule("PI") {
  // <? ... ?>
  AddLiteralTerminal("<?");
  AddThroughLiteralTerminal("?>").WithAction(
      [&](const XmlActionContext& context) { return HandlePiValue(context); });
  if (start_point == kSecondStartPoint) {
    SetTerminalIndex(1);
  }
}

DataMatchResult XmlPiRule::HandlePiValue(const XmlActionContext& context) {
  XmlTokenContext token_context(context);
  DataMatchResult result = context.GetHandler()->Pi(token_context);
  return result;
}

}  // namespace image_io
}  // namespace photos_editing_formats
