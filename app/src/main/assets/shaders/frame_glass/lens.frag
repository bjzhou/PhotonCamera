#version 300 es
/*
 * Copyright 2025 Kyant
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * This file adapts Kyant's GLSL ES 3.00 port of
 * RoundedRectSDF and RoundedRectRefractionShaderString.
 */
precision highp float;
precision highp sampler2D;

uniform sampler2D content;
uniform vec2 contentSize;
uniform vec2 contentOffset;
uniform vec2 targetSize;
uniform vec2 targetOffset;
uniform vec2 size;
uniform vec2 offset;
uniform vec4 cornerRadii;
uniform float refractionHeight;
uniform float refractionAmount;
uniform float depthEffect;

out vec4 fragColor;

vec4 sampleContent(vec2 coord) {
    return texture(content, (coord - contentOffset) / contentSize);
}

float radiusAt(vec2 coord, vec4 radii) {
    if (coord.x >= 0.0) {
        if (coord.y <= 0.0) return radii.y;
        else return radii.z;
    } else {
        if (coord.y <= 0.0) return radii.x;
        else return radii.w;
    }
}

float sdRoundedRect(vec2 coord, vec2 halfSize, float radius) {
    vec2 cornerCoord = abs(coord) - (halfSize - vec2(radius));
    float outside = length(max(cornerCoord, 0.0)) - radius;
    float inside = min(max(cornerCoord.x, cornerCoord.y), 0.0);
    return outside + inside;
}

vec2 gradSdRoundedRect(vec2 coord, vec2 halfSize, float radius) {
    vec2 cornerCoord = abs(coord) - (halfSize - vec2(radius));
    if (cornerCoord.x >= 0.0 || cornerCoord.y >= 0.0) {
        return sign(coord) * normalize(max(cornerCoord, 0.0));
    } else {
        float gradX = step(cornerCoord.y, cornerCoord.x);
        return sign(coord) * vec2(gradX, 1.0 - gradX);
    }
}

float circleMap(float x) {
    return 1.0 - sqrt(1.0 - x * x);
}

/* FRAME_GEOMETRY */

vec4 lens(vec2 coord) {
    float sd;
    vec2 grad;
    vec2 depthCoord;
    frameBoundary(coord + offset, sd, grad, depthCoord);
    if (-sd >= refractionHeight) {
        return sampleContent(coord);
    }
    sd = min(sd, 0.0);
    // Original circleMap refraction, now evaluated against the actual frame outline.
    float d = circleMap(1.0 - -sd / refractionHeight) * refractionAmount;
    grad = directionOrZero(grad + depthEffect * directionOrZero(depthCoord));
    return sampleContent(coord + d * grad);
}

void main() {
    vec2 coord = vec2(gl_FragCoord.x, targetSize.y - gl_FragCoord.y) + targetOffset;
    fragColor = lens(coord);
}
