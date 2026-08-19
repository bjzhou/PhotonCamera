package com.hinnka.mycamera.ui.components

import androidx.compose.foundation.Canvas
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.gestures.detectDragGestures
import androidx.compose.foundation.gestures.detectTapGestures
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberUpdatedState
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.geometry.Size
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.drawscope.Stroke
import androidx.compose.ui.graphics.lerp
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.semantics.contentDescription
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.hinnka.mycamera.R
import com.hinnka.mycamera.model.ColorRecipeParams
import kotlin.math.PI
import kotlin.math.atan2
import kotlin.math.cos
import kotlin.math.roundToInt
import kotlin.math.sin
import kotlin.math.sqrt

private enum class GradingRange {
    SHADOWS,
    MIDTONES,
    HIGHLIGHTS,
}

private data class GradingSelection(
    val hue: Float,
    val amount: Float,
    val luminance: Float,
)

private val GradingAccent = Color(0xFFB3E5FC)

@Composable
fun ColorGradingPanel(
    currentParams: ColorRecipeParams,
    onParamsChange: (ColorRecipeParams) -> Unit,
    modifier: Modifier = Modifier,
) {
    var selectedRange by remember { mutableStateOf(GradingRange.MIDTONES) }
    val rangeLabels = mapOf(
        GradingRange.SHADOWS to stringResource(R.string.recipe_param_shadows),
        GradingRange.MIDTONES to stringResource(R.string.recipe_grading_midtones),
        GradingRange.HIGHLIGHTS to stringResource(R.string.recipe_param_highlights),
    )
    val selected = currentParams.selectionFor(selectedRange)
    val selectedLabel = rangeLabels.getValue(selectedRange)
    val selectedColor = gradingColor(selected.hue, selected.amount)

    Column(
        modifier = modifier.fillMaxWidth(),
        verticalArrangement = Arrangement.spacedBy(7.dp),
        horizontalAlignment = Alignment.CenterHorizontally,
    ) {
        Box(
            modifier = Modifier
                .fillMaxWidth()
                .clip(RoundedCornerShape(8.dp))
                .background(Color.White.copy(alpha = 0.04f)),
        ) {
            Row(
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(3.dp),
                horizontalArrangement = Arrangement.spacedBy(4.dp),
            ) {
                GradingRange.entries.forEach { range ->
                    val selection = currentParams.selectionFor(range)
                    val isSelected = range == selectedRange
                    Row(
                        modifier = Modifier
                            .weight(1f)
                            .clip(RoundedCornerShape(6.dp))
                            .background(
                                if (isSelected) {
                                    Color.White.copy(alpha = 0.14f)
                                } else {
                                    Color.Transparent
                                }
                            )
                            .clickable { selectedRange = range }
                            .padding(vertical = 7.dp),
                        horizontalArrangement = Arrangement.Center,
                        verticalAlignment = Alignment.CenterVertically,
                    ) {
                        Box(
                            modifier = Modifier
                                .size(7.dp)
                                .clip(CircleShape)
                                .background(
                                    if (selection.amount > 0.001f) {
                                        gradingColor(selection.hue, selection.amount)
                                    } else {
                                        Color.White.copy(alpha = 0.22f)
                                    }
                                )
                        )
                        Text(
                            text = rangeLabels.getValue(range),
                            color = if (isSelected) {
                                Color.White
                            } else {
                                Color.White.copy(alpha = 0.55f)
                            },
                            fontSize = 10.sp,
                            fontWeight = if (isSelected) FontWeight.Bold else FontWeight.Normal,
                            textAlign = TextAlign.Center,
                            modifier = Modifier.padding(start = 5.dp),
                            maxLines = 1,
                        )
                    }
                }
            }

            GradingTonePreview(
                params = currentParams,
                modifier = Modifier
                    .align(Alignment.BottomCenter)
                    .fillMaxWidth()
                    .height(3.dp),
            )
        }

        GradingColorWheel(
            hue = selected.hue,
            amount = selected.amount,
            contentDescription = selectedLabel,
            onSelectionChange = { hue, amount ->
                onParamsChange(currentParams.withSelection(selectedRange, hue, amount))
            },
            onReset = {
                onParamsChange(currentParams.withSelection(selectedRange, 0f, 0f))
            },
            modifier = Modifier.size(184.dp),
        )

        Text(
            text = "${(selected.hue.coerceIn(0f, 1f) * 360f).roundToInt()}° · " +
                "${(selected.amount.coerceIn(0f, 1f) * 100f).roundToInt()}%",
            color = if (selected.amount > 0.001f) selectedColor else Color.White.copy(alpha = 0.48f),
            fontSize = 11.sp,
            fontWeight = FontWeight.SemiBold,
            fontFamily = FontFamily.Monospace,
        )

        GradingSliderRow(
            label = stringResource(R.string.recipe_grading_luminance),
            value = selected.luminance,
            valueRange = -1f..1f,
            defaultValue = 0f,
            valueText = formatSignedPercent(selected.luminance),
            onValueChange = {
                onParamsChange(
                    currentParams.withLuminance(selectedRange, it.coerceIn(-1f, 1f))
                )
            },
        )

        GradingSliderRow(
            label = stringResource(R.string.recipe_grading_balance),
            value = currentParams.gradingBalance,
            valueRange = -1f..1f,
            defaultValue = 0f,
            valueText = formatSignedPercent(currentParams.gradingBalance),
            onValueChange = {
                onParamsChange(currentParams.copy(gradingBalance = it.coerceIn(-1f, 1f)))
            },
        )
        GradingSliderRow(
            label = stringResource(R.string.recipe_grading_blending),
            value = currentParams.gradingBlending,
            valueRange = 0f..1f,
            defaultValue = 0.5f,
            valueText = "${(currentParams.gradingBlending.coerceIn(0f, 1f) * 100f).roundToInt()}",
            onValueChange = {
                onParamsChange(currentParams.copy(gradingBlending = it.coerceIn(0f, 1f)))
            },
        )
    }
}

@Composable
private fun GradingColorWheel(
    hue: Float,
    amount: Float,
    contentDescription: String,
    onSelectionChange: (Float, Float) -> Unit,
    onReset: () -> Unit,
    modifier: Modifier = Modifier,
) {
    val currentHue by rememberUpdatedState(hue.coerceIn(0f, 1f))
    val currentAmount by rememberUpdatedState(amount.coerceIn(0f, 1f))
    val currentOnSelectionChange by rememberUpdatedState(onSelectionChange)
    val currentOnReset by rememberUpdatedState(onReset)

    Canvas(
        modifier = modifier
            .semantics {
                this.contentDescription = contentDescription
            }
            .pointerInput(Unit) {
                fun update(position: Offset) {
                    val center = Offset(size.width / 2f, size.height / 2f)
                    val radius = (
                        minOf(size.width, size.height) / 2f - 8.dp.toPx()
                    ).coerceAtLeast(1f)
                    val markerAngle = currentHue * PI.toFloat() * 2f - PI.toFloat() / 2f
                    val markerCenter = Offset(
                        center.x + cos(markerAngle) * currentAmount * radius,
                        center.y + sin(markerAngle) * currentAmount * radius,
                    )
                    if ((position - markerCenter).getDistance() <= 24.dp.toPx()) {
                        return
                    }
                    val dx = position.x - center.x
                    val dy = position.y - center.y
                    val nextAmount = (sqrt(dx * dx + dy * dy) / radius).coerceIn(0f, 1f)
                    val rawAngle = atan2(dy, dx) + PI.toFloat() / 2f
                    val normalizedHue = (
                        rawAngle / (PI.toFloat() * 2f) + 1f
                    ) % 1f
                    val nextHue = if (nextAmount < 0.02f) currentHue else normalizedHue
                    currentOnSelectionChange(nextHue, nextAmount)
                }

                detectTapGestures(
                    onTap = ::update,
                    onDoubleTap = { currentOnReset() },
                )
            }
            .pointerInput(Unit) {
                var pointerStart = Offset.Zero
                var selectionStart = Offset.Zero
                detectDragGestures(
                    onDragStart = { position ->
                        pointerStart = position
                        val center = Offset(size.width / 2f, size.height / 2f)
                        val radius = (
                            minOf(size.width, size.height) / 2f - 8.dp.toPx()
                        ).coerceAtLeast(1f)
                        val angle = currentHue * PI.toFloat() * 2f - PI.toFloat() / 2f
                        val currentSelection = Offset(
                            cos(angle) * currentAmount * radius,
                            sin(angle) * currentAmount * radius,
                        )
                        val pointerSelection = position - center
                        selectionStart = if (
                            (pointerSelection - currentSelection).getDistance() <= 24.dp.toPx()
                        ) {
                            currentSelection
                        } else {
                            pointerSelection
                        }
                    },
                    onDrag = { change, _ ->
                        change.consume()
                        val radius = (
                            minOf(size.width, size.height) / 2f - 8.dp.toPx()
                        ).coerceAtLeast(1f)
                        val pointerDelta = change.position - pointerStart
                        val nextVector = selectionStart + pointerDelta
                        val nextAmount = (
                            sqrt(
                                nextVector.x * nextVector.x + nextVector.y * nextVector.y
                            ) / radius
                        ).coerceIn(0f, 1f)
                        val rawAngle = atan2(nextVector.y, nextVector.x) + PI.toFloat() / 2f
                        val normalizedHue = (
                            rawAngle / (PI.toFloat() * 2f) + 1f
                        ) % 1f
                        currentOnSelectionChange(
                            if (nextAmount < 0.02f) currentHue else normalizedHue,
                            nextAmount,
                        )
                    },
                )
            }
    ) {
        val inset = 8.dp.toPx()
        val diameter = minOf(size.width, size.height) - inset * 2f
        val center = Offset(size.width / 2f, size.height / 2f)
        val radius = diameter / 2f
        val wheelTopLeft = Offset(center.x - radius, center.y - radius)
        val wheelSize = Size(diameter, diameter)

        for (degree in 0 until 360 step 3) {
            drawArc(
                color = Color.hsv(degree.toFloat(), 0.78f, 1f),
                startAngle = degree.toFloat() - 90f,
                sweepAngle = 4f,
                useCenter = true,
                topLeft = wheelTopLeft,
                size = wheelSize,
            )
        }
        drawCircle(
            brush = Brush.radialGradient(
                colors = listOf(
                    Color(0xFFE0E0E0),
                    Color(0x00E0E0E0),
                ),
                center = center,
                radius = radius,
            ),
            radius = radius,
            center = center,
        )
        drawCircle(
            color = Color.Black.copy(alpha = 0.08f),
            radius = radius,
            center = center,
        )
        listOf(0.33f, 0.66f).forEach { fraction ->
            drawCircle(
                color = Color.White.copy(alpha = 0.18f),
                radius = radius * fraction,
                center = center,
                style = Stroke(width = 0.8.dp.toPx()),
            )
        }
        drawCircle(
            color = Color.White.copy(alpha = 0.40f),
            radius = radius,
            center = center,
            style = Stroke(width = 1.dp.toPx()),
        )

        val markerAngle = hue.coerceIn(0f, 1f) * PI.toFloat() * 2f - PI.toFloat() / 2f
        val markerRadius = amount.coerceIn(0f, 1f) * radius
        val markerCenter = Offset(
            center.x + cos(markerAngle) * markerRadius,
            center.y + sin(markerAngle) * markerRadius,
        )
        drawCircle(
            color = Color.Black.copy(alpha = 0.38f),
            radius = 12.dp.toPx(),
            center = markerCenter,
        )
        drawCircle(
            color = Color.White,
            radius = 9.dp.toPx(),
            center = markerCenter,
        )
        drawCircle(
            color = gradingColor(hue, amount),
            radius = 6.5.dp.toPx(),
            center = markerCenter,
        )
    }
}

@Composable
private fun GradingTonePreview(
    params: ColorRecipeParams,
    modifier: Modifier = Modifier,
) {
    val shadow = previewToneColor(
        hue = params.gradingShadowHue,
        amount = params.gradingShadowAmount,
        luminance = params.gradingShadowLuminance,
        neutral = 0.18f,
    )
    val midtone = previewToneColor(
        hue = params.gradingMidtoneHue,
        amount = params.gradingMidtoneAmount,
        luminance = params.gradingMidtoneLuminance,
        neutral = 0.50f,
    )
    val highlight = previewToneColor(
        hue = params.gradingHighlightHue,
        amount = params.gradingHighlightAmount,
        luminance = params.gradingHighlightLuminance,
        neutral = 0.84f,
    )
    val center = (0.5f - params.gradingBalance.coerceIn(-1f, 1f) * 0.22f)
        .coerceIn(0.28f, 0.72f)
    val transition = 0.025f +
        (0.18f - 0.025f) * params.gradingBlending.coerceIn(0f, 1f)
    val shadowEdge = center - 0.18f
    val highlightEdge = center + 0.18f
    val shadowBlendStart = (shadowEdge - transition).coerceIn(0f, 1f)
    val shadowBlendEnd = (shadowEdge + transition).coerceIn(0f, 1f)
    val highlightBlendStart = (highlightEdge - transition).coerceIn(0f, 1f)
    val highlightBlendEnd = (highlightEdge + transition).coerceIn(0f, 1f)

    Canvas(
        modifier = modifier.clip(RoundedCornerShape(7.dp))
    ) {
        drawRoundRect(
            brush = Brush.horizontalGradient(
                colorStops = arrayOf(
                    0f to shadow,
                    shadowBlendStart to shadow,
                    shadowBlendEnd to midtone,
                    highlightBlendStart to midtone,
                    highlightBlendEnd to highlight,
                    1f to highlight,
                )
            ),
            cornerRadius = androidx.compose.ui.geometry.CornerRadius(
                7.dp.toPx(),
                7.dp.toPx(),
            ),
        )
        drawRoundRect(
            color = Color.White.copy(alpha = 0.16f),
            cornerRadius = androidx.compose.ui.geometry.CornerRadius(
                7.dp.toPx(),
                7.dp.toPx(),
            ),
            style = Stroke(width = 1.dp.toPx()),
        )
    }
}

@Composable
private fun GradingSliderRow(
    label: String,
    value: Float,
    valueRange: ClosedFloatingPointRange<Float>,
    defaultValue: Float,
    valueText: String,
    onValueChange: (Float) -> Unit,
) {
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .height(36.dp)
            .background(Color.White.copy(alpha = 0.02f), RoundedCornerShape(6.dp))
            .padding(horizontal = 8.dp),
        verticalAlignment = Alignment.CenterVertically,
    ) {
        Text(
            text = label,
            color = Color.White.copy(alpha = 0.66f),
            fontSize = 11.sp,
            modifier = Modifier.size(width = 58.dp, height = 20.dp),
            maxLines = 1,
        )
        CustomSlider(
            value = value,
            onValueChange = onValueChange,
            onDoubleTap = { onValueChange(defaultValue) },
            valueRange = valueRange,
            activeTrackColor = GradingAccent,
            inactiveTrackColor = Color.White.copy(alpha = 0.14f),
            thumbColor = Color.White,
            thumbRadius = 7.dp,
            modifier = Modifier
                .weight(1f)
                .padding(horizontal = 8.dp),
        )
        Text(
            text = valueText,
            color = Color.White.copy(alpha = 0.72f),
            fontSize = 10.sp,
            fontWeight = FontWeight.Medium,
            textAlign = TextAlign.End,
            fontFamily = FontFamily.Monospace,
            modifier = Modifier.size(width = 42.dp, height = 20.dp),
            maxLines = 1,
        )
    }
}

private fun ColorRecipeParams.selectionFor(range: GradingRange): GradingSelection {
    return when (range) {
        GradingRange.SHADOWS -> GradingSelection(
            gradingShadowHue,
            gradingShadowAmount,
            gradingShadowLuminance,
        )
        GradingRange.MIDTONES -> GradingSelection(
            gradingMidtoneHue,
            gradingMidtoneAmount,
            gradingMidtoneLuminance,
        )
        GradingRange.HIGHLIGHTS -> GradingSelection(
            gradingHighlightHue,
            gradingHighlightAmount,
            gradingHighlightLuminance,
        )
    }
}

private fun ColorRecipeParams.withSelection(
    range: GradingRange,
    hue: Float,
    amount: Float,
): ColorRecipeParams {
    val safeHue = hue.coerceIn(0f, 1f)
    val safeAmount = amount.coerceIn(0f, 1f)
    return when (range) {
        GradingRange.SHADOWS -> copy(
            gradingShadowHue = safeHue,
            gradingShadowAmount = safeAmount,
        )
        GradingRange.MIDTONES -> copy(
            gradingMidtoneHue = safeHue,
            gradingMidtoneAmount = safeAmount,
        )
        GradingRange.HIGHLIGHTS -> copy(
            gradingHighlightHue = safeHue,
            gradingHighlightAmount = safeAmount,
        )
    }
}

private fun ColorRecipeParams.withLuminance(
    range: GradingRange,
    luminance: Float,
): ColorRecipeParams {
    val safeLuminance = luminance.coerceIn(-1f, 1f)
    return when (range) {
        GradingRange.SHADOWS -> copy(gradingShadowLuminance = safeLuminance)
        GradingRange.MIDTONES -> copy(gradingMidtoneLuminance = safeLuminance)
        GradingRange.HIGHLIGHTS -> copy(gradingHighlightLuminance = safeLuminance)
    }
}

private fun gradingColor(hue: Float, amount: Float): Color {
    return if (amount <= 0.001f) {
        Color.White
    } else {
        Color.hsv(
            hue = hue.coerceIn(0f, 1f) * 360f,
            saturation = (0.40f + amount.coerceIn(0f, 1f) * 0.45f),
            value = 1f,
        )
    }
}

private fun previewToneColor(
    hue: Float,
    amount: Float,
    luminance: Float,
    neutral: Float,
): Color {
    val base = Color(neutral, neutral, neutral, 1f)
    val tint = Color.hsv(hue.coerceIn(0f, 1f) * 360f, 0.72f, 1f)
    val safeAmount = amount.coerceIn(0f, 1f)
    val graded = lerp(base, tint, safeAmount * 0.55f)
    val luminanceShift = neutral * safeAmount *
        luminance.coerceIn(-1f, 1f) * GRADING_LUMINANCE_PREVIEW_STRENGTH
    return Color(
        red = (graded.red + luminanceShift).coerceIn(0f, 1f),
        green = (graded.green + luminanceShift).coerceIn(0f, 1f),
        blue = (graded.blue + luminanceShift).coerceIn(0f, 1f),
        alpha = 1f,
    )
}

private fun formatSignedPercent(value: Float): String {
    val percent = (value.coerceIn(-1f, 1f) * 100f).roundToInt()
    return if (percent > 0) "+$percent" else percent.toString()
}

private const val GRADING_LUMINANCE_PREVIEW_STRENGTH = 0.17f
