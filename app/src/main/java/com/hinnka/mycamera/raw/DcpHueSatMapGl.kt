package com.hinnka.mycamera.raw

/** Shared DNG profile Hue/Sat map implementation for every pre-PGTM GPU path. */
internal object DcpHueSatMapGl {
    val SHADER_FUNCTIONS = """
        float dngClampTableCoordinate(float value) {
            return clamp(value, 0.0, 1.0);
        }

        float dngLinearToSrgbValue(float value) {
            value = max(value, 0.0);
            return value <= 0.0031308
                ? value * 12.92
                : 1.055 * pow(value, 1.0 / 2.4) - 0.055;
        }

        float dngSrgbToLinearValue(float value) {
            value = max(value, 0.0);
            return value <= 0.04045
                ? value / 12.92
                : pow((value + 0.055) / 1.055, 2.4);
        }

        float dngEncodeOverrangeValue(float value) {
            value = max(value, 0.0);
            return value * (256.0 + value) / (256.0 * (1.0 + value));
        }

        float dngDecodeOverrangeValue(float value) {
            value = max(value, 0.0);
            float discriminant = max(64.0 * value * value - 127.0 * value + 64.0, 0.0);
            return 16.0 * (8.0 * value - 8.0 + sqrt(discriminant));
        }

        float dngEncodeLookupValue(float value, int encoding) {
            value = dngClampTableCoordinate(value);
            return encoding == 1 ? dngLinearToSrgbValue(value) : value;
        }

        float dngEncodeScaledValue(float value, int encoding) {
            value = max(value, 0.0);
            return encoding == 1 ? dngLinearToSrgbValue(value) : value;
        }

        float dngDecodeScaledValue(float value, int encoding) {
            value = max(value, 0.0);
            return encoding == 1 ? dngSrgbToLinearValue(value) : value;
        }

        vec3 dngRgbToHsv(vec3 rgb) {
            float maxValue = max(rgb.r, max(rgb.g, rgb.b));
            float minValue = min(rgb.r, min(rgb.g, rgb.b));
            float delta = maxValue - minValue;
            float hue = 0.0;
            if (delta > 1e-6) {
                if (maxValue == rgb.r) {
                    hue = mod((rgb.g - rgb.b) / delta, 6.0);
                } else if (maxValue == rgb.g) {
                    hue = ((rgb.b - rgb.r) / delta) + 2.0;
                } else {
                    hue = ((rgb.r - rgb.g) / delta) + 4.0;
                }
            }
            if (hue < 0.0) hue += 6.0;
            float saturation = maxValue > 1e-6 ? delta / maxValue : 0.0;
            return vec3(hue, saturation, maxValue);
        }

        vec3 dngHsvToRgb(vec3 hsv) {
            float hue = mod(hsv.x, 6.0);
            if (hue < 0.0) hue += 6.0;
            float saturation = max(hsv.y, 0.0);
            float value = max(hsv.z, 0.0);
            float chroma = value * saturation;
            float x = chroma * (1.0 - abs(mod(hue, 2.0) - 1.0));
            vec3 rgb;
            if (hue < 1.0) rgb = vec3(chroma, x, 0.0);
            else if (hue < 2.0) rgb = vec3(x, chroma, 0.0);
            else if (hue < 3.0) rgb = vec3(0.0, chroma, x);
            else if (hue < 4.0) rgb = vec3(0.0, x, chroma);
            else if (hue < 5.0) rgb = vec3(x, 0.0, chroma);
            else rgb = vec3(chroma, 0.0, x);
            return rgb + vec3(value - chroma);
        }

        vec3 dngSampleHueSatMap(sampler3D tableTexture, ivec3 divisions, vec3 hsv) {
            int hueDivisions = divisions.x;
            int satDivisions = divisions.y;
            int valueDivisions = divisions.z;
            if (hueDivisions <= 0 || satDivisions <= 0 || valueDivisions <= 0) {
                return vec3(0.0, 1.0, 1.0);
            }

            float hScaled = hsv.x * float(hueDivisions) / 6.0;
            float sScaled = hsv.y * float(max(satDivisions - 1, 0));
            float vScaled = hsv.z * float(max(valueDivisions - 1, 0));
            int h0 = int(floor(hScaled));
            int s0 = min(int(floor(sScaled)), max(satDivisions - 2, 0));
            int v0 = min(int(floor(vScaled)), max(valueDivisions - 2, 0));
            int h1 = h0 + 1;
            if (h0 >= hueDivisions - 1) {
                h0 = hueDivisions - 1;
                h1 = 0;
            }
            int s1 = min(s0 + 1, satDivisions - 1);
            int v1 = min(v0 + 1, valueDivisions - 1);
            float hf = hScaled - float(h0);
            float sf = sScaled - float(s0);
            float vf = vScaled - float(v0);

            vec3 p000 = texelFetch(tableTexture, ivec3(s0, h0, v0), 0).rgb;
            vec3 p001 = texelFetch(tableTexture, ivec3(s0, h1, v0), 0).rgb;
            vec3 p010 = texelFetch(tableTexture, ivec3(s1, h0, v0), 0).rgb;
            vec3 p011 = texelFetch(tableTexture, ivec3(s1, h1, v0), 0).rgb;
            if (valueDivisions > 1) {
                p000 = mix(p000, texelFetch(tableTexture, ivec3(s0, h0, v1), 0).rgb, vf);
                p001 = mix(p001, texelFetch(tableTexture, ivec3(s0, h1, v1), 0).rgb, vf);
                p010 = mix(p010, texelFetch(tableTexture, ivec3(s1, h0, v1), 0).rgb, vf);
                p011 = mix(p011, texelFetch(tableTexture, ivec3(s1, h1, v1), 0).rgb, vf);
            }
            return mix(mix(p000, p001, hf), mix(p010, p011, hf), sf);
        }

        vec3 dngApplyHueSatMap(
            vec3 color,
            sampler3D tableTexture,
            ivec3 divisions,
            int encoding,
            bool supportOverrange
        ) {
            vec3 mapColor = supportOverrange ? max(color, vec3(0.0)) : color;
            bool encodeOverrange = supportOverrange && divisions.z > 1;
            if (encodeOverrange) {
                mapColor = vec3(
                    dngEncodeOverrangeValue(mapColor.r),
                    dngEncodeOverrangeValue(mapColor.g),
                    dngEncodeOverrangeValue(mapColor.b)
                );
            }
            vec3 hsv = dngRgbToHsv(mapColor);
            float encodedValue = hsv.z;
            float lookupValue = hsv.z;
            // RefBaselineHueSatMap uses the encoded value axis only for a true 3D map.
            // The common 2.5D map (one value division) keeps the input value linear here,
            // although its scaled result is still decoded below when an encoding is present.
            if (encoding == 1 && divisions.z > 1) {
                encodedValue = dngEncodeScaledValue(hsv.z, encoding);
                lookupValue = dngEncodeLookupValue(hsv.z, encoding);
            }
            vec3 modify = dngSampleHueSatMap(
                tableTexture,
                divisions,
                vec3(hsv.x, hsv.y, dngClampTableCoordinate(lookupValue))
            );
            hsv.x = mod(hsv.x + modify.x * 6.0 / 360.0, 6.0);
            if (hsv.x < 0.0) hsv.x += 6.0;
            hsv.y = dngClampTableCoordinate(hsv.y * modify.y);
            encodedValue = clamp(encodedValue * modify.z, 0.0, 1.0);
            hsv.z = dngDecodeScaledValue(encodedValue, encoding);
            vec3 mapped = dngHsvToRgb(hsv);
            if (encodeOverrange) {
                mapped = vec3(
                    dngDecodeOverrangeValue(mapped.r),
                    dngDecodeOverrangeValue(mapped.g),
                    dngDecodeOverrangeValue(mapped.b)
                );
            }
            return mapped;
        }
    """.trimIndent()
}
