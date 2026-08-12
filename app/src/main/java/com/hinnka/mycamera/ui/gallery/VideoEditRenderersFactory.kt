package com.hinnka.mycamera.ui.gallery

import android.content.Context
import android.os.Handler
import androidx.media3.common.util.UnstableApi
import androidx.media3.exoplayer.DefaultRenderersFactory
import androidx.media3.exoplayer.Renderer
import androidx.media3.exoplayer.mediacodec.MediaCodecSelector
import androidx.media3.exoplayer.video.MediaCodecVideoRenderer
import androidx.media3.exoplayer.video.PlaybackVideoGraphWrapper
import androidx.media3.exoplayer.video.VideoFrameReleaseControl
import androidx.media3.exoplayer.video.VideoRendererEventListener

/**
 * Media3 renderer configuration used only by the video editor.
 *
 * The replayable cache retains the unprocessed paused frame so a LUT update can redraw that frame
 * through the effect graph without seeking or briefly resuming playback.
 */
@UnstableApi
internal class VideoEditRenderersFactory(
    context: Context,
) : DefaultRenderersFactory(context.applicationContext) {

    override fun buildVideoRenderers(
        context: Context,
        extensionRendererMode: Int,
        mediaCodecSelector: MediaCodecSelector,
        enableDecoderFallback: Boolean,
        eventHandler: Handler,
        eventListener: VideoRendererEventListener,
        allowedVideoJoiningTimeMs: Long,
        out: ArrayList<Renderer>,
    ) {
        out += ReplayableMediaCodecVideoRenderer(
            context = context,
            mediaCodecSelector = mediaCodecSelector,
            enableDecoderFallback = enableDecoderFallback,
            eventHandler = eventHandler,
            eventListener = eventListener,
            allowedVideoJoiningTimeMs = allowedVideoJoiningTimeMs,
        )
    }
}

@UnstableApi
private class ReplayableMediaCodecVideoRenderer(
    context: Context,
    mediaCodecSelector: MediaCodecSelector,
    enableDecoderFallback: Boolean,
    eventHandler: Handler,
    eventListener: VideoRendererEventListener,
    allowedVideoJoiningTimeMs: Long,
) : MediaCodecVideoRenderer(
    Builder(context.applicationContext)
        .setMediaCodecSelector(mediaCodecSelector)
        .setAllowedJoiningTimeMs(allowedVideoJoiningTimeMs)
        .setEnableDecoderFallback(enableDecoderFallback)
        .setEventHandler(eventHandler)
        .setEventListener(eventListener)
        .setMaxDroppedFramesToNotify(
            DefaultRenderersFactory.MAX_DROPPED_VIDEO_FRAME_COUNT_TO_NOTIFY
        )
) {
    override fun createPlaybackVideoGraphWrapper(
        context: Context,
        videoFrameReleaseControl: VideoFrameReleaseControl,
    ): PlaybackVideoGraphWrapper {
        return PlaybackVideoGraphWrapper.Builder(context, videoFrameReleaseControl)
            .setEnablePlaylistMode(true)
            .setEnableReplayableCache(true)
            .build()
    }
}
