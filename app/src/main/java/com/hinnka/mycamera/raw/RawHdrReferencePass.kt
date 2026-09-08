package com.hinnka.mycamera.raw

/**
 * Coordinates HDR-reference rendering through the same engine pipeline used by SDR.
 *
 * The engine pass owns the shader and all engine-specific resources. This wrapper keeps the HDR
 * branch explicit at the processor level without duplicating DCP, exposure, PGTM, or tone logic.
 * The output is a scalar HDR/SDR ratio; RawOutputPass applies it to the finalized SDR color.
 */
internal class RawHdrReferencePass(
    private val engineTonePass: RawEngineTonePass,
) {
    data class Input(
        val engineInput: RawEngineTonePass.Input,
        val sceneExposureGain: Float,
        val coordinateInput: RawEngineTonePass.HdrCoordinateInput? = null,
    )

    data class Output(val textureId: Int, val width: Int, val height: Int)

    fun initialize(): Boolean = true

    fun render(input: Input): Output? {
        return engineTonePass.renderHdrReference(
            input = input.engineInput,
            sceneExposureGain = input.sceneExposureGain,
            coordinateInput = input.coordinateInput,
        )?.let { Output(it.textureId, it.width, it.height) }
    }

    fun release() = Unit
}
