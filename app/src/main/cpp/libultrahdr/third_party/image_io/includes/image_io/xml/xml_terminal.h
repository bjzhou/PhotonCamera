#ifndef IMAGE_IO_XML_XML_TERMINAL_H_  // NOLINT
#define IMAGE_IO_XML_XML_TERMINAL_H_  // NOLINT

#include <string>

#include "image_io/base/data_scanner.h"
#include "image_io/xml/xml_action.h"
#include "image_io/xml/xml_token_context.h"

namespace photos_editing_formats {
namespace image_io {

/// A terminal represents a part of a rule that uses a DataScanner to match
/// zero or more characters from a DataSource. A terminal can also have a name
/// that can be be used in error messages and also used to identify it in a
/// rule. A terminal can also have an action function associated with it that it
/// can use to validate the token produced by the terminal/scanner, and do
/// further processing with the token. Finally, the terminal's action function
/// can manipulate the DataMatchResult that was produced by the terminal's
/// scanner and accessible via the action function's XmlActionContext param.
class XmlTerminal {
 public:
  explicit XmlTerminal(const DataScanner& scanner) : scanner_(scanner) {}

  /// Sets the name of the terminal. Looks best with an XmlRule::AddTerminal
  /// function: AddWhitespaceTerminal().WithName("SomeName");
  /// @param name The name to give to the terminal.
  /// @return A reference to the terminal.
  XmlTerminal& WithName(const std::string& name) {
    name_ = name;
    return *this;
  }

  /// Sets the description of the terminal's scanner used for errors.
  /// Looks best with an XmlRule::AddTerminal function:
  /// AddWhitespaceTerminal().WithDescription("intra element whitespace")
  /// @param description The description to give to the terminal's scanner.
  /// @return A reference to the terminal.
  XmlTerminal& WithDescription(const std::string& description) {
    scanner_.SetDescription(description);
    return *this;
  }

  /// Sets the action of the terminal. Looks best with an XmlRule::AddTerminal
  /// function: AddWhitespaceTerminal().WithAction(SomeAction);
  /// @param action The action to give to the terminal.
  /// @return A reference to the terminal.
  XmlTerminal& WithAction(const XmlAction& action) {
    action_ = action;
    return *this;
  }

  /// @return The terminal's scanner.
  DataScanner* GetScanner() { return &scanner_; }

  /// @return The terminal's name.
  const std::string& GetName() const { return name_; }

  /// @return The terminal's scanner's description.
  std::string GetDescription() const { return scanner_.GetDescription(); }

  /// @return The terminal's action function.
  const XmlAction& GetAction() const { return action_; }

 private:
  DataScanner scanner_;
  XmlAction action_;
  std::string name_;
};

}  // namespace image_io
}  // namespace photos_editing_formats

#endif  // IMAGE_IO_XML_XML_TERMINAL_H_  // NOLINT
