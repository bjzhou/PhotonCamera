/*
 * Runtime research helper for the locally supplied Phocus libcrosssdk.so.
 *
 * The static gradation tables live in BSS and are initialized by
 * CGradationManager::InitGradationCurves(), so they cannot be copied from the
 * ELF file directly.  This helper asks the original constructor for each
 * film-curve/companding combination and writes the returned 65,536 float
 * samples without reimplementing any vendor math.
 */

#include <dlfcn.h>
#include <errno.h>
#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

namespace {

constexpr size_t kManagerBytes = 0xd0;
constexpr size_t kExpectedSamples = 65536;

struct FloatSpan {
    const float *data;
    size_t size;
};

using ManagerConstructor = void (*)(void *, int, int);
using GetGradationCurve = FloatSpan (*)(void *);

template <typename T>
T RequireSymbol(void *library, const char *name) {
    dlerror();
    void *symbol = dlsym(library, name);
    const char *error = dlerror();
    if (error != nullptr || symbol == nullptr) {
        fprintf(stderr, "dlsym(%s) failed: %s\n", name, error ? error : "null");
        exit(3);
    }
    return reinterpret_cast<T>(symbol);
}

uint64_t Fnv1a64(const float *values, size_t count) {
    uint64_t hash = UINT64_C(14695981039346656037);
    const uint8_t *bytes = reinterpret_cast<const uint8_t *>(values);
    const size_t byte_count = count * sizeof(float);
    for (size_t index = 0; index < byte_count; ++index) {
        hash ^= bytes[index];
        hash *= UINT64_C(1099511628211);
    }
    return hash;
}

bool WriteCurve(
    const char *directory,
    int film_curve_type,
    int companding,
    const FloatSpan &curve
) {
    char path[512];
    snprintf(
        path,
        sizeof(path),
        "%s/filmcurve-type%d-companding%d-f32le.bin",
        directory,
        film_curve_type,
        companding
    );
    FILE *output = fopen(path, "wb");
    if (output == nullptr) {
        fprintf(stderr, "fopen(%s) failed: %s\n", path, strerror(errno));
        return false;
    }
    const size_t written = fwrite(curve.data, sizeof(float), curve.size, output);
    const int close_result = fclose(output);
    if (written != curve.size || close_result != 0) {
        fprintf(stderr, "write(%s) failed: %s\n", path, strerror(errno));
        return false;
    }
    printf(
        "type=%d companding=%d samples=%zu first=%.9g p25=%.9g "
        "p50=%.9g p75=%.9g last=%.9g fnv1a64=%016llx file=%s\n",
        film_curve_type,
        companding,
        curve.size,
        curve.data[0],
        curve.data[curve.size / 4],
        curve.data[curve.size / 2],
        curve.data[curve.size * 3 / 4],
        curve.data[curve.size - 1],
        static_cast<unsigned long long>(Fnv1a64(curve.data, curve.size)),
        path
    );
    return true;
}

}  // namespace

int main(int argc, char **argv) {
    if (argc != 3) {
        fprintf(stderr, "usage: %s LIBCROSSSDK_SO OUTPUT_DIRECTORY\n", argv[0]);
        return 1;
    }

    void *library = dlopen(argv[1], RTLD_NOW | RTLD_LOCAL);
    if (library == nullptr) {
        fprintf(stderr, "dlopen(%s) failed: %s\n", argv[1], dlerror());
        return 2;
    }

    const auto construct = RequireSymbol<ManagerConstructor>(
        library,
        "_ZN17CGradationManagerC1E14eFilmCurveType11eCompanding"
    );
    const auto get_curve = RequireSymbol<GetGradationCurve>(
        library,
        "_ZN17CGradationManager17GetGradationCurveEv"
    );

    bool success = true;
    for (int companding = 1; companding <= 2; ++companding) {
        for (int film_curve_type = 0; film_curve_type <= 7; ++film_curve_type) {
            alignas(16) uint8_t manager[kManagerBytes] = {};
            construct(manager, film_curve_type, companding);
            const FloatSpan curve = get_curve(manager);
            if (curve.data == nullptr || curve.size != kExpectedSamples) {
                fprintf(
                    stderr,
                    "invalid curve type=%d companding=%d data=%p samples=%zu\n",
                    film_curve_type,
                    companding,
                    static_cast<const void *>(curve.data),
                    curve.size
                );
                success = false;
            } else {
                success &= WriteCurve(
                    argv[2],
                    film_curve_type,
                    companding,
                    curve
                );
            }
            // The destructor is local/hidden in this build.  Each manager owns
            // one 256 KiB vector; allowing the short-lived extractor process
            // to reclaim these allocations at exit avoids guessing a hidden
            // ABI while keeping the source library completely unmodified.
        }
    }

    dlclose(library);
    return success ? 0 : 4;
}
