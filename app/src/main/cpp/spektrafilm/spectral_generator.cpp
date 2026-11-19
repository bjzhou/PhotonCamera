#include "spectral_generator.h"
#include <algorithm>
#include <cmath>
#include <exception>
#include <mutex>
#include <stdexcept>

namespace spektrafilm {
namespace {
Vec3 linearInput(int r, int g, int b, int size) {
    // Match the upstream baker's explicit float32 input conversion.
    return {static_cast<float>(2.88 * proPhotoDecode(double(r) / (size - 1))),
            static_cast<float>(2.88 * proPhotoDecode(double(g) / (size - 1))),
            static_cast<float>(2.88 * proPhotoDecode(double(b) / (size - 1)))};
}
template<typename F> std::vector<float> generate(int size, const F& evaluate) {
    if (size != 65) throw std::invalid_argument("Unsupported spectral lattice size");
    std::vector<float> result(size * size * size * 4);
    std::exception_ptr failure;
    std::mutex failureMutex;
    // Bounded workers; never occupy every camera/preview thread to generate a table.
    #pragma omp parallel for num_threads(2) schedule(static)
    for (int b = 0; b < size; ++b) {
        try {
            for (int g = 0; g < size; ++g) for (int r = 0; r < size; ++r) {
                const Vec3 value = evaluate(r, g, b);
                const size_t offset = ((b * size + g) * size + r) * 4;
                for (int c = 0; c < 3; ++c) {
                    if (!std::isfinite(value[c])) throw std::runtime_error("Non-finite spectral LUT output");
                    result[offset + c] = static_cast<float>(std::clamp(value[c], 0.0, 1.0));
                }
                result[offset + 3] = 1;
            }
        } catch (...) {
            std::lock_guard<std::mutex> lock(failureMutex);
            if (!failure) failure = std::current_exception();
        }
    }
    if (failure) std::rethrow_exception(failure);
    return result;
}
}

DensityWire measureDensityWire(const Filming& film) {
    DensityWire wire{{-0.2, -0.2, -0.2}, {0, 0, 0}};
    for (int b = 0; b < 9; ++b) for (int g = 0; g < 9; ++g) for (int r = 0; r < 9; ++r) {
        const Vec3 density = film.develop(linearInput(r, g, b, 9));
        for (int c = 0; c < 3; ++c) wire.maximum[c] = std::max(wire.maximum[c], density[c]);
    }
    for (double& v : wire.maximum) {
        v = std::ceil(v * 1.05 * 1e4) / 1e4;
        if (!std::isfinite(v) || !(v > 0)) throw std::runtime_error("Invalid spectral density domain");
    }
    return wire;
}

std::vector<float> generateFilmLut(const Filming& film, const DensityWire& wire,
                                  const Scanner* scanner, int size, double exposureEv) {
    const double exposure = std::exp2(exposureEv);
    return generate(size, [&](int r, int g, int b) {
        Vec3 input = linearInput(r, g, b, size);
        for (double& channel : input) channel *= exposure;
        Vec3 value = film.develop(input);
        if (scanner) return scanner->scan(value);
        for (int c = 0; c < 3; ++c)
            value[c] = (value[c] - wire.minimum[c]) / (wire.maximum[c] - wire.minimum[c]);
        return value;
    });
}

std::vector<float> generatePrintLut(const Printing& printing, const Scanner& scanner,
                                   const DensityWire& wire, int size) {
    return generate(size, [&](int r, int g, int b) {
        const Vec3 code{1.5 * r / (size - 1), 1.5 * g / (size - 1), 1.5 * b / (size - 1)};
        Vec3 density{};
        for (int c = 0; c < 3; ++c)
            density[c] = static_cast<float>(wire.minimum[c] + code[c] * (wire.maximum[c] - wire.minimum[c]));
        return scanner.scan(printing.develop(printing.expose(density)));
    });
}
}
