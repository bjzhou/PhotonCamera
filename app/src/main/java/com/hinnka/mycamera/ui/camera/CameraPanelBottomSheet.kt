package com.hinnka.mycamera.ui.camera

import androidx.activity.compose.BackHandler
import androidx.compose.animation.core.tween
import androidx.compose.foundation.gestures.AnchoredDraggableState
import androidx.compose.foundation.gestures.DraggableAnchors
import androidx.compose.foundation.gestures.Orientation
import androidx.compose.foundation.gestures.anchoredDraggable
import androidx.compose.foundation.gestures.animateTo
import androidx.compose.foundation.gestures.detectTapGestures
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.ColumnScope
import androidx.compose.foundation.layout.ExperimentalLayoutApi
import androidx.compose.foundation.layout.WindowInsets
import androidx.compose.foundation.layout.WindowInsetsSides
import androidx.compose.foundation.layout.displayCutout
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.heightIn
import androidx.compose.foundation.layout.imePadding
import androidx.compose.foundation.layout.offset
import androidx.compose.foundation.layout.only
import androidx.compose.foundation.layout.safeDrawing
import androidx.compose.foundation.layout.statusBarsIgnoringVisibility
import androidx.compose.foundation.layout.union
import androidx.compose.foundation.layout.windowInsetsPadding
import androidx.compose.material3.LocalContentColor
import androidx.compose.runtime.Composable
import androidx.compose.runtime.CompositionLocalProvider
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberUpdatedState
import androidx.compose.runtime.setValue
import androidx.compose.runtime.snapshotFlow
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clipToBounds
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.layout.onSizeChanged
import androidx.compose.ui.semantics.dismiss
import androidx.compose.ui.semantics.isTraversalGroup
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.unit.IntOffset
import androidx.compose.ui.unit.dp
import com.hinnka.mycamera.ui.components.CameraPanelGlassStyle
import com.hinnka.mycamera.ui.components.LiquidGlassBackdrop
import com.hinnka.mycamera.ui.components.liquidGlassBackground
import kotlin.math.roundToInt
import kotlinx.coroutines.flow.first

private val CameraPanelMaxHeight = 544.dp

private enum class PanelAnchor { Open, Closed }

@OptIn(ExperimentalLayoutApi::class)
@Composable
internal fun CameraPanelBottomSheet(
    backdrop: LiquidGlassBackdrop,
    onDismissRequest: () -> Unit,
    modifier: Modifier = Modifier,
    dragHandle: @Composable (() -> Unit)? = null,
    content: @Composable ColumnScope.() -> Unit,
) {
    val dragState = remember { AnchoredDraggableState(PanelAnchor.Closed) }
    val currentOnDismissRequest by rememberUpdatedState(onDismissRequest)
    var opened by remember { mutableStateOf(false) }
    var closing by remember { mutableStateOf(false) }

    fun dismissPanel() {
        if (closing) return
        closing = true
        if (!opened) {
            currentOnDismissRequest()
        }
    }
    val dismissOnTap by rememberUpdatedState(::dismissPanel)

    LaunchedEffect(dragState) {
        snapshotFlow { dragState.offset.isFinite() }.first { it }
        dragState.animateTo(PanelAnchor.Open, tween(250))
        opened = true
        snapshotFlow { dragState.settledValue }.first { it == PanelAnchor.Closed }
        currentOnDismissRequest()
    }
    LaunchedEffect(closing) {
        if (closing && opened) {
            dragState.animateTo(PanelAnchor.Closed, tween(220))
        }
    }
    BackHandler(onBack = ::dismissPanel)

    Box(Modifier.fillMaxSize().clipToBounds()) {
        Box(Modifier.matchParentSize().pointerInput(Unit) {
            detectTapGestures { dismissOnTap() }
        })
        Column(
            modifier = modifier
                .align(Alignment.BottomCenter)
                .windowInsetsPadding(WindowInsets.safeDrawing.only(WindowInsetsSides.Horizontal))
                .windowInsetsPadding(
                    WindowInsets.statusBarsIgnoringVisibility.union(WindowInsets.displayCutout)
                        .only(WindowInsetsSides.Top)
                )
                .imePadding()
                .fillMaxWidth()
                .heightIn(max = CameraPanelMaxHeight)
                .offset { IntOffset(0, dragState.offset.takeIf { it.isFinite() }?.roundToInt() ?: 0) }
                .onSizeChanged { size ->
                    dragState.updateAnchors(
                        DraggableAnchors {
                            PanelAnchor.Open at 0f
                            PanelAnchor.Closed at size.height.toFloat()
                        },
                        newTarget = dragState.targetValue
                    )
                }
                .anchoredDraggable(dragState, Orientation.Vertical, enabled = opened && !closing)
                .liquidGlassBackground(
                    backdrop = backdrop,
                    cornerRadius = 28.dp,
                    openBottomEdge = true,
                    style = CameraPanelGlassStyle
                )
                .semantics {
                    isTraversalGroup = true
                    dismiss {
                        dismissPanel()
                        true
                    }
                }
                .windowInsetsPadding(WindowInsets.safeDrawing.only(WindowInsetsSides.Bottom)),
        ) {
            CompositionLocalProvider(LocalContentColor provides Color.White) {
                if (dragHandle != null) {
                    Box(Modifier.fillMaxWidth(), contentAlignment = Alignment.Center) { dragHandle() }
                }
                content()
            }
        }
    }
}
