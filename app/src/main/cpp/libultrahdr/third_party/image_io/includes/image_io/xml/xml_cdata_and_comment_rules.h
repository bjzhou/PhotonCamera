#ifndef IMAGE_IO_XML_XML_CDATA_AND_COMMENT_RULES_H_  // NOLINT
#define IMAGE_IO_XML_XML_CDATA_AND_COMMENT_RULES_H_  // NOLINT

#include "image_io/xml/xml_rule.h"

namespace photos_editing_formats {
namespace image_io {

/// The XmlCdataRule parses the following syntax "<![CDATA[ ... ]]>".
/// As mentioned in the comments for the XmlHandler::Cdata() function, the token
/// value that is passed to the handler never includes the leading "<![CDATA["
/// syntax and always includes the trailing "]]>" syntax. This considerably
/// simplifies the parsing task. The alternate start point constructor is used
/// by the XmlCdataOrCommentRule.
class XmlCdataRule : public XmlRule {
 public:
  XmlCdataRule();
  explicit XmlCdataRule(StartPoint start_point);

 private:
  /// Builds an XmlTokenContext from the XmlActionContext and calls the
  /// handler's Cdata() function.
  /// @param context The action context from the rule's terminal.
  /// @return The result value from the handler's function.
  DataMatchResult HandleCdataValue(const XmlActionContext& context);
};

/// The XmlCommentRule parses the following syntax "<!-- ... -->".
/// As mentioned in the comments for the XmlHandler::Comment() function, the
/// token value that is passed to the handler never includes the leading "<!--"
/// syntax and always includes the trailing "-->" syntax. This considerably
/// simplifies the parsing task.  The alternate start point constructor is used
/// by the XmlCdataOrCommentRule.
class XmlCommentRule : public XmlRule {
 public:
  XmlCommentRule();
  explicit XmlCommentRule(StartPoint start_point);

 private:
  /// Builds an XmlTokenContext from the XmlActionContext and calls the
  /// handler's Comment() function.
  /// @param context The action context from the rule's terminal.
  /// @return The result value from the handler's function.
  DataMatchResult HandleCommentValue(const XmlActionContext& context);
};

/// This rule will use chain delegation to start either the XmlCdataRule or the
/// XmlCommentRule, depending on the text being parsed. The syntax for XML is
/// pretty poor here - the parser needs to look ahead two characters from the <
/// character to determine what to do.  The alternate start point constructor is
/// used by the XmlElementContentRule.
class XmlCdataOrCommentRule : public XmlRule {
 public:
  XmlCdataOrCommentRule();
  explicit XmlCdataOrCommentRule(StartPoint start_point);

 private:
  /// Builds an XmlTokenContext from the XmlActionContext and creates the
  /// XmlCdataRule or XmlCommentRule to chain to depending on what character
  /// follows the exclamation point of the "<!" syntax.
  /// @param context The action context from the rule's terminal.
  /// @return The result value from the action context.
  DataMatchResult HandlePostBangChar(const XmlActionContext& context);
};

}  // namespace image_io
}  // namespace photos_editing_formats

#endif // IMAGE_IO_XML_XML_CDATA_AND_COMMENT_RULES_H_  // NOLINT
