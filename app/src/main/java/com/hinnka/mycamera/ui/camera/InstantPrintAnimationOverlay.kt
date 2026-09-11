package com.hinnka.mycamera.ui.camera

import android.graphics.LinearGradient
import android.graphics.Bitmap
import android.graphics.BlurMaskFilter
import android.graphics.Matrix
import android.graphics.Paint
import android.graphics.PorterDuff
import android.graphics.PorterDuffXfermode
import android.graphics.Shader
import androidx.activity.compose.BackHandler
import androidx.compose.animation.core.Animatable
import androidx.compose.animation.core.FastOutSlowInEasing
import androidx.compose.animation.core.LinearEasing
import androidx.compose.animation.core.tween
import androidx.compose.foundation.Canvas
import androidx.compose.foundation.layout.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.geometry.CornerRadius
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.geometry.Rect
import androidx.compose.ui.geometry.Size
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.ImageBitmap
import androidx.compose.ui.graphics.asAndroidBitmap
import androidx.compose.ui.graphics.drawscope.DrawScope
import androidx.compose.ui.graphics.drawscope.clipRect
import androidx.compose.ui.graphics.drawscope.drawIntoCanvas
import androidx.compose.ui.graphics.nativeCanvas
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.foundation.gestures.detectTapGestures
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.platform.LocalLayoutDirection
import androidx.compose.ui.unit.dp
import com.hinnka.mycamera.utils.PLog
import kotlinx.coroutines.CompletableDeferred
import kotlinx.coroutines.delay
import kotlin.math.min
import kotlin.math.sin

private enum class InstantPrintPhase { OPENING, FEEDING, HOLDING, COLLECTING }

/** The capsule's body is behind the paper; only the upper roller lip occludes the exiting sheet. */
@OptIn(ExperimentalLayoutApi::class)
@Composable
internal fun InstantPrintAnimationOverlay(
    snapshot: CaptureAnimationSnapshot,
    modifier: Modifier = Modifier,
    onFinished: () -> Unit
) {
    val onFinishedState by rememberUpdatedState(onFinished)
    val entrance = remember(snapshot.id) { Animatable(0f) }
    val feed = remember(snapshot.id) { Animatable(0f) }
    val hold = remember(snapshot.id) { Animatable(0f) }
    val collapse = remember(snapshot.id) { Animatable(0f) }
    val skip = remember(snapshot.id) { CompletableDeferred<Unit>() }
    var phase by remember(snapshot.id) { mutableStateOf(InstantPrintPhase.OPENING) }
    val paints = remember(snapshot.bitmap) { InstantPrintPaints(snapshot.bitmap) }

    BackHandler { skip.complete(Unit) }
    LaunchedEffect(snapshot.id, phase) {
        PLog.d("CaptureAnimation", "Instant print id=${snapshot.id} phase=$phase feed=${feed.value}")
    }
    LaunchedEffect(snapshot.id) {
        val skippedOpening = animateToWithSkip(entrance, 1f, tween(360, easing = FastOutSlowInEasing), skip)
        if (skippedOpening) {
            onFinishedState()
            return@LaunchedEffect
        }
        // Leave the fully opened mouth on screen before introducing any paper or its shadow.
        delay(120)
        if (skip.isCompleted) {
            onFinishedState()
            return@LaunchedEffect
        }
        phase = InstantPrintPhase.FEEDING
        var skipped = animateToWithSkip(feed, 1f, tween(2400, easing = LinearEasing), skip)
        if (skipped) {
            feed.animateTo(1f, tween(180, easing = FastOutSlowInEasing))
        } else {
            phase = InstantPrintPhase.HOLDING
            skipped = animateToWithSkip(hold, 1f, tween(900, easing = LinearEasing), skip)
        }
        phase = InstantPrintPhase.COLLECTING
        collapse.animateTo(1f, tween(if (skipped) 240 else 520, easing = FastOutSlowInEasing))
        onFinishedState()
    }

    BoxWithConstraints(modifier) {
        val density = LocalDensity.current
        val layoutDirection = LocalLayoutDirection.current
        val width = constraints.maxWidth.toFloat()
        val height = constraints.maxHeight.toFloat()
        val aspect = snapshot.bitmap.width.toFloat() / snapshot.bitmap.height
        val topSafeArea = maxOf(
            WindowInsets.statusBarsIgnoringVisibility.getTop(density).toFloat(),
            WindowInsets.displayCutout.getTop(density).toFloat(),
            with(density) { 40.dp.toPx() }
        )
        val safeLeft = WindowInsets.safeDrawing.getLeft(density, layoutDirection).toFloat()
        val safeRight = WindowInsets.safeDrawing.getRight(density, layoutDirection).toFloat()
        val safeBottom = WindowInsets.safeDrawing.getBottom(density).toFloat()
        val availableWidth = (width - safeLeft - safeRight).coerceAtLeast(1f)
        val centerX = safeLeft + availableWidth / 2f
        val slotPadding = with(density) { 12.dp.toPx() }
        val expandedHeight = (topSafeArea - with(density) { 8.dp.toPx() })
            .coerceIn(with(density) { 28.dp.toPx() }, with(density) { 40.dp.toPx() })
        val capsuleBottom = (topSafeArea + expandedHeight) / 2f
        // The sheet exits through the lower half of the body, not from its outside bottom edge.
        val slotY = capsuleBottom - expandedHeight * 0.38f
        val availableHeight = (height - safeBottom - slotY).coerceAtLeast(1f)
        // Reserve the extra extent of the projected lower edge, including short landscape windows.
        val printWidth = minOf(
            availableWidth * 0.58f,
            with(density) { 240.dp.toPx() },
            min(height * 0.46f, availableHeight / 1.15f) * aspect
        )
        val printHeight = printWidth / aspect
        val printLeft = centerX - printWidth / 2f
        val expandedWidth = minOf(
            maxOf(printWidth + slotPadding * 2f, with(density) { 112.dp.toPx() }), availableWidth
        )
        val expansion = entrance.value * (1f - collapse.value)
        val visibility = (entrance.value / 0.35f).coerceIn(0f, 1f) *
            (1f - ((collapse.value - 0.8f) / 0.2f).coerceIn(0f, 1f))
        val compactWidth = min(with(density) { 104.dp.toPx() }, expandedWidth)
        val compactHeight = min(with(density) { 28.dp.toPx() }, expandedHeight)
        val capsuleWidth = (compactWidth + (expandedWidth - compactWidth) * expansion) * visibility
        val capsuleHeight = (compactHeight + (expandedHeight - compactHeight) * expansion) * visibility
        val printedBounds = Rect(printLeft, slotY, printLeft + printWidth, slotY + printHeight)
        val targetWidth = min(snapshot.targetBounds.width, snapshot.targetBounds.height * aspect)
        val targetHeight = targetWidth / aspect
        val targetBounds = Rect(
            snapshot.targetBounds.center.x - targetWidth / 2f,
            snapshot.targetBounds.center.y - targetHeight / 2f,
            snapshot.targetBounds.center.x + targetWidth / 2f,
            snapshot.targetBounds.center.y + targetHeight / 2f
        )
        val collecting = phase == InstantPrintPhase.COLLECTING
        val paperBounds = if (collecting) lerpRect(printedBounds, targetBounds, collapse.value) else
            printedBounds.translate(Offset(0f, -printHeight * (1f - feed.value)))
        val remaining = 1f - collapse.value
        val tilt = (32f + 6f * sin(Math.PI.toFloat() * feed.value) -
            4f * FastOutSlowInEasing.transform(hold.value)) * remaining
        val projection = projectInstantPrint(
            paperBounds,
            hingeY = maxOf(slotY, paperBounds.top),
            tiltDegrees = tilt,
            cameraDistance = printHeight * 2.4f
        )
        val paperVisible = phase != InstantPrintPhase.OPENING && feed.value > 0f
        val currentProjection by rememberUpdatedState(projection)
        val currentPaperVisible by rememberUpdatedState(paperVisible)
        val currentClipTop by rememberUpdatedState(if (collecting) 0f else slotY)

        Canvas(
            Modifier.fillMaxSize().pointerInput(snapshot.id) {
                detectTapGestures { position ->
                    val insidePaper = currentPaperVisible && position.y >= currentClipTop &&
                        currentProjection.contains(position)
                    if (phase != InstantPrintPhase.COLLECTING && !insidePaper) skip.complete(Unit)
                }
            }
        ) {
            fun drawCapsule() {
                drawRoundRect(
                    color = Color.Black,
                    topLeft = Offset(centerX - capsuleWidth / 2f, capsuleBottom - capsuleHeight),
                    size = Size(capsuleWidth, capsuleHeight),
                    cornerRadius = CornerRadius(capsuleHeight / 2f)
                )
            }
            drawCapsule()
            if (paperVisible) {
                clipRect(top = if (collecting) 0f else slotY) {
                    drawInstantPrint(
                        snapshot.bitmap, projection, paints,
                        shadowLift = feed.value * remaining,
                        contactY = if (collecting) null else slotY,
                        shadowClipTop = capsuleBottom
                    )
                }
            }
            // The top lip hides unprinted paper. The exiting sheet lies in front of the lower body.
            clipRect(bottom = slotY) { drawCapsule() }
        }
    }
}

private class InstantPrintPaints(bitmap: ImageBitmap) {
    val matrix = Matrix()
    val source = floatArrayOf(0f, 0f, bitmap.width.toFloat(), 0f,
        bitmap.width.toFloat(), bitmap.height.toFloat(), 0f, bitmap.height.toFloat())
    val destination = FloatArray(8)
    val image = Paint(Paint.ANTI_ALIAS_FLAG or Paint.FILTER_BITMAP_FLAG)
    val shadowPaint = Paint(Paint.ANTI_ALIAS_FLAG or Paint.FILTER_BITMAP_FLAG).apply {
        color = android.graphics.Color.BLACK
    }
    val shadowOffset = IntArray(2)
    val shadow: Bitmap
    val shadowScaleX: Float
    val shadowScaleY: Float

    init {
        // Blur a small alpha mask once. A single soft shadow preserves image-frame cutouts too.
        val scale = min(1f, 320f / maxOf(bitmap.width, bitmap.height))
        val maskWidth = (bitmap.width * scale).toInt().coerceAtLeast(1)
        val maskHeight = (bitmap.height * scale).toInt().coerceAtLeast(1)
        val sourceBitmap = bitmap.asAndroidBitmap()
        val maskSource = Bitmap.createScaledBitmap(sourceBitmap, maskWidth, maskHeight, true)
        try {
            shadow = maskSource.extractAlpha(Paint().apply {
                maskFilter = BlurMaskFilter(maxOf(maskWidth, maskHeight) * 0.025f, BlurMaskFilter.Blur.NORMAL)
            }, shadowOffset)
        } finally {
            if (maskSource !== sourceBitmap) maskSource.recycle()
        }
        shadowScaleX = bitmap.width.toFloat() / maskWidth
        shadowScaleY = bitmap.height.toFloat() / maskHeight
    }
    val contact = Paint().apply {
        xfermode = PorterDuffXfermode(PorterDuff.Mode.SRC_ATOP)
    }
}

private fun DrawScope.drawInstantPrint(
    bitmap: ImageBitmap,
    projection: InstantPrintProjection,
    paints: InstantPrintPaints,
    shadowLift: Float,
    contactY: Float?,
    shadowClipTop: Float
) {
    val corners = projection.corners
    corners.forEachIndexed { index, point ->
        paints.destination[index * 2] = point.x
        paints.destination[index * 2 + 1] = point.y
    }
    check(paints.matrix.setPolyToPoly(paints.source, 0, paints.destination, 0, 4))
    drawIntoCanvas { canvas ->
        val native = canvas.nativeCanvas
        native.save()
        try {
            native.clipRect(0f, shadowClipTop, size.width, size.height)
            native.translate(0f, 6.dp.toPx() * shadowLift)
            native.concat(paints.matrix)
            native.scale(paints.shadowScaleX, paints.shadowScaleY)
            paints.shadowPaint.alpha = (36f * shadowLift).toInt()
            native.drawBitmap(paints.shadow, paints.shadowOffset[0].toFloat(),
                paints.shadowOffset[1].toFloat(), paints.shadowPaint)
        } finally {
            native.restore()
        }
        native.save()
        try {
            // Keep the photograph's colors intact; only the roller's narrow contact line shades it.
            val left = corners.minOf { it.x }
            val top = corners.minOf { it.y }
            val right = corners.maxOf { it.x }
            val bottom = corners.maxOf { it.y }
            native.saveLayer(left, top, right, bottom, null)
            native.save()
            native.concat(paints.matrix)
            native.drawBitmap(bitmap.asAndroidBitmap(), 0f, 0f, paints.image)
            native.restore()
            if (contactY != null) {
                val contactBottom = min(bottom, contactY + 3.dp.toPx())
                if (contactBottom > contactY) {
                    paints.contact.shader = LinearGradient(0f, contactY, 0f, contactY + 3.dp.toPx(),
                        intArrayOf(0x50000000, 0x00000000), null, Shader.TileMode.CLAMP)
                    native.drawRect(left, contactY, right, contactBottom, paints.contact)
                }
            }
            native.restore()
        } finally {
            native.restore()
        }
    }
}
