package com.hinnka.mycamera.raw

import android.opengl.GLES30
import android.opengl.GLES31
import android.util.Half
import com.hinnka.mycamera.utils.LargeDirectBuffer
import com.hinnka.mycamera.utils.PLog
import java.nio.ByteBuffer
import java.nio.ByteOrder
import kotlin.math.PI
import kotlin.math.abs
import kotlin.math.cos
import kotlin.math.sin

internal typealias DemosaicNoiseTransfer = MgcFullResolutionDenoise.PreparedYuvNoiseModel

internal data class DemosaicNoiseRenderRequest(
    val metadata: RawMetadata,
    val rawTextureId: Int,
    val linearOutputTextureId: Int,
    val outputTextureId: Int,
    val width: Int,
    val height: Int,
)

/** Computes the legacy half-bin luma/chroma spectrum in O(N log N) instead of direct O(N²). */
internal object DemosaicNoiseSpectrum {
    const val SIZE = 128

    fun propagatedCorrelation(
        residuals: Array<FloatArray>,
        channels: IntArray,
        inputCorrelation: FloatArray,
    ): FloatArray? {
        if (inputCorrelation.size != SIZE) return null
        val demosaicPower = halfBinDirectionalPower(residuals, channels)
        val demosaicPowerMean = demosaicPower.average()
        if (!demosaicPowerMean.isFinite() || demosaicPowerMean <= 0.0) return null
        val composed = DoubleArray(SIZE) { index ->
            inputCorrelation[index].toDouble() *
                (demosaicPower[index] / demosaicPowerMean)
        }
        val compositionMean = composed.average()
        if (!compositionMean.isFinite() || compositionMean <= 0.0) return null
        return FloatArray(SIZE) { index ->
            (composed[index] / compositionMean).toFloat()
        }.takeIf { spectrum -> spectrum.all { it.isFinite() && it >= 0f } }
    }

    internal fun halfBinDirectionalPower(
        residuals: Array<FloatArray>,
        channels: IntArray,
    ): DoubleArray {
        require(channels.all { it in residuals.indices })
        require(channels.all { residuals[it].size == SIZE * SIZE })
        val power = DoubleArray(SIZE)
        val real = DoubleArray(SIZE)
        val imaginary = DoubleArray(SIZE)
        for (channel in channels) {
            val residual = residuals[channel]
            for (line in 0 until SIZE) {
                fillShiftedLine(
                    residual = residual,
                    line = line,
                    vertical = false,
                    real = real,
                    imaginary = imaginary,
                )
                forwardFft(real, imaginary)
                accumulateMappedPower(real, imaginary, power)

                fillShiftedLine(
                    residual = residual,
                    line = line,
                    vertical = true,
                    real = real,
                    imaginary = imaginary,
                )
                forwardFft(real, imaginary)
                accumulateMappedPower(real, imaginary, power)
            }
        }
        val normalization = 2.0 * SIZE * SIZE
        for (bin in power.indices) power[bin] /= normalization
        return power
    }

    private fun fillShiftedLine(
        residual: FloatArray,
        line: Int,
        vertical: Boolean,
        real: DoubleArray,
        imaginary: DoubleArray,
    ) {
        for (position in 0 until SIZE) {
            val value = if (vertical) {
                residual[position * SIZE + line]
            } else {
                residual[line * SIZE + position]
            }.toDouble()
            real[position] = value * HALF_BIN_SHIFT_COSINE[position]
            imaginary[position] = value * HALF_BIN_SHIFT_SINE[position]
        }
    }

    private fun accumulateMappedPower(
        real: DoubleArray,
        imaginary: DoubleArray,
        power: DoubleArray,
    ) {
        for (bin in 0 until SIZE) {
            // The legacy frequency is 2π(bin + 0.5)/N - π. Premultiplication supplies the
            // half-bin shift; this rotation maps the centered legacy order to FFT order.
            val fftIndex = (bin + SIZE / 2) and (SIZE - 1)
            power[bin] +=
                real[fftIndex] * real[fftIndex] +
                    imaginary[fftIndex] * imaginary[fftIndex]
        }
    }

    private fun forwardFft(real: DoubleArray, imaginary: DoubleArray) {
        var reversed = 0
        for (index in 1 until SIZE) {
            var bit = SIZE shr 1
            while (reversed and bit != 0) {
                reversed = reversed xor bit
                bit = bit shr 1
            }
            reversed = reversed xor bit
            if (index < reversed) {
                val realSwap = real[index]
                real[index] = real[reversed]
                real[reversed] = realSwap
                val imaginarySwap = imaginary[index]
                imaginary[index] = imaginary[reversed]
                imaginary[reversed] = imaginarySwap
            }
        }

        var length = 2
        while (length <= SIZE) {
            val halfLength = length / 2
            val twiddleStep = SIZE / length
            var block = 0
            while (block < SIZE) {
                for (offset in 0 until halfLength) {
                    val twiddleIndex = offset * twiddleStep
                    val twiddleReal = FFT_COSINE[twiddleIndex]
                    val twiddleImaginary = FFT_SINE[twiddleIndex]
                    val evenIndex = block + offset
                    val oddIndex = evenIndex + halfLength
                    val oddReal =
                        real[oddIndex] * twiddleReal -
                            imaginary[oddIndex] * twiddleImaginary
                    val oddImaginary =
                        real[oddIndex] * twiddleImaginary +
                            imaginary[oddIndex] * twiddleReal
                    val evenReal = real[evenIndex]
                    val evenImaginary = imaginary[evenIndex]
                    real[evenIndex] = evenReal + oddReal
                    imaginary[evenIndex] = evenImaginary + oddImaginary
                    real[oddIndex] = evenReal - oddReal
                    imaginary[oddIndex] = evenImaginary - oddImaginary
                }
                block += length
            }
            length = length shl 1
        }
    }

    private val HALF_BIN_SHIFT_COSINE =
        DoubleArray(SIZE) { position -> cos(-PI * position / SIZE) }
    private val HALF_BIN_SHIFT_SINE =
        DoubleArray(SIZE) { position -> sin(-PI * position / SIZE) }
    private val FFT_COSINE =
        DoubleArray(SIZE / 2) { index -> cos(-2.0 * PI * index / SIZE) }
    private val FFT_SINE =
        DoubleArray(SIZE / 2) { index -> sin(-2.0 * PI * index / SIZE) }
}

/**
 * Measures how the active demosaic pipeline propagates physical Bayer noise into MGC's YUV
 * domain. The calibrator owns the synthetic fields, GL calibration resources, model fitting and
 * cache; [RawDemosaicProcessor] only supplies pipeline initialization and one demosaic dispatch.
 */
internal class DemosaicNoisePropagationCalibrator(
    private val initializePipeline: (cfaPattern: Int) -> Boolean,
    private val renderDemosaic: (DemosaicNoiseRenderRequest) -> Unit,
) {
    private data class NoiseSample(
        val referenceSignal: Float,
        val workingLumaMean: Float,
        val normalizedYuvVariance: FloatArray,
        val lumaCorrelation: FloatArray?,
        val chromaCorrelation: FloatArray?,
    )

    private data class CacheKey(
        val cfaPattern: Int,
        val normalizedRgbReadBits: List<Int>,
        val normalizedRgbShotBits: List<Int>,
        val inputCorrelationBits: List<Int>,
        val calculationWbBits: List<Int>,
    )

    private enum class NoiseComponent {
        TOTAL,
        READ_ONLY,
    }

    private data class NoiseSampleSpec(
        val referenceSignal: Float,
        val component: NoiseComponent,
        val includeCorrelation: Boolean,
    )

    private data class GlRenderTiming(
        val atlasGenerationSubmitMs: Long,
        val demosaicMs: Long,
        val readbackMs: Long,
    )

    private class AnalysisWorkspace {
        val workingRgb = Array(3) { FloatArray(ANALYSIS_PIXELS) }
        val yuvResidual = Array(3) { FloatArray(ANALYSIS_PIXELS) }
    }

    private inner class GlCalibrationSession {
        private val textures = IntArray(3)
        private val framebuffers = IntArray(1)
        private val savedPackAlignment = glInteger(GLES30.GL_PACK_ALIGNMENT)
        private val savedFramebuffer = glInteger(GLES30.GL_FRAMEBUFFER_BINDING)
        private val savedPixelPackBuffer = glInteger(GLES30.GL_PIXEL_PACK_BUFFER_BINDING)
        private val savedActiveTexture = glInteger(GLES30.GL_ACTIVE_TEXTURE)
        private val savedTextureBinding = glInteger(GLES30.GL_TEXTURE_BINDING_2D)
        private var released = false
        val allocationMs: Long

        private val rawTextureId: Int
            get() = textures[0]
        private val outputTextureId: Int
            get() = textures[1]
        private val linearOutputTextureId: Int
            get() = textures[2]
        private val framebufferId: Int
            get() = framebuffers[0]

        init {
            val startNs = System.nanoTime()
            try {
                GLES30.glGenTextures(textures.size, textures, 0)
                check(textures.all { it != 0 }) {
                    "Unable to allocate noise calibration textures"
                }

                configureTexture(
                    textureId = rawTextureId,
                    // GLES 3.1 guarantees RGBA16UI image store. Demosaic samplers consume .r,
                    // so calibration does not need a format-conversion pass back to R16UI.
                    internalFormat = GLES30.GL_RGBA16UI,
                )
                configureTexture(
                    textureId = outputTextureId,
                    internalFormat = GLES30.GL_RGBA16F,
                )
                configureTexture(
                    textureId = linearOutputTextureId,
                    internalFormat = GLES30.GL_RGBA16F,
                )

                GLES30.glGenFramebuffers(1, framebuffers, 0)
                check(framebufferId != 0) {
                    "Unable to allocate noise calibration framebuffer"
                }
                GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, framebufferId)
                GLES30.glFramebufferTexture2D(
                    GLES30.GL_FRAMEBUFFER,
                    GLES30.GL_COLOR_ATTACHMENT0,
                    GLES30.GL_TEXTURE_2D,
                    outputTextureId,
                    0,
                )
                check(
                    GLES30.glCheckFramebufferStatus(GLES30.GL_FRAMEBUFFER) ==
                        GLES30.GL_FRAMEBUFFER_COMPLETE,
                ) {
                    "Noise calibration framebuffer is incomplete"
                }
                GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
                GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
                checkGlError("resource allocation")
                allocationMs = elapsedMs(startNs)
            } catch (error: Throwable) {
                release()
                throw error
            }
        }

        fun render(
            metadata: RawMetadata,
            calculationWb: FloatArray,
            inputRead: FloatArray,
            inputShot: FloatArray,
            rgbaOutput: ByteBuffer,
        ): GlRenderTiming {
            val atlasGenerationStartNs = System.nanoTime()
            check(
                atlasGenerator.generate(
                    targetTextureId = rawTextureId,
                    cfaPattern = metadata.cfaPattern,
                    calculationWb = calculationWb,
                    inputRead = inputRead,
                    inputShot = inputShot,
                    referenceSignals = REFERENCE_SIGNALS,
                    readOnlySlot = READ_ONLY_SLOT,
                    sampleSize = CALIBRATION_SIZE,
                ),
            ) {
                "Unable to generate synthetic demosaic noise atlas"
            }
            val atlasGenerationSubmitMs = elapsedMs(atlasGenerationStartNs)

            val demosaicStartNs = System.nanoTime()
            renderDemosaic(
                DemosaicNoiseRenderRequest(
                    metadata = metadata,
                    rawTextureId = rawTextureId,
                    linearOutputTextureId = linearOutputTextureId,
                    outputTextureId = outputTextureId,
                    width = ATLAS_WIDTH,
                    height = ATLAS_HEIGHT,
                ),
            )
            val demosaicMs = elapsedMs(demosaicStartNs)

            val readbackStartNs = System.nanoTime()
            GLES31.glMemoryBarrier(
                GLES31.GL_SHADER_IMAGE_ACCESS_BARRIER_BIT or
                    GLES31.GL_FRAMEBUFFER_BARRIER_BIT,
            )
            GLES30.glBindBuffer(GLES30.GL_PIXEL_PACK_BUFFER, 0)
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, framebufferId)
            GLES30.glPixelStorei(GLES30.GL_PACK_ALIGNMENT, 8)
            rgbaOutput.clear()
            GLES30.glReadPixels(
                0,
                0,
                ATLAS_WIDTH,
                ATLAS_HEIGHT,
                GLES30.GL_RGBA,
                GLES30.GL_HALF_FLOAT,
                rgbaOutput,
            )
            checkGlError("readback")
            return GlRenderTiming(
                atlasGenerationSubmitMs = atlasGenerationSubmitMs,
                demosaicMs = demosaicMs,
                readbackMs = elapsedMs(readbackStartNs),
            )
        }

        fun release() {
            if (released) return
            released = true
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
            GLES30.glDeleteFramebuffers(framebuffers.size, framebuffers, 0)
            GLES30.glDeleteTextures(textures.size, textures, 0)
            GLES30.glPixelStorei(GLES30.GL_PACK_ALIGNMENT, savedPackAlignment)
            GLES30.glBindBuffer(GLES30.GL_PIXEL_PACK_BUFFER, savedPixelPackBuffer)
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, savedFramebuffer)
            GLES30.glActiveTexture(savedActiveTexture)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, savedTextureBinding)
        }

        private fun configureTexture(textureId: Int, internalFormat: Int) {
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, textureId)
            GLES30.glTexStorage2D(
                GLES30.GL_TEXTURE_2D,
                1,
                internalFormat,
                ATLAS_WIDTH,
                ATLAS_HEIGHT,
            )
            GLES30.glTexParameteri(
                GLES30.GL_TEXTURE_2D,
                GLES30.GL_TEXTURE_MIN_FILTER,
                GLES30.GL_NEAREST,
            )
            GLES30.glTexParameteri(
                GLES30.GL_TEXTURE_2D,
                GLES30.GL_TEXTURE_MAG_FILTER,
                GLES30.GL_NEAREST,
            )
            GLES30.glTexParameteri(
                GLES30.GL_TEXTURE_2D,
                GLES30.GL_TEXTURE_WRAP_S,
                GLES30.GL_CLAMP_TO_EDGE,
            )
            GLES30.glTexParameteri(
                GLES30.GL_TEXTURE_2D,
                GLES30.GL_TEXTURE_WRAP_T,
                GLES30.GL_CLAMP_TO_EDGE,
            )
        }

        private fun glInteger(parameter: Int): Int {
            val value = IntArray(1)
            GLES30.glGetIntegerv(parameter, value, 0)
            return value[0]
        }
    }

    private val atlasGenerator = DemosaicNoiseAtlasGenerator()
    private var cachedKey: CacheKey? = null
    private var cachedTransfer: DemosaicNoiseTransfer? = null

    fun release() {
        atlasGenerator.release()
        cachedKey = null
        cachedTransfer = null
    }

    fun prepareUserAdjustment(
        metadata: RawMetadata,
        calculationWb4: FloatArray,
    ): DemosaicNoiseTransfer? {
        val rgbNoise = MgcFullResolutionDenoise.resolveUserAdjustmentCameraRgbNoise(metadata)
            ?: return null
        val propagationMetadata = metadata.copy(
            frameCount = 1,
            mgcDenoiseReadNoise = rgbNoise.read,
            mgcDenoiseShotNoise = rgbNoise.shot,
            mgcDenoiseCorrelation = FloatArray(SPECTRUM_BINS) { 1f },
            mgcSpatialStrengthMap = null,
        )
        return measure(propagationMetadata, calculationWb4)?.also { transfer ->
            PLog.i(
                TAG,
                "MGC USER_ADJUSTMENT noise propagation ready " +
                    "pipeline=${pipelineLabel(metadata.cfaPattern)} " +
                    "lumaCorrelation=${transfer.lumaCorrelation.minOrNull()}.." +
                    "${transfer.lumaCorrelation.maxOrNull()}/${transfer.lumaCorrelation.average()} " +
                    "chromaCorrelation=${transfer.chromaCorrelation.minOrNull()}.." +
                    "${transfer.chromaCorrelation.maxOrNull()}/" +
                    transfer.chromaCorrelation.average(),
            )
        }
    }

    fun measure(
        metadata: RawMetadata,
        calculationWb4: FloatArray,
    ): DemosaicNoiseTransfer? {
        val inputRead = metadata.mgcDenoiseReadNoise
        val inputShot = metadata.mgcDenoiseShotNoise
        val inputCorrelation = metadata.mgcDenoiseCorrelation
        if (inputRead?.size != 3 || inputShot?.size != 3 ||
            inputCorrelation?.size != SPECTRUM_BINS ||
            inputRead.any { !it.isFinite() || it < 0f } ||
            inputShot.any { !it.isFinite() || it < 0f } ||
            inputCorrelation.any { !it.isFinite() || it < 0f }
        ) {
            return null
        }
        val calculationWb = floatArrayOf(
            calculationWb4.getOrElse(0) { 1f },
            1f,
            calculationWb4.getOrElse(3) { 1f },
        )
        val cacheKey = CacheKey(
            cfaPattern = metadata.cfaPattern,
            normalizedRgbReadBits = inputRead.map(Float::toBits),
            normalizedRgbShotBits = inputShot.map(Float::toBits),
            inputCorrelationBits = inputCorrelation.map(Float::toBits),
            calculationWbBits = calculationWb.map(Float::toBits),
        )
        if (cacheKey == cachedKey) {
            PLog.i(TAG, "Demosaic noise propagation cache hit pipeline=${pipelineLabel(metadata.cfaPattern)}")
            return cachedTransfer
        }

        val totalStartNs = System.nanoTime()
        return try {
            val pipelineInitStartNs = System.nanoTime()
            check(initializePipeline(metadata.cfaPattern)) {
                "Unable to initialize ${pipelineLabel(metadata.cfaPattern)} noise propagation programs"
            }
            check(atlasGenerator.initialize()) {
                "Unable to initialize synthetic demosaic noise atlas generator"
            }
            val pipelineInitMs = elapsedMs(pipelineInitStartNs)
            val calibrationMetadata = metadata.copy(
                width = ATLAS_WIDTH,
                height = ATLAS_HEIGHT,
                // The supplied coefficients already describe the merged output frame.
                frameCount = 1,
                blackLevel = FloatArray(4),
                whiteLevel = 65535f,
                lensShadingMap = null,
                lensShadingMapWidth = 0,
                lensShadingMapHeight = 0,
                lensShadingMapGrid = null,
                channelNoiseProfile = floatArrayOf(
                    inputShot[0], inputRead[0],
                    inputShot[1], inputRead[1],
                    inputShot[2], inputRead[2],
                ),
                noiseProfileLayout = RawNoiseProfileLayout.DNG_RGB,
            )
            measureUncached(
                metadata = calibrationMetadata,
                calculationWb = calculationWb,
                inputRead = inputRead,
                inputShot = inputShot,
                inputCorrelation = inputCorrelation,
                pipelineInitMs = pipelineInitMs,
                totalStartNs = totalStartNs,
            )?.also { transfer ->
                cachedKey = cacheKey
                cachedTransfer = transfer
            }
        } catch (error: Exception) {
            PLog.e(
                TAG,
                "${pipelineLabel(metadata.cfaPattern)} noise propagation failed",
                error,
            )
            null
        }
    }

    private fun measureUncached(
        metadata: RawMetadata,
        calculationWb: FloatArray,
        inputRead: FloatArray,
        inputShot: FloatArray,
        inputCorrelation: FloatArray,
        pipelineInitMs: Long,
        totalStartNs: Long,
    ): DemosaicNoiseTransfer? {
        val cpuSetupStartNs = System.nanoTime()
        val calibrationPixels = ATLAS_WIDTH * ATLAS_HEIGHT
        val rgba = LargeDirectBuffer.allocate(
            calibrationPixels.toLong() * 4 * Short.SIZE_BYTES,
            "Demosaic noise propagation RGBA16F atlas",
        )?.order(ByteOrder.nativeOrder()) ?: return null
        val workspace = AnalysisWorkspace()
        val cpuSetupMs = elapsedMs(cpuSetupStartNs)
        val session = try {
            GlCalibrationSession()
        } catch (error: Throwable) {
            LargeDirectBuffer.free(rgba)
            throw error
        }

        val samples = ArrayList<NoiseSample>(SAMPLE_SPECS.size - 1)
        var readSample: NoiseSample? = null
        var renderTiming = GlRenderTiming(
            atlasGenerationSubmitMs = 0L,
            demosaicMs = 0L,
            readbackMs = 0L,
        )
        var totalAnalysisMs = 0L
        var totalCorrelationMs = 0L
        val resourceReleaseStartNs: Long
        try {
            renderTiming = session.render(
                metadata = metadata,
                calculationWb = calculationWb,
                inputRead = inputRead,
                inputShot = inputShot,
                rgbaOutput = rgba,
            )

            SAMPLE_SPECS.forEachIndexed { slotIndex, spec ->
                val analysisStartNs = System.nanoTime()
                val analysis = analyzeOutput(
                    rgba = rgba,
                    atlasSlot = slotIndex,
                    calculationWb = calculationWb,
                    spec = spec,
                    inputRead = inputRead,
                    inputShot = inputShot,
                    workspace = workspace,
                    preserveResidual = spec.includeCorrelation,
                ) ?: return null
                val analysisMs = elapsedMs(analysisStartNs)

                val correlationStartNs = System.nanoTime()
                val lumaCorrelation = if (spec.includeCorrelation) {
                    DemosaicNoiseSpectrum.propagatedCorrelation(
                        residuals = workspace.yuvResidual,
                        channels = intArrayOf(0),
                        inputCorrelation = inputCorrelation,
                    ) ?: return null
                } else {
                    null
                }
                val chromaCorrelation = if (spec.includeCorrelation) {
                    DemosaicNoiseSpectrum.propagatedCorrelation(
                        residuals = workspace.yuvResidual,
                        channels = intArrayOf(1, 2),
                        inputCorrelation = inputCorrelation,
                    ) ?: return null
                } else {
                    null
                }
                val correlationMs = elapsedMs(correlationStartNs)
                totalAnalysisMs += analysisMs
                totalCorrelationMs += correlationMs

                val sample = NoiseSample(
                    referenceSignal = spec.referenceSignal,
                    workingLumaMean = analysis.workingLumaMean,
                    normalizedYuvVariance = analysis.normalizedYuvVariance,
                    lumaCorrelation = lumaCorrelation,
                    chromaCorrelation = chromaCorrelation,
                )
                if (spec.component == NoiseComponent.READ_ONLY) {
                    readSample = sample
                } else {
                    samples += sample
                }
                PLog.i(
                    TAG,
                    "Demosaic noise propagation sample " +
                        "pipeline=${pipelineLabel(metadata.cfaPattern)} atlasSlot=$slotIndex " +
                        "component=${spec.component} reference=${spec.referenceSignal} " +
                        "correlation=${spec.includeCorrelation} " +
                        "workingLumaMean=${analysis.workingLumaMean} " +
                        "normalizedYuvVariance=${analysis.normalizedYuvVariance.contentToString()} " +
                        "outputToTheoreticalInputVarianceRatio=" +
                        "${analysis.outputToTheoreticalInputVarianceRatio.contentToString()} " +
                        "analysisMs=$analysisMs correlationMs=$correlationMs",
                )
            }
        } finally {
            resourceReleaseStartNs = System.nanoTime()
            session.release()
            LargeDirectBuffer.free(rgba)
        }
        val resourceReleaseMs = elapsedMs(resourceReleaseStartNs)
        val referenceSample = samples.first { it.referenceSignal == REFERENCE_SIGNAL }
        val lumaCorrelation = checkNotNull(referenceSample.lumaCorrelation)
        val chromaCorrelation = checkNotNull(referenceSample.chromaCorrelation)
        val fitStartNs = System.nanoTime()
        val transfer = fitTransfer(
            samples = samples,
            readSample = checkNotNull(readSample),
            lumaCorrelation = lumaCorrelation,
            chromaCorrelation = chromaCorrelation,
        ) ?: return null
        val fitMs = elapsedMs(fitStartNs)
        PLog.i(
            TAG,
            "Demosaic noise calibration timing " +
                "pipeline=${pipelineLabel(metadata.cfaPattern)} " +
                "totalMs=${elapsedMs(totalStartNs)} programInitMs=$pipelineInitMs " +
                "cpuSetupMs=$cpuSetupMs resourceAllocMs=${session.allocationMs} " +
                "atlas=${ATLAS_WIDTH}x$ATLAS_HEIGHT " +
                "atlasGenerationSubmitMs=${renderTiming.atlasGenerationSubmitMs} " +
                "demosaicMs=${renderTiming.demosaicMs} " +
                "readbackMs=${renderTiming.readbackMs} analysisMs=$totalAnalysisMs " +
                "correlationMs=$totalCorrelationMs fitMs=$fitMs " +
                "resourceReleaseMs=$resourceReleaseMs",
        )
        return transfer
    }

    private data class OutputAnalysis(
        val workingLumaMean: Float,
        val normalizedYuvVariance: FloatArray,
        val outputToTheoreticalInputVarianceRatio: FloatArray,
    )

    private fun analyzeOutput(
        rgba: ByteBuffer,
        atlasSlot: Int,
        calculationWb: FloatArray,
        spec: NoiseSampleSpec,
        inputRead: FloatArray,
        inputShot: FloatArray,
        workspace: AnalysisWorkspace,
        preserveResidual: Boolean,
    ): OutputAnalysis? {
        val mean = DoubleArray(3)
        var sampleIndex = 0
        for (y in 0 until ANALYSIS_SIZE) {
            val sourceY = ANALYSIS_ORIGIN + y
            for (x in 0 until ANALYSIS_SIZE) {
                val sourceX = atlasSlot * CALIBRATION_SIZE + ANALYSIS_ORIGIN + x
                val pixelOffset =
                    (sourceY * ATLAS_WIDTH + sourceX) * 4 * Short.SIZE_BYTES
                for (channel in 0 until 3) {
                    val value = Half.toFloat(
                        rgba.getShort(pixelOffset + channel * Short.SIZE_BYTES),
                    ) * calculationWb[channel]
                    workspace.workingRgb[channel][sampleIndex] = value
                    mean[channel] += value
                }
                sampleIndex++
            }
        }
        for (channel in 0 until 3) mean[channel] /= ANALYSIS_PIXELS.toDouble()
        var workingLumaMean = 0.0
        for (channel in 0 until 3) {
            workingLumaMean += RGB_TO_YUV[channel] * mean[channel]
        }

        val outputVariance = DoubleArray(3)
        val yuvVariance = DoubleArray(3)
        for (index in 0 until ANALYSIS_PIXELS) {
            val red = workspace.workingRgb[0][index] - mean[0].toFloat()
            val green = workspace.workingRgb[1][index] - mean[1].toFloat()
            val blue = workspace.workingRgb[2][index] - mean[2].toFloat()
            outputVariance[0] += red * red
            outputVariance[1] += green * green
            outputVariance[2] += blue * blue
            for (outputChannel in 0 until 3) {
                val offset = outputChannel * 3
                val residual =
                    RGB_TO_YUV[offset] * red +
                        RGB_TO_YUV[offset + 1] * green +
                        RGB_TO_YUV[offset + 2] * blue
                yuvVariance[outputChannel] += residual * residual
                if (preserveResidual) workspace.yuvResidual[outputChannel][index] = residual
            }
        }
        val outputToTheoreticalInputVarianceRatio = FloatArray(3)
        for (channel in 0 until 3) {
            outputVariance[channel] /= ANALYSIS_PIXELS.toDouble()
            val wb = calculationWb[channel].coerceAtLeast(1e-6f).toDouble()
            val rawSignal = spec.referenceSignal.toDouble() / wb
            val rawVariance = when (spec.component) {
                NoiseComponent.TOTAL ->
                    inputRead[channel].toDouble() + inputShot[channel] * rawSignal
                NoiseComponent.READ_ONLY -> inputRead[channel].toDouble()
            }
            val theoreticalWorkingVariance = rawVariance * wb * wb
            if (!theoreticalWorkingVariance.isFinite() || theoreticalWorkingVariance <= 0.0 ||
                !outputVariance[channel].isFinite() || outputVariance[channel] <= 0.0
            ) {
                return null
            }
            outputToTheoreticalInputVarianceRatio[channel] =
                (outputVariance[channel] / theoreticalWorkingVariance).toFloat()
        }
        val normalizedYuvVariance = FloatArray(3) { channel ->
            (yuvVariance[channel] / ANALYSIS_PIXELS.toDouble()).toFloat()
        }
        if (!workingLumaMean.isFinite() || workingLumaMean <= 0.0 ||
            normalizedYuvVariance.any { !it.isFinite() || it <= 0f }
        ) {
            return null
        }
        return OutputAnalysis(
            workingLumaMean = workingLumaMean.toFloat(),
            normalizedYuvVariance = normalizedYuvVariance,
            outputToTheoreticalInputVarianceRatio = outputToTheoreticalInputVarianceRatio,
        )
    }

    private fun fitTransfer(
        samples: List<NoiseSample>,
        readSample: NoiseSample,
        lumaCorrelation: FloatArray,
        chromaCorrelation: FloatArray,
    ): DemosaicNoiseTransfer? {
        val fittedRead = readSample.normalizedYuvVariance.copyOf()
        val fittedShot = FloatArray(3)
        val fittedQuadratic = FloatArray(3)
        val fitTerms = Array(3) { "none" }
        val relativeFitError = FloatArray(3)
        val signals = samples.map { it.workingLumaMean.toDouble() }.toDoubleArray()
        for (channel in 0 until 3) {
            val variances = samples
                .map { it.normalizedYuvVariance[channel].toDouble() }
                .toDoubleArray()
            val fit = fitNonNegativeNoisePolynomial(
                signals,
                variances,
                fixedRead = fittedRead[channel].toDouble(),
            ) ?: return null
            fittedShot[channel] = fit.shot.toFloat()
            fittedQuadratic[channel] = fit.quadratic.toFloat()
            fitTerms[channel] = buildList {
                if (fit.read > 0.0) add("read")
                if (fit.shot > 0.0) add("shot")
                if (fit.quadratic > 0.0) add("quadratic")
            }.joinToString("+").ifEmpty { "zero" }
            relativeFitError[channel] = samples.maxOf { sample ->
                val measured = sample.normalizedYuvVariance[channel].toDouble()
                val signal = sample.workingLumaMean.toDouble()
                val predicted = fit.read + fit.shot * signal + fit.quadratic * signal * signal
                (abs(predicted - measured) / measured.coerceAtLeast(1e-12)).toFloat()
            }
        }

        val chromaEnvelopeSignals = DoubleArray(samples.size * 2) { signals[it / 2] }
        val chromaRequiredSignalVariance = DoubleArray(samples.size * 2) { index ->
            val sampleIndex = index / 2
            val channel = 1 + index % 2
            (samples[sampleIndex].normalizedYuvVariance[channel] - fittedRead[channel])
                .toDouble()
                .coerceAtLeast(0.0)
        }
        val sharedChromaFit = fitNonUnderestimatingSignalNoisePolynomial(
            chromaEnvelopeSignals,
            chromaRequiredSignalVariance,
        ) ?: return null

        val normalizedRead = FloatArray(3) { fittedRead[it] * 4f }
        val normalizedLumaShot = fittedShot[0] * 2f
        val normalizedLumaQuadratic = fittedQuadratic[0]
        val normalizedChromaShot = (sharedChromaFit.shot * 2.0).toFloat()
        val normalizedChromaQuadratic = sharedChromaFit.quadratic.toFloat()
        if (normalizedRead.any { !it.isFinite() || it < 0f } ||
            !normalizedLumaShot.isFinite() || normalizedLumaShot < 0f ||
            !normalizedLumaQuadratic.isFinite() || normalizedLumaQuadratic < 0f ||
            !normalizedChromaShot.isFinite() || normalizedChromaShot < 0f ||
            !normalizedChromaQuadratic.isFinite() || normalizedChromaQuadratic < 0f
        ) {
            return null
        }
        PLog.i(
            TAG,
            "Demosaic YUV noise model complete " +
                "signals=${samples.map(NoiseSample::workingLumaMean)} " +
                "variance=${samples.map { it.normalizedYuvVariance.contentToString() }} " +
                "readOnlySignal=${readSample.workingLumaMean} " +
                "readOnlyVariance=${readSample.normalizedYuvVariance.contentToString()} " +
                "fitTerms=${fitTerms.contentToString()} " +
                "fitRead=${fittedRead.contentToString()} " +
                "fitShot=${fittedShot.contentToString()} " +
                "fitQuadratic=${fittedQuadratic.contentToString()} " +
                "fitMaxRelativeError=${relativeFitError.contentToString()} " +
                "sharedChromaShot=${sharedChromaFit.shot} " +
                "sharedChromaQuadratic=${sharedChromaFit.quadratic} " +
                "scale2Read=${normalizedRead.contentToString()} " +
                "scale2LumaShot=$normalizedLumaShot " +
                "scale2LumaQuadratic=$normalizedLumaQuadratic " +
                "scale2ChromaShot=$normalizedChromaShot " +
                "scale2ChromaQuadratic=$normalizedChromaQuadratic",
        )
        return DemosaicNoiseTransfer(
            normalizedRead = normalizedRead,
            normalizedLumaShot = normalizedLumaShot,
            normalizedLumaQuadratic = normalizedLumaQuadratic,
            normalizedChromaShot = normalizedChromaShot,
            normalizedChromaQuadratic = normalizedChromaQuadratic,
            lumaCorrelation = lumaCorrelation,
            chromaCorrelation = chromaCorrelation,
        )
    }

    private fun checkGlError(operation: String) {
        val error = GLES30.glGetError()
        check(error == GLES30.GL_NO_ERROR) {
            "Demosaic noise calibration $operation failed with GL error 0x${error.toString(16)}"
        }
    }

    private fun pipelineLabel(cfaPattern: Int): String =
        if (RawMetadata.isQuadBayer(cfaPattern)) "QUAD_BAYER" else "STANDARD_BAYER_VGN"

    private fun elapsedMs(startNs: Long): Long =
        (System.nanoTime() - startNs) / 1_000_000L

    private companion object {
        private const val TAG = "DemosaicNoiseCalibrator"
        private const val CALIBRATION_SIZE = 256
        private const val ATLAS_HEIGHT = CALIBRATION_SIZE
        private const val ANALYSIS_SIZE = 128
        private const val ANALYSIS_ORIGIN = (CALIBRATION_SIZE - ANALYSIS_SIZE) / 2
        private const val ANALYSIS_PIXELS = ANALYSIS_SIZE * ANALYSIS_SIZE
        private const val SPECTRUM_BINS = 128
        private const val REFERENCE_SIGNAL = 0.18f
        private val SAMPLE_SPECS = arrayOf(
            NoiseSampleSpec(0.04f, NoiseComponent.TOTAL, includeCorrelation = false),
            NoiseSampleSpec(REFERENCE_SIGNAL, NoiseComponent.TOTAL, includeCorrelation = true),
            NoiseSampleSpec(0.50f, NoiseComponent.TOTAL, includeCorrelation = false),
            NoiseSampleSpec(REFERENCE_SIGNAL, NoiseComponent.READ_ONLY, includeCorrelation = false),
        )
        private val REFERENCE_SIGNALS =
            FloatArray(SAMPLE_SPECS.size) { SAMPLE_SPECS[it].referenceSignal }
        private val READ_ONLY_SLOT =
            SAMPLE_SPECS.indexOfFirst { it.component == NoiseComponent.READ_ONLY }
        private val ATLAS_WIDTH = CALIBRATION_SIZE * SAMPLE_SPECS.size

        // Must remain bit-exact with mgc_full_resolution_denoise_jni.cpp.
        private val RGB_TO_YUV = floatArrayOf(
            0.2125999927520752f,
            0.7152000069618225f,
            0.07219959795475006f,
            -0.16245023906230927f,
            -0.5464943051338196f,
            0.7089447379112244f,
            0.9999967217445374f,
            -0.9083024859428406f,
            -0.09169333428144455f,
        )
    }
}
