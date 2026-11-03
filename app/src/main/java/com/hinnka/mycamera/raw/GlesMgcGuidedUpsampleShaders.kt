package com.hinnka.mycamera.raw

/**
 * Bit-exact GLES translation of the MGC 9.7.047 V25 guided upsampling chain
 * (`BoxDownsampleS16` 0x4D3686C and `GuidedUpsampleS16To16Bit` 0x4BA6500 in libgcastartup.so)
 * together with the former CPU adapters around it. The independent reference, the algorithm notes
 * and the oracle that checks these shaders against the original AOT live in
 * tools/mgc_guided_upsample.
 *
 * Prepare (full-resolution float RGBA source):
 * 1. `guide`: padded Q14 linear Y in the sqrt domain (R16I, padded size).
 * 2. `lowGuide`: box-downsampled Q14 Y in the sqrt domain (R16I, padded size / scale).
 * 3. `lowColor`: box-downsampled linear RGB / 16383 / white balance (RGBA16F, low size).
 *
 * Render (low-resolution encoded RGBA16F):
 * 1. `lowYuv`: U12 Y, U, V (RGBA16I, low size).
 * 2. `cellFit`: two-level weighted affine fit per grid cell (2 x RGBA32UI, cell grid).
 * 3. `horizontal`: cell models interpolated to output columns (2 x RGBA32UI).
 * 4. `guidedY`: vertical interpolation and the two-level blend (R16I, output grown by
 *    [GUIDED_PADDING] per side; the guided luma outside the image is its natural extension).
 * 5. `level1`, `level2`, `output`: the V24 SharpenTo16Bit passes on the guided luma, plus the
 *    integer chroma upsampling and the Q12 YUV -> RGB of the original.
 *
 * GLSL ES 3.00 guarantees correct rounding only for finite +, - and * in highp. Everything that can
 * become infinite or NaN (from the det on) travels as binary32 bit patterns and goes through
 * the `*Bits` helpers, which resolve special operands explicitly and hand only finite operands to the
 * hardware. Divisions are integer long divisions with round-to-nearest-even; the sqrt is a LUT.
 */
internal object GlesMgcGuidedUpsampleShaders {
    const val GUIDED_PADDING = 7
    const val LEVEL1_PADDING = 6
    const val LEVEL2_PADDING = 4

    private val header = """
        #version 300 es
        precision highp float;
        precision highp int;
        precision highp sampler2D;
        precision highp isampler2D;
        precision highp usampler2D;
    """.trimIndent()

    private val integerOps = """
        const int GUIDED_PADDING = $GUIDED_PADDING;
        const int LEVEL1_PADDING = $LEVEL1_PADDING;
        const int LEVEL2_PADDING = $LEVEL2_PADDING;

        int s16(int v) { return (v << 16) >> 16; }
        // SHADD / SRHADD .8h; inputs are int16 so the halved sums never wrap.
        int hadd(int a, int b) { return (a + b) >> 1; }
        int rhadd(int a, int b) { return (a + b + 1) >> 1; }
    """.trimIndent()

    // GLSL ES has no `precise`. XOR with a zero uniform forces each product to be rounded to binary32
    // before it is added, as the original's separate FMUL/FADD do.
    private val floatOps = """
        uniform uint uFloatFence;

        float fenced(float value) { return uintBitsToFloat(floatBitsToUint(value) ^ uFloatFence); }

        float unitToU12(float value) { return fenced(clamp(value, 0.0, 1.0) * 4095.0); }

        // One row of the FinishRaw U12 matrix, rounded half to even and clamped to +-4095.
        int u12Row(float r, float g, float b, float m0, float m1, float m2) {
            float partial = fenced(fenced(r * m0) + fenced(g * m1));
            return clamp(int(roundEven(partial + fenced(b * m2))), -4095, 4095);
        }
    """.trimIndent()

    // binary32 arithmetic on bit patterns with AArch64 semantics (default NaN, no flush to zero).
    // Results are only ever consumed as "NaN or not", so one canonical NaN suffices. Subnormal
    // operands and results do not occur on this pipeline; the branches that would need them return
    // trapBits(), whose subnormal product the oracle's checked float rejects.
    private val bitOps = """
        const uint SIGN_BIT = 0x80000000u;
        const uint MAGNITUDE = 0x7fffffffu;
        const uint INFINITY_BITS = 0x7f800000u;
        const uint NAN_BITS = 0x7fc00000u;
        const uint MANTISSA = 0x007fffffu;

        bool isNanBits(uint a) { return (a & MAGNITUDE) > INFINITY_BITS; }
        bool isInfBits(uint a) { return (a & MAGNITUDE) == INFINITY_BITS; }
        bool isZeroBits(uint a) { return (a & MAGNITUDE) == 0u; }
        int exponentBits(uint a) { return int((a >> 23) & 0xffu); }

        uint trapBits() { return floatBitsToUint(fenced(uintBitsToFloat(0x00800000u) * 0.5)); }

        uint mulBits(uint a, uint b) {
            uint signBit = (a ^ b) & SIGN_BIT;
            if (isNanBits(a) || isNanBits(b)) return NAN_BITS;
            bool zero = isZeroBits(a) || isZeroBits(b);
            if (isInfBits(a) || isInfBits(b)) return zero ? NAN_BITS : (signBit | INFINITY_BITS);
            if (zero) return signBit;
            if (exponentBits(a) == 0 || exponentBits(b) == 0) return trapBits();
            int e = exponentBits(a) + exponentBits(b) - 254;
            if (e >= 128) return signBit | INFINITY_BITS;
            if (e >= -126 && e <= 125) {
                return floatBitsToUint(fenced(uintBitsToFloat(a) * uintBitsToFloat(b)));
            }
            // |a * b| may reach 2^128 or fall below 2^-126: multiply the significands in [1, 2)
            // and rebuild the exponent.
            float ma = uintBitsToFloat((a & MANTISSA) | 0x3f800000u);
            float mb = uintBitsToFloat((b & MANTISSA) | 0x3f800000u);
            uint p = floatBitsToUint(fenced(ma * mb));
            int biased = exponentBits(p) + e;
            if (biased >= 255) return signBit | INFINITY_BITS;
            if (biased <= 0) return trapBits();
            return signBit | (uint(biased) << 23) | (p & MANTISSA);
        }

        uint addBits(uint a, uint b) {
            if (isNanBits(a) || isNanBits(b)) return NAN_BITS;
            if (isInfBits(a)) return isInfBits(b) && ((a ^ b) & SIGN_BIT) != 0u ? NAN_BITS : a;
            if (isInfBits(b)) return b;
            int ea = exponentBits(a);
            int eb = exponentBits(b);
            if (max(ea, eb) <= 253) {
                return floatBitsToUint(fenced(uintBitsToFloat(a) + uintBitsToFloat(b)));
            }
            // One operand is at least 2^127. A far smaller one is below half an ulp.
            if (isZeroBits(b) || eb < 224) return a;
            if (isZeroBits(a) || ea < 224) return b;
            float halved = fenced(uintBitsToFloat(a - 0x00800000u) + uintBitsToFloat(b - 0x00800000u));
            uint s = floatBitsToUint(halved);
            if (isZeroBits(s)) return s;
            if (exponentBits(s) >= 254) return (s & SIGN_BIT) | INFINITY_BITS;
            return s + 0x00800000u;
        }

        uint subBits(uint a, uint b) { return addBits(a, b ^ SIGN_BIT); }

        // Correctly rounded (RNE) division by long division of the 24-bit significands.
        uint divBits(uint a, uint b) {
            uint signBit = (a ^ b) & SIGN_BIT;
            if (isNanBits(a) || isNanBits(b)) return NAN_BITS;
            if (isInfBits(a)) return isInfBits(b) ? NAN_BITS : (signBit | INFINITY_BITS);
            if (isInfBits(b)) return signBit;
            if (isZeroBits(b)) return isZeroBits(a) ? NAN_BITS : (signBit | INFINITY_BITS);
            if (isZeroBits(a)) return signBit;
            if (exponentBits(a) == 0 || exponentBits(b) == 0) return trapBits();
            uint ma = (a & MANTISSA) | 0x00800000u;
            uint mb = (b & MANTISSA) | 0x00800000u;
            int e = exponentBits(a) - exponentBits(b) + 127;
            if (ma < mb) {
                ma <<= 1;
                e -= 1;
            }
            uint q = 0u;
            uint r = ma;
            for (int i = 0; i < 25; ++i) {
                q <<= 1;
                if (r >= mb) {
                    r -= mb;
                    q |= 1u;
                }
                r <<= 1;
            }
            uint roundBit = q & 1u;
            q >>= 1;
            if (roundBit == 1u && (r != 0u || (q & 1u) == 1u)) q += 1u;
            if (q == 0x01000000u) {
                q >>= 1;
                e += 1;
            }
            if (e >= 255) return signBit | INFINITY_BITS;
            if (e <= 0) return trapBits();
            return signBit | (uint(e) << 23) | (q & MANTISSA);
        }

        // SCVTF: int32 -> binary32, round to nearest even.
        float intToFloat(int v) {
            if (v >= -16777216 && v <= 16777216) return float(v);
            uint signBit = v < 0 ? SIGN_BIT : 0u;
            uint m = v < 0 ? uint(-(v + 1)) + 1u : uint(v);
            int msb = findMSB(m);
            int shift = msb - 23;
            uint q = m >> uint(shift);
            uint rest = m & ((1u << uint(shift)) - 1u);
            uint halfway = 1u << uint(shift - 1);
            if (rest > halfway || (rest == halfway && (q & 1u) == 1u)) q += 1u;
            if (q == 0x01000000u) {
                q >>= 1;
                msb += 1;
            }
            return uintBitsToFloat(signBit | (uint(msb + 127) << 23) | (q & MANTISSA));
        }

        // FRINTN, then FMIN/FMAX against the int16 range and FCVTZS (NaN -> 0).
        int roundSaturateS16(uint v) {
            if (isNanBits(v)) return 0;
            if (isInfBits(v)) return (v & SIGN_BIT) != 0u ? -32768 : 32767;
            float f = uintBitsToFloat(v);
            if (f >= 32768.0) return 32767;
            if (f <= -32769.0) return -32768;
            return clamp(int(roundEven(f)), -32768, 32767);
        }
    """.trimIndent()

    // Q17 cell coordinate of a full-resolution pixel, u = (x + 0.5) / (2 * scale) - 0.5, and the
    // matching Q16 low-resolution pixel coordinate (x + 0.5) / scale - 0.5. uCellStep = 32768 / scale.
    private val gridOps = """
        uniform int uCellStep;

        // (left cell, Q16 fraction toward the next one)
        ivec2 cellTap(int x) {
            int p = (2 * x + 1) * uCellStep - 65536;
            return ivec2(p >> 17, (p >> 1) & 0xffff);
        }

        ivec2 lowTap(int x) {
            int p = (2 * x + 1) * uCellStep - 32768;
            return ivec2(p >> 16, p & 0xffff);
        }

        // 1.52590219e-05 (0x37800080), the original's 1 / 65535.
        float fractionScale() { return uintBitsToFloat(0x37800080u); }
    """.trimIndent()

    // -- prepare ----------------------------------------------------------------------------------

    // GuidedFloatRgbaToLinearYuv: WB, clamp to [0, 1], ties-away Q14 quantisation, Q13 matrix with
    // saturating rounding narrows. The source is replicated beyond its own size into the padding.
    private val linearOps = """
        uniform highp sampler2D uSource;
        uniform ivec2 uSourceMax;
        uniform float uWhiteBalance[3];
        uniform highp isampler2D uSqrtLut;

        int q14(float channel, float gain) {
            uint balanced = mulBits(floatBitsToUint(channel), floatBitsToUint(gain));
            float bounded;
            if (isNanBits(balanced)) {
                bounded = 0.0;
            } else if (isInfBits(balanced)) {
                bounded = (balanced & SIGN_BIT) != 0u ? 0.0 : 1.0;
            } else {
                bounded = clamp(uintBitsToFloat(balanced), 0.0, 1.0);
            }
            float scaled = fenced(bounded * 16383.0);
            float whole = floor(scaled);
            return int(whole) + (fenced(scaled - whole) >= 0.5 ? 1 : 0);
        }

        int narrow13(int v) { return clamp((v + 4096) >> 13, -32768, 32767); }

        ivec3 linearYuv(ivec2 p) {
            vec4 color = texelFetch(uSource, min(p, uSourceMax), 0);
            int r = q14(color.r, uWhiteBalance[0]);
            int g = q14(color.g, uWhiteBalance[1]);
            int b = q14(color.b, uWhiteBalance[2]);
            return ivec3(narrow13(1742 * r + 5859 * g + 591 * b),
                narrow13(-1331 * r - 4477 * g + 5808 * b),
                s16(r + narrow13(-7441 * g - 751 * b)));
        }

        // SqrtGuide: LUT of int16(sqrt(max(g, 0)) * 128) for g in [0, 32767], 256 x 128.
        int sqrtGuide(int g) {
            if (g <= 0) return 0;
            return texelFetch(uSqrtLut, ivec2(g & 255, g >> 8), 0).r;
        }
    """.trimIndent()

    private val boxOps = """
        uniform int uLog2Scale;

        // BoxDownsample: per column a rounded vertical mean, then a rounded horizontal mean (int32).
        ivec3 boxYuv(ivec2 low) {
            int scale = 1 << uLog2Scale;
            int rounding = scale >> 1;
            ivec3 sum = ivec3(0);
            for (int i = 0; i < scale; ++i) {
                ivec3 column = ivec3(0);
                for (int j = 0; j < scale; ++j) column += linearYuv(low * scale + ivec2(i, j));
                sum += (column + rounding) >> uLog2Scale;
            }
            return (sum + rounding) >> uLog2Scale;
        }
    """.trimIndent()

    private val guide = """
        layout(location = 0) out int oGuide;

        void main() {
            oGuide = sqrtGuide(linearYuv(ivec2(gl_FragCoord.xy)).x);
        }
    """.trimIndent()

    private val lowGuide = """
        layout(location = 0) out int oGuide;

        void main() {
            oGuide = sqrtGuide(boxYuv(ivec2(gl_FragCoord.xy)).x);
        }
    """.trimIndent()

    // GuidedLinearYuvToRgb followed by rgb / 16383 / wb (two RNE divisions) and RNE to binary16,
    // emitted as a float the RGBA16F attachment stores exactly.
    private val lowColor = """
        layout(location = 0) out vec4 oColor;

        int saturate16(int v) { return clamp(v, -32768, 32767); }

        float roundToHalf(uint v) {
            uint signBit = v & SIGN_BIT;
            float signValue = signBit != 0u ? -1.0 : 1.0;
            if (isInfBits(v)) return uintBitsToFloat(v);
            if (isZeroBits(v)) return uintBitsToFloat(signBit);
            int e = exponentBits(v) - 127;
            if (e >= 16) return uintBitsToFloat(signBit | INFINITY_BITS);
            uint m = (v & MANTISSA) | 0x00800000u;
            int shift = e >= -14 ? 13 : -1 - e;
            if (shift >= 25) return uintBitsToFloat(signBit);
            uint q = m >> uint(shift);
            uint rest = m & ((1u << uint(shift)) - 1u);
            uint halfway = 1u << uint(shift - 1);
            if (rest > halfway || (rest == halfway && (q & 1u) == 1u)) q += 1u;
            int unit = e >= -14 ? e - 10 : -24;
            if (unit == 5 && q == 2048u) return uintBitsToFloat(signBit | INFINITY_BITS);
            float power = uintBitsToFloat(uint(unit + 127) << 23);
            return fenced(fenced(float(q) * power) * signValue);
        }

        float unitColor(int v, int channel) {
            uint scaled = divBits(floatBitsToUint(float(v)), floatBitsToUint(16383.0));
            return roundToHalf(divBits(scaled, floatBitsToUint(uWhiteBalance[channel])));
        }

        void main() {
            ivec3 yuv = boxYuv(ivec2(gl_FragCoord.xy));
            int y = yuv.x;
            int u = yuv.y;
            int v = yuv.z;
            int r = saturate16(y + ((v * 25802 + 16384) >> 15));
            int g = saturate16(y + ((v * -15340 + u * -8658 + 32768) >> 16));
            int b = saturate16(y + ((u * 21442 + 8192) >> 14));
            oColor = vec4(unitColor(r, 0), unitColor(g, 1), unitColor(b, 2), 1.0);
        }
    """.trimIndent()

    // -- render -----------------------------------------------------------------------------------

    private val lowYuv = """
        uniform highp sampler2D uSource;
        layout(location = 0) out ivec4 oYuv;

        void main() {
            vec4 color = texelFetch(uSource, ivec2(gl_FragCoord.xy), 0);
            float r = unitToU12(color.r);
            float g = unitToU12(color.g);
            float b = unitToU12(color.b);
            oYuv = ivec4(u12Row(r, g, b, 0.2125999927520752, 0.7152000069618225, 0.07219959795475006),
                u12Row(r, g, b, -0.16245023906230927, -0.5464943051338196, 0.7089447379112244),
                u12Row(r, g, b, 0.9999967217445374, -0.9083024859428406, -0.09169333428144455), 0);
        }
    """.trimIndent()

    // Cell (kx, ky) fits out = a * g + b on the 4x4 low-resolution window starting at
    // (2 kx - 1, 2 ky - 1) (clamped), for two levels softly split between min - 1 and max + 1 of the
    // sqrt-domain guide, with tent spatial weights. Sums run serially in the original order.
    private val cellFit = """
        uniform highp isampler2D uLowGuide;
        uniform highp isampler2D uLowYuv;
        uniform ivec2 uLowMax;
        uniform ivec2 uCellOrigin;
        layout(location = 0) out uvec4 oCell0;
        layout(location = 1) out uvec4 oCell1;

        float tent(int i) { return i == 0 || i == 3 ? 0.625 : 0.875; }

        uvec2 solve(float s0, float sg, float sgg, float sy, float sgy) {
            float epsilon = uintBitsToFloat(0x38d1b717u);
            float s0e = s0 + epsilon;
            float sgge = sgg + epsilon;
            float negativeSg = 0.0 - sg;
            float det = fenced(s0e * sgge) - fenced(sg * sg);
            uint reciprocal = divBits(floatBitsToUint(1.0), floatBitsToUint(det));
            float bNumerator = fenced(sgge * sy) + fenced(negativeSg * sgy);
            float aNumerator = fenced(negativeSg * sy) + fenced(s0e * sgy);
            return uvec2(mulBits(reciprocal, floatBitsToUint(aNumerator)),
                mulBits(reciprocal, floatBitsToUint(bNumerator)));
        }

        void main() {
            ivec2 cell = ivec2(gl_FragCoord.xy) + uCellOrigin;
            ivec2 origin = 2 * cell - ivec2(1);
            int g[16];
            int y[16];
            int lowest = 32767;
            int highest = -32768;
            for (int r = 0; r < 4; ++r) {
                for (int k = 0; k < 4; ++k) {
                    ivec2 p = clamp(origin + ivec2(k, r), ivec2(0), uLowMax);
                    g[r * 4 + k] = texelFetch(uLowGuide, p, 0).r;
                    y[r * 4 + k] = texelFetch(uLowYuv, p, 0).r;
                    lowest = min(lowest, g[r * 4 + k]);
                    highest = max(highest, g[r * 4 + k]);
                }
            }
            float lo = float(lowest) + -1.0;
            float hi = float(highest) + 1.0;
            float reciprocal = uintBitsToFloat(divBits(floatBitsToUint(1.0), floatBitsToUint(hi - lo)));
            uvec2 model[2];
            for (int level = 0; level < 2; ++level) {
                float w[16];
                for (int r = 0; r < 4; ++r) {
                    for (int k = 0; k < 4; ++k) {
                        float t = fenced((hi - float(g[r * 4 + k])) * reciprocal);
                        float spatial = fenced(tent(r) * tent(k));
                        w[r * 4 + k] = fenced(spatial * (level == 0 ? t : 1.0 - t));
                    }
                }
                float s0 = 0.0;
                float sg = 0.0;
                float sgg = 0.0;
                for (int i = 0; i < 16; ++i) {
                    s0 = s0 + w[i];
                    sg = sg + fenced(w[i] * float(g[i]));
                    sgg = sgg + fenced(w[i] * intToFloat(g[i] * g[i]));
                }
                float sy = 0.0;
                float sgy = 0.0;
                for (int i = 0; i < 16; ++i) {
                    sy = sy + fenced(w[i] * float(y[i]));
                    sgy = sgy + fenced(w[i] * intToFloat(g[i] * y[i]));
                }
                model[level] = solve(s0, sg, sgg, sy, sgy);
            }
            oCell0 = uvec4(floatBitsToUint(lo), floatBitsToUint(hi), model[0].x, model[0].y);
            oCell1 = uvec4(model[1].x, model[1].y, 0u, 0u);
        }
    """.trimIndent()

    // Row j holds cell row uCellOrigin.y + j interpolated to columns x = i - GUIDED_PADDING:
    // c0 * (1 - f C) + (c1 * f) * C.
    private val horizontal = """
        uniform highp usampler2D uCell0;
        uniform highp usampler2D uCell1;
        uniform ivec2 uCellOrigin;
        layout(location = 0) out uvec4 oRow0;
        layout(location = 1) out uvec4 oRow1;

        uint lerpBits(uint c0, uint c1, uint w0, uint f, uint scale) {
            return addBits(mulBits(c0, w0), mulBits(mulBits(c1, f), scale));
        }

        void main() {
            ivec2 p = ivec2(gl_FragCoord.xy);
            ivec2 tap = cellTap(p.x - GUIDED_PADDING);
            ivec2 left = ivec2(tap.x - uCellOrigin.x, p.y);
            ivec2 right = left + ivec2(1, 0);
            float f = float(tap.y);
            float w0 = 1.0 - fenced(f * fractionScale());
            uint w0Bits = floatBitsToUint(w0);
            uint fBits = floatBitsToUint(f);
            uint scale = floatBitsToUint(fractionScale());
            uvec4 a0 = texelFetch(uCell0, left, 0);
            uvec4 b0 = texelFetch(uCell0, right, 0);
            uvec4 a1 = texelFetch(uCell1, left, 0);
            uvec4 b1 = texelFetch(uCell1, right, 0);
            oRow0 = uvec4(lerpBits(a0.r, b0.r, w0Bits, fBits, scale), lerpBits(a0.g, b0.g, w0Bits, fBits, scale),
                lerpBits(a0.b, b0.b, w0Bits, fBits, scale), lerpBits(a0.a, b0.a, w0Bits, fBits, scale));
            oRow1 = uvec4(lerpBits(a1.r, b1.r, w0Bits, fBits, scale), lerpBits(a1.g, b1.g, w0Bits, fBits, scale),
                0u, 0u);
        }
    """.trimIndent()

    // Vertical interpolation H0 * (1 - w1) + H1 * w1, then
    // Y = sat16(rne((1 - t) (b0 + a0 G) + t (b1 + a1 G))), t = clamp((G - lo) / (hi - lo), 0, 1).
    // Pixel (i, j) is image position (i, j) - GUIDED_PADDING.
    private val guidedY = """
        uniform highp usampler2D uRow0;
        uniform highp usampler2D uRow1;
        uniform highp isampler2D uGuide;
        uniform ivec2 uGuideMax;
        uniform int uCellOriginY;
        layout(location = 0) out int oLuma;

        uint vertical(uint top, uint bottom, uint w0, uint w1) {
            return addBits(mulBits(top, w0), mulBits(bottom, w1));
        }

        void main() {
            ivec2 p = ivec2(gl_FragCoord.xy);
            ivec2 image = p - ivec2(GUIDED_PADDING);
            ivec2 tap = cellTap(image.y);
            ivec2 top = ivec2(p.x, tap.x - uCellOriginY);
            ivec2 bottom = top + ivec2(0, 1);
            float w1 = fenced(float(tap.y) * fractionScale());
            uint w1Bits = floatBitsToUint(w1);
            uint w0Bits = floatBitsToUint(1.0 - w1);
            uvec4 t0 = texelFetch(uRow0, top, 0);
            uvec4 d0 = texelFetch(uRow0, bottom, 0);
            uvec4 t1 = texelFetch(uRow1, top, 0);
            uvec4 d1 = texelFetch(uRow1, bottom, 0);
            uint lo = vertical(t0.r, d0.r, w0Bits, w1Bits);
            uint hi = vertical(t0.g, d0.g, w0Bits, w1Bits);
            uint a0 = vertical(t0.b, d0.b, w0Bits, w1Bits);
            uint b0 = vertical(t0.a, d0.a, w0Bits, w1Bits);
            uint a1 = vertical(t1.r, d1.r, w0Bits, w1Bits);
            uint b1 = vertical(t1.g, d1.g, w0Bits, w1Bits);

            float guide = float(texelFetch(uGuide, clamp(image, ivec2(0), uGuideMax), 0).r);
            uint guideBits = floatBitsToUint(guide);
            float low = uintBitsToFloat(lo);
            float t = uintBitsToFloat(divBits(floatBitsToUint(guide - low),
                floatBitsToUint(uintBitsToFloat(hi) - low)));
            t = max(min(t, 1.0), 0.0);
            uint lowModel = addBits(b0, mulBits(a0, guideBits));
            uint highModel = addBits(b1, mulBits(a1, guideBits));
            uint blended = addBits(mulBits(floatBitsToUint(1.0 - t), lowModel),
                mulBits(floatBitsToUint(t), highModel));
            oLuma = roundSaturateS16(blended);
        }
    """.trimIndent()

    private val level1 = """
        uniform highp isampler2D uLuma;
        layout(location = 0) out int oLevel;

        int luma(ivec2 p) { return texelFetch(uLuma, p + ivec2(GUIDED_PADDING), 0).r; }

        int column(ivec2 p) {
            return rhadd(hadd(luma(p - ivec2(0, 1)), luma(p + ivec2(0, 1))), luma(p));
        }

        void main() {
            ivec2 p = ivec2(gl_FragCoord.xy) - ivec2(LEVEL1_PADDING);
            oLevel = hadd(rhadd(column(p - ivec2(1, 0)), column(p + ivec2(1, 0))), column(p));
        }
    """.trimIndent()

    private val level2 = """
        uniform highp isampler2D uLevel1;
        layout(location = 0) out int oLevel;

        int level1(ivec2 p) { return texelFetch(uLevel1, p + ivec2(LEVEL1_PADDING), 0).r; }

        int column(ivec2 p) {
            return rhadd(hadd(level1(p - ivec2(0, 2)), level1(p + ivec2(0, 2))), level1(p));
        }

        void main() {
            ivec2 p = ivec2(gl_FragCoord.xy) - ivec2(LEVEL2_PADDING);
            oLevel = hadd(rhadd(column(p - ivec2(2, 0)), column(p + ivec2(2, 0))), column(p));
        }
    """.trimIndent()

    private val output = """
        uniform highp isampler2D uLuma;
        uniform highp isampler2D uLevel1;
        uniform highp isampler2D uLevel2;
        uniform highp isampler2D uLowYuv;
        uniform ivec2 uLowMax;
        // Per band: knots 1..3 (U12), then four segment slopes (Q8) and intercepts (U12).
        uniform int uKnots[9];
        uniform int uSlopes[12];
        uniform int uIntercepts[12];
        // (width >> 1, ((height + 1) & ~1) >> 1) and 1 / (cx^2 + cy^2).
        uniform ivec2 uCenter;
        uniform float uInverseMaxRadius2;
        uniform float uCorner[3];
        uniform float uLowerScale;
        uniform float uUpperScale;
        layout(location = 0) out vec4 oColor;

        int luma(ivec2 p) { return texelFetch(uLuma, p + ivec2(GUIDED_PADDING), 0).r; }
        int level1(ivec2 p) { return texelFetch(uLevel1, p + ivec2(LEVEL1_PADDING), 0).r; }
        int level2(ivec2 p) { return texelFetch(uLevel2, p + ivec2(LEVEL2_PADDING), 0).r; }

        int column(ivec2 p) {
            return rhadd(hadd(level2(p - ivec2(0, 4)), level2(p + ivec2(0, 4))), level2(p));
        }

        // Segment by |d| (int16 abs: -32768 stays negative), slope on the signed d, mirrored intercept.
        int curve(int band, int d) {
            int magnitude = s16(abs(d));
            int knot = band * 3;
            int segment = magnitude >= uKnots[knot + 2] ? 3
                : magnitude >= uKnots[knot + 1] ? 2
                : magnitude >= uKnots[knot] ? 1 : 0;
            int index = band * 4 + segment;
            int scaled = clamp((uSlopes[index] * d) >> 8, -32768, 32767);
            int intercept = d < 0 ? s16(-uIntercepts[index]) : uIntercepts[index];
            return s16(scaled + intercept);
        }

        // FCVTZS to int32 (truncate, saturate) narrowed to int16.
        int truncateS16(float value) {
            if (value >= 2147483648.0) return -1;
            if (value <= -2147483648.0) return 0;
            return s16(int(value));
        }

        int bandTerm(int band, int d, float radius2) {
            float gain = fenced(radius2 * uCorner[band]) + 1.0;
            return truncateS16(fenced(gain * float(curve(band, d))));
        }

        int overshootBound(int value, float scale) {
            return s16(int(clamp(float(value) * scale, -32768.0, 32767.0)));
        }

        // Truncating Q16 lerp with a wrapping int16 difference.
        int lerp16(int a, int b, int f) { return s16(a + ((s16(b - a) * f) >> 16)); }

        ivec2 lowChroma(int x, int y) {
            ivec4 yuv = texelFetch(uLowYuv, clamp(ivec2(x, y), ivec2(0), uLowMax), 0);
            return ivec2(yuv.g, yuv.b);
        }

        ivec2 chroma(ivec2 p) {
            ivec2 tx = lowTap(p.x);
            ivec2 ty = lowTap(p.y);
            ivec2 c00 = lowChroma(tx.x, ty.x);
            ivec2 c10 = lowChroma(tx.x + 1, ty.x);
            ivec2 c01 = lowChroma(tx.x, ty.x + 1);
            ivec2 c11 = lowChroma(tx.x + 1, ty.x + 1);
            int u = lerp16(lerp16(c00.x, c10.x, tx.y), lerp16(c01.x, c11.x, tx.y), ty.y);
            int v = lerp16(lerp16(c00.y, c10.y, tx.y), lerp16(c01.y, c11.y, tx.y), ty.y);
            return ivec2(u, v);
        }

        // Exact binary16 value of RNE(v / 4095), the former float division followed by an RNE half
        // conversion, so the attachment write does not depend on the driver's float -> half rounding.
        float u12ToUnit(int v) {
            if (v == 0) return 0.0;
            int shift = 12 - findMSB(v);
            if ((v << shift) >= 8190) shift -= 1;
            int numerator = v << (shift + 10);
            int quotient = numerator / 4095;
            if (2 * (numerator - quotient * 4095) > 4095) quotient += 1;
            return float(quotient) * uintBitsToFloat(uint(117 - shift) << 23);
        }

        void main() {
            ivec2 p = ivec2(gl_FragCoord.xy);
            int y0 = luma(p);
            int y1 = level1(p);
            int y2 = level2(p);
            int y3 = hadd(rhadd(column(p - ivec2(4, 0)), column(p + ivec2(4, 0))), column(p));

            float dx = float(p.x - uCenter.x);
            float dy = float(p.y - uCenter.y);
            float radius2 = fenced(fenced(dy * dy) + fenced(dx * dx)) * uInverseMaxRadius2;
            int sharp = s16(y3 + bandTerm(0, s16(y0 - y1), radius2)
                + bandTerm(1, s16(y1 - y2), radius2) + bandTerm(2, s16(y2 - y3), radius2));

            int lowest = y0;
            int highest = y0;
            for (int j = -2; j <= 2; ++j) {
                for (int i = -2; i <= 2; ++i) {
                    int neighbour = luma(p + ivec2(i, j));
                    lowest = min(lowest, neighbour);
                    highest = max(highest, neighbour);
                }
            }
            sharp = max(overshootBound(lowest, uLowerScale),
                min(overshootBound(highest, uUpperScale), sharp));
            sharp = clamp(sharp, 0, 4095);

            ivec2 uv = chroma(p);
            int u = uv.x;
            int v = uv.y;
            int red = clamp(sharp + ((3225 * v + 2048) >> 12), 0, 4095);
            int green = clamp(sharp + ((-959 * v + -541 * u + 2048) >> 12), 0, 4095);
            int blue = clamp(sharp + ((5360 * u + 2048) >> 12), 0, 4095);
            oColor = vec4(u12ToUnit(red), u12ToUnit(green), u12ToUnit(blue), 1.0);
        }
    """.trimIndent()

    val guideShader = join(header, integerOps, floatOps, bitOps, linearOps, guide)
    val lowGuideShader = join(header, integerOps, floatOps, bitOps, linearOps, boxOps, lowGuide)
    val lowColorShader = join(header, integerOps, floatOps, bitOps, linearOps, boxOps, lowColor)
    val lowYuvShader = join(header, floatOps, lowYuv)
    val cellFitShader = join(header, floatOps, bitOps, cellFit)
    val horizontalShader = join(header, integerOps, floatOps, bitOps, gridOps, horizontal)
    val guidedYShader = join(header, integerOps, floatOps, bitOps, gridOps, guidedY)
    val level1Shader = join(header, integerOps, level1)
    val level2Shader = join(header, integerOps, level2)
    val outputShader = join(header, integerOps, floatOps, gridOps, output)

    private fun join(vararg parts: String) = parts.joinToString("\n\n")
}
