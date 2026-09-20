package com.hinnka.mycamera.raw

import android.graphics.Bitmap
import android.graphics.Matrix
import com.hinnka.mycamera.utils.PLog
import java.nio.ByteBuffer

/**
 * Kotlin face of the lifted MGC V25 RAISR finish-stage upscale.
 *
 * The chain is five AOT kernels lifted byte-identically from the pinned
 * `libgcastartup.so` (RGB to grey, orientation, filter-class hash, 2x per-shift
 * filtering and the artifact composite); the npcam glue around them is rebuilt
 * in `mgc_raisr_driver.cpp`, and `mgc_raisr_jni.cpp` drives it over Photon's own
 * containers. Everything runs in the UInt8 finish domain, which the on-device
 * probe confirmed kernel by kernel.
 *
 * The upscale itself - the band loop, its scratch budget, the half-float and
 * ARGB_8888 to float conversion, the float to ARGB_8888 conversion - is native
 * and bounded by a fixed budget rather than by the frame size, so nothing here
 * sizes a buffer or walks a pixel. This class only owns the two bitmaps that are
 * the frame the caller already holds and the image it asked for.
 *
 * [upscale] consumes the finalized image at its native grid and produces the 2x
 * image, so it is the RAISR counterpart of the Lanczos-3 magnification in
 * [RawOutputPass] and the two are never combined.
 */
internal class MgcRaisrUpscale {
    /** V25's RaisrUpsample pins the integer factor; only 2x is reachable here. */
    val scale = 2

    /**
     * Upscales a finalized frame.
     *
     * The caller may pass the frame in any bitmap format the chain can read
     * (RGBA_F16 as the GPU hands it back, or ARGB_8888); the native side owns
     * that conversion too. `source` stays untouched.
     */
    fun upscale(source: Bitmap, resampleRate: Float): Bitmap? {
        val width = source.width
        val height = source.height
        if (width <= 0 || height <= 0) {
            return null
        }
        val output = createOutput(width * scale, height * scale) ?: return null
        val status = nativeUpscaleBitmap(source, output, resampleRate)
        if (status != 0) {
            PLog.e(TAG, "MGC RAISR upscale failed status=$status input=${width}x$height")
            output.recycle()
            return null
        }
        return output
    }

    /**
     * Upscales one tile of a tiled render.
     *
     * [buffer] holds the whole working tile at native scale in its own (source)
     * orientation, and the core occupies `coreLeft/coreTop/coreWidth/coreHeight`
     * inside it. The native side feeds the chain the core plus the context its
     * RAISR/refine/Polysharp stages need and crops the margin from the 2x result, so the tile
     * scratch stays inside the same budget as the whole-frame path. The caller
     * rotates the result into output orientation.
     */
    fun upscaleTile(
        buffer: ByteBuffer,
        tileWidth: Int,
        tileHeight: Int,
        coreLeft: Int,
        coreTop: Int,
        coreWidth: Int,
        coreHeight: Int,
        resampleRate: Float,
    ): Bitmap? {
        if (tileWidth <= 0 || tileHeight <= 0 || coreWidth <= 0 || coreHeight <= 0) {
            return null
        }
        val output = createOutput(coreWidth * scale, coreHeight * scale) ?: return null
        val status = nativeUpscaleTile(
            buffer,
            tileWidth,
            tileHeight,
            coreLeft,
            coreTop,
            coreWidth,
            coreHeight,
            output,
            resampleRate,
        )
        if (status != 0) {
            PLog.e(
                TAG,
                "MGC RAISR tile upscale failed status=$status core=${coreWidth}x$coreHeight",
            )
            output.recycle()
            return null
        }
        return output
    }

    /** Rotates a source-orientation result into the output orientation. */
    fun rotateForOutput(source: Bitmap, rotation: Int): Bitmap {
        val normalized = ((rotation % 360) + 360) % 360
        if (normalized == 0) {
            return source
        }
        val matrix = Matrix().apply { postRotate(normalized.toFloat()) }
        return Bitmap.createBitmap(source, 0, 0, source.width, source.height, matrix, true)
    }

    /**
     * The 2x image the caller asked for, filled in place by the native chain.
     *
     * Android bitmaps hold their pixels on the native heap, and the native side
     * locks this one, so no buffer of this size ever crosses the JNI boundary.
     * `Bitmap.createBitmap(width, height, config)` is the mutable overload the
     * lock requires.
     */
    private fun createOutput(width: Int, height: Int): Bitmap? =
        try {
            Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888)
        } catch (ignored: OutOfMemoryError) {
            PLog.e(TAG, "MGC RAISR refused a ${width}x$height output bitmap")
            null
        }

    private external fun nativeUpscaleBitmap(
        source: Bitmap,
        destination: Bitmap,
        resampleRate: Float,
    ): Int

    private external fun nativeUpscaleTile(
        source: ByteBuffer,
        tileWidth: Int,
        tileHeight: Int,
        coreLeft: Int,
        coreTop: Int,
        coreWidth: Int,
        coreHeight: Int,
        destination: Bitmap,
        resampleRate: Float,
    ): Int

    companion object {
        private const val TAG = "MgcRaisrUpscale"

        init {
            System.loadLibrary("my-native-lib")
        }
    }
}
