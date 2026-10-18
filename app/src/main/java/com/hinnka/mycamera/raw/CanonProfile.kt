package com.hinnka.mycamera.raw

import android.content.Context
import com.google.gson.JsonParser
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.security.MessageDigest

/** Fixed EOS R5 color recipe, independent of the source sensor's ISO and HDR implementation. */
internal data class CanonRenderPlan(
    val style: CanonPictureStyle,
    val kernelWords: IntArray,
    val lookupAtlas: FloatArray,
    val icc: CanonIccProfile,
)

internal object CanonProfile {
    const val ATLAS_WIDTH = 1024
    const val ATLAS_HEIGHT = 324
    private const val ROOT = "canon/eos_r5"
    private val cache = mutableMapOf<CanonPictureStyle, CanonRenderPlan>()

    @Synchronized
    fun createRenderPlan(context: Context, style: CanonPictureStyle): CanonRenderPlan =
        cache.getOrPut(style) {
            load(style) { path -> context.assets.open(path).use { it.readBytes() } }
        }

    private fun sharedAssetPath(style: CanonPictureStyle, name: String): String {
        val assetStyle = when (name) {
            "gamma_y.i32le" -> when (style) {
                CanonPictureStyle.Landscape,
                CanonPictureStyle.Monochrome,
                CanonPictureStyle.Portrait -> "standard"
                CanonPictureStyle.Neutral -> "faithful"
                else -> style.persistedValue
            }
            "gamma_c.i32le" -> when (style) {
                CanonPictureStyle.Landscape,
                CanonPictureStyle.Monochrome -> "standard"
                CanonPictureStyle.Neutral -> "faithful"
                else -> style.persistedValue
            }
            "gamma_uv.i32le" ->
                if (style == CanonPictureStyle.Portrait) "landscape" else style.persistedValue
            "chroma_weights.u16le" -> when (style) {
                CanonPictureStyle.Landscape,
                CanonPictureStyle.Monochrome,
                CanonPictureStyle.Portrait -> "standard"
                CanonPictureStyle.Neutral -> "faithful"
                else -> style.persistedValue
            }
            else -> style.persistedValue
        }
        return "$ROOT/$assetStyle/$name"
    }

    internal fun load(style: CanonPictureStyle, read: (String) -> ByteArray): CanonRenderPlan {
        val pixelManifest = JsonParser.parseString(String(read("$ROOT/pixel-manifest.json"), Charsets.UTF_8)).asJsonObject
        require(pixelManifest["kernelRva"].asString == "0x1f5b20") { "Canon EOS R5 requires the native YUV kernel" }
        val directory = "$ROOT/${style.persistedValue}"
        val manifest = JsonParser.parseString(String(read("$directory/gamma-manifest.json"), Charsets.UTF_8)).asJsonObject
        require(manifest["modelId"].asString == "0x80000421")
        require(manifest["styleId"].asString.removePrefix("0x").toInt(16) == style.dppStyleId)
        // The native Model provider selects gamma_c from this legacy property. A missing
        // value silently compiles a different curve while gamma_y remains valid. Keep the
        // fixed R5 ISO100 reference consistent with the native seed compiler.
        require(manifest.getAsJsonObject("modelProvider")
            .getAsJsonObject("properties")["0x1000a"]?.asString == "64000000") {
            "Canon EOS R5 requires the explicit reference recipe property 0x1000a=100"
        }
        fun verified(name: String, size: Int): ByteArray {
            // Several per-style tables contain identical bytes. Read a single canonical
            // copy while still validating against the manifest for the requested style.
            val bytes = read(sharedAssetPath(style, name))
            require(bytes.size == size) { "Invalid Canon asset length: $name" }
            val expected = manifest.getAsJsonObject("files").getAsJsonObject(name)["sha256"].asString
            val hash = MessageDigest.getInstance("SHA-256").digest(bytes)
                .joinToString("") { "%02x".format(it.toInt() and 255) }
            require(hash == expected) { "Canon asset fingerprint mismatch: $name" }
            return bytes
        }
        fun ints(bytes: ByteArray): IntArray {
            val buffer = ByteBuffer.wrap(bytes).order(ByteOrder.LITTLE_ENDIAN).asIntBuffer()
            return IntArray(buffer.remaining()).also(buffer::get)
        }
        val words = ints(verified("kernel_words.i32le", 0x168 * 4))
        CanonR5ChromaMath.validate(CanonRecipeColorMath.R5PixelParameters(words))
        // Validate the original color block separately from the prepared scalar block.
        CanonRecipeColorMath.R5RecombinationParameters.fromRawParameters(
            verified("parameters.bin", 0x900),
        )
        val y = ints(verified("gamma_y.i32le", 0x20000 * 4))
        val c = ints(verified("gamma_c.i32le", 0x20000 * 4))
        val uv = ints(verified("gamma_uv.i32le", 0x10000 * 4))
        val weightBytes = verified("chroma_weights.u16le", 4096 * 2)
        val weights = ByteBuffer.wrap(weightBytes).order(ByteOrder.LITTLE_ENDIAN)
        val atlas = FloatArray(ATLAS_WIDTH * ATLAS_HEIGHT)
        var offset = 0
        for (table in arrayOf(y, c, uv)) for (value in table) {
            require(value in -16_777_216..16_777_216) { "Canon table exceeds exact Float integer range" }
            atlas[offset++] = value.toFloat()
        }
        repeat(4096) { atlas[offset++] = (weights.short.toInt() and 65535).toFloat() }
        check(offset == atlas.size)
        // The shared program declares its ICC samplers in every style. Keep valid,
        // nonaliasing bindings for Monochrome, which bypasses the ICC function entirely.
        val iccStyle = if (style == CanonPictureStyle.Monochrome) CanonPictureStyle.Standard else style
        val profiles = JsonParser.parseString(String(read("$ROOT/profiles/profile_manifest.json"), Charsets.UTF_8)).asJsonObject
        val entry = profiles.getAsJsonArray("profiles").map { it.asJsonObject }
            .single { it["style"].asString == iccStyle.persistedValue }
        fun verifiedIcc(name: String, expected: String): ByteArray {
            val bytes = read("$ROOT/profiles/$name")
            val hash = MessageDigest.getInstance("SHA-256").digest(bytes)
                .joinToString("") { "%02x".format(it.toInt() and 255) }
            require(hash == expected) { "Canon ICC fingerprint mismatch: $name" }
            return bytes
        }
        val icc = CanonIccProfile.parse(
            verifiedIcc(entry["icc"].asString, entry["sha256"].asString),
            verifiedIcc("output_srgb.icc", profiles["outputProfileSha256"].asString),
        )
        return CanonRenderPlan(style, words, atlas, icc)
    }
}
