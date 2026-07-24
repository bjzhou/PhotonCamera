#ifndef IMAGE_IO_BASE_ISTREAM_DATA_SOURCE_H_  // NOLINT
#define IMAGE_IO_BASE_ISTREAM_DATA_SOURCE_H_  // NOLINT

#include <memory>
#include <utility>

#include "image_io/base/istream_ref_data_source.h"

namespace photos_editing_formats {
namespace image_io {

/// A DataSource that obtains data from an istream that it owns.
class IStreamDataSource : public IStreamRefDataSource {
 public:
  /// Constructs an IStreamDataSource using the given istream.
  /// @param istram_ptr The istream from which to read.
  explicit IStreamDataSource(std::unique_ptr<std::istream> istream_ptr)
      : IStreamRefDataSource(*istream_ptr), istream_(std::move(istream_ptr)) {}

 private:
  /// The istream that is owned by this data source.
  std::unique_ptr<std::istream> istream_;
};

}  // namespace image_io
}  // namespace photos_editing_formats

#endif  // IMAGE_IO_BASE_ISTREAM_DATA_SOURCE_H_  // NOLINT
