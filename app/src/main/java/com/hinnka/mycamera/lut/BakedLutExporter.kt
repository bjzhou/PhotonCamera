package com.hinnka.mycamera.lut

import android.graphics.Bitmap
import com.hinnka.mycamera.lut.creator.LutGenerator
import com.hinnka.mycamera.model.ColorRecipeParams
import java.io.ByteArrayOutputStream

object BakedLutExporter {
    private const val UNWRAPPED_CLUT_SIZE = 33
    private const val HALD_LEVEL = 8

    suspend fun exportBakedCube(
        lutConfig: LutConfig,
        recipe: ColorRecipeParams,
        name: String
    ): ByteArray? {
        if (recipe.isDefault()) {
            val floatBuffer = lutConfig.toFloatBuffer()
            val floatArray = FloatArray(floatBuffer.capacity())
            floatBuffer.position(0)
            floatBuffer.get(floatArray)
            return LutGenerator.exportToCubeString(floatArray, lutConfig.size, name)
                .toByteArray(Charsets.UTF_8)
        }

        val imageProcessor = LutImageProcessor()
        return try {
            val clutBitmap = createIdentityUnwrappedClutBitmap(UNWRAPPED_CLUT_SIZE)
            val processedBitmap = imageProcessor.applyLut(
                bitmap = clutBitmap,
                lutConfig = lutConfig,
                colorRecipeParams = recipe.toBakeableRecipe()
            )

            val floatArray = processedBitmap.toUnwrappedCubeFloatArray(UNWRAPPED_CLUT_SIZE)
            LutGenerator.exportToCubeString(floatArray, UNWRAPPED_CLUT_SIZE, name)
                .toByteArray(Charsets.UTF_8)
        } finally {
            imageProcessor.release()
        }
    }

    suspend fun exportBakedHaldPng(
        lutConfig: LutConfig,
        recipe: ColorRecipeParams
    ): ByteArray? {
        val imageProcessor = LutImageProcessor()
        return try {
            val haldBitmap = createIdentityHaldBitmap(HALD_LEVEL)
            val processedBitmap = imageProcessor.applyLut(
                bitmap = haldBitmap,
                lutConfig = lutConfig,
                colorRecipeParams = recipe.toBakeableRecipe()
            )

            ByteArrayOutputStream().use { output ->
                if (processedBitmap.compress(Bitmap.CompressFormat.PNG, 100, output)) {
                    output.toByteArray()
                } else {
                    null
                }
            }
        } finally {
            imageProcessor.release()
        }
    }

    private fun ColorRecipeParams.toBakeableRecipe(): ColorRecipeParams {
        return copy(
            filmGrain = 0f,
            vignette = 0f,
            bloom = 0f,
            softLight = 0f,
            halation = 0f,
            redHalation = 0f,
            chromaticAberration = 0f,
            noise = 0f,
            lowRes = 0f
        )
    }

    private fun createIdentityUnwrappedClutBitmap(size: Int): Bitmap {
        val width = size * size
        val height = size
        val bitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888)
        val pixels = IntArray(width * height)
        val maxIndex = size - 1f

        for (b in 0 until size) {
            for (g in 0 until size) {
                for (r in 0 until size) {
                    val x = b * size + r
                    val y = g
                    pixels[y * width + x] = rgbToArgb(
                        red = r / maxIndex,
                        green = g / maxIndex,
                        blue = b / maxIndex
                    )
                }
            }
        }

        bitmap.setPixels(pixels, 0, width, 0, 0, width, height)
        return bitmap
    }

    private fun createIdentityHaldBitmap(level: Int): Bitmap {
        val lutSize = level * level
        val width = level * lutSize
        val height = level * lutSize
        val bitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888)
        val pixels = IntArray(width * height)
        val maxIndex = lutSize - 1f

        for (b in 0 until lutSize) {
            val squareX = b % level
            val squareY = b / level
            for (g in 0 until lutSize) {
                for (r in 0 until lutSize) {
                    val x = squareX * lutSize + r
                    val y = squareY * lutSize + g
                    pixels[y * width + x] = rgbToArgb(
                        red = r / maxIndex,
                        green = g / maxIndex,
                        blue = b / maxIndex
                    )
                }
            }
        }

        bitmap.setPixels(pixels, 0, width, 0, 0, width, height)
        return bitmap
    }

    private fun Bitmap.toUnwrappedCubeFloatArray(size: Int): FloatArray {
        val pixels = IntArray(width * height)
        getPixels(pixels, 0, width, 0, 0, width, height)
        val floatArray = FloatArray(size * size * size * 3)

        for (b in 0 until size) {
            for (g in 0 until size) {
                for (r in 0 until size) {
                    val x = b * size + r
                    val y = g
                    val pixel = pixels[y * width + x]
                    val index = (b * size * size + g * size + r) * 3
                    floatArray[index] = ((pixel shr 16) and 0xFF) / 255f
                    floatArray[index + 1] = ((pixel shr 8) and 0xFF) / 255f
                    floatArray[index + 2] = (pixel and 0xFF) / 255f
                }
            }
        }

        return floatArray
    }

    private fun rgbToArgb(red: Float, green: Float, blue: Float): Int {
        val r = (red * 255f + 0.5f).toInt().coerceIn(0, 255)
        val g = (green * 255f + 0.5f).toInt().coerceIn(0, 255)
        val b = (blue * 255f + 0.5f).toInt().coerceIn(0, 255)
        return (0xFF shl 24) or (r shl 16) or (g shl 8) or b
    }
}
