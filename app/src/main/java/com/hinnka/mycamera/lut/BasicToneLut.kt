package com.hinnka.mycamera.lut

import android.content.Context
import android.opengl.GLES30
import com.hinnka.mycamera.color.TransferCurve
import com.hinnka.mycamera.raw.ColorSpace
import com.hinnka.mycamera.utils.PLog
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.io.IOException
import kotlin.math.abs
import kotlin.math.pow

/**
 * Oplus GR 影调轴的 Low Key / High Key 两个端点 LUT。
 *
 * 端点来自 SC 表中饱和度为 0 的 SC32Lut3（Cont=-100）和 SC32Lut5（Cont=+100）。
 * 原始文件是 32³、RGB 三平面、little-endian float32。加载时转换为 OpenGL 所需的
 * RGB 交错顺序；R 是纹理 X 轴、G 是 Y 轴、B 是 Z 轴。
 */
internal object BasicToneLut {
    const val SIZE = 32

    enum class Endpoint(
        val assetPath: String,
        val title: String,
    ) {
        LOW_KEY(
            assetPath = "internal/basic_tone/low_key_32f.bin",
            title = "BasicTone Low Key",
        ),
        HIGH_KEY(
            assetPath = "internal/basic_tone/high_key_32f.bin",
            title = "BasicTone High Key",
        ),
    }

    @Volatile
    private var lowKeyConfig: LutConfig? = null

    @Volatile
    private var highKeyConfig: LutConfig? = null

    fun load(context: Context, endpoint: Endpoint): LutConfig {
        val cached = when (endpoint) {
            Endpoint.LOW_KEY -> lowKeyConfig
            Endpoint.HIGH_KEY -> highKeyConfig
        }
        if (cached != null) return cached

        return synchronized(this) {
            val synchronizedCached = when (endpoint) {
                Endpoint.LOW_KEY -> lowKeyConfig
                Endpoint.HIGH_KEY -> highKeyConfig
            }
            synchronizedCached ?: loadFromAssets(context.applicationContext, endpoint).also {
                when (endpoint) {
                    Endpoint.LOW_KEY -> lowKeyConfig = it
                    Endpoint.HIGH_KEY -> highKeyConfig = it
                }
            }
        }
    }

    private fun loadFromAssets(context: Context, endpoint: Endpoint): LutConfig {
        val data = try {
            val raw = context.assets.open(endpoint.assetPath).use { it.readBytes() }
            parsePlanarFloat32(raw, SIZE, endpoint.title)
        } catch (error: IOException) {
            // The source checkout currently does not contain the optional binary endpoint LUTs.
            // Keep tonality responsive instead of silently binding a missing GL texture.
            PLog.w(
                "BasicToneLut",
                "Cannot open ${endpoint.assetPath}; using generated tone curve (${error.message})",
            )
            createFallbackData(SIZE, endpoint)
        }
        return LutConfig(
            size = SIZE,
            data = data,
            title = endpoint.title,
            configDataType = LutConfig.CONFIG_DATA_TYPE_UINT16,
            curve = TransferCurve.SRGB,
            colorSpace = ColorSpace.SRGB,
        )
    }

    /**
     * Monotonic fallback for installations without the optional source LUT assets.
     * It keeps neutral values neutral and changes midtones in the selected direction.
     * Packaged endpoint LUTs always take precedence when available.
     */
    internal fun createFallbackData(size: Int, endpoint: Endpoint): FloatArray {
        require(size >= 2) { "Tone LUT size must be at least 2" }
        val exponent = when (endpoint) {
            Endpoint.LOW_KEY -> 1.22f
            Endpoint.HIGH_KEY -> 0.82f
        }
        val data = FloatArray(size * size * size * CHANNEL_COUNT)
        for (blueIndex in 0 until size) {
            val blue = blueIndex / (size - 1f)
            for (greenIndex in 0 until size) {
                val green = greenIndex / (size - 1f)
                for (redIndex in 0 until size) {
                    val red = redIndex / (size - 1f)
                    val luma = 0.2126f * red + 0.7152f * green + 0.0722f * blue
                    val adjustedLuma = luma.pow(exponent)
                    val gain = if (luma > 0.00001f) adjustedLuma / luma else 0f
                    val outputIndex =
                        ((blueIndex * size + greenIndex) * size + redIndex) * CHANNEL_COUNT
                    data[outputIndex] = (red * gain).coerceIn(0f, 1f)
                    data[outputIndex + 1] = (green * gain).coerceIn(0f, 1f)
                    data[outputIndex + 2] = (blue * gain).coerceIn(0f, 1f)
                }
            }
        }
        return data
    }

    internal fun parsePlanarFloat32(
        raw: ByteArray,
        size: Int,
        title: String = "BasicTone",
    ): FloatArray {
        val voxelCount = size * size * size
        val expectedBytes = voxelCount * CHANNEL_COUNT * Float.SIZE_BYTES
        require(raw.size == expectedBytes) {
            "Invalid $title LUT size: ${raw.size}, expected $expectedBytes"
        }

        val planar = ByteBuffer.wrap(raw)
            .order(ByteOrder.LITTLE_ENDIAN)
            .asFloatBuffer()
        return FloatArray(voxelCount * CHANNEL_COUNT).also { interleaved ->
            for (index in 0 until voxelCount) {
                val output = index * CHANNEL_COUNT
                interleaved[output] = planar.get(index)
                interleaved[output + 1] = planar.get(voxelCount + index)
                interleaved[output + 2] = planar.get(voxelCount * 2 + index)
            }
        }
    }

    private const val CHANNEL_COUNT = 3
}

/**
 * 每个 GL context 持有一组端点纹理。符号只决定绑定哪张 LUT，绝对值作为应用强度。
 */
internal class BasicToneGlTextures {
    private var lowKeyTextureId = 0
    private var highKeyTextureId = 0

    fun bind(
        context: Context?,
        textureUnit: Int,
        samplerLocation: Int,
        intensityLocation: Int,
        amount: Float,
    ) {
        ensureCreated(context)
        val textureId = if (amount >= 0f) highKeyTextureId else lowKeyTextureId
        val intensity = if (textureId != 0) abs(amount).coerceIn(0f, 1f) else 0f

        GLES30.glActiveTexture(GLES30.GL_TEXTURE0 + textureUnit)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_3D, textureId)
        if (samplerLocation >= 0) {
            GLES30.glUniform1i(samplerLocation, textureUnit)
        }
        if (intensityLocation >= 0) {
            GLES30.glUniform1f(intensityLocation, intensity)
        }
    }

    fun reset() {
        lowKeyTextureId = 0
        highKeyTextureId = 0
    }

    fun release() {
        val textures = intArrayOf(lowKeyTextureId, highKeyTextureId).filter { it != 0 }.toIntArray()
        if (textures.isNotEmpty()) {
            GLES30.glDeleteTextures(textures.size, textures, 0)
        }
        reset()
    }

    private fun ensureCreated(context: Context?) {
        if (lowKeyTextureId != 0 && highKeyTextureId != 0) return
        if (context == null) return

        try {
            if (lowKeyTextureId == 0) {
                lowKeyTextureId = GlUtils.create3DTexture(
                    BasicToneLut.load(context, BasicToneLut.Endpoint.LOW_KEY)
                )
            }
            if (highKeyTextureId == 0) {
                highKeyTextureId = GlUtils.create3DTexture(
                    BasicToneLut.load(context, BasicToneLut.Endpoint.HIGH_KEY)
                )
            }
        } catch (error: Exception) {
            PLog.e(TAG, "Failed to create BasicTone endpoint textures", error)
            release()
        }
    }

    private companion object {
        const val TAG = "BasicToneGlTextures"
    }
}
