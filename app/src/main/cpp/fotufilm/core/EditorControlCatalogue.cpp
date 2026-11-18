// Port of Sources/FotufilmEditModel/EditorControlCatalogue.swift; see the header for what is ported.
#include "EditorControlCatalogue.h"

#include <algorithm>
#include <cmath>
#include <cstdio>

#include "FilmStock.h"
#include "HalationAmount.h"
#include "PrinterLights.h"

namespace fotufilm {
namespace EditorControlCatalogue {

namespace {

using Field = EditorControlField;
using Section = EditorControlSection;
using Unit = EditorControlUnit;
using Availability = EditorControlAvailability;
using Kind = EditorControlKind;
using Scale = EditorControlScale;
using Binding = EngineBinding;
using BK = EngineBinding::Kind;

constexpr EditorSurfaces kApp = 1u << static_cast<uint32_t>(EditorSurface::app);
constexpr EditorSurfaces kDesktop = 1u << static_cast<uint32_t>(EditorSurface::desktop);
constexpr EditorSurfaces kAndroid = 1u << static_cast<uint32_t>(EditorSurface::android);
constexpr EditorSurfaces kResolve = 1u << static_cast<uint32_t>(EditorSurface::resolve);
constexpr EditorSurfaces kFinalCut = 1u << static_cast<uint32_t>(EditorSurface::finalcut);
constexpr EditorSurfaces kWeb = 1u << static_cast<uint32_t>(EditorSurface::web);
constexpr EditorSurfaces kCli = 1u << static_cast<uint32_t>(EditorSurface::cli);
constexpr EditorSurfaces kEverywhere = kApp | kDesktop | kAndroid | kResolve | kFinalCut | kWeb | kCli;

/// The arguments `EditorControl.init` takes, with its defaults.
struct Spec {
    Field field;
    std::string title;
    std::string detail;
    Section section;
    Kind kind;
    Availability availability = Availability::always;
    std::optional<Field> foldsUnder;
    EditorControlScope scope = EditorControlScope::edit;
    std::optional<EditorControlPersistence> persistence;
    std::optional<Binding> binding;
    std::vector<std::string> drives;
    EditorSurfaces surfaces = EditorControl::defaultSurfaces();
};

EditorControl make(Spec spec) {
    EditorControl control;
    control.field = spec.field;
    control.title = std::move(spec.title);
    control.detail = std::move(spec.detail);
    control.section = spec.section;
    control.kind = std::move(spec.kind);
    control.availability = spec.availability;
    control.foldsUnder = spec.foldsUnder;
    control.scope = spec.scope;
    control.persistence = spec.persistence ? *spec.persistence
                                           : EditorControl::defaultPersistence(spec.field, control.kind, spec.scope);
    control.binding = spec.binding;
    control.drives = std::move(spec.drives);
    control.surfaces = spec.surfaces;
    return control;
}

Scale signedScale() { return Scale(-1, 1, 0, Unit::signedValue); }

std::vector<EditorControl> filmControls() {
    std::vector<EditorControl> out;
    {
        Spec s{Field::stock, "Film", "Choose the film used to render the photo.", Section::filmStock,
               Kind::menu(EditorMenuChoices::makeDynamic(EditorDynamicMenu::stocks))};
        s.surfaces = kEverywhere;
        out.push_back(make(s));
    }
    {
        Spec s{Field::gauge, "Format", "Set the film frame size, which affects visible grain and halation.",
               Section::filmStock, Kind::menu(EditorMenuChoices::makeDynamic(EditorDynamicMenu::gauges))};
        s.drives = {"format"};
        s.surfaces = kEverywhere;
        out.push_back(make(s));
    }
    {
        Spec s{Field::grain, "Grain", "Adjust grain strength relative to the selected film.", Section::filmGrain,
               Kind::slider(Scale(0, 2, 1, Unit::multiplier))};
        s.availability = Availability::film;
        s.binding = Binding(BK::grainScale);
        s.surfaces = kEverywhere;
        out.push_back(make(s));
    }
    {
        Spec s{Field::grainMottle, "Mottle", "Add larger, softer clusters to the grain pattern.", Section::filmGrain,
               Kind::menu(EditorMenuChoices::makeFixed(mottleShares()))};
        s.availability = Availability::film;
        s.persistence = EditorControlPersistence::bespoke();
        s.binding = Binding(BK::grainMottleShare);
        s.surfaces = kApp | kDesktop | kAndroid | kCli | kWeb;
        out.push_back(make(s));
    }
    const EditorSurfaces filmGrainSurfaces = kApp | kDesktop | kAndroid | kResolve | kCli | kWeb;
    {
        Spec s{Field::filmGrainSize, "Grain Size",
               "Make the film's grain coarser or finer at the same measured granularity.", Section::filmGrain,
               Kind::slider(Scale(0.5, 4, 1, Unit::multiplier))};
        s.availability = Availability::film;
        s.binding = Binding(BK::filmGrainSize);
        s.surfaces = filmGrainSurfaces;
        out.push_back(make(s));
    }
    {
        Spec s{Field::filmColourGrain, "Colour Grain",
               "Blend each layer's grain from independent colour speckle toward one shared grain.",
               Section::filmGrain, Kind::slider(Scale(0, 1, 1, Unit::percent))};
        s.availability = Availability::colourFilm;
        s.binding = Binding(BK::filmColourGrain);
        s.surfaces = filmGrainSurfaces;
        out.push_back(make(s));
    }
    const char* layerTitles[3] = {"Red Layer", "Green Layer", "Blue Layer"};
    const char* layerDetails[3] = {"Scale the grain of the red-sensitive layer when Grain Model is Film.",
                                   "Scale the grain of the green-sensitive layer when Grain Model is Film.",
                                   "Scale the grain of the blue-sensitive layer when Grain Model is Film."};
    const Field layerFields[3] = {Field::filmRedLayer, Field::filmGreenLayer, Field::filmBlueLayer};
    for (int record = 0; record < 3; ++record) {
        Spec s{layerFields[record], layerTitles[record], layerDetails[record], Section::filmGrain,
               Kind::slider(Scale(0, 2, 1, Unit::multiplier))};
        s.availability = Availability::colourFilm;
        s.binding = Binding::indexed(BK::filmGrainLayer, record);
        s.surfaces = filmGrainSurfaces;
        out.push_back(make(s));
    }
    {
        Spec s{Field::filmScanSoftness, "Scan Softness",
               "Read a wider patch of film per pixel, as a softer scan does, smoothing the grain.",
               Section::filmGrain, Kind::slider(Scale(0.5, 4, 1, Unit::multiplier))};
        s.availability = Availability::film;
        s.binding = Binding(BK::filmScanSoftness);
        s.surfaces = filmGrainSurfaces;
        out.push_back(make(s));
    }
    {
        Spec s{Field::grainModel, "Grain Model", "Choose how film grain is formed across the emulsion.",
               Section::filmGrain,
               Kind::menu(EditorMenuChoices::makeFixed({
                   EditorMenuChoice(0.0, "Standard", "Fast calibrated RMS grain", std::string("clump")),
                   EditorMenuChoice(1.0, "Film", "Crystals on the film itself, averaged as light", std::string("film")),
               }))};
        s.availability = Availability::film;
        s.persistence = EditorControlPersistence::bespoke();
        s.binding = Binding(BK::grainModel);
        s.surfaces = kApp | kDesktop | kAndroid | kResolve | kCli | kWeb;
        out.push_back(make(s));
    }
    {
        Spec s{Field::halation, "Halation",
               "Adjust the glow around bright areas caused by light reflecting inside the film.",
               Section::filmHalation,
               Kind::slider(Scale(HalationAmount::travelLower, HalationAmount::travelUpper, 0, Unit::stopsFromOff, {},
                                  std::make_pair(HalationAmount::admittedLower, HalationAmount::admittedUpper())))};
        s.availability = Availability::film;
        s.persistence = EditorControlPersistence::keyed("halation", StoredEncoding::scaleFromStops);
        s.binding = Binding(BK::halationStops);
        s.surfaces = kEverywhere;
        out.push_back(make(s));
    }
    {
        Spec s{Field::halationColour, "Halo Colour", "Control how much the halo keeps the color of the light source.",
               Section::filmHalation, Kind::slider(Scale(0, 1, 0, Unit::percent))};
        s.availability = Availability::colourNegative;
        s.binding = Binding(BK::halationSourceColour);
        s.surfaces = kEverywhere;
        out.push_back(make(s));
    }
    {
        Spec s{Field::couplers, "Couplers", "Adjust how development affects color separation and edge contrast.",
               Section::filmEmulsion, Kind::slider(Scale(0, 2, 1, Unit::multiplier))};
        s.availability = Availability::film;
        s.binding = Binding(BK::couplerScale);
        s.surfaces = kEverywhere;
        out.push_back(make(s));
    }
    {
        Spec s{Field::couplerReach, "Separation",
               "Adjust how strongly neighboring film layers affect each other during development.",
               Section::filmEmulsion, Kind::slider(Scale(0, 3, 1, Unit::multiplier))};
        s.availability = Availability::couplerGeometry;
        s.persistence = EditorControlPersistence::bespoke();
        s.binding = Binding(BK::couplerGapReach);
        s.surfaces = kApp | kDesktop | kAndroid | kResolve | kCli | kWeb;
        out.push_back(make(s));
    }
    {
        Spec s{Field::couplerSelf, "Edge Contrast", "Adjust the local contrast around edges created during development.",
               Section::filmEmulsion, Kind::slider(Scale(0, 3, 1, Unit::multiplier))};
        s.availability = Availability::couplerGeometry;
        s.binding = Binding(BK::couplerSelf);
        s.surfaces = kApp | kDesktop | kAndroid | kResolve | kCli | kWeb;
        out.push_back(make(s));
    }
    {
        Spec s{Field::couplerRedGreen, "Red\xE2\x80\x93Green Reach", "Adjust the separation between the red and green layers.",
               Section::filmEmulsion, Kind::slider(Scale(0, 3, 1, Unit::multiplier))};
        s.availability = Availability::couplerGeometry;
        s.surfaces = kResolve | kWeb;
        out.push_back(make(s));
    }
    {
        Spec s{Field::couplerGreenBlue, "Green\xE2\x80\x93" "Blue Reach",
               "Adjust the separation between the green and blue layers.", Section::filmEmulsion,
               Kind::slider(Scale(0, 3, 1, Unit::multiplier))};
        s.availability = Availability::couplerGeometry;
        s.surfaces = kResolve | kWeb;
        out.push_back(make(s));
    }
    {
        Spec s{Field::chromaticFringeAmount, "Fringe Amount", "Add a broader color effect around edges.",
               Section::filmEmulsion, Kind::slider(Scale(0, 1, 0, Unit::percent))};
        s.availability = Availability::interlayerInhibition;
        s.binding = Binding(BK::chromaticFringeAmount);
        s.surfaces = kEverywhere;
        out.push_back(make(s));
    }
    {
        Spec s{Field::chromaticFringeRadius, "Fringe Radius",
               "Set the width of the color fringe. Requires Fringe Amount above zero.", Section::filmEmulsion,
               Kind::slider(Scale(20, 300, 100, Unit::micrometers))};
        s.availability = Availability::interlayerInhibition;
        s.foldsUnder = Field::chromaticFringeAmount;
        s.binding = Binding(BK::chromaticFringeRadiusMicrometers);
        s.surfaces = kEverywhere;
        out.push_back(make(s));
    }
    {
        Spec s{Field::push, "Push", "Choose a push or pull development for this film.", Section::filmLab,
               Kind::slider(Scale(-2, 2, 0, Unit::stops, {-2, 0, 1, 2}))};
        s.availability = Availability::developmentConditions;
        s.binding = Binding(BK::developmentEV);
        s.surfaces = kEverywhere;
        out.push_back(make(s));
    }
    {
        Spec s{Field::bleach, "Bleach Bypass",
               "Leave silver in the negative to increase contrast and reduce color saturation.", Section::filmLab,
               Kind::makeChips(Scale(0, 1, 0, Unit::percent), {{0, "Off"}, {0.5, "Half"}, {1, "Full"}})};
        s.availability = Availability::colourNegative;
        s.binding = Binding(BK::bleachBypass);
        s.surfaces = kEverywhere;
        out.push_back(make(s));
    }
    {
        Spec s{Field::expired, "Expired",
               "Simulate film stored at room temperature past its expiry date, in years.", Section::filmLab,
               Kind::slider(Scale(0, 20, 0, Unit::years, {0, 5, 10, 20}, std::make_pair(0.0, 30.0)))};
        s.availability = Availability::film;
        s.persistence = EditorControlPersistence::keyed("expiredYears", StoredEncoding::same);
        s.binding = Binding(BK::expiredYears);
        s.surfaces = kEverywhere;
        out.push_back(make(s));
    }
    {
        Spec s{Field::shutter, "Long Exposure",
               "Set exposure time to apply the film\xE2\x80\x99s measured long-exposure correction.", Section::filmLab,
               Kind::menu(EditorMenuChoices::makeDynamic(EditorDynamicMenu::shutterTimes))};
        s.availability = Availability::statedReciprocity;
        s.persistence = EditorControlPersistence::bespoke();
        s.binding = Binding(BK::shutterSeconds);
        s.surfaces = kApp | kDesktop | kAndroid | kResolve | kCli | kWeb;
        out.push_back(make(s));
    }
    return out;
}

std::vector<EditorControl> gradeBands() {
    std::vector<EditorControl> out;
    const GradeBand bands[3] = {GradeBand::shadows, GradeBand::midtones, GradeBand::highlights};
    const Field fields[3][3] = {
        {Field::gradeShadowsWarmth, Field::gradeShadowsTint, Field::gradeShadowsLevel},
        {Field::gradeMidtonesWarmth, Field::gradeMidtonesTint, Field::gradeMidtonesLevel},
        {Field::gradeHighlightsWarmth, Field::gradeHighlightsTint, Field::gradeHighlightsLevel},
    };
    for (int b = 0; b < 3; ++b) {
        const std::string name = title(bands[b]);
        const std::string lower = rawValue(bands[b]);
        Spec warmth{fields[b][0], name + " Warmth", "Cool to warm, in the " + lower, Section::lightGrade,
                    Kind::slider(signedScale())};
        warmth.persistence = EditorControlPersistence::bespoke();
        warmth.binding = Binding::makeGrade(bands[b], GradeAxis::warmth);
        out.push_back(make(warmth));
        Spec tint{fields[b][1], name + " Tint", "Magenta to green, in the " + lower, Section::lightGrade,
                  Kind::slider(signedScale())};
        tint.persistence = EditorControlPersistence::bespoke();
        tint.binding = Binding::makeGrade(bands[b], GradeAxis::tint);
        out.push_back(make(tint));
        Spec level{fields[b][2], name + " Level", "Adjust the brightness of the " + lower + ".", Section::lightGrade,
                   Kind::slider(signedScale())};
        level.persistence = EditorControlPersistence::bespoke();
        level.binding = Binding::makeGrade(bands[b], GradeAxis::level);
        out.push_back(make(level));
    }
    return out;
}

std::vector<EditorControl> lightControls() {
    std::vector<EditorControl> out;
    {
        Spec s{Field::exposure, "Exposure", "Brighten or darken the light reaching the film, measured in stops.",
               Section::lightExposure, Kind::slider(Scale(-2, 2, 0, Unit::stops, {}, std::make_pair(-5.0, 5.0)))};
        s.binding = Binding(BK::exposureEV);
        s.surfaces = kEverywhere;
        out.push_back(make(s));
    }
    {
        Spec s{Field::highlights, "Highlights", "Adjust bright areas before the film response is applied.",
               Section::lightExposure, Kind::slider(signedScale())};
        s.binding = Binding(BK::highlights);
        s.surfaces = kEverywhere;
        out.push_back(make(s));
    }
    {
        Spec s{Field::shadows, "Shadows", "Adjust dark areas before the film response is applied.",
               Section::lightExposure, Kind::slider(signedScale())};
        s.binding = Binding(BK::shadows);
        s.surfaces = kEverywhere;
        out.push_back(make(s));
    }
    {
        Spec s{Field::localTone, "Regional", "Make highlight and shadow adjustments respond to nearby brightness.",
               Section::lightExposure, Kind::toggle(true)};
        s.binding = Binding(BK::localTone);
        s.surfaces = kEverywhere;
        out.push_back(make(s));
    }
    {
        Spec s{Field::cameraPreflash, "Camera Preflash", "Pre-expose the camera frame to lift shadow contrast.",
               Section::lightExposure, Kind::slider(Scale(0, 0.25, 0, Unit::percent))};
        s.availability = Availability::film;
        s.binding = Binding(BK::cameraPreflash);
        s.surfaces = kEverywhere;
        out.push_back(make(s));
    }
    {
        Spec s{Field::warmth, "Warmth", "Adjust warmth relative to the selected Source Illuminant.",
               Section::lightBalance, Kind::slider(signedScale())};
        s.persistence = EditorControlPersistence::keyed("temperatureMired", StoredEncoding::miredFromWarmth);
        s.binding = Binding(BK::warmth);
        s.surfaces = kApp | kDesktop | kAndroid | kResolve | kFinalCut | kCli;
        out.push_back(make(s));
    }
    {
        Spec s{Field::tint, "Tint", "Shift the color balance between green and magenta.", Section::lightBalance,
               Kind::slider(signedScale())};
        s.persistence = EditorControlPersistence::keyed("tint", StoredEncoding::duvFromPadTint);
        s.binding = Binding(BK::tint);
        s.surfaces = kApp | kDesktop | kAndroid | kResolve | kFinalCut | kCli;
        out.push_back(make(s));
    }
    {
        Spec s{Field::sceneLight, "Source Illuminant",
               "Stock Native uses the selected film's reference light. Choose another source to simulate a "
               "lighting mismatch; Warmth and Tint refine it.",
               Section::lightBalance, Kind::menu(EditorMenuChoices::makeFixed(sourceLights()))};
        s.drives = {"sceneIlluminantKelvin"};
        s.surfaces = kApp | kDesktop | kResolve | kFinalCut | kWeb;
        out.push_back(make(s));
    }
    {
        Spec s{Field::sceneLightKelvin, "Source Illuminant (K)",
               "Custom source temperature before Warmth and Tint. This does not change capture white balance or "
               "print viewing light.",
               Section::lightBalance, Kind::slider(Scale(1000, 25000, 6504, Unit::kelvin))};
        s.persistence = EditorControlPersistence::keyed("sourceLightKelvin", StoredEncoding::same);
        s.drives = {"sceneIlluminantKelvin"};
        s.surfaces = kApp | kDesktop | kResolve | kFinalCut | kCli | kWeb;
        out.push_back(make(s));
    }
    {
        Spec s{Field::saturation, "Saturation", "Adjust color intensity while preserving brightness.",
               Section::lightColor, Kind::slider(Scale(0, 2, 1, Unit::multiplier))};
        s.binding = Binding(BK::saturation);
        s.surfaces = kEverywhere;
        out.push_back(make(s));
    }
    {
        Spec s{Field::vibrance, "Vibrance", "Adjust color intensity, with more effect on muted colors.",
               Section::lightColor, Kind::slider(signedScale())};
        s.binding = Binding(BK::vibrance);
        s.surfaces = kEverywhere;
        out.push_back(make(s));
    }
    {
        Spec s{Field::gradeSpace, "Encoded Grade",
               "Apply the grade to encoded color values instead of linear light. This changes how the grade "
               "responds.",
               Section::lightGrade, Kind::toggle(false)};
        s.persistence = EditorControlPersistence::keyed("encodedGrade", StoredEncoding::same);
        s.binding = Binding(BK::gradeSpaceEncoded);
        s.surfaces = kApp | kDesktop | kAndroid;
        out.push_back(make(s));
    }
    for (auto& control : gradeBands()) out.push_back(std::move(control));
    return out;
}

std::vector<EditorControl> printControls() {
    std::vector<EditorControl> out;
    {
        Spec s{Field::paper, "Output Medium", "Choose how the film is printed, scanned, or viewed.", Section::printPaper,
               Kind::menu(EditorMenuChoices::makeDynamic(EditorDynamicMenu::papers))};
        s.availability = Availability::printStage;
        s.drives = {"paper"};
        s.surfaces = kApp | kDesktop | kAndroid | kResolve | kFinalCut | kCli;
        out.push_back(make(s));
    }
    {
        Spec s{Field::printLight, "Viewing Illuminant", "Choose the light used to view the print.", Section::printPaper,
               Kind::menu(EditorMenuChoices::makeDynamic(EditorDynamicMenu::viewingLights))};
        s.availability = Availability::printStage;
        s.persistence = EditorControlPersistence::bespoke();
        s.binding = Binding(BK::printViewingKelvin);
        s.surfaces = kEverywhere;
        out.push_back(make(s));
    }
    {
        Spec s{Field::printCorrection, "Channel Contrast Match",
               "Optional digital channel-contrast correction; not a printer-light adjustment.", Section::printPaper,
               Kind::slider(Scale(0, 1, 0, Unit::percent))};
        s.availability = Availability::printStage;
        s.binding = Binding(BK::printCorrection);
        s.surfaces = kEverywhere;
        out.push_back(make(s));
    }
    const Field lightFields[3] = {Field::printerRed, Field::printerGreen, Field::printerBlue};
    const char* lightTitles[3] = {"Red Light", "Green Light", "Blue Light"};
    const char* lightDetails[3] = {"Printer points; more red light adds cyan to the print.",
                                   "Printer points; more green light adds magenta to the print.",
                                   "Printer points; more blue light adds yellow to the print."};
    for (int channel = 0; channel < 3; ++channel) {
        Spec s{lightFields[channel], lightTitles[channel], lightDetails[channel], Section::printPaper,
               Kind::slider(Scale(static_cast<double>(PrinterLights::rangeLower),
                                  static_cast<double>(PrinterLights::rangeUpper),
                                  static_cast<double>(PrinterLights::centre), Unit::printerPoints))};
        s.availability = Availability::printStage;
        s.binding = Binding::indexed(BK::printerLight, channel);
        s.surfaces = kEverywhere;
        out.push_back(make(s));
    }
    {
        std::vector<EditorMenuChoice> styles;
        const auto& all = allDigitalReferenceStyles();
        for (size_t offset = 0; offset < all.size(); ++offset) {
            styles.emplace_back(static_cast<double>(offset), name(all[offset]), detail(all[offset]),
                                std::string(rawValue(all[offset])));
        }
        Spec s{Field::digitalReference, "Screen Conversion",
               "Choose how developed film is converted on Digital Reference.", Section::printPaper,
               Kind::menu(EditorMenuChoices::makeFixed(std::move(styles)))};
        s.availability = Availability::transparentFilm;
        s.persistence = EditorControlPersistence::bespoke();
        s.binding = Binding(BK::digitalReferenceIndex);
        s.surfaces = kEverywhere;
        out.push_back(make(s));
    }
    const Field screenFields[3] = {Field::screenCyan, Field::screenMagenta, Field::screenYellow};
    const char* screenTitles[3] = {"Cyan / Red", "Magenta / Green", "Yellow / Blue"};
    const char* screenDetails[3] = {"Positive adds cyan by reducing red; negative adds red.",
                                    "Positive adds magenta by reducing green; negative adds green.",
                                    "Positive adds yellow by reducing blue; negative adds blue."};
    for (int channel = 0; channel < 3; ++channel) {
        Spec s{screenFields[channel], screenTitles[channel], screenDetails[channel], Section::printPaper,
               Kind::slider(Scale(-1, 1, 0, Unit::signedValue))};
        s.availability = Availability::colourNegative;
        s.binding = Binding::indexed(BK::screenCMY, channel);
        s.surfaces = kEverywhere;
        out.push_back(make(s));
    }
    {
        Spec s{Field::labScanDodging, "Dodging",
               "Hold broad highlights and open deep shadows on a frame wider than a print.", Section::printPaper,
               Kind::slider(Scale(0, 2, 1, Unit::multiplier))};
        s.availability = Availability::transparentFilm;
        s.binding = Binding(BK::labScanDodging);
        s.surfaces = kEverywhere;
        out.push_back(make(s));
    }
    {
        Spec s{Field::labScanLook, "Scanner Look",
               "From a neutral scan to the minilab scanner's finished colour and tone.", Section::printPaper,
               Kind::slider(Scale(0, 1, 1, Unit::percent))};
        s.availability = Availability::transparentFilm;
        s.binding = Binding(BK::labScanLook);
        s.surfaces = kEverywhere;
        out.push_back(make(s));
    }
    {
        Spec s{Field::enlarger, "Enlarger", "Choose the enlarger lighting used to make the print.", Section::printLamp,
               Kind::menu(EditorMenuChoices::makeFixed({
                   EditorMenuChoice(0.0, "Diffuser", "Soft, even light, as in a color enlarger or minilab.",
                                    std::string("diffuser")),
                   EditorMenuChoice(1.0, "Condenser",
                                    "Focused light for stronger contrast and more visible grain and dust in "
                                    "black-and-white prints.",
                                    std::string("condenser")),
               }))};
        s.availability = Availability::printStage;
        s.persistence = EditorControlPersistence::bespoke();
        s.binding = Binding(BK::enlargerIndex);
        s.surfaces = kEverywhere;
        out.push_back(make(s));
    }
    const EditorSurfaces printerSurfaces = kApp | kDesktop | kCli | kWeb;
    {
        Spec s{Field::printerEnabled, "Simulated Printer", "Print through a tungsten lamp and colour filters",
               Section::printLamp, Kind::toggle(false)};
        s.availability = Availability::printStage;
        s.drives = {"printer"};
        s.surfaces = printerSurfaces;
        out.push_back(make(s));
    }
    struct PrinterSlider {
        Field field;
        const char* title;
        const char* detail;
        Scale scale;
    };
    const PrinterSlider printerSliders[4] = {
        {Field::printerLamp, "Lamp Temperature", "Change the spectrum of the enlarger's lamp",
         Scale(2800, 3600, 3200, Unit::kelvin)},
        {Field::printerExposure, "Paper Exposure", "More light darkens negative paper and lightens positive paper",
         Scale(-6, 6, 0, Unit::stops)},
        {Field::printerMagenta, "Magenta Filter", "Reduce the green light reaching the paper",
         Scale(0, 1.2, 0.4, Unit::opticalDensity)},
        {Field::printerYellow, "Yellow Filter", "Reduce the blue light reaching the paper",
         Scale(0, 1.2, 0.5, Unit::opticalDensity)},
    };
    for (const PrinterSlider& slider : printerSliders) {
        Spec s{slider.field, slider.title, slider.detail, Section::printLamp, Kind::slider(slider.scale)};
        s.availability = Availability::printStage;
        s.persistence = EditorControlPersistence::bespoke();
        s.drives = {"printer"};
        s.surfaces = printerSurfaces;
        out.push_back(make(s));
    }
    {
        Spec s{Field::printerPreflash, "Printer Preflash", "Pre-expose the print paper to soften highlight contrast.",
               Section::printLamp, Kind::slider(Scale(0, 0.1, 0, Unit::percent))};
        s.availability = Availability::printStage;
        s.binding = Binding(BK::printerPreflash);
        s.surfaces = kEverywhere;
        out.push_back(make(s));
    }
    return out;
}

std::string formatStops(float stops) {
    char buffer[32];
    if (stops == std::round(stops)) {
        std::snprintf(buffer, sizeof buffer, "%+.0f", static_cast<double>(stops));
    } else {
        std::snprintf(buffer, sizeof buffer, "%+.2g", static_cast<double>(stops));
    }
    return buffer;
}

}  // namespace

const std::vector<EditorMenuChoice>& sourceLights() {
    static const std::vector<EditorMenuChoice> choices = {
        EditorMenuChoice(0.0, "Stock Native", "", std::string("unspecified")),
        EditorMenuChoice(6504.0, "Daylight \xC2\xB7 D65", "", std::string("d65")),
        EditorMenuChoice(5500.0, "Daylight \xC2\xB7 5500 K", "", std::string("daylight5500")),
        EditorMenuChoice(3200.0, "Tungsten \xC2\xB7 3200 K", "", std::string("tungsten3200")),
        EditorMenuChoice(2856.0, "Incandescent \xC2\xB7 2856 K", "", std::string("incandescent")),
        EditorMenuChoice(std::nullopt, "Custom", "", std::string("custom")),
    };
    return choices;
}

std::optional<float> sourceLightKelvin(int selection, double custom) {
    const auto& lights = sourceLights();
    if (selection < 0 || selection >= static_cast<int>(lights.size())) return std::nullopt;
    const double kelvin = lights[selection].value ? *lights[selection].value : custom;
    if (!std::isfinite(kelvin) || kelvin < 1000 || kelvin > 25000) return std::nullopt;
    return static_cast<float>(kelvin);
}

const std::vector<EditorMenuChoice>& mottleShares() {
    static const std::vector<EditorMenuChoice> choices = {
        EditorMenuChoice(std::nullopt, "Film\xE2\x80\x99s Own", "Use the film\xE2\x80\x99s default amount",
                         std::string("film")),
        EditorMenuChoice(0.0, "None", "No added coarse clusters", std::string("none")),
        EditorMenuChoice(0.2, "Light \xC2\xB7 20%", "A small amount of coarse grain", std::string("light")),
        EditorMenuChoice(0.45, "Moderate \xC2\xB7 45%", "Similar amounts of fine and coarse grain",
                         std::string("moderate")),
        EditorMenuChoice(0.7, "Heavy \xC2\xB7 70%", "Mostly coarse grain", std::string("heavy")),
        EditorMenuChoice(0.9, "Maximum \xC2\xB7 90%", "Maximum coarse grain", std::string("maximum")),
    };
    return choices;
}

const std::vector<double>& shutterLadder() {
    static const std::vector<double> ladder = {1, 2, 4, 8, 15, 30, 60, 120, 240, 480};
    return ladder;
}

std::vector<double> shutterTimes(const FilmStock* stock) {
    if (!stock || !stock->reciprocityFailure || !(stock->reciprocityFailure->lostStopsPerDecade > 0)) return {};
    const ReciprocityFailure& stated = *stock->reciprocityFailure;
    std::vector<double> past;
    for (double seconds : shutterLadder()) {
        if (seconds > static_cast<double>(stated.thresholdSeconds)) past.push_back(seconds);
    }
    if (!stated.statedThroughSeconds) return past;
    const double end = static_cast<double>(*stated.statedThroughSeconds);
    auto last = std::find_if(past.begin(), past.end(), [&](double seconds) { return seconds >= end; });
    if (last == past.end()) return past;
    return std::vector<double>(past.begin(), last + 1);
}

std::string shutterName(double seconds) {
    char buffer[32];
    if (!(seconds >= 60)) {
        std::snprintf(buffer, sizeof buffer, "%.0f s", seconds);
        return buffer;
    }
    const double minutes = seconds / 60;
    if (minutes == std::round(minutes)) return std::to_string(static_cast<long long>(minutes)) + " min";
    std::snprintf(buffer, sizeof buffer, "%.1f min", minutes);
    return buffer;
}

const std::vector<EditorMenuChoice>& viewingLights(PrintPaper paper) {
    if (!acceptsViewingIlluminant(paper)) {
        static const std::vector<EditorMenuChoice> display = {
            EditorMenuChoice(std::nullopt, "Display White \xC2\xB7 D65",
                             "The display's fixed white point; no viewing lamp is added", std::string("reference")),
        };
        return display;
    }
    if (isProjected(paper)) {
        static const std::vector<EditorMenuChoice> projected = {
            EditorMenuChoice(std::nullopt, "Reference Projector \xC2\xB7 Xenon 5400 K",
                             "How a cinema release print is intended to look on screen", std::string("reference")),
            EditorMenuChoice(6504.0, "Light Table \xC2\xB7 D65", "See the film directly under cool daylight",
                             std::string("d65")),
            EditorMenuChoice(5003.0, "Proofing Booth \xC2\xB7 D50", "Inspect the film under standard print-viewing light",
                             std::string("d50")),
            EditorMenuChoice(2856.0, "Tungsten \xC2\xB7 2856 K", "See the print under a warm indoor lamp",
                             std::string("tungsten")),
        };
        return projected;
    }
    static const std::vector<EditorMenuChoice> reflective = {
        EditorMenuChoice(std::nullopt, "Reference Booth \xC2\xB7 D50", "Standard neutral light for judging photo prints",
                         std::string("reference")),
        EditorMenuChoice(6504.0, "Daylight \xC2\xB7 D65", "See the print in cooler daylight", std::string("d65")),
        EditorMenuChoice(2856.0, "Tungsten \xC2\xB7 2856 K", "See the print under a warm indoor lamp",
                         std::string("tungsten")),
    };
    return reflective;
}

const std::vector<EditorControl>& all() {
    static const std::vector<EditorControl> controls = [] {
        std::vector<EditorControl> out = filmControls();
        for (auto& control : lightControls()) out.push_back(std::move(control));
        for (auto& control : printControls()) out.push_back(std::move(control));
        return out;
    }();
    return controls;
}

std::string pushDetail(const FilmDevelopmentProfile& profile) {
    std::vector<FilmDevelopmentCondition> conditions = profile.conditions;
    std::stable_sort(conditions.begin(), conditions.end(),
                     [](const FilmDevelopmentCondition& a, const FilmDevelopmentCondition& b) { return a.stops < b.stops; });
    std::vector<std::pair<std::string, std::vector<float>>> groups;
    for (const auto& condition : conditions) {
        std::string source;
        switch (condition.basis.kind) {
            case FilmDevelopmentBasis::Kind::measured: source = "Measured from this film's published curves"; break;
            case FilmDevelopmentBasis::Kind::transferred:
                source = "Carried from " + condition.basis.from + "'s published curves";
                break;
            case FilmDevelopmentBasis::Kind::estimated:
                source = "Estimated from the process's published push response";
                break;
        }
        auto found = std::find_if(groups.begin(), groups.end(), [&](const auto& g) { return g.first == source; });
        if (found != groups.end()) {
            found->second.push_back(condition.stops);
        } else {
            groups.emplace_back(source, std::vector<float>{condition.stops});
        }
    }
    if (groups.size() == 1) return groups[0].first + ".";
    std::string out;
    for (size_t i = 0; i < groups.size(); ++i) {
        if (i > 0) out += " ";
        std::string values;
        for (size_t j = 0; j < groups[i].second.size(); ++j) {
            if (j > 0) values += ", ";
            values += formatStops(groups[i].second[j]);
        }
        out += groups[i].first + ": " + values + ".";
    }
    return out;
}

std::vector<EditorControl> controls(const FilmStock* stock, EditorSurface surface) {
    std::vector<EditorControl> out;
    for (const EditorControl& control : all()) {
        if (!control.offered(surface)) continue;
        if (!admits(control.availability, stock)) continue;
        // `halationReturn` (a stock-relative scale) is not in the ported catalogue.
        if (control.field != EditorControlField::push || !stock) {
            out.push_back(control);
            continue;
        }
        std::vector<float> supported = stock->supportedDevelopmentStops();
        std::vector<float> stopsFloat{0.0f};
        stopsFloat.insert(stopsFloat.end(), supported.begin(), supported.end());
        std::sort(stopsFloat.begin(), stopsFloat.end());
        std::vector<double> stops(stopsFloat.begin(), stopsFloat.end());
        if (stops.empty()) continue;
        EditorControl push = control;
        if (stock->developmentProfile) push.detail = pushDetail(*stock->developmentProfile);
        push.kind = EditorControlKind::slider(EditorControlScale(stops.front(), stops.back(), 0, EditorControlUnit::stops, stops));
        out.push_back(std::move(push));
    }
    return out;
}

std::vector<EditorControl> controls(EditorControlSection section, const FilmStock* stock, EditorSurface surface) {
    std::vector<EditorControl> out;
    for (auto& control : controls(stock, surface)) {
        if (control.section == section) out.push_back(std::move(control));
    }
    return out;
}

const EditorControl* control(EditorControlField field) {
    for (const EditorControl& control : all()) {
        if (control.field == field) return &control;
    }
    return nullptr;
}

std::vector<EditorControl> offered(EditorSurface surface) {
    std::vector<EditorControl> out;
    for (const EditorControl& control : all()) {
        if (control.offered(surface)) out.push_back(control);
    }
    return out;
}

}  // namespace EditorControlCatalogue
}  // namespace fotufilm
