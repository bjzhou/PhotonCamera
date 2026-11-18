// Port of Sources/FotufilmCore/FilmStock.swift. FilmStock's extensions from PushPull.swift,
// Reciprocity.swift and ExpiredFilm.swift are declared here and defined in those files' .cpp.
#ifndef FOTUFILM_CORE_FILM_STOCK_H
#define FOTUFILM_CORE_FILM_STOCK_H

#include <cstdint>
#include <optional>
#include <string>
#include <vector>

#include "AdjacencyModel.h"
#include "CharacteristicCurve.h"
#include "CouplerGeometry.h"
#include "CrystalGrainModel.h"
#include "FilmSpectralProfile.h"
#include "Halation.h"
#include "Json.h"
#include "LayeredTransport.h"
#include "PrintPaper.h"
#include "PushPull.h"
#include "Reciprocity.h"

namespace fotufilm {

/// How granularity varies with density (Int32 raw values are an ABI).
enum class GrainDensityLaw : int32_t {
    dyeCloud = 0,
    silver = 1,
    dyeCloudSelwyn = 2,
    dyeCloudReversal = 3,
};
std::optional<GrainDensityLaw> grainDensityLawFromRawValue(int32_t raw);
inline int32_t rawValue(GrainDensityLaw law) { return static_cast<int32_t>(law); }

/// The density a sheet's RMS granularity figure was read at.
enum class GranularityReadDensity { net, gross };
const char* rawValue(GranularityReadDensity density);
std::optional<GranularityReadDensity> granularityReadDensityFromRawValue(const std::string& raw);

/// A chromogenic negative's granularity-against-density shape, three rows (R, G, B) of
/// `[amplitude, toeDensity, decayDensity, humpAmplitude, humpDensity, humpWidth]`.
struct GrainDensityProfile {
    static constexpr int coefficientCount = 6;

    /// One row of three or six coefficients shared by every record.
    static GrainDensityProfile shared(const std::vector<float>& row);
    /// Three rows of three or six coefficients; anything else is the family default.
    static GrainDensityProfile fromRecords(const std::vector<std::vector<float>>& records);

    /// Coefficients per record, red, green, blue — always three rows of six.
    const std::vector<std::vector<float>>& records() const { return records_; }

    /// Whether the three records share one row.
    bool isShared() const;
    /// Whether any record carries the second rise.
    bool hasHump() const;
    /// The variance at diffuse density `density` (fog included), in arbitrary units.
    float variance(int record, float density) const;

    /// The pack form: a flat row when shared, three rows otherwise.
    static GrainDensityProfile decode(const JsonValue& value, const std::string& path);

    bool operator==(const GrainDensityProfile& o) const { return records_ == o.records_; }
    bool operator!=(const GrainDensityProfile& o) const { return !(*this == o); }

private:
    std::vector<std::vector<float>> records_;
};

/// A capture layer that develops and inhibits, but forms no image dye of its own.
struct DonorCaptureLayer {
    /// The record's name as the publication prints it ("CL").
    std::string name;
    /// Spectral sensitivity on SpectralGrid.
    std::vector<float> sensitivity;
    /// The donor's own development curve.
    CharacteristicCurve curve;
    /// Inhibitor released into each dye-forming layer per unit of the donor's activation, R, G, B.
    std::vector<float> inhibition;
    /// Exponent of the donor's normalized Hill release curve.
    float releaseGamma = 1;
    /// Centre depth below the emulsion surface in micrometres; descriptive.
    std::optional<float> depthUM;
};

/// Full physical description of a film stock plus the print/scan stage used to turn the negative
/// back into a positive image.
struct FilmStock {
    static constexpr int supportedCaptureLayerMin = FilmStockLimits::supportedCaptureLayerMin;
    static constexpr int supportedCaptureLayerMax = FilmStockLimits::supportedCaptureLayerMax;
    static constexpr int supportedDonorLayerMin = FilmStockLimits::supportedDonorLayerMin;
    static constexpr int supportedDonorLayerMax = FilmStockLimits::supportedDonorLayerMax;
    static constexpr int dyeCount = FilmStockLimits::dyeCount;

    /// Developed fog a fresh emulsion carries, in density above the base's own dye.
    static constexpr float defaultGrainFogDensity = 0.03f;
    /// The Vision3 family shape.
    static const GrainDensityProfile& defaultGrainDensityProfile();
    static const std::vector<float>& defaultGrainReversalProfile();
    /// Radius of the 48 µm granularity aperture.
    static constexpr float granularityApertureRadiusMM = 0.024f;

    /// `FilmStock.init`'s parameters, with the upstream defaults. Fields without a default
    /// (name, sensitivity, curves, couplerInhibition, couplerDiffusionMM, grainStrength, grainSizeMM,
    /// grainLayerWeights, crystalGrainPopulation, halationStrength, paperCurve) must be set.
    struct Init {
        std::string name;
        std::vector<std::vector<float>> sensitivity;
        float referenceIlluminantKelvin = 5500;
        std::optional<FilmSpectralProfile> spectralProfile;
        std::vector<CharacteristicCurve> curves;
        std::vector<DonorCaptureLayer> donorLayers;
        float flare = 0.008f;
        std::vector<float> emulsionDiffusionMM = {0, 0, 0};
        std::vector<float> emulsionDiffusionSecondaryMM = {0, 0, 0};
        std::vector<float> emulsionDiffusionPrimaryShare = {1, 1, 1};
        float mtfLumaShare = 0;
        std::optional<float> lumaDiffusionMM;
        std::vector<std::vector<float>> couplerInhibition;
        std::vector<float> couplerReleaseGamma = {1, 1, 1};
        std::optional<CouplerGeometry> couplerGeometry;
        float couplerDiffusionMM = 0;
        float chromaticFringeAmount = 0;
        float chromaticFringeRadiusMM = 0.1f;
        float adjacencyStrength = 0;
        AdjacencyModel adjacencyModel = AdjacencyModel::gaussian;
        float adjacencyRadiusMM = 0;
        float grainStrength = 0;
        float grainSizeMM = 0;
        std::vector<float> grainLayerWeights;
        float grainLumaCorrelation = 0;
        float grainMottleShare = 0;
        float grainMottleSizeRatio = 3;
        std::vector<float> grainLayerSizeRatio = {1, 1, 1};
        std::optional<GrainDensityLaw> grainDensityLaw;
        std::optional<GrainDensityProfile> grainDensityProfile;
        std::optional<CrystalGrainPopulation> crystalGrainPopulation;
        std::vector<float> grainReversalProfile = FilmStock::defaultGrainReversalProfile();
        float grainFogDensity = FilmStock::defaultGrainFogDensity;
        std::optional<GranularityReadDensity> granularityReadDensity;
        std::vector<float> halationStrength;
        float halationLookScale = 1;
        float halationHazeMM = 0;
        std::optional<HalationProfile> halationProfile;
        std::optional<LayeredTransport> layeredTransport;
        std::optional<HalationProfile> estimatedHalationProfile;
        std::optional<std::vector<std::vector<float>>> halationReturnMatrix;
        std::optional<CharacteristicCurve> paperCurve;
        float paperMidDensity = 0.744f;
        std::optional<ReciprocityFailure> reciprocityFailure;
        std::optional<FilmDevelopmentProfile> developmentProfile;
        bool isMonochrome = false;
        bool isReversal = false;
        bool isReflectionPrint = false;
        std::optional<PrintPaper> nativePrintMedium;
    };

    explicit FilmStock(const Init& init);

    std::string name;
    /// Legacy 3x3 RGB exposure fallback, row-normalized.
    std::vector<std::vector<float>> sensitivity;
    /// The fixed scene illuminant this emulsion was balanced for, in kelvin.
    float referenceIlluminantKelvin;
    /// Full wavelength-domain capture and image-dye data.
    FilmSpectralProfile spectralProfile;
    /// Increasing dye-formation curves.
    std::vector<CharacteristicCurve> curves;
    /// Coated capture layers that develop and release inhibitor but form no image dye.
    std::vector<DonorCaptureLayer> donorLayers;
    /// Veiling glare of the taking lens as a fraction of the average scene exposure.
    float flare;
    /// Per-layer light diffusion inside the emulsion pack, Gaussian sigma in mm on the film.
    std::vector<float> emulsionDiffusionMM;
    /// How much of the emulsion MTF is separated onto a luminance channel.
    float mtfLumaShare;
    /// Gaussian sigma in mm for the luminance arm of the emulsion MTF.
    float lumaDiffusionMM;
    /// Optional second positive diffusion scale per layer.
    std::vector<float> emulsionDiffusionSecondaryMM;
    /// Fraction carried by `emulsionDiffusionMM`.
    std::vector<float> emulsionDiffusionPrimaryShare;
    /// Inhibition matrix K[receiver][donor].
    std::vector<std::vector<float>> couplerInhibition;
    /// Per-donor exponents for the normalized inhibitor-release curve.
    std::vector<float> couplerReleaseGamma;
    /// Diffusion distance of the inhibitors in mm on the film.
    float couplerDiffusionMM;
    /// Broad fraction of off-diagonal DIR transport.
    float chromaticFringeAmount;
    /// Broad Gaussian sigma on the film, in mm.
    float chromaticFringeRadiusMM;
    /// Strength of intra-layer adjacency.
    float adjacencyStrength;
    AdjacencyModel adjacencyModel;
    /// Reference Gaussian sigma in mm.
    float adjacencyRadiusMM;
    /// RMS granularity at the datasheet's read condition (17 is 0.017 here).
    float grainStrength;
    /// Grain clump radius in mm on the film.
    float grainSizeMM;
    /// Per-layer relative grain weights.
    std::vector<float> grainLayerWeights;
    /// Fraction of each layer's grain variance carried by a field common to all three layers.
    float grainLumaCorrelation;
    /// Fraction of granularity variance carried by a coarse second clump population.
    float grainMottleShare;
    /// The coarse population's clump radius as a multiple of `grainSizeMM`.
    float grainMottleSizeRatio;
    /// Per-layer clump radius as a multiple of `grainSizeMM`.
    std::vector<float> grainLayerSizeRatio;
    /// Which granularity-against-density law the emulsion obeys.
    GrainDensityLaw grainDensityLaw;
    /// The chromogenic negative's granularity-against-density shape per record.
    GrainDensityProfile grainDensityProfile;
    /// Authored crystal population parameters for the Film grain model.
    CrystalGrainPopulation crystalGrainPopulation;
    /// `[exponent p, shoulder density Ds]` for `dyeCloudReversal`.
    std::vector<float> grainReversalProfile;
    /// Density of the developed fog.
    float grainFogDensity;
    /// Which density 1.0 the published granularity was read at.
    GranularityReadDensity granularityReadDensity;
    /// Fraction of each layer's exposure that returns from the back of the base.
    std::vector<float> halationStrength;
    /// Presentation multiplier applied to `halationStrength`.
    float halationLookScale;
    /// Gaussian sigma in mm of the support's impurity scatter.
    float halationHazeMM;
    /// Independently calibrated spatial shape of the returned light.
    std::optional<HalationProfile> halationProfile;
    /// Versioned layered transport (decoded and validated; rendering is not ported).
    std::optional<LayeredTransport> layeredTransport;
    /// A provisional spatial shape, used only when explicitly enabled.
    std::optional<HalationProfile> estimatedHalationProfile;
    /// The spectral return matrix, receiver rows by source columns.
    std::optional<std::vector<std::vector<float>>> halationReturnMatrix;
    /// Characteristic curve of the print paper.
    CharacteristicCurve paperCurve;
    /// Legacy pack field retained for decoding and round trips.
    float paperMidDensity;
    /// Where this emulsion leaves the reciprocity law.
    std::optional<ReciprocityFailure> reciprocityFailure;
    /// Complete curves for non-reference development conditions.
    std::optional<FilmDevelopmentProfile> developmentProfile;
    /// True for black-and-white stocks.
    bool isMonochrome;
    /// True for direct-positive reversal stocks.
    bool isReversal;
    /// True for a direct positive viewed by reflection.
    bool isReflectionPrint;
    /// The finished positive this emulsion was designed to be printed onto.
    std::optional<PrintPaper> nativePrintMedium;

    /// Where `couplerInhibition` came from, when it came from somewhere.
    const std::optional<CouplerGeometry>& couplerGeometry() const { return couplerGeometry_; }
    /// Swift's `didSet`: setting a geometry also replaces `couplerInhibition` with its matrix.
    void setCouplerGeometry(std::optional<CouplerGeometry> geometry);

    int captureLayerCount() const { return static_cast<int>(curves.size() + donorLayers.size()); }

    std::optional<HalationProfile> resolvedHalationProfile(bool useEstimate) const;

    static std::vector<std::vector<float>> rowNormalized(const std::vector<std::vector<float>>& m);

    /// Expected dye-cloud clumps per square millimetre.
    float grainClumpsPerMM2() const;
    /// Covered fraction the datasheet's read density implies.
    float grainAnchorCoverage() const;
    /// Gaussian sigma that renders one clump of radius `grainSizeMM`.
    float grainClumpSigmaMM() const { return grainSizeMM / 2; }
    /// Fraction of clump-field granularity retained by the standard 48 µm aperture.
    static float granularityApertureResponse(float clumpSigmaMM);
    /// The density above base the published granularity is read at, per record.
    float granularityAnchorDensity(int layer) const;
    /// The activation the published granularity is read at.
    float granularityAnchorActivation(int layer) const;
    float dyeCloudGranularityVariance(int layer, float density) const;
    float silverGranularityVariance(float density) const;
    float reversalGranularityVariance(float density) const;
    /// Granularity at `netDensity`, relative to the datasheet read density.
    float grainDensityModulation(int layer, float netDensity) const;
    float developedDensity(int layer, float logExposure) const;

    /// Scales each layer's contrast around its calibrated midpoint relative to green.
    /// Needs `SpectralRuntime::neutralPrintingBalance` and `acceptsPrintCorrection`, both provided
    /// by the spectral/print layer.
    std::vector<float> printingContrastScale(float correction, PrintPaper paper = kDefaultPrintPaper) const;

    /// The stock a film-free develop names.
    static const FilmStock& noFilm();

    // PushPull.swift
    /// The exact non-reference conditions this stock can render, in slider order.
    std::vector<float> supportedDevelopmentStops() const;
    bool hasDevelopmentConditions() const;
    std::optional<float> matchingDevelopmentStop(float stops) const;
    bool supportsDevelopment(float stops) const;
    /// The stock after the requested development; throws FilmDevelopmentError.
    FilmStock pushed(float stops) const;

    // Reciprocity.swift
    /// Applies the stock's stated reciprocity correction for an exposure duration.
    FilmStock reciprocity(float shutterSeconds) const;

    // ExpiredFilm.swift
    /// The stock as `years` past its process-by date leaves it. 0 is `*this`, exactly.
    FilmStock expired(float years) const;

private:
    std::optional<CouplerGeometry> couplerGeometry_;
    const FilmDevelopmentCondition* developmentCondition(float stops) const;
};

}  // namespace fotufilm

#endif  // FOTUFILM_CORE_FILM_STOCK_H
