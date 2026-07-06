package com.hinnka.mycamera.gallery

import com.hinnka.mycamera.hdr.HdrGainmapStrength

object EmbeddedGainmapReusePolicy {
    fun canReuse(metadata: MediaMetadata): Boolean {
        return metadata.manualHdrEffectEnabled &&
                !metadata.hasAiDenoisedBase &&
                metadata.hasEmbeddedGainmap &&
                HdrGainmapStrength.coerce(metadata.hdrEffectStrength) == HdrGainmapStrength.DEFAULT &&
                metadata.lutId == null &&
                metadata.colorRecipeParams == null &&
                metadata.sharpening == null &&
                metadata.noiseReduction == null &&
                metadata.chromaNoiseReduction == null &&
                metadata.frameId == null &&
                metadata.cropRegion == null &&
                metadata.postCropRegion == null &&
                metadata.computationalAperture == null
    }
}
