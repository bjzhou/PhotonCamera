package com.hinnka.mycamera.previewhook.api

import android.graphics.Bitmap
import android.opengl.GLES20
import android.opengl.GLES30
import android.util.Log
import java.lang.reflect.Field
import java.lang.reflect.InvocationHandler
import java.lang.reflect.Method
import java.lang.reflect.Proxy
import java.nio.Buffer
import java.nio.ByteBuffer
import java.nio.ByteOrder

/**
 * Hosts the real MGC lower-hook LUT stage without compile-time dependencies on
 * the obfuscated MGC GL classes. The stage is exposed to MGC as a dynamic
 * proxy that implements `nrm`.
 */
object MgcVfeReflectiveStageFactory {
    private const val TAG = "codex_lut_chain"

    private val bridge = Bridge()

    @JvmStatic
    fun createStage(nrk: Any): Any? {
        return try {
            MgcVfeLutRuntime.ensureBootstrapVerificationLut()
            val snapshot = MgcVfeLutRuntime.buildSnapshot()
            if (!snapshot.lutEnabled && !snapshot.colorRecipeEnabled) {
                return null
            }
            val qht = bridge.nrkGetContext.invoke(nrk)
            val state = StageState(qht)
            Proxy.newProxyInstance(
                bridge.nrmClass.classLoader,
                arrayOf(bridge.nrmClass),
                StageInvocationHandler(state),
            )
        } catch (t: Throwable) {
            Log.e(TAG, "failed to create reflective LUT stage", t)
            null
        }
    }

    private class StageInvocationHandler(
        private val state: StageState,
    ) : InvocationHandler {
        override fun invoke(proxy: Any, method: Method, args: Array<out Any?>?): Any? {
            return when (method.name) {
                "a" -> bridge.nzkFast.invoke(null, proxy, args!![0], args[1])
                "b" -> bridge.nzkSlow.invoke(null, proxy, args!![0], args[1], args[2])
                "c" -> bridge.stageId
                "d" -> state.qht
                "e" -> "TEST_2"
                "r" -> false
                "t" -> if (state.render(args!![0]!!, args[1]!!)) bridge.nrlSuccess else bridge.nrlFailure
                "close" -> {
                    state.close()
                    null
                }

                "toString" -> "CodexVfeReflectiveLutStage"
                "hashCode" -> System.identityHashCode(proxy)
                "equals" -> proxy === args?.getOrNull(0)
                else -> null
            }
        }
    }

    private class StageState(
        val qht: Any,
    ) {
        private var program: Any? = null
        private var copyProgram: Any? = null
        private var intermediateTexture: Any? = null
        private var intermediateCanvas: Any? = null
        private var inputWidth: Int = 0
        private var inputHeight: Int = 0
        private var uploadedSnapshotVersion: Int = -1
        private var atlasTexture: Any? = null
        private var atlasBitmap: Bitmap? = null
        private var atlasWidth: Int = 0
        private var atlasHeight: Int = 0
        private var loggedFirstFrame: Boolean = false

        fun render(inputQiu: Any, outputQjs: Any): Boolean {
            return try {
                val snapshot = MgcVfeLutRuntime.buildSnapshot()
                ensureProgram(snapshot)
                ensureIntermediate(inputQiu)
                ensureAtlasTexture(snapshot)
                renderStage(inputQiu, snapshot)
                copyToOutput(outputQjs)
                true
            } catch (t: Throwable) {
                Log.e(TAG, "reflective LUT render failed", t)
                false
            }
        }

        fun close() {
            closeQuietly(intermediateCanvas)
            intermediateCanvas = null
            closeQuietly(intermediateTexture)
            intermediateTexture = null
            closeQuietly(program)
            program = null
            closeQuietly(copyProgram)
            copyProgram = null
            closeQuietly(atlasTexture)
            atlasTexture = null
            atlasBitmap?.recycle()
            atlasBitmap = null
        }

        private fun ensureProgram(snapshot: MgcVfeLutSnapshot) {
            if (program == null) {
                program = bridge.buildProgram(
                    qht,
                    MgcVfeLutRuntime.getVfeVertexShaderSource(),
                    snapshot.atlasFragmentShader,
                )
            }
            if (copyProgram == null) {
                copyProgram = bridge.buildProgram(qht, COPY_VERTEX_SHADER, COPY_FRAGMENT_SHADER)
            }
        }

        private fun ensureIntermediate(inputQiu: Any) {
            val inputSpec = bridge.qiuGetSpec.invoke(inputQiu)
            val qfd = bridge.qheFormatField.get(inputSpec)
            val width = (bridge.qfdGetWidth.invoke(qfd) as Number).toInt()
            val height = (bridge.qfdGetHeight.invoke(qfd) as Number).toInt()
            if (intermediateTexture != null && width == inputWidth && height == inputHeight) {
                return
            }
            closeQuietly(intermediateCanvas)
            closeQuietly(intermediateTexture)
            intermediateTexture = bridge.qjvCreate.invoke(null, qht, inputSpec)
            val qlw = bridge.qlwCtor.newInstance(intermediateTexture)
            intermediateCanvas = bridge.qjsFromQlt.invoke(null, qlw)
            inputWidth = width
            inputHeight = height
        }

        private fun ensureAtlasTexture(snapshot: MgcVfeLutSnapshot) {
            val snapshotVersion = MgcVfeLutRuntime.getSnapshotVersion()
            if (snapshotVersion == uploadedSnapshotVersion) {
                return
            }
            uploadedSnapshotVersion = snapshotVersion
            if (snapshot.lutAtlasWidth <= 0 || snapshot.lutAtlasHeight <= 0) {
                closeQuietly(atlasTexture)
                atlasTexture = null
                atlasBitmap?.recycle()
                atlasBitmap = null
                return
            }
            val bitmap = buildAtlasBitmap(snapshot) ?: run {
                closeQuietly(atlasTexture)
                atlasTexture = null
                atlasBitmap?.recycle()
                atlasBitmap = null
                return
            }
            closeQuietly(atlasTexture)
            atlasTexture = null
            atlasBitmap?.recycle()
            atlasBitmap = null
            atlasWidth = snapshot.lutAtlasWidth
            atlasHeight = snapshot.lutAtlasHeight
            atlasTexture = bridge.qjvCreateFromBitmap.invoke(
                null,
                qht,
                bitmap,
                GLES20.GL_CLAMP_TO_EDGE,
            )
            atlasBitmap = bitmap
            Log.d(
                TAG,
                "uploaded reflective LUT atlas version=$snapshotVersion size=${snapshot.lutAtlasWidth}x${snapshot.lutAtlasHeight} type=${snapshot.lutAtlasUploadDataType}",
            )
        }

        private fun renderStage(inputQiu: Any, snapshot: MgcVfeLutSnapshot) {
            val targetCanvas = intermediateCanvas ?: error("intermediate canvas missing")
            val targetContext = bridge.qiaContextField.get(targetCanvas)
            val qio = bridge.createQio(targetContext, program ?: error("program missing"))
            bridge.qioBindExternal.invoke(qio, "uCameraTexture", inputQiu)
            bridge.qioBindMatrix.invoke(qio, "uMVPMatrix", MgcVfeLutRuntime.getIdentityMatrix4())
            bridge.qioBindMatrix.invoke(qio, "uSTMatrix", MgcVfeLutRuntime.getIdentityMatrix4())
            bridge.qioBindVec4.invoke(qio, "uCropRect", 0f, 0f, 1f, 1f)
            bridge.qioBindFloat.invoke(qio, "uLutSize", snapshot.lutSize.toFloat())
            bridge.qioBindFloat.invoke(qio, "uLutIntensity", snapshot.lutIntensity)
            bridge.qioBindFloat.invoke(qio, "uExposure", snapshot.exposure)
            bridge.qioBindFloat.invoke(qio, "uContrast", snapshot.contrast)
            bridge.qioBindFloat.invoke(qio, "uSaturation", snapshot.saturation)
            bridge.qioBindFloat.invoke(qio, "uTemperature", snapshot.temperature)
            bridge.qioBindFloat.invoke(qio, "uTint", snapshot.tint)
            bridge.qioBindFloat.invoke(qio, "uFade", snapshot.fade)
            bridge.qioBindFloat.invoke(qio, "uVibrance", snapshot.vibrance)
            bridge.qioBindFloat.invoke(qio, "uHighlights", snapshot.highlights)
            bridge.qioBindFloat.invoke(qio, "uShadows", snapshot.shadows)
            bridge.qioBindFloat.invoke(qio, "uToneToe", snapshot.toneToe)
            bridge.qioBindFloat.invoke(qio, "uToneShoulder", snapshot.toneShoulder)
            bridge.qioBindFloat.invoke(qio, "uTonePivot", snapshot.tonePivot)
            bridge.qioBindFloat.invoke(qio, "uFilmGrain", snapshot.filmGrain)
            bridge.qioBindFloat.invoke(qio, "uVignette", snapshot.vignette)
            bridge.qioBindFloat.invoke(qio, "uBleachBypass", snapshot.bleachBypass)
            bridge.qioBindFloat.invoke(qio, "uHalation", snapshot.halation)
            bridge.qioBindFloat.invoke(qio, "uChromaticAberration", snapshot.chromaticAberration)
            bridge.qioBindFloat.invoke(qio, "uNoise", snapshot.noise)
            bridge.qioBindFloat.invoke(qio, "uLowRes", snapshot.lowRes)
            bridge.qioBindFloat.invoke(qio, "uNoiseSeed", (System.nanoTime() and 0xFFFFFF).toFloat() / 1048576f)
            bridge.qioBindFloat.invoke(qio, "uAspectRatio", inputWidth.toFloat() / inputHeight.coerceAtLeast(1).toFloat())
            bridge.qioBindFloat.invoke(qio, "uAperture", 1.4f)
            bridge.qioBindVec2.invoke(qio, "uFocusPoint", 0.5f, 0.5f)
            bridge.qioBindVec2.invoke(qio, "uLutAtlasSize", atlasWidth.toFloat(), atlasHeight.toFloat())
            bridge.qioBindAttribute.invoke(qio, "aPosition", 0)
            bridge.qioBindAttribute.invoke(qio, "aTexCoord", 1)
            bridge.qioSetViewport.invoke(qio, 0, 0, inputWidth, inputHeight)

            val uniformMap = bridge.qioUniformMapField.get(qio) as MutableMap<Any?, Any?>
            uniformMap["uLutEnabled"] = bridge.newUniform1iBinder("uLutEnabled", if (snapshot.lutEnabled) 1 else 0)
            uniformMap["uColorRecipeEnabled"] = bridge.newUniform1iBinder("uColorRecipeEnabled", if (snapshot.colorRecipeEnabled) 1 else 0)
            uniformMap["uLutCurve"] = bridge.newUniform1iBinder("uLutCurve", snapshot.lutCurveOrdinal)
            uniformMap["uLutColorSpace"] = bridge.newUniform1iBinder("uLutColorSpace", snapshot.lutColorSpaceOrdinal)
            uniformMap["uLchHueAdjustments[0]"] = bridge.newUniform1fvBinder("uLchHueAdjustments[0]", snapshot.lchHueAdjustments)
            uniformMap["uLchChromaAdjustments[0]"] = bridge.newUniform1fvBinder("uLchChromaAdjustments[0]", snapshot.lchChromaAdjustments)
            uniformMap["uLchLightnessAdjustments[0]"] = bridge.newUniform1fvBinder("uLchLightnessAdjustments[0]", snapshot.lchLightnessAdjustments)
            if (atlasTexture != null) {
                bridge.qioBindTexture2d.invoke(qio, "uLutTexture", atlasTexture)
            }
            bridge.qioFinalize.invoke(qio)
            bridge.qioRender.invoke(qio, targetCanvas)
            if (!loggedFirstFrame) {
                loggedFirstFrame = true
                Log.d(
                    TAG,
                    "rendered reflective LUT stage frame size=${inputWidth}x${inputHeight} lutEnabled=${snapshot.lutEnabled} recipeEnabled=${snapshot.colorRecipeEnabled}",
                )
            }
        }

        private fun copyToOutput(outputQjs: Any) {
            val targetContext = bridge.qiaContextField.get(outputQjs)
            val qio = bridge.createQio(targetContext, copyProgram ?: error("copy program missing"))
            bridge.qioBindTexture2d.invoke(qio, "uImgTex", intermediateTexture ?: error("intermediate texture missing"))
            bridge.qioBindMatrix.invoke(qio, "uTransform", MgcVfeLutRuntime.getIdentityMatrix4())
            bridge.qioBindAttribute.invoke(qio, "aPosition", 0)
            bridge.qioBindAttribute.invoke(qio, "aTexCoord", 1)
            bridge.qioRender.invoke(qio, outputQjs)
        }

        private fun closeQuietly(obj: Any?) {
            if (obj == null) return
            runCatching {
                bridge.qiaClose.invoke(obj)
            }
        }

        private fun buildAtlasBitmap(snapshot: MgcVfeLutSnapshot): Bitmap? {
            val payload = snapshot.lutAtlasPayload ?: return null
            if (snapshot.lutAtlasWidth <= 0 || snapshot.lutAtlasHeight <= 0) return null
            val pixelCount = snapshot.lutAtlasWidth * snapshot.lutAtlasHeight
            val pixels = IntArray(pixelCount)
            when (snapshot.lutAtlasUploadDataType) {
                MgcVfePackedLutAtlas.UPLOAD_DATA_TYPE_FLOAT32 -> {
                    val floats = ByteBuffer.wrap(payload)
                        .order(ByteOrder.nativeOrder())
                        .asFloatBuffer()
                    var i = 0
                    while (i < pixelCount && floats.remaining() >= 3) {
                        val r = (floats.get().coerceIn(0f, 1f) * 255f + 0.5f).toInt().coerceIn(0, 255)
                        val g = (floats.get().coerceIn(0f, 1f) * 255f + 0.5f).toInt().coerceIn(0, 255)
                        val b = (floats.get().coerceIn(0f, 1f) * 255f + 0.5f).toInt().coerceIn(0, 255)
                        pixels[i] = (255 shl 24) or (r shl 16) or (g shl 8) or b
                        i += 1
                    }
                }

                else -> {
                    var src = 0
                    var dst = 0
                    while (dst < pixelCount && src + 2 < payload.size) {
                        val r = payload[src].toInt() and 0xFF
                        val g = payload[src + 1].toInt() and 0xFF
                        val b = payload[src + 2].toInt() and 0xFF
                        pixels[dst] = (255 shl 24) or (r shl 16) or (g shl 8) or b
                        src += 3
                        dst += 1
                    }
                }
            }
            return Bitmap.createBitmap(
                pixels,
                snapshot.lutAtlasWidth,
                snapshot.lutAtlasHeight,
                Bitmap.Config.ARGB_8888,
            )
        }
    }

    private class Bridge {
        val nrmClass: Class<*> = Class.forName("nrm")
        val nrkClass: Class<*> = Class.forName("nrk")
        val nzkClass: Class<*> = Class.forName("nzk")
        val nrnClass: Class<*> = Class.forName("nrn")
        val nrlClass: Class<*> = Class.forName("nrl")
        val qhtClass: Class<*> = Class.forName("qht")
        val qjsClass: Class<*> = Class.forName("qjs")
        val qjcClass: Class<*> = Class.forName("qjc")
        val qlrClass: Class<*> = Class.forName("qlr")
        val qlwClass: Class<*> = Class.forName("qlw")
        val qjvClass: Class<*> = Class.forName("qjv")
        val qiuClass: Class<*> = Class.forName("qiu")
        val qheClass: Class<*> = Class.forName("qhe")
        val qfdClass: Class<*> = Class.forName("qfd")
        val qjdClass: Class<*> = Class.forName("qjd")
        val qioClass: Class<*> = Class.forName("qio")
        val qxkClass: Class<*> = Class.forName("qxk")
        val qiaClass: Class<*> = Class.forName("qia")
        val qinClass: Class<*> = Class.forName("qin")
        val qjnClass: Class<*> = Class.forName("qjn")

        val nrkGetContext: Method = nrkClass.getMethod("f")
        val nzkFast: Method = nzkClass.getMethod("k", nrmClass, Class.forName("prw"), Class.forName("prw"))
        val nzkSlow: Method = nzkClass.getMethod("l", nrmClass, Class.forName("pge"), Class.forName("phh"), Class.forName("pge"))
        val stageId: Any = nrnClass.getField("h").get(null)
        val nrlSuccess: Any = nrlClass.getField("a").get(null)
        val nrlFailure: Any = nrlClass.getField("b").get(null)

        val qjsCompileVertex: Method = qjsClass.getMethod("h", qhtClass, String::class.java)
        val qjsCompileFragment: Method = qjsClass.getMethod("b", qhtClass, String::class.java)
        val qjsFromQlt: Method = qjsClass.getMethod("l", Class.forName("qlt"))
        val qjcCtor = qjcClass.getConstructor(qhtClass)
        val qjcAdd: Method = qjcClass.getMethod("a", Class.forName("qlt"))
        val qjcBuild: Method = qjcClass.getMethod("b")
        val qlrCtor = qlrClass.getConstructor(Any::class.java)
        val qlwCtor = qlwClass.getConstructor(Any::class.java)
        val qjvCreate: Method = qjvClass.getMethod("g", qhtClass, qheClass)
        val qjvCreateFromBitmap: Method = qjvClass.getMethod("h", qhtClass, Bitmap::class.java, Int::class.javaPrimitiveType)
        val qiuGetSpec: Method = qiuClass.getMethod("g")
        val qheFormatField: Field = qheClass.getField("a")
        val qfdGetWidth: Method = qfdClass.getMethod("b")
        val qfdGetHeight: Method = qfdClass.getMethod("a")

        val qiaContextField: Field = qiaClass.getField("b")
        val qiaClose: Method = qiaClass.getMethod("close")

        val qjdCreate: Method = qjdClass.getMethod("a", qhtClass)
        val qioFactory: Method = qioClass.getMethod("k", Class.forName("qjy"))
        val qxkBuild: Method = qxkClass.getMethod("b", qjsClass)
        val qioUniformMapField: Field = qioClass.getField("e")
        val qioBindAttribute: Method = qioClass.getMethod("b", String::class.java, Int::class.javaPrimitiveType)
        val qioBindExternal: Method = qioClass.getMethod("c", String::class.java, qiuClass)
        val qioBindTexture2d: Method = qioClass.getMethod("d", String::class.java, qjvClass)
        val qioBindFloat: Method = qioClass.getMethod("e", String::class.java, Float::class.javaPrimitiveType)
        val qioBindMatrix: Method = qioClass.getMethod("f", String::class.java, FloatArray::class.java)
        val qioBindVec2: Method = qioClass.getMethod("g", String::class.java, Float::class.javaPrimitiveType, Float::class.javaPrimitiveType)
        val qioBindVec4: Method = qioClass.getMethod(
            "i",
            String::class.java,
            Float::class.javaPrimitiveType,
            Float::class.javaPrimitiveType,
            Float::class.javaPrimitiveType,
            Float::class.javaPrimitiveType,
        )
        val qioSetViewport: Method = qioClass.getMethod(
            "j",
            Int::class.javaPrimitiveType,
            Int::class.javaPrimitiveType,
            Int::class.javaPrimitiveType,
            Int::class.javaPrimitiveType,
        )
        val qioFinalize: Method = qioClass.getMethod("a")
        val qioRender: Method = qioClass.getMethod("n", qjsClass)
        val qjnGetUniformLocation: Method = qjnClass.getMethod("b", String::class.java)

        fun buildProgram(qht: Any, vertexSource: String, fragmentSource: String): Any {
            val builder = qjcCtor.newInstance(qht)
            val vertexShader = qjsCompileVertex.invoke(null, qht, vertexSource)
            val fragmentShader = qjsCompileFragment.invoke(null, qht, fragmentSource)
            qjcAdd.invoke(builder, qlrCtor.newInstance(vertexShader))
            qjcAdd.invoke(builder, qlrCtor.newInstance(fragmentShader))
            return qjcBuild.invoke(builder)
        }

        fun createQio(qht: Any, program: Any): Any {
            val geometry = qjdCreate.invoke(null, qht)
            val builder = qioFactory.invoke(null, geometry)
            return qxkBuild.invoke(builder, program)
        }

        fun newUniform1iBinder(name: String, value: Int): Any {
            return Proxy.newProxyInstance(
                qinClass.classLoader,
                arrayOf(qinClass),
            ) { _, method, args ->
                if (method.name == "a") {
                    val qjn = args!![0]
                    val location = (qjnGetUniformLocation.invoke(qjn, name) as Number).toInt()
                    GLES20.glUniform1i(location, value)
                }
                null
            }
        }

        fun newUniform1fvBinder(name: String, values: FloatArray): Any {
            return Proxy.newProxyInstance(
                qinClass.classLoader,
                arrayOf(qinClass),
            ) { _, method, args ->
                if (method.name == "a") {
                    val qjn = args!![0]
                    val location = (qjnGetUniformLocation.invoke(qjn, name) as Number).toInt()
                    GLES20.glUniform1fv(location, values.size, values, 0)
                }
                null
            }
        }

    }

    private const val COPY_VERTEX_SHADER = """
        #version 300 es
        in vec2 aPosition;
        in vec2 aTexCoord;
        uniform mat4 uTransform;
        out vec2 texCoord;
        void main() {
          texCoord = (uTransform * vec4(aTexCoord, 0.0, 1.0)).xy;
          gl_Position = vec4(aPosition.xy, 0.0, 1.0);
        }
    """

    private const val COPY_FRAGMENT_SHADER = """
        #version 300 es
        #extension GL_EXT_YUV_target : enable
        precision highp float;
        uniform highp sampler2D uImgTex;
        in vec2 texCoord;
        layout (yuv) out vec3 outColor;
        void main() {
            outColor = rgb_2_yuv(texture(uImgTex, texCoord).rgb, itu_601_full_range);
        }
    """
}
