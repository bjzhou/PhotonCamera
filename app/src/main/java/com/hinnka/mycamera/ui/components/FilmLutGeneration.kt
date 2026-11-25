package com.hinnka.mycamera.ui.components

import android.widget.Toast
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.HorizontalDivider
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.unit.dp
import androidx.lifecycle.ProcessLifecycleOwner
import androidx.lifecycle.lifecycleScope
import com.hinnka.mycamera.R
import com.hinnka.mycamera.lut.FilmSimulationLutGenerator
import com.hinnka.mycamera.raw.HncsFilmCurveMode
import com.hinnka.mycamera.raw.RawEnginePreviewSettings
import com.hinnka.mycamera.raw.RawRenderingEngine
import com.hinnka.mycamera.raw.RawToneMappingParameters
import com.hinnka.mycamera.raw.SpectralFilmSelection
import com.hinnka.mycamera.raw.SpectralFilmTuning
import com.hinnka.mycamera.raw.SpectralFilmUiInfo
import com.hinnka.mycamera.raw.fotufilm.FotufilmDocument
import com.hinnka.mycamera.raw.fotufilm.FotufilmRuntime
import com.hinnka.mycamera.ui.settings.NavigationSettingItem
import com.hinnka.mycamera.utils.PLog
import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

internal fun filmLutGenerationSettings(
    engine: RawRenderingEngine,
    exposureEv: Float,
    tone: RawToneMappingParameters,
    spectralFilmSelection: SpectralFilmSelection?,
    spectralFilmPrint: String?,
    fotufilmDocument: FotufilmDocument?,
): RawEnginePreviewSettings? {
    when (engine) {
        RawRenderingEngine.Fotufilm -> if (fotufilmDocument == null) return null
        RawRenderingEngine.Spektrafilm -> if (spectralFilmSelection == null) return null
        else -> return null
    }
    return RawEnginePreviewSettings(
        engine = engine,
        dcp = null,
        exposureEv = exposureEv,
        tone = tone.normalized(),
        hncsFilmCurve = HncsFilmCurveMode.Standard,
        filmStock = spectralFilmSelection?.id ?: "kodak_portra_400",
        filmPrint = spectralFilmPrint ?: "kodak_portra_endura",
        filmTuning = spectralFilmSelection?.tuning?.normalized() ?: SpectralFilmTuning.DEFAULT,
        fotufilmDocument = fotufilmDocument.takeIf { engine.isFotufilm },
    )
}

private data class FilmLutDraft(
    val settings: RawEnginePreviewSettings,
    val defaultName: String,
)

private const val TAG = "FilmLutGeneration"
private var isGeneratingFilmLut by mutableStateOf(false)

@Composable
internal fun FilmLutSaveAction(settings: RawEnginePreviewSettings, engineName: String) {
    val context = LocalContext.current.applicationContext
    var pending by remember { mutableStateOf<FilmLutDraft?>(null) }
    val stockId = settings.fotufilmDocument?.stockId
    val stockName = if (stockId == null) {
        SpectralFilmUiInfo.getFilmDisplayName(settings.filmStock)
    } else {
        var name by remember(stockId) { mutableStateOf(stockId) }
        LaunchedEffect(context, stockId) {
            try {
                name = withContext(Dispatchers.IO) {
                    FotufilmRuntime.stocks(context).firstOrNull { it.id == stockId }?.name ?: stockId
                }
            } catch (e: CancellationException) {
                throw e
            } catch (e: Exception) {
                PLog.w(TAG, "Unable to resolve Fotufilm stock name: $stockId", e)
            }
        }
        name
    }

    HorizontalDivider(modifier = Modifier.padding(top = 8.dp), color = Color.White.copy(alpha = 0.12f))
    NavigationSettingItem(
        title = stringResource(
            if (isGeneratingFilmLut) R.string.film_lut_generate_progress else R.string.film_lut_generate,
        ),
        description = stringResource(R.string.film_lut_generate_action_description),
        onClick = { pending = FilmLutDraft(settings, "$engineName - $stockName") },
        enabled = !isGeneratingFilmLut,
        showProgress = isGeneratingFilmLut,
    )

    val draft = pending ?: return
    GeneratedFilmLutImportDialog(
        defaultName = draft.defaultName,
        onDismiss = { pending = null },
        onConfirm = { name, category ->
            if (isGeneratingFilmLut) return@GeneratedFilmLutImportDialog
            pending = null
            isGeneratingFilmLut = true
            ProcessLifecycleOwner.get().lifecycleScope.launch {
                try {
                    FilmSimulationLutGenerator.addToLibrary(context, draft.settings, name, category)
                    Toast.makeText(context, R.string.film_lut_generate_success, Toast.LENGTH_SHORT).show()
                } catch (e: CancellationException) {
                    throw e
                } catch (e: Exception) {
                    PLog.e(TAG, "Failed to add ${draft.settings.engine} LUT to the library", e)
                    Toast.makeText(context, R.string.film_lut_generate_failed, Toast.LENGTH_SHORT).show()
                } finally {
                    isGeneratingFilmLut = false
                }
            }
        },
    )
}
