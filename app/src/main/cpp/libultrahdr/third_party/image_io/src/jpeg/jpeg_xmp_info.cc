#include "image_io/jpeg/jpeg_xmp_info.h"

namespace photos_editing_formats {
namespace image_io {

using std::string;
using std::vector;

const char kGDepthDataPropertyName[] = "GDepth:Data";
const char kGImageDataPropertyName[] = "GImage:Data";
const char kGDepthMimePropertyName[] = "GDepth:Mime";
const char kGImageMimePropertyName[] = "GImage:Mime";

void JpegXmpInfo::InitializeVector(vector<JpegXmpInfo>* xmp_info_vector) {
  xmp_info_vector->clear();
  xmp_info_vector->push_back(JpegXmpInfo(JpegXmpInfo::kGDepthInfoType));
  xmp_info_vector->push_back(JpegXmpInfo(JpegXmpInfo::kGImageInfoType));
}

string JpegXmpInfo::GetIdentifier(Type jpeg_xmp_info_type) {
  switch (jpeg_xmp_info_type) {
    case kGDepthInfoType:
      return kXmpGDepthV1Id;
    case kGImageInfoType:
      return kXmpGImageV1Id;
  }
  return "";
}

string JpegXmpInfo::GetDataPropertyName(Type jpeg_xmp_info_type) {
  switch (jpeg_xmp_info_type) {
    case kGDepthInfoType:
      return kGDepthDataPropertyName;
    case kGImageInfoType:
      return kGImageDataPropertyName;
  }
  return "";
}

string JpegXmpInfo::GetMimePropertyName(Type jpeg_xmp_info_type) {
  switch (jpeg_xmp_info_type) {
    case kGDepthInfoType:
      return kGDepthMimePropertyName;
    case kGImageInfoType:
      return kGImageMimePropertyName;
  }
  return "";
}

}  // namespace image_io
}  // namespace photos_editing_formats
