#include <cassert>
#include <cmath>
#include <cstdint>
#include <iostream>
#include <vector>

// Include the production implementation so this host test exercises the exact 8 x 6 weighting,
// portrait priority, +/-0.1 EV match intervals, and one-pass exposure selection.
#include "../app/src/main/cpp/raw_legacy_auto_exposure_solver.cpp"

namespace {

constexpr int kReferenceCode = 128;

jint GrayPixel(int code) {
    const uint32_t channel = static_cast<uint32_t>(code & 0xff);
    return static_cast<jint>(
        0xff000000U | (channel << 16U) | (channel << 8U) | channel);
}

float ReferenceLuma() {
    return *DisplayLinearLuma(GrayPixel(kReferenceCode));
}

std::unique_ptr<ExposureSolver> CreateSolver(
    const std::vector<float>* portrait_weights = nullptr) {
    std::vector<jint> pixels(kGridCellCount, GrayPixel(kReferenceCode));
    return ExposureSolver::Create(
        pixels.data(),
        portrait_weights != nullptr ? portrait_weights->data() : nullptr,
        kGridColumns,
        kGridRows);
}

void TestUniformGridResolvesExactExposure() {
    auto solver = CreateSolver();
    assert(solver != nullptr);
    std::vector<float> candidate(kGridCellCount, ReferenceLuma() * 0.5f);
    const auto result = solver->SolveSingleGridExposure(
        candidate.data(), kGridColumns, kGridRows, -4.0f, 4.0f);
    assert(result.has_value());
    assert(std::abs(result->exposure_ev - 1.0f) < 1.0e-4f);
    assert(std::abs(result->match.match_rate - 1.0f) < 1.0e-6f);
}

void TestPortraitPriorityOutweighsBackground() {
    std::vector<float> portrait_weights(kGridCellCount, 0.0f);
    std::vector<float> candidate(kGridCellCount, ReferenceLuma() * 2.0f);
    for (int y = 2; y <= 3; ++y) {
        for (int x = 2; x <= 5; ++x) {
            const int cell = y * kGridColumns + x;
            portrait_weights[cell] = 1.0f;
            candidate[cell] = ReferenceLuma() * 0.5f;
        }
    }
    auto solver = CreateSolver(&portrait_weights);
    assert(solver != nullptr);
    const auto result = solver->SolveSingleGridExposure(
        candidate.data(), kGridColumns, kGridRows, -4.0f, 4.0f);
    assert(result.has_value());
    assert(std::abs(result->exposure_ev - 1.0f) < 1.0e-4f);
    assert(result->match.match_rate > 0.70f);
}

void TestHighlightHeadroomBoundsPositiveMatch() {
    auto solver = CreateSolver();
    assert(solver != nullptr);
    std::vector<float> candidate(kGridCellCount, ReferenceLuma() * 0.5f);
    const auto result = solver->SolveSingleGridExposure(
        candidate.data(), kGridColumns, kGridRows, -4.0f, 0.25f);
    assert(result.has_value());
    assert(std::abs(result->exposure_ev - 0.25f) < 1.0e-6f);
}

}  // namespace

int main() {
    TestUniformGridResolvesExactExposure();
    TestPortraitPriorityOutweighsBackground();
    TestHighlightHeadroomBoundsPositiveMatch();
    std::cout << "raw HDRNet post-exposure solver tests passed\n";
    return 0;
}
