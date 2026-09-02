#include <cassert>
#include <cmath>
#include <iostream>
#include <limits>

// Include the production implementation so this host test exercises the real state machine,
// Jacobian construction, damped solve, Broyden update, bounds, and fallback rather than a copy.
#include "../app/src/main/cpp/raw_legacy_auto_exposure_solver.cpp"

namespace {

MatchResult SyntheticMatch(
    float highlight_error_ev,
    float dynamic_range_error_ev,
    float recommended_correction_ev) {
    MatchResult match;
    const float maximum_error = std::max(
        std::abs(highlight_error_ev),
        std::abs(dynamic_range_error_ev));
    match.match_rate = maximum_error <= kMatchResidualToleranceEv ? 1.0f : 0.0f;
    match.mean_absolute_log2_ratio = maximum_error;
    match.median_log2_ratio = highlight_error_ev;
    match.robust_log2_loss =
        highlight_error_ev * highlight_error_ev +
        dynamic_range_error_ev * dynamic_range_error_ev;
    match.recommended_exposure_correction_ev = recommended_correction_ev;
    match.span_error_ev = dynamic_range_error_ev;
    match.short_target_correction_ev = -highlight_error_ev;
    return match;
}

void TestShortAndRatioCoordinatesConverge() {
    auto solver = HdrNetParameterSolver::Create(4.0f, 16.0f);
    assert(solver != nullptr);
    int submitted_count = 0;
    while (const auto parameters = solver->NextParameters()) {
        if (submitted_count == 1) {
            assert(parameters->axis == HdrNetProbeAxis::kShortJacobian);
            assert(std::abs(parameters->ratio_ev) < 1.0e-6f);
        } else if (submitted_count == 2) {
            assert(parameters->axis == HdrNetProbeAxis::kRatioJacobian);
            assert(std::abs(parameters->short_ev) < 1.0e-6f);
        }

        constexpr float target_short_ev = 0.40f;
        constexpr float target_ratio_ev = -0.30f;
        const float short_delta = parameters->short_ev - target_short_ev;
        const float ratio_delta = parameters->ratio_ev - target_ratio_ev;
        const float highlight_error = short_delta + 0.20f * ratio_delta;
        const float dynamic_range_error =
            0.15f * short_delta + 0.80f * ratio_delta;
        assert(solver->Submit(
            parameters->short_ev,
            parameters->ratio_ev,
            SyntheticMatch(
                highlight_error,
                dynamic_range_error,
                -highlight_error)));
        ++submitted_count;
        assert(submitted_count <= kHdrNetMaximumCandidateCount);
    }

    assert(solver->HasResult());
    const HdrNetProbe& result = solver->ResultProbe();
    assert(std::abs(result.short_ev - 0.40f) <= 0.10f);
    assert(std::abs(result.ratio_ev + 0.30f) <= 0.10f);
}

void TestUnidentifiableRatioFallsBackToGlobalExposure() {
    auto solver = HdrNetParameterSolver::Create(4.0f, 16.0f);
    assert(solver != nullptr);
    int submitted_count = 0;
    while (const auto parameters = solver->NextParameters()) {
        constexpr float target_short_ev = 0.80f;
        const float highlight_error = parameters->short_ev - target_short_ev;
        assert(solver->Submit(
            parameters->short_ev,
            parameters->ratio_ev,
            SyntheticMatch(
                highlight_error,
                0.0f,
                target_short_ev - parameters->short_ev)));
        ++submitted_count;
        assert(submitted_count <= kHdrNetMaximumCandidateCount);
    }

    assert(solver->HasResult());
    assert(submitted_count >= 4);
    const HdrNetProbe& result = solver->ResultProbe();
    assert(std::abs(result.short_ev - 0.80f) <= 0.10f);
    assert(std::abs(result.ratio_ev) < 1.0e-6f);
}

}  // namespace

int main() {
    TestShortAndRatioCoordinatesConverge();
    TestUnidentifiableRatioFallsBackToGlobalExposure();
    std::cout << "raw HDRNet parameter solver tests passed\n";
    return 0;
}
