package com.hinnka.mycamera.raw

/** OpenMP baking runs only on a persistent lens-calibration cache miss. */
internal object EquivalentCameraLutNative {
    const val SIZE = 65
    const val INPUT_MAX = 16f
    const val LINEAR_FRACTION = 0.75f
    const val VERSION = 2

    init { System.loadLibrary("my-native-lib") }

    fun bake(size: Int, sourceToProfile: FloatArray, targetFromProfile: FloatArray,
             hueSatMap: DcpHueSatMap?, lookTable: DcpHueSatMap?): FloatArray {
        fun descriptor(map: DcpHueSatMap?) = map?.let {
            require(it.isValid)
            intArrayOf(it.hueDivisions, it.satDivisions, it.valueDivisions, it.encoding)
        }
        return bakeNative(size, sourceToProfile, targetFromProfile,
            descriptor(hueSatMap), hueSatMap?.values, descriptor(lookTable), lookTable?.values,
            INPUT_MAX, LINEAR_FRACTION)
    }

    private external fun bakeNative(size: Int, sourceToProfile: FloatArray, targetFromProfile: FloatArray,
                                    hueDims: IntArray?, hueData: FloatArray?,
                                    lookDims: IntArray?, lookData: FloatArray?,
                                    inputMax: Float, linearFraction: Float): FloatArray
}
