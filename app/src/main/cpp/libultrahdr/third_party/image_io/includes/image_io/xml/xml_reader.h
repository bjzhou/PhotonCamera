#ifndef IMAGE_IO_XML_XML_READER_H_  // NOLINT
#define IMAGE_IO_XML_XML_READER_H_  // NOLINT

#include <memory>
#include <string>
#include <vector>

#include "image_io/base/data_line_map.h"
#include "image_io/base/data_match_result.h"
#include "image_io/base/message_handler.h"
#include "image_io/xml/xml_handler_context.h"
#include "image_io/xml/xml_rule.h"

namespace photos_editing_formats {
namespace image_io {

/// A class for reading and parsing the text of a data segment, resulting in the
/// functions of an XmlHandler to be called. This reader's Parse() function can
/// be called multiple times for text that spans multiple data segments. Errors
/// are reported to the message handler as they are encountered. In general,
/// there will be three types of errors: internal (programming), syntax, and
/// value errors. Internal errors can come from any where in this code base;
/// Only one such error is permitted per StartParse/Parse... sequence. Syntax
/// errors are usually issued by XmlRule instances; like internal errors, only
/// one such error is tolerated per StartParse/Parse... sequence. XmlHandler
/// functions may issue value errors; multiple such value errors are tolerated.
class XmlReader {
 public:
  XmlReader(XmlHandler* handler, MessageHandler* message_handler)
      : handler_(handler),
        message_handler_(message_handler),
        data_line_map_(&internal_data_line_map_),
        bytes_parsed_(0),
        has_internal_or_syntax_error_(false),
        has_errors_(false) {}

  /// A externally initialized data line map can be used for error messages
  /// instead of the internally built map. Otherwise the internal map will be
  /// used.
  /// @param data_line_map The pre-initialized data line map to use.
  void SetDataLineMap(const DataLineMap* data_line_map) {
    data_line_map_ = data_line_map;
  }

  /// Sets up the reader for parsing data segment text using the given XmlRule.
  /// @param rule The top level rule to use when parsing the data segment text.
  /// @return Whether the reader was set up propertly.
  bool StartParse(std::unique_ptr<XmlRule> rule);

  /// Parses the text portion of the data segment starting at a location. This
  /// function may be called multiple times for text that spans multiple data
  /// segments.
  /// @param start_location The location at which to start reading/parsing.
  /// This location must be contained in the range parameter.
  /// @param range The portion of the data segment to parse. This range value
  /// must be contained in the range returned by DataSegment::GetRange()
  /// @param segment The segment containing the text to parse.
  /// @return Whether the reading/parsing was successful.
  bool Parse(size_t start_location, const DataRange& range,
             const DataSegment& segment);

  /// Parses the string value. This is an alternate way to parse XML syntax.
  /// Internally, this function uses the string to create a data segment and
  /// calls the Parse(start_location, range, segment) function. The range is
  /// computed like this: [GetBytesParsed(), GetBytesParsed() + value.length()).
  /// @param value The string value containing XML syntax to parse.
  /// @return Whether the reading/parsing was successful.
  bool Parse(const std::string& value);

  /// Finishes up the reading/parsing process. The rule passed to StartParse()
  /// must have consumed all the text of the segments and be "done", otherwise
  /// this function will issue a kPrematureEndOfDataError type error message.
  /// @param Whether the reading/parsing operation was completed successfully.
  bool FinishParse();

  /// @return The total number of bytes of text that have been read/parsed.
  size_t GetBytesParsed() const { return bytes_parsed_; }

  /// @return Whether errors have been encountered in reading/parsing the text.
  /// This value may be different from the value returned by the Parse() and
  /// FinishParse() functions. Those functions take into account only internal
  /// and syntax type errors. This value includes all other types of errors.
  bool HasErrors() const { return has_errors_; }

  /// @return The handler that handles the output of the parsing operations.
  XmlHandler* GetHandler() const { return handler_; }

 private:
  /// Sets up the context's name list that is used when creating error message.
  /// @parma context The context to set up.
  void InitializeContextNameList(XmlHandlerContext* context);

  /// If the result has a message, reports it otherwise does nothing.
  /// @param result The result value for an XmlRule::Parse function.
  void ReportMessageIfNeeded(const DataMatchResult& result);

  /// Reports the message indicated in the result to the message handler and
  /// updates the data boolean data members indicating errors.
  /// @param result The result value for an XmlRule::Parse function.
  /// @param context The context for generating an error message if needed.
  void ReportError(const DataMatchResult& result, const DataContext& context);

  /// Reports the message to the message handler and updates the data boolean
  /// data members indicating errors.
  /// @param message The message to send to the message handler.
  void ReportError(const Message& message);

  /// The reader's handler.
  XmlHandler* handler_;

  /// An optional message handler to write messages to.
  MessageHandler* message_handler_;

  /// A possibly externally initialized data line map used for error messages.
  const DataLineMap* data_line_map_;

  /// An internal data line map used for error message creation if an externally
  /// defined map is not provided.
  DataLineMap internal_data_line_map_;

  /// The pending and active rules.
  std::vector<std::unique_ptr<XmlRule>> rule_stack_;

  /// The total number of bytes that have been parsed.
  size_t bytes_parsed_;

  /// Whether an internal or syntax error has occurred.
  bool has_internal_or_syntax_error_;

  /// Whether any type of error has occurred.
  bool has_errors_;
};

}  // namespace image_io
}  // namespace photos_editing_formats

#endif  // IMAGE_IO_XML_XML_READER_H_  // NOLINT
