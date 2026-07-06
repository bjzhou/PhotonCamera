package com.hinnka.mycamera.ui.camera

import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.TextUnit
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp

private const val DefaultItemSize = 32f
private const val DefaultSpacing = 8f
private const val SeparatorThickness = 1f

internal data class ZoomRulerAdaptiveMetrics(
    val itemSize: Dp,
    val spacing: Dp,
    val rulerLength: Dp,
    val selectedFontSize: TextUnit,
    val normalFontSize: TextUnit,
    val selectedIconSize: Dp,
    val normalIconSize: Dp,
    val separatorLength: Dp
)

internal fun calculateZoomRulerAdaptiveMetrics(
    availableSpace: Dp,
    itemCount: Int,
    separatorCount: Int
): ZoomRulerAdaptiveMetrics {
    val safeItemCount = itemCount.coerceAtLeast(0)
    if (safeItemCount == 0 || !availableSpace.value.isFinite() || availableSpace.value <= 0f) {
        return defaultZoomRulerAdaptiveMetrics(safeItemCount)
    }

    val safeSeparatorCount = separatorCount.coerceAtLeast(0)
    val elementCount = safeItemCount + safeSeparatorCount
    val gapCount = (elementCount - 1).coerceAtLeast(0)
    val availableForItems = (availableSpace.value - safeSeparatorCount * SeparatorThickness).coerceAtLeast(0f)
    val defaultLength = totalLength(
        itemSize = DefaultItemSize,
        spacing = DefaultSpacing,
        itemCount = safeItemCount,
        separatorCount = safeSeparatorCount,
        gapCount = gapCount
    )

    if (defaultLength <= availableSpace.value) {
        return buildZoomRulerAdaptiveMetrics(
            itemSize = DefaultItemSize,
            spacing = if (gapCount == 0) 0f else DefaultSpacing,
            itemCount = safeItemCount,
            separatorCount = safeSeparatorCount,
            gapCount = gapCount
        )
    }

    val defaultItemsNoSpacingLength = totalLength(
        itemSize = DefaultItemSize,
        spacing = 0f,
        itemCount = safeItemCount,
        separatorCount = safeSeparatorCount,
        gapCount = gapCount
    )

    if (defaultItemsNoSpacingLength <= availableSpace.value) {
        val spacing = if (gapCount == 0) {
            0f
        } else {
            ((availableSpace.value - defaultItemsNoSpacingLength) / gapCount).coerceIn(0f, DefaultSpacing)
        }
        return buildZoomRulerAdaptiveMetrics(
            itemSize = DefaultItemSize,
            spacing = spacing,
            itemCount = safeItemCount,
            separatorCount = safeSeparatorCount,
            gapCount = gapCount
        )
    }

    val itemSize = (availableForItems / safeItemCount).coerceIn(0f, DefaultItemSize)
    return buildZoomRulerAdaptiveMetrics(
        itemSize = itemSize,
        spacing = 0f,
        itemCount = safeItemCount,
        separatorCount = safeSeparatorCount,
        gapCount = gapCount
    )
}

private fun defaultZoomRulerAdaptiveMetrics(itemCount: Int): ZoomRulerAdaptiveMetrics {
    return buildZoomRulerAdaptiveMetrics(
        itemSize = DefaultItemSize,
        spacing = DefaultSpacing,
        itemCount = itemCount,
        separatorCount = 0,
        gapCount = (itemCount - 1).coerceAtLeast(0)
    )
}

private fun buildZoomRulerAdaptiveMetrics(
    itemSize: Float,
    spacing: Float,
    itemCount: Int,
    separatorCount: Int,
    gapCount: Int
): ZoomRulerAdaptiveMetrics {
    val scale = (itemSize / DefaultItemSize).coerceIn(0.3f, 1f)
    return ZoomRulerAdaptiveMetrics(
        itemSize = itemSize.dp,
        spacing = spacing.dp,
        rulerLength = totalLength(
            itemSize = itemSize,
            spacing = spacing,
            itemCount = itemCount,
            separatorCount = separatorCount,
            gapCount = gapCount
        ).dp,
        selectedFontSize = (13f * scale).coerceIn(5f, 13f).sp,
        normalFontSize = (10f * scale).coerceIn(5f, 10f).sp,
        selectedIconSize = (16f * scale).coerceIn(6f, 16f).dp,
        normalIconSize = (14f * scale).coerceIn(6f, 14f).dp,
        separatorLength = (12f * scale).coerceIn(4f, 12f).dp
    )
}

private fun totalLength(
    itemSize: Float,
    spacing: Float,
    itemCount: Int,
    separatorCount: Int,
    gapCount: Int
): Float {
    return itemSize * itemCount + SeparatorThickness * separatorCount + spacing * gapCount
}
