#include "image_io/jpeg/jpeg_segment_builder.h"

#include "image_io/jpeg/jpeg_marker.h"

namespace photos_editing_formats {
namespace image_io {

using std::string;

// The strings needed to build the xml data associated with XMP data. See
// https://wwwimages2.adobe.com/content/dam/acom/en/devnet/xmp/pdfs/
//   XMP%20SDK%20Release%20cc-2016-08/XMPSpecificationPart1.pdf
const char kXmpMetaPrefix[] = "<x:xmpmeta xmlns:x=\"adobe:ns:meta/\">";
const char kXmpMetaSuffix[] = "</x:xmpmeta>";
const char kRdfPrefix[] =
    "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\""
    "xmlns:xmp=\"http://ns.adobe.com/xap/1.0/\">";
const char kRdfSuffix[] = "</rdf:RDF>";
const char kRdfDescriptionPrefix[] = "<rdf:Description rdf:about=\"\"";
const char kRdfDescriptionSuffix[] = "/>";

bool JpegSegmentBuilder::SetPayloadSize(ByteBuffer* byte_buffer) {
  std::uint16_t size = byte_buffer->GetSize();
  if (size == byte_buffer->GetSize() && size >= 4) {
    return byte_buffer->SetBigEndianValue(2, size - 2);
  }
  return false;
}

string JpegSegmentBuilder::GetByteDataValues() const {
  string values;
  for (const auto& byte_datum : byte_data_) {
    if (!byte_datum.IsValid()) {
      return "";
    }
    values += byte_datum.GetValue();
    if (byte_datum.GetType() == ByteData::kAscii0) {
      values.append(1, 0);
    }
  }
  return values;
}

void JpegSegmentBuilder::AddMarkerAndSize(Byte marker_type, size_t size) {
  JpegMarker marker(marker_type);
  string hex_string = marker.GetHexString("FF");
  if (marker.HasVariablePayloadSize()) {
    hex_string += ByteData::Byte2Hex((size >> 8) & 0xFF);
    hex_string += ByteData::Byte2Hex(size & 0xFF);
  }
  byte_data_.emplace_back(ByteData::kHex, hex_string);
}

size_t JpegSegmentBuilder::AddMarkerAndSizePlaceholder(Byte marker_type) {
  JpegMarker marker(marker_type);
  string hex_string = marker.GetHexString("FF");
  if (marker.HasVariablePayloadSize()) {
    hex_string += "0000";
  }
  byte_data_.emplace_back(ByteData::kHex, hex_string);
  return byte_data_.size() - 1;
}

bool JpegSegmentBuilder::ReplaceSizePlaceholder(size_t index, size_t size) {
  if (index >= byte_data_.size() || size < 2 || size > 0xFFFF) {
    return false;
  }
  const ByteData& byte_datum = byte_data_[index];
  if (byte_datum.GetType() != ByteData::kHex) {
    return false;
  }
  string value = byte_datum.GetValue();
  if (value.length() < 4) {
    return false;
  }
  Byte flag, type;
  if (!ByteData::Hex2Byte(value[0], value[1], &flag) ||
      !ByteData::Hex2Byte(value[2], value[3], &type)) {
    return false;
  }
  JpegMarker marker(type);
  if (flag != JpegMarker::kStart || !marker.IsValid() ||
      !marker.HasVariablePayloadSize()) {
    return false;
  }
  value.replace(2, 2, ByteData::Byte2Hex((size >> 8) & 0xFF));
  value.replace(4, 2, ByteData::Byte2Hex(size & 0xFF));
  byte_data_[index] = ByteData(ByteData::kHex, value);
  return true;
}

void JpegSegmentBuilder::AddExtendedXmpHeader(const std::string& xmp_guid) {
  string guid_value(xmp_guid);
  guid_value.resize(kXmpGuidSize, '0');
  byte_data_.emplace_back(ByteData::kAscii0, kXmpExtendedId);
  byte_data_.emplace_back(ByteData::kAscii, guid_value);
  byte_data_.emplace_back(ByteData::kAscii, string(8, '0'));
}

void JpegSegmentBuilder::AddXmpMetaPrefix() {
  byte_data_.emplace_back(ByteData::kAscii, kXmpMetaPrefix);
}

void JpegSegmentBuilder::AddXmpMetaSuffix() {
  byte_data_.emplace_back(ByteData::kAscii, kXmpMetaSuffix);
}

void JpegSegmentBuilder::AddRdfPrefix() {
  byte_data_.emplace_back(ByteData::kAscii, kRdfPrefix);
}

void JpegSegmentBuilder::AddRdfSuffix() {
  byte_data_.emplace_back(ByteData::kAscii, kRdfSuffix);
}

void JpegSegmentBuilder::AddRdfDescriptionPrefix() {
  byte_data_.emplace_back(ByteData::kAscii, kRdfDescriptionPrefix);
}

void JpegSegmentBuilder::AddRdfDescriptionSuffix() {
  byte_data_.emplace_back(ByteData::kAscii, kRdfDescriptionSuffix);
}

void JpegSegmentBuilder::AddXmpPropertyPrefix(
    const std::string& property_name) {
  string property_name_equals_quote = property_name + "=\"";
  byte_data_.emplace_back(ByteData::kAscii, property_name_equals_quote);
}

void JpegSegmentBuilder::AddXmpPropertySuffix() {
  byte_data_.emplace_back(ByteData::kAscii, "\"");
}

void JpegSegmentBuilder::AddXmpPropertyNameAndValue(
    const std::string& property_name, const std::string& property_value) {
  AddXmpPropertyPrefix(property_name);
  byte_data_.emplace_back(ByteData::kAscii, property_value);
  AddXmpPropertySuffix();
}

void JpegSegmentBuilder::AddApp1XmpMarkerAndXmpExtendedHeader(
    const std::string& xmp_guid) {
  AddMarkerAndSizePlaceholder(JpegMarker::kAPP1);
  AddExtendedXmpHeader(xmp_guid);
}

void JpegSegmentBuilder::AddXmpAndRdfPrefixes() {
  AddXmpMetaPrefix();
  AddRdfPrefix();
  AddRdfDescriptionPrefix();
}

void JpegSegmentBuilder::AddXmpAndRdfSuffixes() {
  AddRdfDescriptionSuffix();
  AddRdfSuffix();
  AddXmpMetaSuffix();
}

}  // namespace image_io
}  // namespace photos_editing_formats
