#include "image_io/jpeg/jpeg_marker.h"

#include <iomanip>
#include <limits>
#include <sstream>
#include <string>
#include <vector>

namespace photos_editing_formats {
namespace image_io {

using std::string;
using std::stringstream;
using std::vector;

// Storage for class (static) data members.
const size_t JpegMarker::kLength;      // = 2;
const size_t JpegMarker::kTypeOffset;  // = 1;
const Byte JpegMarker::kZERO;          // = 0x00;
const Byte JpegMarker::kStart;         // = 0xFF;
const Byte JpegMarker::kSOS;           // = 0xDA;
const Byte JpegMarker::kSOI;           // = 0xD8;
const Byte JpegMarker::kEOI;           // = 0xD9;
const Byte JpegMarker::kAPP0;          // = 0xE0;
const Byte JpegMarker::kAPP1;          // = 0xE1;
const Byte JpegMarker::kAPP2;          // = 0xE2;
const Byte JpegMarker::kFILL;          // = 0xFF;

const std::string JpegMarker::GetName() const {
  switch (type_) {
    case 0x01:
      return "TEM";
    case 0xC4:
      return "DHT";
    case 0xC8:
      return "JPG";
    case 0xCC:
      return "DAC";
    case JpegMarker::kSOI:
      return"SOI";
    case JpegMarker::kEOI:
      return "EOI";
    case JpegMarker::kSOS:
      return "SOS";
    case 0xDB:
      return "DQT";
    case 0xDC:
      return "DNL";
    case 0xDD:
      return "DRI";
    case 0xDE:
      return "DHP";
    case 0xDF:
      return "EXP";
    case 0xFE:
      return "COM";
  }

  stringstream name_stream;

  if (0xC0 <= type_ && type_ <= 0xC0+15) {
    name_stream << "SOF" << type_-0xC0;
    return name_stream.str();
  }
  if (0xD0 <= type_ && type_ <= 0xD0+7) {
    name_stream << "RST" << type_-0xD0;
    return name_stream.str();
  }
  if (JpegMarker::kAPP0 <= type_ && type_ <= JpegMarker::kAPP0+15) {
    name_stream << "APP" << type_-JpegMarker::kAPP0;
    return name_stream.str();
  }
  if (0xF0 <= type_ && type_ <= 0xF0+13) {
    name_stream << "JPG" << type_-0xF0;
    return name_stream.str();
  }
  return GetHexString("0x");
}

const std::string JpegMarker::GetHexString(const std::string& prefix) const {
    stringstream name_stream;
    name_stream << prefix << std::hex << std::uppercase << std::setfill('0')
                << std::setw(2) << static_cast<int>(type_);
    return name_stream.str();
}

bool JpegMarker::HasVariablePayloadSize() const {
  return type_ != 0x00 && type_ != 0x01 && (type_ < 0xD0 || type_ > 0xD7) &&
      type_ != JpegMarker::kSOI && type_ != JpegMarker::kEOI &&
      type_ != 0xFF;
}

bool JpegMarker::IsEntropySegmentDelimiter() const {
  return (type_ == kSOS || (type_ >= 0xD0 && type_ <= 0xD7));
}

}  // namespace image_io
}  // namespace photos_editing_formats
