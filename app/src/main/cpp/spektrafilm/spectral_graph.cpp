#include "spectral_graph.h"
#include <algorithm>
#include <cmath>
#include <exception>
#include <mutex>
#include <stdexcept>

namespace spektrafilm {
namespace {
constexpr int size = 65;
constexpr int paperCurveSize = 4096;
constexpr double paperLogMin = -10;
constexpr double paperLogMax = 6;

template<class Evaluate>
std::vector<float> lattice(const Evaluate& evaluate) {
    std::vector<float> result(size * size * size * 4);
    std::exception_ptr failure;
    std::mutex mutex;
    #pragma omp parallel for num_threads(2) schedule(static)
    for (int z = 0; z < size; ++z) {
        try {
            for (int y = 0; y < size; ++y) {
                for (int x = 0; x < size; ++x) {
                    const auto value = evaluate(Vec3{double(x)/(size-1), double(y)/(size-1), double(z)/(size-1)});
                    const size_t i = ((z * size + y) * size + x) * 4;
                    for (int c = 0; c < 3; ++c) result[i + c] = static_cast<float>(value[c]);
                    result[i + 3] = 1;
                }
            }
        } catch (...) {
            std::lock_guard lock(mutex);
            if (!failure) failure = std::current_exception();
        }
    }
    if (failure) std::rethrow_exception(failure);
    if (std::any_of(result.begin(), result.end(), [](float v) { return !std::isfinite(v); }))
        throw std::runtime_error("Non-finite Spektrafilm stage lattice");
    return result;
}

Vec3 toDomain(const Vec3& code, const Vec3& low, const Vec3& high) {
    return {low[0] + code[0] * (high[0] - low[0]), low[1] + code[1] * (high[1] - low[1]),
            low[2] + code[2] * (high[2] - low[2])};
}

void append(std::vector<float>& target, const Vec3& values) {
    for (double v : values) target.push_back(static_cast<float>(v));
}
}

SpectralGraph buildSpectralGraph(const Filming& film, const DataSet& filmData,
                                const Printing* print, const Scanner& scanner,
                                bool needsGlare, bool needsGrain) {
    SpectralGraph graph;
    auto& [filmRaw, filmCurves, paperRaw, paperCurves, scan, gamut, config] = graph;
    filmRaw = lattice([&](const Vec3& code) {
        Vec3 linear{};
        for (int c = 0; c < 3; ++c) linear[c] = static_cast<float>(2.88 * proPhotoDecode(code[c]));
        return film.exposeProPhoto(linear);
    });

    const auto& axis = film.logExposure();
    const auto& stock = film.normalizedCurves();
    const auto& beforeDir = film.dirActive() ? film.beforeDirCurves() : stock;
    const auto* layers = needsGrain ? &filmData.at("filming_layer_curves") : nullptr;
    if (layers && layers->size() != axis.size() * 9) throw std::invalid_argument("Invalid Spektrafilm grain layer curves");
    filmCurves.resize(axis.size() * 4 * (layers ? 5 : 2));
    std::array<Vec3, 3> layerMax{};
    for (size_t i = 0; i < axis.size(); ++i) {
        for (int c = 0; c < 3; ++c) {
            filmCurves[i * 4 + c] = static_cast<float>(stock[i * 3 + c]);
            filmCurves[(axis.size() + i) * 4 + c] = static_cast<float>(beforeDir[i * 3 + c]);
            if (layers) for (size_t layer = 0; layer < 3; ++layer) {
                const double density = (*layers)[i * 9 + layer * 3 + c];
                layerMax[layer][c] = std::max(layerMax[layer][c], density);
                filmCurves[(axis.size() * (layer + 2) + i) * 4 + c] = static_cast<float>(density);
            }
        }
        filmCurves[i * 4 + 3] = static_cast<float>(axis[i]);
    }

    const Vec3 filmLow{-1, -1, -1};
    Vec3 filmHigh = film.densityMax();
    for (double& v : filmHigh) v = v * 1.5 + 1;
    Vec3 scanLow = filmLow, scanHigh = filmHigh;
    if (print) {
        paperRaw = lattice([&](const Vec3& code) {
            return print->expose(toDomain(code, filmLow, filmHigh));
        });
        paperCurves.resize(paperCurveSize * 4);
        for (int i = 0; i < paperCurveSize; ++i) {
            const double e = paperLogMin + i * (paperLogMax-paperLogMin) / (paperCurveSize-1);
            const auto density = print->develop({e, e, e});
            for (int c = 0; c < 3; ++c) paperCurves[i * 4 + c] = static_cast<float>(density[c]);
        }
        scanLow = print->develop({paperLogMin, paperLogMin, paperLogMin});
        scanHigh = print->develop({paperLogMax, paperLogMax, paperLogMax});
    }
    const bool unbounded = scanner.unboundedGamut();
    scan = lattice([&](const Vec3& code) {
        const auto density = toDomain(code, scanLow, scanHigh);
        if (needsGlare) return scanner.linearRgb(density);
        if (unbounded) return scanner.gamutRgb(scanner.linearRgb(density));
        return scanner.scan(density);
    });
    Vec3 gamutLow{}, gamutHigh{1, 1, 1};
    const auto white = scanner.whiteRgb();
    if (needsGlare) {
        for (size_t i = 0; i < scan.size(); i += 4) for (int c = 0; c < 3; ++c) {
            gamutLow[c] = std::min(gamutLow[c], double(scan[i+c]));
            gamutHigh[c] = std::max(gamutHigh[c], double(scan[i+c]));
        }
        for (int c = 0; c < 3; ++c) gamutHigh[c] += std::max(white[c], 0.0) * 0.25;
        gamut = lattice([&](const Vec3& code) {
            Vec3 rgb = scanner.gamutRgb(toDomain(code, gamutLow, gamutHigh));
            if (!unbounded) for (double& v : rgb) v = proPhotoEncode(v);
            return rgb;
        });
    }

    config = {float(axis.size()), layers ? 5.f : 2.f, film.positive() ? 1.f : 0.f,
              static_cast<float>(film.exposureMultiplier())};
    append(config, film.gamma());                            // 4
    append(config, film.densityMax());                       // 7
    for (double v : film.dirMatrix()) config.push_back(film.dirActive() ? static_cast<float>(v) : 0.f); // 10
    append(config, filmLow);                                // 19
    append(config, filmHigh);                               // 22
    append(config, scanLow);                                // 25
    append(config, scanHigh);                               // 28
    append(config, white);                                  // 31
    append(config, gamutLow);                               // 34
    append(config, gamutHigh);                              // 37
    for (const auto& v : layerMax) append(config, v);       // 40
    config.push_back(unbounded ? 1.f : 0.f);                // 49
    return graph;
}
}
