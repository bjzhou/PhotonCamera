package com.hinnka.mycamera.processor

import androidx.test.ext.junit.runners.AndroidJUnit4
import java.nio.ByteBuffer
import java.nio.ByteOrder
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertTrue
import org.junit.Test
import org.junit.runner.RunWith

@RunWith(AndroidJUnit4::class)
class GlesRawStackerShaderTest {
    @Test
    fun hdrRgbPipelineShadersCompileAndLinkOnDevice() {
        val stacker = GlesRawStacker(
            width = 64,
            height = 64,
            cfaPattern = 0,
            blackLevel = floatArrayOf(64f, 64f, 64f, 64f),
            whiteLevel = 4095,
            noiseModel = floatArrayOf(0.001f, 0.00001f),
            lensShading = null,
            lensShadingWidth = 0,
            lensShadingHeight = 0,
            tuning = RawStackTuningProfile(mode = RawStackMode.HDR_MFNR),
            debugConfig = RawStackDebugConfig.Disabled,
        )
        try {
            invokePrivate(stacker, "initEgl")
            invokePrivate(stacker, "ensureGles31")
            invokePrivate(stacker, "initPrograms")
            invokePrivate(stacker, "initHdrPrograms")
            invokePrivate(stacker, "initResources")
            invokePrivate(stacker, "applyRawRenderState")
        } finally {
            invokePrivate(stacker, "release")
        }
    }

    @Test
    fun productionShadersCompileAndLinkOnDevice() {
        validateMode(RawStackMode.MFNR)
        validateMode(RawStackMode.MFSR)
        validateRadianceMode()
        validateHdrMode()
    }

    private fun validateRadianceMode() {
        val stacker = GlesRawStacker(
            width = 64,
            height = 64,
            cfaPattern = 0,
            blackLevel = floatArrayOf(64f, 64f, 64f, 64f),
            whiteLevel = 4095,
            noiseModel = floatArrayOf(0.001f, 0.00001f),
            lensShading = null,
            lensShadingWidth = 0,
            lensShadingHeight = 0,
            tuning = RawStackTuningProfile(
                mode = RawStackMode.MFSR,
                superResolution = RawStackSuperResolutionTuning(outputScale = 1.5f),
            ),
            debugConfig = RawStackDebugConfig(
                visualizeRadianceFusionRejections = true,
                visualizeRadianceSrDetail = true,
            ),
            fusionPipeline = RawFusionPipeline.RADIANCE_RGB,
        )
        try {
            invokePrivate(stacker, "initEgl")
            invokePrivate(stacker, "ensureGles31")
            invokePrivate(stacker, "initPrograms")
            invokePrivate(stacker, "initResources")
            invokePrivate(stacker, "applyRawRenderState")
            assertTrue(
                "Radiance must initialize its VGN reference adapter",
                readPrivateInt(stacker, "radianceVgnFinalProgram") != 0,
            )
            assertTrue(
                "Radiance must initialize its non-reference semantic resolver",
                readPrivateInt(stacker, "radianceSemanticResolveProgram") != 0,
            )
            // Exercise the Radiance RGBA16F tile-confidence target, not just shader linking.
            // RG are independent NR/detail confidence; BA carry NR rejection reason/severity.
            invokePrivate(stacker, "computeTileMask")
            val sourceRegion = RadianceTileRect(0, 0, 64, 64)
            val outputRegion = RadianceTileRect(0, 0, 96, 96)
            val tile = RadianceTile(
                index = 0,
                rawCore = sourceRegion,
                outputCore = outputRegion,
                outputWorking = outputRegion,
            )
            invokePrivate(stacker, "ensureRadianceTileResources", 64, 64)
            invokePrivate(
                stacker,
                "runRadianceReferenceVgn",
                sourceRegion,
                "instrumentation Radiance reference",
            )
            invokePrivate(stacker, "clearSuperResolutionAccumulator")
            invokePrivate(
                stacker,
                "accumulateRadianceFusionFrame",
                true,
                sourceRegion,
                outputRegion,
                readPrivateInt(stacker, "flowTexture"),
                readPrivateInt(stacker, "robustnessTexture"),
                readPrivateInt(stacker, "tileMaskTexture"),
                1f,
                1f,
                0,
                0,
                outputRegion,
                false,
            )
            invokePrivate(stacker, "captureRadianceReferenceBase", 96, 96)
            invokePrivate(
                stacker,
                "runRadianceSemanticProxy",
                sourceRegion,
                "instrumentation Radiance non-reference",
            )
            invokePrivate(
                stacker,
                "accumulateRadianceFusionFrame",
                false,
                sourceRegion,
                outputRegion,
                readPrivateInt(stacker, "flowTexture"),
                readPrivateInt(stacker, "robustnessTexture"),
                readPrivateInt(stacker, "tileMaskTexture"),
                1f,
                1f,
                0,
                1,
                outputRegion,
                true,
            )
            invokePrivate(stacker, "normalizeRadianceTile", tile, 1, 1)
            val chromaPostprocessor = readPrivateAny(stacker, "radianceVgnChromaPostprocessor")
            assertNotNull("Radiance must initialize its VGN chroma postprocessor", chromaPostprocessor)
            val postprocessor = checkNotNull(chromaPostprocessor)
            invokePrivate(
                postprocessor,
                "capture",
                readPrivateInt(stacker, "outputTexture"),
                tile,
            )
            val chromaOutput = ByteBuffer.allocateDirect(96 * 96 * 3 * 2)
                .order(ByteOrder.nativeOrder())
            assertNotNull(
                invokePrivate(postprocessor, "processAndReadback", chromaOutput),
            )
            assertEquals(0, chromaOutput.position())
        } finally {
            invokePrivate(stacker, "release")
        }
    }

    private fun validateHdrMode() {
        val stacker = GlesRawStacker(
            width = 64,
            height = 64,
            cfaPattern = 0,
            blackLevel = floatArrayOf(64f, 64f, 64f, 64f),
            whiteLevel = 4095,
            noiseModel = floatArrayOf(0.001f, 0.00001f),
            lensShading = null,
            lensShadingWidth = 0,
            lensShadingHeight = 0,
            tuning = RawStackTuningProfile(mode = RawStackMode.HDR_MFNR),
            debugConfig = RawStackDebugConfig.Disabled,
        )
        try {
            invokePrivate(stacker, "initEgl")
            invokePrivate(stacker, "ensureGles31")
            invokePrivate(stacker, "initPrograms")
            invokePrivate(stacker, "initHdrPrograms")
            invokePrivate(stacker, "initResources")
            invokePrivate(stacker, "applyRawRenderState")
            assertUnifiedRcdPpgInitialized(stacker, "HDR")

            val refRaw = readPrivateInt(stacker, "refRaw")
            invokePrivate(stacker, "clearAccumulator")
            invokePrivate(stacker, "accumulateFrame", refRaw, true, 1f, true)
            invokePrivate(stacker, "computeHdrRecoveryMask", 1f, true)
            invokePrivate(
                stacker,
                "normalizeOutput",
                true,
                1f,
                1f,
                readPrivateInt(stacker, "outputTexture"),
                64,
                64,
                "instrumentation HDR normalize",
            )
        } finally {
            invokePrivate(stacker, "release")
        }
    }

    private fun validateMode(mode: RawStackMode) {
        val stacker = GlesRawStacker(
            width = 64,
            height = 64,
            cfaPattern = 0,
            blackLevel = floatArrayOf(64f, 64f, 64f, 64f),
            whiteLevel = 4095,
            noiseModel = floatArrayOf(0.001f, 0.00001f),
            lensShading = null,
            lensShadingWidth = 0,
            lensShadingHeight = 0,
            tuning = RawStackTuningProfile(mode = mode),
            debugConfig = RawStackDebugConfig.Disabled,
        )
        try {
            invokePrivate(stacker, "initEgl")
            invokePrivate(stacker, "ensureGles31")
            invokePrivate(stacker, "initPrograms")
            invokePrivate(stacker, "initResources")
            invokePrivate(stacker, "applyRawRenderState")

            val refRaw = readPrivateInt(stacker, "refRaw")
            val refProxy = readPrivateInt(stacker, "refProxy")
            invokePrivate(stacker, "clearAccumulator")
            invokePrivate(stacker, "accumulateFrame", refRaw, true, 1f, false)
            if (mode == RawStackMode.MFSR) {
                invokePrivate(stacker, "clearSuperResolutionAccumulator")
            }
            invokePrivate(
                stacker,
                "buildTrackingProxy",
                refRaw,
                refProxy,
                32,
                32,
                1,
                1f,
                "instrumentation smoke",
            )

            val gridWidth = readPrivateInt(stacker, "gridWidth")
            val gridHeight = readPrivateInt(stacker, "gridHeight")
            val flowTexture = readPrivateInt(stacker, "flowTexture")
            val flowValues = invokePrivate(
                stacker,
                "readFlowTexture",
                flowTexture,
                gridWidth,
                gridHeight,
                "instrumentation smoke",
            ) as FloatArray
            assertEquals(gridWidth * gridHeight * 4, flowValues.size)
        } finally {
            invokePrivate(stacker, "release")
        }
    }

    private fun invokePrivate(target: Any, methodName: String, vararg args: Any): Any? {
        return target.javaClass.declaredMethods.first {
            it.name == methodName && it.parameterCount == args.size
        }.run {
            isAccessible = true
            invoke(target, *args)
        }
    }

    private fun readPrivateInt(target: Any, fieldName: String): Int {
        return target.javaClass.getDeclaredField(fieldName).run {
            isAccessible = true
            getInt(target)
        }
    }

    private fun readPrivateAny(target: Any, fieldName: String): Any? {
        return target.javaClass.getDeclaredField(fieldName).run {
            isAccessible = true
            get(target)
        }
    }

    private fun assertUnifiedRcdPpgInitialized(stacker: GlesRawStacker, mode: String) {
        assertTrue(
            "$mode must initialize the shared RCD photo-border PPG program",
            readPrivateInt(stacker, "rcdRegionBorderPpgProgram") != 0,
        )
    }

}
