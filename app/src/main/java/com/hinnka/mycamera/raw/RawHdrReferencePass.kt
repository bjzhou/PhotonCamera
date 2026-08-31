package com.hinnka.mycamera.raw

/**
 * Coordinates HDR-reference rendering through the same engine pipeline used by SDR.
 *
 * The engine pass owns the shader and all engine-specific resources. This wrapper keeps the HDR
 * branch explicit at the processor level without duplicating DCP, exposure, PGTM, or tone logic.
 */
internal class RawHdrReferencePass(
    private val engineTonePass: RawEngineTonePass,
) {
    data class Input(
        val engineInput: RawEngineTonePass.Input,
        val sdrLinearTextureId: Int,
        val coordinateInput: RawEngineTonePass.HdrCoordinateInput? = null,
    )

    data class Output(val textureId: Int, val width: Int, val height: Int)

    fun initialize(): Boolean = true

    fun render(input: Input): Output? {
        return engineTonePass.renderHdrReference(
            input = input.engineInput,
            sdrLinearTextureId = input.sdrLinearTextureId,
            coordinateInput = input.coordinateInput,
        )?.let { Output(it.textureId, it.width, it.height) }
    }

    fun release() = Unit
}
