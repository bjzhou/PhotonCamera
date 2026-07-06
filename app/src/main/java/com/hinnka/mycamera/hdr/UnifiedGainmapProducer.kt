package com.hinnka.mycamera.hdr

class UnifiedGainmapProducer(
    private val producers: List<GainmapProducer> = listOf(
        EmbeddedGainmapProducer(),
        GpuReferenceGainmapProducer(),
        HlgGainmapProducer(),
        EstimatedSdrGainmapProducer(),
    )
) : GainmapProducer {

    override suspend fun build(source: GainmapSourceSet, strength: Float): GainmapResult? {
        for (producer in producers) {
            val result = producer.build(source, strength)
            if (result != null) return result
        }
        return null
    }
}
