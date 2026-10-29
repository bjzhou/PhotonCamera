package com.hinnka.mycamera.raw.denoise

import android.content.Context
import android.opengl.GLES30
import com.hinnka.mycamera.processor.RawStackRuntimeDebug
import com.hinnka.mycamera.raw.RawMetadata
import com.hinnka.mycamera.utils.PLog
import com.hinnka.mycamera.utils.SystemPropertiesUtil
import org.json.JSONArray
import org.json.JSONObject
import java.io.File
import java.io.FileOutputStream
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.nio.channels.Channels

/**
 * Debug-only export of the denoiser input (docs/photon-multiscale-denoise.md §12.4).
 *
 * Writes the camera-RGB RGBA16F pixels exactly as the denoiser receives them, plus the
 * metadata the noise model needs (profile, white balance, the LSC gains contained in the
 * pixels, pipeline, frame count), for tools/photon_denoise. Selected through
 * debug.photon.denoise.dump; files go to the app's external files dir so `adb pull` works
 * without run-as.
 */
internal object PhotonDenoiseDump {
    private const val TAG = "PhotonDenoiseDump"
    private const val DIRECTORY = "photon_denoise_dump"

    val enabled: Boolean
        get() = RawStackRuntimeDebug.enabled &&
            SystemPropertiesUtil.get("debug.photon.denoise.dump")?.toBooleanStrictOrNull() == true

    /**
     * Dumps [inputTexture] (RGBA16F camera RGB, or linear sRGB for a Bitmap with [metadata] null,
     * as the denoiser receives it) with its metadata
     * and the noise model [params] (`<stem>.params.json`, read by tools/photon_denoise), and,
     * when [parityEnabled], the pass-by-pass parity dump. [lensShadingSource] names where the
     * LSC gains in the pixels come from ("merge", "demosaic"). Must run on the GL thread that
     * owns [inputTexture].
     */
    fun write(
        context: Context,
        label: String,
        inputTexture: Int,
        width: Int,
        height: Int,
        metadata: RawMetadata?,
        params: PhotonDenoiseParams,
        lensShadingSource: String?,
    ) {
        val directory = directory(context)
        val stem = "${System.currentTimeMillis()}_${label}_${params.originX}_${params.originY}"
        runCatching {
            val pixels = readTexture(inputTexture, width, height, float32 = false)
            FileOutputStream(File(directory, "$stem.rgba16f")).use { Channels.newChannel(it).write(pixels) }
            File(directory, "$stem.json").writeText(describe(width, height, metadata, params, lensShadingSource).toString(2))
            File(directory, "$stem.params.json").writeText(params.toJson().toString(2))
            PLog.i(TAG, "Denoise input dumped: ${directory.absolutePath}/$stem.{rgba16f,json,params.json} ${width}x$height")
        }.onFailure { error -> PLog.e(TAG, "Denoise input dump failed: $stem", error) }
        if (parityEnabled) runPhotonParity(directory, stem, inputTexture, width, height, params)
    }

    /**
     * Selected through debug.photon.denoise.parity: additionally runs the Photon denoiser and
     * dumps every pass (≈350 MB per 6 MP capture), for implementation-step-3 parity.
     */
    val parityEnabled: Boolean
        get() = enabled &&
            SystemPropertiesUtil.get("debug.photon.denoise.parity")?.toBooleanStrictOrNull() == true

    private fun directory(context: Context) = File(context.getExternalFilesDir(null), DIRECTORY).apply { mkdirs() }

    private fun readTexture(texture: Int, width: Int, height: Int, float32: Boolean): ByteBuffer {
        val buffer = ByteBuffer.allocateDirect(width * height * 4 * if (float32) 4 else 2).order(ByteOrder.nativeOrder())
        val framebuffer = IntArray(1)
        GLES30.glGenFramebuffers(1, framebuffer, 0)
        try {
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, framebuffer[0])
            GLES30.glFramebufferTexture2D(GLES30.GL_FRAMEBUFFER, GLES30.GL_COLOR_ATTACHMENT0,
                GLES30.GL_TEXTURE_2D, texture, 0)
            check(GLES30.glCheckFramebufferStatus(GLES30.GL_FRAMEBUFFER) == GLES30.GL_FRAMEBUFFER_COMPLETE) {
                "Texture $texture is not readable"
            }
            GLES30.glPixelStorei(GLES30.GL_PACK_ALIGNMENT, 4)
            GLES30.glReadPixels(0, 0, width, height, GLES30.GL_RGBA,
                if (float32) GLES30.GL_FLOAT else GLES30.GL_HALF_FLOAT, buffer)
        } finally {
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
            GLES30.glDeleteFramebuffers(1, framebuffer, 0)
        }
        return buffer
    }

    /**
     * Runs the Photon denoiser on the same input texture and dumps every pass output next to the
     * input dump [stem] (implementation step 3 parity, tools/photon_denoise/compare_passes.py).
     */
    private fun runPhotonParity(directory: File, stem: String, inputTexture: Int, width: Int, height: Int,
                                params: PhotonDenoiseParams) {
        val passes = JSONArray()
        val denoiser = PhotonMultiScaleDenoiser()
        val startNs = System.nanoTime()
        runCatching {
            var strength: FloatArray? = null
            val sink = object : PhotonMultiScaleDenoiser.PassSink {
                override fun onPass(name: String, textureId: Int, width: Int, height: Int, float32: Boolean) {
                    val buffer = readTexture(textureId, width, height, float32)
                    val suffix = if (float32) "f32" else "f16"
                    FileOutputStream(File(directory, "$stem.$name.$suffix")).use { Channels.newChannel(it).write(buffer) }
                    passes.put(JSONObject().apply {
                        put("name", name)
                        put("width", width)
                        put("height", height)
                        put("format", suffix)
                    })
                }

                override fun onStrength(table: FloatArray) {
                    strength = table
                }
            }
            val output = denoiser.denoise(inputTexture, width, height, params, sink = sink)
                ?: error("Photon denoiser programs are unavailable")
            GLES30.glDeleteTextures(1, intArrayOf(output), 0)
            File(directory, "$stem.photon.json").writeText(JSONObject().apply {
                put("params", params.toJson())
                put("passes", passes)
                strength?.let { put("strength", JSONArray(it.map(Float::toDouble))) }
            }.toString(2))
            PLog.i(TAG, "Photon parity dumped: $stem passes=${passes.length()} " +
                "ms=${(System.nanoTime() - startNs) / 1_000_000L}")
        }.onFailure { error -> PLog.e(TAG, "Photon parity run failed: $stem", error) }
        denoiser.release()
    }

    private fun describe(
        width: Int,
        height: Int,
        metadata: RawMetadata?,
        params: PhotonDenoiseParams,
        lensShadingSource: String?,
    ): JSONObject = JSONObject().apply {
        put("format", "rgba16f_camera_rgb_un_white_balanced")
        put("pipeline", params.pipeline.name)
        put("width", width)
        put("height", height)
        put("originX", params.originX)
        put("originY", params.originY)
        put("fullWidth", params.fullWidth)
        put("fullHeight", params.fullHeight)
        // A Bitmap input (§9) has no RAW metadata: its pixels are linear sRGB and its profile is the
        // nominal one in params.
        if (metadata != null) {
            put("cfaPattern", metadata.cfaPattern)
            put("frameCount", metadata.frameCount)
            put("iso", metadata.iso)
            put("whiteBalanceGains", JSONArray(metadata.whiteBalanceGains.toList()))
            put("noiseProfileLayout", metadata.noiseProfileLayout.name)
            put("channelNoiseProfile", JSONArray(metadata.channelNoiseProfile.toList()))
        } else {
            put("frameCount", 1)
            put("whiteBalanceGains", JSONArray(listOf(1.0, 1.0, 1.0, 1.0)))
        }
        put("profileRgbRead", JSONArray(params.read.toList()))
        put("profileRgbShot", JSONArray(params.shot.toList()))
        val lensShading = params.lensShading
        if (lensShading != null) {
            put("lensShading", JSONObject().apply {
                put("source", lensShadingSource ?: "unknown")
                put("width", lensShading.width)
                put("height", lensShading.height)
                put("layout", "R,Ge,Go,B interleaved")
                lensShading.dngGrid?.let { put("dngGrid", JSONArray(it.toList())) }
                put("gains", JSONArray(lensShading.gains.take(lensShading.width * lensShading.height * 4)))
            })
        }
    }
}
