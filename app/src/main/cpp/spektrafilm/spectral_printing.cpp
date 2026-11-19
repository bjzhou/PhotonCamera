// Pointwise printing/scanning port of Spektrafilm 0.3.4 (3bb2c2d).
// See LICENSE.spektrafilm and docs/spektrafilm-luts.md for provenance.
#include "spectral_printing.h"
#include "spectral_filming.h"
#include <algorithm>
#include <cmath>
#include <limits>
#include <numeric>
#include <stdexcept>

namespace spektrafilm {
namespace {
const std::vector<double>& sized(const DataSet& d, const std::string& name, size_t count) {
    const auto& v = d.at(name);
    if (v.size() != count) throw std::invalid_argument("Invalid spectral tensor: " + name);
    return v;
}

std::vector<double> orderedDyes(const DataSet& medium, size_t wavelengthCount, int order) {
    constexpr int permutations[][3] = {
        {0, 1, 2}, {0, 2, 1}, {1, 0, 2}, {1, 2, 0}, {2, 0, 1}, {2, 1, 0},
    };
    if (order < 0 || order >= 6) throw std::invalid_argument("Invalid spectral dye order");
    auto dyes = sized(medium, "spectral.channelDensity", wavelengthCount * 3);
    if (order == 0) return dyes;
    for (size_t w = 0; w < wavelengthCount; ++w) {
        const size_t i = w * 3;
        const Vec3 stock{dyes[i], dyes[i + 1], dyes[i + 2]};
        for (int c = 0; c < 3; ++c) dyes[i + c] = stock[permutations[order][c]];
    }
    return dyes;
}
double spectralDensity(const std::vector<double>& dyes, const std::vector<double>& base,
                       size_t wavelength, const Vec3& cmy) {
    double d = base[wavelength];
    for (int c = 0; c < 3; ++c) d += cmy[c] * dyes[wavelength * 3 + c];
    return d;
}

Vec3 filterTransmittance(const std::vector<double>& neutral, double magenta, double yellow) {
    return {std::pow(10.0, -neutral[0] / 100.0),
            std::pow(10.0, -(neutral[1] + magenta) / 100.0),
            std::pow(10.0, -(neutral[2] + yellow) / 100.0)};
}

double filteredLight(double source, const std::vector<double>& filters, size_t wavelength,
                     const Vec3& transmittance) {
    for (int c = 0; c < 3; ++c)
        source *= 1.0 - (1.0 - filters[wavelength * 3 + c]) * (1.0 - transmittance[c]);
    return source;
}

double geometricExposure(const Vec3& raw) {
    double logMean = 0;
    for (double value : raw) logMean += std::log(std::max(value, 1e-10)) / 3.0;
    return std::exp(-logMean);
}

double layerCdf(double z, double exhaustion) {
    const double normal = 0.5 * std::erfc(-z / std::sqrt(2.0));
    if (exhaustion == 0) return normal;
    const double location = -std::log(std::log(2.0));
    const double width = 0.5 * std::log(2.0) * std::sqrt(2.0 * std::acos(-1.0));
    const double gumbel = std::exp(-std::exp(-(z / width + location)));
    return normal + exhaustion * (gumbel - normal);
}

double printDensity(double x, const double* centers, const double* sigmas,
                    const double* amplitudes, size_t layers, double exhaustion) {
    double result = 0;
    for (size_t layer = 0; layer < layers; ++layer)
        result += amplitudes[layer] * layerCdf((x - centers[layer]) / sigmas[layer], exhaustion);
    return result;
}

double exhaustionOffset(const double* centers, const double* sigmas, const double* amplitudes,
                        size_t layers, double exhaustion) {
    if (exhaustion == 0) return 0;
    const double target = printDensity(0, centers, sigmas, amplitudes, layers, 0);
    auto residual = [&](double offset) {
        return printDensity(-offset, centers, sigmas, amplitudes, layers, exhaustion) - target;
    };
    if (std::abs(residual(0)) <= 1e-12) return 0;
    for (double bound = 0.25; bound <= 512; bound *= 2) {
        double low = -bound, high = bound;
        double lowValue = residual(low), highValue = residual(high);
        if (lowValue == 0) return low;
        if (highValue == 0) return high;
        if ((lowValue > 0) == (highValue > 0)) continue;
        while (high - low > 1e-10) {
            const double mid = (low + high) * 0.5;
            if ((residual(mid) > 0) == (lowValue > 0)) low = mid;
            else high = mid;
        }
        return (low + high) * 0.5;
    }
    return 0;
}

double interpolate(double x, const std::vector<double>& axis, const std::vector<double>& values,
                   size_t channel, size_t stride) {
    if (x <= axis.front()) return values[channel];
    if (x >= axis.back()) return values[(axis.size() - 1) * stride + channel];
    const size_t upper = std::upper_bound(axis.begin(), axis.end(), x) - axis.begin();
    const size_t lower = upper - 1;
    const double width = axis[upper] - axis[lower];
    const double t = width != 0 ? (x - axis[lower]) / width : 0;
    return values[lower * stride + channel] + t * (values[upper * stride + channel] - values[lower * stride + channel]);
}

double srgbDecode(double encoded) {
    return encoded <= 0.04045 ? encoded / 12.92 : std::pow((encoded + 0.055) / 1.055, 2.4);
}

ScanCorrection scanCorrection(double black, double white, const ScanControls& controls) {
    const double targetBlack = controls.blackCorrection ? srgbDecode(controls.blackLevel) : black;
    const double targetWhite = controls.whiteCorrection ? srgbDecode(controls.whiteLevel) : white;
    const double slope = (targetWhite - targetBlack) / (white - black + 1e-10);
    return {true, slope, targetBlack - slope * black, 1};
}

double midgrayExposure(const ScanCorrection& correction, const DataSet& medium,
                       const std::vector<double>& exposure, const std::vector<double>& curves, bool positive) {
    // A constant output transform has no inverse and no exposure dependence.
    if (correction.slope == 0) return 1;
    constexpr double kMidgray = 0.184;
    const double target = (kMidgray - correction.offset) / correction.slope;
    // Zero light is the infinite-density endpoint of the characteristic curve.
    const double targetDensity = target > 0 ? -std::log10(target) : std::numeric_limits<double>::infinity();
    const auto& base = medium.at("spectral.baseDensity");
    const double meanBase = std::accumulate(base.begin(), base.end(), 0.0) / base.size();
    const double sign = positive ? -1 : 1;
    std::vector<double> meanDensity(exposure.size());
    for (size_t i = 0; i < exposure.size(); ++i) {
        meanDensity[i] = sign * (curves[i * 3] + curves[i * 3 + 1] + curves[i * 3 + 2]) / 3;
    }
    // Characteristic curves can taper back near saturation. Use the first
    // exposure that attains a target instead of binary-searching the density
    // samples as though they were a monotonic coordinate axis.
    const auto findExposure = [&](double density) {
        const auto high = std::find_if(meanDensity.begin(), meanDensity.end(), [density](double value) {
            return value >= density;
        });
        if (high == meanDensity.begin()) return exposure.front();
        if (high == meanDensity.end()) return exposure.back();
        const size_t i = high - meanDensity.begin();
        const double t = (density - meanDensity[i - 1]) / (meanDensity[i] - meanDensity[i - 1]);
        return exposure[i - 1] + t * (exposure[i] - exposure[i - 1]);
    };
    const double reference = findExposure(sign * (-std::log10(kMidgray) - meanBase));
    const double adjusted = findExposure(sign * (targetDensity - meanBase));
    return std::pow(10.0, adjusted - reference);
}
}

double proPhotoDecode(double v) {
    return v < 0.03125 ? v / 16.0 : std::pow(v, 1.8);
}
double proPhotoEncode(double v) {
    v = std::clamp(v, 0.0, 1.0);
    return v < 0.001953125 ? v * 16.0 : std::pow(v, 1.0 / 1.8);
}

Scanner::Scanner(const DataSet& shared, const DataSet& medium, const OutputGamut& gamut, int dyeOrder)
    : base_(medium.at("spectral.baseDensity")), gamut_(gamut) {
    const size_t n = base_.size();
    if (n == 0 || n > 1024) throw std::invalid_argument("Invalid scan wavelengths");
    dyes_ = orderedDyes(medium, n, dyeOrder);
    valid_ = sized(medium, "spectral.valid", n);
    illuminant_ = sized(medium, "scan.illuminant", n);
    observer_ = sized(shared, "scan.observer", n * 3);
    matrix_ = sized(medium, "scan.xyzToProPhoto", 9);
    Vec3 whiteXyz{};
    for (size_t w = 0; w < n; ++w) {
        normalization_ += illuminant_[w] * observer_[w * 3 + 1];
        for (int c = 0; c < 3; ++c) whiteXyz[c] += illuminant_[w] * observer_[w * 3 + c];
    }
    if (!(normalization_ > 0)) throw std::invalid_argument("Invalid scanner illuminant");
    for (double& component : whiteXyz) component /= normalization_;
    whiteRgb_ = toRgb(whiteXyz);
}

Vec3 Scanner::scanXyz(const Vec3& density) const {
    Vec3 xyz{};
    for (size_t w = 0; w < base_.size(); ++w) {
        if (valid_[w] == 0) continue;
        const double light = std::pow(10.0, -spectralDensity(dyes_, base_, w, density)) * illuminant_[w];
        for (int c = 0; c < 3; ++c) xyz[c] += light * observer_[w * 3 + c];
    }
    for (double& v : xyz) {
        // Match the upstream cmy_to_log_xyz -> pow(10, log_xyz) tap contract.
        v = std::pow(10.0, std::log10(std::max(v / normalization_, 0.0) + 1e-10));
    }
    return xyz;
}

Vec3 Scanner::toRgb(const Vec3& xyz) const {
    Vec3 rgb{};
    for (int r = 0; r < 3; ++r)
        for (int c = 0; c < 3; ++c) rgb[r] += matrix_[r * 3 + c] * xyz[c];
    return rgb;
}

double Scanner::luminance(const Vec3& density) const {
    return scanXyz(density)[1];
}

Vec3 Scanner::linearRgb(const Vec3& density) const {
    Vec3 xyz = scanXyz(density);
    if (correction_.active) {
        const double y = xyz[1];
        const double corrected = std::clamp(correction_.slope * y + correction_.offset, 0.0, 1.0);
        for (double& value : xyz) value *= corrected / (y + 1e-10);
    }
    return toRgb(xyz);
}

Vec3 Scanner::scan(const Vec3& density) const {
    Vec3 rgb = gamutRgb(linearRgb(density));
    for (double& v : rgb) {
        if (!std::isfinite(v)) throw std::runtime_error("Non-finite spectral scanner result");
        v = proPhotoEncode(v);
    }
    return rgb;
}

Printing::Printing(const DataSet& shared, const DataSet& film, const DataSet& paper,
                   const std::string& paperName, const Vec3& midgrayDensity,
                   const Vec3& compensatedMidgray, const PrintControls& controls, int dyeOrder)
    : filmBase_(film.at("spectral.baseDensity")), axis_(paper.at("print.logExposure")) {
    const size_t n = filmBase_.size();
    if (n == 0 || n > 1024 || axis_.size() < 2 || axis_.size() > 65536)
        throw std::invalid_argument("Invalid print model dimensions");
    filmDyes_ = orderedDyes(film, n, dyeOrder);
    valid_ = sized(film, "spectral.valid", n);
    const auto& filters = sized(shared, "print.dichroicFilters", n * 3);
    const auto& light = sized(shared, "print.lightSource", n);
    const auto& sensitivity = sized(paper, "print.sensitivity", n * 3);
    const auto& cc = sized(film, "print.neutral." + paperName, 3);
    exposure_ = controls.exposure;
    const auto transmittance = filterTransmittance(cc, controls.magentaShift, controls.yellowShift);
    const auto preflashTransmittance = filterTransmittance(
        cc, controls.preflashMagentaShift, controls.preflashYellowShift);
    weights_.resize(n * 3);
    Vec3 rawMidgray{}, rawCompensated{};
    for (size_t w = 0; w < n; ++w) {
        if (valid_[w] == 0) continue;
        const double source = filteredLight(light[w], filters, w, transmittance);
        const double transmission = std::pow(10.0, -spectralDensity(filmDyes_, filmBase_, w, midgrayDensity));
        const double compensated = controls.compensationEv == 0 ? transmission :
            std::pow(10.0, -spectralDensity(filmDyes_, filmBase_, w, compensatedMidgray));
        const double flash = controls.preflashExposure == 0 ? 0 : controls.preflashExposure *
            filteredLight(light[w], filters, w, preflashTransmittance) * std::pow(10.0, -filmBase_[w]);
        for (int c = 0; c < 3; ++c) {
            weights_[w * 3 + c] = source * sensitivity[w * 3 + c];
            rawMidgray[c] += transmission * weights_[w * 3 + c];
            rawCompensated[c] += compensated * weights_[w * 3 + c];
            preflash_[c] += flash * sensitivity[w * 3 + c];
        }
    }
    if (controls.normalizeExposure) normalization_ = geometricExposure(rawCompensated);
    else if (controls.compensationEv != 0)
        normalization_ = geometricExposure(rawCompensated) / geometricExposure(rawMidgray);

    auto centers = paper.at("print.centers");
    if (centers.empty() || centers.size() % 3 != 0 || centers.size() > 96)
        throw std::invalid_argument("Invalid print density layers");
    const size_t layers = centers.size() / 3;
    auto sigmas = sized(paper, "print.sigmas", centers.size());
    const auto& amplitudes = sized(paper, "print.amplitudes", centers.size());
    if (!std::is_sorted(axis_.begin(), axis_.end())) throw std::invalid_argument("Unsorted print curve");
    curves_.resize(axis_.size() * 3);
    if (std::any_of(sigmas.begin(), sigmas.end(), [](double v) { return !(v > 0); }))
        throw std::invalid_argument("Invalid print layer sigma");
    for (int c = 0; c < 3; ++c) {
        const size_t start = c * layers;
        const double gamma = controls.gamma * controls.channelGamma[c];
        if (gamma != 1 || controls.gammaFast != 1 || controls.gammaSlow != 1) {
            const auto first = centers.begin() + start;
            const size_t fast = std::min_element(first, first + layers) - first;
            for (size_t layer = 0; layer < layers; ++layer) {
                const size_t k = start + layer;
                const double effectiveGamma = gamma * (layer == fast ? controls.gammaFast : controls.gammaSlow);
                centers[k] /= effectiveGamma;
                sigmas[k] = std::max(0.05, sigmas[k] / effectiveGamma);
            }
        }
        const double offset = exhaustionOffset(
            centers.data() + start, sigmas.data() + start, amplitudes.data() + start,
            layers, controls.developerExhaustion);
        for (size_t i = 0; i < axis_.size(); ++i)
            curves_[i * 3 + c] = printDensity(axis_[i] - offset, centers.data() + start,
                sigmas.data() + start, amplitudes.data() + start, layers, controls.developerExhaustion);
    }
}

Vec3 Printing::modelExposure(const Vec3& filmDensity) const {
    Vec3 raw{};
    for (size_t w = 0; w < filmBase_.size(); ++w) {
        if (valid_[w] == 0) continue;
        const double transmission = std::pow(10.0, -spectralDensity(filmDyes_, filmBase_, w, filmDensity));
        for (int c = 0; c < 3; ++c) raw[c] += transmission * weights_[w * 3 + c];
    }
    for (int c = 0; c < 3; ++c)
        raw[c] = std::log10(std::max(raw[c] * normalization_ + preflash_[c], 0.0) + 1e-10);
    return raw;
}

Vec3 Printing::expose(const Vec3& filmDensity) const {
    Vec3 raw = modelExposure(filmDensity);
    for (double& value : raw)
        value = std::log10(std::max(std::pow(10.0, value) * exposure_ * scanExposureCorrection_, 0.0) + 1e-10);
    return raw;
}

Vec3 Printing::develop(const Vec3& logExposure) const {
    Vec3 result{};
    for (int c = 0; c < 3; ++c) {
        result[c] = interpolate(logExposure[c], axis_, curves_, c, 3);
    }
    return result;
}

ScanCorrection positiveScanCorrection(const Scanner& scanner, const Filming& filming,
                                      const DataSet& film, const ScanControls& controls) {
    if ((!controls.blackCorrection && !controls.whiteCorrection) || !filming.positive()) return {};
    ScanCorrection correction = scanCorrection(scanner.luminance(filming.curveMax()),
                                               scanner.luminance({0, 0, 0}), controls);
    correction.exposure = midgrayExposure(correction, film, filming.logExposure(), filming.originalCurves(), true);
    return correction;
}

ScanCorrection printScanCorrection(const Scanner& scanner, const Printing& printing,
                                   const Filming& filming, const DataSet& paper, const ScanControls& controls,
                                   const Vec3& grainMinimum) {
    if (!controls.blackCorrection && !controls.whiteCorrection) return {};
    const auto& axis = paper.at("print.logExposure");
    const auto& curves = sized(paper, "print.stockCurves", axis.size() * 3);
    const Vec3 blackRaw = printing.modelExposure({-grainMinimum[0], -grainMinimum[1], -grainMinimum[2]});
    const Vec3 whiteRaw = printing.modelExposure(filming.curveMax());
    Vec3 blackDensity{}, whiteDensity{};
    for (int c = 0; c < 3; ++c) {
        blackDensity[c] = interpolate(blackRaw[c], axis, curves, c, 3);
        whiteDensity[c] = interpolate(whiteRaw[c], axis, curves, c, 3);
    }
    ScanCorrection correction = scanCorrection(scanner.luminance(blackDensity), scanner.luminance(whiteDensity), controls);
    correction.exposure = midgrayExposure(correction, paper, axis, curves, false);
    return correction;
}
}
