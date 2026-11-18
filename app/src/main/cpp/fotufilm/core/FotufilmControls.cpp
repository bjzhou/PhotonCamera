// Not an upstream file; see FotufilmControls.h.
//
// Catalogue JSON:
// {
//   "stock": id, "format": resolved gauge id, "paper": resolved medium id,
//   "digitalReference": the style the medium gates read,
//   "documentError": null, or why `optionsFromDocument` would reject the document,
//   "controls": [{
//     "field", "title", "detail", "section", "sectionTitle", "group", "kind" (slider | chips | toggle | menu),
//     "availability", "foldsUnder"?, "persistence" (key | bespoke | none), "storedKey"?, "storedEncoding"?,
//     "scale"?: {"min", "max", "neutral", "unit", "stops": [..], "admittedMin", "admittedMax"},
//     "chips"?: [{"value", "label"}],
//     "restingOn"?: bool,
//     "menu"?: "fixed" | dynamic menu name, "choices"?: [{"id", "label", "detail", "value" (number | null)}],
//     "defaultChoice"?: id,
//     "value": the document's value, else the resting value or default choice,
//     "isSet": whether the document sets the field for this medium, "moved"?: slider/chips off neutral,
//     "admitted": the stock admits it, "offered": the current medium offers it,
//     "available": both
//   }]
// }
#include "FotufilmControls.h"

#include <charconv>
#include <algorithm>
#include <cstdio>
#include <vector>
#include <cmath>
#include <stdexcept>

#include "EditDocument.h"
#include "EditorControlCatalogue.h"
#include "FilmFormat.h"
#include "FilmStock.h"
#include "FilmStockPack.h"
#include "PrintPaper.h"
#include "WebProfileCatalogue.h"

namespace fotufilm {

namespace {

class JsonWriter {
public:
    std::string out;

    void raw(const char* text) { out += text; }
    void string(const std::string& text) {
        out.push_back('"');
        for (unsigned char c : text) {
            switch (c) {
                case '"': out += "\\\""; break;
                case '\\': out += "\\\\"; break;
                case '\n': out += "\\n"; break;
                case '\r': out += "\\r"; break;
                case '\t': out += "\\t"; break;
                default:
                    if (c < 0x20) {
                        char buffer[8];
                        std::snprintf(buffer, sizeof buffer, "\\u%04x", c);
                        out += buffer;
                    } else {
                        out.push_back(static_cast<char>(c));
                    }
            }
        }
        out.push_back('"');
    }
    void number(double value) {
        if (!std::isfinite(value)) {
            out += "null";
            return;
        }
        char buffer[40];
        auto result = std::to_chars(buffer, buffer + sizeof buffer, value);
        out.append(buffer, result.ptr);
    }
    void boolean(bool value) { out += value ? "true" : "false"; }
    void null() { out += "null"; }

    // Object/array punctuation with comma tracking.
    void beginObject() {
        separate();
        out.push_back('{');
        first_.push_back(true);
    }
    void endObject() {
        out.push_back('}');
        first_.pop_back();
    }
    void beginArray() {
        separate();
        out.push_back('[');
        first_.push_back(true);
    }
    void endArray() {
        out.push_back(']');
        first_.pop_back();
    }
    void key(const char* name) {
        separate();
        string(name);
        out.push_back(':');
        pendingValue_ = true;
    }
    // Scalars inside arrays or after a key.
    void valueString(const std::string& text) {
        separate();
        string(text);
    }
    void valueNumber(double value) {
        separate();
        number(value);
    }
    void valueBool(bool value) {
        separate();
        boolean(value);
    }
    void valueNull() {
        separate();
        null();
    }
    void field(const char* name, const std::string& text) {
        key(name);
        valueString(text);
    }
    void field(const char* name, const char* text) {
        key(name);
        valueString(text);
    }
    void field(const char* name, double value) {
        key(name);
        valueNumber(value);
    }
    void field(const char* name, bool value) {
        key(name);
        valueBool(value);
    }

private:
    std::vector<bool> first_;
    bool pendingValue_ = false;

    void separate() {
        if (pendingValue_) {
            pendingValue_ = false;
            return;
        }
        if (!first_.empty()) {
            if (!first_.back()) out.push_back(',');
            first_.back() = false;
        }
    }
};

FilmStock registeredStock(const std::string& stockID) {
    std::optional<FilmStock> stock = FilmStockRegistry::shared().named(stockID);
    if (!stock) throw std::runtime_error("unknown film stock: " + stockID);
    return *stock;
}

/// Reconcile persisted edits against the current catalogue before either UI or rendering reads them.
void reconcileDocument(EditDocument& document, const FilmStock& stock) {
    using Field = EditorControlField;
    using Type = EditDocument::Value::Type;
    auto paperField = document.values.find(Field::paper);
    if (paperField != document.values.end() && paperField->second.type == Type::choice &&
        !printPaperPreset(paperField->second.choice)) {
        document.values.erase(paperField);
    }
    const auto selectedPaper = document.choice(Field::paper);
    const PrintPaper paper = resolved(selectedPaper ? *printPaperPreset(*selectedPaper) : defaultPrintPaper(stock), stock);
    for (auto entry = document.values.begin(); entry != document.values.end();) {
        const Field field = entry->first;
        auto& value = entry->second;
        const EditorControl* control = EditorControlCatalogue::control(field);
        bool supported = true;
        if (field == Field::gauge && value.type == Type::choice) {
            supported = FilmFormat::preset(value.choice).has_value();
        } else if (field == Field::lensFilterStack && value.type == Type::choices) {
            supported = value.choices.empty();
        } else if (field == Field::metering) {
            // Metering only qualifies lens filters, which this port does not implement.
        } else if (!control || (!control->binding && !EditDocument::isComposed(field))) {
            supported = false;
        } else if (field == Field::push && value.type == Type::number) {
            const auto stop = stock.matchingDevelopmentStop(static_cast<float>(value.number));
            supported = stop.has_value();
            if (stop) value.number = *stop;
        } else if (const auto* scale = control->kind.scale(); scale && value.type == Type::number) {
            value.number = std::clamp(value.number, scale->admittedLower, scale->admittedUpper);
        } else if (control->kind.type == EditorControlKind::Type::menu && value.type == Type::choice &&
                   field != Field::paper && field != Field::gauge) {
            const auto menu = field == Field::sceneLight
                                  ? std::optional<std::vector<EditorMenuChoice>>(EditorControlCatalogue::sourceLights())
                                  : WebProfileCatalogue::choices(field, &stock, paper);
            supported = menu && std::any_of(menu->begin(), menu->end(), [&](const EditorMenuChoice& item) {
                return item.id == value.choice;
            });
        } else if (control->kind.type == EditorControlKind::Type::curve && value.type == Type::curve) {
            const auto& curve = control->kind.curveValue;
            supported = value.curve.size() == curve.handles.size();
            for (double& point : value.curve) {
                point = std::clamp(point, curve.rangeLower, curve.rangeUpper);
            }
        }
        if (supported) ++entry;
        else entry = document.values.erase(entry);
    }
}

/// Decodes the document and takes out its `stock`, which must name `stockID`.
EditDocument documentFor(const std::string& stockID, const FilmStock& stock, const std::string& documentJSON) {
    EditDocument document =
        documentJSON.empty() ? EditDocument() : EditDocument::decode(documentJSON);
    auto stockField = document.values.find(EditorControlField::stock);
    if (stockField != document.values.end()) {
        if (stockField->second.type != EditDocument::Value::Type::choice || stockField->second.choice != stockID) {
            throw EditDocument::Failure("The document's film is not " + stockID + ".");
        }
        document.values.erase(stockField);
    }
    reconcileDocument(document, stock);
    return document;
}

void writeValue(JsonWriter& writer, const EditDocument::Value& value) {
    switch (value.type) {
        case EditDocument::Value::Type::number: writer.valueNumber(value.number); break;
        case EditDocument::Value::Type::flag: writer.valueBool(value.flag); break;
        case EditDocument::Value::Type::choice: writer.valueString(value.choice); break;
        case EditDocument::Value::Type::choices:
            writer.beginArray();
            for (const auto& id : value.choices) writer.valueString(id);
            writer.endArray();
            break;
        case EditDocument::Value::Type::curve:
            writer.beginArray();
            for (double point : value.curve) writer.valueNumber(point);
            writer.endArray();
            break;
    }
}

void writeChoices(JsonWriter& writer, const std::vector<EditorMenuChoice>& choices) {
    writer.key("choices");
    writer.beginArray();
    for (const EditorMenuChoice& choice : choices) {
        writer.beginObject();
        writer.field("id", choice.id);
        writer.field("label", choice.label);
        writer.field("detail", choice.detail);
        writer.key("value");
        if (choice.value) {
            writer.valueNumber(*choice.value);
        } else {
            writer.valueNull();
        }
        writer.endObject();
    }
    writer.endArray();
}

/// A dynamic menu's choices for this stock and medium.
std::vector<EditorMenuChoice> dynamicChoices(EditorDynamicMenu menu, const FilmStock& stock, PrintPaper paper) {
    std::vector<EditorMenuChoice> out;
    switch (menu) {
        case EditorDynamicMenu::stocks:
            for (const std::string& id : FilmStockRegistry::shared().presetIDs()) {
                std::optional<FilmStockDefinition> definition = FilmStockRegistry::shared().definition(id);
                if (!definition) continue;
                out.emplace_back(std::nullopt, definition->name, definition->subtitle.value_or(""), id);
            }
            break;
        case EditorDynamicMenu::gauges:
            for (const auto& preset : FilmFormat::presets()) {
                out.emplace_back(std::nullopt, preset.second.name, "", preset.first);
            }
            break;
        case EditorDynamicMenu::papers:
            for (PrintPaper medium : choices(stock)) out.emplace_back(std::nullopt, name(medium), detail(medium), id(medium));
            break;
        case EditorDynamicMenu::viewingLights: return EditorControlCatalogue::viewingLights(paper);
        case EditorDynamicMenu::shutterTimes:
            return WebProfileCatalogue::choices(EditorControlField::shutter, &stock, paper).value_or(out);
        default:
            // The Android surface offers no other dynamic menu.
            break;
    }
    return out;
}

}  // namespace

std::string fotufilmCatalogueJSON(const std::string& stockID, const std::string& documentJSON) {
    const FilmStock stock = registeredStock(stockID);
    const EditDocument document = documentFor(stockID, stock, documentJSON);

    // The medium the gates read: the document's choice resolved for this film, as options(for:) does.
    std::optional<std::string> paperChoice = document.choice(EditorControlField::paper);
    std::optional<PrintPaper> chosenPaper = paperChoice ? printPaperPreset(*paperChoice) : std::nullopt;
    if (paperChoice && !chosenPaper) throw EditDocument::Failure("Unknown output medium: " + *paperChoice);
    const PrintPaper paper = resolved(chosenPaper ? *chosenPaper : defaultPrintPaper(stock), stock);
    const std::string nativeFormat = FilmFormat::nativeID(stockID);
    std::optional<std::string> gaugeChoice = document.choice(EditorControlField::gauge);
    const std::string format = gaugeChoice ? *gaugeChoice : nativeFormat;

    DigitalReferenceStyle digitalReference = kDefaultDigitalReferenceStyle;
    if (std::optional<std::string> style = document.choice(EditorControlField::digitalReference)) {
        std::optional<DigitalReferenceStyle> named = digitalReferenceStyleFromRawValue(*style);
        if (named) digitalReference = *named;
    }

    std::string documentError;
    try {
        (void)document.options(stock, nativeFormat);
    } catch (const std::exception& error) {
        documentError = error.what();
    }

    // The stock's own push scale where the stock admits the control.
    std::vector<EditorControl> admitted = EditorControlCatalogue::controls(&stock, EditorSurface::android);

    JsonWriter writer;
    writer.beginObject();
    writer.field("stock", stockID);
    writer.field("format", format);
    writer.field("paper", id(paper));
    writer.field("digitalReference", rawValue(digitalReference));
    writer.key("documentError");
    if (documentError.empty()) {
        writer.valueNull();
    } else {
        writer.valueString(documentError);
    }
    writer.key("controls");
    writer.beginArray();
    for (const EditorControl& base : EditorControlCatalogue::all()) {
        if (!base.offered(EditorSurface::android)) continue;
        const EditorControl* adjusted = nullptr;
        for (const EditorControl& candidate : admitted) {
            if (candidate.field == base.field) adjusted = &candidate;
        }
        const EditorControl& control = adjusted ? *adjusted : base;
        const bool isAdmitted = adjusted != nullptr;
        const bool isOffered = EditorControlCatalogue::medium(paper, control.field, &stock, digitalReference);
        const EditDocument::Value* value = document.effectiveValue(control.field, paper);

        writer.beginObject();
        writer.field("field", rawValue(control.field));
        writer.field("title", control.title);
        writer.field("detail", control.detail);
        writer.field("section", rawValue(control.section));
        writer.field("sectionTitle", title(control.section));
        writer.field("group", rawValue(control.group()));
        writer.field("kind", control.kind.typeName());
        writer.field("availability", rawValue(control.availability));
        if (control.foldsUnder) writer.field("foldsUnder", rawValue(*control.foldsUnder));
        switch (control.persistence.type) {
            case EditorControlPersistence::Type::key:
                writer.field("persistence", "key");
                writer.field("storedKey", control.persistence.key);
                writer.field("storedEncoding", rawValue(control.persistence.encoding));
                break;
            case EditorControlPersistence::Type::bespoke: writer.field("persistence", "bespoke"); break;
            case EditorControlPersistence::Type::none: writer.field("persistence", "none"); break;
        }

        if (const EditorControlScale* scale = control.kind.scale()) {
            writer.key("scale");
            writer.beginObject();
            writer.field("min", scale->rangeLower);
            writer.field("max", scale->rangeUpper);
            writer.field("neutral", scale->neutral);
            writer.field("unit", rawValue(scale->unit));
            writer.key("stops");
            writer.beginArray();
            for (double stop : scale->stops) writer.valueNumber(stop);
            writer.endArray();
            writer.field("admittedMin", scale->admittedLower);
            writer.field("admittedMax", scale->admittedUpper);
            writer.endObject();
            if (control.kind.type == EditorControlKind::Type::chips) {
                writer.key("chips");
                writer.beginArray();
                for (const EditorControlChoice& chip : control.kind.chips) {
                    writer.beginObject();
                    writer.field("value", chip.value);
                    writer.field("label", chip.label);
                    writer.endObject();
                }
                writer.endArray();
            }
            writer.key("value");
            if (value) {
                writeValue(writer, *value);
            } else {
                writer.valueNumber(scale->neutral);
            }
            if (value && value->type == EditDocument::Value::Type::number) {
                writer.field("moved", scale->isMoved(value->number));
            } else {
                writer.field("moved", false);
            }
        } else if (control.kind.type == EditorControlKind::Type::toggle) {
            writer.field("restingOn", control.kind.restingOn);
            writer.key("value");
            if (value) {
                writeValue(writer, *value);
            } else {
                writer.valueBool(control.kind.restingOn);
            }
        } else if (const EditorMenuChoices* menu = control.kind.menuOrNull()) {
            std::vector<EditorMenuChoice> choices;
            std::string defaultChoice;
            if (std::optional<EditorDynamicMenu> dynamic = menu->dynamicMenu()) {
                writer.field("menu", rawValue(*dynamic));
                choices = dynamicChoices(*dynamic, stock, paper);
                switch (*dynamic) {
                    case EditorDynamicMenu::stocks: defaultChoice = stockID; break;
                    case EditorDynamicMenu::gauges: defaultChoice = nativeFormat; break;
                    case EditorDynamicMenu::papers: defaultChoice = id(defaultPrintPaper(stock)); break;
                    default: defaultChoice = choices.empty() ? std::string() : choices.front().id; break;
                }
            } else {
                writer.field("menu", "fixed");
                choices = *menu->fixedChoices();
                defaultChoice = control.field == EditorControlField::digitalReference
                                    ? std::string(rawValue(kDefaultDigitalReferenceStyle))
                                    : (choices.empty() ? std::string() : choices.front().id);
            }
            writeChoices(writer, choices);
            writer.field("defaultChoice", defaultChoice);
            writer.key("value");
            if (control.field == EditorControlField::stock) {
                writer.valueString(stockID);
            } else if (value) {
                writeValue(writer, *value);
            } else {
                writer.valueString(defaultChoice);
            }
        } else {
            writer.key("value");
            if (value) {
                writeValue(writer, *value);
            } else {
                writer.valueNull();
            }
        }
        writer.field("isSet", value != nullptr || control.field == EditorControlField::stock);
        writer.field("admitted", isAdmitted);
        writer.field("offered", isOffered);
        writer.field("available", isAdmitted && isOffered);
        writer.endObject();
    }
    writer.endArray();
    writer.endObject();
    return writer.out;
}

FotufilmEngine::Options optionsFromDocument(const std::string& stockID, const std::string& documentJSON) {
    const FilmStock stock = registeredStock(stockID);
    const EditDocument document = documentFor(stockID, stock, documentJSON);
    return document.options(stock, FilmFormat::nativeID(stockID));
}

std::string fotufilmStocksJSON() {
    JsonWriter writer;
    writer.beginArray();
    for (const std::string& stockID : FilmStockRegistry::shared().presetIDs()) {
        std::optional<FilmStockDefinition> definition = FilmStockRegistry::shared().definition(stockID);
        std::optional<FilmStock> stock = FilmStockRegistry::shared().named(stockID);
        if (!definition || !stock) continue;
        writer.beginObject();
        writer.field("id", stockID);
        writer.field("name", definition->name);
        writer.key("subtitle");
        if (definition->subtitle) {
            writer.valueString(*definition->subtitle);
        } else {
            writer.valueNull();
        }
        writer.field("isMonochrome", stock->isMonochrome);
        writer.field("isReversal", stock->isReversal);
        writer.field("isReflectionPrint", stock->isReflectionPrint);
        writer.field("isExample", definition->isExample.value_or(false));
        writer.field("nativeFormat", FilmFormat::nativeID(stockID));
        writer.field("defaultPaper", id(defaultPrintPaper(*stock)));
        writer.key("papers");
        writer.beginArray();
        for (PrintPaper paper : choices(*stock)) writer.valueString(id(paper));
        writer.endArray();
        writer.endObject();
    }
    writer.endArray();
    return writer.out;
}

}  // namespace fotufilm
