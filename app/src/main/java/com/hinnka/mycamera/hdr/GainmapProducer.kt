package com.hinnka.mycamera.hdr

interface GainmapProducer {
    suspend fun build(
        source: GainmapSourceSet,
        strength: Float = HdrGainmapStrength.DEFAULT
    ): GainmapResult?
}
