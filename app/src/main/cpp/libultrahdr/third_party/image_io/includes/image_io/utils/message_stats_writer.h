#ifndef IMAGE_IO_UTILS_MESSAGE_STATS_WRITER_H_  // NOLINT
#define IMAGE_IO_UTILS_MESSAGE_STATS_WRITER_H_  // NOLINT

#include <memory>
#include <sstream>
#include <string>

#include "image_io/base/message_stats.h"
#include "image_io/utils/string_outputter.h"

namespace photos_editing_formats {
namespace image_io {

/// A class to write the message stats for error and warning counts. The output
/// is written when the writer object is destroyed, making this a conveneient
/// class to use in functions that have multiple return points and for which
/// such output is desired at all return points.
class MessageStatsWriter {
 public:
  /// @param message_stats The message stats object holding the counts.
  /// @param outputter The outputter function to write the stats to.
  /// @param name The name of the tool or function that is "finished".
  MessageStatsWriter(const std::shared_ptr<MessageStats>& message_stats,
                     const std::string& name, const StringOutputter& outputter)
      : stats_(message_stats), outputter_(outputter), name_(name) {}

  /// Writes the finished message with the stats to the outputter function.
  ~MessageStatsWriter() {
    const string kError = stats_->error_count == 1 ? "error" : "errors";
    const string kWarning = stats_->warning_count == 1 ? "warning" : "warnings";
    std::stringstream ss;
    ss << std::endl
       << name_ << " finished, " << stats_->error_count << " " << kError << ", "
       << stats_->warning_count << " " << kWarning << std::endl;
    outputter_(ss.str());
  }

 private:
  std::shared_ptr<MessageStats> stats_;
  StringOutputter outputter_;
  std::string name_;
};

}  // namespace image_io
}  // namespace photos_editing_formats

#endif  // IMAGE_IO_UTILS_MESSAGE_STATS_WRITER_H_ // NOLINT
