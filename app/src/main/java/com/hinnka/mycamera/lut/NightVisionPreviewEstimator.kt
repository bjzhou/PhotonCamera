package com.hinnka.mycamera.lut

import android.content.Context
import android.os.SystemClock
import com.hinnka.mycamera.ml.NightVisionToneModel
import com.hinnka.mycamera.processor.NightVisionTone
import com.hinnka.mycamera.processor.NightVisionToneCurve
import com.hinnka.mycamera.utils.PLog
import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.cancel
import kotlinx.coroutines.launch
import java.util.concurrent.atomic.AtomicBoolean
import java.util.concurrent.atomic.AtomicInteger
import kotlin.math.exp

/**
 * Turns preview samples (RGBA8, [NightVisionTone.MODEL_SIZE]², camera input before any curve)
 * into a temporally smoothed night vision curve. At most one estimate runs at a time; samples
 * arriving meanwhile are dropped, so the model never queues behind the preview.
 */
internal class NightVisionPreviewEstimator(
    context: Context,
    private val onCurve: (NightVisionToneCurve) -> Unit,
) {
    private val appContext = context.applicationContext
    private val scope = CoroutineScope(SupervisorJob() + Dispatchers.Default)
    private val busy = AtomicBoolean(false)
    private val generation = AtomicInteger(0)

    @Volatile
    private var smoothed: NightVisionToneCurve? = null
    private var lastUpdateNanos = 0L

    fun submit(rgba: ByteArray) {
        if (!busy.compareAndSet(false, true)) return
        val requestGeneration = generation.get()
        scope.launch {
            try {
                val input = NightVisionTone.modelInputFromRgba(rgba)
                val target = NightVisionToneModel.estimate(appContext, input) ?: return@launch
                if (requestGeneration != generation.get()) return@launch
                val now = SystemClock.elapsedRealtimeNanos()
                val previous = smoothed
                val next = if (previous == null) {
                    target
                } else {
                    val elapsedSeconds = (now - lastUpdateNanos) / 1_000_000_000f
                    previous.blendedToward(target, 1f - exp(-elapsedSeconds / SMOOTHING_TIME_CONSTANT_SECONDS))
                }
                smoothed = next
                lastUpdateNanos = now
                onCurve(next)
            } catch (cancelled: CancellationException) {
                throw cancelled
            } catch (error: Exception) {
                PLog.e(TAG, "Night vision preview curve estimation failed", error)
            } finally {
                busy.set(false)
            }
        }
    }

    /** Drops the smoothing history and discards estimates already in flight. */
    fun reset() {
        generation.incrementAndGet()
        smoothed = null
    }

    fun close() {
        reset()
        scope.cancel()
    }

    private companion object {
        const val TAG = "NightVisionPreview"
        const val SMOOTHING_TIME_CONSTANT_SECONDS = 0.4f
    }
}
