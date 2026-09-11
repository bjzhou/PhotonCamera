package com.hinnka.mycamera.video

import android.content.Context
import android.media.MediaCodec
import android.media.MediaExtractor
import android.media.MediaFormat
import android.media.MediaMuxer
import android.net.Uri
import com.hinnka.mycamera.utils.PLog
import org.json.JSONObject
import java.nio.ByteBuffer

/** The encoded pixels' profile, stored in the MP4 rather than inferred from BT.2020/SDR tags. */
object VideoColorMetadata {
    private const val TAG = "VideoColorMetadata"
    private const val MIME_TYPE = "application/x-photoncamera-color"
    private const val MAX_SAMPLE_BYTES = 4096
    const val OVERRIDE_KEY = "photon.video.sourceLogProfile"

    fun addTrack(muxer: MediaMuxer): Int = muxer.addTrack(MediaFormat().apply {
        setString(MediaFormat.KEY_MIME, MIME_TYPE)
    })

    fun writeSample(muxer: MediaMuxer, track: Int, profile: VideoLogProfile) {
        val bytes = JSONObject()
            .put("version", 1)
            .put("logProfile", profile.name)
            .toString().toByteArray(Charsets.UTF_8)
        muxer.writeSampleData(track, ByteBuffer.wrap(bytes), MediaCodec.BufferInfo().apply {
            set(0, bytes.size, 0L, MediaCodec.BUFFER_FLAG_KEY_FRAME)
        })
    }

    /** Null means the file does not identify its profile; OFF explicitly identifies display SDR. */
    fun readProfile(context: Context, uri: Uri): VideoLogProfile? {
        val extractor = MediaExtractor()
        try {
            extractor.setDataSource(context, uri, null)
            for (index in 0 until extractor.trackCount) {
                val format = extractor.getTrackFormat(index)
                val mime = format.getString(MediaFormat.KEY_MIME)
                if (mime?.startsWith("video/") == true) {
                    PLog.d(TAG, "Video track for $uri: $format")
                }
                if (mime != MIME_TYPE) continue
                extractor.selectTrack(index)
                require(extractor.sampleSize in 1L..MAX_SAMPLE_BYTES.toLong()) {
                    "Invalid color metadata sample size: ${extractor.sampleSize}"
                }
                val buffer = ByteBuffer.allocate(MAX_SAMPLE_BYTES)
                val size = extractor.readSampleData(buffer, 0)
                require(size > 0) { "Missing color metadata sample" }
                val json = JSONObject(String(buffer.array(), 0, size, Charsets.UTF_8))
                require(json.getInt("version") == 1) { "Unsupported color metadata version" }
                val profile = VideoLogProfile.valueOf(json.getString("logProfile"))
                PLog.d(TAG, "Source profile for $uri: $profile")
                return profile
            }
            PLog.d(TAG, "No explicit source profile in $uri; container color tags do not identify custom Log")
            return null
        } catch (error: Exception) {
            PLog.w(TAG, "Unable to read source color metadata from $uri", error)
            return null
        } finally {
            extractor.release()
        }
    }

    fun resolveProfile(
        context: Context,
        uri: Uri,
        manualProfile: VideoLogProfile? = null,
    ): VideoLogProfile = readProfile(context, uri) ?: manualProfile ?: VideoLogProfile.OFF

    fun manualProfile(properties: Map<String, String>?): VideoLogProfile? =
        properties?.get(OVERRIDE_KEY)?.let { name -> VideoLogProfile.entries.firstOrNull { it.name == name } }
}
