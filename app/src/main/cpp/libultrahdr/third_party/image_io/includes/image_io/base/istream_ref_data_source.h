#ifndef IMAGE_IO_BASE_ISTREAM_REF_DATA_SOURCE_H_  // NOLINT
#define IMAGE_IO_BASE_ISTREAM_REF_DATA_SOURCE_H_  // NOLINT

#include <iostream>

#include "image_io/base/data_source.h"

namespace photos_editing_formats {
namespace image_io {

/// A DataSource that obtains data from an istream held as a reference.
class IStreamRefDataSource : public DataSource {
 public:
  /// Constructs an IStreamDataSource using the given istream.
  /// @param istream_ref The istream from which to read.
  explicit IStreamRefDataSource(std::istream& istream_ref)
      : istream_ref_(istream_ref) {}
  IStreamRefDataSource(const IStreamRefDataSource&) = delete;
  IStreamRefDataSource& operator=(const IStreamRefDataSource&) = delete;

  void Reset() override;
  std::shared_ptr<DataSegment> GetDataSegment(size_t begin,
                                              size_t min_size) override;
  TransferDataResult TransferData(const DataRange& data_range, size_t best_size,
                                  DataDestination* data_destination) override;

 private:
  /// The worker function to create a DataSegment and fill it with the given
  /// number of bytes read from the istream, starting at the given location.
  /// @param begin The location in the istream at which to start reading.
  /// @param count The number of bytes to read.
  /// @return A DataSegment pointer, or nullptr if the read failed.
  std::shared_ptr<DataSegment> Read(size_t begin, size_t count);

 private:
  /// The istream from which to read.
  std::istream& istream_ref_;

  /// The current data segment that was read in the GetDataSegment() function.
  std::shared_ptr<DataSegment> current_data_segment_;
};

}  // namespace image_io
}  // namespace photos_editing_formats

#endif  // IMAGE_IO_BASE_ISTREAM_REF_DATA_SOURCE_H_  // NOLINT
