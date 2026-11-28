package com.hinnka.mycamera.raw

import android.content.Context
import android.opengl.GLES31
import com.hinnka.mycamera.utils.PLog
import java.nio.ByteBuffer
import java.nio.ByteOrder
import kotlin.math.exp

/** Runs the bundled Fast Moments short, long and portrait exposure heads together. */
internal class RawHdrNetExposureModelGl(private val context: Context) {
    private data class Layer(val type: Int, val side: Int, val offset: Int)
    private data class Model(val layers: List<Layer>, val head: Int)

    private var initialized = false
    private var spatialProgram = 0
    private var headProgram = 0
    private var weightsBuffer = 0
    private var featuresA = 0
    private var featuresB = 0
    private var logitsBuffer = 0
    private var models = emptyList<Model>()
    private var spatialUniforms = IntArray(0)
    private var headWeights = -1
    private val weightOffsets = IntArray(ROLE_COUNT)

    /** std430 float[3] in short, long, portrait order. */
    fun run(meteringTexture: Int, sceneBuffer: Int): Int {
        if (!initialize()) return 0
        GLES31.glUseProgram(spatialProgram)
        GLES31.glActiveTexture(GLES31.GL_TEXTURE0)
        GLES31.glBindTexture(GLES31.GL_TEXTURE_2D, meteringTexture)
        GLES31.glBindSampler(0, 0)
        GLES31.glUniform1i(spatialUniforms[0], 0)
        GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 0, weightsBuffer)
        GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 3, sceneBuffer)
        var input = featuresB
        var output = featuresA
        val layers = models.first().layers
        for ((index, layer) in layers.withIndex()) {
            for (role in 0 until ROLE_COUNT) weightOffsets[role] = models[role].layers[index].offset
            GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 1, input)
            GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 2, output)
            GLES31.glUniform1iv(spatialUniforms[1], ROLE_COUNT, weightOffsets, 0)
            GLES31.glUniform2i(spatialUniforms[2], layer.type, layer.side)
            GLES31.glDispatchCompute(layer.side / 8, layer.side / 8, ROLE_COUNT)
            GLES31.glMemoryBarrier(GLES31.GL_SHADER_STORAGE_BARRIER_BIT)
            val previousInput = input
            input = output
            output = previousInput
        }
        GLES31.glUseProgram(headProgram)
        GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 1, input)
        GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 2, logitsBuffer)
        for (role in 0 until ROLE_COUNT) weightOffsets[role] = models[role].head
        GLES31.glUniform1iv(headWeights, ROLE_COUNT, weightOffsets, 0)
        GLES31.glDispatchCompute(1, ROLE_COUNT, 1)
        GLES31.glMemoryBarrier(GLES31.GL_SHADER_STORAGE_BARRIER_BIT)
        for (binding in 0..3) GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, binding, 0)
        GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, 0)
        GLES31.glBindTexture(GLES31.GL_TEXTURE_2D, 0)
        val error = GLES31.glGetError()
        if (error == GLES31.GL_NO_ERROR) return logitsBuffer
        PLog.e(TAG, "Fast Moments exposure inference failed GL=$error")
        return 0
    }

    private fun initialize(): Boolean {
        if (initialized) return logitsBuffer != 0
        initialized = true
        val constants = ArrayList<Float>()
        models = runCatching {
            arrayOf("short", "long", "portrait").map { role ->
                val asset = "mgc_ae/${role}_scene_exposure.tflite"
                val model = context.assets.open(asset).use { RawTfliteModel(it.readBytes()) }
                packModel(model, constants)
            }.also { models ->
                val referenceLayers = models.first().layers.map { it.type to it.side }
                require(models.all { model -> model.layers.map { it.type to it.side } == referenceLayers })
            }
        }.getOrElse {
            PLog.e(TAG, "Unable to load Fast Moments exposure weights", it)
            return false
        }
        spatialProgram = RawGlesProgram.compileCompute(SPATIAL_SHADER, "HDRNet exposure spatial layers")
        headProgram = RawGlesProgram.compileCompute(HEAD_SHADER, "HDRNet exposure dense heads")
        if (spatialProgram == 0 || headProgram == 0) {
            release()
            initialized = true
            return false
        }
        spatialUniforms = arrayOf("uMetering", "uWeights[0]", "uLayer").map {
            GLES31.glGetUniformLocation(spatialProgram, it)
        }.toIntArray()
        headWeights = GLES31.glGetUniformLocation(headProgram, "uWeights[0]")
        val data = ByteBuffer.allocateDirect(constants.size * Float.SIZE_BYTES).order(ByteOrder.nativeOrder())
        data.asFloatBuffer().put(constants.toFloatArray())
        val buffers = IntArray(4)
        GLES31.glGenBuffers(buffers.size, buffers, 0)
        weightsBuffer = buffers[0]
        featuresA = buffers[1]
        featuresB = buffers[2]
        logitsBuffer = buffers[3]
        GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, weightsBuffer)
        GLES31.glBufferData(GLES31.GL_SHADER_STORAGE_BUFFER, data.capacity(), data, GLES31.GL_STATIC_DRAW)
        val featureBytes = ROLE_COUNT * 64 * 64 * 16 * Float.SIZE_BYTES
        for (buffer in buffers.drop(1)) {
            GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, buffer)
            val bytes = if (buffer == logitsBuffer) ROLE_COUNT * Float.SIZE_BYTES else featureBytes
            GLES31.glBufferData(GLES31.GL_SHADER_STORAGE_BUFFER, bytes, null, GLES31.GL_DYNAMIC_COPY)
        }
        GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, 0)
        val error = GLES31.glGetError()
        if (buffers.all { it != 0 } && error == GLES31.GL_NO_ERROR) return true
        PLog.e(TAG, "Fast Moments exposure buffer allocation failed GL=$error")
        release()
        initialized = true
        return false
    }

    private fun packModel(model: RawTfliteModel, constants: MutableList<Float>): Model {
        val pointOperators = model.operators.filter { model.builtinOpcode(it) == CONV_2D }
        val depthOperators = model.operators.filter { model.builtinOpcode(it) == DEPTHWISE_CONV_2D }
        val denseOperators = model.operators.filter { model.builtinOpcode(it) == FULLY_CONNECTED }
        require(pointOperators.size == 17 && depthOperators.size == 12 && denseOperators.size == 2)

        fun pointParameters(operator: Int, expectedInput: Int): Pair<FloatArray, FloatArray> {
            val inputs = model.intVector(operator, 1)
            require(model.tensorShape(inputs[1]).contentEquals(intArrayOf(16, 1, 1, expectedInput)))
            return model.floats(inputs[1], 16 * expectedInput) to model.floats(inputs[2], 16)
        }

        // The branch for absent semantic maps has a spatially uniform input, so it can
        // be evaluated once and folded into the following fusion bias. The other input
        // remains the full 64x64 log-RGB/scene-brightness tensor.
        fun semanticProjection(operator: Int, input: FloatArray): FloatArray {
            val (weights, biases) = pointParameters(operator, input.size)
            return FloatArray(16) { channel ->
                var projected = biases[channel]
                for (index in input.indices) projected += weights[channel * input.size + index] * input[index]
                projected / (1f + exp(-projected))
            }
        }

        val semantic = semanticProjection(
            pointOperators[1],
            semanticProjection(pointOperators[0], floatArrayOf(0f, 0f, 0f, 0.05f, 0f)),
        )
        fun packPoint(operator: Int, type: Int, inputChannels: Int, foldSemantic: Boolean = false): Layer {
            val (weights, biases) = pointParameters(operator, if (foldSemantic) 32 else inputChannels)
            val offset = constants.size / 4
            for (channel in 0 until 16) {
                var bias = biases[channel]
                if (foldSemantic) for (index in semantic.indices) {
                    bias += weights[channel * 32 + 16 + index] * semantic[index]
                }
                constants.add(bias)
            }
            val sourceDepth = if (foldSemantic) 32 else inputChannels
            for (channel in 0 until 16) for (index in 0 until inputChannels) {
                constants.add(weights[channel * sourceDepth + index])
            }
            val side = model.tensorShape(model.intVector(operator, 2).single())[1]
            require(side in setOf(8, 16, 32, 64))
            return Layer(type, side, offset)
        }

        val layers = ArrayList<Layer>()
        layers.add(packPoint(pointOperators[2], PROJECT_COLOR, 4))
        layers.add(packPoint(pointOperators[3], POINTWISE, 16))
        layers.add(packPoint(pointOperators[4], POINTWISE, 16, foldSemantic = true))
        for (operator in model.operators.dropWhile { it != pointOperators[4] }.drop(1)) {
            when (model.builtinOpcode(operator)) {
                CONV_2D -> layers.add(packPoint(operator, POINTWISE, 16))
                DEPTHWISE_CONV_2D -> {
                    val inputs = model.intVector(operator, 1)
                    val shape = model.tensorShape(inputs[1])
                    val kernel = shape[1]
                    require(kernel in 2..3 && shape.contentEquals(intArrayOf(1, kernel, kernel, 16)))
                    val side = model.tensorShape(model.intVector(operator, 2).single())[1]
                    require(side in setOf(8, 16, 32, 64))
                    layers.add(Layer(if (kernel == 2) DEPTH_STRIDE_TWO else DEPTH_SYMMETRIC, side, constants.size / 4))
                    constants.addAll(model.floats(inputs[2], 16).asList())
                    constants.addAll(model.floats(inputs[1], kernel * kernel * 16).asList())
                }
            }
        }

        val head = constants.size / 4
        val denseFirst = model.intVector(denseOperators[0], 1)
        val denseLast = model.intVector(denseOperators[1], 1)
        require(model.tensorShape(denseFirst[1]).contentEquals(intArrayOf(16, 1024)))
        require(model.tensorShape(denseLast[1]).contentEquals(intArrayOf(1, 16)))
        val weightsTensor = model.tensors[denseFirst[1]]
        require(model.byteField(weightsTensor, 1) == TFLITE_INT8)
        val quantization = model.reference(model.field(weightsTensor, 4))
        val scaleBits = model.intVector(quantization, 2)
        require(scaleBits.size == 1 || scaleBits.size == 16)
        val zeroVector = model.reference(model.field(quantization, 3))
        val zeros = model.data.getInt(zeroVector)
        require(zeros == scaleBits.size)
        require((0 until zeros).all { model.data.getLong(zeroVector + 4 + 8 * it) == 0L })
        val options = model.reference(model.field(denseOperators[0], 4))
        require(model.byteField(options, 3) == 1)
        constants.addAll(model.floats(denseFirst[2], 16).asList())
        repeat(16) { constants.add(Float.fromBits(scaleBits[if (scaleBits.size == 1) 0 else it])) }
        val quantized = model.tensorData(denseFirst[1])
        require(quantized.remaining() == 16 * 1024)
        repeat(16 * 1024) { constants.add(quantized.get().toFloat()) }
        constants.addAll(model.floats(denseLast[1], 16).asList())
        constants.add(model.floats(denseLast[2], 1).single())
        repeat(3) { constants.add(0f) }
        return Model(layers, head)
    }

    private fun RawTfliteModel.floats(index: Int, count: Int): FloatArray {
        require(byteField(tensors[index], 1) == 0)
        val buffer = tensorData(index)
        require(buffer.remaining() == count * Float.SIZE_BYTES)
        return FloatArray(count).also { buffer.asFloatBuffer().get(it) }
    }

    fun reset() {
        initialized = false
        spatialProgram = 0
        headProgram = 0
        weightsBuffer = 0
        featuresA = 0
        featuresB = 0
        logitsBuffer = 0
        models = emptyList()
    }

    fun release() {
        for (program in intArrayOf(spatialProgram, headProgram)) if (program != 0) GLES31.glDeleteProgram(program)
        GLES31.glDeleteBuffers(4, intArrayOf(weightsBuffer, featuresA, featuresB, logitsBuffer), 0)
        reset()
    }

    private companion object {
        const val TAG = "RawHdrNetExposureModel"
        const val ROLE_COUNT = 3
        const val CONV_2D = 3
        const val DEPTHWISE_CONV_2D = 4
        const val FULLY_CONNECTED = 9
        const val TFLITE_INT8 = 9
        const val PROJECT_COLOR = 0
        const val POINTWISE = 1
        const val DEPTH_SYMMETRIC = 2
        const val DEPTH_STRIDE_TWO = 3

        val SPATIAL_SHADER = """
            #version 310 es
            precision highp float;
            precision highp int;
            layout(local_size_x=8, local_size_y=8) in;
            layout(std430, binding=0) readonly buffer Constants { vec4 weights[]; };
            layout(std430, binding=1) readonly buffer InputFeatures { vec4 inputFeatures[]; };
            layout(std430, binding=2) writeonly buffer OutputFeatures { vec4 outputFeatures[]; };
            layout(std430, binding=3) readonly buffer Scene { float logSceneBrightness; };
            uniform highp sampler2D uMetering;
            uniform int uWeights[3];
            uniform ivec2 uLayer;
            const int roleStride = 64 * 64 * 4;

            void main() {
                ivec2 p = ivec2(gl_GlobalInvocationID.xy);
                int role = int(gl_WorkGroupID.z);
                int roleOffset = role * roleStride;
                int type = uLayer.x;
                int side = uLayer.y;
                int w = uWeights[role];
                int target = roleOffset + (p.y * side + p.x) * 4;
                vec4 activation[4];
                for (int group = 0; group < 4; ++group) activation[group] = weights[w + group];
                if (type == 0) {
                    vec3 linear = texelFetch(uMetering, p, 0).rgb;
                    vec4 point = vec4(log(linear + 1e-6), logSceneBrightness);
                    for (int row = 0; row < 16; ++row) {
                        activation[row / 4][row % 4] += dot(point, weights[w + 4 + row]);
                    }
                } else if (type == 1) {
                    vec4 t0 = inputFeatures[target];
                    vec4 t1 = inputFeatures[target + 1];
                    vec4 t2 = inputFeatures[target + 2];
                    vec4 t3 = inputFeatures[target + 3];
                    for (int row = 0; row < 16; ++row) {
                        int index = w + 4 + row * 4;
                        activation[row / 4][row % 4] += dot(t0, weights[index]) + dot(t1, weights[index + 1]) +
                            dot(t2, weights[index + 2]) + dot(t3, weights[index + 3]);
                    }
                } else {
                    // The graph explicitly applies one pixel of SYMMETRIC padding to
                    // each 3x3 depthwise convolution. Stride-two 2x2 has valid padding.
                    int kernel = type == 2 ? 3 : 2;
                    int sourceSide = type == 2 ? side : 2 * side;
                    ivec2 origin = type == 2 ? p - 1 : 2 * p;
                    for (int y = 0; y < kernel; ++y) for (int x = 0; x < kernel; ++x) {
                        ivec2 samplePoint = clamp(origin + ivec2(x, y), ivec2(0), ivec2(sourceSide - 1));
                        int index = roleOffset + (samplePoint.y * sourceSide + samplePoint.x) * 4;
                        int filterOffset = w + 4 + (y * kernel + x) * 4;
                        for (int group = 0; group < 4; ++group) {
                            activation[group] += inputFeatures[index + group] * weights[filterOffset + group];
                        }
                    }
                }
                for (int group = 0; group < 4; ++group) {
                    vec4 value = activation[group];
                    outputFeatures[target + group] = type < 2 ? value / (1.0 + exp(-value)) : value;
                }
            }
        """.trimIndent()

        val HEAD_SHADER = """
            #version 310 es
            precision highp float;
            precision highp int;
            layout(local_size_x=128) in;
            layout(std430, binding=0) readonly buffer Constants { vec4 weights[]; };
            layout(std430, binding=1) readonly buffer InputFeatures { vec4 inputFeatures[]; };
            layout(std430, binding=2) writeonly buffer HeadResults { float headLogit[]; };
            uniform int uWeights[3];
            shared vec2 ranges[128];
            shared ivec4 sums[4][128];

            float roundAway(float value) { return sign(value) * floor(abs(value) + 0.5); }
            vec4 roundAway(vec4 value) { return sign(value) * floor(abs(value) + 0.5); }

            void main() {
                int lane = int(gl_LocalInvocationIndex);
                int role = int(gl_WorkGroupID.y);
                int base = role * 64 * 64 * 4;
                vec4 first = inputFeatures[base + 2 * lane];
                vec4 second = inputFeatures[base + 2 * lane + 1];
                vec4 low = min(first, second);
                vec4 high = max(first, second);
                ranges[lane] = vec2(min(min(low.x, low.y), min(low.z, low.w)),
                    max(max(high.x, high.y), max(high.z, high.w)));
                barrier();
                for (int step = 64; step > 0; step /= 2) {
                    if (lane < step) {
                        vec2 a = ranges[lane];
                        vec2 b = ranges[lane + step];
                        ranges[lane] = vec2(min(a.x, b.x), max(a.y, b.y));
                    }
                    barrier();
                }
                vec2 range = vec2(min(0.0, ranges[0].x), max(0.0, ranges[0].y));
                float scale = (range.y - range.x) / 255.0;
                float inverseScale = scale > 0.0 ? 1.0 / scale : 0.0;
                float zeroFromMin = -128.0 - range.x * inverseScale;
                float zeroFromMax = 127.0 - range.y * inverseScale;
                float minError = 128.0 + abs(range.x * inverseScale);
                float maxError = 127.0 + abs(range.y * inverseScale);
                float zero = clamp(roundAway(minError < maxError ? zeroFromMin : zeroFromMax), -128.0, 127.0);
                ivec4 q0 = ivec4(clamp(roundAway(first * inverseScale + zero), -128.0, 127.0) - zero);
                ivec4 q1 = ivec4(clamp(roundAway(second * inverseScale + zero), -128.0, 127.0) - zero);
                int w = uWeights[role];
                for (int group = 0; group < 4; ++group) {
                    ivec4 accumulator;
                    for (int channel = 0; channel < 4; ++channel) {
                        int row = group * 4 + channel;
                        int index = w + 8 + row * 256 + 2 * lane;
                        ivec4 products = q0 * ivec4(weights[index]) + q1 * ivec4(weights[index + 1]);
                        accumulator[channel] = products.x + products.y + products.z + products.w;
                    }
                    sums[group][lane] = accumulator;
                }
                barrier();
                for (int step = 64; step > 0; step /= 2) {
                    if (lane < step) {
                        for (int group = 0; group < 4; ++group) sums[group][lane] += sums[group][lane + step];
                    }
                    barrier();
                }
                if (lane == 0) {
                    float result = weights[w + 4108].x;
                    for (int group = 0; group < 4; ++group) {
                        vec4 value = vec4(sums[group][0]) * (scale * weights[w + 4 + group]) + weights[w + group];
                        result += dot(value / (1.0 + exp(-value)), weights[w + 4104 + group]);
                    }
                    headLogit[role] = result;
                }
            }
        """.trimIndent()
    }
}
