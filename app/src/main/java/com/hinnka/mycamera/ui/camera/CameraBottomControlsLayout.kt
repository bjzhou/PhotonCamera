package com.hinnka.mycamera.ui.camera

import androidx.compose.foundation.layout.Box
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.layout.Layout
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp

/** Shared dimensions keep preview placement and control measurement in agreement. */
internal object CameraControlsLayoutDefaults {
    val ParameterBarHeight = 48.dp
    val ZoomBarHeight = 32.dp
    val CaptureButtonSize = 72.dp
    val SideButtonSize = 48.dp
    val ModeSwitcherHeight = 36.dp
    val ModeSwitcherSpacing = 30.dp
    val BottomPadding = 8.dp
    val CaptureClearance = 8.dp
    val BarSpacing = 4.dp
    val ViewfinderModeSpacing = 12.dp

    val ModeAreaHeight = ModeSwitcherSpacing + ModeSwitcherHeight + BottomPadding
    val XpanViewfinderClearance = ViewfinderModeSpacing + ModeSwitcherHeight + BottomPadding
    val CaptureAreaHeight = CaptureButtonSize + ModeAreaHeight
    val CollapsedControlsHeight = CaptureAreaHeight + CaptureClearance +
        ParameterBarHeight + BarSpacing + ZoomBarHeight
}

/**
 * Measures the controls in one pass so placement uses their actual heights, including the
 * ruler's expand/collapse animation. The shutter stays anchored to the bottom throughout.
 */
@Composable
internal fun CameraBottomControlsLayout(
    viewfinderBottom: Dp,
    zoomBar: @Composable () -> Unit,
    parameterRuler: @Composable () -> Unit,
    parameterBar: @Composable () -> Unit,
    captureControls: @Composable () -> Unit,
    modifier: Modifier = Modifier
) {
    Layout(
        modifier = modifier,
        content = {
            Box(contentAlignment = Alignment.Center) { zoomBar() }
            Box(contentAlignment = Alignment.Center) { parameterRuler() }
            Box(contentAlignment = Alignment.Center) { parameterBar() }
            Box(contentAlignment = Alignment.Center) { captureControls() }
        }
    ) { measurables, constraints ->
        val looseConstraints = constraints.copy(minWidth = 0, minHeight = 0)
        val (zoom, ruler, parameters, capture) = measurables.map { it.measure(looseConstraints) }
        val width = constraints.maxWidth
        val height = constraints.maxHeight
        val clearance = CameraControlsLayoutDefaults.CaptureClearance.roundToPx()
        val barGap = CameraControlsLayoutDefaults.BarSpacing.roundToPx()
        val captureTop = height - capture.height
        val controlsBottom = captureTop - clearance
        val previewBottom = viewfinderBottom.roundToPx().coerceAtMost(height)
        val spaceBelowPreview = controlsBottom - previewBottom

        val placeZoomBelowPreview = zoom.height > 0 &&
            spaceBelowPreview >= parameters.height + ruler.height + zoom.height + barGap

        // Start outside controls at the preview edge instead of leaving all spare space
        // above them. Any remaining space belongs between the parameters and the shutter.
        val parameterTop = when {
            // XPAN uses a side parameter row; its ruler remains above the shutter.
            parameters.height == 0 -> controlsBottom
            placeZoomBelowPreview -> previewBottom + zoom.height + barGap + ruler.height
            spaceBelowPreview >= parameters.height -> previewBottom
            else -> minOf(controlsBottom, previewBottom - clearance) - parameters.height
        }
        val rulerTop = parameterTop - ruler.height
        val zoomTop = if (placeZoomBelowPreview) {
            previewBottom
        } else {
            minOf(previewBottom - clearance, rulerTop - barGap) - zoom.height
        }

        layout(width, height) {
            capture.placeRelative((width - capture.width) / 2, captureTop)
            parameters.placeRelative((width - parameters.width) / 2, parameterTop)
            ruler.placeRelative((width - ruler.width) / 2, rulerTop)
            zoom.placeRelative((width - zoom.width) / 2, zoomTop)
        }
    }
}
