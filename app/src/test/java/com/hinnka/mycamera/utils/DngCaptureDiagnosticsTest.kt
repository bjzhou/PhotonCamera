package com.hinnka.mycamera.utils

import com.google.gson.JsonObject
import com.google.gson.JsonParser
import kotlinx.coroutines.CompletableDeferred
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.async
import kotlinx.coroutines.awaitAll
import kotlinx.coroutines.runBlocking
import kotlinx.coroutines.withContext
import kotlinx.coroutines.yield
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class DngCaptureDiagnosticsTest {
    @Test
    fun `MakerNote is self contained UTF8 JSON with lossless escaped text`() {
        val message = "拍摄失败\nquoted: \"RAW\"; path: C:\\照片\\sample.dng; emoji: 📷"
        val log = DngCaptureLog("照片-一", mapOf("device.model" to "测试设备"), startedAtMs = 42L)
        log.put("exposure", "1/100 秒")
        log.append(123L, "WARN", "相机\"标签", message)

        val document = parse(log.makerNote(mapOf("output" to "线性 RGB\n16 bit")))
        assertEquals(1, document.get("schemaVersion").asInt)
        assertEquals("照片-一", document.get("captureId").asString)
        assertEquals(42L, document.get("startedAtMs").asLong)
        assertEquals("测试设备", document.getAsJsonObject("facts").get("device.model").asString)
        assertEquals("1/100 秒", document.getAsJsonObject("facts").get("exposure").asString)
        assertEquals("线性 RGB\n16 bit", document.getAsJsonObject("facts").get("output").asString)
        val event = document.getAsJsonArray("events").single().asJsonObject
        assertEquals(123L, event.get("timestampMs").asLong)
        assertEquals("WARN", event.get("level").asString)
        assertEquals("相机\"标签", event.get("tag").asString)
        assertEquals(message, event.get("message").asString)
    }

    @Test
    fun `256 KiB log evicts oldest whole events and preserves a contiguous suffix`() {
        val log = DngCaptureLog("bounded", emptyMap())
        val eventCount = 4_000
        repeat(eventCount) { index ->
            log.append(index.toLong(), "INFO", "处理", "$index:" + "照片\n\"".repeat(24))
        }

        val document = parse(log.makerNote())
        val events = document.getAsJsonArray("events")
        assertTrue(events.size() in 1 until eventCount)
        assertEquals((eventCount - events.size()).toLong(), document.get("droppedEvents").asLong)
        assertEquals(0L, document.get("truncatedEvents").asLong)
        val encodedEventBytes = events.sumOf { it.toString().toByteArray(Charsets.UTF_8).size + 1 }
        assertTrue(encodedEventBytes <= 256 * 1024)
        val firstRetainedIndex = eventCount - events.size()
        events.forEachIndexed { index, event ->
            assertEquals((firstRetainedIndex + index).toLong(), event.asJsonObject.get("timestampMs").asLong)
            assertTrue(event.asJsonObject.get("message").asString.startsWith("${firstRetainedIndex + index}:"))
        }
    }

    @Test
    fun `oversized message is bounded and reports truncation`() {
        val log = DngCaptureLog("long-message", emptyMap())
        log.append(1L, "ERROR", "diagnostics", "中".repeat(20_000))

        val document = parse(log.makerNote())
        assertEquals(1L, document.get("truncatedEvents").asLong)
        assertEquals(0L, document.get("droppedEvents").asLong)
        assertEquals("中".repeat(8192), document.getAsJsonArray("events").single().asJsonObject.get("message").asString)
    }

    @Test
    fun `parallel photos keep facts and logs isolated across IO and Default dispatchers`() = runBlocking {
        val logs = listOf(DngCaptureLog("photo-A", emptyMap()), DngCaptureLog("photo-B", emptyMap()))
        val ready = List(2) { CompletableDeferred<Unit>() }
        logs.mapIndexed { photo, log ->
            async(Dispatchers.Default + DngCaptureDiagnostics.context(log)) {
                ready[photo].complete(Unit)
                ready.forEach { it.await() }
                repeat(20) { index ->
                    withContext(if (index % 2 == 0) Dispatchers.IO else Dispatchers.Default) {
                        yield()
                        DngCaptureDiagnostics.put("owner", "photo-$photo")
                        DngCaptureDiagnostics.record(index.toLong(), "INFO", "capture", "photo-$photo:$index")
                    }
                }
                parse(DngCaptureDiagnostics.makerNote(mapOf("snapshot.owner" to "photo-$photo")))
            }
        }.awaitAll().forEachIndexed { photo, document ->
            assertEquals(if (photo == 0) "photo-A" else "photo-B", document.get("captureId").asString)
            assertEquals("photo-$photo", document.getAsJsonObject("facts").get("owner").asString)
            assertEquals("photo-$photo", document.getAsJsonObject("facts").get("snapshot.owner").asString)
            val events = document.getAsJsonArray("events")
            assertEquals(20, events.size())
            assertTrue(events.all { it.asJsonObject.get("message").asString.startsWith("photo-$photo:") })
        }
        withContext(Dispatchers.IO) {
            DngCaptureDiagnostics.record(99L, "INFO", "outside", "unscoped")
            DngCaptureDiagnostics.put("outside", "must not leak")
        }
        logs.forEach { log ->
            val document = parse(log.makerNote())
            assertEquals(20, document.getAsJsonArray("events").size())
            assertFalse(document.getAsJsonObject("facts").has("outside"))
        }
    }

    private fun parse(bytes: ByteArray): JsonObject {
        val payload = bytes.toString(Charsets.UTF_8)
        val prefix = "PhotonCamera\u0000"
        assertTrue(payload.startsWith(prefix))
        return JsonParser.parseString(payload.removePrefix(prefix)).asJsonObject
    }
}
