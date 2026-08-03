#ifndef IMAGE_IO_BASE_DATA_SCANNER_H_  // NOLINT
#define IMAGE_IO_BASE_DATA_SCANNER_H_  // NOLINT

#include <string>

#include "image_io/base/data_context.h"
#include "image_io/base/data_match_result.h"
#include "image_io/base/data_range.h"
#include "image_io/base/data_segment.h"

namespace photos_editing_formats {
namespace image_io {

/// Provides a means to scan a textual portion of a data segment for a sequence
/// of characters and return the data associated with the resulting match. The
/// scanners also maintain state information for repeated calling in case the
/// text data is split over multipe data segments. The scanners also maintain
/// a data range where the result of the scanner's match can be found. These
/// scanners are written to allow copy semantics to make memory management
/// easier. Several types of scanners are provided.
class DataScanner {
 public:
  /// The type of scanner.
  enum Type {
    /// A scanner to look for text that matches exactly one or more characters.
    /// The text to look for is given to the CreateLiteralScanner() function.
    kLiteral,

    /// A scanner to look for text that matches a name. A name must begin with
    /// one of the characters in "[A-Z][a-z]:_". Subsequent characters can
    /// include "[0-9]-.".
    kName,

    /// A scanner to look for a quoted string. A quoted string is delimited by
    /// a single (') or double (") quote, and include any character except the
    /// quote mark.
    kQuotedString,

    /// A scanner to look for one character from a set of characters. The set of
    /// characters are given to the CreateSentinelScanner() function.
    kSentinel,

    /// A scanner to accept all text up to and including a literal text value.
    /// The text to look for is given to the CreateThroughLiteralScanner()
    /// function.
    kThroughLiteral,

    /// A scanner to skip white space characters. At least one whitespace
    /// character must be scanned. The set of white space characters is given
    /// by the GetWhitespaceChars() function.
    kWhitespace,

    /// A scanner to skip white space characters, but unlike the kWhitespace
    /// scanner, this scanner will not return an error result if there are no
    /// whitespace characters scanned.
    kOptionalWhitespace,
  };

  /// @return The set of whitespace characters: " \t\n\r".
  static std::string GetWhitespaceChars();

  /// @return The characters used for base64 encoding and optionally the pad
  /// char at the end of the string.
  /// @param include_pad_char Whether to include the base64 pad char at the end
  /// of the string.
  static std::string GetBase64Chars(bool include_pad_char);

  /// @return The character used to pad base64 encoded strings.
  static std::string GetBase64PadChar();

  /// @param literal The literal to use for the scanner.
  /// @return A kLiteral type scanner.
  static DataScanner CreateLiteralScanner(const std::string& literal);

  /// @return A kName type scanner.
  static DataScanner CreateNameScanner();

  /// @return A kQuoteString type scanner.
  static DataScanner CreateQuotedStringScanner();

  /// @param sentinels The set of sentinels to scan for. The "~" character is
  /// used as an "abbreviation" for any of the characters that can make up the
  /// first character of a kName type sentinel.
  /// @return a kSentinel type scanner.
  static DataScanner CreateSentinelScanner(const std::string& sentinels);

  /// @param literal The literal to use for the scanner.
  /// @return A kThroughLiteral type scanner.
  static DataScanner CreateThroughLiteralScanner(const std::string& literal);

  /// @return A kWhitespace type scanner;
  static DataScanner CreateWhitespaceScanner();

  /// @return A kOptionalWhitespace type scanner;
  static DataScanner CreateOptionalWhitespaceScanner();

  /// A function like strspn that accepts the length of string to scan. If the
  /// return value, ret,  is not slen, then s[ret] is not in scanset.
  /// @param s The string to scan
  /// @param slen The length of the string to scan
  /// @param scanset The set of characters to scan/skip over.
  /// @return The number of scanned characters in s that were in accept.
  static size_t ScanChars(const char* s, size_t slen, const char* scanset);

  /// @return The type of the scanner.
  Type GetType() const { return type_; }

  /// @return A description of the scanner, or one that is based on the type.
  std::string GetDescription() const;

  /// @param The description to use for the scanner instead of an internal one
  /// that is based on the type of scanner.
  void SetDescription(const std::string& description) {
    description_ = description;
  }

  /// @return The literal value of a kLiteral or kThroughLiteral type scanner,
  /// or an empty string otherwise.
  std::string GetLiteral() const;

  /// @return The set of sentinels for a kSentinal type scanner, or an empty
  /// string otherwise.
  std::string GetSentenels() const;

  /// @return The sentinel character from the set of characters passed to the
  /// CreateSentinelScanner() function that was matched by a successful scan
  /// operation, or 0 otherwise.
  char GetSentinel() const;

  /// @return The range of characters that the scanner found during one or more
  /// successful Scan() function operations.
  const DataRange& GetTokenRange() const { return token_range_; }

  /// @return The number of tiomes the Scan() function has been called.
  size_t GetScanCallCount() const { return scan_call_count_; }

  /// @param context The data context to use for the scan operation.
  /// @return The match result of the scan operation.
  DataMatchResult Scan(const DataContext& context);

  /// Reset the scanner's token range to an invalid value.
  void ResetTokenRange();

  /// Reset the scanner state to the value it had when it was first constructed.
  void Reset();

  /// @param delta_length The byte count to use to extend the token range end.
  /// @return The new length of the token range.
  size_t ExtendTokenLength(size_t delta_length);

 private:
  explicit DataScanner(Type type) : DataScanner(type, "") {}
  DataScanner(Type type, const std::string& literal_or_sentinels)
      : literal_or_sentinels_(literal_or_sentinels),
        data_(0),
        scan_call_count_(0),
        type_(type) {}

  /// The worker functions for scanning each type of literal.
  /// @param cbytes The pointer value to the buffer at the context's location.
  /// @param bytes_available The number of bytes available for the scan.
  /// @param context The data context for message generation purposes.
  DataMatchResult ScanLiteral(const char* cbytes, size_t bytes_available,
                              const DataContext& context);
  DataMatchResult ScanName(const char* cbytes, size_t bytes_available,
                           const DataContext& context);
  DataMatchResult ScanQuotedString(const char* cbytes, size_t bytes_available,
                                   const DataContext& context);
  DataMatchResult ScanSentinel(const char* cbytes, size_t bytes_available,
                               const DataContext& context);
  DataMatchResult ScanThroughLiteral(const char* cbytes, size_t bytes_available,
                                     const DataContext& context);
  DataMatchResult ScanWhitespace(const char* cbytes, size_t bytes_available,
                                 const DataContext& context);

  /// Sets the match result to kError and generates an internal error message.
  /// @param context The data context for message generation purposes.
  /// @param error_description A description of the type of internal error.
  /// @param result The result to receive the kError type and message.
  void SetInternalError(const DataContext& context,
                        const std::string& error_description,
                        DataMatchResult* result);

  /// Sets the match result to kError and generates an syntax error message.
  /// @param context The data context for message generation purposes.
  /// @param error_description A description of the type of syntax error.
  /// @param result The result to receive the kError type and message.
  void SetSyntaxError(const DataContext& context,
                      const std::string& error_description,
                      DataMatchResult* result);

  /// The string used for kLiteral, kThroughLiteral and kSentinel type scanners.
  std::string literal_or_sentinels_;

  /// The custom description of the scanner.
  std::string description_;

  /// The token range built by one or calls to the Scan() function.
  DataRange token_range_;

  /// State data used in different ways by different scanner types.
  size_t data_;

  /// The number of times the scanner's Scan function has been called.
  size_t scan_call_count_;

  /// The type of scanner.
  Type type_;
};

}  // namespace image_io
}  // namespace photos_editing_formats

#endif // IMAGE_IO_BASE_DATA_SCANNER_H_  // NOLINT
