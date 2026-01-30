package com.hinnka.mycamera.livephoto

import android.media.MediaCodec
import com.hinnka.mycamera.utils.PLog
import java.nio.ByteBuffer
import java.util.concurrent.ConcurrentLinkedDeque

/**
 * 循环视频采样缓冲器
 *
 * 存储由 MediaCodec 编码后的视频样本 (Samples)。
 * 相比存储原始像素，这种方式内存占用极低 (几百 KB vs 几百 MB)，彻底解决 OOM 问题。
 */
class CircularVideoRecorder(
    private val bufferDurationMs: Long = 1500L
) {
    /**
     * 编码后的视频样本
     * @param data H.264/HEVC 编码数据
     * @param info 媒体缓存信息 (包含时间戳、关键帧标志等)
     */
    data class Sample(
        val data: ByteArray,
        val info: MediaCodec.BufferInfo
    )

    private val samples = ConcurrentLinkedDeque<Sample>()

    @Volatile
    var isRecording: Boolean = false
        private set

    /**
     * 开始缓存
     */
    fun startRecording() {
        samples.clear()
        isRecording = true
    }

    /**
     * 停止缓存
     */
    fun stopRecording() {
        isRecording = false
    }

    /**
     * 添加编码后的样本
     */
    fun addSample(byteBuffer: ByteBuffer, info: MediaCodec.BufferInfo) {
        if (!isRecording) return

        //PLog.v("CircularVideoRecorder", "Adding sample ts=${info.presentationTimeUs}, size=${info.size}")

        // 拷贝数据，因为 ByteBuffer 会被 MediaCodec 回收
        val data = ByteArray(info.size)
        byteBuffer.position(info.offset)
        byteBuffer.get(data)

        // 拷贝 BufferInfo
        val sampleInfo = MediaCodec.BufferInfo()
        sampleInfo.set(0, info.size, info.presentationTimeUs, info.flags)

        samples.addLast(Sample(data, sampleInfo))

        // 维持循环缓冲：移除超过时长的旧样本
        // 注意：理想情况下应保留到最近的一个 I 帧，这里先按时间简单裁剪
        trimStorage()
    }

    private fun trimStorage() {
        if (samples.isEmpty()) return

        val lastTimestamp = samples.last().info.presentationTimeUs
        val threshold = lastTimestamp - bufferDurationMs * 1000

        while (samples.size > 1) {
            val first = samples.first()
            if (first.info.presentationTimeUs < threshold) {
                samples.pollFirst()
            } else {
                break
            }
        }
    }

    /**
     * 获取最新样本的时间戳
     */
    fun getLatestTimestamp(): Long? {
        return samples.peekLast()?.info?.presentationTimeUs
    }

    /**
     * 获取当前所有缓存的样本副本
     */
    fun snapshot(): List<Sample> = samples.toList()

    /**
     * 获取指定时间戳之后的样本
     */
    fun getSamplesAfter(timestampUs: Long): List<Sample> {
        return samples.filter { it.info.presentationTimeUs > timestampUs }
    }

    /**
     * 清空
     */
    fun clear() {
        samples.clear()
    }

    /**
     * 释放 (此处不需要释放 DirectBuffer)
     */
    fun release() {
        isRecording = false
        samples.clear()
    }
}
