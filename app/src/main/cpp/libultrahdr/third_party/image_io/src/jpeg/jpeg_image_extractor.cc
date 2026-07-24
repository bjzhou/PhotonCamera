#include "image_io/jpeg/jpeg_image_extractor.h"

#include <sstream>

#include "image_io/base/data_range_tracking_destination.h"
#include "image_io/base/message_handler.h"
#include "image_io/extras/base64_decoder_data_destination.h"
#include "image_io/jpeg/jpeg_segment.h"
#include "image_io/jpeg/jpeg_xmp_data_extractor.h"

/// Set this macro to 1 for debug output.
#define PHOTOS_EDITING_FORMATS_IMAGE_IO_JPEG_JPEG_IMAGE_EXTRACTOR_DEBUG 0

namespace photos_editing_formats {
namespace image_io {

using std::vector;

namespace {

/// The optimim size to use for the DataSource::TransferData() function.
constexpr size_t kBestDataSize = 0x10000;

}  // namespace

bool JpegImageExtractor::ExtractAppleDepthImage(
    DataDestination* image_destination) {
  bool succeeded =
      ExtractImage(jpeg_info_.GetAppleDepthImageRange(), image_destination);
  return jpeg_info_.HasAppleDepth() && succeeded;
}

bool JpegImageExtractor::ExtractAppleMatteImage(
    DataDestination* image_destination) {
  bool succeeded =
      ExtractImage(jpeg_info_.GetAppleMatteImageRange(), image_destination);
  return jpeg_info_.HasAppleMatte() && succeeded;
}

bool JpegImageExtractor::ExtractImage(const DataRange& image_range,
                                      DataDestination* image_destination) {
  DataRangeTrackingDestination data_range_destination(image_destination);
  bool has_errors = false;
  data_range_destination.StartTransfer();
  if (image_range.IsValid()) {
    DataSource::TransferDataResult result = data_source_->TransferData(
        image_range, kBestDataSize, &data_range_destination);
    if (result == DataSource::kTransferDataError) {
      has_errors = true;
    } else if (result == DataSource::kTransferDataNone ||
               data_range_destination.HasDisjointTransferRanges() ||
               data_range_destination.GetTrackedDataRange() != image_range) {
      has_errors = true;
      if (message_handler_) {
        message_handler_->ReportMessage(Message::kPrematureEndOfDataError, "");
      }
    }
  }
  data_range_destination.FinishTransfer();
  return !has_errors;
}

bool JpegImageExtractor::ExtractGDepthImage(
    DataDestination* image_destination) {
  return ExtractImage(JpegXmpInfo::kGDepthInfoType, image_destination);
}

bool JpegImageExtractor::ExtractGImageImage(
    DataDestination* image_destination) {
  return ExtractImage(JpegXmpInfo::kGImageInfoType, image_destination);
}

bool JpegImageExtractor::ExtractImage(JpegXmpInfo::Type xmp_info_type,
                                      DataDestination* image_destination) {
  bool has_errors = false;
  const bool has_image = jpeg_info_.HasImage(xmp_info_type);
  Base64DecoderDataDestination base64_decoder(image_destination,
                                              message_handler_);
  const vector<DataRange>& data_ranges =
      jpeg_info_.GetSegmentDataRanges(xmp_info_type);
  size_t data_ranges_count = data_ranges.size();
  JpegXmpDataExtractor xmp_data_extractor(xmp_info_type, data_ranges_count,
                                          &base64_decoder, message_handler_);
  xmp_data_extractor.StartTransfer();
  if (has_image) {
    for (size_t index = 0; index < data_ranges_count; ++index) {
      const DataRange& data_range = data_ranges[index];
      xmp_data_extractor.SetSegmentIndex(index);
#if PHOTOS_EDITING_FORMATS_IMAGE_IO_JPEG_JPEG_IMAGE_EXTRACTOR_DEBUG
      std::stringstream sstream;
      sstream << "Segment " << index << " from " << data_range.GetBegin()
              << " to " << data_range.GetEnd();
      MessageHandler::Get()->ReportMessage(Message::kStatus, sstream.str());
#endif  // PHOTOS_EDITING_FORMATS_IMAGE_IO_JPEG_JPEG_IMAGE_EXTRACTOR_DEBUG
      DataSource::TransferDataResult result = data_source_->TransferData(
          data_range, kBestDataSize, &xmp_data_extractor);
      if (result == DataSource::kTransferDataError) {
        has_errors = true;
        break;
      } else if (result == DataSource::kTransferDataNone) {
        has_errors = true;
        if (message_handler_) {
          message_handler_->ReportMessage(Message::kPrematureEndOfDataError,
                                          "");
        }
      }
    }
  }
  xmp_data_extractor.FinishTransfer();
  return has_image && !has_errors;
}

}  // namespace image_io
}  // namespace photos_editing_formats
