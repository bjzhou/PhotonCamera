package com.hinnka.mycamera.previewhook.api

import android.hardware.HardwareBuffer
import android.os.Build
import android.os.Parcel
import android.util.Log
import androidx.annotation.RequiresApi
import java.lang.reflect.Constructor
import java.lang.reflect.Field
import java.lang.reflect.InvocationHandler
import java.lang.reflect.Method
import java.lang.reflect.Proxy
import java.util.ArrayDeque
import java.util.concurrent.ConcurrentHashMap

object MgcAliasedStageRunner {
    private const val TAG = "codex_mtk_preview"
    private const val LEGACY_OUTPUT_FORMAT = 17
    private const val CONVERTED_OUTPUT_FORMAT = 35

    private val bridge = Bridge()
    private val states = ConcurrentHashMap<Int, StageState>()

    @JvmStatic
    fun releaseStage(stage: Any?) {
        if (stage == null) return
        states.remove(System.identityHashCode(stage))?.close()
    }

    @JvmStatic
    fun renderIfAliased(
        stage: Any?,
        inputPrw: Any?,
        outputPrw: Any?,
        inputBuffer: HardwareBuffer?,
        outputBuffer: HardwareBuffer?,
    ): Any? {
        if (stage == null || inputBuffer == null || outputBuffer == null) return null
//        val stageTag = describeStageTag(stage)
//        val inputPrwFormat = MgcMtkPreviewDebug.invokeInt(inputPrw, "a")
//        val outputPrwFormat = MgcMtkPreviewDebug.invokeInt(outputPrw, "a")
//        MgcMtkPreviewDebug.logOnce(
//            TAG,
//            "alias-entry:${stage.javaClass.simpleName}:$stageTag:${inputBuffer.format}:${outputBuffer.format}:$inputPrwFormat:$outputPrwFormat",
//        ) {
//            "alias-safe entry stage=${stage.javaClass.simpleName} stageTag=$stageTag inputPrwFormat=$inputPrwFormat outputPrwFormat=$outputPrwFormat inputHb=${MgcMtkPreviewDebug.describeBuffer(inputBuffer)} outputHb=${MgcMtkPreviewDebug.describeBuffer(outputBuffer)}"
//        }
        if (shouldBypassAliasSafe(stage, outputBuffer)) {
//            val bypassReason =
//                if (stage.javaClass.simpleName == "lns") {
//                    "lns-stage"
//                } else {
//                    "outputBuffer.format=${outputBuffer.format}"
//                }
//            MgcMtkPreviewDebug.logOnce(
//                TAG,
//                "alias-bypass:${stage.javaClass.simpleName}:$stageTag:${outputBuffer.format}",
//            ) {
//                "alias-safe bypass reason=$bypassReason stage=${stage.javaClass.simpleName} stageTag=$stageTag outputPrwFormat=$outputPrwFormat"
//            }
//            Log.d(
//                TAG,
//                "alias-safe bypassed stage=${stage.javaClass.simpleName} stageTag=${
//                    stageTag
//                }",
//            )
            return null
        }

        return runCatching {
            val state = states.getOrPut(System.identityHashCode(stage)) { StageState() }
            state.render(stage, inputPrw, outputPrw, inputBuffer, outputBuffer)
        }.onFailure {
            Log.e(TAG, "alias-safe stage runner failed stage=${stage.javaClass.simpleName}", it)
        }.getOrNull()
    }

    private fun shouldBypassAliasSafe(stage: Any, outputBuffer: HardwareBuffer): Boolean {
        if (stage.javaClass.simpleName == "lns") return true
        return outputBuffer.format != LEGACY_OUTPUT_FORMAT &&
            outputBuffer.format != CONVERTED_OUTPUT_FORMAT
    }

    private fun describeStageTag(stage: Any): String? {
        return runCatching { stage.toString() }.getOrNull()
    }

    private class StageState {
        private val reflectiveScratchHistory = ArrayDeque<HardwareBuffer>()
        private var scratchBuffer: HardwareBuffer? = null
        private var scratchWidth: Int = 0
        private var scratchHeight: Int = 0
        private var scratchFormat: Int = 0
        private var scratchUsage: Long = 0L
        private var textureCopier: Any? = null
        private var rgbTexture: Any? = null
        private var rgbCanvas: Any? = null
        private var rgbToYuvProgram: Any? = null

        fun close() {
            closeQuietly(rgbCanvas)
            rgbCanvas = null
            closeQuietly(rgbTexture)
            rgbTexture = null
            closeQuietly(textureCopier)
            textureCopier = null
            closeQuietly(rgbToYuvProgram)
            rgbToYuvProgram = null
            scratchBuffer?.close()
            scratchBuffer = null
            while (reflectiveScratchHistory.isNotEmpty()) {
                reflectiveScratchHistory.removeFirst().close()
            }
        }

        @Synchronized
        fun render(
            stage: Any,
            inputPrw: Any?,
            outputPrw: Any?,
            inputBuffer: HardwareBuffer,
            outputBuffer: HardwareBuffer,
        ): Any {
            val qht = bridge.nrmGetContext.invoke(stage)
                ?: error("stage has no GL context")
            if (describeStageTag(stage) == "CodexVfeReflectiveLutStage") {
                return renderReflectiveToFreshOutput(
                    stage,
                    qht,
                    inputPrw,
                    outputPrw,
                    inputBuffer,
                    outputBuffer
                )
            }
            val inputEgl = bridge.newEglImage(inputBuffer)
            try {
                val inputQiu = bridge.qiuFromEgl.invoke(null, qht, inputEgl)
                try {
                    val inputSpec = bridge.qiuGetSpec.invoke(inputQiu)
                    val qfd = bridge.qheFormatField.get(inputSpec)
                    ensureResources(qht, qfd, outputBuffer)

                    renderExternalToRgb(qht, inputQiu)

                    bridge.glDrain.invoke(null, qht)

                    val scratchCopyOutEgl =
                        bridge.newEglImage(scratchBuffer ?: error("scratch buffer missing"))
                    try {
                        val scratchCopyOutQjs =
                            bridge.qjsFromEgl.invoke(null, qht, scratchCopyOutEgl)
                        try {
                            renderRgbToYuv(qht, scratchCopyOutQjs)
                        } finally {
                            closeQuietly(scratchCopyOutQjs)
                        }
                    } finally {
                        closeQuietly(scratchCopyOutEgl)
                    }

                    bridge.glDrain.invoke(null, qht)

                    val scratchInEgl =
                        bridge.newEglImage(scratchBuffer ?: error("scratch buffer missing"))
                    try {
                        val scratchQiu = bridge.qiuFromEgl.invoke(null, qht, scratchInEgl)
                        try {
                            val outputEgl = bridge.newEglImage(outputBuffer)
                            try {
                                val outputQjs = bridge.qjsFromEgl.invoke(null, qht, outputEgl)
                                try {
                                    val result =
                                        bridge.nrmRender.invoke(stage, scratchQiu, outputQjs)
                                            ?: error("stage render returned null")
                                    if (result != bridge.nrlSuccess) {
                                        Log.d(
                                            TAG,
                                            "alias-safe stage skipped copy stage=${stage.javaClass.simpleName} " +
                                                    "result=$result inputPrw=${describe(inputPrw)} outputPrw=${
                                                        describe(
                                                            outputPrw
                                                        )
                                                    }",
                                        )
                                        return result
                                    }
                                } finally {
                                    closeQuietly(outputQjs)
                                }
                            } finally {
                                closeQuietly(outputEgl)
                            }
                        } finally {
                            closeQuietly(scratchQiu)
                        }
                    } finally {
                        closeQuietly(scratchInEgl)
                    }

                    bridge.glDrain.invoke(null, qht)

                    Log.d(
                        TAG,
                        "alias-safe stage applied stage=${stage.javaClass.simpleName} " +
                                "inputPrw=${describe(inputPrw)} outputPrw=${describe(outputPrw)} " +
                                "scratchHb=${describeBuffer(scratchBuffer)} outputHb=${
                                    describeBuffer(
                                        outputBuffer
                                    )
                                }",
                    )
                    return bridge.nrlSuccess
                } finally {
                    closeQuietly(inputQiu)
                }
            } finally {
                closeQuietly(inputEgl)
            }
        }

        /**
         * LUT stage rendering pipeline with proper RGBA → YUV conversion.
         *
         * The LUT stage writes RGBA output (via EGL FBO). Downstream MGC stages
         * expect YUV NV21. We must convert the RGBA result back to YUV format.
         *
         * Pipeline:
         *   1. LUT stage: input YUV → RGBA output (in native FBO)
         *   2. Blit RGBA frame to rgbCanvas → rgbTexture (via qjwCopyExternal)
         *   3. Fragment shader: read RGBA texture → write YUV to scratchBuffer
         *   4. Patch PRW chain to return scratchBuffer (NV21 with LUT applied)
         */
        private fun renderReflectiveToFreshOutput(
            stage: Any,
            qht: Any,
            inputPrw: Any?,
            outputPrw: Any?,
            inputBuffer: HardwareBuffer,
            outputBuffer: HardwareBuffer,
        ): Any {
            // Step A: ensure the RGBA intermediate texture and YUV scratch buffer
            // from the input image spec.
            val inputEgl = bridge.newEglImage(inputBuffer)
            try {
                val inputQiu = bridge.qiuFromEgl.invoke(null, qht, inputEgl)
                try {
                    val inputSpec = bridge.qiuGetSpec.invoke(inputQiu)
                    val qfdInput = bridge.qheFormatField.get(inputSpec)
                    ensureReflectiveResources(qht, qfdInput, outputBuffer)
                    // Step B: render the reflective LUT stage straight into the
                    // existing RGBA texture canvas. This avoids re-wrapping the
                    // RGBA output HardwareBuffer as an external texture on MTK.
                    val result =
                        MgcVfeReflectiveStageFactory.withDirectRgbaOutput {
                            bridge.nrmRender.invoke(stage, inputQiu, rgbCanvas ?: error("rgbCanvas missing"))
                                ?: error("stage render returned null")
                        }
                    bridge.glDrain.invoke(null, qht)
                    if (result != bridge.nrlSuccess) {
                        Log.d(TAG, "alias-safe reflective LUT failed result=$result")
                        return result
                    }

                    // Step C: convert the RGBA texture to YUV and render it into
                    // the NV21 scratch buffer that downstream stages consume.
                    val scratchEgl = bridge.newEglImage(scratchBuffer!!)
                    try {
                        val scratchQjs = bridge.qjsFromEgl.invoke(null, qht, scratchEgl)
                        try {
                            renderRgbToYuv(qht, scratchQjs)
                        } finally {
                            closeQuietly(scratchQjs)
                        }
                    } finally {
                        closeQuietly(scratchEgl)
                    }
                    bridge.glDrain.invoke(null, qht)
                } finally {
                    closeQuietly(inputQiu)
                }
            } finally {
                closeQuietly(inputEgl)
            }

            // Step D: patch PRW chain — downstream gets our scratchBuffer (YUV with LUT)
            scratchBuffer?.let { patchDeepestPrw(outputPrw, it) }
            return bridge.nrlSuccess
        }

        private fun ensureReflectiveResources(qht: Any, qfdInput: Any, outputBuffer: HardwareBuffer) {
            val reflectiveFormat =
                when (outputBuffer.format) {
                    17 -> HardwareBuffer.YCBCR_420_888
                    else -> outputBuffer.format
                }
            val reflectiveOutput =
                if (outputBuffer.format == reflectiveFormat) {
                    outputBuffer
                } else {
                    HardwareBuffer.create(
                        outputBuffer.width,
                        outputBuffer.height,
                        reflectiveFormat,
                        1,
                        outputBuffer.usage,
                    )
                }
            try {
                ensureResources(qht, qfdInput, reflectiveOutput)
                rotateReflectiveScratch(reflectiveOutput)
            } finally {
                if (reflectiveOutput !== outputBuffer) {
                    reflectiveOutput.close()
                }
            }
        }

        private fun rotateReflectiveScratch(template: HardwareBuffer) {
            val next =
                HardwareBuffer.create(
                    template.width,
                    template.height,
                    template.format,
                    1,
                    template.usage,
                )
            scratchBuffer = next
            scratchWidth = template.width
            scratchHeight = template.height
            scratchFormat = template.format
            scratchUsage = template.usage
            reflectiveScratchHistory.addLast(next)
            while (reflectiveScratchHistory.size > REFLECTIVE_SCRATCH_POOL_SIZE) {
                reflectiveScratchHistory.removeFirst().close()
            }
        }

        private fun ensureResources(qht: Any, qfd: Any, outputBuffer: HardwareBuffer) {
            val width = outputBuffer.width
            val height = outputBuffer.height
            val format = outputBuffer.format
            val usage = outputBuffer.usage
            val recreate =
                scratchBuffer == null ||
                        width != scratchWidth ||
                        height != scratchHeight ||
                        format != scratchFormat ||
                        usage != scratchUsage ||
                        textureCopier == null ||
                        rgbTexture == null ||
                        rgbCanvas == null ||
                        rgbToYuvProgram == null

            if (!recreate) return

            closeQuietly(rgbCanvas)
            rgbCanvas = null
            closeQuietly(rgbTexture)
            rgbTexture = null
            scratchBuffer?.close()
            scratchBuffer = null
            while (reflectiveScratchHistory.isNotEmpty()) {
                reflectiveScratchHistory.removeFirst().close()
            }
            textureCopier = null

            scratchBuffer = HardwareBuffer.create(width, height, format, 1, usage)
            scratchWidth = width
            scratchHeight = height
            scratchFormat = format
            scratchUsage = usage

            textureCopier = bridge.qjwCtor.newInstance(qht)
            val qhf = bridge.qhfCtor.newInstance(qfd)
            rgbTexture = bridge.qjvCreate.invoke(null, qht, qhf)
            val qlw = bridge.qlwCtor.newInstance(rgbTexture)
            rgbCanvas = bridge.qjsFromQlt.invoke(null, qlw)
            rgbToYuvProgram = bridge.buildProgram(qht, RGB_TO_YUV_VERTEX, RGB_TO_YUV_FRAGMENT)
        }

        private fun ensureScratchBufferOnly(outputBuffer: HardwareBuffer) {
            val width = outputBuffer.width
            val height = outputBuffer.height
            val format = outputBuffer.format
            val usage = outputBuffer.usage
            val recreate =
                scratchBuffer == null ||
                        width != scratchWidth ||
                        height != scratchHeight ||
                        format != scratchFormat ||
                        usage != scratchUsage
            if (!recreate) return

            scratchBuffer?.close()
            scratchBuffer = HardwareBuffer.create(width, height, format, 1, usage)
            scratchWidth = width
            scratchHeight = height
            scratchFormat = format
            scratchUsage = usage
        }

        private fun renderExternalToRgb(qht: Any, inputQiu: Any) {
            bridge.assertGlReady(qht)
            bridge.qjwCopyExternal.invoke(
                textureCopier ?: error("textureCopier missing"),
                inputQiu,
                rgbCanvas ?: error("rgbCanvas missing"),
                MgcVfeLutRuntime.getIdentityMatrix4(),
            )
        }

        private fun renderRgbToYuv(qht: Any, outputQjs: Any) {
            bridge.assertGlReady(qht)
            val qio = bridge.createQio(qht, rgbToYuvProgram ?: error("rgbToYuvProgram missing"))
            bridge.qioBindTexture2d.invoke(
                qio,
                "uImgTex",
                rgbTexture ?: error("rgbTexture missing")
            )
            bridge.qioBindMatrix.invoke(qio, "uTransform", MgcVfeLutRuntime.getIdentityMatrix4())
            bridge.qioBindAttribute.invoke(qio, "aPosition", 0)
            bridge.qioBindAttribute.invoke(qio, "aTexCoord", 1)
            bridge.qioRender.invoke(qio, outputQjs)
        }

        private fun closeQuietly(obj: Any?) {
            if (obj == null) return
            runCatching { bridge.qiaClose.invoke(obj) }
                .recoverCatching {
                    obj.javaClass.methods.firstOrNull { method ->
                        method.name == "close" && method.parameterCount == 0
                    }?.invoke(obj)
                }
        }
    }

    private class Bridge {
        private val nrmClass: Class<*> = Class.forName("nrm")
        private val qhtClass: Class<*> = Class.forName("qht")
        private val qjsClass: Class<*> = Class.forName("qjs")
        private val qjwClass: Class<*> = Class.forName("qjw")
        private val qjvClass: Class<*> = Class.forName("qjv")
        private val qiuClass: Class<*> = Class.forName("qiu")
        private val qheClass: Class<*> = Class.forName("qhe")
        private val qfdClass: Class<*> = Class.forName("qfd")
        private val qhfClass: Class<*> = Class.forName("qhf")
        private val qjcClass: Class<*> = Class.forName("qjc")
        private val qlrClass: Class<*> = Class.forName("qlr")
        private val qlwClass: Class<*> = Class.forName("qlw")
        private val qjdClass: Class<*> = Class.forName("qjd")
        private val qioClass: Class<*> = Class.forName("qio")
        private val qxkClass: Class<*> = Class.forName("qxk")
        private val qiaClass: Class<*> = Class.forName("qia")
        private val qoeClass: Class<*> = Class.forName("qoe")
        private val nrlClass: Class<*> = Class.forName("nrl")
        private val qjxClass: Class<*> = Class.forName("qjx")
        private val aClass: Class<*> = Class.forName("a")
        private val eglImageClass: Class<*> =
            Class.forName("com.google.android.libraries.oliveoil.gl.EGLImage")

        val nrmGetContext: Method = nrmClass.getMethod("d")
        val nrmRender: Method = nrmClass.getMethod("t", qiuClass, qjsClass)
        val qjwCtor: Constructor<*> = qjwClass.getConstructor(qhtClass)
        val qjwCopyExternal: Method =
            qjwClass.getMethod("c", qiuClass, qjsClass, FloatArray::class.java)
        val qiuFromEgl: Method = qiuClass.getMethod("b", qhtClass, eglImageClass)
        val qjsFromEgl: Method = qjsClass.getMethod("j", qhtClass, eglImageClass)
        val qiuGetSpec: Method = qiuClass.getMethod("g")
        val qheFormatField: Field = qheClass.getField("a")
        val qhfCtor: Constructor<*> = qhfClass.getConstructor(qfdClass)
        val qjvCreate: Method = qjvClass.getMethod("g", qhtClass, qheClass)
        val qlwCtor: Constructor<*> = qlwClass.getConstructor(Any::class.java)
        val qjsFromQlt: Method = qjsClass.getMethod("l", Class.forName("qlt"))
        val qiaClose: Method = qiaClass.getMethod("close")
        val glDrain: Method = qoeClass.getMethod("B", qhtClass)
        val nrlSuccess: Any = nrlClass.getField("a").get(null)

        private val qjsCompileVertex: Method = qjsClass.getMethod("h", qhtClass, String::class.java)
        private val qjsCompileFragment: Method =
            qjsClass.getMethod("b", qhtClass, String::class.java)
        private val qjcCtor: Constructor<*> = qjcClass.getConstructor(qhtClass)
        private val qjcAdd: Method = qjcClass.getMethod("a", Class.forName("qlt"))
        private val qjcBuild: Method = qjcClass.getMethod("b")
        private val qlrCtor: Constructor<*> = qlrClass.getConstructor(Any::class.java)
        private val qjdCreate: Method = qjdClass.getMethod("a", qhtClass)
        private val qioFactory: Method = qioClass.getMethod("k", Class.forName("qjy"))
        private val qxkBuild: Method = qxkClass.getMethod("b", qjsClass)

        val qioBindAttribute: Method =
            qioClass.getMethod("b", String::class.java, Int::class.javaPrimitiveType)
        val qioBindExternal: Method = qioClass.getMethod("c", String::class.java, qiuClass)
        val qioBindTexture2d: Method = qioClass.getMethod("d", String::class.java, qjvClass)
        val qioBindMatrix: Method =
            qioClass.getMethod("f", String::class.java, FloatArray::class.java)
        val qioRender: Method = qioClass.getMethod("n", qjsClass)
        private val eglImageCtor: Constructor<*> =
            eglImageClass.getConstructor(HardwareBuffer::class.java)
        private val qhtGetLevel: Method = qhtClass.getMethod("e")
        private val qjxAtLeast: Method = qjxClass.getMethod("b", qjxClass)
        private val qjxRequiredLevel: Field = qjxClass.getField("a")
        private val assertTrueMethod: Method =
            aClass.getMethod("au", Boolean::class.javaPrimitiveType)

        fun buildProgram(qht: Any, vertexSource: String, fragmentSource: String): Any {
            val builder = qjcCtor.newInstance(qht)
            val vertexShader =
                qjsCompileVertex.invoke(null, qht, normalizeShaderSource(vertexSource))
            val fragmentShader =
                qjsCompileFragment.invoke(null, qht, normalizeShaderSource(fragmentSource))
            qjcAdd.invoke(builder, qlrCtor.newInstance(vertexShader))
            qjcAdd.invoke(builder, qlrCtor.newInstance(fragmentShader))
            return qjcBuild.invoke(builder)
        }

        fun createQio(qht: Any, program: Any): Any {
            val geometry = qjdCreate.invoke(null, qht)
            val builder = qioFactory.invoke(null, geometry)
            return qxkBuild.invoke(builder, program)
        }

        fun assertGlReady(qht: Any) {
            val currentLevel = qhtGetLevel.invoke(qht)
            val requiredLevel = qjxRequiredLevel.get(null)
            val ok = qjxAtLeast.invoke(currentLevel, requiredLevel) as Boolean
            assertTrueMethod.invoke(null, ok)
        }

        fun newEglImage(buffer: HardwareBuffer): Any = eglImageCtor.newInstance(buffer)
    }

    private fun normalizeShaderSource(source: String): String {
        return source.removePrefix("\uFEFF").trimStart()
    }

    private data class PatchInfo(
        val target: Any,
        val chain: String,
    )

    private fun patchDeepestPrw(outputPrw: Any?, reboundBuffer: HardwareBuffer): PatchInfo? {
        if (outputPrw == null) return null
        val targetClass = runCatching { Class.forName("prt") }.getOrNull() ?: return null
        if (!targetClass.isAssignableFrom(outputPrw.javaClass)) return null
        val field = targetClass.getDeclaredField("e").apply { isAccessible = true }
        var owner: Any = outputPrw
        var current = field.get(owner) ?: return null
        val chain = ArrayList<String>()
        chain += owner.javaClass.simpleName
        while (current != null && targetClass.isAssignableFrom(current.javaClass)) {
            owner = current
            chain += owner.javaClass.simpleName
            current = field.get(owner) ?: break
        }
        current ?: return null
        chain += current.javaClass.simpleName
        if (Proxy.isProxyClass(current.javaClass)) {
            val handler = runCatching { Proxy.getInvocationHandler(current) }.getOrNull()
            if (handler is ReboundPrwHandler) {
                handler.rebind(reboundBuffer)
                val patchInfo = PatchInfo(owner, chain.joinToString("->"))
                MgcMtkPreviewDebug.logOnce(
                    TAG,
                    "patch-update:${patchInfo.chain}:${handler.cachedFormat()}",
                ) {
                    "updated prw rebound chain=${patchInfo.chain} reboundFormat=${handler.cachedFormat()}"
                }
                return patchInfo
            }
        }
        val interfaces = linkedSetOf<Class<*>>()
        collectInterfaces(current.javaClass, interfaces)
        val handler = ReboundPrwHandler(current, reboundBuffer)
        val proxy = Proxy.newProxyInstance(
            current.javaClass.classLoader,
            interfaces.toTypedArray(),
            handler,
        )
        field.set(owner, proxy)
        val patchInfo = PatchInfo(owner, chain.joinToString("->"))
        MgcMtkPreviewDebug.logOnce(
            TAG,
            "patch:${patchInfo.chain}:${reboundBuffer.format}:${reboundBuffer.width}x${reboundBuffer.height}",
        ) {
            "patched prw chain=${patchInfo.chain} rebound=${MgcMtkPreviewDebug.describeBuffer(reboundBuffer)}"
        }
        return patchInfo
    }

    private fun collectInterfaces(type: Class<*>?, out: MutableSet<Class<*>>) {
        if (type == null || type == Any::class.java) return
        type.interfaces.forEach { iface ->
            out.add(iface)
            collectInterfaces(iface, out)
        }
        collectInterfaces(type.superclass, out)
    }

    private class ReboundPrwHandler(
        val delegate: Any,
    ) : InvocationHandler {
        private var liveBuffer: HardwareBuffer? = null
        private var format: Int = 0

        init {
            rebindBuffer(null)
        }

        constructor(
            delegate: Any,
            reboundBuffer: HardwareBuffer,
        ) : this(delegate) {
            rebind(reboundBuffer)
        }

        @Synchronized
        fun rebind(reboundBuffer: HardwareBuffer) {
            rebindBuffer(reboundBuffer)
        }

        @Synchronized
        fun cachedFormat(): Int = format

        @Synchronized
        private fun duplicateCurrentBuffer(): HardwareBuffer? = liveBuffer?.let(::duplicateHardwareBuffer)

        private fun rebindBuffer(reboundBuffer: HardwareBuffer?) {
            liveBuffer?.close()
            liveBuffer = reboundBuffer?.let(::duplicateHardwareBuffer)
            format = reboundBuffer?.format ?: (MgcMtkPreviewDebug.invokeInt(delegate, "a") ?: 0)
        }

        override fun invoke(proxy: Any, method: Method, args: Array<out Any?>?): Any? {
            return when (method.name) {
                "a" -> cachedFormat()
                "f" -> duplicateCurrentBuffer() ?: method.invoke(delegate, *(args ?: emptyArray()))
                "hashCode" -> System.identityHashCode(proxy)
                "equals" -> proxy === args?.getOrNull(0)
                "toString" -> delegate.toString()
                else -> method.invoke(delegate, *(args ?: emptyArray()))
            }
        }
    }

    private const val REFLECTIVE_SCRATCH_POOL_SIZE = 4

    private fun duplicateHardwareBuffer(buffer: HardwareBuffer): HardwareBuffer {
        val parcel = Parcel.obtain()
        return try {
            buffer.writeToParcel(parcel, 0)
            parcel.setDataPosition(0)
            HardwareBuffer.CREATOR.createFromParcel(parcel)
        } finally {
            parcel.recycle()
        }
    }

    private fun describe(value: Any?): String {
        if (value == null) return "null"
        return "${value.javaClass.simpleName}@${System.identityHashCode(value)}"
    }

    private fun invokeLong(target: Any?, name: String): Long? {
        if (target == null) return null
        return runCatching {
            (target.javaClass.methods.firstOrNull { it.name == name && it.parameterCount == 0 }
                ?.invoke(target) as? Number)?.toLong()
        }.getOrNull()
    }

    private fun describeBuffer(buffer: HardwareBuffer?): String {
        if (buffer == null) return "null"
        return "HardwareBuffer@${System.identityHashCode(buffer)}" +
                "${buffer.width}x${buffer.height} format=${buffer.format} usage=${buffer.usage}"
    }

    private val RGB_TO_YUV_VERTEX = """
        #version 300 es
        in vec2 aPosition;
        in vec2 aTexCoord;
        uniform mat4 uTransform;
        out vec2 texCoord;
        void main() {
          texCoord = (uTransform * vec4(aTexCoord, 0.0, 1.0)).xy;
          gl_Position = vec4(aPosition.xy, 0.0, 1.0);
        }
    """.trimIndent()

    private val RGB_TO_YUV_FRAGMENT = """
        #version 300 es
        #extension GL_EXT_YUV_target : enable
        precision highp float;
        uniform highp sampler2D uImgTex;
        in vec2 texCoord;
        layout (yuv) out vec3 outColor;
        void main() {
          outColor = rgb_2_yuv(texture(uImgTex, texCoord).rgb, itu_601_full_range);
        }
    """.trimIndent()

}
