#include "image_io/xml/xml_handler.h"

namespace photos_editing_formats {
namespace image_io {

DataMatchResult XmlHandler::AttributeName(const XmlTokenContext& context) {
  return context.GetResult();
}

DataMatchResult XmlHandler::AttributeValue(const XmlTokenContext& context) {
  return context.GetResult();
}

DataMatchResult XmlHandler::StartElement(const XmlTokenContext& context) {
  return context.GetResult();
}

DataMatchResult XmlHandler::FinishElement(const XmlTokenContext& context) {
  return context.GetResult();
}

DataMatchResult XmlHandler::ElementContent(const XmlTokenContext& context) {
  return context.GetResult();
}

DataMatchResult XmlHandler::Comment(const XmlTokenContext& context) {
  return context.GetResult();
}

DataMatchResult XmlHandler::Cdata(const XmlTokenContext& context) {
  return context.GetResult();
}

DataMatchResult XmlHandler::Pi(const XmlTokenContext& context) {
  return context.GetResult();
}

}  // namespace image_io
}  // namespace photos_editing_formats
