#include "image_io/base/data_scanner.h"

#include <algorithm>

namespace photos_editing_formats {
namespace image_io {

using std::string;

namespace {

const char kWhitespaceChars[] = " \t\n\r";
const char kBase64PadChar = '=';
const char kBase64Chars[] =
    "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";

/// This function is like strspn but does not assume a null-terminated string.
size_t memspn(const char* s, size_t slen, const char* accept) {
  const char* p = s;
  const char* spanp;
  char c, sc;

cont:
  c = *p++;
  if (slen-- == 0) return p - 1 - s;
  for (spanp = accept; (sc = *spanp++) != '\0';)
    if (sc == c) goto cont;
  return p - 1 - s;
}

/// @return Whether value is in the range [lo:hi].
bool InRange(char value, char lo, char hi) {
  return value >= lo && value <= hi;
}

/// @return Whether the value is the first character of a kName type scanner.
bool IsFirstNameChar(char value) {
  return InRange(value, 'A', 'Z') || InRange(value, 'a', 'z') || value == '_' ||
         value == ':';
}

/// Scans the characters in the s string, where the characters can be any legal
/// character in the name.
/// @return The number of name characters scanned.
size_t ScanOptionalNameChars(const char* s, size_t slen) {
  const char* kOptionalChars =
      "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789.-_:";
  return memspn(s, slen, kOptionalChars);
}

/// Scans the whitespace characters in the s string.
/// @return The number of whitepace characters scanned.
size_t ScanWhitespaceChars(const char* s, size_t slen) {
  return memspn(s, slen, kWhitespaceChars);
}

}  // namespace

string DataScanner::GetWhitespaceChars() { return kWhitespaceChars; }

string DataScanner::GetBase64Chars(bool include_pad_char) {
  string chars(kBase64Chars);
  if (include_pad_char) chars += kBase64PadChar;
  return chars;
}

string DataScanner::GetBase64PadChar() { return string(1, kBase64PadChar); }

DataScanner DataScanner::CreateLiteralScanner(const string& literal) {
  return DataScanner(DataScanner::kLiteral, literal);
}

DataScanner DataScanner::CreateNameScanner() {
  return DataScanner(DataScanner::kName);
}

DataScanner DataScanner::CreateQuotedStringScanner() {
  return DataScanner(DataScanner::kQuotedString);
}

DataScanner DataScanner::CreateSentinelScanner(const string& sentinels) {
  return DataScanner(DataScanner::kSentinel, sentinels);
}

DataScanner DataScanner::CreateThroughLiteralScanner(const string& literal) {
  return DataScanner(DataScanner::kThroughLiteral, literal);
}

DataScanner DataScanner::CreateWhitespaceScanner() {
  return DataScanner(DataScanner::kWhitespace);
}

DataScanner DataScanner::CreateOptionalWhitespaceScanner() {
  return DataScanner(DataScanner::kOptionalWhitespace);
}

size_t DataScanner::ScanChars(const char* s, size_t slen, const char* scanset) {
  return memspn(s, slen, scanset);
}

size_t DataScanner::ExtendTokenLength(size_t delta_length) {
  token_range_ =
      DataRange(token_range_.GetBegin(), token_range_.GetEnd() + delta_length);
  return token_range_.GetLength();
}

void DataScanner::SetInternalError(const DataContext& context,
                                   const string& error_description,
                                   DataMatchResult* result) {
  result->SetType(DataMatchResult::kError);
  result->SetMessage(
      Message::kInternalError,
      context.GetErrorText({}, {GetDescription()}, error_description, ""));
}

void DataScanner::SetSyntaxError(const DataContext& context,
                                 const string& error_description,
                                 DataMatchResult* result) {
  result->SetType(DataMatchResult::kError);
  result->SetMessage(Message::kSyntaxError,
                     context.GetErrorText(error_description, GetDescription()));
}

DataMatchResult DataScanner::ScanLiteral(const char* cbytes,
                                         size_t bytes_available,
                                         const DataContext& context) {
  DataMatchResult result;
  size_t token_length = token_range_.GetLength();
  if (token_length >= literal_or_sentinels_.length()) {
    SetInternalError(context, "Literal already scanned", &result);
    return result;
  }
  size_t bytes_still_needed = literal_or_sentinels_.length() - token_length;
  size_t bytes_to_compare = std::min(bytes_still_needed, bytes_available);
  if (strncmp(&literal_or_sentinels_[token_length], cbytes, bytes_to_compare) ==
      0) {
    token_length = ExtendTokenLength(bytes_to_compare);
    result.SetBytesConsumed(bytes_to_compare);
    result.SetType(token_length == literal_or_sentinels_.length()
                       ? DataMatchResult::kFull
                       : DataMatchResult::kPartialOutOfData);
  } else {
    SetSyntaxError(context, "Expected literal", &result);
  }
  return result;
}

DataMatchResult DataScanner::ScanName(const char* cbytes,
                                      size_t bytes_available,
                                      const DataContext& context) {
  DataMatchResult result;
  size_t token_length = token_range_.GetLength();
  if (token_length == 0) {
    if (!IsFirstNameChar(*cbytes)) {
      SetSyntaxError(context, "Expected first character of a name", &result);
      return result;
    }
    token_length = ExtendTokenLength(1);
    result.SetBytesConsumed(1);
    bytes_available -= 1;
    cbytes += 1;
  }
  size_t optional_bytes_consumed =
      ScanOptionalNameChars(cbytes, bytes_available);
  token_length = ExtendTokenLength(optional_bytes_consumed);
  result.IncrementBytesConsumed(optional_bytes_consumed);
  if (result.GetBytesConsumed() == 0 && token_length > 0) {
    result.SetType(DataMatchResult::kFull);
  } else if (optional_bytes_consumed < bytes_available) {
    result.SetType(DataMatchResult::kFull);
  } else {
    result.SetType(DataMatchResult::kPartialOutOfData);
  }
  return result;
}

DataMatchResult DataScanner::ScanQuotedString(const char* cbytes,
                                              size_t bytes_available,
                                              const DataContext& context) {
  const size_t kStart = 0;
  const size_t kDone = '.';
  const size_t kSquote = '\'';
  const size_t kDquote = '"';
  DataMatchResult result;
  size_t token_length = token_range_.GetLength();
  if ((data_ == kStart && token_length != 0) ||
      (data_ != kStart && data_ != kSquote && data_ != kDquote)) {
    SetInternalError(context, "Inconsistent state", &result);
    return result;
  }
  if (data_ == kStart) {
    if (*cbytes != kSquote && *cbytes != kDquote) {
      SetSyntaxError(context, "Expected start of a quoted string", &result);
      return result;
    }
    data_ = *cbytes++;
    bytes_available--;
    result.SetBytesConsumed(1);
    token_length = ExtendTokenLength(1);
  }
  const char* ebytes = reinterpret_cast<const char*>(
      memchr(cbytes, static_cast<int>(data_), bytes_available));
  size_t bytes_scanned = ebytes ? ebytes - cbytes : bytes_available;
  result.IncrementBytesConsumed(bytes_scanned);
  token_length = ExtendTokenLength(bytes_scanned);
  if (bytes_scanned == bytes_available) {
    result.SetType(DataMatchResult::kPartialOutOfData);
  } else {
    result.SetType(DataMatchResult::kFull);
    result.IncrementBytesConsumed(1);
    ExtendTokenLength(1);
    data_ = kDone;
  }
  return result;
}

DataMatchResult DataScanner::ScanSentinel(const char* cbytes,
                                          size_t bytes_available,
                                          const DataContext& context) {
  DataMatchResult result;
  if (data_ != 0) {
    SetInternalError(context, "Sentinel already scanned", &result);
    return result;
  }
  char cbyte = *cbytes;
  for (size_t index = 0; index < literal_or_sentinels_.size(); ++index) {
    char sentinel = literal_or_sentinels_[index];
    if ((sentinel == '~' && IsFirstNameChar(cbyte)) || cbyte == sentinel) {
      ExtendTokenLength(1);
      result.SetBytesConsumed(1).SetType(DataMatchResult::kFull);
      data_ = sentinel;
      break;
    }
  }
  if (result.GetBytesConsumed() == 0) {
    SetSyntaxError(context, "Unexpected character encountered", &result);
  }
  return result;
}

DataMatchResult DataScanner::ScanThroughLiteral(const char* cbytes,
                                                size_t bytes_available,
                                                const DataContext& context) {
  DataMatchResult result;
  size_t& scanned_literal_length = data_;
  if (scanned_literal_length >= literal_or_sentinels_.length()) {
    SetInternalError(context, "Literal already scanned", &result);
    return result;
  }
  while (bytes_available > 0) {
    if (scanned_literal_length == 0) {
      // Literal scan not in progress. Find the first char of the literal.
      auto* matched_byte = reinterpret_cast<const char*>(
          memchr(cbytes, literal_or_sentinels_[0], bytes_available));
      if (matched_byte == nullptr) {
        // first char not found and chars exhausted.
        ExtendTokenLength(bytes_available);
        result.IncrementBytesConsumed(bytes_available);
        result.SetType(DataMatchResult::kPartialOutOfData);
        break;
      } else {
        // found the first char of the literal.
        size_t bytes_scanned = (matched_byte - cbytes) + 1;
        result.IncrementBytesConsumed(bytes_scanned);
        bytes_available -= bytes_scanned;
        cbytes += bytes_scanned;
        ExtendTokenLength(bytes_scanned);
        scanned_literal_length = 1;
      }
    }
    // check if the rest of the literal is there.
    size_t bytes_still_needed =
        literal_or_sentinels_.length() - scanned_literal_length;
    size_t bytes_to_compare = std::min(bytes_still_needed, bytes_available);
    if (strncmp(&literal_or_sentinels_[scanned_literal_length], cbytes,
                bytes_to_compare) == 0) {
      // Yes, the whole literal is there or chars are exhausted.
      ExtendTokenLength(bytes_to_compare);
      scanned_literal_length += bytes_to_compare;
      result.IncrementBytesConsumed(bytes_to_compare);
      result.SetType(scanned_literal_length == literal_or_sentinels_.length()
                         ? DataMatchResult::kFull
                         : DataMatchResult::kPartialOutOfData);
      break;
    }
    // false alarm, the firsts char of the literal were found, but not the
    // whole enchilada. Keep searching at one past the first char of the match.
    scanned_literal_length = 0;
  }
  return result;
}

DataMatchResult DataScanner::ScanWhitespace(const char* cbytes,
                                            size_t bytes_available,
                                            const DataContext& context) {
  DataMatchResult result;
  size_t token_length = token_range_.GetLength();
  result.SetBytesConsumed(ScanWhitespaceChars(cbytes, bytes_available));
  token_length = ExtendTokenLength(result.GetBytesConsumed());
  if (result.GetBytesConsumed() == 0) {
    if (token_length == 0 && type_ == kWhitespace) {
      SetSyntaxError(context, "Expected whitespace", &result);
    } else {
      result.SetType(DataMatchResult::kFull);
    }
  } else {
    result.SetType((result.GetBytesConsumed() < bytes_available)
                       ? DataMatchResult::kFull
                       : DataMatchResult::kPartialOutOfData);
  }
  return result;
}

DataMatchResult DataScanner::Scan(const DataContext& context) {
  scan_call_count_ += 1;
  DataMatchResult result;
  if (!context.IsValidLocationAndRange()) {
    SetInternalError(context, context.GetInvalidLocationAndRangeErrorText(),
                     &result);
    return result;
  }
  if (!token_range_.IsValid()) {
    token_range_ = DataRange(context.GetLocation(), context.GetLocation());
  }
  size_t bytes_available = context.GetRange().GetEnd() - context.GetLocation();
  const char* cbytes = context.GetCharBytes();
  switch (type_) {
    case kLiteral:
      result = ScanLiteral(cbytes, bytes_available, context);
      break;
    case kName:
      result = ScanName(cbytes, bytes_available, context);
      break;
    case kQuotedString:
      result = ScanQuotedString(cbytes, bytes_available, context);
      break;
    case kSentinel:
      result = ScanSentinel(cbytes, bytes_available, context);
      break;
    case kThroughLiteral:
      result = ScanThroughLiteral(cbytes, bytes_available, context);
      break;
    case kWhitespace:
    case kOptionalWhitespace:
      result = ScanWhitespace(cbytes, bytes_available, context);
      break;
    default:
      SetInternalError(context, "Undefined scanner type", &result);
      break;
  }
  return result;
}

void DataScanner::ResetTokenRange() { token_range_ = DataRange(); }

void DataScanner::Reset() {
  data_ = 0;
  scan_call_count_ = 0;
  ResetTokenRange();
}

string DataScanner::GetDescription() const {
  if (!description_.empty()) {
    return description_;
  }
  string description;
  switch (type_) {
    case kLiteral:
      description = "Literal:'";
      description += literal_or_sentinels_;
      description += "'";
      break;
    case kName:
      description = "Name";
      break;
    case kQuotedString:
      description = "QuotedString";
      break;
    case kSentinel:
      description = "OneOf:'";
      description += literal_or_sentinels_;
      description += "'";
      break;
    case kThroughLiteral:
      description = "ThruLiteral:'";
      description += literal_or_sentinels_;
      description += "'";
      break;
    case kWhitespace:
      description = "Whitespace";
      break;
    case kOptionalWhitespace:
      description = "OptionalWhitespace";
      break;
  }
  return description;
}

string DataScanner::GetLiteral() const {
  return type_ == kLiteral || type_ == kThroughLiteral ? literal_or_sentinels_
                                                       : "";
}

string DataScanner::GetSentenels() const {
  return type_ == kSentinel ? literal_or_sentinels_ : "";
}

char DataScanner::GetSentinel() const { return type_ == kSentinel ? data_ : 0; }

}  // namespace image_io
}  // namespace photos_editing_formats
