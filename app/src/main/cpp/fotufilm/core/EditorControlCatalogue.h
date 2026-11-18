// Port of Sources/FotufilmEditModel/EditorControlCatalogue.swift (and EditorMediumControls.swift,
// defined in EditorMediumControls.cpp). The catalogue holds every control the Android surface
// offers, minus frame geometry (crop, straighten, rotation, flip), plus the controls
// `EditDocument.options(for:)` composes (source light, the per-interlayer reach and the simulated
// printer), each with its upstream surfaces. Lens filters, lens correction, the print frame, HDR
// input, the halation construction controls and the plugin pipeline controls are not ported.
#ifndef FOTUFILM_CORE_EDITOR_CONTROL_CATALOGUE_H
#define FOTUFILM_CORE_EDITOR_CONTROL_CATALOGUE_H

#include <optional>
#include <string>
#include <vector>

#include "DigitalReferenceReceiver.h"
#include "EditorControl.h"
#include "PrintPaper.h"
#include "PushPull.h"

namespace fotufilm {

struct FilmStock;

namespace EditorControlCatalogue {

/// Stable menu order shared by editors and plugin hosts. Zero follows the selected stock; nil is
/// the custom-temperature entry.
const std::vector<EditorMenuChoice>& sourceLights();
std::optional<float> sourceLightKelvin(int selection, double custom);

const std::vector<EditorMenuChoice>& mottleShares();

const std::vector<double>& shutterLadder();
std::vector<double> shutterTimes(const FilmStock* stock);
std::string shutterName(double seconds);

const std::vector<EditorMenuChoice>& viewingLights(PrintPaper paper);

const std::vector<EditorControl>& all();

/// Where this film's push and pull curves come from, as the control's detail line.
std::string pushDetail(const FilmDevelopmentProfile& profile);

/// The controls `surface` offers for `stock`, with the push scale taken from the stock.
std::vector<EditorControl> controls(const FilmStock* stock, EditorSurface surface = EditorSurface::app);
std::vector<EditorControl> controls(EditorControlSection section, const FilmStock* stock,
                                    EditorSurface surface = EditorSurface::app);
const EditorControl* control(EditorControlField field);
std::vector<EditorControl> offered(EditorSurface surface);

/// EditorMediumControls.swift: whether the output medium puts this control in front of the user.
bool medium(PrintPaper paper, EditorControlField field, const FilmStock* stock, DigitalReferenceStyle digitalReference);

}  // namespace EditorControlCatalogue
}  // namespace fotufilm

#endif  // FOTUFILM_CORE_EDITOR_CONTROL_CATALOGUE_H
