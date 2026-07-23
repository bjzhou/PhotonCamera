package com.hinnka.mycamera.raw

/**
 * Phocus colorspaceconvert SDR input decode plus linear output-space transform.
 *
 * Input contract: companded HNCS RGB. The default Phocus correction path gets
 * this domain directly from the companding=2 FilmCurve; newer persisted Phocus
 * corrections may additionally insert CGammaFilter before this boundary.
 * Output contract: linear destination RGB. The destination OETF remains a
 * separate pass so PhotonCamera's linear edit controls keep their established
 * domain.
 */
object HncsOutputLinearPassShaders {
    val FRAGMENT_SHADER = """
        #version 300 es
        precision highp float;
        precision highp sampler2D;

        in vec2 vTexCoord;
        out vec4 fragColor;

        uniform sampler2D uInputTexture;
        uniform mat3 uHncsToLinearOutput;

        vec3 gamma22Eotf(vec3 color) {
            return pow(max(color, vec3(0.0)), vec3(2.2));
        }

        void main() {
            vec4 sampleValue = texture(uInputTexture, vTexCoord);
            vec3 hncsLinear = gamma22Eotf(sampleValue.rgb);
            fragColor = vec4(uHncsToLinearOutput * hncsLinear, sampleValue.a);
        }
    """.trimIndent()
}
