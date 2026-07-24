#include "image_io/gcontainer/gcontainer.h"

#include <fstream>

#include "image_io/base/data_segment.h"
#include "image_io/base/data_segment_data_source.h"
#include "image_io/base/istream_data_source.h"
#include "image_io/base/message_handler.h"
#include "image_io/base/ostream_data_destination.h"
#include "image_io/jpeg/jpeg_info.h"
#include "image_io/jpeg/jpeg_info_builder.h"
#include "image_io/jpeg/jpeg_scanner.h"
#include "image_io/utils/file_utils.h"

namespace photos_editing_formats {
namespace image_io {
namespace gcontainer {
namespace {

using photos_editing_formats::image_io::DataRange;
using photos_editing_formats::image_io::DataSegment;
using photos_editing_formats::image_io::DataSegmentDataSource;
using photos_editing_formats::image_io::IStreamRefDataSource;
using photos_editing_formats::image_io::JpegInfoBuilder;
using photos_editing_formats::image_io::JpegScanner;
using photos_editing_formats::image_io::Message;
using photos_editing_formats::image_io::MessageHandler;
using photos_editing_formats::image_io::OStreamDataDestination;
using std::string;

// Populates first_image_range with the first image (from the header metadata
// to the EOI marker) present in the JPEG file input_file_name. Returns true if
// such a first image is found, false otherwise.
//
// input_jpeg_stream must be a JPEG stream.
// image_data_segment is populated with the DataSegment for
// input_file_name, and is populated only in the successful case.
// first_image_range is populated with the first image found in the input file,
// only if such an image is found.

bool ExtractFirstImageInJpeg(std::istream& input_jpeg_stream,
                             MessageHandler* message_handler,
                             DataRange* first_image_range) {
  if (first_image_range == nullptr) {
    return false;
  }

  // Get the input and output setup.
  if (message_handler) {
    message_handler->ClearMessages();
  }

  // Get the jpeg info and first image range from the input.
  IStreamRefDataSource data_source(input_jpeg_stream);
  JpegInfoBuilder jpeg_info_builder;
  jpeg_info_builder.SetImageLimit(1);
  JpegScanner jpeg_scanner(message_handler);
  jpeg_scanner.Run(&data_source, &jpeg_info_builder);
  data_source.Reset();

  if (jpeg_scanner.HasError()) {
    return false;
  }

  const auto& jpeg_info = jpeg_info_builder.GetInfo();
  const auto& image_ranges = jpeg_info.GetImageRanges();
  if (image_ranges.empty()) {
    if (message_handler) {
      message_handler->ReportMessage(Message::kPrematureEndOfDataError,
                                     "No Images Found");
    }
    return false;
  }

  *first_image_range = image_ranges[0];
  return true;
}

}  // namespace

bool WriteImageAndFiles(const string& input_file_name,
                        const std::vector<string>& other_files,
                        const string& output_file_name) {
  MessageHandler message_handler;
  auto output_stream = OpenOutputFile(output_file_name, &message_handler);
  if (!output_stream) {
    return false;
  }

  OStreamDataDestination output_destination(std::move(output_stream),
                                            &message_handler);
  output_destination.SetName(output_file_name);

  DataRange image_range;
  std::unique_ptr<std::istream> input_stream =
      OpenInputFile(input_file_name, &message_handler);

  if (!ExtractFirstImageInJpeg(*input_stream, &message_handler, &image_range)) {
    return false;
  }

  output_destination.StartTransfer();
  IStreamDataSource data_source(
      OpenInputFile(input_file_name, &message_handler));
  data_source.TransferData(image_range, image_range.GetLength(),
                           &output_destination);

  size_t bytes_transferred = image_range.GetLength();
  for (const string& tack_on_file : other_files) {
    if (tack_on_file.empty()) {
      continue;
    }
    auto tack_on_data_segment = ReadEntireFile(tack_on_file, &message_handler);
    if (!tack_on_data_segment) {
      continue;
    }

    DataSegmentDataSource tack_on_source(tack_on_data_segment);
    DataRange tack_on_range = tack_on_data_segment->GetDataRange();
    bytes_transferred += tack_on_range.GetLength();
    tack_on_source.TransferData(tack_on_range, tack_on_range.GetLength(),
                                &output_destination);
  }

  output_destination.FinishTransfer();
  return output_destination.GetBytesTransferred() == bytes_transferred &&
         !output_destination.HasError();
}

bool ParseFileAfterImage(const std::string& input_file_name,
                         size_t file_start_offset, size_t file_length,
                         std::string* out_file_contents) {
  std::ifstream input_stream(input_file_name);
  if (!input_stream.is_open()) {
    return false;
  }
  return ParseFileAfterImageFromStream(file_start_offset, file_length,
                                       input_stream, out_file_contents);
}

bool ParseFileAfterImageFromStream(size_t start_offset, size_t length,
                                   std::istream& input_jpeg_stream,
                                   std::string* out_contents) {
  if (out_contents == nullptr || start_offset < 0 || length == 0) {
    return false;
  }

  size_t curr_posn = input_jpeg_stream.tellg();
  input_jpeg_stream.seekg(0, input_jpeg_stream.end);
  size_t stream_size = input_jpeg_stream.tellg();
  input_jpeg_stream.seekg(curr_posn, input_jpeg_stream.beg);

  DataRange image_range;
  MessageHandler message_handler;
  if (!ExtractFirstImageInJpeg(input_jpeg_stream, &message_handler,
                               &image_range)) {
    return false;
  }

  size_t image_bytes_end_offset = image_range.GetEnd();
  size_t file_start_in_image = image_bytes_end_offset + start_offset;
  size_t file_end_in_image = file_start_in_image + length;
  if (stream_size < file_end_in_image) {
    // Requested file is past the end of the image file.
    return false;
  }

  // Get the file's contents.
  const DataRange file_range(file_start_in_image, file_end_in_image);
  size_t file_range_size = file_range.GetLength();
  // TODO(miraleung): Consider subclassing image_io/data_destination.h and
  // transferring bytes directly into the string. TBD pending additional mime
  // type getters.
  input_jpeg_stream.seekg(file_range.GetBegin(), input_jpeg_stream.beg);
  out_contents->resize(file_range_size);
  input_jpeg_stream.read(&(*out_contents)[0], file_range_size);
  return true;
}

}  // namespace gcontainer
}  // namespace image_io
}  // namespace photos_editing_formats
