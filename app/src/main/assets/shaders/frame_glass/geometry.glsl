// Frame adapter for Kyant's rounded-rectangle SDF. A frame is one surface with a photo cutout.
uniform vec4 photoRect;
uniform float photoRadius;

vec2 directionOrZero(vec2 vector) {
    float magnitude = length(vector);
    return magnitude > 0.0 ? vector / magnitude : vec2(0.0);
}

void frameBoundary(vec2 coord, out float sd, out vec2 grad, out vec2 depthCoord) {
    vec2 halfSize = size * 0.5;
    vec2 centered = coord - halfSize;
    float radius = radiusAt(centered, cornerRadii);
    sd = sdRoundedRect(centered, halfSize, radius);
    float gradRadius = min(radius * 1.5, min(halfSize.x, halfSize.y));
    grad = gradSdRoundedRect(centered, halfSize, gradRadius);
    depthCoord = centered;

    vec2 photoSize = photoRect.zw - photoRect.xy;
    if (photoSize.x > 0.0 && photoSize.y > 0.0) {
        vec2 photoHalfSize = photoSize * 0.5;
        vec2 photoCoord = coord - (photoRect.xy + photoHalfSize);
        float photoSd = -sdRoundedRect(photoCoord, photoHalfSize, photoRadius);
        // SDF subtraction: max(outer, -photo). No boundaries at strip or tile joins.
        if (photoSd > sd) {
            sd = photoSd;
            float photoGradRadius = min(photoRadius * 1.5, min(photoHalfSize.x, photoHalfSize.y));
            grad = -gradSdRoundedRect(photoCoord, photoHalfSize, photoGradRadius);
            depthCoord = -photoCoord;
        }
    }
}
