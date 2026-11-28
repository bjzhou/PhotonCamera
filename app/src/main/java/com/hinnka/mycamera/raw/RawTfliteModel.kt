package com.hinnka.mycamera.raw

import java.nio.ByteBuffer
import java.nio.ByteOrder

/** Reads constants from the single-subgraph TFLite assets used by the GPU RAW pipeline. */
internal class RawTfliteModel(bytes: ByteArray) {
    val data: ByteBuffer = ByteBuffer.wrap(bytes).order(ByteOrder.LITTLE_ENDIAN)
    private val root: Int
    val graph: Int
    val tensors: IntArray
    val operators: IntArray
    val inputTensors: IntArray
    val outputTensors: IntArray
    val operatorCodes: IntArray
    private val buffers: IntArray

    init {
        require(bytes.size >= 8 && String(bytes, 4, 4, Charsets.US_ASCII) == "TFL3")
        root = reference(0)
        require(data.getInt(field(root, 0)) == 3)
        graph = tableVector(root, 2).single()
        tensors = tableVector(graph, 0)
        inputTensors = intVector(graph, 1)
        outputTensors = intVector(graph, 2)
        operators = tableVector(graph, 3)
        operatorCodes = tableVector(root, 1)
        buffers = tableVector(root, 4)
    }

    fun builtinOpcode(operator: Int): Int {
        val opcode = operatorCodes[intField(operator, 0)]
        return intField(opcode, 3, byteField(opcode, 0))
    }

    fun tensorShape(tensorIndex: Int): IntArray = intVector(tensors[tensorIndex], 0)

    fun tensorData(tensorIndex: Int): ByteBuffer {
        val buffer = buffers[intField(tensors[tensorIndex], 2)]
        val dataField = field(buffer, 0)
        val duplicate = data.duplicate()
        if (dataField == 0) {
            duplicate.limit(0)
        } else {
            val vector = reference(dataField)
            duplicate.position(vector + Int.SIZE_BYTES)
            duplicate.limit(duplicate.position() + data.getInt(vector))
        }
        return duplicate.slice().order(ByteOrder.LITTLE_ENDIAN)
    }

    fun intField(table: Int, slot: Int, default: Int = 0): Int {
        val offset = field(table, slot)
        return if (offset == 0) default else data.getInt(offset)
    }

    fun byteField(table: Int, slot: Int, default: Int = 0): Int {
        val offset = field(table, slot)
        return if (offset == 0) default else data.get(offset).toInt() and 0xff
    }

    fun tableVector(table: Int, slot: Int): IntArray = vector(table, slot, ::reference)

    fun intVector(table: Int, slot: Int): IntArray = vector(table, slot, data::getInt)

    fun field(table: Int, slot: Int): Int {
        val vtable = table - data.getInt(table)
        val entry = Short.SIZE_BYTES * (2 + slot)
        if (entry >= unsignedShort(vtable)) return 0
        val offset = unsignedShort(vtable + entry)
        return if (offset == 0) 0 else table + offset
    }

    fun reference(field: Int): Int = field + data.getInt(field)

    private fun vector(table: Int, slot: Int, read: (Int) -> Int): IntArray {
        val offset = field(table, slot)
        if (offset == 0) return IntArray(0)
        val vector = reference(offset)
        return IntArray(data.getInt(vector)) { read(vector + Int.SIZE_BYTES * (it + 1)) }
    }

    private fun unsignedShort(offset: Int): Int = data.getShort(offset).toInt() and 0xffff
}
