#ifndef IMAGE_IO_JPEG_JPEG_IMAGE_EXTRACTOR_H_  // NOLINT
#define IMAGE_IO_JPEG_JPEG_IMAGE_EXTRACTOR_H_  // NOLINT

#include "image_io/base/data_destination.h"
#include "image_io/base/data_source.h"
#include "image_io/base/message_handler.h"
#include "image_io/jpeg/jpeg_info.h"

namespace photos_editing_formats {
namespace image_io {

/// A class that can make use of the data in a JpegInfo instance to transfer
/// Apple depth and GDepth/GImage images from a DataSource and ship it to a
/// DataDestination.
class JpegImageExtractor {
 public:
  /// @param jpeg_info The JpegInfo instance containing depth/image data.
  /// @param data_source The DataSource from which to transfer depth/image data.
  /// @param message_handler An optional message handler to write messages to.
  JpegImageExtractor(const JpegInfo& jpeg_info, DataSource* data_source,
                     MessageHandler* message_handler)
      : jpeg_info_(jpeg_info),
        data_source_(data_source),
        message_handler_(message_handler) {}

  /// This function extracts the Apple depth image from the DataSource and sends
  /// the bytes to the DataDestination.
  /// @param image_destination The DataDestination to receive the image data.
  /// @return True if an image was extracted.
  bool ExtractAppleDepthImage(DataDestination* image_destination);

  /// This function extracts the Apple matte image from the DataSource and sends
  /// the bytes to the DataDestination.
  /// @param image_destination The DataDestination to receive the image data.
  /// @return True if an image was extracted.
  bool ExtractAppleMatteImage(DataDestination* image_destination);

  /// This function extracts the GDepth type image from the DataSource and
  /// sends the bytes to the DataDestination.
  /// @param image_destination The DataDestination to receive the image data.
  /// @return True if an image was extracted.
  bool ExtractGDepthImage(DataDestination* image_destination);

  /// This function extracts the GImage type image from the DataSource and
  /// sends the bytes to the DataDestination.
  /// @param image_destination The DataDestination to receive the image data.
  /// @return True if an image was extracted.
  bool ExtractGImageImage(DataDestination* image_destination);

 private:
  /// Worker function called for GDepth/GImage type image extraction.
  /// @param xmp_info_type The type of image to extract.
  /// @param image_destination The DataDestination to receive the image data.
  /// @return True if an image was extracted.
  bool ExtractImage(JpegXmpInfo::Type xmp_info_type,
                    DataDestination* image_destination);

  /// Worker function called for Apple depth/matte type image extraction.
  /// @param image_range The range of the image data to extract. If invalid,
  ///     the image_destination's StartTransfer/FinishTransfer functions are
  ///     still called, and this function will return true (i.e., zero bytes
  ///     "successfully" transferred).
  /// @param image_destination The DataDestination to receive the image data.
  /// @return True if the transfer succeeded.
  bool ExtractImage(const DataRange& image_range,
                    DataDestination* image_destination);

  /// The jpeg info object contains the location of the Apple and Google images.
  JpegInfo jpeg_info_;

  /// The data source from which the images are extracted.
  DataSource* data_source_;

  /// An optional message handler to write messages to.
  MessageHandler* message_handler_;
};

}  // namespace image_io
}  // namespace photos_editing_formats

#endif // IMAGE_IO_JPEG_JPEG_IMAGE_EXTRACTOR_H_  // NOLINT
