#include "image_io/jpeg/jpeg_scanner.h"

#include <sstream>

#include "image_io/base/message_handler.h"
#include "image_io/jpeg/jpeg_segment.h"

namespace photos_editing_formats {
namespace image_io {

using std::stringstream;

/// The minimum size for the DataSegments requested from the DataSource. Using
/// this value will guarentee that a JpegSegment will occupy at most two
/// DataSegments.
const size_t kMinBufferDataRequestSize = 0x10000;

void JpegScanner::Run(DataSource* data_source,
                      JpegSegmentProcessor* segment_processor) {
  if (data_source_) {
    // The Run() function is already active.
    return;
  }
  data_source_ = data_source;
  segment_processor_ = segment_processor;
  current_location_ = 0;
  done_ = false;
  has_error_ = false;
  data_source_->Reset();
  current_segment_ = data_source_->GetDataSegment(current_location_,
                                                  kMinBufferDataRequestSize);
  segment_processor_->Start(this);
  FindAndProcessSegments();
  segment_processor_->Finish(this);
  data_source_ = nullptr;
  segment_processor_ = nullptr;
  current_segment_.reset();
  next_segment_.reset();
}

void JpegScanner::FindAndProcessSegments() {
  while (!IsDone() && !HasError()) {
    size_t begin_segment_location =
        current_segment_->Find(current_location_, JpegMarker::kStart);
    if (begin_segment_location == current_segment_->GetEnd()) {
      GetNextSegment();
      if (next_segment_) {
        current_location_ =
            std::max(current_location_, next_segment_->GetBegin());
        current_segment_ = next_segment_;
        next_segment_.reset();
        continue;
      }
      SetDone();
      break;
    }
    size_t payload_size = 0;
    JpegMarker marker(
        GetByte(begin_segment_location + JpegMarker::kTypeOffset));
    if (marker.IsValid() && !HasError()) {
      payload_size = GetPayloadSize(marker, begin_segment_location);
      if (marker.IsValid() && interesting_marker_flags_[marker.GetType()]) {
        size_t end_segment_location =
            begin_segment_location + JpegMarker::kLength + payload_size;
        GetByte(end_segment_location - 1);
        if (!HasError()) {
          JpegSegment segment(begin_segment_location, end_segment_location,
                              current_segment_.get(), next_segment_.get());
          segment_processor_->Process(this, segment);
        }
      }
    }
    current_location_ =
        begin_segment_location + JpegMarker::kLength + payload_size;
  }
}

size_t JpegScanner::GetPayloadSize(const JpegMarker& marker,
                                   size_t begin_location) {
  if (marker.HasVariablePayloadSize()) {
    return (GetByte(begin_location + JpegMarker::kLength) << 8) |
           GetByte(begin_location + JpegMarker::kLength + 1);
  } else {
    return 0;
  }
}

ValidatedByte JpegScanner::GetValidatedByte(size_t location) {
  if (current_segment_->Contains(location)) {
    return current_segment_->GetValidatedByte(location);
  }
  GetNextSegment();
  if (next_segment_ && next_segment_->Contains(location)) {
    return next_segment_->GetValidatedByte(location);
  }
  if (message_handler_) {
    stringstream sstream;
    sstream << location;
    message_handler_->ReportMessage(Message::kPrematureEndOfDataError,
                                    sstream.str());
  }
  return InvalidByte();
}

Byte JpegScanner::GetByte(size_t location) {
  ValidatedByte validated_byte = GetValidatedByte(location);
  if (validated_byte.is_valid) {
    return validated_byte.value;
  }
  has_error_ = true;
  return 0;
}

void JpegScanner::GetNextSegment() {
  if (!next_segment_ && current_segment_) {
    next_segment_ = data_source_->GetDataSegment(current_segment_->GetEnd(),
                                                 kMinBufferDataRequestSize);
  }
}

}  // namespace image_io
}  // namespace photos_editing_formats
