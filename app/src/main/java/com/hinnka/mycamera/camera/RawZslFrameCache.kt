package com.hinnka.mycamera.camera

import android.hardware.camera2.CaptureResult
import android.hardware.camera2.TotalCaptureResult
import com.hinnka.mycamera.model.SafeImage
import java.util.ArrayDeque

/** Retains matched RAW buffers on the camera handler until capture claims them or they expire. */
internal class RawZslFrameCache {
    class Frame(
        val image: SafeImage,
        val result: TotalCaptureResult,
        val sourceResult: CaptureResult,
        val arrivedElapsedNs: Long,
        val cameraId: String,
        val sensorTimestampSource: Int,
        val bufferBytes: Long,
    ) : AutoCloseable {
        val timestampNs = image.timestamp

        override fun close() = image.close()
    }

    private data class Retained(val frame: Frame, val expiresElapsedNs: Long)

    private val frames = ArrayDeque<Retained>()
    private var retainedBytes = 0L

    val maxAgeNs = 200_000_000L

    val nextExpiryElapsedNs: Long?
        get() = frames.minOfOrNull(Retained::expiresElapsedNs)

    /** Takes ownership of [frame] whether retained or rejected. */
    fun offer(frame: Frame, frameLimit: Int, retentionAgeNs: Long): Boolean {
        var retained = false
        try {
            require(frameLimit > 0 && retentionAgeNs > 0L)
            expire(frame.arrivedElapsedNs)
            val bytes = frame.bufferBytes
            if (frame.timestampNs <= 0L || frame.arrivedElapsedNs < 0L || bytes <= 0L ||
                frames.peekLast()?.let { frame.timestampNs <= it.frame.timestampNs } == true
            ) return false
            // The camera can align individual buffers differently. Budget each slot for the
            // largest buffer in this group so the requested frame count still fits.
            val bytesPerFrame = maxOf(bytes, frames.maxOfOrNull { it.frame.bufferBytes } ?: 0L)
            val budgetBytes = if (bytesPerFrame > Long.MAX_VALUE / frameLimit) {
                Long.MAX_VALUE
            } else {
                bytesPerFrame * frameLimit
            }
            while (frames.size >= frameLimit || retainedBytes > budgetBytes - bytes) {
                evictOldest()
            }
            val expires = frame.arrivedElapsedNs.coerceAtMost(Long.MAX_VALUE - retentionAgeNs) + retentionAgeNs
            frames.addLast(Retained(frame, expires))
            retainedBytes += bytes
            retained = true
            return true
        } finally {
            if (!retained) frame.close()
        }
    }

    /** Transfers the latest contiguous compatible group in ascending sensor timestamp order. */
    fun takeLatest(
        nowElapsedNs: Long,
        frameLimit: Int,
        minimumCount: Int,
        isAnchor: (Frame) -> Boolean,
        isCompatible: (anchor: Frame, candidate: Frame) -> Boolean,
    ): List<Frame> {
        require(minimumCount in 1..frameLimit)
        expire(nowElapsedNs)
        val selected = ArrayList<Retained>(minOf(frames.size, frameLimit))
        val candidates = frames.descendingIterator()
        while (candidates.hasNext() && selected.size < frameLimit) {
            val candidate = candidates.next()
            val frame = candidate.frame
            val anchor = selected.firstOrNull()?.frame
            if (anchor == null) {
                if (frame.arrivedElapsedNs > nowElapsedNs || !isAnchor(frame)) continue
            } else if (frame.arrivedElapsedNs > nowElapsedNs || !isCompatible(anchor, frame)) {
                break
            }
            selected.add(candidate)
        }
        if (selected.size < minimumCount) return emptyList()
        val result = selected.asReversed().map(Retained::frame)
        for (entry in selected) {
            frames.remove(entry)
            retainedBytes -= entry.frame.bufferBytes
        }
        return result
    }

    fun expire(nowElapsedNs: Long) {
        val iterator = frames.iterator()
        while (iterator.hasNext()) {
            val retained = iterator.next()
            if (retained.expiresElapsedNs <= nowElapsedNs) {
                iterator.remove()
                release(retained)
            }
        }
    }

    fun evictOldest(): Boolean {
        val oldest = frames.pollFirst() ?: return false
        release(oldest)
        return true
    }

    fun discardThrough(timestampNs: Long) {
        while (frames.peekFirst()?.frame?.timestampNs?.let { it <= timestampNs } == true) {
            evictOldest()
        }
    }

    fun clear() {
        while (frames.isNotEmpty()) evictOldest()
    }

    private fun release(retained: Retained) {
        retainedBytes -= retained.frame.bufferBytes
        retained.frame.close()
    }
}
