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
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.remember
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.LinearGradientShader
import androidx.compose.ui.graphics.Shader
import androidx.compose.ui.graphics.ShaderBrush
import androidx.compose.ui.graphics.Shape
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
    private val strength = if (enabled) 1f else 0.45f
    private val colors = listOf(
        Color.White.copy(alpha = 0.52f * strength),
        Color.White.copy(alpha = 0.18f * strength),
        Color.Black.copy(alpha = 0.24f * strength),
        Color.Black.copy(alpha = 0.48f * strength)
    )
    private val colorStops = listOf(0f, 0.28f, 0.68f, 1f)

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
    val OuterBorderColor = Color(0xFF030303)

    fun highlightBrush(
        enabled: Boolean = true,
        orientationDegrees: Float = 0f
    ): Brush {
        return PhysicalButtonHighlightBrush(enabled, orientationDegrees)
    }

    fun backgroundBrush(enabled: Boolean = true): Brush {
        return if (enabled) {
            Brush.verticalGradient(
                colors = listOf(
                    Color(0xFF17181A),
                    Color(0xFF202124),
                    Color(0xFF2B2C2F),
                )
            )
        } else {
            Brush.verticalGradient(
                colors = listOf(
                    Color(0xFF141517),
                    Color(0xFF191A1C),
                    Color(0xFF202124),
                )
            )
        }
    }
}

/**
 * 模拟实体相机按键的通用表面。
 *
 * 从外向内依次绘制黑色间隙、跟随设备姿态的渐变高光细边和轻微纵向渐变的按键面。
 */
@Composable
fun PhysicalButton(
    modifier: Modifier = Modifier,
    onClick: (() -> Unit)? = null,
    enabled: Boolean = true,
    shape: Shape = CircleShape,
    outerBorderWidth: Dp = 2.dp,
    highlightBorderWidth: Dp = 1.dp,
    backgroundBrush: Brush = PhysicalButtonDefaults.backgroundBrush(enabled),
    contentAlignment: Alignment = Alignment.Center,
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
            .background(backgroundBrush)
            .border(
                width = outerBorderWidth,
                color = PhysicalButtonDefaults.OuterBorderColor,
                shape = shape
            )
            .border(
                width = outerBorderWidth + highlightBorderWidth,
                brush = highlightBrush,
                shape = shape
            )
            .then(clickModifier),
        contentAlignment = Alignment.Center
    ) {
        Box(
            modifier = Modifier
                .fillMaxSize()
                .padding(outerBorderWidth + highlightBorderWidth)
                .clip(shape),
            contentAlignment = contentAlignment,
            content = content
        )
    }
}
