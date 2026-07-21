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
class GlesRawRadianceStackerShaderTest {
    @Test
    fun productionRadianceShadersCompileAndLinkOnDevice() {
        val stacker = GlesRawRadianceStacker(
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
                superResolution = RawStackSuperResolutionTuning(outputScale = 1.5f),
            ),
            debugConfig = RawStackDebugConfig(
                visualizeRadianceFusionRejections = true,
                visualizeRadianceSrDetail = true,
            ),
        )
        try {
            invokePrivate(stacker, "initEgl")
            invokePrivate(stacker, "ensureGles31")
            invokePrivate(stacker, "initPrograms")
            invokePrivate(stacker, "initResources")
            invokePrivate(stacker, "applyRawRenderState")
            assertEquals(96, readPrivateInt(stacker, "outputWidth"))
            assertEquals(96, readPrivateInt(stacker, "outputHeight"))
            assertTrue(
                "Radiance must initialize its VGN reference adapter",
                readPrivateInt(stacker, "radianceVgnFinalProgram") != 0,
            )
            assertTrue(
                "Radiance must initialize its non-reference semantic resolver",
                readPrivateInt(stacker, "radianceSemanticResolveProgram") != 0,
            )

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
            assertNotNull(invokePrivate(postprocessor, "processAndReadback", chromaOutput))
            assertEquals(0, chromaOutput.position())
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
}
