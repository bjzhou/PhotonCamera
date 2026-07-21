package com.hinnka.mycamera.processor

/**
 * Registration model used by Radiance RAW fusion.
 *
 * Registration produces a perspective transform together with confidence and an identity
 * fallback. The data shape follows the fixed-resolution registration context used by the
 * pipeline's prefilter and blend stages.
 */
data class RawStackRegistrationResolution(
    val width: Int,
    val height: Int,
) {
    override fun toString(): String = "${width}x$height"
}

enum class RawStackRegistrationStage {
    PREFILTER,
    BLEND,
}

enum class RawStackRegistrationSource {
    FLOW_AFFINE,
    IMAGE_TRANSLATION,
}

data class RawStackRegistrationConfidenceConfig(
    val maxConfidence: Int = 256,
    val enableTransformConfidence: Boolean = true,
    val transformConfidenceMappingBase: Int = 255,
    val transformConfidenceMappingC1: Int = 0,
    val transformConfidenceMappingC2: Int = 0,
    val forceIdentityThreshold: Int = 100,
) {
    fun normalizedConfidence(rawConfidence: Int): Int {
        return rawConfidence.coerceIn(0, maxConfidence.coerceAtLeast(1))
    }

    fun shouldForceIdentity(rawConfidence: Int): Boolean {
        return enableTransformConfidence &&
            normalizedConfidence(rawConfidence) < forceIdentityThreshold.coerceIn(0, maxConfidence.coerceAtLeast(1))
    }

    companion object {
        /**
         * Matches CamX cvp10_ipe.mf_blend.xml confidence wiring:
         * transform confidence is enabled, mapping base is 255, C1/C2 are 0,
         * and confidence below 100 forces identity.
         */
        val CamxMfBlend = RawStackRegistrationConfidenceConfig()
    }
}

data class RawStackPerspectiveTransform(
    val stage: RawStackRegistrationStage,
    val transformDefinedOnWidth: Int,
    val transformDefinedOnHeight: Int,
    val geometryColumns: Int,
    val geometryRows: Int,
    val perspectiveTransformArray: FloatArray,
    val rawConfidence: Int,
    val confidence: Int,
    val forceIdentity: Boolean,
) {
    val matrixCount: Int
        get() = geometryColumns.coerceAtLeast(1) * geometryRows.coerceAtLeast(1)

    fun matrixAt(index: Int): FloatArray {
        require(index in 0 until matrixCount) {
            "matrix index $index outside geometry $geometryColumns x $geometryRows"
        }
        val start = index * MATRIX_FLOAT_COUNT
        return perspectiveTransformArray.copyOfRange(start, start + MATRIX_FLOAT_COUNT)
    }

    companion object {
        const val MATRIX_FLOAT_COUNT = 9

        fun fromSingleMatrix(
            stage: RawStackRegistrationStage,
            transformDefinedOnWidth: Int,
            transformDefinedOnHeight: Int,
            geometryColumns: Int = 3,
            geometryRows: Int = 3,
            rowMajorMatrix: FloatArray,
            rawConfidence: Int,
            confidenceConfig: RawStackRegistrationConfidenceConfig = RawStackRegistrationConfidenceConfig.CamxMfBlend,
        ): RawStackPerspectiveTransform {
            require(rowMajorMatrix.size >= MATRIX_FLOAT_COUNT) {
                "perspective transform requires at least $MATRIX_FLOAT_COUNT values"
            }
            val columns = geometryColumns.coerceAtLeast(1)
            val rows = geometryRows.coerceAtLeast(1)
            val matrixCount = columns * rows
            val matrixArray = FloatArray(matrixCount * MATRIX_FLOAT_COUNT)
            repeat(matrixCount) { matrixIndex ->
                val offset = matrixIndex * MATRIX_FLOAT_COUNT
                for (index in 0 until MATRIX_FLOAT_COUNT) {
                    matrixArray[offset + index] = rowMajorMatrix[index]
                }
            }
            val confidence = confidenceConfig.normalizedConfidence(rawConfidence)
            return RawStackPerspectiveTransform(
                stage = stage,
                transformDefinedOnWidth = transformDefinedOnWidth.coerceAtLeast(1),
                transformDefinedOnHeight = transformDefinedOnHeight.coerceAtLeast(1),
                geometryColumns = columns,
                geometryRows = rows,
                perspectiveTransformArray = matrixArray,
                rawConfidence = rawConfidence,
                confidence = confidence,
                forceIdentity = confidenceConfig.shouldForceIdentity(rawConfidence),
            )
        }

        fun identity(
            stage: RawStackRegistrationStage,
            transformDefinedOnWidth: Int,
            transformDefinedOnHeight: Int,
            geometryColumns: Int = 3,
            geometryRows: Int = 3,
            rawConfidence: Int = RawStackRegistrationConfidenceConfig.CamxMfBlend.maxConfidence,
            confidenceConfig: RawStackRegistrationConfidenceConfig = RawStackRegistrationConfidenceConfig.CamxMfBlend,
        ): RawStackPerspectiveTransform {
            val columns = geometryColumns.coerceAtLeast(1)
            val rows = geometryRows.coerceAtLeast(1)
            val matrixCount = columns * rows
            val matrixArray = FloatArray(matrixCount * MATRIX_FLOAT_COUNT)
            repeat(matrixCount) { matrixIndex ->
                val offset = matrixIndex * MATRIX_FLOAT_COUNT
                matrixArray[offset + 0] = 1f
                matrixArray[offset + 4] = 1f
                matrixArray[offset + 8] = 1f
            }
            val confidence = confidenceConfig.normalizedConfidence(rawConfidence)
            return RawStackPerspectiveTransform(
                stage = stage,
                transformDefinedOnWidth = transformDefinedOnWidth.coerceAtLeast(1),
                transformDefinedOnHeight = transformDefinedOnHeight.coerceAtLeast(1),
                geometryColumns = columns,
                geometryRows = rows,
                perspectiveTransformArray = matrixArray,
                rawConfidence = rawConfidence,
                confidence = confidence,
                forceIdentity = confidenceConfig.shouldForceIdentity(rawConfidence),
            )
        }
    }
}

data class RawStackRegistrationSetup(
    val sourceWidth: Int,
    val sourceHeight: Int,
    val registrationInputWidth: Int,
    val registrationInputHeight: Int,
    val registrationSize: RawStackRegistrationResolution,
    val ds64Enabled: Boolean,
    val confidenceConfig: RawStackRegistrationConfidenceConfig,
    val cvpPerspectiveGeometryColumns: Int = 3,
    val cvpPerspectiveGeometryRows: Int = 3,
) {
    fun identityTransform(stage: RawStackRegistrationStage): RawStackPerspectiveTransform {
        return RawStackPerspectiveTransform.identity(
            stage = stage,
            transformDefinedOnWidth = sourceWidth,
            transformDefinedOnHeight = sourceHeight,
            geometryColumns = cvpPerspectiveGeometryColumns,
            geometryRows = cvpPerspectiveGeometryRows,
            confidenceConfig = confidenceConfig,
        )
    }

    fun toSummary(): RawStackRegistrationSummary {
        return RawStackRegistrationSummary(
            registrationInputWidth = registrationInputWidth,
            registrationInputHeight = registrationInputHeight,
            registrationWidth = registrationSize.width,
            registrationHeight = registrationSize.height,
            ds64Enabled = ds64Enabled,
            perspectiveGeometryColumns = cvpPerspectiveGeometryColumns,
            perspectiveGeometryRows = cvpPerspectiveGeometryRows,
            confidenceMax = confidenceConfig.maxConfidence,
            forceIdentityThreshold = confidenceConfig.forceIdentityThreshold,
        )
    }

    fun requiredPyramidLevels(): Int {
        return if (ds64Enabled) {
            REGISTRATION_CONTEXT_LEVELS.first { it.name == "DS64" }.pyramidLevel + 1
        } else {
            REGISTRATION_CONTEXT_LEVELS.first { it.name == "DS16" }.pyramidLevel + 1
        }
    }

    fun referenceContextSummary(): String {
        val levels = if (ds64Enabled) {
            REGISTRATION_CONTEXT_LEVELS
        } else {
            REGISTRATION_CONTEXT_LEVELS.filterNot { it.name == "DS64" }
        }
        return levels.joinToString("/") { it.name }
    }

    companion object {
        private data class RegistrationContextLevel(
            val name: String,
            val pyramidLevel: Int,
        )

        private val REGISTRATION_CONTEXT_LEVELS = listOf(
            RegistrationContextLevel("FULL", 0),
            RegistrationContextLevel("DS4", 2),
            RegistrationContextLevel("DS16", 4),
            RegistrationContextLevel("DS64", 6),
        )
    }
}

data class RawStackRegistrationSummary(
    val registrationInputWidth: Int,
    val registrationInputHeight: Int,
    val registrationWidth: Int,
    val registrationHeight: Int,
    val ds64Enabled: Boolean,
    val perspectiveGeometryColumns: Int,
    val perspectiveGeometryRows: Int,
    val confidenceMax: Int,
    val forceIdentityThreshold: Int,
) {
    fun compactSummary(): String {
        return "reg=${registrationWidth}x$registrationHeight " +
            "regIn=${registrationInputWidth}x$registrationInputHeight " +
            "ds64=${if (ds64Enabled) "on" else "off"} " +
            "icaGeom=${perspectiveGeometryColumns}x$perspectiveGeometryRows " +
            "confMax=$confidenceMax confIdentityThr=$forceIdentityThreshold"
    }
}

data class RawStackRegistrationQualitySummary(
    val estimateCount: Int,
    val meanConfidence: Float,
    val minConfidence: Int,
    val forceIdentityRatio: Float,
    val meanInlierRatio: Float,
    val residualP90MaxPx: Float,
    val meanGlobalScore: Float = Float.NaN,
    val minGlobalMargin: Float = Float.NaN,
    val meanGlobalCoverage: Float = Float.NaN,
) {
    fun compactSummary(): String {
        val globalSummary = if (meanGlobalScore.isFinite()) {
            "regScore=${meanGlobalScore.format4()} regMarginMin=${minGlobalMargin.format3()} " +
                "regCoverage=${meanGlobalCoverage.percent1()} "
        } else {
            ""
        }
        return "regConf=${meanConfidence.format1()} regConfMin=$minConfidence " +
            "regIdentity=${forceIdentityRatio.percent1()} regInlier=${meanInlierRatio.percent1()} " +
            "regResP90Max=${residualP90MaxPx.format2()} " +
            globalSummary.trimEnd()
    }
}

object RawStackRegistrationResolver {
    private const val MFSR_DOWNSCALE_RATIO_SHIFT = 1
    private const val DS64_DISABLE_WIDTH = 1920
    private const val DS64_DISABLE_HEIGHT = 1664

    private val camxRegistrationInputResolutions = listOf(
        RawStackRegistrationResolution(1920, 1440),
        RawStackRegistrationResolution(1920, 1280),
        RawStackRegistrationResolution(1920, 1080),
        RawStackRegistrationResolution(1280, 960),
        RawStackRegistrationResolution(1280, 720),
        RawStackRegistrationResolution(960, 540),
        RawStackRegistrationResolution(480, 270),
    )

    fun resolve(
        sourceWidth: Int,
        sourceHeight: Int,
        confidenceConfig: RawStackRegistrationConfidenceConfig = RawStackRegistrationConfidenceConfig.CamxMfBlend,
    ): RawStackRegistrationSetup {
        val inputWidth = registrationInputDimension(sourceWidth)
        val inputHeight = registrationInputDimension(sourceHeight)
        return RawStackRegistrationSetup(
            sourceWidth = sourceWidth.coerceAtLeast(1),
            sourceHeight = sourceHeight.coerceAtLeast(1),
            registrationInputWidth = inputWidth,
            registrationInputHeight = inputHeight,
            registrationSize = selectRegistrationSize(inputWidth, inputHeight),
            ds64Enabled = !shouldDisableDs64(sourceWidth, sourceHeight),
            confidenceConfig = confidenceConfig,
        )
    }

    fun registrationInputDimension(sourceDimension: Int): Int {
        return (sourceDimension.coerceAtLeast(1) shr MFSR_DOWNSCALE_RATIO_SHIFT).coerceAtLeast(1)
    }

    fun selectRegistrationSize(
        registrationInputWidth: Int,
        registrationInputHeight: Int,
    ): RawStackRegistrationResolution {
        val inputWidth = registrationInputWidth.coerceAtLeast(1)
        val inputHeight = registrationInputHeight.coerceAtLeast(1)
        return camxRegistrationInputResolutions.firstOrNull { size ->
            inputWidth >= size.width && inputHeight >= size.height
        } ?: camxRegistrationInputResolutions.last()
    }

    fun shouldDisableDs64(sourceWidth: Int, sourceHeight: Int): Boolean {
        return sourceWidth <= DS64_DISABLE_WIDTH || sourceHeight <= DS64_DISABLE_HEIGHT
    }
}

private fun Float.format1(): String {
    return if (isFinite()) {
        String.format(java.util.Locale.US, "%.1f", this)
    } else {
        "n/a"
    }
}

private fun Float.format2(): String {
    return if (isFinite()) {
        String.format(java.util.Locale.US, "%.2f", this)
    } else {
        "n/a"
    }
}

private fun Float.format3(): String {
    return if (isFinite()) {
        String.format(java.util.Locale.US, "%.3f", this)
    } else {
        "n/a"
    }
}

private fun Float.format4(): String {
    return if (isFinite()) {
        String.format(java.util.Locale.US, "%.4f", this)
    } else {
        "n/a"
    }
}

private fun Float.percent1(): String {
    return if (isFinite()) {
        String.format(java.util.Locale.US, "%.1f%%", this * 100f)
    } else {
        "n/a"
    }
}
