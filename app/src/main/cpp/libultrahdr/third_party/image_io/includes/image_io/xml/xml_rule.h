#ifndef IMAGE_IO_XML_XML_RULE_H_  // NOLINT
#define IMAGE_IO_XML_XML_RULE_H_  // NOLINT

#include <memory>
#include <string>
#include <vector>

#include "image_io/base/data_match_result.h"
#include "image_io/xml/xml_handler_context.h"
#include "image_io/xml/xml_terminal.h"

namespace photos_editing_formats {
namespace image_io {

/// A rule represents a sequence of terminals to match text from a DataSource,
/// and the state needed to keep track the parsing operation in case the text
/// is split across multiple DataSegments. XmlRules collaborate with an instance
/// of XmlHandler to process the token values the terminals produce.
///
/// Terminals are added in the constructors of the rule subclasses, and are
/// not typically accessed directly from the clients of an XmlRule. Instead,
/// XmlRule clients normally just call the rule's Parse function and take action
/// based on the DataMatchResult value that is returned. The functions of the
/// XmlHandler are called internally by the rule's terminals as they parse the
/// text in the data segment.
///
/// Normally, the terminals are parsed by the Parse() function in a sequential
/// manner until they are exhausted. At which time the Parse function returns
/// with a DataMatchResult that has a type equal to kFull. If the DataSegment
/// runs out of data before the end of the final terminal, the result type will
/// be kPartialOutOfData. Of course if any of the terminals' scanners detect an
/// error the result type will be kError.
///
/// Rules may decide to delegate the parsing process to another rule. There are
/// two types of delegation:
/// 1. Rule chaining - in this case a rule decides that another rule should
///    be used instead to continue the parsing process. This situation is
///    indicated when the result type is kFull and the rule's HasNextRule()
///    function returns true. The chained-to rule is obtained by calling the
///    rule's GetNextRule() function. The current rule can be discarded.
/// 2. Child rules - in this case a "parent" rule decides that the next set of
///    syntax should be parsed by another "child" rule, and after that rule
///    completes, the parsing task should be returned to the parent rule. This
///    situaltion is indicated when the result type is kPartial and the rule's
///    HasNextRule() returns true. The child rule is obtained by calling the
///    rule's GetNextRule() function. The current parent rule should be placed
///    on a stack until the child rule is done, and then the child discarded and
///    the parent rule used for the next Parse operation.
/// The action functions associated with a terminal are typically used to create
/// the next rule and set the result type and thus initiate the delegation
/// process. When the XmlRule::Parse function detects a delegation has been
/// requested, it returns to its caller so that the caller can handle the
/// delegation in the appropriate fashion. For an example, see the XmlReader's
/// Parse() function.
///
/// In addition to delegation the action functions associated with a terminal
/// can change the order of the terminals processed from a strictly sequential
/// order to whatever the rule so desires. This is done by calling the rule's
/// SetTerminalIndex() function. Terminals can be identified by name using the
/// GetTerminalIndexFromName() function if the rule's terminals were
/// constructed with names.  If the terminal index of a rule is set to a
/// terminal that has already been used, the terminal's scanners state must be
/// reset in order for it to parse successfully again.  Sometimes the entire
/// rule is "restarted" in which case the ResetTerminalScanners() function can
/// be called to reset the scanners of all the rules terminals.
///
/// Finally, because of the look-ahead needs of the XML grammar, some rules
/// support alternate "starting points", allowing them to skip some set of
/// initial terminals when the rule's Parse() function is called. Rules that
/// support this feature will have a constructor with an StartPoint parameter.
class XmlRule {
 public:
  /// For rules that support alternate starting points, this enum provides the
  /// values at which a rule's Parse() function can begin.
  enum StartPoint {
    /// Start parsing at the first terminal position.
    kFirstStartPoint,

    /// STart parsing at a second (alternative) position.
    kSecondStartPoint,
  };

  virtual ~XmlRule() = default;
  explicit XmlRule(const std::string& name);

  /// @return The name of the rule.
  const std::string& GetName() const { return name_; }

  /// Parse the text indicated in the context's data segment and range and call
  /// the context's XmlHandler functions as needed. The implementation of this
  /// function makes use of the terminals contained by the rule, but it is
  /// declared virtual so that subclasses can customize as needed.
  /// @param context The context describing the text to parse and the handler
  /// to call.
  /// @param A result that indicates the type of match that occurred, the number
  /// of bytes consumed and an error message if needed.
  virtual DataMatchResult Parse(XmlHandlerContext context);

  /// Some rules are written such that there are optional tokens at the end,
  /// and thus may be active on the XmlReader's rule stack when the end of the
  /// text reached. This function determines whether it is permissible to finish
  /// the parsing process even though this rule is active. Unless overridden,
  /// this function returns false.
  /// @param error_text A string pointer that will be used in the error message
  /// that the caller produces if this function returns false. If left unset,
  /// and the function returns false the caller is expected to use its own text.
  /// @return Whether its ok for this rule to be active at the end of parsing.
  virtual bool IsPermissibleToFinish(std::string* error_text) const;

  /// Adds a literal terminal to the rule.
  /// @param literal The literal value to scan for.
  /// @return The terminal, enabling direct calls to WithName()/WithAction().
  XmlTerminal& AddLiteralTerminal(const std::string& literal);

  /// Adds a name terminal to the rule.
  /// @return The terminal, enabling direct calls to WithName()/WithAction().
  XmlTerminal& AddNameTerminal();

  /// Adds a quoted string terminal to the rule.
  /// @return The terminal, enabling direct calls to WithName()/WithAction().
  XmlTerminal& AddQuotedStringTerminal();

  /// Adds a sentinel terminal to the rule.
  /// @param sentinels The sentinel values to scan for.
  /// @return The terminal, enabling direct calls to WithName()/WithAction().
  XmlTerminal& AddSentinelTerminal(const std::string& sentinels);

  /// Adds a scan through literal terminal to the rule.
  /// @param literal The literal value to scan through.
  /// @return The terminal, enabling direct calls to WithName()/WithAction().
  XmlTerminal& AddThroughLiteralTerminal(const std::string& literal);

  /// Adds a whitespace terminal to the rule.
  /// @return The terminal, enabling direct calls to WithName()/WithAction().
  XmlTerminal& AddWhitespaceTerminal();

  /// Adds an optional whitespace terminal to the rule.
  /// @return The terminal, enabling direct calls to WithName()/WithAction().
  XmlTerminal& AddOptionalWhitespaceTerminal();

  /// @return The number of terminals in the rule.
  size_t GetTerminalCount() const { return terminals_.size(); }

  /// @return The index of the terminal currently parsing text.
  size_t GetTerminalIndex() const { return terminal_index_; }

  /// @param name The name of the terminal to look for.
  /// @return The index of the terminal with the given name, or the value
  /// returned by the rule's GetTerminalCount() if not found.
  size_t GetTerminalIndexFromName(const std::string name) const;

  /// @param terminal_index The index of the terminal that should next be used
  /// for parsing the input text.
  void SetTerminalIndex(size_t terminal_index);

  /// @return The terminal currently parsing text, or nullptr if there is none.
  XmlTerminal* GetCurrentTerminal();

  /// @param index The index of the terminal to get.
  /// @return The terminal at the given index, or nullptr if index is invalid.
  XmlTerminal* GetTerminal(size_t index);

  /// Resets the scanner's state of all the terminals in the rule.
  void ResetTerminalScanners();

  /// @return Whether the rule has a next rule for delegation.
  bool HasNextRule() const;

  /// @return Returns the next rule to the caller. If there is no next rule,
  /// the get function of the returned unique_ptr will return nullptr.
  std::unique_ptr<XmlRule> ReleaseNextRule();

  /// @param next_rule The new rule to use for delegation purposes.
  void SetNextRule(std::unique_ptr<XmlRule> next_rule);

 private:
  std::string name_;
  std::vector<XmlTerminal> terminals_;
  std::unique_ptr<XmlRule> next_rule_;
  size_t terminal_index_;
};

}  // namespace image_io
}  // namespace photos_editing_formats

#endif // IMAGE_IO_XML_XML_RULE_H_  // NOLINT
