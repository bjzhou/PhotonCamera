package com.hinnka.mycamera.processor

import androidx.test.ext.junit.runners.AndroidJUnit4
import org.junit.Assert.assertEquals
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
        validateHdrMode()
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
                invokePrivate(
                    stacker,
                    "reconstructSuperResolutionStripes",
                    createSuperResolutionDecision(),
                    emptyList<Any>(),
                )
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

    private fun createSuperResolutionDecision(): Any {
        val decisionClass = GlesRawStacker::class.java.declaredClasses.first {
            it.simpleName == "SuperResolutionOutputDecision"
        }
        return decisionClass.declaredConstructors.first { it.parameterCount == 7 }.run {
            isAccessible = true
            newInstance("SUPER_RESOLUTION", null, 1, 1f, 1, 4, listOf(1, 0, 0, 0))
        }
    }
}
