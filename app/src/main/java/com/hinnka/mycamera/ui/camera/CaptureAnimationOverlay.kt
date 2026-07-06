package com.hinnka.mycamera.ui.camera

import androidx.compose.animation.core.Animatable
import androidx.compose.animation.core.FastOutSlowInEasing
import androidx.compose.animation.core.LinearEasing
import androidx.compose.animation.core.tween
import androidx.compose.foundation.Image
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.gestures.detectTapGestures
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.alpha
import androidx.compose.ui.draw.clip
import androidx.compose.ui.geometry.Rect
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.ColorFilter
import androidx.compose.ui.graphics.ColorMatrix
import androidx.compose.ui.graphics.ImageBitmap
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.unit.IntOffset
import androidx.compose.ui.unit.dp
import kotlinx.coroutines.CompletableDeferred
import kotlinx.coroutines.async
import kotlinx.coroutines.coroutineScope
import kotlinx.coroutines.selects.select
import kotlin.math.min
import kotlin.math.roundToInt

data class CaptureAnimationSnapshot(
    val bitmap: ImageBitmap,
    val sourceBounds: Rect,
    val targetBounds: Rect,
    val id: Long = System.nanoTime()
)

private enum class CaptureAnimationPhase {
    EXPAND,
    DEVELOP,
    COLLAPSE
}

@Composable
fun CaptureAnimationOverlay(
    snapshot: CaptureAnimationSnapshot,
    modifier: Modifier = Modifier,
    onFinished: () -> Unit
) {
    BoxWithConstraints(modifier = modifier) {
        val density = LocalDensity.current
        val rootWidth = constraints.maxWidth.toFloat()
        val rootHeight = constraints.maxHeight.toFloat()
        val imageAspectRatio = remember(snapshot.bitmap) {
            snapshot.bitmap.width.toFloat() / snapshot.bitmap.height.coerceAtLeast(1).toFloat()
        }
        val centerBounds = remember(snapshot, rootWidth, rootHeight) {
            calculateCenterBounds(
                rootWidth = rootWidth,
                rootHeight = rootHeight,
                aspectRatio = imageAspectRatio
            )
        }

        val expandProgress = remember(snapshot.id) { Animatable(0f) }
        val developProgress = remember(snapshot.id) { Animatable(0f) }
        val collapseProgress = remember(snapshot.id) { Animatable(0f) }
        val skipSignal = remember(snapshot.id) { CompletableDeferred<Unit>() }
        var phase by remember(snapshot.id) { mutableStateOf(CaptureAnimationPhase.EXPAND) }

        LaunchedEffect(snapshot.id) {
            phase = CaptureAnimationPhase.EXPAND
            expandProgress.snapTo(0f)
            developProgress.snapTo(0f)
            collapseProgress.snapTo(0f)

            val skippedDuringExpand = animateToWithSkip(
                animatable = expandProgress,
                targetValue = 1f,
                animationSpec = tween(durationMillis = 500, easing = FastOutSlowInEasing),
                skipSignal = skipSignal
            )
            if (skippedDuringExpand) {
                finishWithFastCollapse(
                    expandProgress = expandProgress,
                    developProgress = developProgress,
                    collapseProgress = collapseProgress,
                    setPhase = { phase = it },
                    onFinished = onFinished
                )
                return@LaunchedEffect
            }

            phase = CaptureAnimationPhase.DEVELOP
            val skippedDuringDevelop = animateToWithSkip(
                animatable = developProgress,
                targetValue = 1f,
                animationSpec = tween(durationMillis = 4000, easing = LinearEasing),
                skipSignal = skipSignal
            )
            if (skippedDuringDevelop) {
                finishWithFastCollapse(
                    expandProgress = expandProgress,
                    developProgress = developProgress,
                    collapseProgress = collapseProgress,
                    setPhase = { phase = it },
                    onFinished = onFinished
                )
                return@LaunchedEffect
            }

            phase = CaptureAnimationPhase.COLLAPSE
            collapseProgress.animateTo(
                targetValue = 1f,
                animationSpec = tween(durationMillis = 500, easing = FastOutSlowInEasing)
            )

            onFinished()
        }

        val currentBounds = when (phase) {
            CaptureAnimationPhase.EXPAND -> lerpRect(
                start = snapshot.sourceBounds,
                stop = centerBounds,
                fraction = expandProgress.value
            )

            CaptureAnimationPhase.DEVELOP -> centerBounds

            CaptureAnimationPhase.COLLAPSE -> lerpRect(
                start = centerBounds,
                stop = snapshot.targetBounds,
                fraction = collapseProgress.value
            )
        }

        val scrimAlpha = when (phase) {
            CaptureAnimationPhase.EXPAND -> 0.62f * expandProgress.value
            CaptureAnimationPhase.DEVELOP -> 0.62f
            CaptureAnimationPhase.COLLAPSE -> 0.62f * (1f - collapseProgress.value)
        }

        val look = when (phase) {
            CaptureAnimationPhase.EXPAND -> CaptureDevelopLook(
                inversion = expandProgress.value * 0.35f,
                contrast = lerp(0.92f, 0.82f, expandProgress.value),
                brightness = lerp(0f, -26f, expandProgress.value),
                saturation = lerp(1f, 0.18f, expandProgress.value),
                warmth = lerp(0f, 0.12f, expandProgress.value)
            )

            CaptureAnimationPhase.DEVELOP -> calculateDevelopLook(developProgress.value)

            CaptureAnimationPhase.COLLAPSE -> CaptureDevelopLook(
                inversion = 0f,
                contrast = 1f,
                brightness = 0f,
                saturation = 1f,
                warmth = 0f
            )
        }

        val colorFilter = remember(look) {
            ColorFilter.colorMatrix(createDevelopColorMatrix(look))
        }

        val imageAlpha = when (phase) {
            CaptureAnimationPhase.EXPAND -> 0f
            CaptureAnimationPhase.DEVELOP -> calculateDevelopImageAlpha(developProgress.value)
            CaptureAnimationPhase.COLLAPSE -> 1f
        }

        Box(
            modifier = Modifier
                .fillMaxSize()
                .background(Color.Black.copy(alpha = scrimAlpha))
                .pointerInput(snapshot.id, currentBounds, phase) {
                    detectTapGestures { offset ->
                        if (phase != CaptureAnimationPhase.COLLAPSE &&
                            !currentBounds.contains(offset)
                        ) {
                            skipSignal.complete(Unit)
                        }
                    }
                }
        )

        Box(
            modifier = Modifier
                .offset {
                    IntOffset(
                        x = currentBounds.left.roundToInt(),
                        y = currentBounds.top.roundToInt()
                    )
                }
                .size(
                    width = with(density) { currentBounds.width.toDp() },
                    height = with(density) { currentBounds.height.toDp() }
                )
                .clip(RoundedCornerShape(16.dp))
                .background(Color(0xFF020202).copy(alpha = 0.9f))
                .border(
                    width = 1.dp,
                    color = Color.White.copy(alpha = 0.3f),
                    shape = RoundedCornerShape(16.dp)
                )
        ) {
            Image(
                bitmap = snapshot.bitmap,
                contentDescription = null,
                contentScale = ContentScale.Crop,
                colorFilter = colorFilter,
                modifier = Modifier
                    .fillMaxSize()
                    .alpha(imageAlpha)
            )
        }
    }
}

private suspend fun animateToWithSkip(
    animatable: Animatable<Float, *>,
    targetValue: Float,
    animationSpec: androidx.compose.animation.core.AnimationSpec<Float>,
    skipSignal: CompletableDeferred<Unit>
): Boolean = coroutineScope {
    val animationJob = async {
        animatable.animateTo(targetValue = targetValue, animationSpec = animationSpec)
    }
    select {
        animationJob.onAwait { false }
        skipSignal.onAwait {
            animationJob.cancel()
            true
        }
    }
}

private suspend fun finishWithFastCollapse(
    expandProgress: Animatable<Float, *>,
    developProgress: Animatable<Float, *>,
    collapseProgress: Animatable<Float, *>,
    setPhase: (CaptureAnimationPhase) -> Unit,
    onFinished: () -> Unit
) {
    expandProgress.snapTo(1f)
    developProgress.snapTo(1f)
    setPhase(CaptureAnimationPhase.COLLAPSE)
    collapseProgress.snapTo(0f)
    collapseProgress.animateTo(
        targetValue = 1f,
        animationSpec = tween(durationMillis = 220, easing = FastOutSlowInEasing)
    )
    onFinished()
}

private fun calculateCenterBounds(
    rootWidth: Float,
    rootHeight: Float,
    aspectRatio: Float
): Rect {
    val maxWidth = rootWidth * 0.84f
    val maxHeight = rootHeight * 0.74f
    val targetWidth = min(maxWidth, maxHeight * aspectRatio)
    val targetHeight = targetWidth / aspectRatio
    val left = (rootWidth - targetWidth) / 2f
    val top = (rootHeight - targetHeight) / 2f
    return Rect(
        left = left,
        top = top,
        right = left + targetWidth,
        bottom = top + targetHeight
    )
}

private fun lerpRect(start: Rect, stop: Rect, fraction: Float): Rect {
    val t = fraction.coerceIn(0f, 1f)
    return Rect(
        left = lerp(start.left, stop.left, t),
        top = lerp(start.top, stop.top, t),
        right = lerp(start.right, stop.right, t),
        bottom = lerp(start.bottom, stop.bottom, t)
    )
}

private fun lerp(start: Float, stop: Float, fraction: Float): Float {
    return start + (stop - start) * fraction
}

private data class CaptureDevelopLook(
    val inversion: Float,
    val contrast: Float,
    val brightness: Float,
    val saturation: Float,
    val warmth: Float
)

private fun calculateDevelopLook(progress: Float): CaptureDevelopLook {
    val t = progress.coerceIn(0f, 1f)
    return when {
        t < 0.5f -> {
            val stage = t / 0.5f
            CaptureDevelopLook(
                inversion = lerp(0.98f, 0.9f, stage),
                contrast = lerp(0.5f, 0.6f, stage),
                brightness = lerp(-76f, -56f, stage),
                saturation = lerp(0.02f, 0.9f, stage),
                warmth = lerp(0.08f, 0.18f, stage)
            )
        }

        t < 0.6f -> {
            val stage = (t - 0.6f) / 0.1f
            CaptureDevelopLook(
                inversion = lerp(0.9f, 0.7f, stage),
                contrast = lerp(0.6f, 0.65f, stage),
                brightness = lerp(-56f, -40f, stage),
                saturation = lerp(0.9f, 1f, stage),
                warmth = lerp(0.18f, 0.14f, stage)
            )
        }

        else -> {
            val stage = (t - 0.6f) / 0.4f
            CaptureDevelopLook(
                inversion = lerp(0.7f, 0f, stage),
                contrast = lerp(0.65f, 1f, stage),
                brightness = lerp(-40f, 0f, stage),
                saturation = 1f,
                warmth = lerp(0.14f, 0f, stage)
            )
        }
    }
}

private fun calculateDevelopImageAlpha(progress: Float): Float {
    val t = progress.coerceIn(0f, 1f)
    return when {
        t < 0.5f -> lerp(0f, 1f, t / 0.5f)
        else -> 1f
    }
}

private fun createDevelopColorMatrix(look: CaptureDevelopLook): ColorMatrix {
    val t = look.inversion.coerceIn(0f, 1f)
    val diagonal = 1f - (2f * t)
    val baseOffset = 255f * t
    val redOffset = baseOffset + look.brightness + (24f * look.warmth)
    val greenOffset = baseOffset + look.brightness + (8f * look.warmth)
    val blueOffset = baseOffset + look.brightness - (18f * look.warmth)
    val sat = look.saturation.coerceIn(0f, 2f)
    val invSat = 1f - sat
    val rw = 0.213f * invSat
    val gw = 0.715f * invSat
    val bw = 0.072f * invSat
    val contrast = look.contrast

    return ColorMatrix(
        floatArrayOf(
            contrast * (rw + sat) * diagonal, contrast * gw * diagonal, contrast * bw * diagonal, 0f, redOffset,
            contrast * rw * diagonal, contrast * (gw + sat) * diagonal, contrast * bw * diagonal, 0f, greenOffset,
            contrast * rw * diagonal, contrast * gw * diagonal, contrast * (bw + sat) * diagonal, 0f, blueOffset,
            0f, 0f, 0f, 1f, 0f
        )
    )
}
