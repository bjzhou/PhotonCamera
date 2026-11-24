package com.hinnka.mycamera.ui.components

import android.graphics.Bitmap
import androidx.compose.foundation.Image
import androidx.compose.foundation.layout.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.asImageBitmap
import androidx.compose.ui.hapticfeedback.HapticFeedbackType
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalHapticFeedback
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.hinnka.mycamera.R
import com.hinnka.mycamera.data.ContentRepository
import com.hinnka.mycamera.frame.FrameInfo
import com.hinnka.mycamera.frame.FrameRenderer
import com.hinnka.mycamera.ui.camera.ViewfinderTextShadow
import com.hinnka.mycamera.ui.icons.AppIcons
import com.hinnka.mycamera.ui.theme.AccentColor
import com.hinnka.mycamera.utils.PLog
import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext

@Composable
fun FrameSelector(
    availableFrames: List<FrameInfo>,
    currentFrameId: String?,
    onFrameSelected: (String?) -> Unit,
    modifier: Modifier = Modifier,
    expanded: Boolean = false,
    onManageFrames: (() -> Unit)? = null
) {
    val haptic = LocalHapticFeedback.current
    val options = remember(availableFrames) { listOf<FrameInfo?>(null) + availableFrames }
    val onLongClickAction: (() -> Unit)? = onManageFrames?.let { manage ->
        {
            haptic.performHapticFeedback(HapticFeedbackType.LongPress)
            manage()
        }
    }
    LookOptionList(
        options = options,
        key = { it?.let { frame -> "frame:${frame.id}" } ?: "frame:none" },
        selectedIndex = options.indexOfFirst { it?.id == currentFrameId },
        expanded = expanded,
        itemFooterHeight = lookThumbnailFooterHeight(),
        modifier = modifier
    ) { frame ->
        LookThumbnailItem(
            name = frame?.name ?: stringResource(R.string.none),
            selected = currentFrameId == frame?.id,
            onClick = { onFrameSelected(frame?.id) },
            onLongClick = onLongClickAction,
            modifier = if (expanded) Modifier.fillMaxWidth() else Modifier
        ) {
            if (frame == null) {
                Icon(AppIcons.Block, null, tint = Color.White.copy(alpha = 0.7f), modifier = Modifier.size(24.dp))
            } else {
                FrameThumbnail(frame)
            }
        }
    }
}

@Composable
private fun FrameThumbnail(frame: FrameInfo) {
    val context = LocalContext.current.applicationContext
    val repository = remember(context) { ContentRepository.getInstance(context) }
    val propertiesFlow = remember(repository, frame.id) { repository.frameManager.getCustomProperties(frame.id) }
    val properties by propertiesFlow.collectAsState(initial = emptyMap())
    val revision by repository.frameManager.previewRevision.collectAsState()
    val bitmap by produceState<Bitmap?>(initialValue = null, frame, properties, revision) {
        value = null
        value = withContext(Dispatchers.IO) {
            try {
                val template = requireNotNull(repository.frameManager.loadTemplate(frame.id)) {
                    "Missing frame template: ${frame.id}"
                }
                // Each job owns its Canvas/Paint caches; no camera bitmap or photo renderer is involved.
                FrameRenderer(context, repository.lutManager).renderFrameOnlyPreview(template, properties)
            } catch (cancelled: CancellationException) {
                throw cancelled
            } catch (error: Exception) {
                PLog.e("FrameThumbnail", "Cannot render frame=${frame.id}", error)
                null
            }
        }
    }
    val preview = remember(bitmap) { bitmap?.asImageBitmap() }
    if (preview != null) {
        Image(
            bitmap = preview,
            contentDescription = frame.name,
            contentScale = ContentScale.Fit,
            modifier = Modifier.fillMaxSize().padding(3.dp)
        )
    } else {
        Box(Modifier.fillMaxSize(), contentAlignment = Alignment.Center) {
            Icon(AppIcons.FilterFrames, null, tint = Color.White.copy(alpha = 0.3f), modifier = Modifier.size(20.dp))
        }
    }
}

/**
 * 边框控制面板
 *
 * 包含边框选择器和 App 品牌开关
 */
@Composable
fun FrameControlPanel(
    availableFrames: List<FrameInfo>,
    currentFrameId: String?,
    showAppBranding: Boolean,
    onFrameSelected: (String?) -> Unit,
    onBrandingToggle: (Boolean) -> Unit,
    modifier: Modifier = Modifier
) {
    Column(modifier = modifier) {
        // 边框选择器
        FrameSelector(
            availableFrames = availableFrames,
            currentFrameId = currentFrameId,
            onFrameSelected = onFrameSelected
        )

        // 仅当选择了边框时显示品牌开关
        if (currentFrameId != null) {
            Spacer(modifier = Modifier.height(12.dp))

            Row(
                modifier = Modifier.fillMaxWidth(),
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.SpaceBetween
            ) {
                Text(
                    text = stringResource(R.string.show_app_branding),
                    color = Color.White,
                    fontSize = 14.sp,
                    style = LocalTextStyle.current.copy(shadow = ViewfinderTextShadow)
                )

                Switch(
                    checked = showAppBranding,
                    onCheckedChange = onBrandingToggle,
                    colors = SwitchDefaults.colors(
                        checkedThumbColor = AccentColor,
                        checkedTrackColor = AccentColor.copy(alpha = 0.5f),
                        uncheckedThumbColor = Color.Gray,
                        uncheckedTrackColor = Color.Gray.copy(alpha = 0.3f)
                    )
                )
            }
        }
    }
}
