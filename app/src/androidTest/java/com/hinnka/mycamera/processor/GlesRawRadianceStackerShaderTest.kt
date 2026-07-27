package com.hinnka.mycamera.processor

import android.opengl.GLES30
import android.opengl.GLES31
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
            exportGpuLinearRgbSource = true,
        )
        try {
            invokePrivate(stacker, "initEgl")
            invokePrivate(stacker, "ensureGles31")
            invokePrivate(stacker, "validateGpuResourceLimits")
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
            val postprocessor =
                checkNotNull(chromaPostprocessor) as GlesRadianceVgnChromaPostprocessor
            postprocessor.markTileWritten(tile)
            val chromaOutput = ByteBuffer.allocateDirect(96 * 96 * 3 * 2)
                .order(ByteOrder.nativeOrder())
            val chromaResult = postprocessor.process(
                obtainOutputBuffer = { chromaOutput },
                deferFullSizeReadback = false,
            )
            assertNotNull(chromaResult)
            assertEquals(0, chromaOutput.position())
            assertTrue(chromaResult.exportedTextureId != 0)
            try {
                assertGpuExportVisibleToSampler(
                    stacker = stacker,
                    sourceTexture = chromaResult.exportedTextureId,
                    width = 96,
                    height = 96,
                )
            } finally {
                GLES30.glDeleteTextures(1, intArrayOf(chromaResult.exportedTextureId), 0)
            }
        } finally {
            invokePrivate(stacker, "release")
        }
    }

    private fun assertGpuExportVisibleToSampler(
        stacker: GlesRawRadianceStacker,
        sourceTexture: Int,
        width: Int,
        height: Int,
    ) {
        val copyProgram = invokePrivate(
            stacker,
            "linkComputeProgram",
            """
                #version 310 es
                precision highp int;
                precision highp usampler2D;
                precision highp uimage2D;
                layout(local_size_x = 16, local_size_y = 16) in;
                uniform highp usampler2D uSource;
                layout(rgba16ui, binding = 0) writeonly uniform highp uimage2D uDestination;
                uniform ivec2 uImageSize;

                void main() {
                    ivec2 p = ivec2(gl_GlobalInvocationID.xy);
                    if (any(greaterThanEqual(p, uImageSize))) return;
                    imageStore(uDestination, p, texelFetch(uSource, p, 0));
                }
            """.trimIndent(),
            "instrumentation_radiance_export_sampler_copy",
        ) as Int
        val textures = IntArray(1)
        val framebuffers = IntArray(1)
        GLES30.glGenTextures(1, textures, 0)
        GLES30.glGenFramebuffers(1, framebuffers, 0)
        try {
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, textures[0])
            GLES30.glTexStorage2D(
                GLES30.GL_TEXTURE_2D,
                1,
                GLES30.GL_RGBA16UI,
                width,
                height,
            )
            GLES31.glUseProgram(copyProgram)
            GLES31.glActiveTexture(GLES31.GL_TEXTURE0)
            GLES31.glBindTexture(GLES31.GL_TEXTURE_2D, sourceTexture)
            GLES31.glUniform1i(GLES31.glGetUniformLocation(copyProgram, "uSource"), 0)
            GLES31.glUniform2i(
                GLES31.glGetUniformLocation(copyProgram, "uImageSize"),
                width,
                height,
            )
            GLES31.glBindImageTexture(
                0,
                textures[0],
                0,
                false,
                0,
                GLES31.GL_WRITE_ONLY,
                GLES30.GL_RGBA16UI,
            )
            GLES31.glDispatchCompute((width + 15) / 16, (height + 15) / 16, 1)
            GLES31.glMemoryBarrier(
                GLES31.GL_SHADER_IMAGE_ACCESS_BARRIER_BIT or
                    GLES31.GL_FRAMEBUFFER_BARRIER_BIT,
            )

            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, framebuffers[0])
            GLES30.glFramebufferTexture2D(
                GLES30.GL_FRAMEBUFFER,
                GLES30.GL_COLOR_ATTACHMENT0,
                GLES30.GL_TEXTURE_2D,
                textures[0],
                0,
            )
            GLES30.glReadBuffer(GLES30.GL_COLOR_ATTACHMENT0)
            assertEquals(
                GLES30.GL_FRAMEBUFFER_COMPLETE,
                GLES30.glCheckFramebufferStatus(GLES30.GL_FRAMEBUFFER),
            )
            val pixel = ByteBuffer.allocateDirect(4 * Short.SIZE_BYTES)
                .order(ByteOrder.nativeOrder())
            listOf(
                0 to 0,
                width / 2 to height / 2,
                width - 1 to height - 1,
            ).forEach { (x, y) ->
                pixel.clear()
                GLES30.glReadPixels(
                    x,
                    y,
                    1,
                    1,
                    GLES30.GL_RGBA_INTEGER,
                    GLES30.GL_UNSIGNED_SHORT,
                    pixel,
                )
                assertEquals(
                    "Radiance GPU export alpha at ($x, $y)",
                    65535,
                    pixel.order(ByteOrder.nativeOrder()).asShortBuffer().get(3).toInt() and 0xFFFF,
                )
            }
        } finally {
            GLES31.glBindImageTexture(
                0,
                0,
                0,
                false,
                0,
                GLES31.GL_READ_ONLY,
                GLES30.GL_RGBA16UI,
            )
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
            GLES30.glDeleteFramebuffers(1, framebuffers, 0)
            GLES30.glDeleteTextures(1, textures, 0)
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
