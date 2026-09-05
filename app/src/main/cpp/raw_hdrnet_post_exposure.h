#pragma once

#include <algorithm>
#include <cmath>

namespace photon::hdrnet_post_exposure {

struct Rgb { float red, green, blue; };
struct Gains { float rolloff, digital; };

// MGC V25 SLM further-gain split (0x46f9598..0x46f95f0). This is only the
// downstream gain stage; Photon keeps its existing viewfinder target and HDRNet image.
inline Gains SplitGain(float gain) {
    if (gain <= 1.0f) return {1.0f, gain};
    if (gain < 1.25f) return {gain, 1.0f};
    const float t = std::clamp(2.0f * (gain - 1.25f), 0.0f, 1.0f);
    const float rolloff = 1.25f + 0.5f * (t - 0.5f * t * t);
    return {rolloff, gain / rolloff};
}

// ApplySlm's max-RGB rolloff. Shared by matching and PGTM generation so clipping
// and reduced highlight gain are part of the exposure solve, not a later correction.
inline Rgb Apply(const Rgb& rgb, const Gains& gains) {
    constexpr float kEpsilon = 1.0e-7f;
    const float peak = std::max({rgb.red, rgb.green, rgb.blue});
    const float shadow = 1.0f - peak;
    const float rolloff = 1.0f + (gains.rolloff - 1.0f) * shadow * shadow;
    const float gain = gains.rolloff * gains.digital < 1.0f
        ? gains.digital
        : (kEpsilon + peak * gains.digital * rolloff) / (peak + kEpsilon);
    return {std::clamp(rgb.red * gain, 0.0f, 1.0f),
            std::clamp(rgb.green * gain, 0.0f, 1.0f),
            std::clamp(rgb.blue * gain, 0.0f, 1.0f)};
}

inline float DisplayLuma(const Rgb& rgb) {
    return rgb.red * 0.2126f + rgb.green * 0.7152f + rgb.blue * 0.0722f;
}

}  // namespace photon::hdrnet_post_exposure
