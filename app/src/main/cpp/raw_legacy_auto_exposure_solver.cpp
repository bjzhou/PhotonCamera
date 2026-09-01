#include <jni.h>

#include <algorithm>
#include <cmath>
#include <cstdint>
#include <limits>
#include <memory>
#include <new>
#include <optional>
#include <vector>

namespace {

constexpr int kGridColumns = 64;
constexpr int kGridRows = 48;
constexpr int kGridCellCount = kGridColumns * kGridRows;
constexpr float kMinExposureEv = -4.0f;
constexpr float kMaxExposureEv = 4.0f;
// CIE L* is linear near black and compressive in highlights. A fixed perceptual-lightness
// difference therefore remains well conditioned at both endpoints, unlike a luma ratio.
constexpr float kPerceptualLightnessTolerance = 0.01f;  // 1 L* unit.
constexpr float kRequiredGridMatchRate = 0.85f;
constexpr float kCoordinateReferenceContrastThreshold = 0.015f;  // 1.5 L* units.
constexpr float kCoordinateCandidateContrastThreshold = 0.005f;  // 0.5 L* units.
constexpr int kMinimumCoordinateComparedEdgeCount = 64;
constexpr float kRequiredCoordinateMatchRate = 0.70f;
constexpr float kCieEpsilon = 216.0f / 24389.0f;
constexpr float kCieKappa = 24389.0f / 27.0f;
// Reliability is derived only from the reference. A valid reference cell that clips in a
// candidate must remain an exposure error instead of disappearing from the comparison.
constexpr int kShadowWeightZeroSrgbCode = 4;
constexpr int kShadowWeightFullSrgbCode = 16;
constexpr int kHighlightWeightFullSrgbCode = 220;
constexpr int kHighlightWeightZeroSrgbCode = 240;
constexpr int kMinimumReliableCellCount = 32;
constexpr float kMinimumReferenceWeightSum = 16.0f;
// When a sufficiently large portrait is present, Kotlin supplies an aligned soft mask. Preserve
// enough background to keep the solve spatially constrained while making the portrait dominant.
constexpr float kPortraitPriorityTargetWeightFraction = 0.75f;
constexpr float kMinimumPortraitPriorityComponentWeight = 1.0e-4f;
constexpr float kHuberDeltaEv = 0.25f;
constexpr float kMaximumAbsoluteLog2Residual = 4.0f;
constexpr int kMinimumCurveFitCellCount = 24;
constexpr float kMinimumReferenceCurveSpanEv = 0.25f;
constexpr int kCurveFitIrlsIterationCount = 6;
constexpr float kHdrNetInitialProbeEv = 0.25f;
constexpr float kHdrNetMaximumStepEv = 0.5f;
constexpr float kHdrNetMinimumStepEv = 0.01f;
constexpr float kHdrNetMinimumTotalStepEv = -4.0f;
constexpr float kHdrNetMaximumTotalStepEv = 4.0f;
constexpr int kHdrNetMaximumCandidateCount = 6;
constexpr float kHdrNetDuplicateProbeToleranceEv = 0.005f;
constexpr float kHdrNetMinimumNormalizedDeterminant = 0.15f;
constexpr float kHdrNetMinimumNormalEquationDeterminant = 1.0e-8f;
constexpr float kHdrNetMinimumBroydenStepNormSquared = 1.0e-6f;
constexpr float kHdrNetInitialDamping = 0.05f;
constexpr float kHdrNetMinimumDamping = 0.005f;
constexpr float kHdrNetMaximumDamping = 1.0f;
constexpr float kMinimumCandidateStepEv = 0.01f;
constexpr float kMinimumInitialStepEv = 0.25f;
constexpr float kMaximumInitialStepEv = 2.0f;
constexpr float kRobustCorrectionToleranceEv = 0.025f;
constexpr float kMinimumUsefulResponseSlope = 0.05f;
constexpr int kMaximumSampleCount = 6;
constexpr float kScoreEqualityEpsilon = 0.000001f;
constexpr float kSrgbTransferThreshold = 0.04045f;
constexpr float kSrgbLinearScale = 12.92f;
constexpr float kSrgbTransferA = 0.055f;
constexpr float kSrgbTransferGamma = 2.4f;
constexpr float kDisplayLinearLumaFloor = 1.0f / (255.0f * 12.92f);
constexpr int kNativeResultSize = 22;

float SrgbToLinear(float value) {
    const float clamped = std::clamp(value, 0.0f, 1.0f);
    if (clamped <= kSrgbTransferThreshold) {
        return clamped / kSrgbLinearScale;
    }
    return std::pow(
        (clamped + kSrgbTransferA) / (1.0f + kSrgbTransferA),
        kSrgbTransferGamma);
}

float NormalizedPerceptualLightness(float display_linear_luma) {
    const float luma = std::clamp(display_linear_luma, 0.0f, 1.0f);
    const float lightness = luma <= kCieEpsilon
        ? kCieKappa * luma
        : 116.0f * std::cbrt(luma) - 16.0f;
    return lightness / 100.0f;
}

const float kShadowWeightZeroDisplayLinearLuma =
    SrgbToLinear(kShadowWeightZeroSrgbCode / 255.0f);
const float kShadowWeightFullDisplayLinearLuma =
    SrgbToLinear(kShadowWeightFullSrgbCode / 255.0f);
const float kHighlightWeightFullDisplayLinearLuma =
    SrgbToLinear(kHighlightWeightFullSrgbCode / 255.0f);
const float kHighlightWeightZeroDisplayLinearLuma =
    SrgbToLinear(kHighlightWeightZeroSrgbCode / 255.0f);

float SmoothStep(float edge0, float edge1, float value) {
    if (!(edge1 > edge0)) return value >= edge1 ? 1.0f : 0.0f;
    const float t = std::clamp((value - edge0) / (edge1 - edge0), 0.0f, 1.0f);
    return t * t * (3.0f - 2.0f * t);
}

float ReferenceReliabilityWeight(float luma) {
    const float shadow_weight = SmoothStep(
        kShadowWeightZeroDisplayLinearLuma,
        kShadowWeightFullDisplayLinearLuma,
        luma);
    const float highlight_weight = 1.0f - SmoothStep(
        kHighlightWeightFullDisplayLinearLuma,
        kHighlightWeightZeroDisplayLinearLuma,
        luma);
    return std::clamp(shadow_weight * highlight_weight, 0.0f, 1.0f);
}

float HuberLoss(float residual_ev) {
    const float absolute_residual = std::abs(residual_ev);
    if (absolute_residual <= kHuberDeltaEv) {
        return 0.5f * absolute_residual * absolute_residual / kHuberDeltaEv;
    }
    return absolute_residual - 0.5f * kHuberDeltaEv;
}

std::optional<float> DisplayLinearLuma(jint pixel) {
    const uint32_t argb = static_cast<uint32_t>(pixel);
    const int alpha = static_cast<int>((argb >> 24U) & 0xffU);
    if (alpha == 0) return std::nullopt;
    const float alpha_scale = alpha / 255.0f;
    const float r = SrgbToLinear(((argb >> 16U) & 0xffU) / 255.0f);
    const float g = SrgbToLinear(((argb >> 8U) & 0xffU) / 255.0f);
    const float b = SrgbToLinear((argb & 0xffU) / 255.0f);
    const float luma =
        (0.2126f * r + 0.7152f * g + 0.0722f * b) * alpha_scale;
    return std::isfinite(luma) ? std::optional<float>(luma) : std::nullopt;
}

bool BuildGridLumas(
    const jint* pixels,
    int width,
    int height,
    std::vector<float>* grid_lumas) {
    if (pixels == nullptr || grid_lumas == nullptr ||
        width < kGridColumns || height < kGridRows) {
        return false;
    }
    grid_lumas->assign(kGridCellCount, std::numeric_limits<float>::quiet_NaN());
    const int64_t pixel_count = static_cast<int64_t>(width) * height;
#pragma omp parallel for schedule(static) if(pixel_count >= 32768)
    for (int grid_y = 0; grid_y < kGridRows; ++grid_y) {
        const int y_begin =
            (grid_y * height + kGridRows - 1) / kGridRows;
        const int y_end =
            ((grid_y + 1) * height + kGridRows - 1) / kGridRows;
        for (int grid_x = 0; grid_x < kGridColumns; ++grid_x) {
            const int x_begin =
                (grid_x * width + kGridColumns - 1) / kGridColumns;
            const int x_end =
                ((grid_x + 1) * width + kGridColumns - 1) / kGridColumns;
            double sum = 0.0;
            int count = 0;
            for (int y = y_begin; y < y_end; ++y) {
                const int row_offset = y * width;
                for (int x = x_begin; x < x_end; ++x) {
                    const auto luma = DisplayLinearLuma(pixels[row_offset + x]);
                    if (!luma.has_value()) continue;
                    sum += static_cast<double>(*luma);
                    ++count;
                }
            }
            if (count > 0) {
                (*grid_lumas)[grid_y * kGridColumns + grid_x] =
                    static_cast<float>(sum / count);
            }
        }
    }
    return true;
}

bool BuildGridPortraitWeights(
    const jfloat* weights,
    int width,
    int height,
    std::vector<float>* grid_weights) {
    if (weights == nullptr || grid_weights == nullptr ||
        width < kGridColumns || height < kGridRows) {
        return false;
    }
    grid_weights->assign(kGridCellCount, std::numeric_limits<float>::quiet_NaN());
    const int64_t pixel_count = static_cast<int64_t>(width) * height;
#pragma omp parallel for schedule(static) if(pixel_count >= 32768)
    for (int grid_y = 0; grid_y < kGridRows; ++grid_y) {
        const int y_begin =
            (grid_y * height + kGridRows - 1) / kGridRows;
        const int y_end =
            ((grid_y + 1) * height + kGridRows - 1) / kGridRows;
        for (int grid_x = 0; grid_x < kGridColumns; ++grid_x) {
            const int x_begin =
                (grid_x * width + kGridColumns - 1) / kGridColumns;
            const int x_end =
                ((grid_x + 1) * width + kGridColumns - 1) / kGridColumns;
            double sum = 0.0;
            int count = 0;
            bool valid = true;
            for (int y = y_begin; y < y_end && valid; ++y) {
                const int row_offset = y * width;
                for (int x = x_begin; x < x_end; ++x) {
                    const float weight = weights[row_offset + x];
                    if (!std::isfinite(weight) || weight < 0.0f || weight > 1.0f) {
                        valid = false;
                        break;
                    }
                    sum += static_cast<double>(weight);
                    ++count;
                }
            }
            if (valid && count > 0) {
                (*grid_weights)[grid_y * kGridColumns + grid_x] =
                    static_cast<float>(sum / count);
            }
        }
    }
    return std::all_of(
        grid_weights->begin(),
        grid_weights->end(),
        [](float weight) { return std::isfinite(weight); });
}

struct WeightedValue {
    float value = 0.0f;
    float weight = 0.0f;
};

float WeightedQuantile(
    std::vector<WeightedValue> values,
    float weight_sum,
    float quantile) {
    if (values.empty() || !(weight_sum > 0.0f) || !std::isfinite(quantile)) {
        return std::numeric_limits<float>::quiet_NaN();
    }
    std::sort(
        values.begin(),
        values.end(),
        [](const WeightedValue& a, const WeightedValue& b) {
            return a.value < b.value;
        });
    const float target_weight = weight_sum * std::clamp(quantile, 0.0f, 1.0f);
    float cumulative_weight = 0.0f;
    for (const WeightedValue& weighted_value : values) {
        cumulative_weight += weighted_value.weight;
        if (cumulative_weight >= target_weight) return weighted_value.value;
    }
    return values.back().value;
}

float WeightedMedian(
    std::vector<WeightedValue>* values,
    float weight_sum) {
    if (values == nullptr || values->empty() || !(weight_sum > 0.0f)) {
        return std::numeric_limits<float>::quiet_NaN();
    }
    std::sort(
        values->begin(),
        values->end(),
        [](const WeightedValue& a, const WeightedValue& b) {
            return a.value < b.value;
        });
    const float target_weight = weight_sum * 0.5f;
    float cumulative_weight = 0.0f;
    for (const WeightedValue& weighted_value : *values) {
        cumulative_weight += weighted_value.weight;
        if (cumulative_weight >= target_weight) return weighted_value.value;
    }
    return values->back().value;
}

float RobustExposureCorrection(
    const std::vector<WeightedValue>& residuals,
    float weight_sum) {
    if (residuals.empty() || !(weight_sum > 0.0f)) {
        return std::numeric_limits<float>::quiet_NaN();
    }
    // This is the zero of the derivative of the same Huber loss used by IsBetter().
    // Predicting this correction keeps candidate generation and final selection aligned.
    const auto huber_score = [&](float correction_ev) {
        double score = 0.0;
        for (const WeightedValue& residual : residuals) {
            score += residual.weight * std::clamp(
                residual.value + correction_ev,
                -kHuberDeltaEv,
                kHuberDeltaEv);
        }
        return score;
    };

    float lower = -kMaximumAbsoluteLog2Residual;
    float upper = kMaximumAbsoluteLog2Residual;
    if (huber_score(lower) >= 0.0) return lower;
    if (huber_score(upper) <= 0.0) return upper;
    for (int iteration = 0; iteration < 24; ++iteration) {
        const float midpoint = (lower + upper) * 0.5f;
        if (huber_score(midpoint) > 0.0) {
            upper = midpoint;
        } else {
            lower = midpoint;
        }
    }
    return (lower + upper) * 0.5f;
}

struct MatchResult {
    int matched_cell_count = 0;
    int valid_cell_count = 0;
    int compared_cell_count = 0;
    float match_rate = 0.0f;
    float mean_absolute_perceptual_lightness_error =
        std::numeric_limits<float>::infinity();
    float mean_absolute_log2_ratio = std::numeric_limits<float>::infinity();
    float median_log2_ratio = std::numeric_limits<float>::quiet_NaN();
    float robust_log2_loss = std::numeric_limits<float>::infinity();
    float recommended_exposure_correction_ev =
        std::numeric_limits<float>::quiet_NaN();
    float reference_weight_sum = 0.0f;
    int coordinate_compared_edge_count = 0;
    float coordinate_match_rate = 0.0f;
    float center_error_ev = std::numeric_limits<float>::quiet_NaN();
    float span_error_ev = std::numeric_limits<float>::quiet_NaN();
    float curve_slope_error = std::numeric_limits<float>::quiet_NaN();
    float reference_p20_ev = std::numeric_limits<float>::quiet_NaN();
    float reference_p50_ev = std::numeric_limits<float>::quiet_NaN();
    float reference_p80_ev = std::numeric_limits<float>::quiet_NaN();
    int curve_fit_cell_count = 0;
    float short_target_correction_ev =
        std::numeric_limits<float>::quiet_NaN();
    float long_target_correction_ev =
        std::numeric_limits<float>::quiet_NaN();
};

float HighlightTargetErrorEv(const MatchResult& match) {
    return -match.short_target_correction_ev;
}

float ShadowTargetErrorEv(const MatchResult& match) {
    return -match.long_target_correction_ev;
}

enum class CoordinateMatchStatus : int {
    kIndeterminate = -1,
    kMismatched = 0,
    kMatched = 1,
};

CoordinateMatchStatus GetCoordinateMatchStatus(const MatchResult& match) {
    if (match.coordinate_compared_edge_count < kMinimumCoordinateComparedEdgeCount) {
        return CoordinateMatchStatus::kIndeterminate;
    }
    return match.coordinate_match_rate >= kRequiredCoordinateMatchRate
        ? CoordinateMatchStatus::kMatched
        : CoordinateMatchStatus::kMismatched;
}

bool HasAcceptableCoordinateMapping(const MatchResult& match) {
    return GetCoordinateMatchStatus(match) != CoordinateMatchStatus::kMismatched;
}

bool HasRequiredGridMatchRate(const MatchResult& match) {
    return match.match_rate >= kRequiredGridMatchRate &&
        HasAcceptableCoordinateMapping(match);
}

bool IsGridMatchBetter(const MatchResult& candidate, const MatchResult& current) {
    const bool candidate_coordinates_acceptable =
        HasAcceptableCoordinateMapping(candidate);
    const bool current_coordinates_acceptable =
        HasAcceptableCoordinateMapping(current);
    if (candidate_coordinates_acceptable != current_coordinates_acceptable) {
        return candidate_coordinates_acceptable;
    }
    const float match_rate_delta = candidate.match_rate - current.match_rate;
    if (std::abs(match_rate_delta) > kScoreEqualityEpsilon) {
        return match_rate_delta > 0.0f;
    }
    const float lightness_error_delta =
        candidate.mean_absolute_perceptual_lightness_error -
        current.mean_absolute_perceptual_lightness_error;
    if (std::abs(lightness_error_delta) > kScoreEqualityEpsilon) {
        return lightness_error_delta < 0.0f;
    }
    const float robust_loss_delta =
        candidate.robust_log2_loss - current.robust_log2_loss;
    if (std::abs(robust_loss_delta) > kScoreEqualityEpsilon) {
        return robust_loss_delta < 0.0f;
    }
    const float log_error_delta =
        candidate.mean_absolute_log2_ratio - current.mean_absolute_log2_ratio;
    return log_error_delta < -kScoreEqualityEpsilon;
}

enum class HdrNetProbeAxis : int {
    kBase = 0,
    kShortJacobian = 1,
    kLongJacobian = 2,
    kJointNewton = 3,
    kFallbackShort = 4,
};

struct HdrNetParameters {
    float short_ev = 0.0f;
    float ratio_ev = 0.0f;
    HdrNetProbeAxis axis = HdrNetProbeAxis::kBase;
    int broyden_origin_index = -1;
};

struct HdrNetProbe {
    float short_ev = 0.0f;
    float ratio_ev = 0.0f;
    MatchResult match;
};

struct HdrNetJacobian {
    float highlight_by_short_ev = 0.0f;
    float highlight_by_long_ev = 0.0f;
    float shadow_by_short_ev = 0.0f;
    float shadow_by_long_ev = 0.0f;
};

class HdrNetParameterSolver {
public:
    static std::unique_ptr<HdrNetParameterSolver> Create(
        float initial_hdr_ratio,
        float maximum_hdr_ratio) {
        if (!std::isfinite(initial_hdr_ratio) || initial_hdr_ratio < 1.0f ||
            !std::isfinite(maximum_hdr_ratio) ||
            maximum_hdr_ratio < initial_hdr_ratio) {
            return nullptr;
        }
        auto solver = std::unique_ptr<HdrNetParameterSolver>(
            new (std::nothrow) HdrNetParameterSolver());
        if (solver == nullptr) return nullptr;
        solver->minimum_ratio_ev_ = -std::log2(initial_hdr_ratio);
        solver->maximum_ratio_ev_ =
            std::log2(maximum_hdr_ratio / initial_hdr_ratio);
        return solver;
    }

    std::optional<HdrNetParameters> NextParameters() {
        if (finished_) return std::nullopt;
        if (pending_.has_value()) return pending_;
        if (probes_.empty()) {
            return Issue(0.0f, 0.0f, HdrNetProbeAxis::kBase, -1);
        }
        if (one_dimensional_fallback_) return NextFallbackParameters();

        if (probes_.size() == 1) {
            const HdrNetProbe& baseline = probes_.front();
            if (HasGridConverged(baseline)) {
                Finish();
                return std::nullopt;
            }
            if (!HasValidCurveFit(baseline.match)) {
                EnterOneDimensionalFallback();
                return NextFallbackParameters();
            }
            const auto short_probe = ChooseShortProbeEv(baseline.match);
            if (!short_probe.has_value()) {
                EnterOneDimensionalFallback();
                return NextFallbackParameters();
            }
            return Issue(
                *short_probe,
                -*short_probe,
                HdrNetProbeAxis::kShortJacobian,
                -1);
        }

        if (probes_.size() == 2) {
            if (!HasValidCurveFit(probes_.back().match)) {
                EnterOneDimensionalFallback();
                return NextFallbackParameters();
            }
            const auto long_probe = ChooseLongProbeEv(probes_.front().match);
            if (!long_probe.has_value()) {
                EnterOneDimensionalFallback();
                return NextFallbackParameters();
            }
            return Issue(
                0.0f,
                *long_probe,
                HdrNetProbeAxis::kLongJacobian,
                -1);
        }

        if (!jacobian_initialized_) {
            if (!BuildInitialJacobian()) {
                EnterOneDimensionalFallback();
                return NextFallbackParameters();
            }
            current_probe_index_ = BestProbeIndex();
            if (HasGridConverged(probes_[current_probe_index_])) {
                Finish();
                return std::nullopt;
            }
        }

        if (!IsJacobianIdentifiable()) {
            EnterOneDimensionalFallback();
            return NextFallbackParameters();
        }
        if (HasGridConverged(probes_[current_probe_index_])) {
            Finish();
            return std::nullopt;
        }
        return NextJointParameters();
    }

    bool Submit(
        float short_ev,
        float ratio_ev,
        const MatchResult& match) {
        if (!pending_.has_value() || !std::isfinite(short_ev) ||
            !std::isfinite(ratio_ev) ||
            std::abs(pending_->short_ev - short_ev) >
                kHdrNetDuplicateProbeToleranceEv ||
            std::abs(pending_->ratio_ev - ratio_ev) >
                kHdrNetDuplicateProbeToleranceEv) {
            return false;
        }
        const HdrNetParameters submitted = *pending_;
        const HdrNetProbe next{short_ev, ratio_ev, match};
        bool broyden_valid = true;
        if (submitted.axis == HdrNetProbeAxis::kJointNewton) {
            if (!jacobian_initialized_ ||
                submitted.broyden_origin_index < 0 ||
                submitted.broyden_origin_index >=
                    static_cast<int>(probes_.size())) {
                broyden_valid = false;
            } else {
                const HdrNetProbe& previous =
                    probes_[submitted.broyden_origin_index];
                const float previous_objective =
                    ProposalResidualObjective(previous.match);
                broyden_valid = BroydenUpdate(previous, next);
                if (broyden_valid) {
                    damping_ = ProposalResidualObjective(next.match) <=
                            previous_objective
                        ? std::max(kHdrNetMinimumDamping, damping_ * 0.5f)
                        : std::min(kHdrNetMaximumDamping, damping_ * 4.0f);
                }
            }
        }
        probes_.push_back(next);
        pending_.reset();
        if (HasRequiredGridMatchRate(match)) {
            Finish();
            return true;
        }
        // Residuals guide the next proposal, but the search remains anchored at the probe with
        // the highest grid success rate so a worse Newton step cannot drag later probes away.
        current_probe_index_ = BestProbeIndex();
        if (!broyden_valid || !HasValidCurveFit(match)) {
            EnterOneDimensionalFallback();
        }
        return true;
    }

    bool HasResult() const {
        return finished_ && selected_probe_index_ >= 0 &&
            selected_probe_index_ < static_cast<int>(probes_.size());
    }

    const HdrNetProbe& ResultProbe() const {
        return probes_[selected_probe_index_];
    }

    const HdrNetProbe& LastProbe() const { return probes_.back(); }
    int ProbeCount() const { return static_cast<int>(probes_.size()); }
    bool HasConverged() const { return converged_; }
    bool UsedOneDimensionalFallback() const {
        return one_dimensional_fallback_;
    }
    float JacobianNormalizedDeterminant() const {
        return jacobian_normalized_determinant_;
    }

private:
    static bool HasValidCurveFit(const MatchResult& match) {
        return std::isfinite(match.recommended_exposure_correction_ev) &&
            std::isfinite(match.center_error_ev) &&
            std::isfinite(match.span_error_ev) &&
            std::isfinite(match.curve_slope_error) &&
            std::isfinite(match.reference_p20_ev) &&
            std::isfinite(match.reference_p50_ev) &&
            std::isfinite(match.reference_p80_ev) &&
            match.reference_p80_ev > match.reference_p20_ev &&
            match.curve_fit_cell_count > 0 &&
            std::isfinite(HighlightTargetErrorEv(match)) &&
            std::isfinite(ShadowTargetErrorEv(match));
    }

    static float ProposalResidualObjective(const MatchResult& match) {
        if (!HasValidCurveFit(match)) {
            return std::numeric_limits<float>::infinity();
        }
        const float highlight = HighlightTargetErrorEv(match) /
            kRobustCorrectionToleranceEv;
        const float shadow = ShadowTargetErrorEv(match) /
            kRobustCorrectionToleranceEv;
        return highlight * highlight + shadow * shadow;
    }

    bool HasGridConverged(const HdrNetProbe& probe) const {
        return HasRequiredGridMatchRate(probe.match);
    }

    bool HasFallbackConverged(int probe_index) const {
        return HasGridConverged(probes_[probe_index]);
    }

    static std::optional<float> ChooseBoundedAxisProbeEv(
        float target_correction_ev,
        float minimum_ev,
        float maximum_ev) {
        if (!std::isfinite(target_correction_ev) ||
            !std::isfinite(minimum_ev) || !std::isfinite(maximum_ev) ||
            minimum_ev > maximum_ev) {
            return std::nullopt;
        }
        const float direction = target_correction_ev != 0.0f
            ? target_correction_ev
            : -kHdrNetInitialProbeEv;
        const float magnitude = std::clamp(
            std::abs(direction),
            kHdrNetInitialProbeEv,
            kHdrNetMaximumStepEv);
        const float preferred = std::clamp(
            std::copysign(magnitude, direction),
            minimum_ev,
            maximum_ev);
        if (std::abs(preferred) >= kHdrNetMinimumStepEv) return preferred;

        const float alternate_bound = direction < 0.0f ? maximum_ev : minimum_ev;
        if (std::abs(alternate_bound) < kHdrNetMinimumStepEv) {
            return std::nullopt;
        }
        return std::copysign(
            std::min(kHdrNetInitialProbeEv, std::abs(alternate_bound)),
            alternate_bound);
    }

    std::optional<float> ChooseShortProbeEv(const MatchResult& baseline) const {
        // Hold long EV at zero: ratio EV is the negative of this short-only probe.
        return ChooseBoundedAxisProbeEv(
            -HighlightTargetErrorEv(baseline),
            std::max(kHdrNetMinimumTotalStepEv, -maximum_ratio_ev_),
            std::min(kHdrNetMaximumTotalStepEv, -minimum_ratio_ev_));
    }

    std::optional<float> ChooseLongProbeEv(const MatchResult& baseline) const {
        // Hold short EV at zero: ratio EV equals this long-only probe.
        return ChooseBoundedAxisProbeEv(
            -ShadowTargetErrorEv(baseline),
            std::max(kHdrNetMinimumTotalStepEv, minimum_ratio_ev_),
            std::min(kHdrNetMaximumTotalStepEv, maximum_ratio_ev_));
    }

    bool BuildInitialJacobian() {
        if (probes_.size() < 3) return false;
        const HdrNetProbe& baseline = probes_[0];
        const HdrNetProbe& short_probe = probes_[1];
        const HdrNetProbe& long_probe = probes_[2];
        const float short_probe_long_ev =
            short_probe.short_ev + short_probe.ratio_ev;
        const float long_probe_long_ev =
            long_probe.short_ev + long_probe.ratio_ev;
        if (!HasValidCurveFit(short_probe.match) ||
            !HasValidCurveFit(long_probe.match) ||
            std::abs(short_probe.short_ev) < kHdrNetMinimumStepEv ||
            std::abs(short_probe_long_ev) >= kHdrNetDuplicateProbeToleranceEv ||
            std::abs(long_probe.short_ev) >= kHdrNetDuplicateProbeToleranceEv ||
            std::abs(long_probe_long_ev) < kHdrNetMinimumStepEv) {
            return false;
        }
        const float baseline_highlight = HighlightTargetErrorEv(baseline.match);
        const float baseline_shadow = ShadowTargetErrorEv(baseline.match);
        jacobian_ = HdrNetJacobian{
            (HighlightTargetErrorEv(short_probe.match) - baseline_highlight) /
                short_probe.short_ev,
            (HighlightTargetErrorEv(long_probe.match) - baseline_highlight) /
                long_probe_long_ev,
            (ShadowTargetErrorEv(short_probe.match) - baseline_shadow) /
                short_probe.short_ev,
            (ShadowTargetErrorEv(long_probe.match) - baseline_shadow) /
                long_probe_long_ev,
        };
        jacobian_initialized_ = AllFinite(jacobian_);
        UpdateJacobianDeterminant();
        return jacobian_initialized_ && IsJacobianIdentifiable();
    }

    static bool AllFinite(const HdrNetJacobian& jacobian) {
        return std::isfinite(jacobian.highlight_by_short_ev) &&
            std::isfinite(jacobian.highlight_by_long_ev) &&
            std::isfinite(jacobian.shadow_by_short_ev) &&
            std::isfinite(jacobian.shadow_by_long_ev);
    }

    void UpdateJacobianDeterminant() {
        if (!AllFinite(jacobian_)) {
            jacobian_normalized_determinant_ =
                std::numeric_limits<float>::quiet_NaN();
            return;
        }
        const float short_norm = std::hypot(
            jacobian_.highlight_by_short_ev,
            jacobian_.shadow_by_short_ev);
        const float long_norm = std::hypot(
            jacobian_.highlight_by_long_ev,
            jacobian_.shadow_by_long_ev);
        if (!(short_norm > 0.0f) || !(long_norm > 0.0f)) {
            jacobian_normalized_determinant_ = 0.0f;
            return;
        }
        jacobian_normalized_determinant_ = std::abs(
            jacobian_.highlight_by_short_ev * jacobian_.shadow_by_long_ev -
            jacobian_.highlight_by_long_ev * jacobian_.shadow_by_short_ev) /
            (short_norm * long_norm);
    }

    bool IsJacobianIdentifiable() const {
        if (!jacobian_initialized_ || !AllFinite(jacobian_)) return false;
        const float short_norm = std::hypot(
            jacobian_.highlight_by_short_ev,
            jacobian_.shadow_by_short_ev);
        const float long_norm = std::hypot(
            jacobian_.highlight_by_long_ev,
            jacobian_.shadow_by_long_ev);
        return short_norm >= kMinimumUsefulResponseSlope &&
            long_norm >= kMinimumUsefulResponseSlope &&
            jacobian_normalized_determinant_ >=
                kHdrNetMinimumNormalizedDeterminant;
    }

    bool DampedNewtonStep(
        const MatchResult& match,
        float* short_step,
        float* long_step) const {
        if (short_step == nullptr || long_step == nullptr) return false;
        const float a00 =
            jacobian_.highlight_by_short_ev *
                jacobian_.highlight_by_short_ev +
            jacobian_.shadow_by_short_ev *
                jacobian_.shadow_by_short_ev + damping_;
        const float a01 =
            jacobian_.highlight_by_short_ev *
                jacobian_.highlight_by_long_ev +
            jacobian_.shadow_by_short_ev *
                jacobian_.shadow_by_long_ev;
        const float a11 =
            jacobian_.highlight_by_long_ev *
                jacobian_.highlight_by_long_ev +
            jacobian_.shadow_by_long_ev *
                jacobian_.shadow_by_long_ev + damping_;
        const float highlight_error = HighlightTargetErrorEv(match);
        const float shadow_error = ShadowTargetErrorEv(match);
        const float gradient_short =
            jacobian_.highlight_by_short_ev * highlight_error +
            jacobian_.shadow_by_short_ev * shadow_error;
        const float gradient_long =
            jacobian_.highlight_by_long_ev * highlight_error +
            jacobian_.shadow_by_long_ev * shadow_error;
        const float determinant = a00 * a11 - a01 * a01;
        if (!std::isfinite(determinant) ||
            determinant <= kHdrNetMinimumNormalEquationDeterminant) {
            return false;
        }
        *short_step =
            -(a11 * gradient_short - a01 * gradient_long) / determinant;
        *long_step =
            -(-a01 * gradient_short + a00 * gradient_long) / determinant;
        return std::isfinite(*short_step) && std::isfinite(*long_step);
    }

    bool BroydenUpdate(
        const HdrNetProbe& previous,
        const HdrNetProbe& next) {
        if (!HasValidCurveFit(next.match)) return false;
        const float short_step = next.short_ev - previous.short_ev;
        const float long_step =
            (next.short_ev + next.ratio_ev) -
            (previous.short_ev + previous.ratio_ev);
        const float step_norm_squared =
            short_step * short_step + long_step * long_step;
        if (step_norm_squared < kHdrNetMinimumBroydenStepNormSquared) {
            return false;
        }
        const float highlight_remainder =
            HighlightTargetErrorEv(next.match) -
            HighlightTargetErrorEv(previous.match) -
            (jacobian_.highlight_by_short_ev * short_step +
                jacobian_.highlight_by_long_ev * long_step);
        const float shadow_remainder =
            ShadowTargetErrorEv(next.match) -
            ShadowTargetErrorEv(previous.match) -
            (jacobian_.shadow_by_short_ev * short_step +
                jacobian_.shadow_by_long_ev * long_step);
        jacobian_.highlight_by_short_ev +=
            highlight_remainder * short_step / step_norm_squared;
        jacobian_.highlight_by_long_ev +=
            highlight_remainder * long_step / step_norm_squared;
        jacobian_.shadow_by_short_ev +=
            shadow_remainder * short_step / step_norm_squared;
        jacobian_.shadow_by_long_ev +=
            shadow_remainder * long_step / step_norm_squared;
        jacobian_initialized_ = AllFinite(jacobian_);
        UpdateJacobianDeterminant();
        return jacobian_initialized_;
    }

    int BestProbeIndex() const {
        int best_index = 0;
        for (size_t index = 1; index < probes_.size(); ++index) {
            if (IsGridMatchBetter(
                    probes_[index].match,
                    probes_[best_index].match)) {
                best_index = static_cast<int>(index);
            }
        }
        return best_index;
    }

    int BestFallbackProbeIndex(int* frozen_probe_count) const {
        int best_index = -1;
        int count = 0;
        for (size_t index = 0; index < probes_.size(); ++index) {
            const HdrNetProbe& probe = probes_[index];
            if (std::abs(probe.ratio_ev) >=
                kHdrNetDuplicateProbeToleranceEv) {
                continue;
            }
            ++count;
            if (best_index < 0 || IsGridMatchBetter(
                    probe.match,
                    probes_[best_index].match)) {
                best_index = static_cast<int>(index);
            }
        }
        if (frozen_probe_count != nullptr) *frozen_probe_count = count;
        return best_index >= 0 ? best_index : 0;
    }

    std::optional<float> HuberCorrectionSlope() const {
        int count = 0;
        double mean_short = 0.0;
        double mean_correction = 0.0;
        for (const HdrNetProbe& probe : probes_) {
            if (std::abs(probe.ratio_ev) >=
                kHdrNetDuplicateProbeToleranceEv) {
                continue;
            }
            mean_short += probe.short_ev;
            mean_correction += probe.match.recommended_exposure_correction_ev;
            ++count;
        }
        if (count < 2) return std::nullopt;
        mean_short /= count;
        mean_correction /= count;
        double covariance = 0.0;
        double variance = 0.0;
        for (const HdrNetProbe& probe : probes_) {
            if (std::abs(probe.ratio_ev) >=
                kHdrNetDuplicateProbeToleranceEv) {
                continue;
            }
            const double centered_short = probe.short_ev - mean_short;
            covariance += centered_short *
                (probe.match.recommended_exposure_correction_ev -
                    mean_correction);
            variance += centered_short * centered_short;
        }
        if (variance < kHdrNetMinimumStepEv * kHdrNetMinimumStepEv) {
            return std::nullopt;
        }
        const float slope = static_cast<float>(covariance / variance);
        return std::isfinite(slope) ? std::optional<float>(slope) : std::nullopt;
    }

    bool ProjectSemanticExposureAdjustments(
        float* short_ev,
        float* long_ev) const {
        if (short_ev == nullptr || long_ev == nullptr ||
            !std::isfinite(*short_ev) || !std::isfinite(*long_ev)) {
            return false;
        }
        *short_ev = std::clamp(
            *short_ev,
            kHdrNetMinimumTotalStepEv,
            kHdrNetMaximumTotalStepEv);
        *long_ev = std::clamp(
            *long_ev,
            kHdrNetMinimumTotalStepEv,
            kHdrNetMaximumTotalStepEv);

        float ratio_ev = *long_ev - *short_ev;
        if (ratio_ev < minimum_ratio_ev_) {
            const float half_violation = (minimum_ratio_ev_ - ratio_ev) * 0.5f;
            *short_ev -= half_violation;
            *long_ev += half_violation;
        } else if (ratio_ev > maximum_ratio_ev_) {
            const float half_violation = (ratio_ev - maximum_ratio_ev_) * 0.5f;
            *short_ev += half_violation;
            *long_ev -= half_violation;
        }
        *short_ev = std::clamp(
            *short_ev,
            kHdrNetMinimumTotalStepEv,
            kHdrNetMaximumTotalStepEv);
        *long_ev = std::clamp(
            *long_ev,
            kHdrNetMinimumTotalStepEv,
            kHdrNetMaximumTotalStepEv);

        ratio_ev = *long_ev - *short_ev;
        if (ratio_ev < minimum_ratio_ev_) {
            const float adjusted_long = *short_ev + minimum_ratio_ev_;
            if (adjusted_long <= kHdrNetMaximumTotalStepEv) {
                *long_ev = adjusted_long;
            } else {
                *short_ev = *long_ev - minimum_ratio_ev_;
            }
        } else if (ratio_ev > maximum_ratio_ev_) {
            const float adjusted_long = *short_ev + maximum_ratio_ev_;
            if (adjusted_long >= kHdrNetMinimumTotalStepEv) {
                *long_ev = adjusted_long;
            } else {
                *short_ev = *long_ev - maximum_ratio_ev_;
            }
        }
        ratio_ev = *long_ev - *short_ev;
        return *short_ev >= kHdrNetMinimumTotalStepEv &&
            *short_ev <= kHdrNetMaximumTotalStepEv &&
            *long_ev >= kHdrNetMinimumTotalStepEv &&
            *long_ev <= kHdrNetMaximumTotalStepEv &&
            ratio_ev >= minimum_ratio_ev_ - kHdrNetDuplicateProbeToleranceEv &&
            ratio_ev <= maximum_ratio_ev_ + kHdrNetDuplicateProbeToleranceEv;
    }

    std::optional<HdrNetParameters> NextJointParameters() {
        if (static_cast<int>(probes_.size()) >= kHdrNetMaximumCandidateCount) {
            Finish();
            return std::nullopt;
        }
        float short_step = 0.0f;
        float long_step = 0.0f;
        const HdrNetProbe& current = probes_[current_probe_index_];
        if (!DampedNewtonStep(current.match, &short_step, &long_step)) {
            Finish();
            return std::nullopt;
        }
        float next_short = current.short_ev + std::clamp(
            short_step,
            -kHdrNetMaximumStepEv,
            kHdrNetMaximumStepEv);
        float next_long = current.short_ev + current.ratio_ev + std::clamp(
            long_step,
            -kHdrNetMaximumStepEv,
            kHdrNetMaximumStepEv);
        if (!ProjectSemanticExposureAdjustments(&next_short, &next_long)) {
            Finish();
            return std::nullopt;
        }
        const auto issued = Issue(
            next_short,
            next_long - next_short,
            HdrNetProbeAxis::kJointNewton,
            current_probe_index_);
        if (!issued.has_value()) Finish();
        return issued;
    }

    std::optional<HdrNetParameters> NextFallbackParameters() {
        int frozen_probe_count = 0;
        const int current_index = BestFallbackProbeIndex(&frozen_probe_count);
        if (HasFallbackConverged(current_index)) {
            Finish();
            return std::nullopt;
        }
        if (static_cast<int>(probes_.size()) >= kHdrNetMaximumCandidateCount) {
            Finish();
            return std::nullopt;
        }
        const HdrNetProbe& current = probes_[current_index];
        const auto response_slope = HuberCorrectionSlope();
        float short_step = current.match.recommended_exposure_correction_ev;
        if (response_slope.has_value() &&
            *response_slope < -kMinimumUsefulResponseSlope) {
            short_step =
                -current.match.recommended_exposure_correction_ev /
                *response_slope;
        }
        if (!std::isfinite(short_step)) {
            Finish();
            return std::nullopt;
        }
        short_step = std::clamp(
            short_step,
            -kHdrNetMaximumStepEv,
            kHdrNetMaximumStepEv);
        if (std::abs(short_step) < kHdrNetMinimumStepEv) {
            short_step = std::copysign(kHdrNetMinimumStepEv, short_step);
        }
        const float next_short = std::clamp(
            current.short_ev + short_step,
            kHdrNetMinimumTotalStepEv,
            kHdrNetMaximumTotalStepEv);
        const auto issued = Issue(
            next_short,
            0.0f,
            HdrNetProbeAxis::kFallbackShort,
            -1);
        if (!issued.has_value()) Finish();
        return issued;
    }

    std::optional<HdrNetParameters> Issue(
        float short_ev,
        float ratio_ev,
        HdrNetProbeAxis axis,
        int broyden_origin_index) {
        if (!std::isfinite(short_ev) || !std::isfinite(ratio_ev) ||
            short_ev < kHdrNetMinimumTotalStepEv ||
            short_ev > kHdrNetMaximumTotalStepEv ||
            ratio_ev < minimum_ratio_ev_ || ratio_ev > maximum_ratio_ev_) {
            return std::nullopt;
        }
        const bool duplicate = std::any_of(
            probes_.begin(),
            probes_.end(),
            [&](const HdrNetProbe& probe) {
                return std::abs(probe.short_ev - short_ev) <
                        kHdrNetDuplicateProbeToleranceEv &&
                    std::abs(probe.ratio_ev - ratio_ev) <
                        kHdrNetDuplicateProbeToleranceEv;
            });
        if (duplicate) return std::nullopt;
        pending_ = HdrNetParameters{
            short_ev,
            ratio_ev,
            axis,
            broyden_origin_index,
        };
        return pending_;
    }

    void EnterOneDimensionalFallback() {
        one_dimensional_fallback_ = true;
        jacobian_initialized_ = false;
    }

    void Finish() {
        if (probes_.empty()) return;
        // Fallback restrictions only control which probes are generated. The final result is
        // always the best spatially valid grid match among every evaluated probe.
        selected_probe_index_ = BestProbeIndex();
        converged_ = HasGridConverged(probes_[selected_probe_index_]);
        finished_ = true;
        pending_.reset();
    }

    float minimum_ratio_ev_ = 0.0f;
    float maximum_ratio_ev_ = 0.0f;
    float damping_ = kHdrNetInitialDamping;
    float jacobian_normalized_determinant_ =
        std::numeric_limits<float>::quiet_NaN();
    bool jacobian_initialized_ = false;
    bool one_dimensional_fallback_ = false;
    bool converged_ = false;
    bool finished_ = false;
    int current_probe_index_ = 0;
    int selected_probe_index_ = -1;
    HdrNetJacobian jacobian_;
    std::optional<HdrNetParameters> pending_;
    std::vector<HdrNetProbe> probes_;
};

struct Sample {
    float exposure_ev = 0.0f;
    MatchResult match;
};

struct Candidate {
    float exposure_ev = 0.0f;
    float acquisition_score = -std::numeric_limits<float>::infinity();
};

class ExposureSolver {
public:
    static std::unique_ptr<ExposureSolver> Create(
        const jint* reference_pixels,
        const jfloat* portrait_priority_weights,
        int width,
        int height) {
        auto solver = std::unique_ptr<ExposureSolver>(new (std::nothrow) ExposureSolver());
        if (!solver ||
            !solver->Initialize(
                reference_pixels,
                portrait_priority_weights,
                width,
                height)) {
            return nullptr;
        }
        return solver;
    }

    std::optional<float> NextExposureEv() {
        if (finished_) return std::nullopt;
        if (pending_exposure_ev_.has_value()) return pending_exposure_ev_;
        if (static_cast<int>(samples_.size()) >= kMaximumSampleCount) {
            finished_ = true;
            return std::nullopt;
        }
        if (samples_.empty()) return IssueCandidate(0.0f);

        if (HasConverged()) {
            finished_ = true;
            return std::nullopt;
        }

        const auto next = SelectNextCandidate();
        if (!next.has_value()) {
            finished_ = true;
            return std::nullopt;
        }
        return IssueCandidate(*next);
    }

    bool SubmitCandidate(
        float exposure_ev,
        const jint* pixels,
        int width,
        int height) {
        if (!IsExpectedCandidate(exposure_ev) ||
            width != width_ || height != height_) {
            return false;
        }
        MatchResult match;
        if (!Evaluate(pixels, width, height, &match)) return false;
        return CommitCandidate(exposure_ev, match);
    }

    bool StartHdrNetSolve(
        float initial_hdr_ratio,
        float maximum_hdr_ratio) {
        if (hdrnet_solver_ != nullptr) return false;
        hdrnet_solver_ = HdrNetParameterSolver::Create(
            initial_hdr_ratio,
            maximum_hdr_ratio);
        return hdrnet_solver_ != nullptr;
    }

    std::optional<HdrNetParameters> NextHdrNetParameters() {
        return hdrnet_solver_ != nullptr
            ? hdrnet_solver_->NextParameters()
            : std::nullopt;
    }

    bool SubmitHdrNetCandidate(
        float short_ev,
        float ratio_ev,
        const float* display_linear_lumas,
        int columns,
        int rows) {
        if (hdrnet_solver_ == nullptr || display_linear_lumas == nullptr ||
            columns != kGridColumns || rows != kGridRows) {
            return false;
        }
        MatchResult match;
        if (!EvaluateGridLumas(
                display_linear_lumas,
                columns * rows,
                &match,
                true)) {
            return false;
        }
        return hdrnet_solver_->Submit(short_ev, ratio_ev, match);
    }

    bool HasHdrNetResult() const {
        return hdrnet_solver_ != nullptr && hdrnet_solver_->HasResult();
    }

    const HdrNetParameterSolver& HdrNetSolver() const {
        return *hdrnet_solver_;
    }

    bool SubmitCandidate(
        float exposure_ev,
        const float* display_linear_lumas,
        int columns,
        int rows) {
        if (!IsExpectedCandidate(exposure_ev) || display_linear_lumas == nullptr ||
            columns != kGridColumns || rows != kGridRows) {
            return false;
        }
        MatchResult match;
        if (!EvaluateGridLumas(
                display_linear_lumas,
                columns * rows,
                &match)) {
            return false;
        }
        return CommitCandidate(exposure_ev, match);
    }

    bool ConfigureExposureBounds(float minimum_ev, float maximum_ev) {
        if (!std::isfinite(minimum_ev) || !std::isfinite(maximum_ev) ||
            pending_exposure_ev_.has_value()) {
            return false;
        }
        const float safe_minimum = std::clamp(minimum_ev, kMinExposureEv, kMaxExposureEv);
        const float safe_maximum = std::clamp(maximum_ev, kMinExposureEv, kMaxExposureEv);
        // A RAW highlight guard may require the complete search range to stay below zero. The
        // first candidate is still issued from zero and clamped into the configured interval.
        if (safe_minimum > safe_maximum) {
            return false;
        }
        minimum_exposure_ev_ = safe_minimum;
        maximum_exposure_ev_ = safe_maximum;
        return true;
    }

    bool HasResult() const { return !samples_.empty(); }

    bool HasConverged() const {
        if (!HasResult()) return false;
        return HasRequiredGridMatchRate(BestSample().match);
    }

    const Sample& BestSample() const {
        return *std::max_element(
            samples_.begin(),
            samples_.end(),
            [](const Sample& a, const Sample& b) { return IsBetter(b, a); });
    }

    const Sample& LastSample() const { return samples_.back(); }
    int SampleCount() const { return static_cast<int>(samples_.size()); }
    int ExcludedShadowCellCount() const { return excluded_shadow_cell_count_; }
    int ExcludedHighlightCellCount() const { return excluded_highlight_cell_count_; }

private:
    bool IsExpectedCandidate(float exposure_ev) const {
        return pending_exposure_ev_.has_value() && std::isfinite(exposure_ev) &&
            std::abs(*pending_exposure_ev_ - exposure_ev) <=
                kMinimumCandidateStepEv * 0.1f;
    }

    bool CommitCandidate(float exposure_ev, const MatchResult& match) {
        samples_.push_back(Sample{exposure_ev, match});
        pending_exposure_ev_.reset();
        return true;
    }

    bool Initialize(
        const jint* pixels,
        const jfloat* portrait_priority_weights,
        int width,
        int height) {
        if (!BuildGridLumas(pixels, width, height, &reference_grid_lumas_)) {
            return false;
        }
        std::vector<float> portrait_grid_weights;
        if (portrait_priority_weights != nullptr &&
            !BuildGridPortraitWeights(
                portrait_priority_weights,
                width,
                height,
                &portrait_grid_weights)) {
            return false;
        }
        width_ = width;
        height_ = height;
        for (int cell = 0; cell < kGridCellCount; ++cell) {
            const float luma = reference_grid_lumas_[cell];
            if (!std::isfinite(luma)) continue;
            if (luma <= kShadowWeightZeroDisplayLinearLuma) {
                ++excluded_shadow_cell_count_;
                continue;
            }
            if (luma >= kHighlightWeightZeroDisplayLinearLuma) {
                ++excluded_highlight_cell_count_;
                continue;
            }
            const float weight = ReferenceReliabilityWeight(luma);
            if (!(weight > 0.0f)) continue;
            eligible_cell_indices_.push_back(cell);
            reference_cell_weights_.push_back(weight);
            reference_weight_sum_ += weight;
        }
        if (!portrait_grid_weights.empty() && reference_weight_sum_ > 0.0f) {
            double portrait_component_weight = 0.0;
            double background_component_weight = 0.0;
            for (size_t index = 0; index < eligible_cell_indices_.size(); ++index) {
                const float base_weight = reference_cell_weights_[index];
                const float portrait_weight =
                    portrait_grid_weights[eligible_cell_indices_[index]];
                portrait_component_weight += base_weight * portrait_weight;
                background_component_weight += base_weight * (1.0f - portrait_weight);
            }
            const double total_component_weight =
                portrait_component_weight + background_component_weight;
            const double natural_portrait_fraction = total_component_weight > 0.0
                ? portrait_component_weight / total_component_weight
                : 0.0;
            if (portrait_component_weight >= kMinimumPortraitPriorityComponentWeight &&
                background_component_weight >= kMinimumPortraitPriorityComponentWeight &&
                natural_portrait_fraction < kPortraitPriorityTargetWeightFraction) {
                const double portrait_scale =
                    kPortraitPriorityTargetWeightFraction * total_component_weight /
                    portrait_component_weight;
                const double background_scale =
                    (1.0 - kPortraitPriorityTargetWeightFraction) * total_component_weight /
                    background_component_weight;
                reference_weight_sum_ = 0.0f;
                for (size_t index = 0; index < eligible_cell_indices_.size(); ++index) {
                    const float portrait_weight =
                        portrait_grid_weights[eligible_cell_indices_[index]];
                    const float priority_scale = static_cast<float>(
                        portrait_weight * portrait_scale +
                        (1.0f - portrait_weight) * background_scale);
                    reference_cell_weights_[index] *= priority_scale;
                    reference_weight_sum_ += reference_cell_weights_[index];
                }
            }
        }
        if (static_cast<int>(eligible_cell_indices_.size()) < kMinimumReliableCellCount ||
            reference_weight_sum_ < kMinimumReferenceWeightSum) {
            return false;
        }
        std::vector<WeightedValue> reference_log2_lumas;
        reference_log2_lumas.reserve(eligible_cell_indices_.size());
        reference_cell_log2_lumas_.reserve(eligible_cell_indices_.size());
        for (size_t index = 0; index < eligible_cell_indices_.size(); ++index) {
            const float luma = reference_grid_lumas_[eligible_cell_indices_[index]];
            const float log2_luma = std::log2(
                std::max(luma, kDisplayLinearLumaFloor));
            const float weight = reference_cell_weights_[index];
            reference_cell_log2_lumas_.push_back(log2_luma);
            reference_log2_lumas.push_back(WeightedValue{log2_luma, weight});
        }
        reference_p20_ev_ = WeightedQuantile(
            reference_log2_lumas,
            reference_weight_sum_,
            0.2f);
        reference_p50_ev_ = WeightedQuantile(
            reference_log2_lumas,
            reference_weight_sum_,
            0.5f);
        reference_p80_ev_ = WeightedQuantile(
            reference_log2_lumas,
            reference_weight_sum_,
            0.8f);
        return std::isfinite(reference_p20_ev_) &&
            std::isfinite(reference_p50_ev_) &&
            std::isfinite(reference_p80_ev_) &&
            reference_p80_ev_ >= reference_p20_ev_;
    }

    bool FitReferenceCurve(
        const std::vector<WeightedValue>& log2_ratios,
        MatchResult* output) const {
        if (output == nullptr ||
            log2_ratios.size() != reference_cell_log2_lumas_.size()) {
            return false;
        }
        output->reference_p20_ev = reference_p20_ev_;
        output->reference_p50_ev = reference_p50_ev_;
        output->reference_p80_ev = reference_p80_ev_;
        const float reference_span_ev = reference_p80_ev_ - reference_p20_ev_;
        if (!(reference_span_ev >= kMinimumReferenceCurveSpanEv)) return false;

        std::vector<int> fit_indices;
        fit_indices.reserve(log2_ratios.size());
        for (size_t index = 0; index < log2_ratios.size(); ++index) {
            const float reference_ev = reference_cell_log2_lumas_[index];
            if (reference_ev >= reference_p20_ev_ && reference_ev <= reference_p80_ev_) {
                fit_indices.push_back(static_cast<int>(index));
            }
        }
        output->curve_fit_cell_count = static_cast<int>(fit_indices.size());
        if (output->curve_fit_cell_count < kMinimumCurveFitCellCount) return false;

        float center_error_ev = 0.0f;
        float slope_error = 0.0f;
        for (int iteration = 0; iteration < kCurveFitIrlsIterationCount; ++iteration) {
            double sum_weight = 0.0;
            double sum_weighted_x = 0.0;
            double sum_weighted_x2 = 0.0;
            double sum_weighted_y = 0.0;
            double sum_weighted_xy = 0.0;
            for (int fit_index : fit_indices) {
                const float x =
                    reference_cell_log2_lumas_[fit_index] - reference_p50_ev_;
                const float y = log2_ratios[fit_index].value;
                float weight = log2_ratios[fit_index].weight;
                if (iteration > 0) {
                    const float fit_residual =
                        y - (center_error_ev + slope_error * x);
                    const float absolute_residual = std::abs(fit_residual);
                    if (absolute_residual > kHuberDeltaEv) {
                        weight *= kHuberDeltaEv / absolute_residual;
                    }
                }
                sum_weight += weight;
                sum_weighted_x += weight * x;
                sum_weighted_x2 += weight * x * x;
                sum_weighted_y += weight * y;
                sum_weighted_xy += weight * x * y;
            }
            const double determinant =
                sum_weight * sum_weighted_x2 -
                sum_weighted_x * sum_weighted_x;
            if (!(sum_weight > 0.0) ||
                determinant <= std::numeric_limits<double>::epsilon() *
                    sum_weight * std::max(sum_weighted_x2, 1.0)) {
                return false;
            }
            const float next_center = static_cast<float>(
                (sum_weighted_y * sum_weighted_x2 -
                    sum_weighted_x * sum_weighted_xy) /
                determinant);
            const float next_slope = static_cast<float>(
                (sum_weight * sum_weighted_xy -
                    sum_weighted_x * sum_weighted_y) /
                determinant);
            if (!std::isfinite(next_center) || !std::isfinite(next_slope)) {
                return false;
            }
            const bool stable = iteration > 0 &&
                std::abs(next_center - center_error_ev) < 0.0001f &&
                std::abs(next_slope - slope_error) < 0.0001f;
            center_error_ev = next_center;
            slope_error = next_slope;
            if (stable) break;
        }
        output->center_error_ev = center_error_ev;
        output->curve_slope_error = slope_error;
        output->span_error_ev = slope_error * reference_span_ev;

        std::vector<WeightedValue> highlight_residuals;
        std::vector<WeightedValue> shadow_residuals;
        highlight_residuals.reserve(log2_ratios.size() / 4);
        shadow_residuals.reserve(log2_ratios.size() / 4);
        float highlight_weight_sum = 0.0f;
        float shadow_weight_sum = 0.0f;
        for (size_t index = 0; index < log2_ratios.size(); ++index) {
            const float reference_ev = reference_cell_log2_lumas_[index];
            const WeightedValue residual = log2_ratios[index];
            if (reference_ev >= reference_p80_ev_) {
                highlight_residuals.push_back(residual);
                highlight_weight_sum += residual.weight;
            }
            if (reference_ev <= reference_p20_ev_) {
                shadow_residuals.push_back(residual);
                shadow_weight_sum += residual.weight;
            }
        }
        if (highlight_residuals.size() < kMinimumCurveFitCellCount ||
            shadow_residuals.size() < kMinimumCurveFitCellCount) {
            return false;
        }
        output->short_target_correction_ev = RobustExposureCorrection(
            highlight_residuals,
            highlight_weight_sum);
        output->long_target_correction_ev = RobustExposureCorrection(
            shadow_residuals,
            shadow_weight_sum);
        return std::isfinite(output->span_error_ev) &&
            std::isfinite(output->short_target_correction_ev) &&
            std::isfinite(output->long_target_correction_ev);
    }

    bool Evaluate(
        const jint* pixels,
        int width,
        int height,
        MatchResult* output) const {
        if (pixels == nullptr || output == nullptr ||
            width != width_ || height != height_) {
            return false;
        }
        std::vector<float> candidate_grid_lumas;
        if (!BuildGridLumas(pixels, width, height, &candidate_grid_lumas)) {
            return false;
        }
        return EvaluateGridLumas(
            candidate_grid_lumas.data(),
            static_cast<int>(candidate_grid_lumas.size()),
            output);
    }

    void EvaluateCoordinateMapping(
        const float* candidate_grid_lumas,
        MatchResult* output) const {
        int matched_edge_count = 0;
        int compared_edge_count = 0;
        const auto evaluate_edge = [&](int first_cell, int second_cell) {
            const float first_reference = reference_grid_lumas_[first_cell];
            const float second_reference = reference_grid_lumas_[second_cell];
            const float first_candidate = candidate_grid_lumas[first_cell];
            const float second_candidate = candidate_grid_lumas[second_cell];
            if (!std::isfinite(first_reference) || !std::isfinite(second_reference) ||
                !std::isfinite(first_candidate) || !std::isfinite(second_candidate) ||
                !(ReferenceReliabilityWeight(first_reference) > 0.0f) ||
                !(ReferenceReliabilityWeight(second_reference) > 0.0f)) {
                return;
            }
            const float reference_contrast =
                NormalizedPerceptualLightness(second_reference) -
                NormalizedPerceptualLightness(first_reference);
            if (std::abs(reference_contrast) <
                kCoordinateReferenceContrastThreshold) {
                return;
            }
            const float candidate_contrast =
                NormalizedPerceptualLightness(second_candidate) -
                NormalizedPerceptualLightness(first_candidate);
            ++compared_edge_count;
            const bool same_direction =
                (reference_contrast > 0.0f) == (candidate_contrast > 0.0f);
            if (same_direction && std::abs(candidate_contrast) >=
                    kCoordinateCandidateContrastThreshold) {
                ++matched_edge_count;
            }
        };

        for (int grid_y = 0; grid_y < kGridRows; ++grid_y) {
            for (int grid_x = 0; grid_x < kGridColumns; ++grid_x) {
                const int cell = grid_y * kGridColumns + grid_x;
                if (grid_x + 1 < kGridColumns) evaluate_edge(cell, cell + 1);
                if (grid_y + 1 < kGridRows) {
                    evaluate_edge(cell, cell + kGridColumns);
                }
            }
        }
        output->coordinate_compared_edge_count = compared_edge_count;
        output->coordinate_match_rate = compared_edge_count > 0
            ? static_cast<float>(matched_edge_count) / compared_edge_count
            : 0.0f;
    }

    bool EvaluateGridLumas(
        const float* candidate_grid_lumas,
        int candidate_count,
        MatchResult* output,
        bool fit_reference_curve = false) const {
        if (candidate_grid_lumas == nullptr || output == nullptr ||
            candidate_count != kGridCellCount) {
            return false;
        }
        const int valid_count = static_cast<int>(eligible_cell_indices_.size());
        std::vector<WeightedValue> log2_ratios(static_cast<size_t>(valid_count));
        int matched_count = 0;
        int compared_count = 0;
        double compared_weight_sum = 0.0;
        double matched_weight_sum = 0.0;
        double absolute_perceptual_lightness_error_sum = 0.0;
        double absolute_log2_ratio_sum = 0.0;
        double robust_log2_loss_sum = 0.0;
#pragma omp parallel for schedule(static) if(valid_count >= 1024) \
    reduction(+:matched_count, compared_count, compared_weight_sum, matched_weight_sum, \
        absolute_perceptual_lightness_error_sum, absolute_log2_ratio_sum, \
        robust_log2_loss_sum)
        for (int index = 0; index < valid_count; ++index) {
            const int cell = eligible_cell_indices_[index];
            const float candidate_luma = candidate_grid_lumas[cell];
            if (!std::isfinite(candidate_luma)) {
                log2_ratios[index] = WeightedValue{};
                continue;
            }
            const float weight = reference_cell_weights_[index];
            const float reference_luma = reference_grid_lumas_[cell];
            const float safe_reference = std::max(reference_luma, kDisplayLinearLumaFloor);
            const float safe_candidate = std::max(candidate_luma, kDisplayLinearLumaFloor);
            const float perceptual_lightness_error = std::abs(
                NormalizedPerceptualLightness(candidate_luma) -
                NormalizedPerceptualLightness(reference_luma));
            const float log2_ratio = std::clamp(
                std::log2(safe_candidate / safe_reference),
                -kMaximumAbsoluteLog2Residual,
                kMaximumAbsoluteLog2Residual);
            log2_ratios[index] = WeightedValue{log2_ratio, weight};
            const bool matched = perceptual_lightness_error <=
                kPerceptualLightnessTolerance;
            matched_count += matched ? 1 : 0;
            matched_weight_sum += matched ? weight : 0.0;
            compared_weight_sum += weight;
            absolute_perceptual_lightness_error_sum +=
                weight * perceptual_lightness_error;
            absolute_log2_ratio_sum += weight * std::abs(log2_ratio);
            robust_log2_loss_sum += weight * HuberLoss(log2_ratio);
            ++compared_count;
        }
        if (compared_count != valid_count ||
            compared_weight_sum < reference_weight_sum_ * 0.999) {
            return false;
        }
        output->matched_cell_count = matched_count;
        output->valid_cell_count = valid_count;
        output->compared_cell_count = compared_count;
        output->match_rate = static_cast<float>(matched_weight_sum / compared_weight_sum);
        output->mean_absolute_perceptual_lightness_error = static_cast<float>(
            absolute_perceptual_lightness_error_sum / compared_weight_sum);
        output->mean_absolute_log2_ratio =
            static_cast<float>(absolute_log2_ratio_sum / compared_weight_sum);
        EvaluateCoordinateMapping(candidate_grid_lumas, output);
        if (fit_reference_curve) FitReferenceCurve(log2_ratios, output);
        output->median_log2_ratio = WeightedMedian(
            &log2_ratios,
            static_cast<float>(compared_weight_sum));
        output->robust_log2_loss =
            static_cast<float>(robust_log2_loss_sum / compared_weight_sum);
        output->recommended_exposure_correction_ev = RobustExposureCorrection(
            log2_ratios,
            static_cast<float>(compared_weight_sum));
        output->reference_weight_sum = static_cast<float>(compared_weight_sum);
        return std::isfinite(output->match_rate) &&
            std::isfinite(output->mean_absolute_perceptual_lightness_error) &&
            std::isfinite(output->coordinate_match_rate) &&
            std::isfinite(output->mean_absolute_log2_ratio) &&
            std::isfinite(output->median_log2_ratio) &&
            std::isfinite(output->robust_log2_loss) &&
            std::isfinite(output->recommended_exposure_correction_ev) &&
            std::isfinite(output->reference_weight_sum);
    }

    static bool IsBetter(const Sample& candidate, const Sample& current) {
        if (IsGridMatchBetter(candidate.match, current.match)) return true;
        if (IsGridMatchBetter(current.match, candidate.match)) return false;
        const float absolute_ev_delta =
            std::abs(candidate.exposure_ev) - std::abs(current.exposure_ev);
        if (std::abs(absolute_ev_delta) > kMinimumCandidateStepEv * 0.1f) {
            return absolute_ev_delta < 0.0f;
        }
        return candidate.exposure_ev < current.exposure_ev;
    }

    std::optional<float> IssueCandidate(float exposure_ev) {
        const float safe_ev =
            std::clamp(exposure_ev, minimum_exposure_ev_, maximum_exposure_ev_);
        if (IsAlreadySampled(safe_ev)) return std::nullopt;
        pending_exposure_ev_ = safe_ev;
        return pending_exposure_ev_;
    }

    bool IsAlreadySampled(float exposure_ev) const {
        return std::any_of(samples_.begin(), samples_.end(), [&](const Sample& sample) {
            return std::abs(sample.exposure_ev - exposure_ev) < kMinimumCandidateStepEv;
        });
    }

    void AddCandidate(
        float exposure_ev,
        float acquisition_score,
        std::vector<Candidate>* candidates) const {
        if (!std::isfinite(exposure_ev) || !std::isfinite(acquisition_score)) return;
        const float safe_ev =
            std::clamp(exposure_ev, minimum_exposure_ev_, maximum_exposure_ev_);
        if (IsAlreadySampled(safe_ev)) return;
        auto duplicate = std::find_if(candidates->begin(), candidates->end(), [&](const Candidate& c) {
            return std::abs(c.exposure_ev - safe_ev) < kMinimumCandidateStepEv;
        });
        if (duplicate == candidates->end()) {
            candidates->push_back(Candidate{safe_ev, acquisition_score});
        } else if (acquisition_score > duplicate->acquisition_score) {
            duplicate->acquisition_score = acquisition_score;
        }
    }

    std::optional<float> SelectNextCandidate() const {
        std::vector<Candidate> candidates;
        const Sample& best = BestSample();
        const Sample& last = LastSample();

        for (const Sample& sample : samples_) {
            const float correction =
                sample.match.recommended_exposure_correction_ev;
            if (!std::isfinite(correction)) continue;
            const float predicted_correction = samples_.size() == 1
                ? std::clamp(
                    correction,
                    -kMaximumInitialStepEv,
                    kMaximumInitialStepEv)
                : correction;
            const float predicted_ev =
                sample.exposure_ev + predicted_correction;
            const float score = 2.0f +
                (sample.exposure_ev == last.exposure_ev ? 0.5f : 0.0f) +
                0.1f / (0.05f + std::abs(correction));
            AddCandidate(predicted_ev, score, &candidates);
        }

        std::vector<const Sample*> sorted_samples;
        sorted_samples.reserve(samples_.size());
        for (const Sample& sample : samples_) sorted_samples.push_back(&sample);
        std::sort(
            sorted_samples.begin(),
            sorted_samples.end(),
            [](const Sample* a, const Sample* b) {
                return a->exposure_ev < b->exposure_ev;
            });

        for (size_t index = 0; index + 1 < sorted_samples.size(); ++index) {
            const Sample& lower = *sorted_samples[index];
            const Sample& upper = *sorted_samples[index + 1];
            const float width = upper.exposure_ev - lower.exposure_ev;
            if (width < kMinimumCandidateStepEv * 2.0f) continue;
            const float lower_correction =
                lower.match.recommended_exposure_correction_ev;
            const float upper_correction =
                upper.match.recommended_exposure_correction_ev;
            if (!std::isfinite(lower_correction) ||
                !std::isfinite(upper_correction)) {
                continue;
            }
            const float response_slope =
                (upper_correction - lower_correction) / width;
            if (!(response_slope < -kMinimumUsefulResponseSlope)) continue;
            // Calibrate the next step from the measured exposure response instead of assuming
            // that an input EV change always produces an identical output-luma EV change.
            float candidate_ev =
                lower.exposure_ev - lower_correction / response_slope;
            const bool brackets_optimum =
                (lower_correction >= 0.0f && upper_correction <= 0.0f) ||
                (lower_correction <= 0.0f && upper_correction >= 0.0f);
            if (brackets_optimum) {
                candidate_ev = std::clamp(
                    candidate_ev,
                    lower.exposure_ev,
                    upper.exposure_ev);
            } else {
                candidate_ev = std::clamp(
                    candidate_ev,
                    lower.exposure_ev - width,
                    upper.exposure_ev + width);
            }
            const float acquisition =
                (brackets_optimum ? 4.0f : 3.0f) +
                0.1f / (0.05f +
                    std::min(std::abs(lower_correction),
                        std::abs(upper_correction)));
            AddCandidate(candidate_ev, acquisition, &candidates);
        }

        if (sorted_samples.size() == 1) {
            const Sample& sample = *sorted_samples.front();
            float direction = sample.match.recommended_exposure_correction_ev;
            const bool needs_validation_probe = !std::isfinite(direction) ||
                std::abs(direction) <= kRobustCorrectionToleranceEv;
            if (needs_validation_probe) {
                if (!std::isfinite(direction) || direction == 0.0f) {
                    direction = -sample.match.median_log2_ratio;
                }
                if (!std::isfinite(direction) || direction == 0.0f) {
                    direction = -kMinimumInitialStepEv;
                }
                const float step = std::clamp(
                    std::abs(direction),
                    kMinimumInitialStepEv,
                    kMaximumInitialStepEv);
                AddCandidate(
                    sample.exposure_ev + std::copysign(step, direction),
                    5.0f,
                    &candidates);
            }
        }

        if (candidates.empty()) return std::nullopt;
        const Candidate& selected = *std::max_element(
            candidates.begin(),
            candidates.end(),
            [&](const Candidate& a, const Candidate& b) {
                if (std::abs(a.acquisition_score - b.acquisition_score) >
                    kScoreEqualityEpsilon) {
                    return a.acquisition_score < b.acquisition_score;
                }
                return std::abs(a.exposure_ev - best.exposure_ev) >
                    std::abs(b.exposure_ev - best.exposure_ev);
            });
        return selected.exposure_ev;
    }

    int width_ = 0;
    int height_ = 0;
    int excluded_shadow_cell_count_ = 0;
    int excluded_highlight_cell_count_ = 0;
    float reference_weight_sum_ = 0.0f;
    float minimum_exposure_ev_ = kMinExposureEv;
    float maximum_exposure_ev_ = kMaxExposureEv;
    bool finished_ = false;
    std::optional<float> pending_exposure_ev_;
    std::vector<float> reference_grid_lumas_;
    std::vector<int> eligible_cell_indices_;
    std::vector<float> reference_cell_weights_;
    std::vector<float> reference_cell_log2_lumas_;
    float reference_p20_ev_ = std::numeric_limits<float>::quiet_NaN();
    float reference_p50_ev_ = std::numeric_limits<float>::quiet_NaN();
    float reference_p80_ev_ = std::numeric_limits<float>::quiet_NaN();
    std::vector<Sample> samples_;
    std::unique_ptr<HdrNetParameterSolver> hdrnet_solver_;
};

ExposureSolver* FromHandle(jlong handle) {
    return reinterpret_cast<ExposureSolver*>(static_cast<intptr_t>(handle));
}

jfloatArray CreateSampleArray(JNIEnv* env, const Sample& sample) {
    const jfloat values[] = {
        sample.exposure_ev,
        static_cast<float>(sample.match.matched_cell_count),
        static_cast<float>(sample.match.valid_cell_count),
        static_cast<float>(sample.match.compared_cell_count),
        sample.match.match_rate,
        sample.match.mean_absolute_log2_ratio,
        sample.match.median_log2_ratio,
        sample.match.robust_log2_loss,
        sample.match.reference_weight_sum,
        sample.match.recommended_exposure_correction_ev,
        sample.match.mean_absolute_perceptual_lightness_error,
        static_cast<float>(sample.match.coordinate_compared_edge_count),
        sample.match.coordinate_match_rate,
        static_cast<float>(GetCoordinateMatchStatus(sample.match)),
    };
    constexpr int kValueCount = sizeof(values) / sizeof(values[0]);
    jfloatArray result = env->NewFloatArray(kValueCount);
    if (result != nullptr) {
        env->SetFloatArrayRegion(result, 0, kValueCount, values);
    }
    return result;
}

jfloatArray CreateHdrNetCurveSampleArray(
    JNIEnv* env,
    const MatchResult& match) {
    const jfloat values[] = {
        static_cast<float>(match.matched_cell_count),
        static_cast<float>(match.valid_cell_count),
        static_cast<float>(match.compared_cell_count),
        match.match_rate,
        match.mean_absolute_log2_ratio,
        match.median_log2_ratio,
        match.robust_log2_loss,
        match.reference_weight_sum,
        match.recommended_exposure_correction_ev,
        match.center_error_ev,
        match.span_error_ev,
        match.curve_slope_error,
        match.reference_p20_ev,
        match.reference_p50_ev,
        match.reference_p80_ev,
        static_cast<float>(match.curve_fit_cell_count),
        match.short_target_correction_ev,
        match.long_target_correction_ev,
        match.mean_absolute_perceptual_lightness_error,
        static_cast<float>(match.coordinate_compared_edge_count),
        match.coordinate_match_rate,
        static_cast<float>(GetCoordinateMatchStatus(match)),
    };
    constexpr int kValueCount = sizeof(values) / sizeof(values[0]);
    jfloatArray result = env->NewFloatArray(kValueCount);
    if (result != nullptr) {
        env->SetFloatArrayRegion(result, 0, kValueCount, values);
    }
    return result;
}

jfloatArray CreateHdrNetResultArray(
    JNIEnv* env,
    const HdrNetParameterSolver& solver) {
    const HdrNetProbe& probe = solver.ResultProbe();
    const MatchResult& match = probe.match;
    const jfloat values[] = {
        probe.short_ev,
        probe.ratio_ev,
        static_cast<float>(match.matched_cell_count),
        static_cast<float>(match.valid_cell_count),
        static_cast<float>(match.compared_cell_count),
        match.match_rate,
        match.mean_absolute_log2_ratio,
        match.median_log2_ratio,
        match.robust_log2_loss,
        match.reference_weight_sum,
        match.recommended_exposure_correction_ev,
        match.center_error_ev,
        match.span_error_ev,
        match.curve_slope_error,
        match.reference_p20_ev,
        match.reference_p50_ev,
        match.reference_p80_ev,
        static_cast<float>(match.curve_fit_cell_count),
        match.short_target_correction_ev,
        match.long_target_correction_ev,
        match.mean_absolute_perceptual_lightness_error,
        static_cast<float>(match.coordinate_compared_edge_count),
        match.coordinate_match_rate,
        static_cast<float>(GetCoordinateMatchStatus(match)),
        static_cast<float>(solver.ProbeCount()),
        solver.HasConverged() ? 1.0f : 0.0f,
        solver.UsedOneDimensionalFallback() ? 1.0f : 0.0f,
        solver.JacobianNormalizedDeterminant(),
    };
    constexpr int kValueCount = sizeof(values) / sizeof(values[0]);
    jfloatArray result = env->NewFloatArray(kValueCount);
    if (result != nullptr) {
        env->SetFloatArrayRegion(result, 0, kValueCount, values);
    }
    return result;
}

}  // namespace

extern "C" JNIEXPORT jlong JNICALL
Java_com_hinnka_mycamera_raw_RawLegacyAutoExposureNativeBridge_nativeCreate(
    JNIEnv* env,
    jobject,
    jintArray reference_pixels,
    jfloatArray portrait_priority_weights,
    jint width,
    jint height) {
    const int64_t expected_pixel_count = static_cast<int64_t>(width) * height;
    if (reference_pixels == nullptr || width <= 0 || height <= 0 ||
        expected_pixel_count != env->GetArrayLength(reference_pixels) ||
        (portrait_priority_weights != nullptr &&
            expected_pixel_count != env->GetArrayLength(portrait_priority_weights))) {
        return 0;
    }
    jint* pixels = env->GetIntArrayElements(reference_pixels, nullptr);
    if (pixels == nullptr) return 0;
    jfloat* priority_weights = portrait_priority_weights != nullptr
        ? env->GetFloatArrayElements(portrait_priority_weights, nullptr)
        : nullptr;
    if (portrait_priority_weights != nullptr && priority_weights == nullptr) {
        env->ReleaseIntArrayElements(reference_pixels, pixels, JNI_ABORT);
        return 0;
    }
    std::unique_ptr<ExposureSolver> solver;
    try {
        solver = ExposureSolver::Create(
            pixels,
            priority_weights,
            width,
            height);
    } catch (const std::bad_alloc&) {
        solver.reset();
    }
    if (portrait_priority_weights != nullptr) {
        env->ReleaseFloatArrayElements(
            portrait_priority_weights,
            priority_weights,
            JNI_ABORT);
    }
    env->ReleaseIntArrayElements(reference_pixels, pixels, JNI_ABORT);
    return reinterpret_cast<jlong>(solver.release());
}

extern "C" JNIEXPORT jfloat JNICALL
Java_com_hinnka_mycamera_raw_RawLegacyAutoExposureNativeBridge_nativeNextExposureEv(
    JNIEnv*,
    jobject,
    jlong handle) {
    ExposureSolver* solver = FromHandle(handle);
    if (solver == nullptr) return std::numeric_limits<float>::quiet_NaN();
    try {
        const auto exposure_ev = solver->NextExposureEv();
        return exposure_ev.value_or(std::numeric_limits<float>::quiet_NaN());
    } catch (const std::bad_alloc&) {
        return std::numeric_limits<float>::quiet_NaN();
    }
}

extern "C" JNIEXPORT jboolean JNICALL
Java_com_hinnka_mycamera_raw_RawLegacyAutoExposureNativeBridge_nativeSubmitCandidate(
    JNIEnv* env,
    jobject,
    jlong handle,
    jfloat exposure_ev,
    jintArray candidate_pixels,
    jint width,
    jint height) {
    ExposureSolver* solver = FromHandle(handle);
    if (solver == nullptr || candidate_pixels == nullptr ||
        static_cast<int64_t>(width) * height != env->GetArrayLength(candidate_pixels)) {
        return JNI_FALSE;
    }
    jint* pixels = env->GetIntArrayElements(candidate_pixels, nullptr);
    if (pixels == nullptr) return JNI_FALSE;
    bool submitted = false;
    try {
        submitted = solver->SubmitCandidate(exposure_ev, pixels, width, height);
    } catch (const std::bad_alloc&) {
        submitted = false;
    }
    env->ReleaseIntArrayElements(candidate_pixels, pixels, JNI_ABORT);
    return submitted ? JNI_TRUE : JNI_FALSE;
}

extern "C" JNIEXPORT jboolean JNICALL
Java_com_hinnka_mycamera_raw_RawLegacyAutoExposureNativeBridge_nativeSubmitGridCandidate(
    JNIEnv* env,
    jobject,
    jlong handle,
    jfloat exposure_ev,
    jfloatArray candidate_display_linear_lumas,
    jint columns,
    jint rows) {
    ExposureSolver* solver = FromHandle(handle);
    if (solver == nullptr || candidate_display_linear_lumas == nullptr ||
        columns != kGridColumns || rows != kGridRows ||
        env->GetArrayLength(candidate_display_linear_lumas) != kGridCellCount) {
        return JNI_FALSE;
    }
    jfloat* lumas =
        env->GetFloatArrayElements(candidate_display_linear_lumas, nullptr);
    if (lumas == nullptr) return JNI_FALSE;
    bool submitted = false;
    try {
        submitted = solver->SubmitCandidate(
            exposure_ev,
            lumas,
            columns,
            rows);
    } catch (const std::bad_alloc&) {
        submitted = false;
    }
    env->ReleaseFloatArrayElements(candidate_display_linear_lumas, lumas, JNI_ABORT);
    return submitted ? JNI_TRUE : JNI_FALSE;
}

extern "C" JNIEXPORT jboolean JNICALL
Java_com_hinnka_mycamera_raw_RawLegacyAutoExposureNativeBridge_nativeStartHdrNetSolve(
    JNIEnv*,
    jobject,
    jlong handle,
    jfloat initial_hdr_ratio,
    jfloat maximum_hdr_ratio) {
    ExposureSolver* solver = FromHandle(handle);
    if (solver == nullptr) return JNI_FALSE;
    try {
        return solver->StartHdrNetSolve(initial_hdr_ratio, maximum_hdr_ratio)
            ? JNI_TRUE
            : JNI_FALSE;
    } catch (const std::bad_alloc&) {
        return JNI_FALSE;
    }
}

extern "C" JNIEXPORT jfloatArray JNICALL
Java_com_hinnka_mycamera_raw_RawLegacyAutoExposureNativeBridge_nativeNextHdrNetParameters(
    JNIEnv* env,
    jobject,
    jlong handle) {
    ExposureSolver* solver = FromHandle(handle);
    if (solver == nullptr) return nullptr;
    try {
        const auto parameters = solver->NextHdrNetParameters();
        if (!parameters.has_value()) return nullptr;
        const jfloat values[] = {
            parameters->short_ev,
            parameters->ratio_ev,
            static_cast<float>(parameters->axis),
        };
        jfloatArray result = env->NewFloatArray(3);
        if (result != nullptr) env->SetFloatArrayRegion(result, 0, 3, values);
        return result;
    } catch (const std::bad_alloc&) {
        return nullptr;
    }
}

extern "C" JNIEXPORT jfloatArray JNICALL
Java_com_hinnka_mycamera_raw_RawLegacyAutoExposureNativeBridge_nativeSubmitHdrNetGridCandidate(
    JNIEnv* env,
    jobject,
    jlong handle,
    jfloat short_ev,
    jfloat ratio_ev,
    jfloatArray candidate_display_linear_lumas,
    jint columns,
    jint rows) {
    ExposureSolver* solver = FromHandle(handle);
    if (solver == nullptr || candidate_display_linear_lumas == nullptr ||
        columns != kGridColumns || rows != kGridRows ||
        env->GetArrayLength(candidate_display_linear_lumas) != kGridCellCount) {
        return nullptr;
    }
    jfloat* lumas =
        env->GetFloatArrayElements(candidate_display_linear_lumas, nullptr);
    if (lumas == nullptr) return nullptr;
    bool submitted = false;
    try {
        submitted = solver->SubmitHdrNetCandidate(
            short_ev,
            ratio_ev,
            lumas,
            columns,
            rows);
    } catch (const std::bad_alloc&) {
        submitted = false;
    }
    env->ReleaseFloatArrayElements(candidate_display_linear_lumas, lumas, JNI_ABORT);
    return submitted
        ? CreateHdrNetCurveSampleArray(env, solver->HdrNetSolver().LastProbe().match)
        : nullptr;
}

extern "C" JNIEXPORT jfloatArray JNICALL
Java_com_hinnka_mycamera_raw_RawLegacyAutoExposureNativeBridge_nativeGetHdrNetResult(
    JNIEnv* env,
    jobject,
    jlong handle) {
    ExposureSolver* solver = FromHandle(handle);
    if (solver == nullptr || !solver->HasHdrNetResult()) return nullptr;
    return CreateHdrNetResultArray(env, solver->HdrNetSolver());
}

extern "C" JNIEXPORT jboolean JNICALL
Java_com_hinnka_mycamera_raw_RawLegacyAutoExposureNativeBridge_nativeConfigureExposureBounds(
    JNIEnv*,
    jobject,
    jlong handle,
    jfloat minimum_ev,
    jfloat maximum_ev) {
    ExposureSolver* solver = FromHandle(handle);
    if (solver == nullptr) return JNI_FALSE;
    return solver->ConfigureExposureBounds(minimum_ev, maximum_ev)
        ? JNI_TRUE
        : JNI_FALSE;
}

extern "C" JNIEXPORT jboolean JNICALL
Java_com_hinnka_mycamera_raw_RawLegacyAutoExposureNativeBridge_nativeHasConverged(
    JNIEnv*,
    jobject,
    jlong handle) {
    ExposureSolver* solver = FromHandle(handle);
    return solver != nullptr && solver->HasConverged() ? JNI_TRUE : JNI_FALSE;
}

extern "C" JNIEXPORT jfloatArray JNICALL
Java_com_hinnka_mycamera_raw_RawLegacyAutoExposureNativeBridge_nativeGetLastSample(
    JNIEnv* env,
    jobject,
    jlong handle) {
    ExposureSolver* solver = FromHandle(handle);
    if (solver == nullptr || !solver->HasResult()) return nullptr;
    return CreateSampleArray(env, solver->LastSample());
}

extern "C" JNIEXPORT jfloatArray JNICALL
Java_com_hinnka_mycamera_raw_RawLegacyAutoExposureNativeBridge_nativeGetResult(
    JNIEnv* env,
    jobject,
    jlong handle) {
    ExposureSolver* solver = FromHandle(handle);
    if (solver == nullptr || !solver->HasResult()) return nullptr;
    const Sample& best = solver->BestSample();
    const jfloat values[kNativeResultSize] = {
        best.exposure_ev,
        static_cast<float>(best.match.matched_cell_count),
        static_cast<float>(best.match.valid_cell_count),
        static_cast<float>(best.match.compared_cell_count),
        best.match.match_rate,
        best.match.mean_absolute_log2_ratio,
        best.match.median_log2_ratio,
        best.match.robust_log2_loss,
        best.match.reference_weight_sum,
        best.match.recommended_exposure_correction_ev,
        best.match.mean_absolute_perceptual_lightness_error,
        static_cast<float>(best.match.coordinate_compared_edge_count),
        best.match.coordinate_match_rate,
        static_cast<float>(GetCoordinateMatchStatus(best.match)),
        static_cast<float>(solver->SampleCount()),
        static_cast<float>(solver->ExcludedShadowCellCount()),
        static_cast<float>(solver->ExcludedHighlightCellCount()),
        kShadowWeightZeroDisplayLinearLuma,
        kHighlightWeightZeroDisplayLinearLuma,
        kHuberDeltaEv,
        kPerceptualLightnessTolerance,
        kRequiredGridMatchRate,
    };
    jfloatArray result = env->NewFloatArray(kNativeResultSize);
    if (result != nullptr) {
        env->SetFloatArrayRegion(result, 0, kNativeResultSize, values);
    }
    return result;
}

extern "C" JNIEXPORT void JNICALL
Java_com_hinnka_mycamera_raw_RawLegacyAutoExposureNativeBridge_nativeDestroy(
    JNIEnv*,
    jobject,
    jlong handle) {
    delete FromHandle(handle);
}
