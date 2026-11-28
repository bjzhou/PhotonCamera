package com.hinnka.mycamera.raw

import android.content.Context
import android.opengl.GLES30
import android.opengl.GLES31
import com.hinnka.mycamera.utils.PLog
import java.nio.ByteBuffer
import java.nio.ByteOrder

/** Evaluates the Fast Moments coefficient model entirely in the calling GL context. */
internal class RawHdrNetCoefficientsGl {
    private val buffers = IntArray(5)
    private var firstConvolution: Program? = null
    private var convolution: Program? = null
    private var dense: Program? = null
    private var prediction: Program? = null
    private var offsets = IntArray(0)
    private var gridTexture = 0
    private var initializationFailed = false

    /**
     * Takes a 256×192 RGBA model-input texture and returns a 16×12×8 RGBA16F 3D texture.
     * The red and green channels contain the model's scale and bias before the HDR ratio adjustment.
     */
    fun run(context: Context, inputTexture: Int): Int {
        if (inputTexture == 0 || !initialize(context)) return 0
        val weights = buffers[0]
        val a = buffers[1]
        val b = buffers[2]
        val c = buffers[3]
        val global = buffers[4]

        // GPU input may have been produced by imageStore in the preceding pass.
        GLES31.glMemoryBarrier(GLES31.GL_TEXTURE_FETCH_BARRIER_BIT)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, inputTexture)
        GLES30.glBindSampler(0, 0)
        GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 2, weights)
        convolve(checkNotNull(firstConvolution), Layer.SPLAT_1, INPUT_WIDTH, INPUT_HEIGHT, 0, a)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)

        val conv = checkNotNull(convolution)
        convolve(conv, Layer.SPLAT_2, 128, 96, a, b)
        convolve(conv, Layer.SPLAT_3, 64, 48, b, a)
        convolve(conv, Layer.SPLAT_4, 32, 24, a, b)
        convolve(conv, Layer.GLOBAL_1, GRID_WIDTH, GRID_HEIGHT, b, a)
        convolve(conv, Layer.GLOBAL_2, GRID_WIDTH / 2, GRID_HEIGHT / 2, a, c)
        fullyConnected(Layer.GLOBAL_FC_1, c, a)
        fullyConnected(Layer.GLOBAL_FC_2, a, c)
        fullyConnected(Layer.GLOBAL_FC_3, c, global)
        convolve(conv, Layer.LOCAL_1, GRID_WIDTH, GRID_HEIGHT, b, a)
        convolve(conv, Layer.LOCAL_2, GRID_WIDTH, GRID_HEIGHT, a, c)

        val head = checkNotNull(prediction)
        GLES31.glUseProgram(head.id)
        GLES31.glUniform1i(head.parameter, offsets[Layer.PREDICTION.ordinal])
        GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 0, c)
        GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 1, global)
        GLES31.glBindImageTexture(0, gridTexture, 0, true, 0, GLES31.GL_WRITE_ONLY, GLES30.GL_RGBA16F)
        // Subsequent image writes must also wait for any earlier sampling of this reused grid.
        GLES31.glMemoryBarrier(GLES31.GL_SHADER_IMAGE_ACCESS_BARRIER_BIT)
        GLES31.glDispatchCompute(groups8(GRID_WIDTH), groups8(GRID_HEIGHT), GRID_DEPTH / 2)
        GLES31.glMemoryBarrier(
            GLES31.GL_TEXTURE_FETCH_BARRIER_BIT or GLES31.GL_SHADER_IMAGE_ACCESS_BARRIER_BIT or
                GLES31.GL_FRAMEBUFFER_BARRIER_BIT,
        )
        GLES31.glBindImageTexture(0, 0, 0, true, 0, GLES31.GL_WRITE_ONLY, GLES30.GL_RGBA16F)
        for (binding in 0..2) GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, binding, 0)
        val error = GLES30.glGetError()
        if (error != GLES30.GL_NO_ERROR) {
            disable("HDRNet model dispatch failed, GL error $error")
            return 0
        }
        return gridTexture
    }

    fun reset() {
        buffers.fill(0)
        firstConvolution = null
        convolution = null
        dense = null
        prediction = null
        offsets = IntArray(0)
        gridTexture = 0
        initializationFailed = false
    }

    fun release() {
        for (program in listOfNotNull(firstConvolution, convolution, dense, prediction)) {
            GLES31.glDeleteProgram(program.id)
        }
        GLES31.glDeleteBuffers(buffers.size, buffers, 0)
        if (gridTexture != 0) GLES30.glDeleteTextures(1, intArrayOf(gridTexture), 0)
        reset()
    }

    private fun initialize(context: Context): Boolean {
        if (gridTexture != 0) return true
        if (initializationFailed) return false

        val parameters = try {
            packWeights(context)
        } catch (error: Exception) {
            PLog.e(TAG, "Cannot load HDRNet model parameters", error)
            initializationFailed = true
            return false
        }
        val limit = IntArray(1)
        GLES31.glGetIntegerv(GLES31.GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS, limit, 0)
        if (limit[0] < 3) return disable("HDRNet model requires three compute storage bindings")
        GLES31.glGetIntegerv(GLES31.GL_MAX_SHADER_STORAGE_BLOCK_SIZE, limit, 0)
        if (limit[0] < parameters.weights.remaining()) {
            return disable("HDRNet weights do not fit the GPU storage block limit ${limit[0]}")
        }
        GLES31.glGetIntegerv(GLES31.GL_MAX_COMPUTE_IMAGE_UNIFORMS, limit, 0)
        if (limit[0] < 1) return disable("HDRNet model requires one compute image binding")
        GLES30.glGetIntegerv(GLES30.GL_MAX_3D_TEXTURE_SIZE, limit, 0)
        if (limit[0] < GRID_WIDTH) return disable("HDRNet coefficient grid exceeds GL_MAX_3D_TEXTURE_SIZE")

        firstConvolution = compile(convolutionShader(true), "HdrNetInputConvolution")
        convolution = compile(convolutionShader(false), "HdrNetConvolution")
        dense = compile(DENSE_SHADER, "HdrNetFullyConnected")
        prediction = compile(PREDICTION_SHADER, "HdrNetGridPrediction")
        if (firstConvolution == null || convolution == null || dense == null || prediction == null) {
            return disable("Cannot initialize GPU HDRNet programs")
        }
        offsets = parameters.offsets
        val sizeA = 128 * 96 * 8 * Float.SIZE_BYTES
        val sizeB = 64 * 48 * 16 * Float.SIZE_BYTES
        val sizeC = GRID_WIDTH * GRID_HEIGHT * 64 * Float.SIZE_BYTES
        val sizes = intArrayOf(parameters.weights.remaining(), sizeA, sizeB, sizeC, 64 * Float.SIZE_BYTES)
        GLES31.glGenBuffers(buffers.size, buffers, 0)
        for (index in sizes.indices) {
            GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, buffers[index])
            GLES31.glBufferData(
                GLES31.GL_SHADER_STORAGE_BUFFER, sizes[index], parameters.weights.takeIf { index == 0 },
                if (index == 0) GLES30.GL_STATIC_DRAW else GLES30.GL_DYNAMIC_COPY,
            )
        }
        GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, 0)

        val textures = IntArray(1)
        GLES30.glGenTextures(1, textures, 0)
        gridTexture = textures[0]
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_3D, gridTexture)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_3D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_3D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_3D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_3D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_3D, GLES30.GL_TEXTURE_WRAP_R, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexStorage3D(GLES30.GL_TEXTURE_3D, 1, GLES30.GL_RGBA16F, GRID_WIDTH, GRID_HEIGHT, GRID_DEPTH)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_3D, 0)
        val error = GLES30.glGetError()
        if (error != GLES30.GL_NO_ERROR || gridTexture == 0 || buffers.any { it == 0 }) {
            return disable("Cannot allocate HDRNet storage buffers and RGBA16F grid, GL error $error")
        }
        return true
    }

    private fun disable(message: String): Boolean {
        PLog.e(TAG, "$message on ${GLES30.glGetString(GLES30.GL_RENDERER)}")
        release()
        initializationFailed = true
        return false
    }

    private fun convolve(program: Program, layer: Layer, width: Int, height: Int, input: Int, output: Int) {
        GLES31.glUseProgram(program.id)
        if (input != 0) GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 0, input)
        GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 1, output)
        GLES31.glUniform2i(program.sourceSize, width, height)
        GLES31.glUniform4i(program.layout, layer.inputGroups, layer.outputGroups, layer.stride, offsets[layer.ordinal])
        GLES31.glUniform1i(program.parameter, if (layer.relu) 1 else 0)
        GLES31.glDispatchCompute(groups8(width / layer.stride), groups8(height / layer.stride), layer.outputGroups)
        GLES31.glMemoryBarrier(GLES31.GL_SHADER_STORAGE_BARRIER_BIT)
    }

    private fun fullyConnected(layer: Layer, input: Int, output: Int) {
        val program = checkNotNull(dense)
        GLES31.glUseProgram(program.id)
        GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 0, input)
        GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 1, output)
        GLES31.glUniform4i(program.layout, layer.inputGroups, layer.outputGroups, offsets[layer.ordinal], if (layer.relu) 1 else 0)
        GLES31.glDispatchCompute((layer.outputGroups + 31) / 32, 1, 1)
        GLES31.glMemoryBarrier(GLES31.GL_SHADER_STORAGE_BARRIER_BIT)
    }

    private data class Program(val id: Int) {
        val sourceSize = GLES31.glGetUniformLocation(id, "uSourceSize")
        val layout = GLES31.glGetUniformLocation(id, "uLayout")
        val parameter = GLES31.glGetUniformLocation(id, "uParameter")
    }

    private enum class Layer(
        val op: Int,
        val predecessor: Int,
        val inputChannels: Int,
        val outputChannels: Int,
        val kernel: Int,
        val stride: Int,
        val relu: Boolean,
    ) {
        SPLAT_1(0, -1, 4, 8, 3, 2, true),
        SPLAT_2(1, 0, 8, 16, 3, 2, true),
        SPLAT_3(2, 1, 16, 32, 3, 2, true),
        SPLAT_4(3, 2, 32, 64, 3, 2, true),
        GLOBAL_1(4, 3, 64, 64, 3, 2, true),
        GLOBAL_2(5, 4, 64, 64, 3, 2, true),
        GLOBAL_FC_1(7, 6, 768, 256, 0, 1, true),
        GLOBAL_FC_2(8, 7, 256, 128, 0, 1, true),
        GLOBAL_FC_3(9, 8, 128, 64, 0, 1, false),
        LOCAL_1(10, 3, 64, 64, 3, 1, true),
        LOCAL_2(11, 10, 64, 64, 3, 1, false),
        PREDICTION(13, 12, 64, 16, 1, 1, false);

        val taps: Int get() = if (kernel == 0) 1 else kernel * kernel
        val inputGroups: Int get() = inputChannels / 4
        val outputGroups: Int get() = outputChannels / 4
        val weightVectors: Int get() = outputGroups * (1 + taps * inputChannels)
    }

    private data class Parameters(val weights: ByteBuffer, val offsets: IntArray)

    private companion object {
        const val TAG = "RawHdrNetCoefficientsGl"
        const val MODEL_ASSET = "mgc_hdrnet/hdrnet_coefficients.tflite"
        const val INPUT_WIDTH = 256
        const val INPUT_HEIGHT = 192
        const val GRID_WIDTH = 16
        const val GRID_HEIGHT = 12
        const val GRID_DEPTH = 8

        fun groups8(size: Int): Int = (size + 7) / 8

        fun compile(source: String, label: String): Program? =
            RawGlesProgram.compileCompute(source, label).takeIf { it != 0 }?.let(::Program)

        fun packWeights(context: Context): Parameters {
            val model = RawTfliteModel(context.assets.open(MODEL_ASSET).use { it.readBytes() })
            val ops = model.operators
            val input = model.inputTensors.single()
            fun out(op: Int) = model.intVector(ops[op], 2).single()
            fun inputs(op: Int) = model.intVector(ops[op], 1)
            fun requireShape(tensor: Int, vararg shape: Int) {
                check(model.tensorShape(tensor).contentEquals(shape))
            }
            check(ops.size == 15)
            requireShape(input, 1, INPUT_HEIGHT, INPUT_WIDTH, 4)
            check(model.builtinOpcode(ops[6]) == 22 && inputs(6).first() == out(5))
            requireShape(out(5), 1, 3, 4, 64)
            requireShape(out(6), 1, 768)
            check(model.builtinOpcode(ops[12]) == 0 && inputs(12).contentEquals(intArrayOf(out(11), out(9))))
            val addOptions = model.reference(model.field(ops[12], 4))
            check(model.byteField(addOptions, 0) == 1)
            requireShape(out(12), 1, GRID_HEIGHT, GRID_WIDTH, 64)
            check(model.builtinOpcode(ops[14]) == 22 && inputs(14).first() == out(13))
            check(model.outputTensors.single() == out(14))
            requireShape(out(14), 1, GRID_HEIGHT, GRID_WIDTH, GRID_DEPTH, 1, 2)

            val weightBytes = Layer.entries.sumOf { it.weightVectors } * 4 * Float.SIZE_BYTES
            val weights = ByteBuffer.allocateDirect(weightBytes).order(ByteOrder.nativeOrder())
            val offsets = IntArray(Layer.entries.size)
            for (layer in Layer.entries) {
                val op = ops[layer.op]
                val args = inputs(layer.op)
                check(args[0] == if (layer.predecessor == -1) input else out(layer.predecessor))
                val optionField = model.field(op, 4)
                check(optionField != 0)
                val options = model.reference(optionField)
                val activation = if (layer.relu) 1 else 0
                if (layer.kernel == 0) {
                    check(model.builtinOpcode(op) == 9 && model.byteField(options, 0) == activation)
                    check(model.byteField(options, 1) == 0)
                    requireShape(args[1], layer.outputChannels, layer.inputChannels)
                } else {
                    check(model.builtinOpcode(op) == 3 && model.byteField(options, 0) == 0)
                    check(model.intField(options, 1) == layer.stride && model.intField(options, 2) == layer.stride)
                    check(model.byteField(options, 3) == activation)
                    check(model.intField(options, 4, 1) == 1 && model.intField(options, 5, 1) == 1)
                    requireShape(args[1], layer.outputChannels, layer.kernel, layer.kernel, layer.inputChannels)
                }
                check(model.byteField(model.tensors[args[1]], 1) == 0)
                val filter = model.tensorData(args[1]).asFloatBuffer()
                check(filter.remaining() == layer.outputChannels * layer.taps * layer.inputChannels)
                val biasTensor = args[2]
                val bias = if (biasTensor >= 0) {
                    requireShape(biasTensor, layer.outputChannels)
                    check(model.byteField(model.tensors[biasTensor], 1) == 0)
                    model.tensorData(biasTensor).asFloatBuffer().also { check(it.remaining() == layer.outputChannels) }
                } else {
                    null
                }
                offsets[layer.ordinal] = weights.position() / (4 * Float.SIZE_BYTES)
                // One bias vec4 followed by four filter rows for each input vec4.
                for (outputGroup in 0 until layer.outputGroups) {
                    for (lane in 0 until 4) weights.putFloat(bias?.get(outputGroup * 4 + lane) ?: 0f)
                    for (tap in 0 until layer.taps) for (inputGroup in 0 until layer.inputGroups) {
                        for (outputLane in 0 until 4) {
                            val channel = outputGroup * 4 + outputLane
                            val start = (channel * layer.taps + tap) * layer.inputChannels + inputGroup * 4
                            for (inputLane in 0 until 4) weights.putFloat(filter[start + inputLane])
                        }
                    }
                }
            }
            check(weights.position() == weightBytes)
            weights.flip()
            return Parameters(weights, offsets)
        }

        val SHADER_HEADER = """#version 310 es
            precision highp float;
            precision highp int;
            layout(std430, binding = 2) readonly buffer ModelWeights { vec4 weights[]; };

            vec4 multiplyGroup(vec4 value, int offset) {
                return vec4(dot(value, weights[offset]),
                            dot(value, weights[offset + 1]),
                            dot(value, weights[offset + 2]),
                            dot(value, weights[offset + 3]));
            }
        """.trimIndent()

        fun convolutionShader(textureInput: Boolean): String {
            val source = if (textureInput) {
                "layout(binding = 0) uniform highp sampler2D uInput;"
            } else {
                "layout(std430, binding = 0) readonly buffer InputActivation { vec4 inputValues[]; };"
            }
            val read = if (textureInput) {
                "texelFetch(uInput, sampleAt, 0)"
            } else {
                "inputValues[(sampleAt.y * uSourceSize.x + sampleAt.x) * inGroups + group]"
            }
            return SHADER_HEADER + """

                layout(local_size_x = 8, local_size_y = 8) in;
                $source
                layout(std430, binding = 1) writeonly buffer OutputActivation { vec4 outputValues[]; };
                uniform ivec2 uSourceSize;
                // Input groups, output groups, stride, weight offset.
                uniform ivec4 uLayout;
                uniform int uParameter;

                void main() {
                    ivec2 p = ivec2(gl_GlobalInvocationID.xy);
                    int outGroup = int(gl_GlobalInvocationID.z);
                    int inGroups = uLayout.x;
                    int outGroups = uLayout.y;
                    int stride = uLayout.z;
                    ivec2 size = uSourceSize / stride;
                    if (any(greaterThanEqual(p, size))) return;

                    int filterBase = uLayout.w + outGroup * (1 + 36 * inGroups);
                    vec4 sum = weights[filterBase];
                    // TFLite SAME 3x3/stride-2 on these even dimensions pads the far edges only.
                    ivec2 start = p * stride - ivec2(2 - stride);
                    for (int y = 0; y < 3; ++y) for (int x = 0; x < 3; ++x) {
                        ivec2 sampleAt = start + ivec2(x, y);
                        if (any(lessThan(sampleAt, ivec2(0))) || any(greaterThanEqual(sampleAt, uSourceSize))) continue;
                        int filterOffset = filterBase + 1 + (y * 3 + x) * 4 * inGroups;
                        for (int group = 0; group < inGroups; ++group) {
                            vec4 value = $read;
                            sum += multiplyGroup(value, filterOffset + group * 4);
                        }
                    }
                    outputValues[(p.y * size.x + p.x) * outGroups + outGroup] =
                        uParameter != 0 ? max(sum, vec4(0.0)) : sum;
                }
            """.trimIndent().let { "\n" + it }
        }

        val DENSE_SHADER = SHADER_HEADER + "\n" + """layout(local_size_x = 32) in;
            layout(std430, binding = 0) readonly buffer InputActivation { vec4 inputValues[]; };
            layout(std430, binding = 1) writeonly buffer OutputActivation { vec4 outputValues[]; };
            // Input groups, output groups, weight offset, ReLU.
            uniform ivec4 uLayout;

            void main() {
                int outGroup = int(gl_GlobalInvocationID.x);
                int inGroups = uLayout.x;
                if (outGroup >= uLayout.y) return;
                int filterBase = uLayout.z + outGroup * (1 + 4 * inGroups);
                vec4 sum = weights[filterBase];
                for (int group = 0; group < inGroups; ++group) {
                    vec4 value = inputValues[group];
                    sum += multiplyGroup(value, filterBase + 1 + group * 4);
                }
                outputValues[outGroup] = uLayout.w != 0 ? max(sum, vec4(0.0)) : sum;
            }
        """.trimIndent()

        val PREDICTION_SHADER = SHADER_HEADER + "\n" + """layout(local_size_x = 8, local_size_y = 8) in;
            layout(std430, binding = 0) readonly buffer LocalActivation { vec4 localValues[]; };
            layout(std430, binding = 1) readonly buffer GlobalActivation { vec4 globalValues[]; };
            layout(rgba16f, binding = 0) writeonly uniform highp image3D uGrid;
            uniform int uParameter;
            const ivec2 GRID_SIZE = ivec2($GRID_WIDTH, $GRID_HEIGHT);
            const int INPUT_GROUPS = 16;

            void main() {
                ivec2 p = ivec2(gl_GlobalInvocationID.xy);
                int outGroup = int(gl_GlobalInvocationID.z);
                if (any(greaterThanEqual(p, GRID_SIZE))) return;
                int filterBase = uParameter + outGroup * (1 + 4 * INPUT_GROUPS);
                int cell = (p.y * GRID_SIZE.x + p.x) * INPUT_GROUPS;
                vec4 sum = weights[filterBase];
                for (int group = 0; group < INPUT_GROUPS; ++group) {
                    vec4 value = max(localValues[cell + group] + globalValues[group], vec4(0.0));
                    sum += multiplyGroup(value, filterBase + 1 + group * 4);
                }
                imageStore(uGrid, ivec3(p, outGroup * 2), vec4(sum.xy, 0.0, 1.0));
                imageStore(uGrid, ivec3(p, outGroup * 2 + 1), vec4(sum.zw, 0.0, 1.0));
            }
        """.trimIndent()
    }
}
