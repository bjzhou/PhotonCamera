package com.hinnka.mycamera.hdr

import android.os.Build

class EmbeddedGainmapProducer : GainmapProducer {
    override suspend fun build(source: GainmapSourceSet, strength: Float): GainmapResult? {
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.UPSIDE_DOWN_CAKE) return null
        
        val gainmap = source.sdrBase.gainmap ?: return null
        
        return GainmapResult(
            gainmap = gainmap,
            sourceKind = source.sourceKind,
            confidence = source.confidence
        )
    }
}
