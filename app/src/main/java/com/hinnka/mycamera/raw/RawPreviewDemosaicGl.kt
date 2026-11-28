package com.hinnka.mycamera.raw

import android.graphics.ImageFormat
import android.graphics.Rect
import android.hardware.camera2.CameraCharacteristics
import android.hardware.camera2.CaptureResult
import android.media.Image
import android.opengl.GLES30
import android.opengl.GLES31
import android.util.Half
import com.hinnka.mycamera.processor.GlesComputeWorkGroup
import com.hinnka.mycamera.utils.PLog
import com.hinnka.mycamera.utils.RawProcessor
import java.nio.Buffer
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.nio.ShortBuffer
import kotlin.math.roundToInt

/** Develops preview-size, un-white-balanced camera RGB from a matched Camera2 RAW frame. */
internal class RawPreviewDemosaicGl {
    data class Frame(
        val textureId: Int,
        val width: Int,
        val height: Int,
        val metadata: RawMetadata,
        val crop: RawPhysicalCrop,
    )

    private data class CropKey(
        val width: Int,
        val height: Int,
        val characteristics: CameraCharacteristics,
        val scalerCrop: Rect?,
        val zoomRatio: Float?,
        val distortionMode: Int?,
        val streamAspectRatio: Float?,
    )

    private class Texture(private val format: Int, private val filter: Int, private val label: String) {
        var id = 0
            private set
        private var width = 0
        private var height = 0

        fun ensure(width: Int, height: Int) {
            if (id != 0 && this.width == width && this.height == height) return
            release()
            id = MgcGlesSurfaces.texture(format, width, height, label, filter)
            this.width = width
            this.height = height
        }

        fun release() {
            MgcGlesSurfaces.deleteTextures(id)
            reset()
        }

        fun reset() {
            id = 0
            width = 0
            height = 0
        }
    }

    private class Program(val id: Int) {
        private fun uniform(name: String) = GLES31.glGetUniformLocation(id, name)

        val raw = uniform("uRaw")
        val rawPacking = uniform("uRawPacking")
        val shading = uniform("uLensShading")
        val cellSize = uniform("uCellSize")
        val previewSize = uniform("uPreviewSize")
        val blackLevel = uniform("uBlackLevel")
        val whiteLevel = uniform("uWhiteLevel")
        val cfaOffsets = uniform("uCfaOffsets")
        val shadingEnabled = uniform("uShadingEnabled")
        val shadingActiveSize = uniform("uShadingActiveSize")
        val shadingOrigin = uniform("uShadingOrigin")
        val sensorRowPhase = uniform("uSensorRowPhase")
    }

    private val raw = Texture(GLES30.GL_R16UI, GLES30.GL_NEAREST, "RAW preview input")
    private val packedRaw = Texture(GLES30.GL_R8UI, GLES30.GL_NEAREST, "Packed RAW preview input")
    private val shading = Texture(GLES30.GL_RGBA16F, GLES30.GL_LINEAR, "RAW preview shading")
    private val output = Texture(GLES30.GL_RGBA16F, GLES30.GL_LINEAR, "RAW preview output")
    private var program: Program? = null
    private var initializationAttempted = false
    private var maxTextureSize = 0
    private var cropKey: CropKey? = null
    private var lastCrop: RawPhysicalCrop? = null
    private var lastShadingMap: FloatArray? = null
    private var lastShadingWidth = 0
    private var lastShadingHeight = 0
    private var packedShadingMap: ShortBuffer? = null

    /** Borrows [image] for the synchronous client-memory upload. The caller closes it. */
    fun render(
        image: Image,
        result: CaptureResult,
        characteristics: CameraCharacteristics,
        maxLongEdge: Int = 1280,
        cfaPatternOverride: Int? = null,
        streamAspectRatio: Float? = null,
        exposureCompensationEv: Float = 0f,
    ): Frame? {
        require(maxLongEdge > 0)
        try {
            val width = image.width
            val height = image.height
            val format = image.format
            val groupShift = when (format) {
                ImageFormat.RAW_SENSOR -> 0
                ImageFormat.RAW10 -> 2
                ImageFormat.RAW12 -> 1
                else -> return null
            }
            val isPacked = groupShift != 0
            val groupPixels = 1 shl groupShift
            // RAW frames from monochrome or non-Bayer sources have a different sample layout.
            val cfa = cfaPatternOverride
                ?: characteristics.get(CameraCharacteristics.SENSOR_INFO_COLOR_FILTER_ARRANGEMENT)
                ?: return null
            if (cfa !in CFA_OFFSETS.indices) return null
            val activeProgram = getProgram() ?: return null
            val crop = resolveCrop(width, height, characteristics, result, streamAspectRatio)
            val source = crop.sourceBounds
            // Packed rows must start on a whole group. The shader skips any leading sites.
            val groupBytes = groupPixels + 1
            val inputRegion = if (isPacked) {
                Rect(
                    (source.left shr groupShift) * groupBytes,
                    source.top,
                    ((source.right + groupPixels - 1) shr groupShift) * groupBytes,
                    source.bottom,
                )
            } else {
                source
            }
            val sourceRowWidth = if (isPacked) (width shr groupShift) * groupBytes else width
            val inputWidth = sourceRowWidth.coerceAtMost(maxTextureSize)
            val inputHeight = height.coerceAtMost(maxTextureSize)
            if (inputRegion.width() > inputWidth || inputRegion.height() > inputHeight) return null
            val metadata = resolveMetadata(
                width, height, format, characteristics, result, cfaPatternOverride, exposureCompensationEv,
            )
            if (metadata.blackLevel.any { !it.isFinite() || it >= metadata.whiteLevel }) return null

            val cellWidth = crop.width / 2
            val cellHeight = crop.height / 2
            val scale = (maxLongEdge.toDouble() / maxOf(cellWidth, cellHeight)).coerceAtMost(1.0)
            val previewWidth = (cellWidth * scale).roundToInt().coerceAtLeast(1)
            val previewHeight = (cellHeight * scale).roundToInt().coerceAtLeast(1)
            GLES31.glActiveTexture(GLES31.GL_TEXTURE0)
            // A zoom change only modifies the uploaded rectangle, so RAW storage is reused.
            val inputTexture = if (isPacked) packedRaw else raw
            inputTexture.ensure(inputWidth, inputHeight)
            output.ensure(previewWidth, previewHeight)
            uploadRaw(image, inputTexture.id, inputRegion, sourceRowWidth, isPacked)
            val useShading = uploadShading(metadata)
            checkGl("upload")
            val packedXOffset = source.left and (groupPixels - 1)
            dispatch(
                activeProgram, inputTexture.id, groupShift, packedXOffset, metadata, crop, previewWidth,
                previewHeight, useShading,
            )
            checkGl("demosaic")
            return Frame(output.id, previewWidth, previewHeight, metadata, crop)
        } catch (error: IllegalStateException) {
            PLog.w(TAG, "RAW preview frame unavailable: ${error.message}")
            return null
        } catch (error: IllegalArgumentException) {
            PLog.w(TAG, "RAW preview frame layout rejected: ${error.message}")
            return null
        }
    }

    private fun resolveMetadata(
        width: Int,
        height: Int,
        format: Int,
        characteristics: CameraCharacteristics,
        result: CaptureResult,
        cfaPatternOverride: Int?,
        exposureCompensationEv: Float,
    ): RawMetadata {
        val metadata = RawMetadata.create(
            width, height, characteristics, result, colorSpace = ColorSpace.ProPhoto, sourceFormat = format,
            captureExposureCompensationEv = exposureCompensationEv,
        ).copy(
            postRawSensitivityBoost = 1f,
            baselineExposure = DngBaselineExposure.fromPostRawSensitivityBoost(
                result.get(CaptureResult.CONTROL_POST_RAW_SENSITIVITY_BOOST),
            ),
        )
        val white = result.get(CaptureResult.SENSOR_DYNAMIC_WHITE_LEVEL)
            ?.takeIf { format == ImageFormat.RAW_SENSOR }
            ?.takeIf { it > 0 }?.toFloat() ?: metadata.whiteLevel
        if (cfaPatternOverride == null || cfaPatternOverride == metadata.cfaPattern) {
            return if (white == metadata.whiteLevel) metadata else metadata.copy(whiteLevel = white)
        }
        val originalOffsets = CFA_OFFSETS[metadata.cfaPattern]
        val overrides = CFA_OFFSETS[cfaPatternOverride]
        val black = FloatArray(4) { channel -> metadata.blackLevel[originalOffsets.indexOf(overrides[channel])] }
        return metadata.copy(whiteLevel = white, cfaPattern = cfaPatternOverride, blackLevel = black)
    }

    private fun resolveCrop(
        width: Int,
        height: Int,
        characteristics: CameraCharacteristics,
        result: CaptureResult,
        streamAspectRatio: Float?,
    ): RawPhysicalCrop {
        val key = CropKey(
            width, height, characteristics,
            result.get(CaptureResult.SCALER_CROP_REGION),
            result.get(CaptureResult.CONTROL_ZOOM_RATIO),
            result.get(CaptureResult.DISTORTION_CORRECTION_MODE),
            streamAspectRatio,
        )
        if (key == cropKey) lastCrop?.let { return it }
        val physical = RawProcessor.resolveCameraRawPhysicalCrop(width, height, characteristics, result)
        return matchStreamAspect(physical, streamAspectRatio).also {
            cropKey = key
            lastCrop = it
        }
    }

    private fun matchStreamAspect(crop: RawPhysicalCrop, streamAspectRatio: Float?): RawPhysicalCrop {
        if (streamAspectRatio == null || !streamAspectRatio.isFinite() || streamAspectRatio <= 0f) return crop
        val source = crop.sourceBounds
        val targetWidth = (crop.height * streamAspectRatio).roundToInt().coerceAtMost(crop.width)
        val targetHeight = (crop.width / streamAspectRatio).roundToInt().coerceAtMost(crop.height)
        if (targetWidth == crop.width && targetHeight == crop.height) return crop
        val left = source.left + (crop.width - targetWidth) / 2
        val top = source.top + (crop.height - targetHeight) / 2
        val aligned = RawDefaultCropOverride.alignToBayerPhase(
            crop = Rect(left, top, left + targetWidth, top + targetHeight),
            width = crop.sourceWidth,
            height = crop.sourceHeight,
            phaseOriginX = crop.activeSourceBounds.left,
            phaseOriginY = crop.activeSourceBounds.top,
        ) ?: return crop
        return crop.copy(
            sourceBounds = aligned,
            sensorOriginX = crop.sensorOriginX + aligned.left - source.left,
            sensorOriginY = crop.sensorOriginY + aligned.top - source.top,
        )
    }

    private fun uploadRaw(image: Image, textureId: Int, crop: Rect, sourceRowWidth: Int, isPacked: Boolean) {
        if (isPacked) RawPackedUnpacker.validateImageLayout(image)
        val plane = image.planes.single()
        val pixels = plane.buffer.duplicate().apply { position(0) }
        val rowStride = plane.rowStride
        val bytesPerTexel = if (isPacked) 1 else Short.SIZE_BYTES
        if (!isPacked) {
            check(plane.pixelStride == bytesPerTexel) { "RAW_SENSOR pixel stride ${plane.pixelStride}" }
        }
        val start = crop.top.toLong() * rowStride + crop.left.toLong() * bytesPerTexel
        val end = start + (crop.height() - 1).toLong() * rowStride + crop.width().toLong() * bytesPerTexel
        check(pixels.isDirect && rowStride % bytesPerTexel == 0 &&
            rowStride >= sourceRowWidth.toLong() * bytesPerTexel && start >= 0 && end <= pixels.limit()) {
            "RAW plane rowStride=$rowStride limit=${pixels.limit()} crop=$crop"
        }
        pixels.limit(end.toInt())
        pixels.position(start.toInt())
        val slice = pixels.slice().order(ByteOrder.nativeOrder())
        val region: Buffer = if (isPacked) slice else slice.asShortBuffer()
        val type = if (isPacked) GLES30.GL_UNSIGNED_BYTE else GLES30.GL_UNSIGNED_SHORT
        GLES31.glBindTexture(GLES31.GL_TEXTURE_2D, textureId)
        configureUnpack(alignment = bytesPerTexel, rowLength = rowStride / bytesPerTexel)
        try {
            GLES31.glTexSubImage2D(
                GLES31.GL_TEXTURE_2D, 0, 0, 0, crop.width(), crop.height(),
                GLES30.GL_RED_INTEGER, type, region,
            )
        } finally {
            configureUnpack()
            GLES31.glBindTexture(GLES31.GL_TEXTURE_2D, 0)
        }
    }

    private fun uploadShading(metadata: RawMetadata): Boolean {
        val map = metadata.lensShadingMap
        val width = metadata.lensShadingMapWidth
        val height = metadata.lensShadingMapHeight
        if (map == null || width <= 0 || height <= 0 || map.size != width * height * 4) {
            // Keep a complete sampler bound even when the shader skips lens shading.
            if (shading.id == 0) shading.ensure(1, 1)
            return false
        }
        if (lastShadingWidth == width && lastShadingHeight == height && map.contentEquals(lastShadingMap)) return true
        shading.ensure(width, height)
        val staging = packedShadingMap?.takeIf { it.capacity() >= map.size }
            ?: ByteBuffer.allocateDirect(map.size * Short.SIZE_BYTES).order(ByteOrder.nativeOrder())
                .asShortBuffer().also { packedShadingMap = it }
        staging.clear()
        for (gain in map) staging.put(Half.toHalf(gain))
        staging.flip()
        GLES31.glBindTexture(GLES31.GL_TEXTURE_2D, shading.id)
        configureUnpack()
        GLES31.glTexSubImage2D(
            GLES31.GL_TEXTURE_2D, 0, 0, 0, width, height,
            GLES30.GL_RGBA, GLES30.GL_HALF_FLOAT, staging,
        )
        GLES31.glBindTexture(GLES31.GL_TEXTURE_2D, 0)
        checkGl("lens shading upload")
        lastShadingMap = map
        lastShadingWidth = width
        lastShadingHeight = height
        return true
    }

    private fun dispatch(
        program: Program,
        inputTextureId: Int,
        groupShift: Int,
        packedXOffset: Int,
        metadata: RawMetadata,
        crop: RawPhysicalCrop,
        previewWidth: Int,
        previewHeight: Int,
        useShading: Boolean,
    ) {
        val source = crop.sourceBounds
        val active = crop.activeSourceBounds
        GLES31.glUseProgram(program.id)
        GLES31.glActiveTexture(GLES31.GL_TEXTURE0)
        GLES31.glBindTexture(GLES31.GL_TEXTURE_2D, inputTextureId)
        GLES31.glUniform1i(program.raw, 0)
        GLES31.glUniform2i(program.rawPacking, groupShift, packedXOffset)
        GLES31.glActiveTexture(GLES31.GL_TEXTURE1)
        GLES31.glBindTexture(GLES31.GL_TEXTURE_2D, shading.id)
        GLES31.glUniform1i(program.shading, 1)
        GLES31.glUniform2i(program.cellSize, crop.width / 2, crop.height / 2)
        GLES31.glUniform2i(program.previewSize, previewWidth, previewHeight)
        GLES31.glUniform4fv(program.blackLevel, 1, metadata.blackLevel, 0)
        GLES31.glUniform1f(program.whiteLevel, metadata.whiteLevel)
        GLES31.glUniform4iv(program.cfaOffsets, 1, CFA_OFFSETS[metadata.cfaPattern], 0)
        GLES31.glUniform1i(program.shadingEnabled, if (useShading) 1 else 0)
        GLES31.glUniform2f(program.shadingActiveSize, active.width().toFloat(), active.height().toFloat())
        GLES31.glUniform2i(program.shadingOrigin, source.left - active.left, source.top - active.top)
        GLES31.glUniform1i(program.sensorRowPhase, crop.sensorOriginY and 1)
        GLES31.glBindImageTexture(0, output.id, 0, false, 0, GLES31.GL_WRITE_ONLY, GLES30.GL_RGBA16F)
        // Complete previous shader reads of the reusable output before its next image writes.
        GLES31.glMemoryBarrier(GLES31.GL_SHADER_IMAGE_ACCESS_BARRIER_BIT)
        GLES31.glDispatchCompute(
            GlesComputeWorkGroup.imageGroupCount(previewWidth),
            GlesComputeWorkGroup.imageGroupCount(previewHeight),
            1,
        )
        GLES31.glMemoryBarrier(
            GLES31.GL_SHADER_IMAGE_ACCESS_BARRIER_BIT or GLES31.GL_TEXTURE_FETCH_BARRIER_BIT or
                GLES31.GL_FRAMEBUFFER_BARRIER_BIT,
        )
        GLES31.glBindImageTexture(0, 0, 0, false, 0, GLES31.GL_READ_ONLY, GLES30.GL_RGBA16F)
        GLES31.glBindTexture(GLES31.GL_TEXTURE_2D, 0)
        GLES31.glActiveTexture(GLES31.GL_TEXTURE0)
        GLES31.glBindTexture(GLES31.GL_TEXTURE_2D, 0)
    }

    private fun getProgram(): Program? {
        if (initializationAttempted) return program
        initializationAttempted = true
        val limit = IntArray(1)
        GLES30.glGetIntegerv(GLES30.GL_MAJOR_VERSION, limit, 0)
        val major = limit[0]
        GLES30.glGetIntegerv(GLES30.GL_MINOR_VERSION, limit, 0)
        if (major < 3 || (major == 3 && limit[0] < 1)) return null
        GLES31.glGetIntegerv(GLES31.GL_MAX_TEXTURE_SIZE, limit, 0)
        maxTextureSize = limit[0]
        GLES31.glGetIntegerv(GLES31.GL_MAX_COMPUTE_IMAGE_UNIFORMS, limit, 0)
        if (limit[0] < 1) return null
        GLES31.glGetIntegerv(GLES31.GL_MAX_IMAGE_UNITS, limit, 0)
        if (limit[0] < 1) return null
        val id = RawGlesProgram.compileCompute(SHADER, "RAW preview Bayer develop")
        if (id == 0) return null
        return Program(id).also { program = it }
    }

    private fun configureUnpack(alignment: Int = 4, rowLength: Int = 0) {
        GLES31.glBindBuffer(GLES31.GL_PIXEL_UNPACK_BUFFER, 0)
        GLES31.glPixelStorei(GLES31.GL_UNPACK_ALIGNMENT, alignment)
        GLES31.glPixelStorei(GLES31.GL_UNPACK_ROW_LENGTH, rowLength)
        GLES31.glPixelStorei(GLES31.GL_UNPACK_SKIP_PIXELS, 0)
        GLES31.glPixelStorei(GLES31.GL_UNPACK_SKIP_ROWS, 0)
    }

    private fun checkGl(operation: String) {
        val error = GLES31.glGetError()
        check(error == GLES31.GL_NO_ERROR) { "$operation GL error 0x${error.toString(16)}" }
    }

    fun release() {
        program?.let { GLES31.glDeleteProgram(it.id) }
        raw.release()
        packedRaw.release()
        shading.release()
        output.release()
        resetAfterContextLoss()
    }

    fun resetAfterContextLoss() {
        program = null
        initializationAttempted = false
        maxTextureSize = 0
        raw.reset()
        packedRaw.reset()
        shading.reset()
        output.reset()
        cropKey = null
        lastCrop = null
        lastShadingMap = null
        lastShadingWidth = 0
        lastShadingHeight = 0
        packedShadingMap = null
    }

    companion object {
        private const val TAG = "RawPreviewDemosaic"
        // Locations of R, Gr, Gb, B in the four samples of each Bayer cell.
        private val CFA_OFFSETS = Array(4) { pattern ->
            IntArray(4).also { offsets ->
                for (site in offsets.indices) {
                    val channel = RawCfaCorrection.channelIndexForPixel(pattern, site and 1, site shr 1)
                    offsets[channel] = site
                }
            }
        }

        internal val SHADER = """
            #version 310 es
            layout(local_size_x = 8, local_size_y = 8, local_size_z = 1) in;
            precision highp float;
            precision highp int;

            uniform highp usampler2D uRaw;
            // X is log2(pixels per group), or zero for unpacked RAW. Y is the crop phase.
            uniform ivec2 uRawPacking;
            uniform highp sampler2D uLensShading;
            uniform ivec2 uCellSize;
            uniform ivec2 uPreviewSize;
            uniform vec4 uBlackLevel;
            uniform float uWhiteLevel;
            uniform ivec4 uCfaOffsets;
            uniform bool uShadingEnabled;
            uniform vec2 uShadingActiveSize;
            uniform ivec2 uShadingOrigin;
            uniform int uSensorRowPhase;
            layout(rgba16f, binding = 0) writeonly uniform highp image2D uOutput;

            uint rawValue(ivec2 p) {
                int groupShift = uRawPacking.x;
                uint value;
                if (groupShift == 0) {
                    value = texelFetch(uRaw, p, 0).r;
                } else {
                    int groupPixels = 1 << groupShift;
                    int lowBitCount = 8 >> groupShift;
                    int x = p.x + uRawPacking.y;
                    int groupStart = (x >> groupShift) * (groupPixels + 1);
                    int siteIndex = x & (groupPixels - 1);
                    uint highBits = texelFetch(uRaw, ivec2(groupStart + siteIndex, p.y), 0).r;
                    uint lowBits = texelFetch(uRaw, ivec2(groupStart + groupPixels, p.y), 0).r;
                    uint lowMask = (1u << lowBitCount) - 1u;
                    value = (highBits << lowBitCount) | ((lowBits >> (lowBitCount * siteIndex)) & lowMask);
                }
                return value;
            }

            vec2 site(ivec2 origin, int channel, int offset) {
                ivec2 p = origin + ivec2(offset & 1, offset >> 1);
                float value = float(rawValue(p));
                float black = uBlackLevel[channel];
                float rawSignal = clamp((value - black) / (uWhiteLevel - black), 0.0, 1.0);
                float signal = rawSignal;
                if (uShadingEnabled) {
                    // Camera2 map vertices span the first and last active pixel centers.
                    vec2 sensorUv = vec2(p + uShadingOrigin) / max(uShadingActiveSize - 1.0, 1.0);
                    vec2 mapSize = vec2(textureSize(uLensShading, 0));
                    vec2 uv = (sensorUv * (mapSize - 1.0) + 0.5) / mapSize;
                    int mapChannel = channel == 1 || channel == 2 ? 1 + ((p.y + uSensorRowPhase) & 1) : channel;
                    signal *= textureLod(uLensShading, uv, 0.0)[mapChannel];
                }
                return vec2(signal, rawSignal);
            }

            vec4 bayerCell(ivec2 cell) {
                ivec2 p = 2 * cell;
                vec2 red = site(p, 0, uCfaOffsets.r);
                vec2 greenRed = site(p, 1, uCfaOffsets.g);
                vec2 greenBlue = site(p, 2, uCfaOffsets.b);
                vec2 blue = site(p, 3, uCfaOffsets.a);
                // Carry the coverage usable for exposure projection in alpha. A clipped CFA
                // site makes this cell unreliable even if lens shading or RGB hides the clip.
                float rawPeak = max(max(red.y, greenRed.y), max(greenBlue.y, blue.y));
                return vec4(
                    red.x, 0.5 * (greenRed.x + greenBlue.x), blue.x,
                    1.0 - smoothstep(0.95, 1.0, rawPeak)
                );
            }

            void main() {
                ivec2 p = ivec2(gl_GlobalInvocationID.xy);
                if (any(greaterThanEqual(p, uPreviewSize))) return;
                vec2 ratio = vec2(uCellSize) / vec2(uPreviewSize);
                vec2 lo = vec2(p) * ratio;
                vec2 hi = min(vec2(p + 1) * ratio, vec2(uCellSize));
                ivec2 first = ivec2(floor(lo));
                ivec2 end = ivec2(ceil(hi));
                vec4 integrated = vec4(0.0);
                for (int y = first.y; y < end.y; ++y) {
                    float wy = min(hi.y, float(y + 1)) - max(lo.y, float(y));
                    for (int x = first.x; x < end.x; ++x) {
                        float wx = min(hi.x, float(x + 1)) - max(lo.x, float(x));
                        integrated += bayerCell(ivec2(x, y)) * (wx * wy);
                    }
                }
                vec4 rgbAndCoverage = integrated / ((hi.x - lo.x) * (hi.y - lo.y));
                imageStore(uOutput, ivec2(p.x, uPreviewSize.y - 1 - p.y), rgbAndCoverage);
            }
        """.trimIndent()
    }
}
