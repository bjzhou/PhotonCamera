package com.hinnka.mycamera.lut

/**
 * 屏幕空间直闪模拟。
 *
 * 单张图像没有深度与遮挡信息，因此这里模拟与镜头同轴的照明分布：
 * 中央获得较高曝光增益，边缘快速衰减，并对原有高光做保护。
 */
internal object DirectFlashShader {
    val GLSL = """
        vec3 applyDirectFlash(
            vec3 srgbColor,
            vec2 uv,
            float aspectRatio,
            float strength
        ) {
            float safeStrength = clamp(strength, 0.0, 1.0);
            if (safeStrength <= 0.0001) {
                return srgbColor;
            }

            float safeAspect = max(aspectRatio, 0.001);
            vec2 centered = (uv - vec2(0.5)) * vec2(safeAspect, 1.0);
            float cornerRadius = length(vec2(0.5 * safeAspect, 0.5));
            float normalizedRadius = length(centered) / max(cornerRadius, 0.001);
            float radialCore = 1.0 - smoothstep(0.08, 1.0, normalizedRadius);
            float illumination = mix(0.10, 1.0, pow(radialCore, 1.35));

            vec3 linearColor = max(srgbToLinear(max(srgbColor, vec3(0.0))), vec3(0.0));
            float linearLuma = dot(linearColor, vec3(0.2126, 0.7152, 0.0722));
            float highlightProtection = mix(
                1.0,
                0.35,
                smoothstep(0.45, 1.0, linearLuma)
            );
            float exposureEv = 1.65 * safeStrength * illumination * highlightProtection;
            float localStrength = safeStrength * illumination;
            vec3 flashWhite = mix(
                vec3(1.0),
                vec3(0.985, 1.0, 1.035),
                localStrength
            );

            vec3 litLinear = linearColor * exp2(exposureEv) * flashWhite;
            float shoulder = 0.18 * localStrength;
            litLinear /= vec3(1.0) + litLinear * shoulder;
            return linearToSrgb(max(litLinear, vec3(0.0)));
        }
    """.trimIndent()
}
