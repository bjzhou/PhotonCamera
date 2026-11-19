#pragma once

#include "spectral_data.h"

namespace spektrafilm {

using Chromaticity = std::array<double, 2>;

class InputOklchGamut {
public:
    explicit InputOklchGamut(const std::vector<double>& locus);
    Chromaticity compress(const Chromaticity& xy, const Vec3& knee) const;
private:
    std::vector<double> boundary_;
};

enum class OutputGamutAlgorithm { Cam16, Off, Oklch, AcesRgc, Oklrab, Jzazbz };

// Spektrafilm 0.3.4 output gamut mapping in linear ProPhoto RGB. Each
// perceptual mode builds its chroma boundary on first use.
class OutputGamut {
public:
    explicit OutputGamut(OutputGamutAlgorithm algorithm = OutputGamutAlgorithm::Cam16,
                         const Vec3& knee = {0, 1, 6});
    Vec3 compress(const Vec3& linearProPhoto) const;
    bool unbounded() const {
        return algorithm_ == OutputGamutAlgorithm::Off || algorithm_ == OutputGamutAlgorithm::AcesRgc;
    }
private:
    OutputGamutAlgorithm algorithm_;
    Vec3 knee_;
};

} // namespace spektrafilm
