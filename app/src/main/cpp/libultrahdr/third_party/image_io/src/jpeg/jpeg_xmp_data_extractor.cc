#include "image_io/jpeg/jpeg_xmp_data_extractor.h"

#include <iomanip>
#include <sstream>
#include <string>

#include "image_io/base/message_handler.h"
#include "image_io/jpeg/jpeg_marker.h"
#include "image_io/jpeg/jpeg_segment.h"

/// Set this flag to 1 for debugging output.
#define PHOTOS_EDITING_FORMATS_IMAGE_IO_JPEG_JPEG_XMP_DATA_EXTRACTOR_DEBUG 0

namespace photos_editing_formats {
namespace image_io {

using std::string;
using std::stringstream;

void JpegXmpDataExtractor::StartTransfer() {
  data_destination_->StartTransfer();
}

DataDestination::TransferStatus JpegXmpDataExtractor::Transfer(
    const DataRange& transfer_range, const DataSegment& data_segment) {
  if (HasError()) {
    return kTransferError;
  }
#if PHOTOS_EDITING_FORMATS_IMAGE_IO_JPEG_JPEG_XMP_DATA_EXTRACTOR_DEBUG
  stringstream sstream1;
  sstream1 << "Segment " << segment_index_ << " of " << last_segment_index_
           << " - data range from " << transfer_range.GetBegin() << " to "
           << transfer_range.GetEnd();
  MessageHandler::Get()->ReportMessage(Message::kStatus, sstream1.str());
#endif  // PHOTOS_EDITING_FORMATS_IMAGE_IO_JPEG_JPEG_XMP_DATA_EXTRACTOR_DEBUG
  const size_t xmp_header_length = JpegMarker::kLength +
                                   JpegSegment::kVariablePayloadDataOffset +
                                   kXmpExtendedHeaderSize;
  size_t encoded_data_begin = transfer_range.GetBegin() + xmp_header_length;
  size_t xmp_data_begin = encoded_data_begin;
  size_t xmp_data_end = transfer_range.GetEnd();
  if (segment_index_ == 0) {
    string property_name = JpegXmpInfo::GetDataPropertyName(xmp_info_type_);
    size_t gdepth_data_location = data_segment.Find(
        encoded_data_begin, property_name.c_str(), property_name.length());
    if (gdepth_data_location != transfer_range.GetEnd()) {
      size_t quote_location = data_segment.Find(gdepth_data_location, '"');
      if (quote_location != transfer_range.GetEnd()) {
        xmp_data_begin = quote_location + 1;
      }
    }
    if (xmp_data_begin == encoded_data_begin) {
      if (message_handler_) {
        message_handler_->ReportMessage(Message::kStringNotFoundError,
                                        property_name + "=\"");
      }
      has_error_ = true;
      return kTransferError;
    }
  }
  if (segment_index_ == last_segment_index_) {
    xmp_data_end = data_segment.Find(xmp_data_begin, '"');
    if (xmp_data_end == transfer_range.GetEnd()) {
      if (message_handler_) {
        message_handler_->ReportMessage(Message::kStringNotFoundError, "\"");
      }
      has_error_ = true;
      return kTransferError;
    }
  }

  DataRange xmp_data_range(xmp_data_begin, xmp_data_end);
#if PHOTOS_EDITING_FORMATS_IMAGE_IO_JPEG_JPEG_XMP_DATA_EXTRACTOR_DEBUG
  string strb((const char*)data_segment.GetBuffer(xmp_data_range.GetBegin()),
              50);
  string stre((const char*)data_segment.GetBuffer(xmp_data_end - 50), 50);
  stringstream sstream2;
  sstream2 << "  " << xmp_data_begin << ":" << xmp_data_end << " = "
           << xmp_data_range.GetLength() << " bytes: [" << strb << "..." << stre
           << "] - ";
  MessageHandler::Get()->ReportMessage(Message::kStatus, sstream2.str());
  for (size_t i = transfer_range.GetBegin(); i < data_segment.GetEnd();
       i += 32) {
    stringstream hex_stream, ascii_stream;
    hex_stream << std::hex << std::setfill('0') << std::setw(2)
               << std::uppercase;
    for (size_t j = 0; j < 32 && (i + j) < data_segment.GetEnd(); ++j) {
      Byte value = data_segment.GetValidatedByte(i + j).value;
      hex_stream << " " << size_t(value);
      ascii_stream << (isprint(value) ? static_cast<char>(value) : '.');
    }
    stringstream sstream3;
    sstream3 << "  * " << std::hex << std::setfill('0') << std::setw(8)
             << std::uppercase << i;
    sstream3 << ":" << hex_stream.str() << "  [" << ascii_stream.str() << "]";
    MessageHandler::Get()->ReportMessage(Message::kStatus, sstream3.str());
  }
#endif  // PHOTOS_EDITING_FORMATS_IMAGE_IO_JPEG_JPEG_XMP_DATA_EXTRACTOR_DEBUG
  return data_destination_->Transfer(xmp_data_range, data_segment);
}

void JpegXmpDataExtractor::FinishTransfer() {
  data_destination_->FinishTransfer();
}

}  // namespace image_io
}  // namespace photos_editing_formats
