package com.hinnka.mycamera.previewhook.api

import com.hinnka.mycamera.lut.LutConfig
import java.nio.ByteBuffer
import java.nio.ByteOrder

/**
 * Packs a 3D LUT payload into a vertically stacked 2D atlas.
 *
 * The atlas uses:
 * - width = lutSize
 * - height = lutSize * lutSize
 *
 * This layout preserves the native x-major/y-then-z byte order used by
 * `glTexImage3D`, so RGB8 LUT payloads can be reused without repacking.
 *
 * For 16-bit LUTs we normalize to float32 RGB payloads up front. That keeps
 * the upload path simple for the future MGC stage, which can bind the atlas as
 * `GL_RGB16F` or `GL_RGB32F` without understanding the app-side packed format.
 */
data class MgcVfePackedLutAtlas(
    val payload: ByteArray,
    val width: Int,
    val height: Int,
    val uploadDataType: Int,
) {
    companion object {
        const val UPLOAD_DATA_TYPE_UINT8 = 0
        const val UPLOAD_DATA_TYPE_FLOAT32 = 1

        @JvmStatic
        fun fromLutConfig(lutConfig: LutConfig): MgcVfePackedLutAtlas? {
            if (!lutConfig.isValid()) return null

            val atlasWidth = lutConfig.size
            val atlasHeight = lutConfig.size * lutConfig.size

            return if (lutConfig.configDataType == LutConfig.CONFIG_DATA_TYPE_UINT16) {
                val floats = lutConfig.toFloatBuffer()
                val bytes = ByteArray(floats.remaining() * 4)
                ByteBuffer.wrap(bytes)
                    .order(ByteOrder.nativeOrder())
                    .asFloatBuffer()
                    .put(floats)
                MgcVfePackedLutAtlas(
                    payload = bytes,
                    width = atlasWidth,
                    height = atlasHeight,
                    uploadDataType = UPLOAD_DATA_TYPE_FLOAT32,
                )
            } else {
                val source = lutConfig.toByteBuffer()
                val bytes = ByteArray(source.remaining())
                source.get(bytes)
                MgcVfePackedLutAtlas(
                    payload = bytes,
                    width = atlasWidth,
                    height = atlasHeight,
                    uploadDataType = UPLOAD_DATA_TYPE_UINT8,
                )
            }
        }
    }
}
