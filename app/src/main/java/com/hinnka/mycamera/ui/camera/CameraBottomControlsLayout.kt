package com.hinnka.mycamera.ui.camera

import androidx.compose.animation.core.Transition
import androidx.compose.animation.core.animateFloat
import androidx.compose.animation.core.tween
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.padding
import androidx.compose.runtime.Composable
import androidx.compose.runtime.Stable
import androidx.compose.runtime.State
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.drawWithContent
import androidx.compose.ui.graphics.drawscope.clipRect
import androidx.compose.ui.layout.Layout
import androidx.compose.ui.unit.Constraints
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.constrainHeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.util.lerp

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

@Stable
internal class CameraCapturePlacement(private val expansion: State<Float>) {
    var travelPx by mutableIntStateOf(0)
    val offsetY: Int get() = lerp(travelPx, 0, expansion.value)
}

/**
 * Measures the controls in one pass so placement uses their actual heights, including the
 * ruler's expand/collapse animation. The parameter row stays in its collapsed position;
 * the ruler expands above it and moves the zoom bar upward. The shutter stays at the bottom.
 */
@Composable
internal fun CameraBottomControlsLayout(
    viewfinderBottom: Dp,
    zoomBar: @Composable () -> Unit,
    parameterRuler: @Composable () -> Unit,
    parameterBar: @Composable () -> Unit,
    captureControls: @Composable () -> Unit,
    capturePlacement: CameraCapturePlacement,
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
        val previewBottom = viewfinderBottom.roundToPx().coerceAtMost(height)

        layout(width, height) {
            val controlsBottom = captureTop + capturePlacement.offsetY - clearance
            val spaceBelowPreview = controlsBottom - previewBottom
            val placeZoomBelowPreview = zoom.height > 0 &&
                spaceBelowPreview >= parameters.height + zoom.height + barGap

            // Anchor the controls to the preview edge when they fit below it. The ruler
            // uses the shutter's visual position, including while it is exiting.
            val parameterTop = when {
                parameters.height == 0 -> controlsBottom
                placeZoomBelowPreview -> previewBottom + zoom.height + barGap
                spaceBelowPreview >= parameters.height -> previewBottom
                else -> minOf(controlsBottom, previewBottom - clearance) - parameters.height
            }
            val rulerTop = parameterTop - ruler.height
            val zoomTop = if (placeZoomBelowPreview) {
                rulerTop - barGap - zoom.height
            } else {
                minOf(previewBottom - clearance, rulerTop - barGap) - zoom.height
            }
            capture.placeRelative((width - capture.width) / 2, captureTop)
            parameters.placeRelative((width - parameters.width) / 2, parameterTop)
            ruler.placeRelative((width - ruler.width) / 2, rulerTop)
            zoom.placeRelative((width - zoom.width) / 2, zoomTop)
        }
    }
}

/** Keeps the shutter, mode switcher and look panel in separate layout slots. */
@Composable
internal fun CameraCaptureControlsLayout(
    transition: Transition<Boolean>,
    placement: CameraCapturePlacement,
    modifier: Modifier = Modifier,
    content: @Composable () -> Unit,
) {
    val modeAlpha = transition.animateFloat(
        transitionSpec = { tween(100, delayMillis = if (targetState) 0 else 100) },
        label = "modeSwitcherAlpha",
    ) { if (it) 0f else 1f }
    val panelAlpha = transition.animateFloat(
        transitionSpec = { tween(100, delayMillis = if (targetState) 100 else 0) },
        label = "lookPanelAlpha",
    ) { if (it) 1f else 0f }

    Layout(
        content = content,
        modifier = modifier.padding(bottom = CameraControlsLayoutDefaults.BottomPadding)
            .drawWithContent {
                clipRect(top = -size.height) { this@drawWithContent.drawContent() }
            },
    ) { measurables, constraints ->
        val shutter = measurables[0].measure(constraints.copy(minHeight = 0))
        val footerMaxHeight = if (constraints.hasBoundedHeight) {
            (constraints.maxHeight - shutter.height).coerceAtLeast(0)
        } else Constraints.Infinity
        val footerConstraints = constraints.copy(minHeight = 0, maxHeight = footerMaxHeight)
        val mode = measurables[1].measure(footerConstraints)
        val panelVisible = transition.targetState || transition.currentState || transition.isRunning
        val panel = if (panelVisible) measurables[2].measure(footerConstraints) else null
        val footerHeight = maxOf(mode.height, panel?.height ?: 0)
        placement.travelPx = footerHeight - mode.height
        val height = constraints.constrainHeight(shutter.height + footerHeight)

        layout(constraints.maxWidth, height) {
            val shutterTop = height - shutter.height - footerHeight + placement.offsetY
            shutter.placeRelativeWithLayer(0, shutterTop)
            val footerTop = shutterTop + shutter.height
            if (modeAlpha.value > 0f) {
                mode.placeRelativeWithLayer(0, footerTop, zIndex = if (transition.targetState) 0f else 1f) {
                    alpha = modeAlpha.value
                }
            }
            if (panel != null && panelAlpha.value > 0f) {
                panel.placeRelativeWithLayer(0, footerTop, zIndex = if (transition.targetState) 1f else 0f) {
                    alpha = panelAlpha.value
                }
            }
        }
    }
}
