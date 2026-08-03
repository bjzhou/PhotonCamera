#ifndef IMAGE_IO_XML_XML_HANDLER_H_  // NOLINT
#define IMAGE_IO_XML_XML_HANDLER_H_  // NOLINT

#include "image_io/base/data_match_result.h"
#include "image_io/xml/xml_token_context.h"

namespace photos_editing_formats {
namespace image_io {

/// The handler that is called by XmlRule instances as they parse XML syntax
/// and produce tokens defined in the XmlTokenContext. Each handler function
/// may be called multiple times with different XmlPortion values. The first
/// time the XmlPortion::kBegin bit will be set. The last time, XmlPortion::kEnd
/// will be set. In between, XmlPortion::kMiddle will be set. If the entire
/// token value is available for the handler, all three bits will be set.
/// The implementation of each function in this base class returns the
/// DataMatchResult value that the context provides. The function overrides in
/// subclasses can return the same context value, or a copy that is modified
/// with a different result type, message and "can continue" flag.
class XmlHandler {
 public:
  virtual ~XmlHandler() = default;

  /// This function is called to start an XML element. Once started, any of
  /// the other handler functions may be called.
  /// @param context The token context used to specify the element name.
  /// @return The match result from the context, or one that is modified to
  /// contain an error message if needed.
  virtual DataMatchResult StartElement(const XmlTokenContext& context);

  /// This function is called to finish an XML element. Each call to this
  /// function should be paired with a call to a StartElement function.
  /// @param context The token context used to obtain the match result for
  /// returning. For this function, the context might not have a valid token
  /// value: the XmlPortion will always be kNone and the token range invalid.
  /// This is the case if the syntax parsed is an empty element like this:
  /// "<SomeElement [Attribute=Name]... />". For non empty elements with syntax:
  /// "<SomeElement>...</SomeElement>", the value will be the element name.
  /// @return The match result from the context, or one that is modified to
  /// contain an error message if needed.
  virtual DataMatchResult FinishElement(const XmlTokenContext& context);

  /// This function is called to define an attribute name. This function will
  /// never be called unless an element has been started with a prior call to
  /// the StartElement() function.
  /// @param context The token context used to specify the attribute name.
  /// @return The match result from the context, or one that is modified to
  /// contain an error message if needed.
  virtual DataMatchResult AttributeName(const XmlTokenContext& context);

  /// This function is called to define an attribute value. The token value
  /// passed to this function always includes the quote marks at the begin and
  /// end of the token value. The quote marks always match and may be either a
  /// single quote (') or a double quote ("). Sometimes attribute values can be
  /// very long, so implementations of this function should use care if they
  /// retain the value as a string for later processing. This function will
  /// never be called unless an element has been started with a prior call to
  /// the StartElement() and AttributeName() functions.
  /// @param context The token context used to specify the attribute value.
  /// @return The match result from the context, or one that is modified to
  /// contain an error message if needed.
  virtual DataMatchResult AttributeValue(const XmlTokenContext& context);

  /// This function is called to define a block of characters in the body of
  /// an element. This function may be called multiple times for a given
  /// element. Handlers that are interested in the character content for an
  /// element should concatenate the token values from all calls to obtain the
  /// full value for the element.
  /// @param context The token context used to specify the content value.
  /// @return The match result from the context, or one that is modified to
  /// contain an error message if needed.
  virtual DataMatchResult ElementContent(const XmlTokenContext& context);

  /// This function is called to inform the handler of a comment. A comment in
  /// XML has the syntax "<!--...-->". In order to simplify the XML parsing
  /// task, the tokens passed to this function never include the leading "<!--"
  /// characters, but always include the trailing "-->".
  /// @param context The token context used to specify the comment.
  /// @return The match result from the context, or one that is modified to
  /// contain an error message if needed.
  virtual DataMatchResult Comment(const XmlTokenContext& context);

  /// This function is called to inform the handler CDATA block. A CDATA block
  /// in XML has the syntax "<![CDATA[...]]>". In order to simplify the XML
  /// parsing task, the tokens passed to this function never include the leading
  /// "<![CDATA[" characters, but always include the trailing "]]".
  /// @param context The token context used to specify the CDATA block.
  /// @return The match result from the context, or one that is modified to
  /// contain an error message if needed.
  virtual DataMatchResult Cdata(const XmlTokenContext& context);

  /// This function is called to define a processing instruction. Processing
  /// instructions have an XML syntax "<?...?>". In order to simplify the XML
  /// parsing task, no parsing of the processing instruction is done: handlers
  /// that need the contents parsed are on their own. Also, again to simplify
  /// the XML parsing task, the tokens passed to this function never include the
  /// leading "<?" characters, but always include the trailing "?>".
  /// @param context The token context used to specify the processing data.
  /// @return The match result from the context, or one that is modified to
  /// contain an error message if needed.
  virtual DataMatchResult Pi(const XmlTokenContext& context);
};

}  // namespace image_io
}  // namespace photos_editing_formats

#endif // IMAGE_IO_XML_XML_HANDLER_H_  // NOLINT
