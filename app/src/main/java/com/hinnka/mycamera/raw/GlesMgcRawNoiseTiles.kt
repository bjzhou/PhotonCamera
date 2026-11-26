package com.hinnka.mycamera.raw

/** Sparse Q14 YUV noise measurements before either FinishRaw denoise pass. */
internal object GlesMgcRawNoiseTiles {
    val fragment = listOf(
        GlesMgcChromaDenoiseShaders.header,
        GlesMgcChromaDenoiseShaders.rgbToQ14Yuv,
        """
        uniform highp sampler2D uSource;
        uniform vec3 uWhiteBalance;
        uniform ivec2 uInputSize;
        uniform ivec2 uTileGrid;
        layout(location = 0) out uvec4 oTile;

        vec3 sampleQ14(ivec2 p) {
            return vec3(rgbToQ14Yuv(texelFetch(uSource, p, 0).rgb, uWhiteBalance));
        }

        void main() {
            const int patchSize = 8;
            const float pixelCount = 64.0;
            const float differenceCount = 56.0;
            if (any(lessThan(uInputSize, ivec2(patchSize)))) {
                oTile = uvec4(0u, 0u, 0u, floatBitsToUint(-1.0));
                return;
            }

            ivec2 cell = ivec2(gl_FragCoord.xy);
            ivec2 center = (2 * cell + 1) * uInputSize / (2 * uTileGrid);
            ivec2 origin = clamp(center - patchSize / 2, ivec2(0), uInputSize - patchSize);
            vec3 anchor = sampleQ14(origin);
            vec3 sum = vec3(0.0);
            vec3 squares = vec3(0.0);
            vec3 momentX = vec3(0.0);
            vec3 momentY = vec3(0.0);
            vec3 differenceSumX = vec3(0.0);
            vec3 differenceSumY = vec3(0.0);
            vec3 differenceSquares = vec3(0.0);
            vec3 previousRow[patchSize];

            for (int y = 0; y < patchSize; ++y) {
                vec3 previous = vec3(0.0);
                for (int x = 0; x < patchSize; ++x) {
                    vec3 v = sampleQ14(origin + ivec2(x, y)) - anchor;
                    sum += v;
                    squares += v * v;
                    momentX += (float(x) - 3.5) * v;
                    momentY += (float(y) - 3.5) * v;
                    if (x > 0) {
                        vec3 delta = v - previous;
                        differenceSumX += delta;
                        differenceSquares += delta * delta;
                    }
                    if (y > 0) {
                        vec3 delta = v - previousRow[x];
                        differenceSumY += delta;
                        differenceSquares += delta * delta;
                    }
                    previous = v;
                    previousRow[x] = v;
                }
            }

            float meanY = anchor.r + sum.r / pixelCount;
            if (meanY <= 0.0 || meanY >= 0.9 * 16383.0) {
                oTile = uvec4(0u, 0u, 0u, floatBitsToUint(-1.0));
                return;
            }
            // Affine basis (1, x - 3.5, y - 3.5) is orthogonal on this patch. Each axis
            // has squared norm 336. Subtract its energy and remove the three fitted degrees.
            vec3 errorSquares = squares - sum * sum / pixelCount -
                (momentX * momentX + momentY * momentY) / 336.0;
            vec3 sigma = sqrt(max(errorSquares / 61.0, vec3(0.0)));

            // Adjacent differences share samples. In each direction the summed differences
            // telescope to 16 boundary samples, so removing their mean costs 16/56 variance.
            vec3 differenceError = differenceSquares -
                (differenceSumX * differenceSumX + differenceSumY * differenceSumY) / differenceCount;
            vec3 differenceSigma = sqrt(max(differenceError / (4.0 * differenceCount - 32.0 / differenceCount),
                vec3(0.0)));
            oTile = uvec4(
                packHalf2x16(vec2(sigma.r, differenceSigma.r)),
                packHalf2x16(vec2(sigma.g, differenceSigma.g)),
                packHalf2x16(vec2(sigma.b, differenceSigma.b)),
                floatBitsToUint(meanY)
            );
        }
        """.trimIndent(),
    ).joinToString("\n")
}
