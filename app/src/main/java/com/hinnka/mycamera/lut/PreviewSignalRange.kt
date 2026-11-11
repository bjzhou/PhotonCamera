package com.hinnka.mycamera.lut

/**
 * Limited-range correction for the camera preview stream.
 *
 * The preview buffer format is implementation defined. Some HALs (e.g. Xiaomi 11) emit limited
 * range YCbCr (Y 16..235) with an UNKNOWN dataspace, and the GPU driver converts it to RGB as
 * full range: lifted blacks, 235 whites, low contrast, while the capture ImageReader stream
 * (JFIF, full range) is correct. The range is not reported reliably, so the user enables the
 * correction in settings.
 */
internal object PreviewSignalRange {
    /**
     * `uniform bool uPreviewLimitedRange` and `vec3 expandPreviewRange(vec3)`. Inverts the
     * driver's BT.601 full-range matrix to recover Y and chroma, then rescales them with the
     * limited-range spans (Y 219, chroma 224) back into full range.
     */
    const val GLSL = """
        uniform bool uPreviewLimitedRange;

        vec3 expandPreviewRange(vec3 color) {
            if (!uPreviewLimitedRange) return color;
            float y = dot(color, vec3(0.299, 0.587, 0.114));
            vec3 chroma = color - vec3(y);
            vec3 expanded = vec3((y - 16.0 / 255.0) * (255.0 / 219.0)) + chroma * (255.0 / 224.0);
            return clamp(expanded, 0.0, 1.0);
        }
    """
}
