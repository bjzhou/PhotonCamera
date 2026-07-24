#ifndef IMAGE_IO_XML_XML_WRITER_H_  // NOLINT
#define IMAGE_IO_XML_XML_WRITER_H_  // NOLINT

#include <sstream>
#include <string>
#include <vector>

namespace photos_editing_formats {
namespace image_io {

/// A very simple writer forXML that frees client code from worries about XML
/// formatting and bracket issues.
///
/// The intended sequence of operations this writer supports is as follows:
/// 1. Start writing an element.
/// 2. Write any and all attribute names and values to that element.
/// 3. Write any content, or add a child element by starting to write another
///    element (i.e., go to step 1). The "context" of the current element you
///    are writing is saved on a stack. Once you start writing content or
///    child elements you cannot add attribute names and values and expect to
///    see them as such in the resulting XML.
/// 4. When you are done with the element, finish writing it. The element
///    context stack is popped and you continue where you left off.
///
/// When writing element content and attribute values no XML escaping of any
/// kind is done. If you need to do that, do it yourself.
class XmlWriter {
 public:
  /// @param os The stream to which the XML is written.
  explicit XmlWriter(std::ostream& os);

  /// @return The number of elements that have been written.
  size_t GetElementCount() const { return element_count_; }

  /// @return The depth of the element stack.
  size_t GetElementDepth() const { return element_data_.size(); }

  /// @return The quote mark used when writing attribute values. The default
  /// value set up by the constructor is the double quote (").
  char GetQuoteMark() const { return quote_mark_; }

  /// @param quote_park The new quote mark to use when writing attribute values.
  void SetQuoteMark(char quote_mark) { quote_mark_ = quote_mark; }

  /// @return The leading indent written before the current element.
  const std::string& GetIndent() const { return indent_; }

  /// Once you are done writing your elements, you can call this function to
  /// finish writing of all open elements. After this call, the string contained
  /// in the ostream you passed to the constructor is fully formed XML.
  void FinishWriting() { FinishWritingElementsToDepth(0); }

  /// @return Whether the writing of XML can be considered done.
  bool IsDone() const { return indent_.empty(); }

  /// Writes an xmlns attribute to the currently open element.
  /// @param prefix The prefix you intend to use for elements/attributes.
  /// @param uri The uri of the namespace.
  void WriteXmlns(const std::string& prefix, const std::string& uri);

  /// Starts writing a new child element of the current element. Immediately
  /// after this function you can add attributes to the element using one of the
  /// AddAttributeNameAndValue() functions.
  /// @param element_name The name of the element to write.
  /// @return The number of open elements on the stack at the start of this
  /// function. You can use this value with the FinishWritingElementToDepth()
  /// function to finish writing this element and any open descendents.
  size_t StartWritingElement(const std::string& element_name);

  /// Finishes writing the element and returns the "context" to the previously
  /// open element so that you can continue adding child elements (via a call to
  /// StartWritingElement()) or content (via a call to WriteContent()).
  void FinishWritingElement();

  /// Finishes writing any elements that exist in the stack of open elements
  /// above the depth value parameter.
  /// @param depth The depth above which to finish writing open elements.
  void FinishWritingElementsToDepth(size_t depth);

  /// Starts writing the elements in the vector, leaving the last open for you
  /// to add attributes or other elements to.
  /// @param element_names The array of element names to start writing.
  /// @return The number of open elements on the stack at the start of this
  /// function. You can use this value with the FinishWritingElementToDepth()
  /// function to finish writing this element and any open descendents.
  size_t StartWritingElements(const std::vector<std::string>& element_names);

  /// A template method function that allows you to start an element, add the
  /// value as its content and then finish writing the element. This is useful
  /// if you are writing property values as elements.
  /// @param element_name The name of the element to write.
  /// @param value The value that is converted to a string and written as the
  /// element's content.
  template <class T>
  void WriteElementAndContent(const std::string& element_name, const T& value) {
    std::stringstream ss;
    ss << value;
    WriteElementAndContent(element_name, ss.str());
  }

  /// Starts writing an element with the given name, adds the string value as
  /// its content and then finishes writing the element. This is useful
  /// if you are writing property values as elements.
  /// @param element_name The name of the element to write.
  /// @param value The value to use as the element's content.
  void WriteElementAndContent(const std::string& element_name,
                              const std::string& content);

  /// Writes the string as the currently open element's content. Note that if
  /// you add child elements to the open element, the content you will see when
  /// you read your element will have the whitespace due to the indent string.
  /// @param content The content to write to the currently open element.
  void WriteContent(const std::string& content);

  /// A template method function that allows you to add an attribute name and
  /// value to a just-opened element. Attributes must be added to an element
  /// before adding content or child elements.
  /// @param name The name of the attribute to add.
  /// @param value The value of the attribute. This value is converted to a
  /// string and enclosed in the quote marks from the GetQuoteMark() function.
  template <class T>
  void WriteAttributeNameAndValue(const std::string& name, const T& value) {
    std::stringstream ss;
    ss << GetQuoteMark() << value << GetQuoteMark();
    WriteAttributeNameAndValue(name, ss.str(), false);
  }

  /// Adds an attribute name and value to a just-opened element. Attributes must
  /// be added to an element before adding content or child elements.
  /// @param name The name of the attribute to add.
  /// @param value The value of the attribute.
  /// @param add_quote_marks Whether quote marks should be added before and
  /// after the value. If this value is false, it is assumed that the client
  /// code has added them before calling this function.
  void WriteAttributeNameAndValue(const std::string& name,
                                  const std::string& value,
                                  bool add_quote_marks = true);

  /// Adds an attribute name and equal sign to the just-opened element.
  /// Attributes must be added to an element before adding content or child
  /// elements. Clients that use this function must call WriteAttributeValue()
  /// with appropriate values to define a legally quoted value. This function
  /// is useful for writing attribute with extremely long values that might not
  /// be efficient to store as a single string value.
  /// @param name The name of the attribute to add.
  void WriteAttributeName(const std::string& name);

  /// Writes the attribute value with optional quote marks on either side. This
  /// function may be repeatedly called with appropriate valeus for the leading
  /// and trailing quote mark flags to write extremely long attribute values.
  /// @param add_leading_quote_mark Whether to add a leading quote mark.
  /// @param value The (probably partial) value to write.
  /// @param add_trailing_quote_mark Whether to add a trailing quote mark.
  void WriteAttributeValue(bool add_leading_quote_mark,
                           const std::string& value,
                           bool add_trailing_quote_mark);

  /// Writes a comment to the xml stream. Note that writing a comment is like
  /// adding a child node/element to the current element. If the current element
  /// is still open for names/values, it will be closed before writing it - i.e.
  /// you can't add attributes to an element after calling this function.
  /// @param comment The text of the comment to write.
  void WriteComment(const std::string& comment);

 private:
  /// The data that is known about each element on the stack.
  struct ElementData {
    ElementData(const std::string& name_)
        : name(name_),
          has_attributes(false),
          has_content(false),
          has_children(false) {}
    std::string name;
    bool has_attributes;
    bool has_content;
    bool has_children;
  };

  /// Determines if the start element syntax of the current element needs to
  /// be closed with a bracket so that content or child elements or comments
  /// can be added to the element.
  /// @param with_trailing_newline Whether a newline is added after the bracket.
  /// @return Whether the element's start syntax was closed with a bracket.
  bool MaybeWriteCloseBracket(bool with_trailing_newline);

  /// The stream to which everything is written.
  std::ostream& os_;

  /// The indent to write before elements and attribute names/values.
  std::string indent_;

  /// The currently open elements being written.
  std::vector<ElementData> element_data_;

  /// The number of elements that have been written.
  size_t element_count_;

  /// The quote mark to use around attribute values by default.
  char quote_mark_;
};

}  // namespace image_io
}  // namespace photos_editing_formats

#endif  // IMAGE_IO_XML_XML_WRITER_H_  // NOLINT
