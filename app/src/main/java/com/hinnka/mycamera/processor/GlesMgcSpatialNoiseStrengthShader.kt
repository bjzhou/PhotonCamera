package com.hinnka.mycamera.processor

internal object GlesMgcSpatialNoiseStrengthShader {
    /** The Bayer and RGB AOT paths use the same final Q8 strength worker. */
    val fragment = """
        #version 300 es
        precision highp float;
        precision highp int;
        uniform highp sampler2D uSignal;
        uniform highp sampler2D uRead;
        uniform highp sampler2D uShot;
        uniform highp sampler2D uWeight;
        uniform highp sampler2D uGlobalRead;
        uniform highp sampler2D uGlobalShot;
        uniform float uRejectedDenoiseMultiplier;
        layout(location = 0) out highp uint oStrength;

        void main() {
            ivec2 p = ivec2(gl_FragCoord.xy);
            vec3 signal = max(texelFetch(uSignal, p / 4, 0).rgb, vec3(0.0));
            vec3 read = texelFetch(uRead, p, 0).rgb;
            vec3 shot = texelFetch(uShot, p, 0).rgb;
            vec3 weight = texelFetch(uWeight, p, 0).rgb;
            vec3 predicted = (read + shot * signal) * vec3(1.0, 4.0, 1.0);
            vec3 localVariance = predicted / (weight * weight);
            float localSum = (localVariance.r + localVariance.b) + localVariance.g;

            vec3 globalRead = texelFetch(uGlobalRead, ivec2(0), 0).rgb;
            vec3 globalShot = texelFetch(uGlobalShot, ivec2(0), 0).rgb;
            float globalRed = globalRead.r + globalShot.r * signal.r;
            float globalGreen = globalRead.g + globalShot.g * signal.g;
            float globalSum = ((globalRed + globalRead.b) + 2.0 * globalGreen)
                + globalShot.b * signal.b;
            float ratio = localSum / globalSum;
            if (isnan(ratio)) {
                oStrength = 0u;
                return;
            }

            float multiplier = uRejectedDenoiseMultiplier;
            float extra = clamp((ratio - 1.0) * multiplier, 0.0, multiplier);
            oStrength = uint(clamp(roundEven((ratio + extra) * 256.0), 0.0, 65535.0));
        }
    """.trimIndent()
}
