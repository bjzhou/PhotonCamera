#pragma once

#include "spectral_data.h"
#include "spectral_gamut.h"

namespace spektrafilm {

struct ScanControls {
    bool whiteCorrection = false;
    double whiteLevel = 0.98;
    bool blackCorrection = false;
    double blackLevel = 0.01;
};

struct ScanCorrection {
    bool active = false;
    double slope = 1, offset = 0;
    double exposure = 1;
};

// Pointwise scanning from film or print dye densities.
class Scanner {
public:
    Scanner(const DataSet& shared, const DataSet& medium, const OutputGamut& gamut, int dyeOrder = 0);
    void configureBlackWhite(const ScanCorrection& correction) { correction_ = correction; }
    double luminance(const Vec3& density) const;
    Vec3 linearRgb(const Vec3& density) const;
    const Vec3& whiteRgb() const { return whiteRgb_; }
    Vec3 gamutRgb(const Vec3& linearProPhoto) const { return gamut_.compress(linearProPhoto); }
    bool unboundedGamut() const { return gamut_.unbounded(); }
    Vec3 scan(const Vec3& density) const;
private:
    Vec3 scanXyz(const Vec3& density) const;
    Vec3 toRgb(const Vec3& xyz) const;
    std::vector<double> dyes_, base_, valid_, illuminant_, observer_, matrix_;
    double normalization_ = 0;
    const OutputGamut& gamut_;
    Vec3 whiteRgb_{};
    ScanCorrection correction_{};
};

struct PrintControls {
    double exposure = 1;
    double compensationEv = 0;
    bool normalizeExposure = true;
    double magentaShift = 0, yellowShift = 0;
    double preflashExposure = 0, preflashMagentaShift = 0, preflashYellowShift = 0;
    double gamma = 1, gammaFast = 1, gammaSlow = 1;
    Vec3 channelGamma{1, 1, 1};
    double developerExhaustion = 0;
};

class Printing {
public:
    Printing(const DataSet& shared, const DataSet& film, const DataSet& paper,
             const std::string& paperName, const Vec3& midgrayDensity,
             const Vec3& compensatedMidgray, const PrintControls& controls, int dyeOrder = 0);
    Vec3 expose(const Vec3& filmDensity) const;
    Vec3 modelExposure(const Vec3& filmDensity) const;
    void setScanExposureCorrection(double correction) { scanExposureCorrection_ = correction; }
    Vec3 develop(const Vec3& logExposure) const;
private:
    std::vector<double> filmDyes_, filmBase_, valid_, weights_, axis_, curves_;
    Vec3 preflash_{};
    double normalization_ = 1, exposure_ = 1, scanExposureCorrection_ = 1;
};

class Filming;
ScanCorrection positiveScanCorrection(const Scanner& scanner, const Filming& filming,
                                      const DataSet& film, const ScanControls& controls);
ScanCorrection printScanCorrection(const Scanner& scanner, const Printing& printing,
                                   const Filming& filming, const DataSet& paper, const ScanControls& controls,
                                   const Vec3& grainMinimum = {0.03, 0.03, 0.03});

double proPhotoDecode(double value);
double proPhotoEncode(double value);

}
