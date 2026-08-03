#include "image_io/xml/xml_reader.h"

#include <iomanip>
#include <sstream>
#include <string>
#include <utility>

#include "image_io/base/message.h"
#include "image_io/base/message_handler.h"

namespace photos_editing_formats {
namespace image_io {

namespace {

/// The reader name used for error messages.
const char kReaderName[] = "XmlReader";

}  // namespace

bool XmlReader::StartParse(std::unique_ptr<XmlRule> rule) {
  bytes_parsed_ = 0;
  rule_stack_.clear();
  if (!rule) {
    std::string text = std::string(kReaderName) + ":StartParse:NoTopLevelRule";
    Message message(Message::kInternalError, 0, text);
    ReportError(message);
    return false;
  }
  rule_stack_.push_back(std::move(rule));
  has_internal_or_syntax_error_ = false;
  has_errors_ = false;
  return true;
}

bool XmlReader::FinishParse() {
  if (has_internal_or_syntax_error_) {
    return false;
  }
  std::string error_text;
  if (rule_stack_.empty() ||
      (rule_stack_.size() == 1 &&
       rule_stack_.back()->IsPermissibleToFinish(&error_text))) {
    return true;
  }
  std::stringstream ss;
  ss << kReaderName << ":";
  if (error_text.empty()) {
    ss << "While parsing text with rule:";
    ss << rule_stack_.back()->GetName();
    XmlTerminal* terminal = rule_stack_.back()->GetCurrentTerminal();
    if (terminal) {
      if (!terminal->GetName().empty()) {
        ss << ":" << terminal->GetName();
      }
      ss << ":" << terminal->GetScanner()->GetDescription();
    }
  } else {
    ss << error_text;
  }
  Message message(Message::kPrematureEndOfDataError, 0, ss.str());
  has_internal_or_syntax_error_ = true;
  ReportError(message);
  return false;
}

bool XmlReader::Parse(const std::string& value) {
  size_t location = GetBytesParsed();
  DataRange range(location, location + value.length());
  const Byte* bytes = reinterpret_cast<const Byte*>(value.c_str());
  auto segment = DataSegment::Create(range, bytes, DataSegment::kDontDelete);
  return Parse(location, range, *segment);
}

bool XmlReader::Parse(size_t start_location, const DataRange& range,
                      const DataSegment& segment) {
  if (has_internal_or_syntax_error_) {
    return false;
  }
  XmlHandlerContext context(start_location, range, segment, *data_line_map_,
                            handler_);
  InitializeContextNameList(&context);
  if (!context.IsValidLocationAndRange()) {
    DataMatchResult result;
    result.SetMessage(Message::kInternalError,
                      context.GetInvalidLocationAndRangeErrorText());
    ReportError(result, context);
    return false;
  }
  if (rule_stack_.empty()) {
    DataMatchResult result;
    result.SetMessage(Message::kInternalError, "NoActiveRule");
    ReportError(result, context);
    return false;
  }
  if (data_line_map_ == &internal_data_line_map_) {
    internal_data_line_map_.FindDataLines(range, segment);
  }
  size_t bytes_remaining = range.GetEnd() - start_location;
  while (bytes_remaining > 0 && !rule_stack_.empty() &&
         !has_internal_or_syntax_error_) {
    auto& rule = rule_stack_.back();
    InitializeContextNameList(&context);
    DataMatchResult result = rule->Parse(context);
    switch (result.GetType()) {
      case DataMatchResult::kError:
      case DataMatchResult::kNone:
        ReportError(result, context);
        break;
      case DataMatchResult::kPartial:
        ReportMessageIfNeeded(result);
        bytes_parsed_ += result.GetBytesConsumed();
        bytes_remaining -= result.GetBytesConsumed();
        context.IncrementLocation(result.GetBytesConsumed());
        if (rule->HasNextRule()) {
          // Delegation by child rule: push the next.
          rule_stack_.push_back(rule->ReleaseNextRule());
        }
        break;
      case DataMatchResult::kPartialOutOfData:
        ReportMessageIfNeeded(result);
        bytes_parsed_ += result.GetBytesConsumed();
        return true;
      case DataMatchResult::kFull:
        ReportMessageIfNeeded(result);
        bytes_parsed_ += result.GetBytesConsumed();
        bytes_remaining -= result.GetBytesConsumed();
        context.IncrementLocation(result.GetBytesConsumed());
        if (rule->HasNextRule()) {
          // Delegation by chaining: pop the current rule and push the next.
          auto next_rule = rule->ReleaseNextRule();
          rule_stack_.pop_back();
          rule_stack_.push_back(std::move(next_rule));
        } else {
          rule_stack_.pop_back();
        }
        break;
    }
  }
  if (bytes_remaining > 0 && rule_stack_.empty()) {
    InitializeContextNameList(&context);
    std::string text = context.GetErrorText("NoActiveRule", "");
    Message message(Message::kSyntaxError, 0, text);
    ReportError(message);
    return false;
  }
  return !has_internal_or_syntax_error_;
}

void XmlReader::InitializeContextNameList(XmlHandlerContext* context) {
  auto name_list = context->GetNameList();
  name_list.clear();
  name_list.push_back(kReaderName);
  if (!rule_stack_.empty()) {
    name_list.push_back(rule_stack_.back()->GetName());
  }
}

void XmlReader::ReportMessageIfNeeded(const DataMatchResult& result) {
  if (result.HasMessage()) {
    ReportError(result.GetMessage());
  }
}

void XmlReader::ReportError(const DataMatchResult& result,
                            const DataContext& context) {
  if (!result.HasMessage()) {
    Message message(Message::kInternalError, 0,
                    context.GetErrorText("Rule had error but no message", ""));
    ReportError(message);
  }
  ReportError(result.GetMessage());
}

void XmlReader::ReportError(const Message& message) {
  if (message_handler_) {
    message_handler_->ReportMessage(message);
  }
  if (message.GetType() == Message::kInternalError ||
      message.GetType() == Message::kSyntaxError) {
    has_internal_or_syntax_error_ = true;
  }
  if (message.IsError()) {
    has_errors_ = true;
  }
}

}  // namespace image_io
}  // namespace photos_editing_formats
