#pragma once

#include "spectral_data.h"

namespace spektrafilm {

struct SpectralOptics {
    bool adaptationWindow = true;
    bool adaptationSurface = false;
    double blur = 0;
    bool gamutCompression = true;
    bool mallett = false;
    bool oklchGamut = false;
    Vec3 gamutKnee{0, 1, 6};
};

struct FilmDevelopment {
    double gamma = 1;
    bool dirEnabled = true;
    double dirAmount = 1;
    double dirSameLayer = 1;
    double dirInterLayer = 1;
    bool customDirMatrix = false;
    std::array<double, 9> dirCoefficients{};
};

/** Pointwise filming, from linear ProPhoto RGB to CMY. */
class Filming {
public:
    Filming(const DataSet& shared, const DataSet& film, const SpectralOptics& optics = {});
    void configureDevelopment(const FilmDevelopment& development);
    Vec3 exposeProPhoto(const Vec3& linearProPhoto) const;
    Vec3 develop(const Vec3& linearProPhoto) const;
    double exposureMultiplier() const { return scanExposureMultiplier_; }
    void setScanExposureMultiplier(double value) { scanExposureMultiplier_ = value; }
    // Upstream enlarger balance uses unnormalised stock curves, without DIR,
    // and its default sRGB .184 reference rather than ProPhoto .184.
    Vec3 midgrayDensity(double exposureEv = 0) const;
    bool positive() const { return positive_; }
    const Vec3& curveMin() const { return curveMin_; }
    const Vec3& curveMax() const { return curveMax_; }
    const Vec3& densityMax() const { return densityMax_; }
    const Vec3& gamma() const { return gamma_; }
    const std::vector<double>& logExposure() const { return logExposure_; }
    const std::vector<double>& originalCurves() const { return originalCurves_; }
    const std::vector<double>& normalizedCurves() const { return normalizedCurves_; }
    const std::vector<double>& beforeDirCurves() const { return beforeDirCurves_; }
    bool dirActive() const { return dirActive_; }
    const std::array<double, 9>& dirMatrix() const { return dirMatrix_; }

private:
    Vec3 expose(const Vec3& rgb, const std::array<double, 9>& matrix) const;
    Vec3 exposeMallett(const Vec3& srgb) const;
    Vec3 interpolate(const Vec3& logRaw, const std::vector<double>& curves) const;
    int tcSize_ = 0;
    bool positive_ = false;
    bool dirActive_ = false;
    bool stockDirActive_ = false;
    bool mallett_ = false;
    double scanExposureMultiplier_ = 1;
    Vec3 curveMin_{}, curveMax_{}, densityMax_{}, stockGamma_{}, gamma_{};
    std::array<double, 9> proPhotoMatrix_{}, srgbMatrix_{}, stockDirMatrix_{}, dirMatrix_{};
    std::array<double, 9> mallettResponse_{};
    std::vector<double> tcLut_, logExposure_, originalCurves_, normalizedCurves_, beforeDirCurves_;
};

}  // namespace spektrafilm
