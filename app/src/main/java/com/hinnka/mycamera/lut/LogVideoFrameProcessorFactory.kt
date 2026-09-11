package com.hinnka.mycamera.lut

import android.content.Context
import android.media.metrics.LogSessionId
import androidx.media3.common.ColorInfo
import androidx.media3.common.DebugViewProvider
import androidx.media3.common.Format
import androidx.media3.common.VideoFrameProcessor
import androidx.media3.common.util.UnstableApi
import androidx.media3.effect.DefaultVideoFrameProcessor
import androidx.media3.transformer.Codec
import java.util.concurrent.Executor

/**
 * Keep the decoder's original YUV matrix/range, but present the LUT's display RGB as BT.709.
 * Media3's original SDR working space preserves the encoded Log samples before our effect.
 */
@UnstableApi
internal class LogVideoFrameProcessorFactory(replayable: Boolean = false) : VideoFrameProcessor.Factory {
    private val delegate = DefaultVideoFrameProcessor.Factory.Builder()
        .setSdrWorkingColorSpace(DefaultVideoFrameProcessor.WORKING_COLOR_SPACE_ORIGINAL)
        .setEnableReplayableCache(replayable)
        .build()

    override fun create(
        context: Context,
        debugViewProvider: DebugViewProvider,
        outputColorInfo: ColorInfo,
        renderFramesAutomatically: Boolean,
        listenerExecutor: Executor,
        listener: VideoFrameProcessor.Listener,
    ): VideoFrameProcessor = delegate.create(
        context, debugViewProvider, ColorInfo.SDR_BT709_LIMITED,
        renderFramesAutomatically, listenerExecutor, listener,
    )
}

/** The encoder's color tags must agree with the frame processor's display output. */
@UnstableApi
internal class LogVideoEncoderFactory(private val delegate: Codec.EncoderFactory) :
    Codec.EncoderFactory by delegate {
    override fun createForVideoEncoding(format: Format, logSessionId: LogSessionId?): Codec =
        delegate.createForVideoEncoding(
            format.buildUpon().setColorInfo(ColorInfo.SDR_BT709_LIMITED).build(), logSessionId,
        )
}
