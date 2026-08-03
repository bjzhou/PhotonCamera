#include "image_io/xml/xml_rule.h"

#include <string>
#include <utility>

#include "image_io/base/data_scanner.h"

namespace photos_editing_formats {
namespace image_io {

using std::string;
using std::unique_ptr;

namespace {

/// A scanner is reentrant if it ran out of data. In these cases, the next data
/// segment sent into the rule for parsing may be non-contiguous with the
/// previous one. If that is the case, update the scanner's token length to
/// account for the missing bytes. (Scanner token ranges represent a bounding
/// box around the token value - in these cases the actual token value is really
/// a vector of ranges. Client handlers are responsible for dealing with that
/// reality, not the scanner or rule).
/// @param scanner The current possibly reentrant scanner.
/// @param context_range The new data range that is to be parsed.
void MaybeUpdateTokenLengthForReentrantScanner(DataScanner* scanner,
                                               const DataRange& context_range) {
  const auto& token_range = scanner->GetTokenRange();
  if (scanner->GetScanCallCount() > 0 && token_range.IsValid() &&
      context_range.GetBegin() > token_range.GetEnd()) {
    size_t skipped_byte_count = context_range.GetBegin() - token_range.GetEnd();
    scanner->ExtendTokenLength(skipped_byte_count);
  }
}

}  // namespace

XmlRule::XmlRule(const std::string& name) : name_(name), terminal_index_(0) {}

XmlTerminal& XmlRule::AddLiteralTerminal(const std::string& literal) {
  terminals_.emplace_back(DataScanner::CreateLiteralScanner(literal));
  return terminals_.back();
}

XmlTerminal& XmlRule::AddNameTerminal() {
  terminals_.emplace_back(DataScanner::CreateNameScanner());
  return terminals_.back();
}

XmlTerminal& XmlRule::AddQuotedStringTerminal() {
  terminals_.emplace_back(DataScanner::CreateQuotedStringScanner());
  return terminals_.back();
}

XmlTerminal& XmlRule::AddSentinelTerminal(const std::string& sentinels) {
  terminals_.emplace_back(DataScanner::CreateSentinelScanner(sentinels));
  return terminals_.back();
}

XmlTerminal& XmlRule::AddThroughLiteralTerminal(const std::string& literal) {
  terminals_.emplace_back(DataScanner::CreateThroughLiteralScanner(literal));
  return terminals_.back();
}

XmlTerminal& XmlRule::AddWhitespaceTerminal() {
  terminals_.emplace_back(DataScanner::CreateWhitespaceScanner());
  return terminals_.back();
}

XmlTerminal& XmlRule::AddOptionalWhitespaceTerminal() {
  terminals_.emplace_back(DataScanner::CreateOptionalWhitespaceScanner());
  return terminals_.back();
}

size_t XmlRule::GetTerminalIndexFromName(const std::string name) const {
  if (!name.empty()) {
    for (size_t index = 0; index < terminals_.size(); ++index) {
      if (terminals_[index].GetName() == name) {
        return index;
      }
    }
  }
  return terminals_.size();
}

void XmlRule::SetTerminalIndex(size_t terminal_index) {
  terminal_index_ = terminal_index;
}

XmlTerminal* XmlRule::GetCurrentTerminal() {
  return terminal_index_ < terminals_.size() ? &terminals_[terminal_index_]
                                             : nullptr;
}

XmlTerminal* XmlRule::GetTerminal(size_t index) {
  return index < terminals_.size() ? &terminals_[index] : nullptr;
}

void XmlRule::ResetTerminalScanners() {
  for (auto& terminal : terminals_) {
    terminal.GetScanner()->Reset();
  }
}

bool XmlRule::IsPermissibleToFinish(std::string*) const {
  return false;
}

DataMatchResult XmlRule::Parse(XmlHandlerContext context) {
  DataMatchResult result;
  if (!context.IsValidLocationAndRange()) {
    result.SetType(DataMatchResult::kError);
    result.SetMessage(Message::kInternalError,
                      context.GetInvalidLocationAndRangeErrorText());
    return result;
  }
  bool force_parse_return = false;
  size_t bytes_available = context.GetBytesAvailable();
  size_t current_terminal_index = GetTerminalIndex();
  if (current_terminal_index < terminals_.size()) {
    MaybeUpdateTokenLengthForReentrantScanner(
        terminals_[current_terminal_index].GetScanner(), context.GetRange());
  }
  while (!force_parse_return && current_terminal_index < terminals_.size() &&
         bytes_available > 0) {
    SetTerminalIndex(current_terminal_index);
    auto& terminal = terminals_[current_terminal_index];
    DataMatchResult scanner_result = terminal.GetScanner()->Scan(context);
    if (terminal.GetAction() &&
        (scanner_result.GetType() == DataMatchResult::kFull ||
         scanner_result.GetType() == DataMatchResult::kPartialOutOfData)) {
      XmlActionContext action_context(context, &terminal, scanner_result);
      scanner_result = terminal.GetAction()(action_context);
    }
    result.SetType(scanner_result.GetType());
    result.IncrementBytesConsumed(scanner_result.GetBytesConsumed());
    context.IncrementLocation(scanner_result.GetBytesConsumed());
    bytes_available -= scanner_result.GetBytesConsumed();
    switch (scanner_result.GetType()) {
      case DataMatchResult::kError:
        result.SetMessage(scanner_result.GetMessage());
        force_parse_return = true;
        break;
      case DataMatchResult::kNone:
        result.SetType(DataMatchResult::kError);
        result.SetMessage(
            Message::kInternalError,
            context.GetErrorText("Invalid scanner match result",
                                 terminal.GetScanner()->GetDescription()));
        force_parse_return = true;
        break;
      case DataMatchResult::kPartial:
      case DataMatchResult::kPartialOutOfData:
        if (scanner_result.HasMessage()) {
          result.SetMessage(scanner_result.GetMessage());
        }
        force_parse_return = true;
        break;
      case DataMatchResult::kFull:
        if (scanner_result.HasMessage() && !result.HasMessage()) {
          result.SetMessage(scanner_result.GetMessage());
        }
        current_terminal_index = current_terminal_index == GetTerminalIndex()
                                     ? current_terminal_index + 1
                                     : GetTerminalIndex();
        SetTerminalIndex(current_terminal_index);
        if (current_terminal_index < GetTerminalCount()) {
          result.SetType(DataMatchResult::kPartial);
        }
        force_parse_return = HasNextRule();
        break;
    }
  }
  return result;
}

bool XmlRule::HasNextRule() const { return next_rule_ != nullptr; }

std::unique_ptr<XmlRule> XmlRule::ReleaseNextRule() {
  return std::move(next_rule_);
}

void XmlRule::SetNextRule(std::unique_ptr<XmlRule> next_rule) {
  next_rule_ = std::move(next_rule);
}

}  // namespace image_io
}  // namespace photos_editing_formats
