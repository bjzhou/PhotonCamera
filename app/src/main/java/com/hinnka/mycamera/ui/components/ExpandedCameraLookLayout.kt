package com.hinnka.mycamera.ui.components

import androidx.compose.foundation.layout.Box
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.layout.Layout
import androidx.compose.ui.unit.Constraints
import androidx.compose.ui.unit.constrainHeight
import androidx.compose.ui.unit.dp

/** Measure the lazy browser first, then give the mode rail exactly the same height. */
@Composable
internal fun ExpandedCameraLookLayout(
    modifier: Modifier = Modifier,
    modeRail: @Composable () -> Unit,
    browser: @Composable () -> Unit
) {
    Layout(
        modifier = modifier,
        content = {
            Box { browser() }
            Box { modeRail() }
        }
    ) { measurables, constraints ->
        val width = constraints.maxWidth
        val railWidth = CameraLookModeRailWidth.roundToPx().coerceAtMost(width)
        val gap = 4.dp.roundToPx().coerceAtMost(width - railWidth)
        val browserWidth = width - railWidth - gap
        val browserPlaceable = measurables[0].measure(
            constraints.copy(minWidth = browserWidth, maxWidth = browserWidth, minHeight = 0)
        )
        val railPlaceable = measurables[1].measure(
            Constraints.fixed(railWidth, browserPlaceable.height)
        )
        layout(width, constraints.constrainHeight(browserPlaceable.height)) {
            railPlaceable.placeRelative(0, 0)
            browserPlaceable.placeRelative(railWidth + gap, 0)
        }
    }
}
