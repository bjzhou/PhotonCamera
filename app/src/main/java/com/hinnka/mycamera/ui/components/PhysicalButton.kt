package com.hinnka.mycamera.ui.components

import androidx.compose.animation.core.animateFloatAsState
import androidx.compose.animation.core.spring
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.interaction.MutableInteractionSource
import androidx.compose.foundation.interaction.collectIsPressedAsState
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.BoxScope
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.remember
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.draw.drawWithCache
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.LinearGradientShader
import androidx.compose.ui.graphics.Shader
import androidx.compose.ui.graphics.ShaderBrush
import androidx.compose.ui.graphics.Shape
import androidx.compose.ui.graphics.drawOutline
import androidx.compose.ui.graphics.drawscope.Stroke
import androidx.compose.ui.graphics.graphicsLayer
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.geometry.Size
import androidx.compose.ui.semantics.Role
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import com.hinnka.mycamera.utils.OrientationObserver
import kotlin.math.abs
import kotlin.math.cos
import kotlin.math.sin

private const val HighlightGlowLayerCount = 8
private const val HighlightGlowLayerAlpha = 0.032f

internal fun physicalTopDirection(orientationDegrees: Float): Offset {
    val radians = Math.toRadians(orientationDegrees.toDouble())
    return Offset(
        x = -sin(radians).toFloat(),
        y = -cos(radians).toFloat()
    )
}

private class PhysicalButtonHighlightBrush(
    enabled: Boolean,
    private val orientationDegrees: Float
) : ShaderBrush() {
    private val strength = if (enabled) 1f else 0.55f
    private val colors = listOf(
        Color.White.copy(alpha = 0.36f * strength),
        Color.White.copy(alpha = 0.16f * strength),
        Color.White.copy(alpha = 0.08f * strength),
        Color.White.copy(alpha = 0.05f * strength)
    )
    private val colorStops = listOf(0f, 0.38f, 0.72f, 1f)

    override fun createShader(size: Size): Shader {
        val brightDirection = physicalTopDirection(orientationDegrees)
        val halfGradientLength = (
            abs(brightDirection.x) * size.width +
                abs(brightDirection.y) * size.height
            ) * 0.5f
        val center = Offset(size.width * 0.5f, size.height * 0.5f)
        val extent = halfGradientLength.coerceAtLeast(1f)
        val start = Offset(
            x = center.x + brightDirection.x * extent,
            y = center.y + brightDirection.y * extent
        )
        val end = Offset(
            x = center.x - brightDirection.x * extent,
            y = center.y - brightDirection.y * extent
        )
        return LinearGradientShader(
            from = start,
            to = end,
            colors = colors,
            colorStops = colorStops
        )
    }
}

object PhysicalButtonDefaults {
    val BackgroundColor = Color(0xFF191919)
    val HighlightGlowWidth = 4.dp

    fun highlightBrush(
        enabled: Boolean = true,
        orientationDegrees: Float = 0f
    ): Brush {
        return PhysicalButtonHighlightBrush(enabled, orientationDegrees)
    }
}

/**
 * 模拟实体相机按键的通用表面。
 *
 * 绘制跟随设备姿态的渐变高光细边、向内衰减的柔和辉光和纯色按键面。
 */
@Composable
fun PhysicalButton(
    modifier: Modifier = Modifier.size(48.dp),
    onClick: (() -> Unit)? = null,
    enabled: Boolean = true,
    shape: Shape = CircleShape,
    backgroundColor: Color = PhysicalButtonDefaults.BackgroundColor,
    highlightBorderWidth: Dp = 1.dp,
    highlightGlowWidth: Dp = PhysicalButtonDefaults.HighlightGlowWidth,
    contentAlignment: Alignment = Alignment.Center,
    contentShape: Shape = shape,
    content: @Composable BoxScope.() -> Unit
) {
    val orientationDegrees = OrientationObserver.continuousOrientationDegrees
    val highlightBrush = remember(enabled, orientationDegrees) {
        PhysicalButtonDefaults.highlightBrush(enabled, orientationDegrees)
    }
    val interactionSource = remember { MutableInteractionSource() }
    val isPressed by interactionSource.collectIsPressedAsState()
    val pressScale by animateFloatAsState(
        targetValue = if (isPressed) 0.97f else 1f,
        animationSpec = spring(dampingRatio = 0.72f, stiffness = 700f),
        label = "physicalButtonPress"
    )
    val clickModifier = if (onClick != null) {
        Modifier.clickable(
            interactionSource = interactionSource,
            indication = null,
            enabled = enabled,
            role = Role.Button,
            onClick = onClick
        )
    } else {
        Modifier
    }

    Box(
        modifier = modifier
            .graphicsLayer {
                scaleX = pressScale
                scaleY = pressScale
            }
            .clip(shape)
            .background(backgroundColor)
            .drawWithCache {
                val outline = shape.createOutline(size, layoutDirection, this)
                val glowWidthPx = highlightGlowWidth.toPx().coerceAtLeast(0f)
                val glowLayerStepPx = glowWidthPx / HighlightGlowLayerCount

                onDrawBehind {
                    for (layer in HighlightGlowLayerCount downTo 1) {
                        drawOutline(
                            outline = outline,
                            brush = highlightBrush,
                            alpha = HighlightGlowLayerAlpha,
                            style = Stroke(width = glowLayerStepPx * layer * 2f)
                        )
                    }
                }
            }
            .border(
                width = highlightBorderWidth,
                brush = highlightBrush,
                shape = shape
            )
            .then(clickModifier),
        contentAlignment = Alignment.Center
    ) {
        Box(
            modifier = Modifier
                .fillMaxSize()
                .padding(highlightBorderWidth)
                .clip(contentShape),
            contentAlignment = contentAlignment,
            content = content
        )
    }
}
