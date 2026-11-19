#pragma once
#include "spectral_filming.h"
#include "spectral_printing.h"

namespace spektrafilm {
struct DensityWire { Vec3 minimum, maximum; };
DensityWire measureDensityWire(const Filming& film);
std::vector<float> generateFilmLut(const Filming& film, const DensityWire& wire,
                                  const Scanner* scanner, int size, double exposureEv = 0);
std::vector<float> generatePrintLut(const Printing& printing, const Scanner& scanner,
                                   const DensityWire& wire, int size);
}
