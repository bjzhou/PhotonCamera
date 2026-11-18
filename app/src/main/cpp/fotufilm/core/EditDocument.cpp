// Port of Sources/FotufilmEditModel/EditDocument.swift.
#include "EditDocument.h"

#include <algorithm>
#include <cmath>
#include <cstring>
#include <unordered_map>

#include "EditorControlCatalogue.h"
#include "FilmFormat.h"
#include "FilmStock.h"
#include "PrintPaper.h"
#include "WebProfileCatalogue.h"

namespace fotufilm {

EditDocument::Value EditDocument::Value::decode(const JsonValue& json, const std::string& path) {
    switch (json.type) {
        case JsonValue::Type::Bool: return makeFlag(json.boolean);
        case JsonValue::Type::Number: {
            const double number = json::asDouble(json, path);
            if (std::isfinite(number)) return makeNumber(number);
            break;
        }
        case JsonValue::Type::String: return makeChoice(json.string);
        case JsonValue::Type::Array: {
            const bool strings = std::all_of(json.array.begin(), json.array.end(),
                                             [](const JsonValue& item) { return item.isString(); });
            if (strings) {
                Value v;
                v.type = Type::choices;
                for (const JsonValue& item : json.array) v.choices.push_back(item.string);
                return v;
            }
            Value v;
            v.type = Type::curve;
            v.curve = json::asDoubleArray(json, path);
            return v;
        }
        default: break;
    }
    throw DecodingError(path + ": expected a flag, number, choice, choices or curve");
}

EditDocument EditDocument::decode(const JsonValue& json) {
    const JsonValue& object = json::object(json, "");
    EditDocument document;
    for (const auto& member : object.object) {
        std::optional<EditorControlField> field = editorControlFieldFromRawValue(member.first);
        if (!field) throw Failure("Unsupported control: " + member.first);
        // A duplicated key keeps the last value, as the decoded dictionary does.
        document.values[*field] = Value::decode(member.second, member.first);
    }
    return document;
}

EditDocument EditDocument::decode(const std::string& text) { return decode(parseJson(text)); }

const EditDocument::Value* EditDocument::effectiveValue(EditorControlField field, PrintPaper paper) const {
    const Value* value = (*this)[field];
    if (field != EditorControlField::printLight || !value || value->type != Value::Type::choice) return value;

    const auto offersLight = [&](PrintPaper medium) {
        const auto& lights = EditorControlCatalogue::viewingLights(medium);
        return std::any_of(lights.begin(), lights.end(), [&](const EditorMenuChoice& light) {
            return light.id == value->choice;
        });
    };
    if (offersLight(paper)) return value;
    // Only a known lamp can be dormant. Leave malformed choices for engineValue to diagnose.
    const auto& media = allPrintPapers();
    return std::any_of(media.begin(), media.end(), offersLight) ? nullptr : value;
}

bool EditDocument::isComposed(EditorControlField field) {
    switch (field) {
        case EditorControlField::gauge:
        case EditorControlField::paper:
        case EditorControlField::sceneLight:
        case EditorControlField::sceneLightKelvin:
        case EditorControlField::lensFilterStack:
        case EditorControlField::metering:
        case EditorControlField::printerEnabled:
        case EditorControlField::printerLamp:
        case EditorControlField::printerExposure:
        case EditorControlField::printerMagenta:
        case EditorControlField::printerYellow:
        case EditorControlField::couplerRedGreen:
        case EditorControlField::couplerGreenBlue: return true;
        default: return false;
    }
}

FotufilmEngine::Options EditDocument::options(const FilmStock& stock,
                                              const std::optional<std::string>& nativeFormatID) const {
    FotufilmEngine::Options options;

    std::optional<std::string> chosenFormat = choice(EditorControlField::gauge);
    const std::string formatID =
        chosenFormat ? *chosenFormat : (nativeFormatID ? *nativeFormatID : std::string(FilmFormat::houseDefaultID));
    std::optional<FilmFormat> format = FilmFormat::preset(formatID);
    if (!format) throw Failure("Unknown film format: " + formatID);
    options.format = *format;
    if (std::optional<std::string> medium = choice(EditorControlField::paper)) {
        std::optional<PrintPaper> paper = printPaperPreset(*medium);
        if (!paper) throw Failure("Unknown output medium: " + *medium);
        options.paper = *paper;
    }
    const PrintPaper paper = resolved(options.paper ? *options.paper : defaultPrintPaper(stock), stock);

    options.sceneIlluminantKelvin = sourceLight();

    // Lens filters are not ported: only the empty stack, which fits nothing, is accepted.
    std::optional<std::vector<std::string>> fitted = choices(EditorControlField::lensFilterStack);
    if (fitted && !fitted->empty()) throw Failure("Unknown lens filter.");
    (void)choice(EditorControlField::metering);

    std::unordered_map<int, EditorControl> stockControls;
    for (EditorControl& control : EditorControlCatalogue::controls(&stock)) {
        stockControls.emplace(static_cast<int>(control.field), std::move(control));
    }
    std::vector<std::pair<std::string, EditorControlField>> sorted;
    for (const auto& entry : values) sorted.emplace_back(rawValue(entry.first), entry.first);
    std::sort(sorted.begin(), sorted.end(),
              [](const auto& a, const auto& b) { return a.first < b.first; });
    for (const auto& entry : sorted) {
        const EditorControlField field = entry.second;
        if (isComposed(field)) continue;
        const Value* input = effectiveValue(field, paper);
        if (!input) continue;
        auto found = stockControls.find(static_cast<int>(field));
        const EditorControl* control =
            found != stockControls.end() ? &found->second : EditorControlCatalogue::control(field);
        if (!control || !control->binding) throw Failure(std::string("Unsupported control: ") + rawValue(field));
        const EditorControlValue value = engineValue(*input, *control, stock, paper);
        if (field == EditorControlField::push) {
            std::optional<double> stops = value.number();
            if (stops && !stock.supportsDevelopment(static_cast<float>(*stops))) {
                throw Failure("This film has no development condition at the selected stop value.");
            }
        }
        control->binding->apply(value, options);
    }

    // Each interlayer's reach on its own; a pair left unset follows Separation.
    const std::optional<double> redGreen = number(EditorControlField::couplerRedGreen);
    const std::optional<double> greenBlue = number(EditorControlField::couplerGreenBlue);
    if (redGreen || greenBlue) {
        const std::vector<float> linked = options.couplerGapReachScales ? *options.couplerGapReachScales
                                                                        : std::vector<float>{1, 1};
        options.couplerGapReachScales =
            std::vector<float>{redGreen ? static_cast<float>(*redGreen) : linked[0],
                               greenBlue ? static_cast<float>(*greenBlue) : linked[1]};
    }

    PrinterProfile printer = PrinterProfile::simulatedTungsten();
    if (auto lamp = number(EditorControlField::printerLamp)) printer.lampKelvin = static_cast<float>(*lamp);
    if (auto stops = number(EditorControlField::printerExposure)) printer.exposureEV = static_cast<float>(*stops);
    if (auto magenta = number(EditorControlField::printerMagenta)) printer.magenta = static_cast<float>(*magenta);
    if (auto yellow = number(EditorControlField::printerYellow)) printer.yellow = static_cast<float>(*yellow);
    const std::optional<bool> printerEnabled = flag(EditorControlField::printerEnabled);
    if (printerEnabled && *printerEnabled) {
        options.printer = printer.normalized();
    } else {
        options.printer = std::nullopt;
    }
    if (!isNegative(paper)) options.negativeViewing = std::nullopt;
    return options;
}

std::optional<std::string> EditDocument::choice(EditorControlField field) const {
    const Value* value = (*this)[field];
    if (!value) return std::nullopt;
    if (value->type == Value::Type::choice) return value->choice;
    throw invalid(field);
}

std::optional<std::vector<std::string>> EditDocument::choices(EditorControlField field) const {
    const Value* value = (*this)[field];
    if (!value) return std::nullopt;
    if (value->type == Value::Type::choices) return value->choices;
    throw invalid(field);
}

std::optional<double> EditDocument::number(EditorControlField field) const {
    const Value* value = (*this)[field];
    if (!value) return std::nullopt;
    if (value->type == Value::Type::number && std::isfinite(value->number)) {
        const EditorControl* control = EditorControlCatalogue::control(field);
        if (control && control->kind.type == EditorControlKind::Type::slider &&
            !control->kind.scaleValue.admits(value->number)) {
            throw Failure(control->title + " is outside its supported range.");
        }
        return value->number;
    }
    throw invalid(field);
}

std::optional<bool> EditDocument::flag(EditorControlField field) const {
    const Value* value = (*this)[field];
    if (!value) return std::nullopt;
    if (value->type == Value::Type::flag) return value->flag;
    throw invalid(field);
}

EditDocument::Failure EditDocument::invalid(EditorControlField field) const {
    const EditorControl* control = EditorControlCatalogue::control(field);
    return Failure("Invalid value for " + (control ? control->title : std::string(rawValue(field))) + ".");
}

std::optional<float> EditDocument::sourceLight() const {
    const auto& lights = EditorControlCatalogue::sourceLights();
    std::optional<std::string> chosen = choice(EditorControlField::sceneLight);
    const std::string id = chosen ? *chosen : lights[0].id;
    auto selection = std::find_if(lights.begin(), lights.end(), [&](const EditorMenuChoice& c) { return c.id == id; });
    if (selection == lights.end()) throw Failure("Unknown source illuminant: " + id);
    std::optional<double> customValue = number(EditorControlField::sceneLightKelvin);
    const double custom = customValue ? *customValue : 6504;
    std::optional<float> kelvin =
        EditorControlCatalogue::sourceLightKelvin(static_cast<int>(selection - lights.begin()), custom);
    if (kelvin && *kelvin > 0) return kelvin;
    return std::nullopt;
}

EditorControlValue EditDocument::engineValue(const Value& input, const EditorControl& control, const FilmStock& stock,
                                             PrintPaper paper) {
    const EditorControlKind::Type kind = control.kind.type;
    if ((kind == EditorControlKind::Type::slider || kind == EditorControlKind::Type::chips) &&
        input.type == Value::Type::number) {
        if (!std::isfinite(input.number) || !control.kind.scaleValue.admits(input.number)) {
            throw Failure(control.title + " is outside its supported range.");
        }
        return EditorControlValue::makeNumber(input.number);
    }
    if (kind == EditorControlKind::Type::toggle && input.type == Value::Type::flag) {
        return EditorControlValue::makeFlag(input.flag);
    }
    if (kind == EditorControlKind::Type::menu && input.type == Value::Type::choice) {
        std::optional<std::vector<EditorMenuChoice>> menu = WebProfileCatalogue::choices(control.field, &stock, paper);
        std::optional<size_t> index;
        if (menu) {
            for (size_t i = 0; i < menu->size(); ++i) {
                if ((*menu)[i].id == input.choice) {
                    index = i;
                    break;
                }
            }
        }
        if (!index) throw Failure("Unknown " + control.title + " choice: " + input.choice);
        switch (control.binding ? control.binding->kind : EngineBinding::Kind::exposureEV) {
            case EngineBinding::Kind::grainMottleShare:
            case EngineBinding::Kind::shutterSeconds:
            case EngineBinding::Kind::printViewingKelvin:
                if (control.binding) return EditorControlValue::makeOptionalNumber((*menu)[*index].value);
                break;
            default: break;
        }
        return EditorControlValue::makeChoice(static_cast<int>(*index));
    }
    if (kind == EditorControlKind::Type::curve && input.type == Value::Type::curve) {
        const EditorControlCurve& curve = control.kind.curveValue;
        bool valid = input.curve.size() == curve.handles.size();
        for (double value : input.curve) {
            valid = valid && std::isfinite(value) && value >= curve.rangeLower && value <= curve.rangeUpper;
        }
        if (!valid) throw Failure("Invalid " + control.title + " control points.");
        return EditorControlValue::makeCurve(input.curve);
    }
    throw Failure("Invalid value for " + control.title + ".");
}

}  // namespace fotufilm
