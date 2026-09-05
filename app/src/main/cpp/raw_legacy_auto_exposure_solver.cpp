#include <jni.h>
#include "raw_hdrnet_post_exposure.h"

#if defined(__ANDROID__)
#include <android/log.h>
#endif

#include <algorithm>
#include <cmath>
#include <cstdint>
#include <limits>
#include <memory>
#include <new>
#include <optional>
#include <vector>

namespace {

constexpr int kGridColumns = 8;
constexpr int kGridRows = 6;
constexpr int kGridCellCount = kGridColumns * kGridRows;
constexpr float kMinExposureEv = -4.0f;
constexpr float kMaxExposureEv = 4.0f;
constexpr float kMatchResidualToleranceEv = 0.1f;
constexpr float kRequiredGridMatchRate = 0.85f;
// Reliability is derived only from the reference. A valid reference cell that clips in a
// candidate must remain an exposure error instead of disappearing from the comparison.
constexpr int kShadowWeightZeroSrgbCode = 4;
constexpr int kShadowWeightFullSrgbCode = 16;
constexpr int kHighlightWeightFullSrgbCode = 220;
constexpr int kHighlightWeightZeroSrgbCode = 240;
constexpr int kMinimumReliableCellCount = 12;
constexpr float kMinimumReferenceWeightSum = 12.0f;
// When a sufficiently large portrait is present, Kotlin supplies an aligned soft mask. Preserve
// enough background to keep the solve spatially constrained while making the portrait dominant.
constexpr float kPortraitPriorityTargetWeightFraction = 0.75f;
constexpr float kMinimumPortraitPriorityComponentWeight = 1.0e-4f;
constexpr float kHuberDeltaEv = 0.25f;
constexpr float kMaximumAbsoluteLog2Residual = 4.0f;
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

float HdrNetShadowPriority(float reference_luma) {
    // Modest preference only within the existing reliable-reference cells.
    // Near-black rejection, spatial weights and portrait priority remain in effect.
    return 1.0f + 0.25f * (1.0f - SmoothStep(0.02f, 0.25f, reference_luma));
}

float SpatialGridWeight(int cell) {
    const int grid_x = cell % kGridColumns;
    const int grid_y = cell / kGridColumns;
    const int distance_to_edge = std::min({
        grid_x,
        kGridColumns - 1 - grid_x,
        grid_y,
        kGridRows - 1 - grid_y,
    });
    // The 8 x 6 grid has three complete layers: outer=1, middle=2, inner=3.
    return static_cast<float>(distance_to_edge + 1);
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
    float match_rate = 0.0f;
    float mean_absolute_log2_ratio = std::numeric_limits<float>::infinity();
    float median_log2_ratio = std::numeric_limits<float>::quiet_NaN();
    float robust_log2_loss = std::numeric_limits<float>::infinity();
    float recommended_exposure_correction_ev =
        std::numeric_limits<float>::quiet_NaN();
};

void LogScalarMatchCandidate(int index, float exposure_ev,
                             const MatchResult& match) {
#if defined(__ANDROID__)
    __android_log_print(
        ANDROID_LOG_INFO,
        "PLog_RawExposureMatch",
        "MATCH stage=CANDIDATE path=SCALAR index=%d exposureEv=%.4f "
        "matchRate=%.4f meanAbsEv=%.4f medianEv=%.4f correctionEv=%.4f "
        "robustLoss=%.4f",
        index, exposure_ev, match.match_rate, match.mean_absolute_log2_ratio,
        match.median_log2_ratio, match.recommended_exposure_correction_ev,
        match.robust_log2_loss);
#else
    (void)index;
    (void)exposure_ev;
    (void)match;
#endif
}

void LogSelectedMatch(const char* path, float exposure_ev,
                      const MatchResult& match) {
#if defined(__ANDROID__)
    __android_log_print(
        ANDROID_LOG_INFO,
        "PLog_RawExposureMatch",
        "MATCH stage=SELECTED path=%s exposureEv=%.4f "
        "matchRate=%.4f meanAbsEv=%.4f correctionEv=%.4f",
        path, exposure_ev, match.match_rate,
        match.mean_absolute_log2_ratio,
        match.recommended_exposure_correction_ev);
#else
    (void)path;
    (void)exposure_ev;
    (void)match;
#endif
}

void LogReferenceGrid(int eligible_cells, float weight_sum,
                      bool portrait_priority_active) {
#if defined(__ANDROID__)
    __android_log_print(
        ANDROID_LOG_INFO,
        "PLog_RawExposureMatch",
        "MATCH stage=REFERENCE grid=8x6 eligibleCells=%d weightSum=%.4f "
        "portraitPriority=%d",
        eligible_cells, weight_sum, portrait_priority_active ? 1 : 0);
#else
    (void)eligible_cells;
    (void)weight_sum;
    (void)portrait_priority_active;
#endif
}

bool HasRequiredGridMatchRate(const MatchResult& match) {
    return match.match_rate >= kRequiredGridMatchRate;
}

bool IsGridMatchBetter(const MatchResult& candidate, const MatchResult& current) {
    const float match_rate_delta = candidate.match_rate - current.match_rate;
    if (std::abs(match_rate_delta) > kScoreEqualityEpsilon) {
        return match_rate_delta > 0.0f;
    }
    const float ev_error_delta =
        candidate.mean_absolute_log2_ratio - current.mean_absolute_log2_ratio;
    if (std::abs(ev_error_delta) > kScoreEqualityEpsilon) {
        return ev_error_delta < 0.0f;
    }
    const float robust_loss_delta =
        candidate.robust_log2_loss - current.robust_log2_loss;
    if (std::abs(robust_loss_delta) > kScoreEqualityEpsilon) {
        return robust_loss_delta < 0.0f;
    }
    return false;
}

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

    /**
     * Retains the reference's 8 x 6 scoring, using the full RGB pixels to evaluate
     * the nonlinear SLM gain response before averaging each cell. Invert that
     * monotone response at each reference match boundary to retain weighted
     * interval selection without rerunning HDRNet or Dehaze/DHA.
     */
    std::optional<Sample> SolveSingleGridExposure(
        const float* display_linear_rgb,
        int width,
        int height,
        float minimum_ev,
        float maximum_ev) const {
        if (display_linear_rgb == nullptr || width < kGridColumns || height < kGridRows ||
            !std::isfinite(minimum_ev) || !std::isfinite(maximum_ev) ||
            static_cast<int64_t>(width) * height > std::numeric_limits<int>::max() / 3) {
            return std::nullopt;
        }
        const float safe_minimum = std::clamp(minimum_ev, kMinExposureEv, kMaxExposureEv);
        const float safe_maximum = std::clamp(maximum_ev, kMinExposureEv, kMaxExposureEv);
        if (safe_minimum > safe_maximum) return std::nullopt;

        namespace post = photon::hdrnet_post_exposure;
        std::vector<std::vector<post::Rgb>> cells(kGridCellCount);
        for (int y = 0; y < height; ++y) {
            for (int x = 0; x < width; ++x) {
                const int offset = (y * width + x) * 3;
                const post::Rgb rgb{display_linear_rgb[offset], display_linear_rgb[offset + 1],
                                    display_linear_rgb[offset + 2]};
                if (!std::isfinite(rgb.red) || !std::isfinite(rgb.green) || !std::isfinite(rgb.blue) ||
                    std::min({rgb.red, rgb.green, rgb.blue}) < 0.0f ||
                    std::max({rgb.red, rgb.green, rgb.blue}) > 1.0f) return std::nullopt;
                const int cell = (y * kGridRows / height) * kGridColumns + x * kGridColumns / width;
                cells[cell].push_back(rgb);
            }
        }
        const auto response = [&](int cell, float ev) {
            const auto gains = post::SplitGain(std::exp2(ev));
            double sum = 0.0;
            for (const auto& rgb : cells[cell]) sum += post::DisplayLuma(post::Apply(rgb, gains));
            return static_cast<float>(sum / cells[cell].size());
        };
        const auto exposure_for_luma = [&](int cell, float target) {
            if (response(cell, safe_minimum) >= target) return safe_minimum;
            if (response(cell, safe_maximum) <= target) return safe_maximum;
            float lower = safe_minimum, upper = safe_maximum;
            for (int iteration = 0; iteration < 24; ++iteration) {
                const float middle = (lower + upper) * 0.5f;
                if (response(cell, middle) < target) lower = middle;
                else upper = middle;
            }
            return (lower + upper) * 0.5f;
        };

        std::vector<float> weights = reference_cell_weights_;
        std::vector<float> boundaries{safe_minimum, safe_maximum};
        std::vector<float> proposals{std::clamp(0.0f, safe_minimum, safe_maximum)};
        for (size_t index = 0; index < eligible_cell_indices_.size(); ++index) {
            const int cell = eligible_cell_indices_[index];
            const float reference_luma = reference_grid_lumas_[cell];
            weights[index] *= HdrNetShadowPriority(reference_luma);
            boundaries.push_back(exposure_for_luma(cell,
                reference_luma * std::exp2(-kMatchResidualToleranceEv)));
            boundaries.push_back(exposure_for_luma(cell,
                reference_luma * std::exp2(kMatchResidualToleranceEv)));
            proposals.push_back(exposure_for_luma(cell, reference_luma));
        }
        std::sort(boundaries.begin(), boundaries.end());
        boundaries.erase(std::unique(boundaries.begin(), boundaries.end()), boundaries.end());
        proposals.insert(proposals.end(), boundaries.begin(), boundaries.end());
        for (size_t index = 0; index + 1 < boundaries.size(); ++index) {
            proposals.push_back((boundaries[index] + boundaries[index + 1]) * 0.5f);
        }
        std::sort(proposals.begin(), proposals.end());
        proposals.erase(std::unique(proposals.begin(), proposals.end()), proposals.end());

        std::vector<float> adjusted_lumas(kGridCellCount);
        std::optional<Sample> selected;
        for (float exposure_ev : proposals) {
            for (int cell : eligible_cell_indices_) adjusted_lumas[cell] = response(cell, exposure_ev);
            MatchResult match;
            if (!EvaluateGridLumas(adjusted_lumas.data(), kGridCellCount, &match, &weights)) {
                return std::nullopt;
            }
            const Sample sample{exposure_ev, match};
            if (!selected.has_value() || IsBetter(sample, *selected)) selected = sample;
        }
        if (selected.has_value()) LogSelectedMatch("HDRNET_ROLLOFF", selected->exposure_ev, selected->match);
        return selected;
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
private:
    bool IsExpectedCandidate(float exposure_ev) const {
        return pending_exposure_ev_.has_value() && std::isfinite(exposure_ev) &&
            std::abs(*pending_exposure_ev_ - exposure_ev) <=
                kMinimumCandidateStepEv * 0.1f;
    }

    bool CommitCandidate(float exposure_ev, const MatchResult& match) {
        LogScalarMatchCandidate(
            static_cast<int>(samples_.size()), exposure_ev, match);
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
            if (luma <= kShadowWeightZeroDisplayLinearLuma ||
                luma >= kHighlightWeightZeroDisplayLinearLuma) continue;
            const float weight =
                ReferenceReliabilityWeight(luma) * SpatialGridWeight(cell);
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
        reference_cell_log2_lumas_.reserve(eligible_cell_indices_.size());
        for (size_t index = 0; index < eligible_cell_indices_.size(); ++index) {
            const float luma = reference_grid_lumas_[eligible_cell_indices_[index]];
            const float log2_luma = std::log2(
                std::max(luma, kDisplayLinearLumaFloor));
            reference_cell_log2_lumas_.push_back(log2_luma);
        }
        LogReferenceGrid(
            static_cast<int>(eligible_cell_indices_.size()),
            reference_weight_sum_,
            portrait_priority_weights != nullptr);
        return true;
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
        const std::vector<float>* weights_override = nullptr) const {
        if (candidate_grid_lumas == nullptr || output == nullptr ||
            candidate_count != kGridCellCount ||
            (weights_override != nullptr && weights_override->size() != reference_cell_weights_.size())) {
            return false;
        }
        const int valid_count = static_cast<int>(eligible_cell_indices_.size());
        std::vector<WeightedValue> log2_ratios(static_cast<size_t>(valid_count));
        int compared_count = 0;
        double compared_weight_sum = 0.0;
        double matched_weight_sum = 0.0;
        double absolute_log2_ratio_sum = 0.0;
        double robust_log2_loss_sum = 0.0;
#pragma omp parallel for schedule(static) if(valid_count >= 1024) \
    reduction(+:compared_count, compared_weight_sum, matched_weight_sum, \
        absolute_log2_ratio_sum, robust_log2_loss_sum)
        for (int index = 0; index < valid_count; ++index) {
            const int cell = eligible_cell_indices_[index];
            const float candidate_luma = candidate_grid_lumas[cell];
            if (!std::isfinite(candidate_luma)) {
                log2_ratios[index] = WeightedValue{};
                continue;
            }
            const float weight = weights_override != nullptr
                ? (*weights_override)[index] : reference_cell_weights_[index];
            const float safe_candidate = std::max(candidate_luma, kDisplayLinearLumaFloor);
            const float candidate_ev = std::log2(safe_candidate);
            const float log2_ratio = std::clamp(
                candidate_ev - reference_cell_log2_lumas_[index],
                -kMaximumAbsoluteLog2Residual,
                kMaximumAbsoluteLog2Residual);
            log2_ratios[index] = WeightedValue{log2_ratio, weight};
            const bool matched =
                std::abs(log2_ratio) <= kMatchResidualToleranceEv;
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
        output->match_rate = static_cast<float>(matched_weight_sum / compared_weight_sum);
        output->mean_absolute_log2_ratio =
            static_cast<float>(absolute_log2_ratio_sum / compared_weight_sum);
        output->median_log2_ratio = WeightedMedian(
            &log2_ratios,
            static_cast<float>(compared_weight_sum));
        output->robust_log2_loss =
            static_cast<float>(robust_log2_loss_sum / compared_weight_sum);
        output->recommended_exposure_correction_ev = RobustExposureCorrection(
            log2_ratios,
            static_cast<float>(compared_weight_sum));
        return std::isfinite(output->match_rate) &&
            std::isfinite(output->mean_absolute_log2_ratio) &&
            std::isfinite(output->median_log2_ratio) &&
            std::isfinite(output->robust_log2_loss) &&
            std::isfinite(output->recommended_exposure_correction_ev);
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
    float reference_weight_sum_ = 0.0f;
    float minimum_exposure_ev_ = kMinExposureEv;
    float maximum_exposure_ev_ = kMaxExposureEv;
    bool finished_ = false;
    std::optional<float> pending_exposure_ev_;
    std::vector<float> reference_grid_lumas_;
    std::vector<int> eligible_cell_indices_;
    std::vector<float> reference_cell_weights_;
    std::vector<float> reference_cell_log2_lumas_;
    std::vector<Sample> samples_;
};

ExposureSolver* FromHandle(jlong handle) {
    return reinterpret_cast<ExposureSolver*>(static_cast<intptr_t>(handle));
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

extern "C" JNIEXPORT jfloatArray JNICALL
Java_com_hinnka_mycamera_raw_RawLegacyAutoExposureNativeBridge_nativeSolveSingleGridExposure(
    JNIEnv* env,
    jobject,
    jlong handle,
    jfloatArray candidate_display_linear_rgb,
    jint width,
    jint height,
    jfloat minimum_exposure_ev,
    jfloat maximum_exposure_ev) {
    ExposureSolver* solver = FromHandle(handle);
    const int64_t value_count = static_cast<int64_t>(width) * height * 3;
    if (solver == nullptr || candidate_display_linear_rgb == nullptr ||
        width < kGridColumns || height < kGridRows ||
        value_count > std::numeric_limits<jsize>::max() ||
        env->GetArrayLength(candidate_display_linear_rgb) != value_count) {
        return nullptr;
    }
    jfloat* rgb = env->GetFloatArrayElements(candidate_display_linear_rgb, nullptr);
    if (rgb == nullptr) return nullptr;
    std::optional<Sample> result;
    try {
        result = solver->SolveSingleGridExposure(
            rgb,
            width,
            height,
            minimum_exposure_ev,
            maximum_exposure_ev);
    } catch (const std::bad_alloc&) {
        result.reset();
    }
    env->ReleaseFloatArrayElements(candidate_display_linear_rgb, rgb, JNI_ABORT);
    if (!result.has_value()) return nullptr;
    const jfloat values[] = {
        result->exposure_ev,
        result->match.match_rate,
        result->match.mean_absolute_log2_ratio,
    };
    jfloatArray output = env->NewFloatArray(3);
    if (output != nullptr) env->SetFloatArrayRegion(output, 0, 3, values);
    return output;
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

extern "C" JNIEXPORT jfloat JNICALL
Java_com_hinnka_mycamera_raw_RawLegacyAutoExposureNativeBridge_nativeGetResultExposureEv(
    JNIEnv*,
    jobject,
    jlong handle) {
    ExposureSolver* solver = FromHandle(handle);
    if (solver == nullptr || !solver->HasResult()) {
        return std::numeric_limits<float>::quiet_NaN();
    }
    const Sample& selected = solver->BestSample();
    LogSelectedMatch("SCALAR", selected.exposure_ev, selected.match);
    return selected.exposure_ev;
}

extern "C" JNIEXPORT void JNICALL
Java_com_hinnka_mycamera_raw_RawLegacyAutoExposureNativeBridge_nativeDestroy(
    JNIEnv*,
    jobject,
    jlong handle) {
    delete FromHandle(handle);
}
