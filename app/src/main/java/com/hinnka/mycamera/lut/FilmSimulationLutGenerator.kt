package com.hinnka.mycamera.lut

import android.content.Context
import com.hinnka.mycamera.data.ContentRepository
import com.hinnka.mycamera.raw.RawEnginePreviewResolver
import com.hinnka.mycamera.raw.RawEnginePreviewSettings
import com.hinnka.mycamera.raw.RawRenderingEngine
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.ensureActive
import kotlinx.coroutines.withContext

internal object FilmSimulationLutGenerator {
    /** Bakes the film engine's pointwise sRGB mapping into the custom photo LUT library. */
    suspend fun addToLibrary(
        context: Context,
        settings: RawEnginePreviewSettings,
        name: String,
        category: String,
    ): LutInfo {
        require(settings.engine == RawRenderingEngine.Fotufilm || settings.engine == RawRenderingEngine.Spektrafilm)
        require(name.isNotBlank())
        return withContext(Dispatchers.IO) {
            val plan = requireNotNull(RawEnginePreviewResolver(context, settings).resolve(null))
            ensureActive()
            val processor = LutImageProcessor(context)
            val values = try {
                processor.bakePreviewEngineCube(plan)
            } finally {
                processor.release()
            }
            ensureActive()

            val config = LutConfig(
                size = RawEnginePreviewGl.GRID_SIZE,
                data = values,
                configDataType = LutConfig.CONFIG_DATA_TYPE_UINT16,
            )
            ContentRepository.getInstance(context).importGeneratedLut(config, name.trim(), category)
        }
    }
}
