#include "image_io/xml/xml_writer.h"

#include <iomanip>
#include <string>

namespace photos_editing_formats {
namespace image_io {

using std::ostream;
using std::string;
using std::vector;

namespace {

const char kXmlnsColon[] = "xmlns:";

}  // namespace

XmlWriter::XmlWriter(std::ostream& os)
    : os_(os), element_count_(0), quote_mark_('"') {}

void XmlWriter::WriteXmlns(const string& prefix, const string& uri) {
  string name = string(kXmlnsColon) + prefix;
  WriteAttributeNameAndValue(name, uri, true);
}

size_t XmlWriter::StartWritingElement(const string& element_name) {
  MaybeWriteCloseBracket(true);
  size_t current_depth = element_data_.size();
  if (current_depth > 0) {
    element_data_.back().has_children = true;
  }
  element_data_.emplace_back(element_name);
  os_ << indent_ << "<" << element_name;
  indent_ += "  ";
  element_count_ += 1;
  return current_depth;
}

void XmlWriter::FinishWritingElement() {
  if (!element_data_.empty()) {
    if (indent_.size() >= 2) {
      indent_.resize(indent_.size() - 2);
    }
    auto& data = element_data_.back();
    if (!data.has_content && !data.has_children) {
      if (!data.has_attributes || data.has_children) {
        os_ << indent_;
      }
      os_ << "/>" << std::endl;
    } else {
      if (!data.has_content) {
        os_ << indent_;
      }
      os_ << "</" << data.name << ">" << std::endl;
    }
    element_data_.pop_back();
  }
}

void XmlWriter::FinishWritingElementsToDepth(size_t depth) {
  if (!element_data_.empty()) {
    for (size_t index = element_data_.size(); index > depth; --index) {
      FinishWritingElement();
    }
  }
}

size_t XmlWriter::StartWritingElements(const vector<string>& element_names) {
  size_t current_depth = element_data_.size();
  for (const auto& element_name : element_names) {
    StartWritingElement(element_name);
  }
  return current_depth;
}

void XmlWriter::WriteElementAndContent(const string& element_name,
                                       const string& content) {
  StartWritingElement(element_name);
  WriteContent(content);
  FinishWritingElement();
}

void XmlWriter::WriteContent(const string& content) {
  MaybeWriteCloseBracket(false);
  if (!element_data_.empty()) {
    auto& data = element_data_.back();
    data.has_content = true;
    os_ << content;
  }
}

void XmlWriter::WriteAttributeNameAndValue(const string& name,
                                           const string& value,
                                           bool add_quote_marks) {
  WriteAttributeName(name);
  WriteAttributeValue(add_quote_marks, value, add_quote_marks);
}

void XmlWriter::WriteAttributeName(const string& name) {
  if (!element_data_.empty()) {
    os_ << std::endl << indent_ << name << "=";
    element_data_.back().has_attributes = true;
  }
}

void XmlWriter::WriteAttributeValue(bool add_leading_quote_mark,
                                    const string& value,
                                    bool add_trailing_quote_mark) {
  if (!element_data_.empty()) {
    if (add_leading_quote_mark) os_ << quote_mark_;
    os_ << value;
    if (add_trailing_quote_mark) os_ << quote_mark_;
  }
}

void XmlWriter::WriteComment(const std::string& comment) {
  MaybeWriteCloseBracket(true);
  os_ << indent_ << "<!-- " << comment << " -->" << std::endl;
  if (!element_data_.empty()) {
    auto& data = element_data_.back();
    data.has_children = true;
  }
}

bool XmlWriter::MaybeWriteCloseBracket(bool with_trailing_newline) {
  if (!element_data_.empty()) {
    auto& data = element_data_.back();
    if (!data.has_content && !data.has_children) {
      os_ << ">";
      if (with_trailing_newline) {
        os_ << std::endl;
      }
      return true;
    }
  }
  return false;
}

}  // namespace image_io
}  // namespace photos_editing_formats
