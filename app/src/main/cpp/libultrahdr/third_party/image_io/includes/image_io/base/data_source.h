#ifndef IMAGE_IO_BASE_DATA_SOURCE_H_  // NOLINT
#define IMAGE_IO_BASE_DATA_SOURCE_H_  // NOLINT

#include <memory>

#include "image_io/base/data_destination.h"
#include "image_io/base/data_range.h"
#include "image_io/base/data_segment.h"
#include "image_io/base/types.h"

namespace photos_editing_formats {
namespace image_io {

/// DataSource is the abstract base class for implementations that can provide
/// data from a file or memory buffer or some other container. A data source
/// supports both a pull model for obtaining data, via the GetDataSegment()
/// function, and a push model via a collaborating DataDestination and the
/// TransferData() function.
///
/// Pushing with a DataSource can be a convenient alternative to using a
/// DataDestination directly when there is a large amount of data that is
/// located in a file, or some type of memory structure that be "wrapped" in
/// a DataSource. The push model provides the most efficient (i.e., least
/// copying of bytes) way to move data from one place to another. For usage of
/// this library on mobile devices with limited memory, this mode of operation
/// is the most attractive. Unfortunately, the push model typically assumes the
/// code knows what portion of bytes to push. The discovery of that portion is
/// most often easier to accomplish with a pull model.
///
/// The pull model, while needed for efficient implementation of objects that
/// scan the contents of a data source, does represent a challenge when managing
/// the lifetime of the DataSegment instances returned by the GetDataSegment()
/// function - depending on the implementation of the DataSource, the segment it
/// returns might represent the entire array of data, or it might represent just
/// a portion of it that was read from a file. In the first case, the DataSource
/// would probably want to keep ownership of the DataSegment, while in the other
/// case, the DataSource might very well want to pass ownership on to the caller
/// of GetDataSegment(). This problem is solved by allowing sharing of the
/// ownership of the DataSegment via a std::shared_ptr.
///
/// The push model implemented does not have these complications, so the
/// DataDestination class's Transfer() function takes a simple const reference
/// to a DataSegment, with the ownership firmly held by the DataSource.
class DataSource {
 public:
  /// The result of a TransferData() operation.
  enum TransferDataResult {
    /// An error occurred while calling DataDestination::Transfer(), or the
    /// data destination was a nullptr.
    kTransferDataError,

    /// The DataDestination::Transfer() function was not called because the
    /// DataRange was empty or the DataSource was not able to supply any data
    /// in the range.
    kTransferDataNone,

    /// The data transfer was successful.
    kTransferDataSuccess
  };

  virtual ~DataSource() = default;

  /// Requests the data source to return a DataSegment with a range starting at
  /// the given begin location and extending best_size bytes in length if
  /// possible. (If not possible, a shorter range of data may be returned. A
  /// larger range may also be returned, depending on the DataSource).
  /// If a non-null data segment returned, its DataRange is guarenteed to have
  /// at least some overlap with the requested range.
  /// @param begin The begin location of the requested data segment.
  /// @param min_size The min size of the requested data segment. The size of
  ///     the data segment returned may be larger depending on the data source.
  /// @return The data segment, or a nullptr if the range of data did not exist
  ///     in the data source.
  virtual std::shared_ptr<DataSegment> GetDataSegment(size_t begin,
                                                      size_t min_size) = 0;

  /// Some data sources may need to be reset if they are accessed via repeated
  /// calls to GetDataSegment() all the way to the end of the array of bytes.
  /// (For example a file-based DataSource might have eof bits that need to be
  /// cleared before re-reading data). This function does that kind of thing.
  virtual void Reset() = 0;

  /// Requests the data source to transfer data in the given range to the given
  /// DataDestination. Callers must call the data destination's StartTransfer()
  /// function before calling this function, and call its FinishTransfer()
  /// after this call. This function will call the data destination's Transfer()
  /// function zero or more times.
  /// @param data_range The range of data to transfer from this data source to
  ///     the destination.
  /// @param best_size The "best" size of the requested data segment to be sent
  ///     to the data destination. The size of the data segment that is sent to
  ///     the data destination may be larger than this value, depending on the
  ///     data source, or it may be smaller if the requested data range extends
  ///     past the end of the data source's range.
  /// @param data_destination The receiver of the data.
  virtual TransferDataResult TransferData(
      const DataRange& data_range, size_t best_size,
      DataDestination* data_destination) = 0;
};

}  // namespace image_io
}  // namespace photos_editing_formats

#endif // IMAGE_IO_BASE_DATA_SOURCE_H_  // NOLINT
