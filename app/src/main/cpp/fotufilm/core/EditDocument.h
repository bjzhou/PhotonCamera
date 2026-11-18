// Port of Sources/FotufilmEditModel/EditDocument.swift: one photograph's edit in the catalogue's
// own terms, its Codable form (`{"exposure": 0.8, "sceneLight": "tungsten3200", …}`, keyed by field
// id) and `options(for:nativeFormatID:)`, the only place an edit becomes engine options.
//
// Lens filters are not ported: a document whose `lensFilterStack` names a filter is rejected, and
// `metering` (which only qualifies a fitted filter) is read for its type alone.
#ifndef FOTUFILM_CORE_EDIT_DOCUMENT_H
#define FOTUFILM_CORE_EDIT_DOCUMENT_H

#include <map>
#include <optional>
#include <stdexcept>
#include <string>
#include <vector>

#include "EditorControl.h"
#include "Json.h"
#include "Pipeline.h"

namespace fotufilm {

struct FilmStock;

class EditDocument {
public:
    struct Value {
        enum class Type { number, flag, choice, choices, curve };
        Type type = Type::number;
        double number = 0;
        bool flag = false;
        std::string choice;
        std::vector<std::string> choices;
        std::vector<double> curve;

        static Value makeNumber(double value) {
            Value v;
            v.type = Type::number;
            v.number = value;
            return v;
        }
        static Value makeFlag(bool on) {
            Value v;
            v.type = Type::flag;
            v.flag = on;
            return v;
        }
        static Value makeChoice(std::string id) {
            Value v;
            v.type = Type::choice;
            v.choice = std::move(id);
            return v;
        }

        /// `Value.init(from:)`: a Bool, a finite number, a string, an array of strings, or an array
        /// of numbers, tried in that order.
        static Value decode(const JsonValue& json, const std::string& path);
    };

    struct Failure : std::runtime_error {
        explicit Failure(const std::string& description) : std::runtime_error(description) {}
    };

    std::map<EditorControlField, Value> values;

    EditDocument() = default;
    explicit EditDocument(std::map<EditorControlField, Value> values_) : values(std::move(values_)) {}

    const Value* operator[](EditorControlField field) const {
        auto found = values.find(field);
        return found == values.end() ? nullptr : &found->second;
    }

    /// A viewing lamp selected on another medium stays in the edit until that medium can use it.
    const Value* effectiveValue(EditorControlField field, PrintPaper paper) const;

    /// `EditDocument.init(from:)` over a JSON object. Throws DecodingError on malformed text and
    /// Failure on an unknown field.
    static EditDocument decode(const JsonValue& json);
    static EditDocument decode(const std::string& text);

    /// Controls resolved here rather than through an engine binding.
    static bool isComposed(EditorControlField field);

    /// `nativeFormatID` is the gauge the film comes in, used when the edit does not choose one.
    FotufilmEngine::Options options(const FilmStock& stock, const std::optional<std::string>& nativeFormatID = std::nullopt) const;

    // Reading values (throw Failure on a value of the wrong type).
    std::optional<std::string> choice(EditorControlField field) const;
    std::optional<std::vector<std::string>> choices(EditorControlField field) const;
    std::optional<double> number(EditorControlField field) const;
    std::optional<bool> flag(EditorControlField field) const;

private:
    Failure invalid(EditorControlField field) const;
    std::optional<float> sourceLight() const;
    static EditorControlValue engineValue(const Value& input, const EditorControl& control, const FilmStock& stock,
                                          PrintPaper paper);
};

}  // namespace fotufilm

#endif  // FOTUFILM_CORE_EDIT_DOCUMENT_H
