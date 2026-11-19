#pragma once

#include "spectral_filming.h"
#include "spectral_printing.h"

namespace spektrafilm {

// Film exposure, film curves, paper exposure, paper curves, scan, gamut, and constants.
using SpectralGraph = std::array<std::vector<float>, 7>;
SpectralGraph buildSpectralGraph(const Filming& film, const DataSet& filmData,
                                const Printing* print, const Scanner& scanner,
                                bool needsGlare, bool needsGrain);

}
