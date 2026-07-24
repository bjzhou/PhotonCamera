#ifndef IMAGE_IO_BASE_OSTREAM_DATA_DESTINATION_H_  // NOLINT
#define IMAGE_IO_BASE_OSTREAM_DATA_DESTINATION_H_  // NOLINT

#include <memory>
#include <utility>

#include "image_io/base/ostream_ref_data_destination.h"

namespace photos_editing_formats {
namespace image_io {

/// A DataDestination that writes its output to an ostream.
class OStreamDataDestination : public OStreamRefDataDestination {
 public:
  /// Constructs an OStreamDataDestination using the given ostream.
  /// @param ostream_ptr The ostream to which data is written.
  /// @param message_handler An option message handler for writing messages.
  OStreamDataDestination(std::unique_ptr<std::ostream> ostream_ptr,
                         MessageHandler* message_handler)
      : OStreamRefDataDestination(*ostream_ptr, message_handler),
        ostream_(std::move(ostream_ptr)) {}

 private:
  /// The ostream that is owned by this data destination.
  std::unique_ptr<std::ostream> ostream_;
};

}  // namespace image_io
}  // namespace photos_editing_formats

#endif  // IMAGE_IO_BASE_OSTREAM_DATA_DESTINATION_H_  // NOLINT
