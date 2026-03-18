package com.hinnka.mycamera.hdr

class UnifiedGainmapProducer(
    private val producers: List<GainmapProducer> = listOf(
        RawGainmapProducer(),
        EstimatedSdrGainmapProducer(),
    )
) : GainmapProducer {

    override suspend fun build(source: GainmapSourceSet): GainmapResult? {
        for (producer in producers) {
            val result = producer.build(source)
            if (result != null) return result
        }
        return null
    }
}
