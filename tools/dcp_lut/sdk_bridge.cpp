// Host-only C ABI. All profile interpretation and forward table evaluation belong
// to the vendored Adobe SDK, not to a second TIFF/DCP implementation.
#include "dng_1d_table.h"
#include "dng_camera_profile.h"
#include "dng_color_space.h"
#include "dng_color_spec.h"
#include "dng_exceptions.h"
#include "dng_file_stream.h"
#include "dng_host.h"
#include "dng_negative.h"
#include "dng_reference.h"
#include "dng_render.h"
#include "dng_spline.h"
#include "dng_utils.h"

#include <algorithm>
#include <cmath>
#include <memory>
#include <stdexcept>
#include <string>
#include <vector>

namespace {
thread_local std::string error;

struct Profile {
    dng_host host;
    dng_camera_profile profile;
    AutoPtr<dng_hue_sat_map> hue;
    AutoPtr<dng_1d_table> hueEncode, hueDecode, lookEncode, lookDecode;
    dng_1d_table tone;
    dng_matrix cameraToProPhoto;
    double exposure;

    explicit Profile(const char* path) {
        dng_file_stream stream(path);
        if (!profile.ParseExtended(stream) || !profile.IsValid(3))
            throw std::runtime_error("Invalid three-channel DCP");
        AutoPtr<dng_negative> negative(host.Make_dng_negative());
        negative->SetColorChannels(3);
        dng_color_spec spec(*negative.Get(), &profile);
        spec.SetWhiteXY(D50_xy_coord());
        cameraToProPhoto = dng_space_ProPhoto::Get().MatrixFromPCS() * spec.CameraToPCS();
        // Join profiles in neutral-normalized, white-balanced camera RGB.
        for (uint32 r = 0; r < 3; ++r)
            for (uint32 c = 0; c < 3; ++c)
                cameraToProPhoto[r][c] *= spec.CameraWhite()[c];
        hue.Reset(profile.HueSatMapForWhite(D50_xy_coord()));
        BuildHueSatMapEncodingTable(host.Allocator(), profile.HueSatMapEncoding(),
                                    hueEncode, hueDecode, false);
        BuildHueSatMapEncodingTable(host.Allocator(), profile.LookTableEncoding(),
                                    lookEncode, lookDecode, false);
        exposure = profile.BaselineExposureOffset().As_real64();
        if (!std::isfinite(exposure)) throw std::runtime_error("Nonfinite exposure offset");
        dng_spline_solver spline;
        const dng_1d_function* curve = &dng_tone_curve_acr3_default::Get();
        if (profile.ToneCurve().IsValid()) {
            profile.ToneCurve().Solve(spline);
            curve = &spline;
        }
        dng_function_exposure_tone exposureTone(exposure);
        dng_1d_concatenate totalTone(exposureTone, *curve);
        tone.Initialize(host.Allocator(), totalTone);
    }
};

void captureError() {
    try { throw; }
    catch (const dng_exception& e) { error = "Adobe DNG SDK error " + std::to_string(e.ErrorCode()); }
    catch (const std::exception& e) { error = e.what(); }
    catch (...) { error = "Unknown Adobe DNG SDK error"; }
}
}

extern "C" {
const char* dcp_version() { return kDNGSDK_GetInfoVersion; }
const char* dcp_error() { return error.c_str(); }
void* dcp_open(const char* path) {
    try { return new Profile(path); }
    catch (...) { captureError(); return nullptr; }
}
void dcp_close(void* handle) { delete static_cast<Profile*>(handle); }
const char* dcp_name(void* handle) { return static_cast<Profile*>(handle)->profile.Name().Get(); }

// 9 WB camera->ProPhoto coefficients, 9 ProPhoto->sRGB coefficients,
// exposure EV, HDR flag, embedded-curve flag, HueSat/Look presence, 4097 curve samples.
void dcp_info(void* handle, double* out) {
    auto& p = *static_cast<Profile*>(handle);
    auto toSrgb = dng_space_sRGB::Get().MatrixFromPCS() * dng_space_ProPhoto::Get().MatrixToPCS();
    for (int r = 0; r < 3; ++r) for (int c = 0; c < 3; ++c) {
        out[r * 3 + c] = p.cameraToProPhoto[r][c];
        out[9 + r * 3 + c] = toSrgb[r][c];
    }
    out[18] = p.exposure;
    out[19] = p.profile.IsHDR();
    out[20] = p.profile.ToneCurve().IsValid();
    out[21] = p.hue.Get() && p.hue->IsValid();
    out[22] = p.profile.HasLookTable();
    for (int i = 0; i <= 4096; ++i) out[23 + i] = p.tone.Table()[i];
}

// Packed RGB input/output. Map/tone stages require nonnegative RGB; the matrix
// stage retains signed virtual camera coordinates, as RefBaselineABCtoRGB does.
// Stage 0 = HueSatMap, 1 = LookTable, 2 = RGB tone (SDR reference oracle),
// 3 = normalized camera -> ProPhoto including Adobe's camera-white clipping.
int dcp_apply(void* handle, int stage, const float* input, float* output, int count) {
    try {
        if (count < 0 || stage < 0 || stage > 3) throw std::runtime_error("Invalid stage/count");
        auto& p = *static_cast<Profile*>(handle);
        std::vector<float> planes(static_cast<size_t>(count) * 3);
        for (int i = 0; i < count; ++i) for (int c = 0; c < 3; ++c) {
            float x = input[i * 3 + c];
            if (!std::isfinite(x) || (stage != 3 && x < 0)) throw std::runtime_error("Invalid stage input");
            planes[c * count + i] = x;
        }
        float *r = planes.data(), *g = r + count, *b = g + count;
        if (stage == 3) {
            const dng_vector_3 white(1.0, 1.0, 1.0);
            RefBaselineABCtoRGB(r, g, b, r, g, b, count, white, p.cameraToProPhoto);
        } else if (stage == 2) {
            RefBaselineRGBTone(r, g, b, r, g, b, count, p.tone);
        } else {
            const dng_hue_sat_map* map = stage == 0 ? p.hue.Get() : &p.profile.LookTable();
            if (map && map->IsValid())
                RefBaselineHueSatMap(r, g, b, r, g, b, count, *map,
                    stage == 0 ? p.hueEncode.Get() : p.lookEncode.Get(),
                    stage == 0 ? p.hueDecode.Get() : p.lookDecode.Get(), p.profile.IsHDR());
        }
        for (int i = 0; i < count; ++i) for (int c = 0; c < 3; ++c)
            output[i * 3 + c] = planes[c * count + i];
        return 1;
    } catch (...) { captureError(); return 0; }
}
}
