#ifndef IMAGE_IO_BASE_DATA_SEGMENT_DATA_SOURCE_H_  // NOLINT
#define IMAGE_IO_BASE_DATA_SEGMENT_DATA_SOURCE_H_  // NOLINT

#include "image_io/base/data_source.h"

namespace photos_editing_formats {
namespace image_io {

/// DataSegmentDataSource is an implementation of DataSource that provides
/// access to requested DataSegment instances from a single (possibly large)
/// in-memory DataSegment.
class DataSegmentDataSource : public DataSource {
 public:
  explicit DataSegmentDataSource(
      const std::shared_ptr<DataSegment>& shared_data_segment)
      : shared_data_segment_(shared_data_segment) {}
  void Reset() override;
  std::shared_ptr<DataSegment> GetDataSegment(size_t begin,
                                              size_t min_size) override;
  TransferDataResult TransferData(const DataRange& data_range, size_t best_size,
                                  DataDestination* data_destination) override;

 private:
  std::shared_ptr<DataSegment> shared_data_segment_;
};

}  // namespace image_io
}  // namespace photos_editing_formats

#endif // IMAGE_IO_BASE_DATA_SEGMENT_DATA_SOURCE_H_  // NOLINT
