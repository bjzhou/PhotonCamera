package com.hinnka.mycamera.lut

import android.content.Context
import com.hinnka.mycamera.raw.DngBaselineExposure
import com.hinnka.mycamera.raw.RawAdaptiveExposureMode
import com.hinnka.mycamera.raw.RawForwardPreviewEngineGl
import com.hinnka.mycamera.raw.RawHdrNetGl
import com.hinnka.mycamera.raw.RawMetadata

/** Applies adaptive tone mapping on the GL context that owns the current RAW frame. */
internal class RawAdaptivePreviewGl(context: Context) {
    private data class Stream(
        val id: Long,
        val cameraId: String,
        val mode: RawAdaptiveExposureMode,
        val maxHdrRatio: Float,
        val width: Int,
        val height: Int,
    )

    private val context = context.applicationContext
    private val hdrNet = RawHdrNetGl()
    private val adrcStats = RawAdrcPreviewStatsGl()
    private val adrcTmc = RawAdrcPreviewTmcGl()
    private val adrcLtm = RawAdrcPreviewLtmGl()
    private var stream: Stream? = null
    private var renderedTimestampNs = 0L
    private var renderedFrame: RawForwardPreviewEngineGl.PreparedFrame? = null
    private var renderedTexture = 0

    var outputRevision = 0L
        private set

    /** Returns the calibrated, tone-mapped profile texture for this exact input frame. */
    fun prepare(
        timestampNs: Long,
        frame: RawForwardPreviewEngineGl.PreparedFrame,
        width: Int,
        height: Int,
        metadata: RawMetadata,
        mode: RawAdaptiveExposureMode,
        streamId: Long,
        cameraId: String,
        maxHdrRatio: Float,
    ): Int {
        if (mode == RawAdaptiveExposureMode.OFF) {
            clearStream()
            return 0
        }
        if (timestampNs <= 0L || frame.textureId == 0 || width <= 0 || height <= 0) return 0
        val current = Stream(streamId, cameraId, mode, maxHdrRatio, width, height)
        if (stream != current) {
            clearStream()
            stream = current
        }
        if (timestampNs == renderedTimestampNs && renderedFrame === frame) return renderedTexture

        val baselineGain = DngBaselineExposure.exactGain(frame.rendererBaselineExposureEv)
        val output = if (mode.usesQualcommAdrc) {
            if (!adrcStats.prepare(
                    frame.textureId, width, height, baselineGain, frame.profileToLinearSrgb, metadata.faceRects,
                ) || !adrcTmc.prepare(adrcStats.statisticsBuffer, metadata)
            ) return 0
            adrcLtm.render(
                frame.textureId, width, height, adrcStats.profileTexture, adrcTmc.curveTexture, baselineGain,
            )
        } else {
            val solution = hdrNet.prepare(
                context, frame.textureId, width, height, frame.profileToLinearSrgb, metadata, maxHdrRatio,
            ) ?: return 0
            hdrNet.render(solution, frame.textureId, width, height, baselineGain)
        }
        if (output == 0) return 0
        renderedTimestampNs = timestampNs
        renderedFrame = frame
        renderedTexture = output
        outputRevision++
        return output
    }

    fun clearStream() {
        stream = null
        renderedTimestampNs = 0L
        renderedFrame = null
        renderedTexture = 0
    }

    /** A new GL context owns a new set of names. */
    fun reset() {
        clearStream()
        hdrNet.reset()
        adrcStats.reset()
        adrcTmc.reset()
        adrcLtm.reset()
    }

    fun release() {
        clearStream()
        hdrNet.release()
        adrcStats.release()
        adrcTmc.release()
        adrcLtm.release()
    }
}
