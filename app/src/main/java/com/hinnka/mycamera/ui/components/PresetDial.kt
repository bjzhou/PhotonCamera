package com.hinnka.mycamera.ui.components

import android.graphics.Bitmap
import androidx.compose.foundation.layout.*
import androidx.compose.material3.Icon
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.hapticfeedback.HapticFeedbackType
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalHapticFeedback
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.unit.dp
import coil.compose.SubcomposeAsyncImage
import coil.request.ImageRequest
import coil.size.Size
import coil.transform.Transformation
import com.hinnka.mycamera.R
import com.hinnka.mycamera.lut.PresetThumbnailInput
import com.hinnka.mycamera.lut.PresetThumbnailRenderer
import com.hinnka.mycamera.model.CameraPreset
import com.hinnka.mycamera.ui.icons.AppIcons
import com.hinnka.mycamera.utils.PLog
import kotlinx.coroutines.CancellationException

@Composable
fun PresetsPanel(
    activePresetId: String?,
    activePresetModified: Boolean,
    allPresets: List<CameraPreset>,
    onPresetSelected: (CameraPreset?) -> Unit,
    onManagePresets: () -> Unit,
    modifier: Modifier = Modifier,
    expanded: Boolean = false,
    compact: Boolean = false,
    thumbnail: Bitmap? = null,
    thumbnailInput: PresetThumbnailInput? = null,
    onEditPreset: ((String) -> Unit)? = null
) {
    val context = LocalContext.current
    val haptic = LocalHapticFeedback.current
    val source = remember(thumbnailInput, thumbnail) { thumbnailInput ?: thumbnail?.let(::PresetThumbnailInput) }
    val renderer = remember(context) { PresetThumbnailRenderer(context.applicationContext) }
    val select: (CameraPreset) -> Unit = { preset ->
        haptic.performHapticFeedback(HapticFeedbackType.LongPress)
        onPresetSelected(preset)
    }
    val item: @Composable (CameraPreset, Boolean, () -> Unit, Modifier) -> Unit = { preset, selected, click, cardModifier ->
        val name = presetDisplayName(preset)
        val request = remember(source, preset) {
            source?.let { snapshot ->
                val transformation = object : Transformation {
                    override val cacheKey = "preset-preview:${snapshot.cacheKey}:${preset.toJson()}"
                    override suspend fun transform(input: Bitmap, size: Size): Bitmap {
                        try {
                            return renderer.render(preset, snapshot, input)
                        } catch (cancelled: CancellationException) {
                            throw cancelled
                        } catch (error: Exception) {
                            PLog.e("PresetThumbnail", "Cannot render preset=${preset.id}, engine=${preset.rawRenderingEngine}", error)
                            throw error
                        }
                    }
                }
                ImageRequest.Builder(context).data(snapshot.bitmap)
                    .transformations(transformation).crossfade(true).build()
            }
        }
        LookThumbnailItem(
            name = if (selected && activePresetModified) "$name*" else name,
            selected = selected,
            onClick = click,
            onEditClick = onEditPreset?.let { edit -> { edit(preset.id) } },
            thumbnailOnly = compact,
            onLongClick = {
                haptic.performHapticFeedback(HapticFeedbackType.LongPress)
                onManagePresets()
            },
            modifier = cardModifier
        ) {
            SubcomposeAsyncImage(
                model = request,
                contentDescription = name,
                contentScale = ContentScale.Crop,
                modifier = Modifier.fillMaxSize(),
                loading = { PresetThumbnailPlaceholder() },
                error = { PresetThumbnailPlaceholder() }
            )
        }
    }
    if (compact) {
        CompactLookCarousel(
            options = allPresets,
            key = { it.id },
            selectedId = activePresetId,
            onSelected = select,
            // Applying a preset can reconfigure the camera. Only apply the one the user lands on.
            selectOnSettle = true,
            modifier = modifier,
            content = item
        )
    } else {
        LookOptionList(
            options = allPresets,
            key = { it.id },
            selectedIndex = allPresets.indexOfFirst { it.id == activePresetId },
            expanded = expanded,
            itemFooterHeight = lookThumbnailFooterHeight(),
            modifier = modifier
        ) { preset ->
            item(preset, activePresetId == preset.id, { select(preset) }, if (expanded) Modifier.fillMaxWidth() else Modifier)
        }
    }
}

@Composable
private fun PresetThumbnailPlaceholder() {
    Box(Modifier.fillMaxSize(), contentAlignment = androidx.compose.ui.Alignment.Center) {
        Icon(AppIcons.Image, null, tint = Color.White.copy(alpha = 0.3f), modifier = Modifier.size(20.dp))
    }
}

@Composable
internal fun presetDisplayName(preset: CameraPreset): String {
    return when (preset.id) {
        "builtin_default" -> stringResource(R.string.default_text)
        "builtin_hasselblad_natural" -> stringResource(R.string.preset_builtin_hasselblad_natural)
        "builtin_portrait" -> stringResource(R.string.preset_builtin_portrait)
        "builtin_classic_film" -> stringResource(R.string.preset_builtin_classic_film)
        "builtin_monochrome" -> stringResource(R.string.preset_builtin_monochrome)
        "builtin_cinematic" -> stringResource(R.string.preset_builtin_cinematic)
        "builtin_leica_m9_moment" -> stringResource(R.string.preset_builtin_leica_m9_moment)
        else -> preset.name
    }
}
