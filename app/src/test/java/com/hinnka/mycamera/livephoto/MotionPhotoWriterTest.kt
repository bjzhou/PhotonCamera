package com.hinnka.mycamera.livephoto

import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test
import java.io.ByteArrayOutputStream
import java.io.File
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.nio.charset.StandardCharsets
import java.nio.file.Files

class MotionPhotoWriterTest {
    @Test
    fun extractsOppoMotionPhotoUsingContainerLengthWhenV2VideoLengthIsDuration() {
        val video = mp4LikeBytes("main-video")
        val privateTail = "oppo-private-tail".toByteArray(StandardCharsets.UTF_8)
        val motionPhotoBlock = video + privateTail
        val timestampUs = 1_409_059L
        val durationUs = 2_637_302L
        val file = createMotionPhotoFile(
            """
            <x:xmpmeta xmlns:x="adobe:ns:meta/">
              <rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
                <rdf:Description
                  xmlns:GCamera="http://ns.google.com/photos/1.0/camera/"
                  xmlns:OpCamera="http://ns.oplus.com/photos/1.0/camera/"
                  xmlns:Container="http://ns.google.com/photos/1.0/container/"
                  xmlns:Item="http://ns.google.com/photos/1.0/container/item/"
                  GCamera:MotionPhoto="1"
                  GCamera:MotionPhotoVersion="1"
                  GCamera:MotionPhotoPresentationTimestampUs="$timestampUs"
                  OpCamera:MotionPhotoPrimaryPresentationTimestampUs="$timestampUs"
                  OpCamera:MotionPhotoOwner="oplus"
                  OpCamera:OLivePhotoVersion="2"
                  OpCamera:VideoLength="$durationUs">
                  <Container:Directory>
                    <rdf:Seq>
                      <rdf:li rdf:parseType="Resource">
                        <Container:Item Item:Mime="image/jpeg" Item:Semantic="Primary" Item:Length="0"/>
                      </rdf:li>
                      <rdf:li rdf:parseType="Resource">
                        <Container:Item Item:Mime="image/jpeg" Item:Semantic="GainMap" Item:Length="580966"/>
                      </rdf:li>
                      <rdf:li rdf:parseType="Resource">
                        <Container:Item Item:Mime="video/mp4" Item:Semantic="MotionPhoto" Item:Length="${motionPhotoBlock.size}"/>
                      </rdf:li>
                    </rdf:Seq>
                  </Container:Directory>
                </rdf:Description>
              </rdf:RDF>
            </x:xmpmeta>
            """.trimIndent(),
            motionPhotoBlock
        )
        val output = tempFile("oppo-motion-output", ".mp4")

        assertTrue(MotionPhotoWriter.isMotionPhoto(file.absolutePath))
        assertEquals(motionPhotoBlock.size.toLong(), MotionPhotoWriter.getVideoLength(file.absolutePath))
        assertEquals(timestampUs, MotionPhotoWriter.getPresentationTimestampUs(file.absolutePath))
        assertTrue(MotionPhotoWriter.extractVideo(file.absolutePath, output.absolutePath))
        assertArrayEquals(motionPhotoBlock, output.readBytes())
    }

    @Test
    fun readsMp4MovieHeaderDurationInMicroseconds() {
        val file = tempFile("mp4-duration", ".mp4")
        file.writeBytes(mp4WithMovieHeaderDuration(timescale = 10_000, duration = 11_802))

        assertEquals(1_180_200L, Mp4DurationReader.readDurationUs(file))
    }

    @Test
    fun extractsGoogleMotionPhotoWhenPrimaryItemLengthIsZero() {
        val video = mp4LikeBytes("google-video")
        val file = createMotionPhotoFile(
            """
            <x:xmpmeta xmlns:x="adobe:ns:meta/">
              <rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
                <rdf:Description
                  xmlns:GCamera="http://ns.google.com/photos/1.0/camera/"
                  xmlns:Container="http://ns.google.com/photos/1.0/container/"
                  xmlns:Item="http://ns.google.com/photos/1.0/container/item/"
                  GCamera:MotionPhoto="1"
                  GCamera:MicroVideo="1"
                  GCamera:MicroVideoOffset="${video.size}">
                  <Container:Directory>
                    <rdf:Seq>
                      <rdf:li rdf:parseType="Resource">
                        <Container:Item Item:Mime="image/jpeg" Item:Semantic="Primary" Item:Length="0"/>
                      </rdf:li>
                      <rdf:li rdf:parseType="Resource">
                        <Container:Item Item:Mime="video/mp4" Item:Semantic="MotionPhoto" Item:Length="${video.size}"/>
                      </rdf:li>
                    </rdf:Seq>
                  </Container:Directory>
                </rdf:Description>
              </rdf:RDF>
            </x:xmpmeta>
            """.trimIndent(),
            video
        )
        val output = tempFile("google-motion-output", ".mp4")

        assertTrue(MotionPhotoWriter.isMotionPhoto(file.absolutePath))
        assertEquals(video.size.toLong(), MotionPhotoWriter.getVideoLength(file.absolutePath))
        assertTrue(MotionPhotoWriter.extractVideo(file.absolutePath, output.absolutePath))
        assertArrayEquals(video, output.readBytes())
    }

    @Test
    fun keepsLegacyMicroVideoOffsetSupport() {
        val video = mp4LikeBytes("micro-video")
        val timestampUs = 42L
        val file = createMotionPhotoFile(
            """
            <x:xmpmeta xmlns:x="adobe:ns:meta/">
              <rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
                <rdf:Description
                  xmlns:GCamera="http://ns.google.com/photos/1.0/camera/"
                  GCamera:MicroVideo="1"
                  GCamera:MicroVideoOffset="${video.size}"
                  GCamera:MicroVideoPresentationTimestampUs="$timestampUs"/>
              </rdf:RDF>
            </x:xmpmeta>
            """.trimIndent(),
            video
        )
        val output = tempFile("micro-video-output", ".mp4")

        assertTrue(MotionPhotoWriter.isMotionPhoto(file.absolutePath))
        assertEquals(video.size.toLong(), MotionPhotoWriter.getVideoLength(file.absolutePath))
        assertEquals(timestampUs, MotionPhotoWriter.getPresentationTimestampUs(file.absolutePath))
        assertTrue(MotionPhotoWriter.extractVideo(file.absolutePath, output.absolutePath))
        assertArrayEquals(video, output.readBytes())
    }

    @Test
    fun keepsLegacyLiveMarkerSupport() {
        val video = mp4LikeBytes("legacy-video")
        val marker = "LIVE_${video.size}".padEnd(20).toByteArray(StandardCharsets.UTF_8)
        val file = tempFile("legacy-live", ".jpg")
        file.writeBytes(minimalJpegWithoutXmp() + video + marker)
        val output = tempFile("legacy-live-output", ".mp4")

        assertTrue(MotionPhotoWriter.isMotionPhoto(file.absolutePath))
        assertEquals(video.size.toLong(), MotionPhotoWriter.getVideoLength(file.absolutePath))
        assertTrue(MotionPhotoWriter.extractVideo(file.absolutePath, output.absolutePath))
        assertArrayEquals(video, output.readBytes())
    }

    private fun createMotionPhotoFile(xmp: String, appendedVideo: ByteArray): File {
        val file = tempFile("motion-photo", ".jpg")
        file.writeBytes(minimalJpegWithXmp(xmp) + appendedVideo)
        return file
    }

    private fun minimalJpegWithXmp(xmp: String): ByteArray {
        val namespace = "http://ns.adobe.com/xap/1.0/\u0000".toByteArray(StandardCharsets.UTF_8)
        val payload = namespace + xmp.toByteArray(StandardCharsets.UTF_8)
        val length = payload.size + 2
        require(length <= 65535)
        return byteArrayOf(
            0xFF.toByte(),
            0xD8.toByte(),
            0xFF.toByte(),
            0xE1.toByte(),
            ((length shr 8) and 0xFF).toByte(),
            (length and 0xFF).toByte()
        ) + payload + byteArrayOf(
            0xFF.toByte(),
            0xDA.toByte(),
            0x11,
            0x22,
            0x33,
            0x44,
            0xFF.toByte(),
            0xD9.toByte()
        )
    }

    private fun minimalJpegWithoutXmp(): ByteArray {
        return byteArrayOf(
            0xFF.toByte(),
            0xD8.toByte(),
            0xFF.toByte(),
            0xDA.toByte(),
            0x11,
            0x22,
            0x33,
            0x44,
            0xFF.toByte(),
            0xD9.toByte()
        )
    }

    private fun mp4LikeBytes(label: String): ByteArray {
        val payload = label.toByteArray(StandardCharsets.UTF_8)
        return mp4FtypBytes() + payload
    }

    private fun mp4FtypBytes(): ByteArray {
        return byteArrayOf(
            0x00,
            0x00,
            0x00,
            0x18,
            'f'.code.toByte(),
            't'.code.toByte(),
            'y'.code.toByte(),
            'p'.code.toByte(),
            'm'.code.toByte(),
            'p'.code.toByte(),
            '4'.code.toByte(),
            '2'.code.toByte(),
            0x00,
            0x00,
            0x00,
            0x00,
            'i'.code.toByte(),
            's'.code.toByte(),
            'o'.code.toByte(),
            'm'.code.toByte(),
            'm'.code.toByte(),
            'p'.code.toByte(),
            '4'.code.toByte(),
            '2'.code.toByte()
        )
    }

    private fun mp4WithMovieHeaderDuration(timescale: Int, duration: Int): ByteArray {
        val mvhdPayload = ByteBuffer.allocate(20).order(ByteOrder.BIG_ENDIAN)
            .putInt(0)
            .putInt(0)
            .putInt(0)
            .putInt(timescale)
            .putInt(duration)
            .array()
        return mp4FtypBytes() + mp4Box("moov", mp4Box("mvhd", mvhdPayload))
    }

    private fun mp4Box(type: String, payload: ByteArray): ByteArray {
        val output = ByteArrayOutputStream()
        output.write(ByteBuffer.allocate(4).order(ByteOrder.BIG_ENDIAN).putInt(8 + payload.size).array())
        output.write(type.toByteArray(StandardCharsets.US_ASCII))
        output.write(payload)
        return output.toByteArray()
    }

    private fun tempFile(prefix: String, suffix: String): File {
        return Files.createTempFile(prefix, suffix).toFile().apply {
            deleteOnExit()
        }
    }
}
