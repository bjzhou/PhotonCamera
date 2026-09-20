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
 * RoundedRectSDF and DefaultHighlightShaderString.
 */
precision highp float;

uniform vec2 targetSize;
uniform vec2 targetOffset;
uniform vec2 size;
uniform vec4 cornerRadii;
uniform vec4 color;
uniform float angle;
uniform float falloff;

out vec4 fragColor;

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

/* FRAME_GEOMETRY */

vec4 highlight(vec2 coord) {
    float sd;
    vec2 grad;
    vec2 depthCoord;
    frameBoundary(coord, sd, grad, depthCoord);
    vec2 normal = vec2(cos(angle), sin(angle));
    float intensity = pow(abs(dot(grad, normal)), falloff);
    return color * intensity;
}

void main() {
    vec2 coord = vec2(gl_FragCoord.x, targetSize.y - gl_FragCoord.y) + targetOffset;
    fragColor = highlight(coord);
}
