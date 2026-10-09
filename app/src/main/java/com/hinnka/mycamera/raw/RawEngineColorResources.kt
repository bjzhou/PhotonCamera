package com.hinnka.mycamera.raw

/** Color resources shared by RAW rendering and live preview, independent of image geometry. */
internal data class RawEngineColorResources(
    val colorEngine: RawRenderingEngine,
    val toneMappingParameters: RawToneMappingParameters,
    val profileExposure: RawProfileExposureGl.Uniforms,
    val outputTransform: FloatArray,
    val dcpRenderPlan: DcpRenderPlan?,
    val applyDcpHueSatMap: Boolean,
    val spectralFilmLut: SpectralFilmLut?,
    val hncsRenderPlan: HncsRenderPlan?,
    val lumixRenderPlan: LumixRenderPlan?,
    val canonRenderPlan: CanonRenderPlan?,
    val leicaRenderPlan: LeicaRenderPlan?,
)
