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
constexpr float kMinimumLumaDeltaEv = 0.01f;
constexpr float kMinimumCandidateStepEv = 0.01f;
constexpr float kMinimumInitialStepEv = 0.25f;
constexpr float kMaximumInitialStepEv = 2.0f;
constexpr int kMaximumSampleCount = 16;
constexpr float kHighConfidenceMatchRate = 0.85f;
constexpr float kMatchRateTrendEpsilon = 0.002f;
constexpr float kScoreEqualityEpsilon = 0.000001f;
constexpr float kSrgbTransferThreshold = 0.04045f;
constexpr float kSrgbLinearScale = 12.92f;
constexpr float kSrgbTransferA = 0.055f;
constexpr float kSrgbTransferGamma = 2.4f;
constexpr float kDisplayLinearLumaFloor = 1.0f / (255.0f * 12.92f);
constexpr int kNativeResultSize = 15;

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

float WeightedMedian(std::vector<WeightedValue>* values, float weight_sum) {
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

struct MatchResult {
    int matched_cell_count = 0;
    int valid_cell_count = 0;
    int compared_cell_count = 0;
    float match_rate = 0.0f;
    float mean_absolute_log2_ratio = std::numeric_limits<float>::infinity();
    float median_log2_ratio = std::numeric_limits<float>::quiet_NaN();
    float robust_log2_loss = std::numeric_limits<float>::infinity();
    float reference_weight_sum = 0.0f;
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

        const Sample& best = BestSample();
        if (best.match.match_rate >= kHighConfidenceMatchRate &&
            std::isfinite(best.match.median_log2_ratio) &&
            std::abs(best.match.median_log2_ratio) <= kMinimumLumaDeltaEv) {
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
        if (!pending_exposure_ev_.has_value() ||
            std::abs(*pending_exposure_ev_ - exposure_ev) > kMinimumCandidateStepEv * 0.1f ||
            width != width_ || height != height_) {
            return false;
        }
        MatchResult match;
        if (!Evaluate(pixels, width, height, &match)) return false;
        samples_.push_back(Sample{exposure_ev, match});
        pending_exposure_ev_.reset();
        return true;
    }

    bool HasResult() const { return !samples_.empty(); }

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
        return static_cast<int>(eligible_cell_indices_.size()) >= kMinimumReliableCellCount &&
            reference_weight_sum_ >= kMinimumReferenceWeightSum;
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
        output->median_log2_ratio = WeightedMedian(
            &log2_ratios,
            static_cast<float>(compared_weight_sum));
        output->robust_log2_loss =
            static_cast<float>(robust_log2_loss_sum / compared_weight_sum);
        output->reference_weight_sum = static_cast<float>(compared_weight_sum);
        return std::isfinite(output->match_rate) &&
            std::isfinite(output->mean_absolute_log2_ratio) &&
            std::isfinite(output->median_log2_ratio) &&
            std::isfinite(output->robust_log2_loss) &&
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
        const float safe_ev = std::clamp(exposure_ev, kMinExposureEv, kMaxExposureEv);
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
        const float safe_ev = std::clamp(exposure_ev, kMinExposureEv, kMaxExposureEv);
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

        for (const Sample& sample : samples_) {
            if (!std::isfinite(sample.match.median_log2_ratio)) continue;
            const float predicted_ev =
                sample.exposure_ev - sample.match.median_log2_ratio;
            const float prediction_distance =
                std::abs(predicted_ev - sample.exposure_ev);
            const float score =
                0.40f + sample.match.match_rate * 0.45f +
                std::min(prediction_distance, 1.0f) * 0.05f;
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
            const bool crosses_luma_target =
                std::isfinite(lower.match.median_log2_ratio) &&
                std::isfinite(upper.match.median_log2_ratio) &&
                ((lower.match.median_log2_ratio <= 0.0f &&
                    upper.match.median_log2_ratio >= 0.0f) ||
                    (lower.match.median_log2_ratio >= 0.0f &&
                        upper.match.median_log2_ratio <= 0.0f));
            float candidate_ev;
            if (crosses_luma_target &&
                std::abs(upper.match.median_log2_ratio -
                    lower.match.median_log2_ratio) > 0.0001f) {
                candidate_ev = lower.exposure_ev -
                    lower.match.median_log2_ratio * width /
                    (upper.match.median_log2_ratio -
                        lower.match.median_log2_ratio);
                const float margin = width * 0.15f;
                candidate_ev = std::clamp(
                    candidate_ev,
                    lower.exposure_ev + margin,
                    upper.exposure_ev - margin);
            } else if (lower.match.match_rate > upper.match.match_rate) {
                candidate_ev = lower.exposure_ev + width * 0.382f;
            } else if (upper.match.match_rate > lower.match.match_rate) {
                candidate_ev = lower.exposure_ev + width * 0.618f;
            } else {
                candidate_ev = (lower.exposure_ev + upper.exposure_ev) * 0.5f;
            }
            const float endpoint_rate =
                std::max(lower.match.match_rate, upper.match.match_rate);
            const float rate_gradient =
                std::abs(lower.match.match_rate - upper.match.match_rate);
            const float acquisition = endpoint_rate +
                std::min(width, 1.0f) * 0.20f +
                rate_gradient * 0.35f +
                (crosses_luma_target ? 0.10f : 0.0f);
            AddCandidate(candidate_ev, acquisition, &candidates);
        }

        if (sorted_samples.size() == 1) {
            const Sample& sample = *sorted_samples.front();
            float direction = -sample.match.median_log2_ratio;
            if (!std::isfinite(direction) || std::abs(direction) <= kMinimumLumaDeltaEv) {
                direction = 1.0f;
            }
            const float step = std::clamp(
                std::abs(direction),
                kMinimumInitialStepEv,
                kMaximumInitialStepEv);
            AddCandidate(
                sample.exposure_ev + std::copysign(step, direction),
                1.0f,
                &candidates);
        } else {
            const Sample& left = *sorted_samples.front();
            const Sample& left_neighbor = *sorted_samples[1];
            const float left_improvement =
                left.match.match_rate - left_neighbor.match.match_rate;
            if (left_improvement > kMatchRateTrendEpsilon ||
                (std::isfinite(left.match.median_log2_ratio) &&
                    left.match.median_log2_ratio > kMinimumLumaDeltaEv)) {
                const float step = std::clamp(
                    left_neighbor.exposure_ev - left.exposure_ev,
                    kMinimumInitialStepEv,
                    1.0f);
                AddCandidate(
                    left.exposure_ev - step,
                    left.match.match_rate + 0.30f +
                        std::max(left_improvement, 0.0f),
                    &candidates);
            }

            const Sample& right = *sorted_samples.back();
            const Sample& right_neighbor = *sorted_samples[sorted_samples.size() - 2];
            const float right_improvement =
                right.match.match_rate - right_neighbor.match.match_rate;
            if (right_improvement > kMatchRateTrendEpsilon ||
                (std::isfinite(right.match.median_log2_ratio) &&
                    right.match.median_log2_ratio < -kMinimumLumaDeltaEv)) {
                const float step = std::clamp(
                    right.exposure_ev - right_neighbor.exposure_ev,
                    kMinimumInitialStepEv,
                    1.0f);
                AddCandidate(
                    right.exposure_ev + step,
                    right.match.match_rate + 0.30f +
                        std::max(right_improvement, 0.0f),
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
    bool finished_ = false;
    std::optional<float> pending_exposure_ev_;
    std::vector<float> reference_grid_lumas_;
    std::vector<int> eligible_cell_indices_;
    std::vector<float> reference_cell_weights_;
    std::vector<Sample> samples_;
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
    };
    jfloatArray result = env->NewFloatArray(9);
    if (result != nullptr) env->SetFloatArrayRegion(result, 0, 9, values);
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
