#version 300 es
#extension GL_OES_EGL_image_external_essl3: require
#extension GL_EXT_YUV_target: enable

precision highp float;

uniform mat4 u_ClipSpaceToPlaneMatrix;
uniform vec2 u_FrameSize;
uniform float u_FrameRadius;
uniform float u_FrameThickness;
uniform vec3 u_FrameColor;
uniform float u_OutsideFrameTransparency;
uniform samplerExternalOES u_ViewfinderTexture;
uniform vec2 u_ViewfinderTextureSize;

in vec2 v_ClipSpacePosition;
in vec2 v_ViewfinderTextureCoord;

layout (yuv) out vec4 o_FragColor;

bool isInsideRoundedBox(vec2 coord, vec2 boxCenter, vec2 halfBoxSize, float boxCornerRadius) {
    vec2 interiorHalfBoxSize = halfBoxSize - boxCornerRadius;
    float d = length(max(abs(coord - boxCenter), interiorHalfBoxSize) - interiorHalfBoxSize) - boxCornerRadius;
    return d <= 0.0;
}

vec4 viewfinder() {
    vec3 viewfinderColor = texture(u_ViewfinderTexture, v_ViewfinderTextureCoord).rgb;
    return vec4(rgb_2_yuv(viewfinderColor, itu_601_full_range), 1.0);
}

vec4 dimmedViewfinder() {
    vec3 viewfinderColor = texture(u_ViewfinderTexture, v_ViewfinderTextureCoord).rgb;
    vec3 dimmedColor = u_OutsideFrameTransparency * viewfinderColor;
    return vec4(rgb_2_yuv(dimmedColor, itu_601_full_range), 1.0);
}

vec4 frameColor() {
    return vec4(rgb_2_yuv(u_FrameColor.rgb, itu_601_full_range), 1.0);
}

// This shader works overall by performing a line-plane intersection. The "line"
// is given in GL clip space, so to find the intersection, the line is
// converted to plane-local space via the `u_ClipSpaceToPlaneMatrix`.
//
// Once the intersection is performed, the shader determines if the intersection
// point is inside, outside, or on the boundary of the frame via the
// `isInsideRoundedBox` method.
void main() {
    vec2 pixelSizeInClipSpace = vec2(2.0) / u_ViewfinderTextureSize;

    float inFrameWeight = 0.0;
    float onFrameWeight = 0.0;
    float outsideFrameWeight = 0.0;
    for (int i = 0; i < 2; i++) {
        for (int j = 0; j < 2; j++) {
            vec2 antiAliasOffset = pixelSizeInClipSpace * (0.5 * vec2(i, j) - 0.25);

            // In clip space
            const vec4 clipsSpaceLineDirection = vec4(0, 0, 1, 0);
            vec4 clipSpaceLinePosition = vec4(v_ClipSpacePosition + antiAliasOffset, 1, 1);

            // In plane space
            const vec4 planeNormal = vec4(0, 0, -1, 0);
            const vec4 planePosition = vec4(0, 0, 0, 1);

            vec4 planeLocalLineDirection = u_ClipSpaceToPlaneMatrix * clipsSpaceLineDirection;
            float planeLocalLineDirectionDot = dot(planeLocalLineDirection, planeNormal);

            // The plane is parallel to the camera direction -> not in the frame
            if (abs(planeLocalLineDirectionDot) < 1e-5) {
                o_FragColor = dimmedViewfinder();
                continue;
            }

            vec4 planeLocalLinePosition = u_ClipSpaceToPlaneMatrix * clipSpaceLinePosition;
            float planeLineIntersectionParameter = dot(planePosition - planeLocalLinePosition, planeNormal) / planeLocalLineDirectionDot;

            // The line intersects the plane behind the camera -> not in the frame
            if (planeLineIntersectionParameter > 1e-5) {
                o_FragColor = dimmedViewfinder();
                continue;
            }

            vec4 planeLineIntersection = planeLineIntersectionParameter * planeLocalLineDirection + planeLocalLinePosition;
            vec2 planeLocalPosition = planeLineIntersection.xy / planeLineIntersection.w;

            bool insideFrame = isInsideRoundedBox(
                planeLocalPosition,
                0.5 * u_FrameSize,
                0.5 * u_FrameSize - u_FrameThickness,
                u_FrameRadius - u_FrameThickness);
            bool onFrame = !insideFrame && isInsideRoundedBox(
                planeLocalPosition,
                0.5 * u_FrameSize,
                0.5 * u_FrameSize,
                u_FrameRadius);

            if (insideFrame) {
                inFrameWeight += 0.25;
            } else if (onFrame) {
                onFrameWeight += 0.25;
            } else {
                outsideFrameWeight += 0.25;
            }
        }
    }

    o_FragColor = outsideFrameWeight * dimmedViewfinder()
        + onFrameWeight * frameColor()
        + inFrameWeight * viewfinder();
}
