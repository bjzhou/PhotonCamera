#include "spectral_generator.h"
#include "spectral_graph.h"
#include <jni.h>
#include <android/log.h>
#include <algorithm>
#include <chrono>
#include <cmath>
#include <memory>
#include <mutex>
#include <stdexcept>

namespace {
using namespace spektrafilm;
using FilmOptions = std::array<float, 25>;
using PrintOptions = std::array<float, 15>;
using ScanOptions = std::array<float, 11>;
constexpr FilmOptions stockFilmOptions{0, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 1, 6};

struct RuntimeModel {
    std::string sharedKey, filmKey;
    DataSet shared, filmData;
    std::unique_ptr<Filming> film;
    FilmOptions filmOptions = stockFilmOptions;
    DensityWire wire{};
};
RuntimeModel model;
std::mutex modelMutex;

std::string string(JNIEnv* env, jstring value) {
    if (!value) throw std::invalid_argument("Missing spectral model key");
    const char* chars = env->GetStringUTFChars(value, nullptr);
    if (!chars) throw std::runtime_error("Unable to read spectral model key");
    std::string result(chars);
    env->ReleaseStringUTFChars(value, chars);
    return result;
}
DataSet data(JNIEnv* env, jbyteArray input) {
    if (!input) throw std::invalid_argument("Missing spectral model data");
    const jsize size = env->GetArrayLength(input);
    if (size <= 0 || size > 64 * 1024 * 1024) throw std::invalid_argument("Invalid spectral model byte count");
    jbyte* bytes = env->GetByteArrayElements(input, nullptr);
    if (!bytes) throw std::runtime_error("Unable to access spectral model data");
    try {
        auto result = readDataSet(reinterpret_cast<uint8_t*>(bytes), size);
        env->ReleaseByteArrayElements(input, bytes, JNI_ABORT);
        return result;
    } catch (...) {
        env->ReleaseByteArrayElements(input, bytes, JNI_ABORT);
        throw;
    }
}
jfloatArray output(JNIEnv* env, const std::vector<float>& values) {
    jfloatArray array = env->NewFloatArray(static_cast<jsize>(values.size()));
    if (!array) throw std::runtime_error("Unable to allocate spectral lattice");
    if (!values.empty()) env->SetFloatArrayRegion(array, 0, static_cast<jsize>(values.size()), values.data());
    if (env->ExceptionCheck()) throw std::runtime_error("Unable to copy spectral lattice");
    return array;
}

template<size_t N>
std::array<float, N> options(JNIEnv* env, jfloatArray input) {
    if (!input || env->GetArrayLength(input) != N)
        throw std::invalid_argument("Invalid Spektrafilm option count");
    std::array<float, N> values{};
    env->GetFloatArrayRegion(input, 0, N, values.data());
    if (env->ExceptionCheck() || !std::all_of(values.begin(), values.end(), [](float v) { return std::isfinite(v); }))
        throw std::invalid_argument("Invalid Spektrafilm options");
    return values;
}

void configureFilm(const FilmOptions& values, bool directScan) {
    const bool rebuild = !model.film ||
        !std::equal(values.begin() + 6, values.begin() + 15, model.filmOptions.begin() + 6);
    if (rebuild) {
        const SpectralOptics optics{values[6] != 0, values[7] != 0, values[8], values[9] != 0,
            values[10] != 0, values[11] != 0, {values[12], values[13], values[14]}};
        model.film = std::make_unique<Filming>(model.shared, model.filmData, optics);
    }
    if (rebuild || !std::equal(values.begin() + 1, values.begin() + 6, model.filmOptions.begin() + 1) ||
        !std::equal(values.begin() + 15, values.end(), model.filmOptions.begin() + 15)) {
        FilmDevelopment development{values[1], values[2] != 0, values[3], values[4], values[5], values[15] != 0};
        std::copy(values.begin() + 16, values.end(), development.dirCoefficients.begin());
        model.film->configureDevelopment(development);
    }

    model.film->setScanExposureMultiplier(1);
    if (!directScan) {
        // The stock wire preserves cached stock LUTs. Tuned development and
        // exposure can reach the whole emulsion curve, including its plateau.
        model.wire = values == stockFilmOptions ? measureDensityWire(*model.film) :
            DensityWire{{-0.2, -0.2, -0.2}, model.film->densityMax()};
    }
    model.filmOptions = values;
}

PrintControls printControls(const PrintOptions& values) {
    return {values[0], values[1], values[2] != 0,
        values[3], values[4], values[5], values[6], values[7], values[8], values[9], values[10],
        {values[11], values[12], values[13]}, values[14]};
}

OutputGamutAlgorithm outputAlgorithm(float value) {
    if (value < 0 || value > 5 || value != std::floor(value))
        throw std::invalid_argument("Invalid Spektrafilm output gamut algorithm");
    return static_cast<OutputGamutAlgorithm>(static_cast<int>(value));
}
}

extern "C" JNIEXPORT jobjectArray JNICALL
Java_com_hinnka_mycamera_raw_SpektrafilmNativeBridge_generate(
    JNIEnv* env, jobject, jstring sharedKeyValue, jstring filmKeyValue,
    jbyteArray sharedData, jbyteArray filmData, jstring paperNameValue,
    jbyteArray paperData, jboolean positive, jboolean directScan, jboolean buildFilm, jboolean buildPrint,
    jfloatArray filmOptions, jfloatArray printOptions, jint filmDyeOrder, jint paperDyeOrder,
    jfloatArray scanOptions, jboolean buildGraph, jboolean needsGlare, jboolean needsGrain) {
    std::lock_guard<std::mutex> lock(modelMutex);
    try {
        const auto started = std::chrono::steady_clock::now();
        const std::string sharedKey = string(env, sharedKeyValue);
        const std::string filmKey = string(env, filmKeyValue);
        const std::string paperName = string(env, paperNameValue);
        const auto filmValues = options<25>(env, filmOptions);
        if (model.sharedKey != sharedKey) {
            model = RuntimeModel{};
            model.shared = data(env, sharedData);
            model.sharedKey = sharedKey;
        }
        if (model.filmKey != filmKey) {
            model.film.reset();
            model.filmData.clear();
            model.filmKey.clear();
            model.filmData = data(env, filmData);
            model.filmKey = filmKey;
        }
        configureFilm(filmValues, directScan);
        if (model.film->positive() != bool(positive) || (positive && !directScan) || (directScan && buildPrint))
            throw std::invalid_argument("Spectral model topology mismatch");
        const auto scanValues = options<11>(env, scanOptions);
        const ScanControls scanControls{scanValues[0] != 0, scanValues[1], scanValues[2] != 0, scanValues[3]};
        const OutputGamut gamut(outputAlgorithm(scanValues[4]), {scanValues[5], scanValues[6], scanValues[7]});
        std::unique_ptr<Printing> printing;
        std::unique_ptr<Scanner> scanner;
        if (directScan) {
            scanner = std::make_unique<Scanner>(model.shared, model.filmData, gamut, filmDyeOrder);
            const auto correction = positiveScanCorrection(*scanner, *model.film, model.filmData, scanControls);
            scanner->configureBlackWhite(correction);
            model.film->setScanExposureMultiplier(correction.exposure);
        } else if (buildPrint || buildGraph) {
            const DataSet paper = data(env, paperData);
            const auto controls = printControls(options<15>(env, printOptions));
            printing = std::make_unique<Printing>(model.shared, model.filmData, paper, paperName,
                model.film->midgrayDensity(), model.film->midgrayDensity(controls.compensationEv), controls, filmDyeOrder);
            scanner = std::make_unique<Scanner>(model.shared, paper, gamut, paperDyeOrder);
            const auto correction = printScanCorrection(*scanner, *printing, *model.film, paper, scanControls,
                {scanValues[8], scanValues[9], scanValues[10]});
            scanner->configureBlackWhite(correction);
            printing->setScanExposureCorrection(correction.exposure);
        }

        std::array<std::vector<float>, 9> tables;
        if (buildFilm) {
            tables[0] = generateFilmLut(*model.film, model.wire, directScan ? scanner.get() : nullptr, 65, filmValues[0]);
        }
        if (buildPrint) {
            tables[1] = generatePrintLut(*printing, *scanner, model.wire, 65);
        }
        if (buildGraph) {
            auto graph = buildSpectralGraph(*model.film, model.filmData, printing.get(), *scanner, needsGlare, needsGrain);
            std::move(graph.begin(), graph.end(), tables.begin() + 2);
        }
        jclass floatArrayClass = env->FindClass("[F");
        if (!floatArrayClass) throw std::runtime_error("Missing float array class");
        const int tableCount = buildGraph ? 9 : 2;
        jobjectArray result = env->NewObjectArray(tableCount, floatArrayClass, nullptr);
        env->DeleteLocalRef(floatArrayClass);
        if (!result) throw std::runtime_error("Unable to allocate spectral result");
        for (int i = 0; i < tableCount; ++i) {
            jfloatArray payload = output(env, tables[i]);
            env->SetObjectArrayElement(result, i, payload);
            env->DeleteLocalRef(payload);
            if (env->ExceptionCheck()) throw std::runtime_error("Unable to return spectral result");
            // Release each native array before constructing the next Java array.
            std::vector<float>().swap(tables[i]);
        }
        const auto elapsed = std::chrono::duration_cast<std::chrono::milliseconds>(
            std::chrono::steady_clock::now() - started).count();
        __android_log_print(ANDROID_LOG_DEBUG, "SpektrafilmNative", "Generated on demand: film=%d print=%d size=65 elapsed=%lldms model=%s",
                            int(buildFilm), int(buildPrint), static_cast<long long>(elapsed), filmKey.c_str());
        return result;
    } catch (const std::exception& e) {
        // Kotlin invalidates its model-key handshake after any failed call.
        model = RuntimeModel{};
        if (!env->ExceptionCheck()) {
            jclass exception = env->FindClass("java/lang/IllegalStateException");
            if (exception) env->ThrowNew(exception, e.what());
        }
        return nullptr;
    } catch (...) {
        model = RuntimeModel{};
        if (!env->ExceptionCheck()) {
            jclass exception = env->FindClass("java/lang/IllegalStateException");
            if (exception) env->ThrowNew(exception, "Native spectral generation failed");
        }
        return nullptr;
    }
}
