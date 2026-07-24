#include "image_io/xml/xml_cdata_and_comment_rules.h"

#include <utility>

#include "image_io/xml/xml_handler.h"
#include "image_io/xml/xml_token_context.h"

namespace photos_editing_formats {
namespace image_io {

XmlCdataRule::XmlCdataRule() : XmlCdataRule(kFirstStartPoint) {}

XmlCdataRule::XmlCdataRule(StartPoint start_point) : XmlRule("CDATA") {
  // <![CDATA[ ... ]]>
  AddLiteralTerminal("<!");
  AddLiteralTerminal("[CDATA[");
  AddThroughLiteralTerminal("]]>").WithAction(
      [&](const XmlActionContext& context) {
        return HandleCdataValue(context);
      });
  if (start_point == kSecondStartPoint) {
    SetTerminalIndex(1);
  }
}

DataMatchResult XmlCdataRule::HandleCdataValue(
    const XmlActionContext& context) {
  XmlTokenContext token_context(context);
  return context.GetHandler()->Cdata(token_context);
}

XmlCommentRule::XmlCommentRule() : XmlCommentRule(kFirstStartPoint) {}

XmlCommentRule::XmlCommentRule(StartPoint start_point) : XmlRule("Comment") {
  // <!-- ... -->
  AddLiteralTerminal("<!");
  AddLiteralTerminal("--");
  AddThroughLiteralTerminal("-->").WithAction(
      [&](const XmlActionContext& context) {
        return HandleCommentValue(context);
      });
  if (start_point == kSecondStartPoint) {
    SetTerminalIndex(1);
  }
}

DataMatchResult XmlCommentRule::HandleCommentValue(
    const XmlActionContext& context) {
  XmlTokenContext token_context(context);
  return context.GetHandler()->Comment(token_context);
}

XmlCdataOrCommentRule::XmlCdataOrCommentRule()
    : XmlCdataOrCommentRule(kFirstStartPoint) {}

XmlCdataOrCommentRule::XmlCdataOrCommentRule(StartPoint start_point)
    : XmlRule("CdataOrComment") {
  // <![CDATA[ ... ]]> or <!-- ... -->
  // So after the initial "<!" literal can come a "[" or a "-".
  AddLiteralTerminal("<!");
  AddSentinelTerminal("[-").WithAction([&](const XmlActionContext& context) {
    return HandlePostBangChar(context);
  });
  if (start_point == kSecondStartPoint) {
    SetTerminalIndex(1);
  }
}

DataMatchResult XmlCdataOrCommentRule::HandlePostBangChar(
    const XmlActionContext& context) {
  char sentinel = context.GetTerminal()->GetScanner()->GetSentinel();
  if (sentinel == '[') {
    std::unique_ptr<XmlRule> rule(new XmlCdataRule(kSecondStartPoint));
    SetNextRule(std::move(rule));
  } else if (sentinel == '-') {
    std::unique_ptr<XmlRule> rule(new XmlCommentRule(kSecondStartPoint));
    SetNextRule(std::move(rule));
  }
  return context.GetResultWithBytesConsumed(0);
}

}  // namespace image_io
}  // namespace photos_editing_formats
