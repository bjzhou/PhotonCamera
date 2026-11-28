#include <android/log.h>
#include <jni.h>

#include <cmath>
#include <vector>

#include "qcom_adrc_ltm_pgtm.h"

namespace {

constexpr char kLogTag[] = "PLog_QcomAdrcPgtm";

}  // namespace

extern "C" JNIEXPORT jfloatArray JNICALL
Java_com_hinnka_mycamera_raw_DngQualcommAdrcNative_nativeGenerateQualcommAdrcPgtm(
    JNIEnv* env,
    jobject /* thiz */,
    jfloatArray linearRgbaArray,
    jint width,
    jint height,
    jint iso,
    jint minIso,
    jint maxIso,
    jint maxAnalogIso,
    jlong shutterSpeedNs,
    jlong maxExposureTimeNs,
    jfloat aperture,
    jint aeMode,
    jfloat postRawSensitivityBoost,
    jfloat exposureCompensationEv,
    jfloat rendererBaselineGain,
    jfloat maxLinearIntensity,
    jint frameCount,
    jfloatArray faceRectsArray,
    jint pointCount,
    jfloat rangeScale,
    jfloatArray outputCurveArray,
    jfloatArray outDiagnostics) {
    if (linearRgbaArray == nullptr || width <= 0 || height <= 0 || pointCount < 2) {
        __android_log_print(ANDROID_LOG_ERROR, kLogTag, "Invalid arguments to nativeGenerateQualcommAdrcPgtm");
        return nullptr;
    }

    const jsize expectedLength = width * height * 4;
    if (env->GetArrayLength(linearRgbaArray) < expectedLength) {
        __android_log_print(ANDROID_LOG_ERROR, kLogTag, "linearRgbaArray length too small");
        return nullptr;
    }

    jfloat* rgbaPtr = env->GetFloatArrayElements(linearRgbaArray, nullptr);
    if (rgbaPtr == nullptr) {
        return nullptr;
    }

    qcom_adrc::AdrcInputParams params;
    params.width = width;
    params.height = height;
    params.iso = iso;
    params.minIso = minIso;
    params.maxIso = maxIso;
    params.maxAnalogIso = maxAnalogIso;
    params.shutterSpeedNs = static_cast<int64_t>(shutterSpeedNs);
    params.maxExposureTimeNs = static_cast<int64_t>(maxExposureTimeNs);
    params.aperture = aperture;
    params.aeMode = aeMode;
    params.postRawSensitivityBoost = postRawSensitivityBoost;
    params.exposureCompensationEv = exposureCompensationEv;
    params.rendererBaselineGain = rendererBaselineGain;
    params.maxLinearIntensity = maxLinearIntensity;
    params.frameCount = frameCount;

    if (faceRectsArray != nullptr) {
        const jsize faceLen = env->GetArrayLength(faceRectsArray);
        if (faceLen >= 4) {
            jfloat* facePtr = env->GetFloatArrayElements(faceRectsArray, nullptr);
            if (facePtr != nullptr) {
                const int faceCount = faceLen / 4;
                params.faceRects.reserve(static_cast<size_t>(faceCount));
                for (int i = 0; i < faceCount; ++i) {
                    const float l = facePtr[i * 4 + 0];
                    const float t = facePtr[i * 4 + 1];
                    const float r = facePtr[i * 4 + 2];
                    const float b = facePtr[i * 4 + 3];
                    if (std::isfinite(l) && std::isfinite(t) && std::isfinite(r) && std::isfinite(b) &&
                        r > l && b > t) {
                        params.faceRects.push_back({l, t, r, b});
                    }
                }
                env->ReleaseFloatArrayElements(faceRectsArray, facePtr, JNI_ABORT);
            }
        }
    }

    jfloat* outputCurvePtr = nullptr;
    int outputCurveCount = 0;
    if (outputCurveArray != nullptr) {
        const jsize curveLen = env->GetArrayLength(outputCurveArray);
        if (curveLen >= 2) {
            outputCurvePtr = env->GetFloatArrayElements(outputCurveArray, nullptr);
            if (outputCurvePtr != nullptr) {
                outputCurveCount = static_cast<int>(curveLen);
            }
        }
    }

    qcom_adrc::QualcommAdrcPgtmOutput output;
    const bool ok = qcom_adrc::GenerateQualcommAdrcPgtm(
        rgbaPtr, params, pointCount, rangeScale, outputCurvePtr, outputCurveCount, &output);
    env->ReleaseFloatArrayElements(linearRgbaArray, rgbaPtr, JNI_ABORT);
    if (outputCurvePtr != nullptr) {
        env->ReleaseFloatArrayElements(outputCurveArray, outputCurvePtr, JNI_ABORT);
    }

    if (!ok || output.gains.empty()) {
        __android_log_print(ANDROID_LOG_ERROR, kLogTag, "GenerateQualcommAdrcPgtm failed");
        return nullptr;
    }

    if (outDiagnostics != nullptr && env->GetArrayLength(outDiagnostics) >= 8) {
        const float diag[8] = {
            output.curve.drcGain,
            output.curve.drcGainDark,
            output.curve.ltmPercentage,
            output.curve.yRatioMax,
            output.curve.sceneDynamicRangeEv,
            output.curve.weightedLogAvgLuma,
            output.curve.lumaP05,
            output.curve.lumaP992,
        };
        env->SetFloatArrayRegion(outDiagnostics, 0, 8, diag);
    }

    const jsize outLen = static_cast<jsize>(output.gains.size());
    jfloatArray result = env->NewFloatArray(outLen);
    if (result == nullptr) {
        return nullptr;
    }
    env->SetFloatArrayRegion(result, 0, outLen, output.gains.data());
    return result;
}
