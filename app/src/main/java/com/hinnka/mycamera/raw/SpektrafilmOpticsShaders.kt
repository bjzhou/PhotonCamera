package com.hinnka.mycamera.raw

internal object SpektrafilmOpticsShaders {
    private const val HEADER = """#version 300 es
precision highp float;
precision highp int;
precision highp sampler2D;

out vec4 fragColor;
"""

    private const val REFLECTION = """
uniform bool uWholeReflection;

int mirror(int index, int size) {
    if (index >= 0 && index < size) return index;
    if (size == 1) return 0;
    int last = uWholeReflection ? size - 1 : size;
    int period = 2 * last;
    int magnitude = index < 0 ? -index - (uWholeReflection ? 0 : 1) : index;
    int wrapped = magnitude % period;
    return min(wrapped, period - (uWholeReflection ? 0 : 1) - wrapped);
}

vec3 sampleMirrored(sampler2D source, ivec2 point, ivec2 size) {
    return texelFetch(source, ivec2(mirror(point.x, size.x), mirror(point.y, size.y)), 0).rgb;
}
"""

    val GAUSSIAN = HEADER + REFLECTION + """
uniform sampler2D uSource;
uniform sampler2D uBase;
uniform ivec2 uAxis;
uniform int uRadius;
uniform vec3 uWeights[${SpektrafilmOpticsKernels.MAX_RADIUS + 1}];
uniform vec3 uBaseWeight;
uniform vec3 uBlurWeight;

void main() {
    ivec2 point = ivec2(gl_FragCoord.xy);
    ivec2 size = textureSize(uSource, 0);
    vec3 blurred = uWeights[0] * texelFetch(uSource, point, 0).rgb;
    bool vertical = uAxis.y != 0;
    int coordinate = vertical ? point.y : point.x;
    int extent = vertical ? size.y : size.x;
    if (coordinate >= uRadius && coordinate + uRadius < extent) {
        for (int i = 1; i <= uRadius; ++i) {
            ivec2 offset = uAxis * i;
            blurred += uWeights[i] * (texelFetch(uSource, point - offset, 0).rgb +
                                      texelFetch(uSource, point + offset, 0).rgb);
        }
    } else {
        for (int i = 1; i <= uRadius; ++i) {
            ivec2 left = point + uAxis * (mirror(coordinate - i, extent) - coordinate);
            ivec2 right = point + uAxis * (mirror(coordinate + i, extent) - coordinate);
            blurred += uWeights[i] * (texelFetch(uSource, left, 0).rgb + texelFetch(uSource, right, 0).rgb);
        }
    }
    vec3 base = vec3(0.0);
    if (any(notEqual(uBaseWeight, vec3(0.0)))) base = texelFetch(uBase, point, 0).rgb;
    fragColor = vec4(base * uBaseWeight + blurred * uBlurWeight, 1.0);
}
"""

    val BOX = HEADER + REFLECTION + """
uniform sampler2D uSource;
uniform ivec2 uOffset;

void main() {
    ivec2 point = 2 * ivec2(gl_FragCoord.xy) + uOffset;
    ivec2 size = textureSize(uSource, 0);
    vec3 value = sampleMirrored(uSource, point, size) + sampleMirrored(uSource, point + ivec2(1, 0), size) +
                 sampleMirrored(uSource, point + ivec2(0, 1), size) + sampleMirrored(uSource, point + ivec2(1, 1), size);
    fragColor = vec4(value * 0.25, 1.0);
}
"""

    fun reconstruction(levelCount: Int): String = buildString {
        append(HEADER)
        append(REFLECTION)
        append("""
uniform sampler2D uBase;
uniform ivec2 uBaseOrigin;
uniform vec3 uBaseWeight;
""")
        if (levelCount > 0) {
            append("""
uniform sampler2D uLevels[$levelCount];
uniform ivec3 uLevelGrids[$levelCount];

vec3 interpolateLevel(sampler2D level, vec2 framePoint, ivec3 grid) {
    vec2 reduced = framePoint / float(grid.z) - 0.5 - vec2(grid.xy);
    ivec2 cell = ivec2(floor(reduced));
    vec2 ratio = fract(reduced);
    ivec2 size = textureSize(level, 0);
    vec3 low = mix(sampleMirrored(level, cell, size),
                   sampleMirrored(level, cell + ivec2(1, 0), size), ratio.x);
    vec3 high = mix(sampleMirrored(level, cell + ivec2(0, 1), size),
                    sampleMirrored(level, cell + ivec2(1, 1), size), ratio.x);
    return mix(low, high, ratio.y);
}
""")
        }
        append("""
void main() {
    ivec2 point = ivec2(gl_FragCoord.xy);
    vec3 value = texelFetch(uBase, point, 0).rgb * uBaseWeight;
    vec2 framePoint = vec2(point + uBaseOrigin) + 0.5;
""")
        // Sampler array indices are integer constant expressions in GLSL ES 3.00.
        repeat(levelCount) { level ->
            append("    value += interpolateLevel(uLevels[$level], framePoint, uLevelGrids[$level]);\n")
        }
        append("""
    fragColor = vec4(value, 1.0);
}
""")
    }

    val BOOST = HEADER + """
uniform sampler2D uSource;
uniform float uThreshold;
uniform float uExponentScale;
uniform float uBoostScale;

float boost(float raw) {
    float z = max(raw - uThreshold, 0.0) * uExponentScale;
    float curve = z < 0.05 ? z * z * (0.5 + z * (1.0 / 6.0 + z * (1.0 / 24.0 + z / 120.0)))
                           : exp(z) - z - 1.0;
    return raw + uBoostScale * curve;
}

void main() {
    vec3 raw = texelFetch(uSource, ivec2(gl_FragCoord.xy), 0).rgb;
    fragColor = vec4(boost(raw.r), boost(raw.g), boost(raw.b), 1.0);
}
"""

    val GLARE = HEADER + """
uniform ivec2 uOrigin;
uniform int uSeed;
uniform float uLogMean;
uniform float uLogSigma;

uint hash(uint value) {
    value = value * 747796405u + 2891336453u;
    uint word = ((value >> ((value >> 28u) + 4u)) ^ value) * 277803737u;
    return (word >> 22u) ^ word;
}

float uniformSample(uint value) {
    return (float(value & 0x007fffffu) + 0.5) * (1.0 / 8388608.0);
}

void main() {
    uvec2 point = uvec2(ivec2(gl_FragCoord.xy) + uOrigin);
    uint state = hash(point.x ^ hash(point.y + uint(uSeed)));
    float normal = sqrt(-2.0 * log(uniformSample(state))) * cos(6.28318530718 * uniformSample(hash(state)));
    float glare = exp(uLogMean + uLogSigma * normal);
    fragColor = vec4(vec3(glare), 1.0);
}
"""
}
