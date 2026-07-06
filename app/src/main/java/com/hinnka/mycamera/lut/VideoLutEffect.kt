package com.hinnka.mycamera.lut

import android.content.Context
import android.opengl.GLES30
import androidx.media3.common.VideoFrameProcessingException
import androidx.media3.common.util.Size
import androidx.media3.common.util.UnstableApi
import androidx.media3.effect.BaseGlShaderProgram
import androidx.media3.effect.GlEffect
import androidx.media3.effect.GlShaderProgram
import com.hinnka.mycamera.model.ColorRecipeParams
import com.hinnka.mycamera.utils.PLog
import java.nio.ByteBuffer
import java.nio.ByteOrder

/**
 * 视频 LUT & 色彩配方 GL 效果处理器 (Media3 管线集成)
 */
@UnstableApi
class VideoLutEffect(
    @Volatile var lutConfig: LutConfig?,
    @Volatile var recipeParams: ColorRecipeParams?
) : GlEffect {

    private var shaderProgram: VideoLutShaderProgram? = null

    override fun toGlShaderProgram(context: Context, useHdr: Boolean): GlShaderProgram {
        PLog.d("VideoLutEffect", "toGlShaderProgram called, useHdr: $useHdr, initialLut: ${lutConfig?.title}, recipeEnabled: ${recipeParams != null}")
        return VideoLutShaderProgram(context, useHdr, this).also {
            shaderProgram = it
        }
    }

    /**
     * 动态更新 LUT 及其配方参数
     */
    fun update(lutConfig: LutConfig?, recipeParams: ColorRecipeParams?) {
        PLog.d("VideoLutEffect", "update called, lutConfig: ${lutConfig?.title}, recipeParams: ${recipeParams != null}")
        this.lutConfig = lutConfig
        this.recipeParams = recipeParams
        shaderProgram?.triggerUpdate()
    }
}

/**
 * GLSL 着色器渲染程序
 */
@UnstableApi
private class VideoLutShaderProgram(
    private val context: Context,
    useHdr: Boolean,
    private val effect: VideoLutEffect
) : BaseGlShaderProgram(useHdr, /* texturePoolCapacity= */ 1) {

    companion object {
        private const val TAG = "VideoLutShaderProgram"
        private const val LCH_COLOR_BAND_COUNT = 9

        private val VERTEX_SHADER = """
            #version 300 es
            in vec4 aPosition;
            in vec2 aTexCoord;
            out vec2 vTexCoord;
            void main() {
                gl_Position = aPosition;
                vTexCoord = aTexCoord;
            }
        """.trimIndent()

        private val FRAGMENT_SHADER = """
            #version 300 es
            precision highp float;
            
            in vec2 vTexCoord;
            out vec4 fragColor;
            
            uniform sampler2D uImageTexture;
            uniform mediump sampler3D uLutTexture;
            
            uniform float uLutSize;
            uniform float uLutIntensity;
            uniform int uLutEnabled;
            uniform int uLutMaskType;
            uniform int uLutCurve;
            uniform int uLutColorSpace;
            uniform int uInputColorSpace;
            uniform int uIsHlgInput;

            // 色彩配方控制
            uniform int uColorRecipeEnabled;

            // 色彩配方参数
            uniform float uExposure;      // -2.0 ~ +2.0 (EV)
            uniform float uContrast;      // 0.5 ~ 1.5
            uniform float uSaturation;    // 0.0 ~ 2.0
            uniform float uTemperature;   // -1.0 ~ +1.0
            uniform float uTint;          // -1.0 ~ +1.0
            uniform float uFade;          // 0.0 ~ 1.0
            uniform float uVibrance;      // 0.0 ~ 2.0
            uniform float uHighlights;    // -1.0 ~ +1.0
            uniform float uShadows;       // -1.0 ~ +1.0
            uniform float uToneToe;       // -1.0 ~ +1.0
            uniform float uToneShoulder;  // -1.0 ~ +1.0
            uniform float uTonePivot;     // -1.0 ~ +1.0
            uniform float uFilmGrain;     // 0.0 ~ 1.0
            uniform float uVignette;      // -1.0 ~ +1.0
            uniform float uBleachBypass;  // 0.0 ~ 1.0
            uniform float uNoise;         // 0.0 ~ 1.0
            uniform float uNoiseSeed;     // 噪点随机种子
            uniform float uLowRes;        // 0.0 ~ 1.0
            uniform float uAspectRatio;   // 图像长宽比
            
            uniform vec3 uPrimaryCalibrationRow0;
            uniform vec3 uPrimaryCalibrationRow1;
            uniform vec3 uPrimaryCalibrationRow2;
            
            uniform float uLchHueAdjustments[9];
            uniform float uLchChromaAdjustments[9];
            uniform float uLchLightnessAdjustments[9];
            uniform sampler2D uCurveTexture;
            uniform int uCurveEnabled;
            
            uniform float uChromaticAberration; // 0.0 ~ 1.0
            uniform float uSharpening;
            uniform vec2 uTexelSize;
            
            const float PI = 3.14159265359;

            float getLuma(vec3 color) {
                vec3 weights = (uInputColorSpace == 1) ? vec3(0.2290, 0.6917, 0.0793) : vec3(0.2126, 0.7152, 0.0722);
                return dot(color, weights);
            }

            float log10(float x) { return log(x) * 0.4342944819; }
            vec3 log10(vec3 x) { return log(x) * 0.4342944819; }

            vec3 linearToSrgb(vec3 l) {
                vec3 absL = abs(l);
                vec3 result = mix(absL * 12.92, 1.055 * pow(absL, vec3(1.0 / 2.4)) - 0.055, step(0.0031308, absL));
                return sign(l) * result;
            }

            vec3 srgbToLinear(vec3 c) {
                vec3 absC = abs(c);
                vec3 result = mix(absC / 12.92, pow((absC + 0.055) / 1.055, vec3(2.4)), step(0.04045, absC));
                return sign(c) * result;
            }

            vec3 hlgToLinear(vec3 e) {
                float ha = 0.17883277;
                float hb = 1.0 - 4.0 * ha;
                float hc = 0.5 - ha * log(4.0 * ha);
                vec3 low = e * e / 3.0;
                vec3 high = (exp((e - hc) / ha) + hb) / 12.0;
                return mix(low, high, step(vec3(0.5), e));
            }

            vec3 bt2020ToLinearSrgb(vec3 rgb) {
                return mat3(
                    1.660491, -0.124550, -0.018151,
                    -0.587641, 1.132900, -0.100579,
                    -0.072850, -0.008350, 1.118730
                ) * rgb;
            }

            vec3 applyExposureInLinearSpace(vec3 srgbColor, float exposureEv) {
                vec3 linearColor = srgbToLinear(max(srgbColor, vec3(0.0)));
                linearColor *= exp2(exposureEv);
                return linearToSrgb(linearColor);
            }

            float sanitizeFloat(float value) {
                if (value != value) return 0.0;
                return value;
            }

            vec3 sanitizeColor(vec3 color) {
                return vec3(
                    sanitizeFloat(color.r),
                    sanitizeFloat(color.g),
                    sanitizeFloat(color.b)
                );
            }

            float applyToneCurveToLuma(float luma, float toe, float shoulder, float pivot) {
                float safeLuma = clamp(luma, 0.0, 1.0);
                float pivotPoint = clamp(0.5 + pivot * 0.12, 0.2, 0.8);
                float toeAmount = clamp(abs(toe), 0.0, 1.0);
                float shoulderAmount = clamp(abs(shoulder), 0.0, 1.0);
                float toeGamma = (toe >= 0.0) ? mix(1.0, 0.68, toeAmount) : mix(1.0, 1.85, toeAmount);
                float shoulderGamma = (shoulder >= 0.0) ? mix(1.0, 0.72, shoulderAmount) : mix(1.0, 1.85, shoulderAmount);

                if (safeLuma <= pivotPoint) {
                    float segment = clamp(safeLuma / max(pivotPoint, 0.0001), 0.0, 1.0);
                    return clamp(pow(segment, toeGamma) * pivotPoint, 0.0, 1.0);
                }

                float segment = clamp((safeLuma - pivotPoint) / max(1.0 - pivotPoint, 0.0001), 0.0, 1.0);
                float result = 1.0 - pow(max(0.0, 1.0 - segment), shoulderGamma) * (1.0 - pivotPoint);
                return clamp(result, 0.0, 1.0);
            }

            vec3 applyToneCurve(vec3 color, float toe, float shoulder, float pivot) {
                if (abs(toe) < 0.001 && abs(shoulder) < 0.001 && abs(pivot) < 0.001) {
                    return color;
                }
                vec3 nonNegativeColor = max(color, vec3(0.0));
                vec3 curveSampleColor = clamp(nonNegativeColor, 0.0, 1.0);
                float luma = getLuma(curveSampleColor);
                float peak = max(curveSampleColor.r, max(curveSampleColor.g, curveSampleColor.b));
                float toneSignal = mix(luma, peak, 0.65);
                float curvedSignal = applyToneCurveToLuma(toneSignal, toe, shoulder, pivot);
                if (toneSignal < 0.0001) {
                    return curveSampleColor;
                }
                float safeRatio = clamp(curvedSignal / max(toneSignal, 0.0001), 0.0, 16.0);
                vec3 scaled = nonNegativeColor * safeRatio;
                return sanitizeColor(mix(vec3(curvedSignal), scaled, 0.96));
            }

            vec3 linearRgbToOklab(vec3 c) {
                vec3 lms = mat3(
                    0.4122214708, 0.2119034982, 0.0883024619,
                    0.5363325363, 0.6806995451, 0.2817188376,
                    0.0514459929, 0.1073969566, 0.6299787005
                ) * c;
                vec3 lmsCbrt = pow(max(lms, vec3(0.0)), vec3(1.0 / 3.0));
                return mat3(
                    0.2104542553, 1.9779984951, 0.0259040371,
                    0.7936177850, -2.4285922050, 0.7827717662,
                    -0.0040720468, 0.4505937099, -0.8086757660
                ) * lmsCbrt;
            }

            vec3 oklabToLinearRgb(vec3 lab) {
                vec3 lms = mat3(
                    1.0, 1.0, 1.0,
                    0.3963377774, -0.1055613458, -0.0894841775,
                    0.2158037573, -0.0638541728, -1.2914855480
                ) * lab;
                vec3 lms3 = lms * lms * lms;
                return mat3(
                    4.0767416621, -1.2684380046, -0.0041960863,
                    -3.3077115913, 2.6097574011, -0.7034186147,
                    0.2309699292, -0.3413193965, 1.7076147010
                ) * lms3;
            }

            vec3 linearRgbToCieLab(vec3 linearRgb) {
                vec3 xyz = mat3(
                    0.4124564, 0.2126729, 0.0193339,
                    0.3575761, 0.7151522, 0.1191920,
                    0.1804375, 0.0721750, 0.9503041
                ) * clamp(linearRgb, 0.0, 1.0);
                xyz /= vec3(0.95047, 1.0, 1.08883);
                vec3 f = mix(7.787037 * xyz + vec3(16.0 / 116.0), pow(max(xyz, vec3(0.0)), vec3(1.0 / 3.0)), step(vec3(0.008856), xyz));
                return vec3(116.0 * f.y - 16.0, 500.0 * (f.x - f.y), 200.0 * (f.y - f.z));
            }

            float wrapAngle(float angle) {
                return mod(angle + PI, 2.0 * PI) - PI;
            }

            float fullCoverageBandWeight(float hue, float center, float chroma) {
                float dist = abs(wrapAngle(hue - center));
                float hueWeight = smoothstep(radians(85.0), 0.0, dist);
                float chromaWeight = smoothstep(0.005, 0.03, chroma);
                return hueWeight * chromaWeight;
            }

            float rtRange(float value, float minValue, float maxValue) {
                return step(minValue, value) * (1.0 - step(maxValue, value));
            }

            float rtSkinCase(float l, float h, float c, float lMin, float lMax, float hMin, float hMax, float cMin, float cMax, float weight) {
                return rtRange(l, lMin, lMax) * rtRange(h, hMin, hMax) * rtRange(c, cMin, cMax) * weight;
            }

            float skinBandWeight(vec3 linearColor) {
                vec3 lab = linearRgbToCieLab(linearColor);
                float l = lab.x;
                float h = atan(lab.z, lab.y);
                float c = length(lab.yz);
                float core = 1.0;
                float extended = 0.67;
                float transition = 0.33;
                float w = 0.0;

                w = max(w, rtSkinCase(l, h, c, 85.0, 100.0, 0.73, 1.23, 8.0, 22.0, core));
                w = max(w, rtSkinCase(l, h, c, 92.0, 100.0, 0.80, 1.65, 7.0, 15.0, extended));
                w = max(w, rtSkinCase(l, h, c, 92.0, 100.0, -0.10, 1.65, 7.0, 18.0, transition));
                w = max(w, rtSkinCase(l, h, c, 85.0, 92.0, 0.70, 1.40, 7.0, 34.0, extended));
                w = max(w, rtSkinCase(l, h, c, 85.0, 92.0, 0.00, 1.65, 7.0, 43.0, transition));

                w = max(w, rtSkinCase(l, h, c, 70.0, 85.0, 0.40, 1.29, 8.0, 50.0, core));
                w = max(w, rtSkinCase(l, h, c, 70.0, 85.0, -0.18, 1.50, 7.0, 56.0, extended));
                w = max(w, rtSkinCase(l, h, c, 70.0, 85.0, -0.18, 1.65, 7.0, 63.0, transition));

                w = max(w, rtSkinCase(l, h, c, 52.0, 70.0, 0.30, 1.37, 11.0, 47.0, core));
                w = max(w, rtSkinCase(l, h, c, 52.0, 70.0, -0.18, 1.50, 7.0, 56.0, extended));
                w = max(w, rtSkinCase(l, h, c, 52.0, 70.0, -0.18, 1.65, 7.0, 63.0, transition));

                w = max(w, rtSkinCase(l, h, c, 35.0, 52.0, 0.30, 1.27, 13.0, 44.0, core));
                w = max(w, rtSkinCase(l, h, c, 35.0, 52.0, -0.18, 1.50, 7.0, 56.0, extended));
                w = max(w, rtSkinCase(l, h, c, 35.0, 52.0, -0.18, 1.65, 7.0, 63.0, transition));

                w = max(w, rtSkinCase(l, h, c, 20.0, 35.0, 0.30, 1.22, 7.0, 40.0, core));
                w = max(w, rtSkinCase(l, h, c, 20.0, 35.0, -0.18, 1.50, 7.0, 56.0, extended));
                w = max(w, rtSkinCase(l, h, c, 20.0, 35.0, -0.18, 1.65, 7.0, 63.0, transition));

                w = max(w, rtSkinCase(l, h, c, 10.0, 20.0, -0.20, 1.05, 8.0, 28.0, core));
                w = max(w, rtSkinCase(l, h, c, 10.0, 20.0, -0.18, 1.00, 7.0, 40.0, extended));
                w = max(w, rtSkinCase(l, h, c, 10.0, 20.0, -0.18, 1.60, 7.0, 50.0, transition));

                w = max(w, rtSkinCase(l, h, c, 0.0, 10.0, -0.18, 1.00, 8.0, 28.0, core));
                w = max(w, rtSkinCase(l, h, c, 0.0, 10.0, -0.18, 1.00, 7.0, 40.0, extended));
                w = max(w, rtSkinCase(l, h, c, 0.0, 10.0, -0.18, 1.60, 7.0, 50.0, transition));
                return w;
            }

            float skyBandWeight(vec3 linearColor) {
                vec3 lab = linearRgbToCieLab(linearColor);
                float l = lab.x;
                float h = atan(lab.z, lab.y);
                float c = length(lab.yz);
                float rtWaveletSkyHue = rtRange(h, -2.60, -1.30);
                float chromaGate = smoothstep(7.0, 18.0, c);
                float lightnessGate = smoothstep(18.0, 45.0, l);
                return rtWaveletSkyHue * chromaGate * lightnessGate;
            }

            float lutMaskWeight(int maskType, vec3 linearColor) {
                if (maskType == 1) {
                    return skinBandWeight(linearColor);
                }
                if (maskType == 2) {
                    return skyBandWeight(linearColor);
                }
                return 1.0;
            }

            vec3 applyOklchDensity(vec3 srgbColor, float density) {
                if (abs(density) < 0.0001) {
                    return srgbColor;
                }

                vec3 linearColor = srgbToLinear(max(srgbColor, vec3(0.0)));
                vec3 lab = linearRgbToOklab(linearColor);
                float chroma = length(lab.yz);
                float hue = atan(lab.z, lab.y);
                const float CHROMA_BIAS = 0.35;
                float densityScale = max(0.0, 1.0 + density * CHROMA_BIAS);
                float newChroma = chroma * densityScale;
                const float DENSITY_K = 1.85;
                float newLightness = clamp(lab.x * exp(-DENSITY_K * density * chroma), 0.0, 1.0);
                vec3 denseLab = vec3(newLightness, cos(hue) * newChroma, sin(hue) * newChroma);
                vec3 denseLinear = max(oklabToLinearRgb(denseLab), vec3(0.0));
                return linearToSrgb(denseLinear);
            }

            vec3 applyLchColorMixer(vec3 srgbColor) {
                vec3 linearColor = srgbToLinear(max(srgbColor, vec3(0.0)));
                vec3 lab = linearRgbToOklab(linearColor);
                float chroma = length(lab.yz);
                float hue = atan(lab.z, lab.y);
                if (hue < 0.0) hue += 2.0 * PI;

                float centers[8] = float[](
                    radians(29.0),  // Red
                    radians(52.0),  // Orange
                    radians(86.0),  // Yellow
                    radians(144.0), // Green
                    radians(196.0), // Aqua/Cyan
                    radians(263.0), // Blue
                    radians(304.0), // Purple
                    radians(341.0)  // Magenta
                );

                float hueShift = 0.0;
                float chromaScale = 1.0;
                float lightnessShift = 0.0;
                float bandWeights[8];
                float totalBandWeight = 0.0;

                for (int i = 0; i < 8; i++) {
                    float weight = fullCoverageBandWeight(hue, centers[i], chroma);
                    bandWeights[i] = weight;
                    totalBandWeight += weight;
                }

                if (totalBandWeight > 0.0001) {
                    for (int i = 0; i < 8; i++) {
                        float weight = bandWeights[i] / totalBandWeight;
                        hueShift += uLchHueAdjustments[i + 1] * weight * radians(20.0);
                        chromaScale += uLchChromaAdjustments[i + 1] * weight;
                        lightnessShift += uLchLightnessAdjustments[i + 1] * weight * 0.15;
                    }

                    float commonChromaWeight = smoothstep(0.005, 0.03, chroma);
                    hueShift *= commonChromaWeight;
                    chromaScale = mix(1.0, chromaScale, commonChromaWeight);
                    lightnessShift *= commonChromaWeight;
                }

                float skinWeight = skinBandWeight(linearColor);
                if (skinWeight > 0.0001) {
                    hueShift += uLchHueAdjustments[0] * skinWeight * radians(10.0);
                    chromaScale += uLchChromaAdjustments[0] * skinWeight;
                    lightnessShift += uLchLightnessAdjustments[0] * skinWeight * 0.08;
                }

                if (abs(hueShift) < 0.0001 && abs(chromaScale - 1.0) < 0.0001 && abs(lightnessShift) < 0.0001) {
                    return srgbColor;
                }

                float newHue = hue + hueShift;
                float newChroma = max(0.0, chroma * max(0.0, chromaScale));
                float newLightness = clamp(lab.x + lightnessShift, 0.0, 1.0);
                vec3 mixedLab = vec3(newLightness, cos(newHue) * newChroma, sin(newHue) * newChroma);
                vec3 mixedLinear = max(oklabToLinearRgb(mixedLab), vec3(0.0));
                return linearToSrgb(mixedLinear);
            }

            vec3 applyPrimaryCalibration(vec3 color) {
                vec3 linearColor = srgbToLinear(max(color, vec3(0.0)));
                vec3 calibratedLinear = vec3(
                    dot(uPrimaryCalibrationRow0, linearColor),
                    dot(uPrimaryCalibrationRow1, linearColor),
                    dot(uPrimaryCalibrationRow2, linearColor)
                );
                return linearToSrgb(max(calibratedLinear, vec3(0.0)));
            }

            vec3 applyLutCurve(vec3 l, int curveType) {
                if (curveType == 0) return linearToSrgb(l);
                if (curveType == 1) return l;
                if (curveType == 2) {
                    return mix(5.6 * l + 0.125, 0.241514 * log10(l + 0.00873) + 0.598206, step(0.01, l));
                }
                if (curveType == 3) {
                    return mix((l * (171.2102946929 - 95.0) / 0.01125 + 95.0) / 1023.0, (420.0 + log10((l + 0.01) / (0.18 + 0.01)) * 261.5) / 1023.0, step(0.01125, l));
                }
                if (curveType == 4) {
                    return mix(8.799461 * l + 0.092864, 0.245281 * log10(5.555556 * l + 0.064829) + 0.384316, step(0.00089, l));
                }
                if (curveType == 5) {
                    return mix(8.80302 * l + 0.158957, 0.21524584 * log10(2231.8263 * l + 64.0) - 0.29590839, step(-0.018057, l));
                }
                if (curveType == 6) {
                    return mix(mix(vec3(0.0), 47.28711236 * pow(l + 0.05641088, vec3(2.0)), step(-0.05641088, l)), 0.08550479 * (log(l + 0.00964052) / log(2.0)) + 0.69336945, step(0.01, l));
                }
                if (curveType == 7) {
                    float ha = 0.17883277;
                    float hb = 1.0 - 4.0 * ha;
                    float hc = 0.5 - ha * log(4.0 * ha);
                    return mix(sqrt(3.0 * l), ha * log(12.0 * l - hb) + hc, step(1.0 / 12.0, l));
                }
                if (curveType == 8) {
                    return mix(10.540237 * l + 0.072905536, 0.18955931 * log10(max(l, vec3(1e-6))) + 0.5547945, step(0.0078125, l));
                }
                if (curveType == 9) {
                    return mix(15.1927 * l + 0.151927, 0.224282 * log10(155.975327 * l + 2.55975327), step(-0.01, l));
                }
                if (curveType == 10) {
                    return mix(8.0 * l + 0.09, 0.27 * log10(max(1.3 * l + 0.0115, vec3(1e-6))) + 0.6, step(0.006, l));
                }
                return l;
            }

            vec3 applyLutColorSpace(vec3 rgb, int colorSpace) {
                if (colorSpace == 0) return rgb;
                if (colorSpace == 1) {
                    return mat3(0.875905, 0.035332, 0.016382, 0.122070, 0.964542, 0.063767, 0.002025, 0.000126, 0.919851) * rgb;
                }
                if (colorSpace == 2) {
                    return mat3(0.627404, 0.069097, 0.016391, 0.329283, 0.919540, 0.088013, 0.043313, 0.011362, 0.895595) * rgb;
                }
                if (colorSpace == 3) {
                    return mat3(0.565837, 0.088626, 0.017750, 0.340331, 0.809347, 0.109448, 0.093832, 0.102028, 0.872802) * rgb;
                }
                if (colorSpace == 4) {
                    return mat3(0.608104, 0.062316, 0.031133, 0.259353, 0.804609, 0.133756, 0.132543, 0.133076, 0.835112) * rgb;
                }
                if (colorSpace == 5) {
                    return mat3(0.645679, 0.087530, 0.036957, 0.259115, 0.759700, 0.129281, 0.095206, 0.152770, 0.833762) * rgb;
                }
                if (colorSpace == 6) {
                    return mat3(0.613083, 0.070004, 0.020491, 0.341167, 0.918063, 0.106764, 0.045750, 0.011934, 0.872745) * rgb;
                }
                if (colorSpace == 7) {
                    return mat3(0.585196, 0.078589, 0.022794, 0.322642, 0.819627, 0.114217, 0.092162, 0.101784, 0.862989) * rgb;
                }
                if (colorSpace == 9) {
                    return mat3(0.541973, 0.076993, 0.058875, 0.360148, 0.767969, 0.273495, 0.097891, 0.155019, 0.667533) * rgb;
                }
                return rgb;
            }

            void main() {
                vec2 uvCoord = vTexCoord;
                if (uLowRes > 0.005) {
                    float blocksX = mix(512.0, 32.0, uLowRes); 
                    vec2 gridSize = vec2(1.0 / blocksX, 1.0 / (blocksX / uAspectRatio));
                    vec2 gridUV = floor(vTexCoord / gridSize) * gridSize + gridSize * 0.5;
                    uvCoord = mix(vTexCoord, gridUV, 0.95);
                }

                vec4 color;
                if (uChromaticAberration > 0.0) {
                    vec2 center = vec2(0.5);
                    vec2 dir = uvCoord - center;
                    float dist = length(dir);
                    float offset = pow(dist, 1.5) * uChromaticAberration * 0.08;
                    vec2 rUV = uvCoord + dir * offset;
                    vec2 bUV = uvCoord - dir * offset;
                    float r = texture(uImageTexture, rUV).r;
                    float g = texture(uImageTexture, uvCoord).g;
                    float b = texture(uImageTexture, bUV).b;
                    float a = texture(uImageTexture, uvCoord).a;
                    color = vec4(r, g, b, a);
                } else {
                    color = texture(uImageTexture, uvCoord);
                }

                if (uIsHlgInput != 0) {
                    color.rgb = hlgToLinear(color.rgb);
                    color.rgb = bt2020ToLinearSrgb(color.rgb);
                    color.rgb = linearToSrgb(color.rgb);
                }

                if (uColorRecipeEnabled != 0) {
                    if (abs(uExposure) > 0.001) {
                        color.rgb = applyExposureInLinearSpace(color.rgb, uExposure);
                        color.rgb = sanitizeColor(color.rgb);
                    }

                    float luma = getLuma(color.rgb);
                    float highlightMask = smoothstep(0.5, 1.0, luma);
                    float shadowMask = smoothstep(0.5, 0.0, luma);
                    float highlightFactor = (uHighlights > 0.0) ? (1.0 + uHighlights * 0.7) : (1.0 + uHighlights * 0.3);
                    color.rgb = mix(color.rgb, color.rgb * highlightFactor, highlightMask);
                    
                    vec3 shadowTarget = (uShadows > 0.0) ? (mix(color.rgb, vec3(luma), uShadows * 0.2) + (color.rgb * uShadows * 0.5)) : (color.rgb * (1.0 + uShadows * 0.5));
                    color.rgb = mix(color.rgb, shadowTarget, shadowMask);
                    color.rgb = sanitizeColor(color.rgb);

                    color.rgb = (color.rgb - 0.5) * uContrast + 0.5;
                    color.rgb = sanitizeColor(color.rgb);

                    color.rgb = applyToneCurve(color.rgb, uToneToe, uToneShoulder, uTonePivot);
                    color.rgb = sanitizeColor(color.rgb);

                    color.r += uTemperature * 0.1;
                    color.b -= uTemperature * 0.1;
                    color.g += uTint * 0.05;
                    color.rgb = sanitizeColor(color.rgb);

                    float gray = getLuma(color.rgb);
                    color.rgb = mix(vec3(gray), color.rgb, uSaturation);
                    color.rgb = sanitizeColor(color.rgb);

                    if (abs(uVibrance) > 0.001) {
                        color.rgb = applyOklchDensity(color.rgb, uVibrance);
                        color.rgb = sanitizeColor(color.rgb);
                    }

                    color.rgb = applyPrimaryCalibration(color.rgb);
                    color.rgb = sanitizeColor(color.rgb);

                    color.rgb = applyLchColorMixer(color.rgb);
                    color.rgb = sanitizeColor(color.rgb);

                    if (uFade > 0.0) {
                        float fadeAmount = uFade * 0.3;
                        color.rgb = mix(color.rgb, vec3(0.5), fadeAmount);
                        color.rgb += fadeAmount * 0.1;
                        color.rgb = sanitizeColor(color.rgb);
                    }

                    if (uBleachBypass > 0.0) {
                        float bleedLuma = getLuma(color.rgb);
                        vec3 desaturated = mix(color.rgb, vec3(bleedLuma), 0.6);
                        desaturated = (desaturated - 0.5) * 1.3 + 0.5;
                        desaturated.r *= 0.95;
                        desaturated.g *= 1.02;
                        desaturated.b *= 1.05;
                        color.rgb = mix(color.rgb, desaturated, uBleachBypass);
                    }

                    if (abs(uVignette) > 0.0) {
                        vec2 center = vec2(0.5, 0.5);
                        float dist = distance(uvCoord, center);
                        float vignetteMask = smoothstep(0.8, 0.3, dist);
                        if (uVignette < 0.0) {
                            color.rgb *= mix(0.01, 1.0, vignetteMask) * abs(uVignette) + (1.0 + uVignette);
                        } else {
                            color.rgb = mix(color.rgb, vec3(1.0), (1.0 - vignetteMask) * uVignette);
                        }
                    }

                    if (uFilmGrain > 0.0) {
                        float grainNoise = fract(sin(dot(uvCoord * 1000.0, vec2(12.9898, 78.233))) * 43758.5453);
                        grainNoise = (grainNoise - 0.5) * 2.0;
                        float grainLuma = getLuma(color.rgb);
                        float grainMask = 1.0 - abs(grainLuma - 0.5) * 2.0;
                        grainMask = grainMask * 0.5 + 0.5;
                        float grainStrength = uFilmGrain * 0.1 * grainMask;
                        color.rgb += grainNoise * grainStrength;
                    }

                    if (uNoise > 0.001) {
                        vec2 seedOffset = vec2(fract(uNoiseSeed * 1.234), fract(uNoiseSeed * 3.456));
                        vec2 noiseCoord = uvCoord * 800.0 + seedOffset * 100.0;
                        float lumNoise = fract(sin(dot(noiseCoord, vec2(12.9898, 78.233))) * 43758.5453);
                        lumNoise = (lumNoise - 0.5) * 2.0;
                        float colorNoiseR = fract(sin(dot(noiseCoord + vec2(1.1, 2.2), vec2(39.346, 11.135))) * 43758.5453);
                        float colorNoiseG = fract(sin(dot(noiseCoord + vec2(3.3, 4.4), vec2(73.156, 52.235))) * 43758.5453);
                        float colorNoiseB = fract(sin(dot(noiseCoord + vec2(5.5, 6.6), vec2(27.423, 83.136))) * 43758.5453);
                        vec3 colorNoise = (vec3(colorNoiseR, colorNoiseG, colorNoiseB) - 0.5) * 2.0;
                        float noiseLuma = getLuma(color.rgb);
                        float noiseMask = mix(0.5, 1.0, 1.0 - abs(noiseLuma - 0.5) * 1.5);
                        vec3 finalNoise = mix(vec3(lumNoise), mix(vec3(lumNoise), colorNoise, 0.7), 0.8);
                        color.rgb += finalNoise * uNoise * max(0.0, noiseMask);
                    }

                    color.rgb = sanitizeColor(color.rgb);
                }

                if (uCurveEnabled != 0) {
                    vec3 clamped = clamp(color.rgb, 0.0, 1.0);
                    float r = texture(uCurveTexture, vec2(clamped.r, 0.5)).r;
                    float g = texture(uCurveTexture, vec2(clamped.g, 0.5)).g;
                    float b = texture(uCurveTexture, vec2(clamped.b, 0.5)).b;
                    color.rgb = sanitizeColor(vec3(r, g, b));
                }

                if (uLutEnabled != 0 && uLutIntensity > 0.0) {
                    bool isP3 = (uInputColorSpace == 1);
                    vec3 linearInput = srgbToLinear(color.rgb);
                    if (isP3) {
                         linearInput = mat3(1.22486, -0.04205, -0.01974, -0.22471, 1.04192, -0.07865, 0.00000, 0.00013, 1.09837) * linearInput;
                    }
                    float effectiveLutIntensity = uLutIntensity * lutMaskWeight(uLutMaskType, linearInput);
                    vec3 colorSpaceRGB = applyLutColorSpace(linearInput, uLutColorSpace);
                    vec3 lutInColor = applyLutCurve(colorSpaceRGB, uLutCurve);
                    
                    float scale = (uLutSize - 1.0) / uLutSize;
                    float offset = 1.0 / (2.0 * uLutSize);
                    vec3 lutCoord = lutInColor * scale + offset;
                    vec4 lutColor = texture(uLutTexture, lutCoord);

                    vec3 srgbColor = linearToSrgb(linearInput);
                    color.rgb = mix(srgbColor, lutColor.rgb, effectiveLutIntensity);

                    if (isP3) {
                        vec3 linearSrgbOut = srgbToLinear(color.rgb);
                        color.rgb = linearToSrgb(mat3(0.875905, 0.035332, 0.016382, 0.122070, 0.964542, 0.063767, 0.002025, 0.000126, 0.919851) * linearSrgbOut);
                    }
                }

                if (uSharpening > 0.0) {
                    vec3 inputColor = texture(uImageTexture, uvCoord).rgb;
                    float inputLuma = getLuma(inputColor);
                    float neighborsLuma = 0.0;
                    neighborsLuma += getLuma(texture(uImageTexture, uvCoord + vec2(-uTexelSize.x, 0.0)).rgb);
                    neighborsLuma += getLuma(texture(uImageTexture, uvCoord + vec2(uTexelSize.x, 0.0)).rgb);
                    neighborsLuma += getLuma(texture(uImageTexture, uvCoord + vec2(0.0, -uTexelSize.y)).rgb);
                    neighborsLuma += getLuma(texture(uImageTexture, uvCoord + vec2(0.0, uTexelSize.y)).rgb);
                    float blurLuma = neighborsLuma * 0.25;
                    float detail = inputLuma - blurLuma;
                    color.rgb += detail * uSharpening * 2.0;
                }

                fragColor = clamp(color, 0.0, 1.0);
            }
        """.trimIndent()
    }

    private var programId = 0

    private val positionBuffer = floatArrayOf(
        -1.0f, -1.0f,
         1.0f, -1.0f,
        -1.0f,  1.0f,
         1.0f,  1.0f
    )

    private val texCoordBuffer = floatArrayOf(
        0.0f, 0.0f,
        1.0f, 0.0f,
        0.0f, 1.0f,
        1.0f, 1.0f
    )

    private var positionVbo = 0
    private var texCoordVbo = 0
    private var isGles3Context = false

    private var lutTextureId = 0
    private var curveTextureId = 0
    private var lastLutConfig: LutConfig? = null
    private var lastRecipeParams: ColorRecipeParams? = null

    @Volatile
    private var hasPendingUpdate = false

    init {
        val vertexShader = GlUtils.compileShader(GLES30.GL_VERTEX_SHADER, VERTEX_SHADER)
        val fragmentShader = GlUtils.compileShader(GLES30.GL_FRAGMENT_SHADER, FRAGMENT_SHADER)
        programId = GlUtils.linkProgram(vertexShader, fragmentShader)
        positionVbo = GlUtils.createBuffer(positionBuffer)
        texCoordVbo = GlUtils.createBuffer(texCoordBuffer)

        val version = GLES30.glGetString(GLES30.GL_VERSION)
        isGles3Context = version != null && version.contains("OpenGL ES 3")
        PLog.d("VideoLutShaderProgram", "OpenGL ES Version: $version, isGles3Context: $isGles3Context")
    }

    private fun checkGlError(op: String) {
        val error = GLES30.glGetError()
        if (error != GLES30.GL_NO_ERROR) {
            PLog.e("VideoLutShaderProgram", "GL Error after $op: 0x${Integer.toHexString(error)}")
        }
    }

    fun triggerUpdate() {
        PLog.d("VideoLutShaderProgram", "triggerUpdate called, hasPendingUpdate: true")
        hasPendingUpdate = true
    }

    override fun configure(inputWidth: Int, inputHeight: Int): Size {
        PLog.d("VideoLutShaderProgram", "configure called, inputWidth: $inputWidth, inputHeight: $inputHeight")
        return Size(inputWidth, inputHeight)
    }

    override fun drawFrame(inputTexId: Int, presentationTimeUs: Long) {
//        PLog.v("VideoLutShaderProgram", "drawFrame called, inputTexId: $inputTexId, presentationTimeUs: $presentationTimeUs")
        if (programId == 0) return
        
        val currentLutConfig = effect.lutConfig
        val currentRecipeParams = effect.recipeParams

        // 检查并重新上传 LUT 纹理
        if (currentLutConfig != lastLutConfig || hasPendingUpdate) {
            lastLutConfig = currentLutConfig
            if (currentLutConfig != null) {
                uploadLutTexture(currentLutConfig)
            } else {
                deleteLutTexture()
            }
        }

        // 检查并上传色彩曲线纹理
        val masterPts = currentRecipeParams?.masterCurvePoints
        val redPts = currentRecipeParams?.redCurvePoints
        val greenPts = currentRecipeParams?.greenCurvePoints
        val bluePts = currentRecipeParams?.blueCurvePoints
        val curveActive = masterPts != null || redPts != null || greenPts != null || bluePts != null

        if (currentRecipeParams != lastRecipeParams || hasPendingUpdate) {
            lastRecipeParams = currentRecipeParams
            if (curveActive) {
                uploadCurveTexture(masterPts, redPts, greenPts, bluePts)
            } else {
                deleteCurveTexture()
            }
            hasPendingUpdate = false
        }

        GLES30.glUseProgram(programId)

        var previousVao = 0
        if (isGles3Context) {
            val params = IntArray(1)
            GLES30.glGetIntegerv(GLES30.GL_VERTEX_ARRAY_BINDING, params, 0)
            previousVao = params[0]
            if (previousVao != 0) {
                GLES30.glBindVertexArray(0)
            }
        }

        // 绑定位置属性 (VBO)
        val aPositionLoc = GLES30.glGetAttribLocation(programId, "aPosition")
        GLES30.glEnableVertexAttribArray(aPositionLoc)
        GLES30.glBindBuffer(GLES30.GL_ARRAY_BUFFER, positionVbo)
        GLES30.glVertexAttribPointer(aPositionLoc, 2, GLES30.GL_FLOAT, false, 0, 0)

        // 绑定纹理坐标属性 (VBO)
        val aTexCoordLoc = GLES30.glGetAttribLocation(programId, "aTexCoord")
        GLES30.glEnableVertexAttribArray(aTexCoordLoc)
        GLES30.glBindBuffer(GLES30.GL_ARRAY_BUFFER, texCoordVbo)
        GLES30.glVertexAttribPointer(aTexCoordLoc, 2, GLES30.GL_FLOAT, false, 0, 0)

        GLES30.glBindBuffer(GLES30.GL_ARRAY_BUFFER, 0)

        // 绑定输入视频纹理 (GL_TEXTURE0)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, inputTexId)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(programId, "uImageTexture"), 0)

        // 绑定 3D LUT 纹理 (GL_TEXTURE1)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE1)
        if (currentLutConfig != null && lutTextureId != 0) {
            GLES30.glBindTexture(GLES30.GL_TEXTURE_3D, lutTextureId)
            GLES30.glUniform1i(GLES30.glGetUniformLocation(programId, "uLutTexture"), 1)
            
            GLES30.glUniform1f(GLES30.glGetUniformLocation(programId, "uLutSize"), currentLutConfig.size.toFloat())
            GLES30.glUniform1f(GLES30.glGetUniformLocation(programId, "uLutIntensity"), currentRecipeParams?.lutIntensity ?: 1.0f)
            GLES30.glUniform1i(GLES30.glGetUniformLocation(programId, "uLutEnabled"), 1)
            GLES30.glUniform1i(GLES30.glGetUniformLocation(programId, "uLutMaskType"), 0) // 默认不加遮罩
            GLES30.glUniform1i(GLES30.glGetUniformLocation(programId, "uLutCurve"), currentLutConfig.curve.shaderId)
            GLES30.glUniform1i(GLES30.glGetUniformLocation(programId, "uLutColorSpace"), currentLutConfig.colorSpace.ordinal)
        } else {
            GLES30.glBindTexture(GLES30.GL_TEXTURE_3D, 0)
            GLES30.glUniform1i(GLES30.glGetUniformLocation(programId, "uLutTexture"), 1)
            GLES30.glUniform1i(GLES30.glGetUniformLocation(programId, "uLutEnabled"), 0)
        }

        // 绑定色彩曲线纹理 (GL_TEXTURE3)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE3)
        if (curveActive && curveTextureId != 0) {
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, curveTextureId)
            GLES30.glUniform1i(GLES30.glGetUniformLocation(programId, "uCurveTexture"), 3)
            GLES30.glUniform1i(GLES30.glGetUniformLocation(programId, "uCurveEnabled"), 1)
        } else {
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, inputTexId)
            GLES30.glUniform1i(GLES30.glGetUniformLocation(programId, "uCurveTexture"), 3)
            GLES30.glUniform1i(GLES30.glGetUniformLocation(programId, "uCurveEnabled"), 0)
        }

        // 设置色彩配方 uniforms
        val colorRecipeEnabled = currentRecipeParams != null && !currentRecipeParams.isDefault()
        GLES30.glUniform1i(GLES30.glGetUniformLocation(programId, "uColorRecipeEnabled"), if (colorRecipeEnabled) 1 else 0)
        
        if (colorRecipeEnabled) {
            GLES30.glUniform1f(GLES30.glGetUniformLocation(programId, "uExposure"), currentRecipeParams.exposure)
            GLES30.glUniform1f(GLES30.glGetUniformLocation(programId, "uContrast"), currentRecipeParams.contrast)
            GLES30.glUniform1f(GLES30.glGetUniformLocation(programId, "uSaturation"), currentRecipeParams.saturation)
            GLES30.glUniform1f(GLES30.glGetUniformLocation(programId, "uTemperature"), currentRecipeParams.temperature)
            GLES30.glUniform1f(GLES30.glGetUniformLocation(programId, "uTint"), currentRecipeParams.tint)
            GLES30.glUniform1f(GLES30.glGetUniformLocation(programId, "uFade"), currentRecipeParams.fade)
            GLES30.glUniform1f(GLES30.glGetUniformLocation(programId, "uVibrance"), currentRecipeParams.color)
            ShadowsHighlightsShader.bindUniforms(
                programId,
                currentRecipeParams.highlights,
                currentRecipeParams.shadows
            )
            GLES30.glUniform1f(GLES30.glGetUniformLocation(programId, "uToneToe"), currentRecipeParams.toneToe)
            GLES30.glUniform1f(GLES30.glGetUniformLocation(programId, "uToneShoulder"), currentRecipeParams.toneShoulder)
            GLES30.glUniform1f(GLES30.glGetUniformLocation(programId, "uTonePivot"), currentRecipeParams.tonePivot)
            GLES30.glUniform1f(GLES30.glGetUniformLocation(programId, "uFilmGrain"), currentRecipeParams.filmGrain)
            GLES30.glUniform1f(GLES30.glGetUniformLocation(programId, "uVignette"), currentRecipeParams.vignette)
            GLES30.glUniform1f(GLES30.glGetUniformLocation(programId, "uBleachBypass"), currentRecipeParams.bleachBypass)
            GLES30.glUniform1f(GLES30.glGetUniformLocation(programId, "uNoise"), currentRecipeParams.noise)
            GLES30.glUniform1f(GLES30.glGetUniformLocation(programId, "uNoiseSeed"), (presentationTimeUs % 10000000L) / 1000000f)
            GLES30.glUniform1f(GLES30.glGetUniformLocation(programId, "uLowRes"), currentRecipeParams.lowRes)
            GLES30.glUniform1f(GLES30.glGetUniformLocation(programId, "uAspectRatio"), 16f / 9f)

            // LCH 配方数组
            val lchHue = floatArrayOf(
                currentRecipeParams.skinHue, currentRecipeParams.redHue, currentRecipeParams.orangeHue,
                currentRecipeParams.yellowHue, currentRecipeParams.greenHue, currentRecipeParams.cyanHue,
                currentRecipeParams.blueHue, currentRecipeParams.purpleHue, currentRecipeParams.magentaHue
            )
            val lchChroma = floatArrayOf(
                currentRecipeParams.skinChroma, currentRecipeParams.redChroma, currentRecipeParams.orangeChroma,
                currentRecipeParams.yellowChroma, currentRecipeParams.greenChroma, currentRecipeParams.cyanChroma,
                currentRecipeParams.blueChroma, currentRecipeParams.purpleChroma, currentRecipeParams.magentaChroma
            )
            val lchLightness = floatArrayOf(
                currentRecipeParams.skinLightness, currentRecipeParams.redLightness, currentRecipeParams.orangeLightness,
                currentRecipeParams.yellowLightness, currentRecipeParams.greenLightness, currentRecipeParams.cyanLightness,
                currentRecipeParams.blueLightness, currentRecipeParams.purpleLightness, currentRecipeParams.magentaLightness
            )
            GLES30.glUniform1fv(GLES30.glGetUniformLocation(programId, "uLchHueAdjustments"), 9, lchHue, 0)
            GLES30.glUniform1fv(GLES30.glGetUniformLocation(programId, "uLchChromaAdjustments"), 9, lchChroma, 0)
            GLES30.glUniform1fv(GLES30.glGetUniformLocation(programId, "uLchLightnessAdjustments"), 9, lchLightness, 0)

            // Primary Calibration Matrix 3x3 (split into 3 row vectors to bypass Media3 mat3 uniform limitation)
            val primaryCalibrationMatrix = CameraRawCalibrationMatrix.build(currentRecipeParams)
            GLES30.glUniform3fv(
                GLES30.glGetUniformLocation(programId, "uPrimaryCalibrationRow0"),
                1, floatArrayOf(primaryCalibrationMatrix[0], primaryCalibrationMatrix[3], primaryCalibrationMatrix[6]), 0
            )
            GLES30.glUniform3fv(
                GLES30.glGetUniformLocation(programId, "uPrimaryCalibrationRow1"),
                1, floatArrayOf(primaryCalibrationMatrix[1], primaryCalibrationMatrix[4], primaryCalibrationMatrix[7]), 0
            )
            GLES30.glUniform3fv(
                GLES30.glGetUniformLocation(programId, "uPrimaryCalibrationRow2"),
                1, floatArrayOf(primaryCalibrationMatrix[2], primaryCalibrationMatrix[5], primaryCalibrationMatrix[8]), 0
            )
        }

        GLES30.glUniform1i(GLES30.glGetUniformLocation(programId, "uInputColorSpace"), 0) // 默认 sRGB
        GLES30.glUniform1i(GLES30.glGetUniformLocation(programId, "uIsHlgInput"), 0)
        GLES30.glUniform1f(GLES30.glGetUniformLocation(programId, "uChromaticAberration"), 0f)
        GLES30.glUniform1f(GLES30.glGetUniformLocation(programId, "uSharpening"), 0f)

        GLES30.glDrawArrays(GLES30.GL_TRIANGLE_STRIP, 0, 4)
        checkGlError("glDrawArrays")
        if (isGles3Context && previousVao != 0) {
            GLES30.glBindVertexArray(previousVao)
        }
    }

    private fun uploadLutTexture(lutConfig: LutConfig) {
        PLog.d("VideoLutShaderProgram", "uploadLutTexture starting. lutConfig: ${lutConfig.title}, size: ${lutConfig.size}, dataType: ${lutConfig.configDataType}")
        try {
            if (lutTextureId == 0) {
                val textures = IntArray(1)
                GLES30.glGenTextures(1, textures, 0)
                lutTextureId = textures[0]
                PLog.d("VideoLutShaderProgram", "Generated new 3D LUT texture ID: $lutTextureId")
            }

            GLES30.glBindTexture(GLES30.GL_TEXTURE_3D, lutTextureId)
            checkGlError("glBindTexture 3D")
            GLES30.glPixelStorei(GLES30.GL_UNPACK_ALIGNMENT, 1)

            GLES30.glTexParameteri(GLES30.GL_TEXTURE_3D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_3D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_3D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_3D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_3D, GLES30.GL_TEXTURE_WRAP_R, GLES30.GL_CLAMP_TO_EDGE)

            val buffer: java.nio.Buffer
            val internalFormat: Int
            val format: Int
            val type: Int

            if (lutConfig.configDataType == LutConfig.CONFIG_DATA_TYPE_UINT16) {
                buffer = lutConfig.toFloatBuffer()
                internalFormat = GLES30.GL_RGB16F
                format = GLES30.GL_RGB
                type = GLES30.GL_FLOAT
                PLog.d("VideoLutShaderProgram", "Prepared float buffer for LUT. size: ${buffer.capacity()}")
            } else {
                buffer = lutConfig.toByteBuffer()
                internalFormat = GLES30.GL_RGB8
                format = GLES30.GL_RGB
                type = GLES30.GL_UNSIGNED_BYTE
                PLog.d("VideoLutShaderProgram", "Prepared byte buffer for LUT. size: ${buffer.capacity()}")
            }

            GLES30.glTexImage3D(
                GLES30.GL_TEXTURE_3D, 0, internalFormat,
                lutConfig.size, lutConfig.size, lutConfig.size,
                0, format, type, buffer
            )
            checkGlError("glTexImage3D")

            GLES30.glPixelStorei(GLES30.GL_UNPACK_ALIGNMENT, 4)
            PLog.d("VideoLutShaderProgram", "uploadLutTexture completed successfully.")
        } catch (e: Exception) {
            PLog.e("VideoLutShaderProgram", "Failed to upload LUT texture!", e)
        }
    }

    private fun deleteLutTexture() {
        if (lutTextureId != 0) {
            GLES30.glDeleteTextures(1, intArrayOf(lutTextureId), 0)
            lutTextureId = 0
        }
    }

    private fun uploadCurveTexture(
        master: FloatArray?,
        red: FloatArray?,
        green: FloatArray?,
        blue: FloatArray?
    ) {
        if (curveTextureId == 0) {
            val ids = IntArray(1)
            GLES30.glGenTextures(1, ids, 0)
            curveTextureId = ids[0]
        }
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, curveTextureId)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
        
        val curveBuffer = CurveUtils.buildCurveTextureBuffer(master, red, green, blue)
        GLES30.glTexImage2D(
            GLES30.GL_TEXTURE_2D, 0, GLES30.GL_RGBA8, 256, 1, 0,
            GLES30.GL_RGBA, GLES30.GL_UNSIGNED_BYTE, curveBuffer
        )
    }

    private fun deleteCurveTexture() {
        if (curveTextureId != 0) {
            GLES30.glDeleteTextures(1, intArrayOf(curveTextureId), 0)
            curveTextureId = 0
        }
    }

    override fun release() {
        super.release()
        deleteLutTexture()
        deleteCurveTexture()
        if (positionVbo != 0) {
            GLES30.glDeleteBuffers(1, intArrayOf(positionVbo), 0)
            positionVbo = 0
        }
        if (texCoordVbo != 0) {
            GLES30.glDeleteBuffers(1, intArrayOf(texCoordVbo), 0)
            texCoordVbo = 0
        }
        if (programId != 0) {
            GLES30.glDeleteProgram(programId)
            programId = 0
        }
    }
}
