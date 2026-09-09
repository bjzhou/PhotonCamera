package com.hinnka.mycamera.raw

/** OpenMP baking runs only on a persistent lens-calibration cache miss. */
internal object LumixLutNative {
    const val SIZE = 65
    const val INPUT_MAX = 16f
    const val LINEAR_FRACTION = 0.75f
    const val VERSION = 2

    init { System.loadLibrary("my-native-lib") }

    fun bake(size: Int, sourceToProfile: FloatArray, s9FromProfile: FloatArray,
             hueSatMap: DcpHueSatMap?, lookTable: DcpHueSatMap?): FloatArray {
        fun descriptor(map: DcpHueSatMap?) = map?.let {
            require(it.isValid)
            intArrayOf(it.hueDivisions, it.satDivisions, it.valueDivisions, it.encoding)
        }
        return bakeNative(size, sourceToProfile, s9FromProfile,
            descriptor(hueSatMap), hueSatMap?.values, descriptor(lookTable), lookTable?.values,
            INPUT_MAX, LINEAR_FRACTION)
    }

    private external fun bakeNative(size: Int, sourceToProfile: FloatArray, s9FromProfile: FloatArray,
                                    hueDims: IntArray?, hueData: FloatArray?,
                                    lookDims: IntArray?, lookData: FloatArray?,
                                    inputMax: Float, linearFraction: Float): FloatArray
}
