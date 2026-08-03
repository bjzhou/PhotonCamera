#ifndef IMAGE_IO_BASE_OSTREAM_REF_DATA_DESTINATION_H_  // NOLINT
#define IMAGE_IO_BASE_OSTREAM_REF_DATA_DESTINATION_H_  // NOLINT

#include <iostream>
#include <string>

#include "image_io/base/data_destination.h"
#include "image_io/base/message_handler.h"

namespace photos_editing_formats {
namespace image_io {

/// A DataDestination that writes its output to an ostream held as a reference.
class OStreamRefDataDestination : public DataDestination {
 public:
  /// Constructs an OStreamDataDestination using the given ostream.
  /// @param ostream_ref The ostream to which data is written.
  /// @param message_handler An option message handler for writing messages.
  OStreamRefDataDestination(std::ostream& ostream_ref,
                            MessageHandler* message_handler)
      : ostream_ref_(ostream_ref),
        message_handler_(message_handler),
        bytes_transferred_(0),
        has_error_(false) {}
  OStreamRefDataDestination(const OStreamRefDataDestination&) = delete;
  OStreamRefDataDestination& operator=(const OStreamRefDataDestination&) =
      delete;

  /// @param name A name to associate with the ostream. Used for error messages.
  void SetName(const std::string& name) { name_ = name; }

  /// @return The name associated with the ostream.
  const std::string& GetName() const { return name_; }

  /// @return The number of bytes written to the ostream.
  size_t GetBytesTransferred() const override { return bytes_transferred_; }

  /// @return True if errors were encountered while writing to the ostream.
  bool HasError() const { return has_error_; }

  void StartTransfer() override;
  TransferStatus Transfer(const DataRange& transfer_range,
                          const DataSegment& data_segment) override;
  void FinishTransfer() override;

 private:
  /// The ostream written to.
  std::ostream& ostream_ref_;

  /// An optional message handler to write messages to.
  MessageHandler* message_handler_;

  /// The number of bytes written so far.
  size_t bytes_transferred_;

  /// A (file) name to associate with the ostream, used with error messages.
  std::string name_;

  /// If true indicates an error has occurred writing to the ostream.
  bool has_error_;
};

}  // namespace image_io
}  // namespace photos_editing_formats

#endif  // IMAGE_IO_BASE_OSTREAM_REF_DATA_DESTINATION_H_  // NOLINT
