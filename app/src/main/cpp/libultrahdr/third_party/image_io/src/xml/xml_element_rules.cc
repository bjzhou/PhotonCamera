#include "image_io/xml/xml_element_rules.h"

#include <utility>

#include "image_io/xml/xml_attribute_rule.h"
#include "image_io/xml/xml_cdata_and_comment_rules.h"
#include "image_io/xml/xml_handler.h"
#include "image_io/xml/xml_pi_rule.h"
#include "image_io/xml/xml_token_context.h"

namespace photos_editing_formats {
namespace image_io {

namespace {

/// Some names of terminals used by these rules.
const char kWhitespace[] = "Whitespace";
const char kEmptyElementEnd[] = "EmptyElementEnd";
const char kElementEnd[] = "ElementEnd";
const char kElementSentinalDescription[] =
    "The start of an attribute name or the end of the element ('>' or '/>')";

/// A shortcut for referring to all XmlPortion bits.
const XmlPortion kAllPortions =
    XmlPortion::kBegin | XmlPortion::kMiddle | XmlPortion::kEnd;

/// @param context The action context passed to an action handler.
/// @param token_range The token range to use when building the token context.
/// @param portion The token portion to use when building the token context.
/// @param A token context for use in calling an XmlHandler function.
XmlTokenContext GetTokenContext(const XmlActionContext& context,
                                const DataRange& token_range,
                                XmlPortion portion) {
  return XmlTokenContext(context.GetLocation(), context.GetRange(),
                         context.GetSegment(), context.GetDataLineMap(),
                         context.GetResult(), token_range, portion);
}

}  // namespace

XmlElementRule::XmlElementRule() : XmlElementRule(kFirstStartPoint) {}

XmlElementRule::XmlElementRule(XmlRule::StartPoint start_point)
    : XmlRule("Element") {
  AddLiteralTerminal("<");
  AddNameTerminal().WithAction(
      [&](const XmlActionContext& context) { return HandleName(context); });
  AddOptionalWhitespaceTerminal().WithName(kWhitespace);
  AddSentinelTerminal("~/>")
      .WithDescription(kElementSentinalDescription)
      .WithAction([&](const XmlActionContext& context) {
        return HandlePostWhitespaceChar(context);
      });
  AddLiteralTerminal("/>")
      .WithName(kEmptyElementEnd)
      .WithAction([&](const XmlActionContext& context) {
        return HandleEmptyElemTagEnd(context);
      });
  AddLiteralTerminal(">")
      .WithName(kElementEnd)
      .WithAction([&](const XmlActionContext& context) {
        return HandleSTagEnd(context);
      });
  if (start_point == kSecondStartPoint) {
    SetTerminalIndex(1);
  }
}

DataMatchResult XmlElementRule::HandleName(const XmlActionContext& context) {
  XmlTokenContext token_context(context);
  return context.GetHandler()->StartElement(token_context);
}

DataMatchResult XmlElementRule::HandlePostWhitespaceChar(
    const XmlActionContext& context) {
  DataMatchResult result = context.GetResultWithBytesConsumed(0);
  char sentinel = context.GetTerminal()->GetScanner()->GetSentinel();
  if (sentinel == '/') {
    size_t index = GetTerminalIndexFromName(kEmptyElementEnd);
    SetTerminalIndex(index);
  } else if (sentinel == '>') {
    size_t index = GetTerminalIndexFromName(kElementEnd);
    SetTerminalIndex(index);
  } else if (sentinel == '~') {
    std::unique_ptr<XmlRule> rule(new XmlAttributeRule);
    SetNextRule(std::move(rule));
    ResetTerminalScanners();
    size_t index = GetTerminalIndexFromName(kWhitespace);
    SetTerminalIndex(index);
    result.SetType(DataMatchResult::kPartial);
  }
  return result;
}

DataMatchResult XmlElementRule::HandleEmptyElemTagEnd(
    const XmlActionContext& context) {
  SetTerminalIndex(GetTerminalCount());
  return context.GetHandler()->FinishElement(
      GetTokenContext(context, DataRange(), XmlPortion::kNone));
}

DataMatchResult XmlElementRule::HandleSTagEnd(const XmlActionContext& context) {
  DataMatchResult result = context.GetResult();
  std::unique_ptr<XmlRule> rule(new XmlElementContentRule);
  SetNextRule(std::move(rule));
  return result;
}

XmlElementContentRule::XmlElementContentRule() : XmlRule("ElementContent") {
  // ElementContent until
  //   <N...             Element
  //   <?N ... ?>        PI
  //   <!-- ... -->      Comment
  //   <![CDATA[ ... ]]> CDATA
  //   </Nws>            Element Etag
  //   &...;             EntityRef or CharRef (Don't care about this)
  AddThroughLiteralTerminal("<").WithAction(
      [&](const XmlActionContext& context) { return HandleContent(context); });
  AddSentinelTerminal("~?!/").WithAction([&](const XmlActionContext& context) {
    return HandlePostOpenChar(context);
  });
  AddNameTerminal().WithAction(
      [&](const XmlActionContext& context) { return HandleEndTag(context); });
  AddLiteralTerminal(">");
}

DataMatchResult XmlElementContentRule::HandleContent(
    const XmlActionContext& context) {
  const auto& range = context.GetTerminal()->GetScanner()->GetTokenRange();
  if (range.IsValid()) {
    size_t end = context.GetResult().GetType() == DataMatchResult::kFull
                     ? range.GetEnd() - 1
                     : range.GetEnd();
    DataRange token_range(range.GetBegin(), end);
    if (token_range.GetLength() > 0) {
      XmlTokenContext token_context =
          GetTokenContext(context, token_range, kAllPortions);
      DataMatchResult result =
          context.GetHandler()->ElementContent(token_context);
      context.GetTerminal()->GetScanner()->ResetTokenRange();
      return result;
    }
  }
  context.GetTerminal()->GetScanner()->ResetTokenRange();
  return context.GetResult();
}

DataMatchResult XmlElementContentRule::HandlePostOpenChar(
    const XmlActionContext& context) {
  DataMatchResult result = context.GetResult();
  char sentinel = context.GetTerminal()->GetScanner()->GetSentinel();
  if (sentinel == '~') {
    result.SetBytesConsumed(0);
    result.SetType(DataMatchResult::kPartial);
    std::unique_ptr<XmlRule> rule(new XmlElementRule(kSecondStartPoint));
    SetNextRule(std::move(rule));
  } else if (sentinel == '?') {
    result.SetType(DataMatchResult::kPartial);
    std::unique_ptr<XmlRule> rule(new XmlPiRule(kSecondStartPoint));
    SetNextRule(std::move(rule));
  } else if (sentinel == '!') {
    result.SetType(DataMatchResult::kPartial);
    std::unique_ptr<XmlRule> rule(new XmlCdataOrCommentRule(kSecondStartPoint));
    SetNextRule(std::move(rule));
  } else if (sentinel == '/') {
    // Do nothing so that the next terminals (the 'name>' part of '</name>')
    // will be activated and scanned.
    return context.GetResult();
  }
  ResetTerminalScanners();
  SetTerminalIndex(0);
  return result;
}

DataMatchResult XmlElementContentRule::HandleEndTag(
    const XmlActionContext& context) {
  XmlTokenContext token_context(context);
  return context.GetHandler()->FinishElement(token_context);
}

}  // namespace image_io
}  // namespace photos_editing_formats
