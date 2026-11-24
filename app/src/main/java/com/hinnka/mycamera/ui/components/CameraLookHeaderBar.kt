package com.hinnka.mycamera.ui.components

import androidx.compose.animation.animateColorAsState
import androidx.compose.animation.core.tween
import androidx.compose.foundation.background
import androidx.compose.foundation.basicMarquee
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.horizontalScroll
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.RowScope
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.offset
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.selection.selectable
import androidx.compose.foundation.selection.selectableGroup
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.Icon
import androidx.compose.material3.LocalTextStyle
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.semantics.Role
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.hinnka.mycamera.R
import com.hinnka.mycamera.model.LutSelectorMode
import com.hinnka.mycamera.ui.camera.ViewfinderTextShadow
import com.hinnka.mycamera.ui.theme.AccentColor

internal val CameraLookPanelSurface = Color(0xFF0A0C0F)
private val HeaderSegmentContainerColor = Color.White.copy(alpha = 0.06f)
private val HeaderSegmentContainerBorder = Color.White.copy(alpha = 0.10f)
private val HeaderSegmentSelectedBackground = Color(0xFF282E36)
private val HeaderActionIconBackground = Color.White.copy(alpha = 0.08f)
private val HeaderActionIconBorder = Color.White.copy(alpha = 0.16f)
internal val CameraLookSubBarLineHeight = 16.sp
internal val CameraLookSubBarTabVerticalPadding = 3.dp
internal val CameraLookSubBarIndicatorSpacing = 2.dp
internal val CameraLookSubBarIndicatorHeight = 2.dp

internal data class CameraLookHeaderIconAction(
    val icon: ImageVector,
    val contentDescription: String,
    val emphasized: Boolean = false,
    val onClick: () -> Unit
)

/**
 * 相机 LUT / 预设 / 边框面板的一级顶栏：
 * 左侧为文字分组切换器，右侧为当前分组的纯图标操作（编辑 / 新建 / 管理）。
 */
@Composable
internal fun CameraLookHeaderBar(
    selectedMode: LutSelectorMode,
    supportsPresets: Boolean,
    supportsFrames: Boolean,
    presetModified: Boolean,
    onModeSelected: (LutSelectorMode) -> Unit,
    actions: List<CameraLookHeaderIconAction> = emptyList(),
    modifier: Modifier = Modifier
) {
    Row(
        modifier = modifier
            .fillMaxWidth()
            .padding(horizontal = 10.dp, vertical = 6.dp),
        horizontalArrangement = Arrangement.spacedBy(8.dp),
        verticalAlignment = Alignment.CenterVertically
    ) {
        CameraLookModeSegmentGroup(
            selectedMode = selectedMode,
            supportsPresets = supportsPresets,
            supportsFrames = supportsFrames,
            presetModified = presetModified,
            onModeSelected = onModeSelected,
            modifier = Modifier.weight(1f)
        )

        if (actions.isNotEmpty()) {
            Row(
                horizontalArrangement = Arrangement.spacedBy(6.dp),
                verticalAlignment = Alignment.CenterVertically
            ) {
                actions.forEach { action ->
                    CameraLookHeaderIconButton(
                        icon = action.icon,
                        contentDescription = action.contentDescription,
                        emphasized = action.emphasized,
                        onClick = action.onClick
                    )
                }
            }
        }
    }
}

@Composable
private fun CameraLookModeSegmentGroup(
    selectedMode: LutSelectorMode,
    supportsPresets: Boolean,
    supportsFrames: Boolean,
    presetModified: Boolean,
    onModeSelected: (LutSelectorMode) -> Unit,
    modifier: Modifier = Modifier
) {
    val containerShape = RoundedCornerShape(12.dp)
    Box(
        modifier = modifier,
        contentAlignment = Alignment.CenterStart
    ) {
        Row(
            modifier = Modifier
                .horizontalScroll(rememberScrollState())
                .clip(containerShape)
                .background(HeaderSegmentContainerColor)
                .border(1.dp, HeaderSegmentContainerBorder, containerShape)
                .padding(2.dp)
                .selectableGroup(),
            horizontalArrangement = Arrangement.spacedBy(2.dp),
            verticalAlignment = Alignment.CenterVertically
        ) {
            CameraLookModeSegmentTab(
                label = stringResource(R.string.filter),
                selected = selectedMode == LutSelectorMode.Style,
                onClick = { onModeSelected(LutSelectorMode.Style) }
            )
            if (supportsPresets) {
                CameraLookModeSegmentTab(
                    label = stringResource(R.string.preset_title),
                    selected = selectedMode == LutSelectorMode.Presets,
                    modified = presetModified,
                    onClick = { onModeSelected(LutSelectorMode.Presets) }
                )
            }
            if (supportsFrames) {
                CameraLookModeSegmentTab(
                    label = stringResource(R.string.frame),
                    selected = selectedMode == LutSelectorMode.Frame,
                    onClick = { onModeSelected(LutSelectorMode.Frame) }
                )
            }
        }
    }
}

@Composable
private fun CameraLookModeSegmentTab(
    label: String,
    selected: Boolean,
    modified: Boolean = false,
    onClick: () -> Unit
) {
    val shape = RoundedCornerShape(9.dp)
    val textColor = animateColorAsState(
        targetValue = if (selected) AccentColor else Color.White.copy(alpha = 0.72f),
        animationSpec = tween(160),
        label = "lookSegmentTextColor"
    )
    val backgroundColor = animateColorAsState(
        targetValue = if (selected) HeaderSegmentSelectedBackground else Color.Transparent,
        animationSpec = tween(160),
        label = "lookSegmentBgColor"
    )
    val borderColor = animateColorAsState(
        targetValue = if (selected) AccentColor.copy(alpha = 0.35f) else Color.Transparent,
        animationSpec = tween(160),
        label = "lookSegmentBorderColor"
    )

    Box(
        modifier = Modifier
            .clip(shape)
            .background(backgroundColor.value, shape)
            .border(1.dp, borderColor.value, shape)
            .selectable(selected = selected, role = Role.Tab, onClick = onClick)
            .padding(horizontal = 9.dp, vertical = 4.dp),
        contentAlignment = Alignment.Center
    ) {
        Row(
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.spacedBy(3.dp)
        ) {
            Text(
                text = label,
                color = textColor.value,
                fontSize = 11.sp,
                lineHeight = 14.sp,
                fontWeight = if (selected) FontWeight.SemiBold else FontWeight.Medium,
                maxLines = 1,
                softWrap = false,
                style = LocalTextStyle.current.copy(shadow = ViewfinderTextShadow)
            )
            if (modified) {
                Box(
                    modifier = Modifier
                        .offset(y = (-2).dp)
                        .size(4.dp)
                        .background(AccentColor, CircleShape)
                )
            }
        }
    }
}

@Composable
private fun CameraLookHeaderIconButton(
    icon: ImageVector,
    contentDescription: String,
    onClick: () -> Unit,
    emphasized: Boolean = false,
    modifier: Modifier = Modifier
) {
    val accent = AccentColor
    val background = if (emphasized) accent.copy(alpha = 0.16f) else HeaderActionIconBackground
    val border = if (emphasized) accent.copy(alpha = 0.55f) else HeaderActionIconBorder
    val iconTint = if (emphasized) accent else Color.White.copy(alpha = 0.90f)

    Box(
        modifier = modifier
            .size(28.dp)
            .clip(CircleShape)
            .background(background, CircleShape)
            .border(1.dp, border, CircleShape)
            .clickable(onClick = onClick),
        contentAlignment = Alignment.Center
    ) {
        Icon(
            imageVector = icon,
            contentDescription = contentDescription,
            tint = iconTint,
            modifier = Modifier.size(15.dp)
        )
    }
}

/**
 * 面板二级上下文栏（各模式下高度一致，避免切换分组时面板跳动）。
 */
@Composable
internal fun CameraLookSubBar(
    modifier: Modifier = Modifier,
    leading: @Composable RowScope.() -> Unit
) {
    val height = with(LocalDensity.current) {
        val tabHeight = CameraLookSubBarLineHeight.roundToPx() +
            CameraLookSubBarTabVerticalPadding.roundToPx() * 2 +
            CameraLookSubBarIndicatorSpacing.roundToPx() +
            CameraLookSubBarIndicatorHeight.roundToPx()
        maxOf(26.dp, tabHeight.toDp())
    }
    Row(
        modifier = modifier
            .fillMaxWidth()
            .height(height)
            .padding(horizontal = 10.dp),
        verticalAlignment = Alignment.CenterVertically,
        content = leading
    )
}

@Composable
internal fun CameraLookSubBarTitle(
    title: String,
    modifier: Modifier = Modifier,
    scrollTitle: Boolean = true,
) {
    Text(
        text = title,
        color = Color.White.copy(alpha = 0.88f),
        fontSize = 12.sp,
        lineHeight = CameraLookSubBarLineHeight,
        fontWeight = FontWeight.Medium,
        maxLines = 1,
        overflow = TextOverflow.Ellipsis,
        style = LocalTextStyle.current.copy(shadow = ViewfinderTextShadow),
        modifier = modifier.basicMarquee(iterations = if (scrollTitle) Int.MAX_VALUE else 0)
    )
}
