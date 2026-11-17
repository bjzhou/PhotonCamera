package com.hinnka.mycamera.lut

import android.content.Context
import android.graphics.Bitmap
import com.hinnka.mycamera.data.ContentRepository
import com.hinnka.mycamera.model.CameraPreset
import com.hinnka.mycamera.raw.*
import com.hinnka.mycamera.raw.fotufilm.FotufilmDocumentStorage
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import java.util.concurrent.atomic.AtomicLong

/** One immutable camera snapshot shared by every preset in a selector session. */
class PresetThumbnailInput(
    val bitmap: Bitmap,
    val professional: Boolean = false,
    val camera: RawEnginePreviewSource? = null,
    val lensId: String? = null,
    val filmTunings: Map<String, SpectralFilmTuning> = emptyMap(),
    val tone: RawToneMappingParameters = RawToneMappingParameters.DEFAULT,
) {
    val cacheKey: Long = nextKey.incrementAndGet()

    private companion object {
        val nextKey = AtomicLong()
    }
}

/** Uses the live engine's restoration/atlas, followed by the preset's actual color layers. */
class PresetThumbnailRenderer(private val context: Context) {
    suspend fun render(preset: CameraPreset, input: PresetThumbnailInput, bitmap: Bitmap): Bitmap =
        withContext(Dispatchers.IO) {
            val repository = ContentRepository.getInstance(context)
            val processor = repository.imageProcessor
            var current = bitmap
            fun replace(next: Bitmap) {
                if (current !== bitmap && current !== next) current.recycle()
                current = next
            }
            try {
                if (input.professional) {
                    val engine = RawRenderingEngine.fromPersistedName(preset.rawRenderingEngine)
                    val dcpId = preset.rawDcpIdForLens(input.lensId)
                    val dcp = dcpId?.takeIf { engine == RawRenderingEngine.AdobeCurve }?.let { id ->
                        requireNotNull(repository.getAvailableDcps().firstOrNull { it.id == id }) { "Missing preset DCP: $id" }
                    }
                    val stock = preset.rawSpectralFilmStock ?: "kodak_portra_400"
                    val tone = input.tone.withEngineToneCurveFrom(preset.rawEngineToneCurve()).copy(
                        useOppoMasterToneMap = preset.rawOppoMasterToneMap,
                        lumixPhotoStyle = LumixPhotoStyle.fromPersistedValue(preset.rawLumixPhotoStyle),
                        canonPictureStyle = CanonPictureStyle.fromPersistedValue(preset.rawCanonPictureStyle),
                        canonExposureCompensationEv = preset.rawCanonExposureCompensationEv,
                        lumixColorMatchingEnabled = preset.rawLumixColorMatchingEnabled,
                        hncsColorMatchingEnabled = preset.rawHncsColorMatchingEnabled,
                        canonUseR5ColorMatrix = preset.rawCanonUseR5ColorMatrix,
                        leicaUseM9ColorMatrix = preset.rawLeicaUseM9ColorMatrix,
                    ).normalized()
                    val resolver = RawEnginePreviewResolver(context, RawEnginePreviewSettings(
                        engine = engine,
                        dcp = dcp,
                        exposureEv = preset.rawExposureCompensation,
                        tone = tone,
                        hncsFilmCurve = HncsFilmCurveMode.fromPersistedValue(preset.rawHncsFilmCurveMode),
                        filmStock = stock,
                        filmPrint = preset.rawSpectralFilmPrint ?: "kodak_portra_endura",
                        filmTuning = (input.filmTunings[stock] ?: SpectralFilmTuning.DEFAULT).normalized(),
                        fotufilmDocument = if (engine.isFotufilm) {
                            FotufilmDocumentStorage.decode(preset.rawFotufilmDocument, "preset thumbnail ${preset.id}")
                                ?: FotufilmDocumentStorage.defaultDocument()
                        } else null,
                    ))
                    val plan = requireNotNull(resolver.resolve(input.camera)) {
                        "Camera color metadata unavailable for preset ${preset.id} (${engine.name})"
                    }
                    replace(processor.applyPreviewEngine(current, plan))
                    preset.rawBaselineLutId?.takeIf { it != "none" }?.let { id ->
                        replace(processor.applyLut(
                            current,
                            requireNotNull(repository.lutManager.loadLut(id)) { "Missing baseline LUT: $id" },
                            repository.lutManager.loadColorRecipeParams(id, BaselineColorCorrectionTarget.RAW)
                        ))
                    }
                }
                val lut = preset.lutId?.takeIf { it != "none" }?.let { id ->
                    requireNotNull(repository.lutManager.loadLut(id)) { "Missing preset LUT: $id" }
                }
                replace(processor.applyLut(current, lut, preset.effects.applyTo(preset.colorRecipe)))
                current
            } catch (error: Throwable) {
                if (current !== bitmap) current.recycle()
                throw error
            }
        }
}
