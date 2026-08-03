#ifndef IMAGE_IO_XML_XML_ELEMENT_RULES_H_  // NOLINT
#define IMAGE_IO_XML_XML_ELEMENT_RULES_H_  // NOLINT

#include "image_io/xml/xml_rule.h"

namespace photos_editing_formats {
namespace image_io {

/// The XmlElementRule parses the following syntax:
/// Element ::= EmptyElemTag  | STag content ETag
/// EmptyElemTag ::=  '<' Name (S Attribute)* S? '/>'
/// STag         ::=  '<' Name (S Attribute)* S? '>'
/// ETag         ::=  '</' Name S? '>'
/// The Attribute syntax is parsed by XmlAttributeRule, which this rule
/// delegates to as a child rule. The EmptyElemTag type syntax is handled by
/// this rule. The STag part of the syntax is handled by this rule, but the
/// element contents and the ETag syntax is handled by the XmlElementContentRule
/// that is chained to by this rule.
class XmlElementRule : public XmlRule {
 public:
  XmlElementRule();
  explicit XmlElementRule(StartPoint start_point);

 private:
  /// Builds an XmlTokenContext from the XmlActionContext and calls the
  /// handler's StartElement() function.
  /// @param context The action context from the rule's terminal.
  /// @return The result value from the handler's function.
  DataMatchResult HandleName(const XmlActionContext& context);

  /// Handles the book keeping after parsing the whitespace following the name
  /// of the element, basically looking ahead to see if an XmlAttributeRule has
  /// to be delegated to as a child rule, or if the element ends.
  /// @param context The action context from the rule's terminal.
  /// @return The result value action context.
  DataMatchResult HandlePostWhitespaceChar(const XmlActionContext& context);

  /// Builds an XmlTokenContext from the XmlActionContext and calls the
  /// handler's FinishElement() function in response to the final literal in
  /// the EmptyElemTag type sytax. As written in the comment for the XmlHandler
  /// FinishElement() function, the token context passed to the handler in this
  /// case will have an invalid range and a XmlPortion value of kNone - i.e.,
  /// the element name is not available tfor this form of the element syntax.
  /// @param context The action context from the rule's terminal.
  /// @return The result value from the handler's function.
  DataMatchResult HandleEmptyElemTagEnd(const XmlActionContext& context);

  /// Handles the book keeping after parsing the final ">" literal of the STag
  /// syntax of the rule, creating an XmlElementContentRule for use as a chained
  /// to rule.
  /// @param context The action context from the rule's terminal.
  /// @return The result value action context.
  DataMatchResult HandleSTagEnd(const XmlActionContext& context);
};

/// The XmlElementContentRule parses the following syntax:
/// (c? Element | PI | CDATA | Comment )+ ETag
/// The "c?" syntax represents the character data passed to the XmlHandler's
/// ElementContent() function. The syntax for Element, PI, CDATA and Comment
/// all cause a child rule to be created and delegated to. The ETag syntax will
/// cause this element to be finished with a DataMatchResult type of kFull.
class XmlElementContentRule : public XmlRule {
 public:
  XmlElementContentRule();

 private:
  /// Builds an XmlTokenContext from the XmlActionContext and calls the
  /// handler's ElementContent() function.
  /// @param context The action context from the rule's terminal.
  /// @return The result value from the handler's function.
  DataMatchResult HandleContent(const XmlActionContext& context);

  /// Handles the book keeping after parsing the element's content characters,
  /// and the first character literal ("<") of the Element, PI, CDATA or Comment
  /// syntax, creating an appropriate child rule to delegate the processing to.
  /// @param context The action context from the rule's terminal.
  /// @return The result value action context.
  DataMatchResult HandlePostOpenChar(const XmlActionContext& context);

  /// Builds an XmlTokenContext from the XmlActionContext and calls the
  /// handler's FinishElement() function. No check is done by the rule to verify
  /// that the element name matches the one that was passed to the handler's
  /// StartElement.
  /// @param context The action context from the rule's terminal.
  /// @return The result value from the handler's function.
  DataMatchResult HandleEndTag(const XmlActionContext& context);
};

}  // namespace image_io
}  // namespace photos_editing_formats

#endif // IMAGE_IO_XML_XML_ELEMENT_RULES_H_  // NOLINT
