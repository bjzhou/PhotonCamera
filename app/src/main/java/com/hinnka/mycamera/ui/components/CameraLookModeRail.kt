package com.hinnka.mycamera.ui.components

import androidx.compose.animation.animateColorAsState
import androidx.compose.animation.core.tween
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.offset
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.selection.selectable
import androidx.compose.foundation.selection.selectableGroup
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.Icon
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.semantics.Role
import androidx.compose.ui.unit.dp
import com.hinnka.mycamera.R
import com.hinnka.mycamera.model.LutSelectorMode
import com.hinnka.mycamera.ui.icons.AppIcons
import com.hinnka.mycamera.ui.theme.AccentColor

internal val CameraLookModeRailWidth = 44.dp
internal val CameraLookPanelSurface = Color(0xFF0A0C0F)

/** Each mode gets an equal share of the panel height. */
@Composable
internal fun CameraLookModeRail(
    selectedMode: LutSelectorMode,
    supportsPresets: Boolean,
    supportsFrames: Boolean,
    presetModified: Boolean,
    expanded: Boolean,
    onModeSelected: (LutSelectorMode) -> Unit
) {
    Column(
        modifier = Modifier.width(CameraLookModeRailWidth)
            .fillMaxHeight()
            .selectableGroup(),
        horizontalAlignment = Alignment.CenterHorizontally
    ) {
        val tabModifier = Modifier.fillMaxWidth().weight(1f)
        CameraLookModeButton(
            icon = AppIcons.ColorFilters,
            label = stringResource(R.string.filter),
            selected = selectedMode == LutSelectorMode.Style,
            onClick = { onModeSelected(LutSelectorMode.Style) },
            modifier = tabModifier
        )
        if (supportsPresets) {
            CameraLookModeButton(
                icon = AppIcons.Layers,
                label = stringResource(R.string.preset_title),
                selected = selectedMode == LutSelectorMode.Presets,
                modified = presetModified,
                onClick = { onModeSelected(LutSelectorMode.Presets) },
                modifier = tabModifier
            )
        }
        if (expanded && supportsFrames) {
            CameraLookModeButton(
                icon = AppIcons.FilterFrames,
                label = stringResource(R.string.frame),
                selected = selectedMode == LutSelectorMode.Frame,
                onClick = { onModeSelected(LutSelectorMode.Frame) },
                modifier = tabModifier
            )
        }
    }
}

@Composable
private fun CameraLookModeButton(
    icon: ImageVector,
    label: String,
    selected: Boolean,
    modified: Boolean = false,
    onClick: () -> Unit,
    modifier: Modifier
) {
    val accent = AccentColor
    val tint = animateColorAsState(
        targetValue = if (selected) accent else Color.White.copy(alpha = 0.48f),
        animationSpec = tween(180),
        label = "lookModeTint"
    )
    val background = animateColorAsState(
        targetValue = if (selected) Color(0xFF252A31) else Color.Transparent,
        animationSpec = tween(180),
        label = "lookModeBackground"
    )
    val edge = animateColorAsState(
        targetValue = if (selected) Color.White.copy(alpha = 0.12f) else Color.Transparent,
        animationSpec = tween(180),
        label = "lookModeEdge"
    )
    val shape = RoundedCornerShape(10.dp)
    Box(
        modifier = modifier
            .selectable(selected = selected, role = Role.Tab, onClick = onClick),
        contentAlignment = Alignment.Center
    ) {
        // Keep the visual button compact while the entire equal-height segment stays tappable.
        Box(
            modifier = Modifier.size(34.dp)
                .background(background.value, shape)
                .border(1.dp, edge.value, shape),
            contentAlignment = Alignment.Center
        ) {
            Box(Modifier.size(20.dp)) {
                Icon(
                    imageVector = icon,
                    contentDescription = label,
                    tint = tint.value,
                    modifier = Modifier.fillMaxSize()
                )
                if (modified) {
                    Box(
                        Modifier.align(Alignment.TopEnd).offset(x = 3.dp, y = (-2).dp).size(4.dp)
                            .background(accent, CircleShape)
                    )
                }
            }
        }
    }
}
