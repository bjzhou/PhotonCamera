package com.hinnka.mycamera.processor

internal object GlesMgcSpatialSignalShaders {
    /**
     * Spatial noise-model signal on the padded 16×16 cell grid. Each input
     * plane is signed Q14 and already padded by the Fixed16 producer.
     */
    val downsample = """
        #version 300 es
        precision highp float;
        precision highp int;
        uniform highp isampler2D uFixed16;
        uniform ivec2 uPlaneOrigin[4];
        uniform int uCfaPattern;
        uniform int uIsBayer;
        layout(location = 0) out vec4 oSignal;

        int sumPlane(ivec2 origin, int edge) {
            int sum = 0;
            for (int y = 0; y < edge; ++y) {
                for (int x = 0; x < edge; ++x) {
                    sum += texelFetch(uFixed16, origin + ivec2(x, y), 0).r;
                }
            }
            return sum;
        }

        void main() {
            ivec2 cell = ivec2(gl_FragCoord.xy);
            if (uIsBayer != 0) {
                ivec2 base = cell * 8;
                // Fixed16 stores sensor phases in row-major order. The noise coefficients are
                // in camera R, G, B order, with the two green phases averaged.
                ivec4 planeSum = ivec4(
                    sumPlane(base + uPlaneOrigin[0], 8),
                    sumPlane(base + uPlaneOrigin[1], 8),
                    sumPlane(base + uPlaneOrigin[2], 8),
                    sumPlane(base + uPlaneOrigin[3], 8)
                );
                int red = planeSum[uCfaPattern];
                int green = planeSum[uCfaPattern ^ 1] + planeSum[uCfaPattern ^ 2];
                int blue = planeSum[uCfaPattern ^ 3];
                vec3 signal = vec3(red, green, blue)
                    * vec3(1.0 / 1048576.0, 1.0 / 2097152.0, 1.0 / 1048576.0);
                oSignal = vec4(signal, 0.0);
            } else {
                ivec2 base = cell * 16;
                ivec3 sum = ivec3(
                    sumPlane(base + uPlaneOrigin[0], 16),
                    sumPlane(base + uPlaneOrigin[1], 16),
                    sumPlane(base + uPlaneOrigin[2], 16)
                );
                oSignal = vec4(vec3(sum) * (1.0 / 4194304.0), 0.0);
            }
        }
    """.trimIndent()
}
