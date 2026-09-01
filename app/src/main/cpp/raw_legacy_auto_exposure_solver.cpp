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
constexpr float kMatchResidualToleranceEv = 0.13750352f;  // log2(1.10)
// Reliability is derived only from the reference. A valid reference cell that clips in a
// candidate must remain an exposure error instead of disappearing from the comparison.
constexpr int kShadowWeightZeroSrgbCode = 4;
constexpr int kShadowWeightFullSrgbCode = 16;
constexpr int kHighlightWeightFullSrgbCode = 220;
constexpr int kHighlightWeightZeroSrgbCode = 240;
constexpr int kMinimumReliableCellCount = 32;
constexpr float kMinimumReferenceWeightSum = 16.0f;
constexpr float kHuberDeltaEv = 0.25f;
constexpr float kMaximumAbsoluteLog2Residual = 4.0f;
constexpr int kMinimumCurveFitCellCount = 24;
constexpr float kMinimumReferenceCurveSpanEv = 0.25f;
constexpr int kCurveFitIrlsIterationCount = 6;
constexpr float kHdrNetCenterToleranceEv = 0.05f;
constexpr float kHdrNetSpanToleranceEv = 0.075f;
constexpr float kHdrNetInitialProbeEv = 0.25f;
constexpr float kHdrNetMaximumStepEv = 0.5f;
constexpr float kHdrNetMinimumStepEv = 0.01f;
constexpr float kHdrNetMinimumTotalStepEv = -4.0f;
constexpr float kHdrNetMaximumTotalStepEv = 4.0f;
constexpr int kHdrNetMaximumCandidateCount = 5;
constexpr float kHdrNetDuplicateProbeToleranceEv = 0.005f;
constexpr float kHdrNetMinimumNormalizedDeterminant = 0.15f;
constexpr float kHdrNetMinimumNormalEquationDeterminant = 1.0e-8f;
constexpr float kHdrNetMinimumBroydenStepNormSquared = 1.0e-6f;
constexpr float kHdrNetInitialDamping = 0.05f;
constexpr float kHdrNetMinimumDamping = 0.005f;
constexpr float kHdrNetMaximumDamping = 1.0f;
constexpr float kHdrNetHuberLossAbsoluteGuardEv = 0.005f;
constexpr float kHdrNetHuberLossRelativeGuard = 0.1f;
constexpr float kHdrNetFallbackHuberLossRelativeGuard = 0.01f;
constexpr float kMinimumCandidateStepEv = 0.01f;
constexpr float kMinimumInitialStepEv = 0.25f;
constexpr float kMaximumInitialStepEv = 2.0f;
constexpr float kRobustCorrectionToleranceEv = 0.025f;
constexpr float kMinimumUsefulResponseSlope = 0.05f;
constexpr int kMaximumSampleCount = 6;
constexpr int kMinimumModelConvergenceSampleCount = 2;
constexpr float kHighConfidenceMatchRate = 0.85f;
constexpr float kMatchRateTrendEpsilon = 0.002f;
constexpr float kScoreEqualityEpsilon = 0.000001f;
constexpr float kSrgbTransferThreshold = 0.04045f;
constexpr float kSrgbLinearScale = 12.92f;
constexpr float kSrgbTransferA = 0.055f;
constexpr float kSrgbTransferGamma = 2.4f;
constexpr float kDisplayLinearLumaFloor = 1.0f / (255.0f * 12.92f);
constexpr int kNativeResultSize = 16;

float SrgbToLinear(float value) {
    const float clamped = std::clamp(value, 0.0f, 1.0f);
    if (clamped <= kSrgbTransferThreshold) {
        return clamped / kSrgbLinearScale;
    }
    return std::pow(
        (clamped + kSrgbTransferA) / (1.0f + kSrgbTransferA),
        kSrgbTransferGamma);
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
    float mean_absolute_log2_ratio = std::numeric_limits<float>::infinity();
    float median_log2_ratio = std::numeric_limits<float>::quiet_NaN();
    float robust_log2_loss = std::numeric_limits<float>::infinity();
    float recommended_exposure_correction_ev =
        std::numeric_limits<float>::quiet_NaN();
    float reference_weight_sum = 0.0f;
    float center_error_ev = std::numeric_limits<float>::quiet_NaN();
    float span_error_ev = std::numeric_limits<float>::quiet_NaN();
    float curve_slope_error = std::numeric_limits<float>::quiet_NaN();
    float reference_p20_ev = std::numeric_limits<float>::quiet_NaN();
    float reference_p50_ev = std::numeric_limits<float>::quiet_NaN();
    float reference_p80_ev = std::numeric_limits<float>::quiet_NaN();
    int curve_fit_cell_count = 0;
};

enum class HdrNetProbeAxis : int {
    kBase = 0,
    kShortJacobian = 1,
    kRatioJacobian = 2,
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
    float center_by_short_ev = 0.0f;
    float center_by_ratio_ev = 0.0f;
    float span_by_short_ev = 0.0f;
    float span_by_ratio_ev = 0.0f;
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
            maximum_acceptable_huber_loss_ = baseline.match.robust_log2_loss +
                std::max(
                    kHdrNetHuberLossAbsoluteGuardEv,
                    baseline.match.robust_log2_loss *
                        kHdrNetHuberLossRelativeGuard);
            if (HasCurveConverged(baseline)) {
                Finish(true);
                return std::nullopt;
            }
            if (!HasValidCurveFit(baseline.match)) {
                EnterOneDimensionalFallback();
                return NextFallbackParameters();
            }
            return Issue(
                kHdrNetInitialProbeEv,
                0.0f,
                HdrNetProbeAxis::kShortJacobian,
                -1);
        }

        if (probes_.size() == 2) {
            if (!HasValidCurveFit(probes_.back().match)) {
                EnterOneDimensionalFallback();
                return NextFallbackParameters();
            }
            const auto ratio_probe = ChooseRatioProbeEv();
            if (!ratio_probe.has_value()) {
                EnterOneDimensionalFallback();
                return NextFallbackParameters();
            }
            return Issue(
                0.0f,
                *ratio_probe,
                HdrNetProbeAxis::kRatioJacobian,
                -1);
        }

        if (!jacobian_initialized_) {
            if (!BuildInitialJacobian()) {
                EnterOneDimensionalFallback();
                return NextFallbackParameters();
            }
            current_probe_index_ = BestCurveProbeIndex();
            if (HasCurveConverged(probes_[current_probe_index_])) {
                Finish(true);
                return std::nullopt;
            }
        }

        if (!IsJacobianIdentifiable()) {
            EnterOneDimensionalFallback();
            return NextFallbackParameters();
        }
        if (HasCurveConverged(probes_[current_probe_index_])) {
            Finish(true);
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
                const float previous_objective = CurveObjective(previous.match);
                broyden_valid = BroydenUpdate(previous, next);
                if (broyden_valid) {
                    damping_ = CurveObjective(next.match) <= previous_objective
                        ? std::max(kHdrNetMinimumDamping, damping_ * 0.5f)
                        : std::min(kHdrNetMaximumDamping, damping_ * 4.0f);
                }
            }
        }
        probes_.push_back(next);
        current_probe_index_ = static_cast<int>(probes_.size()) - 1;
        pending_.reset();
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
        return std::isfinite(match.center_error_ev) &&
            std::isfinite(match.span_error_ev) &&
            std::isfinite(match.curve_slope_error) &&
            std::isfinite(match.reference_p20_ev) &&
            std::isfinite(match.reference_p50_ev) &&
            std::isfinite(match.reference_p80_ev) &&
            match.reference_p80_ev > match.reference_p20_ev &&
            match.curve_fit_cell_count > 0;
    }

    static float CurveObjective(const MatchResult& match) {
        if (!HasValidCurveFit(match)) {
            return std::numeric_limits<float>::infinity();
        }
        const float center = match.center_error_ev / kHdrNetCenterToleranceEv;
        const float span = match.span_error_ev / kHdrNetSpanToleranceEv;
        return center * center + span * span;
    }

    bool HasCurveConverged(const HdrNetProbe& probe) const {
        return HasValidCurveFit(probe.match) &&
            std::abs(probe.match.center_error_ev) <= kHdrNetCenterToleranceEv &&
            std::abs(probe.match.span_error_ev) <= kHdrNetSpanToleranceEv &&
            probe.match.robust_log2_loss <= maximum_acceptable_huber_loss_;
    }

    bool HasFallbackConverged(int probe_index, int frozen_probe_count) const {
        const MatchResult& match = probes_[probe_index].match;
        return std::abs(match.recommended_exposure_correction_ev) <=
                kRobustCorrectionToleranceEv &&
            match.robust_log2_loss <= MaximumFallbackHuberLoss() &&
            (frozen_probe_count >= kMinimumModelConvergenceSampleCount ||
                match.match_rate >= kHighConfidenceMatchRate);
    }

    float MaximumFallbackHuberLoss() const {
        const float baseline_loss = probes_.front().match.robust_log2_loss;
        return baseline_loss + std::max(
            kHdrNetHuberLossAbsoluteGuardEv,
            baseline_loss * kHdrNetFallbackHuberLossRelativeGuard);
    }

    std::optional<float> ChooseRatioProbeEv() const {
        if (maximum_ratio_ev_ >= kHdrNetInitialProbeEv) {
            return kHdrNetInitialProbeEv;
        }
        if (minimum_ratio_ev_ <= -kHdrNetInitialProbeEv) {
            return -kHdrNetInitialProbeEv;
        }
        if (maximum_ratio_ev_ >= kHdrNetMinimumStepEv) {
            return maximum_ratio_ev_;
        }
        if (minimum_ratio_ev_ <= -kHdrNetMinimumStepEv) {
            return minimum_ratio_ev_;
        }
        return std::nullopt;
    }

    bool BuildInitialJacobian() {
        if (probes_.size() < 3) return false;
        const HdrNetProbe& baseline = probes_[0];
        const HdrNetProbe& short_probe = probes_[1];
        const HdrNetProbe& ratio_probe = probes_[2];
        if (!HasValidCurveFit(short_probe.match) ||
            !HasValidCurveFit(ratio_probe.match) ||
            std::abs(short_probe.short_ev) < kHdrNetMinimumStepEv ||
            std::abs(ratio_probe.ratio_ev) < kHdrNetMinimumStepEv) {
            return false;
        }
        jacobian_ = HdrNetJacobian{
            (short_probe.match.center_error_ev -
                baseline.match.center_error_ev) / short_probe.short_ev,
            (ratio_probe.match.center_error_ev -
                baseline.match.center_error_ev) / ratio_probe.ratio_ev,
            (short_probe.match.span_error_ev -
                baseline.match.span_error_ev) / short_probe.short_ev,
            (ratio_probe.match.span_error_ev -
                baseline.match.span_error_ev) / ratio_probe.ratio_ev,
        };
        jacobian_initialized_ = AllFinite(jacobian_);
        UpdateJacobianDeterminant();
        return jacobian_initialized_ && IsJacobianIdentifiable();
    }

    static bool AllFinite(const HdrNetJacobian& jacobian) {
        return std::isfinite(jacobian.center_by_short_ev) &&
            std::isfinite(jacobian.center_by_ratio_ev) &&
            std::isfinite(jacobian.span_by_short_ev) &&
            std::isfinite(jacobian.span_by_ratio_ev);
    }

    void UpdateJacobianDeterminant() {
        if (!AllFinite(jacobian_)) {
            jacobian_normalized_determinant_ =
                std::numeric_limits<float>::quiet_NaN();
            return;
        }
        const float short_norm = std::hypot(
            jacobian_.center_by_short_ev,
            jacobian_.span_by_short_ev);
        const float ratio_norm = std::hypot(
            jacobian_.center_by_ratio_ev,
            jacobian_.span_by_ratio_ev);
        if (!(short_norm > 0.0f) || !(ratio_norm > 0.0f)) {
            jacobian_normalized_determinant_ = 0.0f;
            return;
        }
        jacobian_normalized_determinant_ = std::abs(
            jacobian_.center_by_short_ev * jacobian_.span_by_ratio_ev -
            jacobian_.center_by_ratio_ev * jacobian_.span_by_short_ev) /
            (short_norm * ratio_norm);
    }

    bool IsJacobianIdentifiable() const {
        if (!jacobian_initialized_ || !AllFinite(jacobian_)) return false;
        const float short_norm = std::hypot(
            jacobian_.center_by_short_ev,
            jacobian_.span_by_short_ev);
        const float ratio_norm = std::hypot(
            jacobian_.center_by_ratio_ev,
            jacobian_.span_by_ratio_ev);
        return short_norm >= kMinimumUsefulResponseSlope &&
            ratio_norm >= kMinimumUsefulResponseSlope &&
            jacobian_normalized_determinant_ >=
                kHdrNetMinimumNormalizedDeterminant;
    }

    bool DampedNewtonStep(
        const MatchResult& match,
        float* short_step,
        float* ratio_step) const {
        if (short_step == nullptr || ratio_step == nullptr) return false;
        const float span_weight =
            (kHdrNetCenterToleranceEv / kHdrNetSpanToleranceEv) *
            (kHdrNetCenterToleranceEv / kHdrNetSpanToleranceEv);
        const float a00 =
            jacobian_.center_by_short_ev * jacobian_.center_by_short_ev +
            span_weight * jacobian_.span_by_short_ev *
                jacobian_.span_by_short_ev + damping_;
        const float a01 =
            jacobian_.center_by_short_ev * jacobian_.center_by_ratio_ev +
            span_weight * jacobian_.span_by_short_ev *
                jacobian_.span_by_ratio_ev;
        const float a11 =
            jacobian_.center_by_ratio_ev * jacobian_.center_by_ratio_ev +
            span_weight * jacobian_.span_by_ratio_ev *
                jacobian_.span_by_ratio_ev + damping_;
        const float gradient_short =
            jacobian_.center_by_short_ev * match.center_error_ev +
            span_weight * jacobian_.span_by_short_ev * match.span_error_ev;
        const float gradient_ratio =
            jacobian_.center_by_ratio_ev * match.center_error_ev +
            span_weight * jacobian_.span_by_ratio_ev * match.span_error_ev;
        const float determinant = a00 * a11 - a01 * a01;
        if (!std::isfinite(determinant) ||
            determinant <= kHdrNetMinimumNormalEquationDeterminant) {
            return false;
        }
        *short_step =
            -(a11 * gradient_short - a01 * gradient_ratio) / determinant;
        *ratio_step =
            -(-a01 * gradient_short + a00 * gradient_ratio) / determinant;
        return std::isfinite(*short_step) && std::isfinite(*ratio_step);
    }

    bool BroydenUpdate(
        const HdrNetProbe& previous,
        const HdrNetProbe& next) {
        if (!HasValidCurveFit(next.match)) return false;
        const float short_step = next.short_ev - previous.short_ev;
        const float ratio_step = next.ratio_ev - previous.ratio_ev;
        const float step_norm_squared =
            short_step * short_step + ratio_step * ratio_step;
        if (step_norm_squared < kHdrNetMinimumBroydenStepNormSquared) {
            return false;
        }
        const float center_remainder =
            next.match.center_error_ev - previous.match.center_error_ev -
            (jacobian_.center_by_short_ev * short_step +
                jacobian_.center_by_ratio_ev * ratio_step);
        const float span_remainder =
            next.match.span_error_ev - previous.match.span_error_ev -
            (jacobian_.span_by_short_ev * short_step +
                jacobian_.span_by_ratio_ev * ratio_step);
        jacobian_.center_by_short_ev +=
            center_remainder * short_step / step_norm_squared;
        jacobian_.center_by_ratio_ev +=
            center_remainder * ratio_step / step_norm_squared;
        jacobian_.span_by_short_ev +=
            span_remainder * short_step / step_norm_squared;
        jacobian_.span_by_ratio_ev +=
            span_remainder * ratio_step / step_norm_squared;
        jacobian_initialized_ = AllFinite(jacobian_);
        UpdateJacobianDeterminant();
        return jacobian_initialized_;
    }

    int BestCurveProbeIndex() const {
        int best_index = 0;
        float best_objective = std::numeric_limits<float>::infinity();
        float best_loss = std::numeric_limits<float>::infinity();
        for (size_t index = 0; index < probes_.size(); ++index) {
            const MatchResult& match = probes_[index].match;
            if (!HasValidCurveFit(match) ||
                match.robust_log2_loss > maximum_acceptable_huber_loss_) {
                continue;
            }
            const float objective = CurveObjective(match);
            if (objective < best_objective ||
                (objective == best_objective &&
                    match.robust_log2_loss < best_loss)) {
                best_index = static_cast<int>(index);
                best_objective = objective;
                best_loss = match.robust_log2_loss;
            }
        }
        return best_index;
    }

    int BestFallbackProbeIndex(int* frozen_probe_count) const {
        int best_index = 0;
        int best_converged_index = -1;
        int count = 0;
        float best_loss = std::numeric_limits<float>::infinity();
        float best_correction = std::numeric_limits<float>::infinity();
        float best_converged_correction = std::numeric_limits<float>::infinity();
        float best_converged_loss = std::numeric_limits<float>::infinity();
        for (size_t index = 0; index < probes_.size(); ++index) {
            const HdrNetProbe& probe = probes_[index];
            if (std::abs(probe.ratio_ev) >=
                kHdrNetDuplicateProbeToleranceEv) {
                continue;
            }
            ++count;
            const float correction =
                std::abs(probe.match.recommended_exposure_correction_ev);
            const bool converged_and_safe =
                correction <= kRobustCorrectionToleranceEv &&
                probe.match.robust_log2_loss <= MaximumFallbackHuberLoss();
            if (converged_and_safe &&
                (correction < best_converged_correction ||
                    (correction == best_converged_correction &&
                        probe.match.robust_log2_loss < best_converged_loss))) {
                best_converged_index = static_cast<int>(index);
                best_converged_correction = correction;
                best_converged_loss = probe.match.robust_log2_loss;
            }
            if (probe.match.robust_log2_loss < best_loss ||
                (probe.match.robust_log2_loss == best_loss &&
                    correction < best_correction)) {
                best_index = static_cast<int>(index);
                best_loss = probe.match.robust_log2_loss;
                best_correction = correction;
            }
        }
        if (frozen_probe_count != nullptr) *frozen_probe_count = count;
        return best_converged_index >= 0 ? best_converged_index : best_index;
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

    std::optional<HdrNetParameters> NextJointParameters() {
        if (static_cast<int>(probes_.size()) >= kHdrNetMaximumCandidateCount) {
            Finish(HasCurveConverged(probes_[current_probe_index_]));
            return std::nullopt;
        }
        float short_step = 0.0f;
        float ratio_step = 0.0f;
        const HdrNetProbe& current = probes_[current_probe_index_];
        if (!DampedNewtonStep(current.match, &short_step, &ratio_step)) {
            Finish(false);
            return std::nullopt;
        }
        const float next_short = std::clamp(
            current.short_ev + std::clamp(
                short_step,
                -kHdrNetMaximumStepEv,
                kHdrNetMaximumStepEv),
            kHdrNetMinimumTotalStepEv,
            kHdrNetMaximumTotalStepEv);
        const float next_ratio = std::clamp(
            current.ratio_ev + std::clamp(
                ratio_step,
                -kHdrNetMaximumStepEv,
                kHdrNetMaximumStepEv),
            minimum_ratio_ev_,
            maximum_ratio_ev_);
        const auto issued = Issue(
            next_short,
            next_ratio,
            HdrNetProbeAxis::kJointNewton,
            current_probe_index_);
        if (!issued.has_value()) Finish(false);
        return issued;
    }

    std::optional<HdrNetParameters> NextFallbackParameters() {
        int frozen_probe_count = 0;
        const int current_index = BestFallbackProbeIndex(&frozen_probe_count);
        if (HasFallbackConverged(current_index, frozen_probe_count)) {
            Finish(true);
            return std::nullopt;
        }
        if (static_cast<int>(probes_.size()) >= kHdrNetMaximumCandidateCount) {
            Finish(false);
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
            Finish(false);
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
        if (!issued.has_value()) Finish(false);
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

    void Finish(bool converged) {
        if (probes_.empty()) return;
        int frozen_probe_count = 0;
        selected_probe_index_ = one_dimensional_fallback_
            ? BestFallbackProbeIndex(&frozen_probe_count)
            : BestCurveProbeIndex();
        converged_ = converged;
        finished_ = true;
        pending_.reset();
    }

    float minimum_ratio_ev_ = 0.0f;
    float maximum_ratio_ev_ = 0.0f;
    float maximum_acceptable_huber_loss_ =
        std::numeric_limits<float>::infinity();
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
        int width,
        int height) {
        auto solver = std::unique_ptr<ExposureSolver>(new (std::nothrow) ExposureSolver());
        if (!solver ||
            !solver->Initialize(reference_pixels, width, height)) {
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
        const MatchResult& match = LastSample().match;
        if (!std::isfinite(match.recommended_exposure_correction_ev) ||
            std::abs(match.recommended_exposure_correction_ev) >
                kRobustCorrectionToleranceEv) {
            return false;
        }
        return static_cast<int>(samples_.size()) >=
                kMinimumModelConvergenceSampleCount ||
            match.match_rate >= kHighConfidenceMatchRate;
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

    bool Initialize(const jint* pixels, int width, int height) {
        if (!BuildGridLumas(pixels, width, height, &reference_grid_lumas_)) {
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
        return std::isfinite(output->span_error_ev);
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
        double absolute_log2_ratio_sum = 0.0;
        double robust_log2_loss_sum = 0.0;
#pragma omp parallel for schedule(static) if(valid_count >= 1024) \
    reduction(+:matched_count, compared_count, compared_weight_sum, matched_weight_sum, \
        absolute_log2_ratio_sum, robust_log2_loss_sum)
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
            const float log2_ratio = std::clamp(
                std::log2(safe_candidate / safe_reference),
                -kMaximumAbsoluteLog2Residual,
                kMaximumAbsoluteLog2Residual);
            log2_ratios[index] = WeightedValue{log2_ratio, weight};
            const bool matched = std::abs(log2_ratio) <= kMatchResidualToleranceEv;
            matched_count += matched ? 1 : 0;
            matched_weight_sum += matched ? weight : 0.0;
            compared_weight_sum += weight;
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
        output->mean_absolute_log2_ratio =
            static_cast<float>(absolute_log2_ratio_sum / compared_weight_sum);
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
            std::isfinite(output->mean_absolute_log2_ratio) &&
            std::isfinite(output->median_log2_ratio) &&
            std::isfinite(output->robust_log2_loss) &&
            std::isfinite(output->recommended_exposure_correction_ev) &&
            std::isfinite(output->reference_weight_sum);
    }

    static bool IsBetter(const Sample& candidate, const Sample& current) {
        const float robust_loss_delta =
            candidate.match.robust_log2_loss - current.match.robust_log2_loss;
        if (std::abs(robust_loss_delta) > kScoreEqualityEpsilon) {
            return robust_loss_delta < 0.0f;
        }
        const float match_rate_delta =
            candidate.match.match_rate - current.match.match_rate;
        if (std::abs(match_rate_delta) > kMatchRateTrendEpsilon) {
            return match_rate_delta > 0.0f;
        }
        const float residual_delta = candidate.match.mean_absolute_log2_ratio -
            current.match.mean_absolute_log2_ratio;
        if (std::abs(residual_delta) > kScoreEqualityEpsilon) {
            return residual_delta < 0.0f;
        }
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
    };
    jfloatArray result = env->NewFloatArray(10);
    if (result != nullptr) env->SetFloatArrayRegion(result, 0, 10, values);
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
    jint width,
    jint height) {
    if (reference_pixels == nullptr || width <= 0 || height <= 0 ||
        static_cast<int64_t>(width) * height != env->GetArrayLength(reference_pixels)) {
        return 0;
    }
    jint* pixels = env->GetIntArrayElements(reference_pixels, nullptr);
    if (pixels == nullptr) return 0;
    std::unique_ptr<ExposureSolver> solver;
    try {
        solver = ExposureSolver::Create(pixels, width, height);
    } catch (const std::bad_alloc&) {
        solver.reset();
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
        static_cast<float>(solver->SampleCount()),
        static_cast<float>(solver->ExcludedShadowCellCount()),
        static_cast<float>(solver->ExcludedHighlightCellCount()),
        kShadowWeightZeroDisplayLinearLuma,
        kHighlightWeightZeroDisplayLinearLuma,
        kHuberDeltaEv,
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
