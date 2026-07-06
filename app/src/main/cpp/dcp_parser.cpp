#include <jni.h>
#include <sstream>
#include <stdexcept>
#include <string>

#include "dng_camera_profile.h"
#include "dng_file_stream.h"

namespace {

std::string escapeJson(const char *text) {
    if (text == nullptr) {
        return "";
    }
    std::ostringstream out;
    while (*text != '\0') {
        switch (*text) {
            case '\\': out << "\\\\"; break;
            case '"': out << "\\\""; break;
            case '\n': out << "\\n"; break;
            case '\r': out << "\\r"; break;
            case '\t': out << "\\t"; break;
            default: out << *text; break;
        }
        ++text;
    }
    return out.str();
}

void appendMatrix(std::ostringstream &out, const char *name, const dng_matrix &matrix) {
    out << "\"" << name << "\":";
    if (matrix.Rows() != 3 || matrix.Cols() != 3) {
        out << "null";
        return;
    }
    out << "[";
    bool first = true;
    for (uint32 row = 0; row < matrix.Rows(); ++row) {
        for (uint32 col = 0; col < matrix.Cols(); ++col) {
            if (!first) out << ",";
            out << static_cast<double>(matrix[row][col]);
            first = false;
        }
    }
    out << "]";
}

void appendHueSatMap(std::ostringstream &out, const char *name, const dng_hue_sat_map &map) {
    out << "\"" << name << "\":";
    if (!map.IsValid()) {
        out << "null";
        return;
    }

    uint32 hueDivisions = 0;
    uint32 satDivisions = 0;
    uint32 valueDivisions = 0;
    map.GetDivisions(hueDivisions, satDivisions, valueDivisions);

    out << "{";
    out << "\"hueDivisions\":" << hueDivisions << ",";
    out << "\"satDivisions\":" << satDivisions << ",";
    out << "\"valueDivisions\":" << valueDivisions << ",";
    out << "\"values\":[";

    const auto *values = map.GetConstDeltas();
    const uint32 count = map.DeltasCount();
    for (uint32 index = 0; index < count; ++index) {
        if (index > 0) out << ",";
        out << static_cast<double>(values[index].fHueShift) << ","
            << static_cast<double>(values[index].fSatScale) << ","
            << static_cast<double>(values[index].fValScale);
    }
    out << "]}";
}

void appendToneCurve(std::ostringstream &out, const dng_tone_curve &toneCurve) {
    out << "\"toneCurve\":";
    if (!toneCurve.IsValid() || toneCurve.fCoord.empty()) {
        out << "null";
        return;
    }

    out << "[";
    for (size_t index = 0; index < toneCurve.fCoord.size(); ++index) {
        if (index > 0) out << ",";
        out << static_cast<double>(toneCurve.fCoord[index].h) << ","
            << static_cast<double>(toneCurve.fCoord[index].v);
    }
    out << "]";
}

std::string parseDcpToJson(const std::string &filePath) {
    dng_file_stream stream(filePath.c_str());
    dng_camera_profile profile;
    profile.ParseExtended(stream);

    std::ostringstream out;
    out << "{";
    out << "\"profileName\":\"" << escapeJson(profile.Name().Get()) << "\",";
    out << "\"calibrationIlluminant1\":" << profile.CalibrationIlluminant1() << ",";
    out << "\"calibrationIlluminant2\":" << profile.CalibrationIlluminant2() << ",";
    out << "\"baselineExposureOffset\":" << profile.BaselineExposureOffset().As_real64() << ",";
    out << "\"defaultBlackRender\":" << profile.DefaultBlackRender() << ",";
    appendMatrix(out, "colorMatrix1", profile.ColorMatrix1());
    out << ",";
    appendMatrix(out, "colorMatrix2", profile.ColorMatrix2());
    out << ",";
    appendMatrix(out, "forwardMatrix1", profile.ForwardMatrix1());
    out << ",";
    appendMatrix(out, "forwardMatrix2", profile.ForwardMatrix2());
    out << ",";
    out << "\"hueSatMapEncoding\":" << profile.HueSatMapEncoding() << ",";
    out << "\"lookTableEncoding\":" << profile.LookTableEncoding() << ",";
    appendHueSatMap(out, "hueSatDeltas1", profile.HueSatDeltas1());
    out << ",";
    appendHueSatMap(out, "hueSatDeltas2", profile.HueSatDeltas2());
    out << ",";
    appendHueSatMap(out, "lookTable", profile.LookTable());
    out << ",";
    appendToneCurve(out, profile.ToneCurve());
    out << "}";
    return out.str();
}

void throwRuntimeException(JNIEnv *env, const std::string &message) {
    jclass exceptionClass = env->FindClass("java/lang/RuntimeException");
    if (exceptionClass != nullptr) {
        env->ThrowNew(exceptionClass, message.c_str());
    }
}

}  // namespace

extern "C"
JNIEXPORT jstring JNICALL
Java_com_hinnka_mycamera_raw_DcpNativeBridge_parseDcpToJson(
    JNIEnv *env,
    jobject /* this */,
    jstring filePath
) {
    const char *pathChars = env->GetStringUTFChars(filePath, nullptr);
    std::string path = pathChars != nullptr ? pathChars : "";
    if (pathChars != nullptr) {
        env->ReleaseStringUTFChars(filePath, pathChars);
    }

    try {
        const std::string json = parseDcpToJson(path);
        return env->NewStringUTF(json.c_str());
    } catch (const std::exception &error) {
        throwRuntimeException(env, error.what());
    } catch (...) {
        throwRuntimeException(env, "Failed to parse DCP");
    }
    return nullptr;
}
