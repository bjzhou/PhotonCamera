package com.hinnka.mycamera.ui.camera

import androidx.compose.foundation.Canvas
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.gestures.detectHorizontalDragGestures
import androidx.compose.foundation.gestures.detectTapGestures
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.selection.toggleable
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.material3.Text
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.draw.clipToBounds
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.StrokeCap
import androidx.compose.ui.hapticfeedback.HapticFeedbackType
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.platform.LocalHapticFeedback
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.semantics.ProgressBarRangeInfo
import androidx.compose.ui.semantics.Role
import androidx.compose.ui.semantics.progressBarRangeInfo
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.semantics.setProgress
import androidx.compose.ui.semantics.stateDescription
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.hinnka.mycamera.R
import kotlin.math.abs
import kotlin.math.roundToInt

/** Parameters supported by the manual control ruler. */
enum class CameraParameter {
    EXPOSURE_COMPENSATION,
    SHUTTER_SPEED,
    ISO,
    FOCUS,
    WHITE_BALANCE
}

internal val CameraParameterRulerHeight = 64.dp
private val ParameterRulerTickSpacing = 16.dp

@Composable
fun ParameterRuler(
    parameter: CameraParameter,
    currentValue: Float,
    minValue: Float,
    maxValue: Float,
    isAdjustable: Boolean,
    isAutoMode: Boolean,
    showAutoButton: Boolean,
    isAutoModeToggleEnabled: Boolean = true,
    valueStep: Float = 1f / 3f,
    resetValue: Float? = null,
    showHyperfocalButton: Boolean = false,
    hyperfocalEnabled: Boolean = false,
    hyperfocalDistanceMeters: Float = 0f,
    onHyperfocalToggle: ((Boolean) -> Unit)? = null,
    onValueChange: (Float) -> Unit,
    onAutoModeToggle: () -> Unit,
    modifier: Modifier = Modifier
) {
    val scaleValues = remember(parameter, minValue, maxValue, valueStep) {
        getScaleValues(parameter, minValue, maxValue, valueStep)
    }
    var selectedValue by remember(parameter, scaleValues) { mutableFloatStateOf(currentValue) }
    var scrollIndex by remember(parameter, scaleValues) {
        mutableFloatStateOf(closestScaleIndex(scaleValues, currentValue).toFloat())
    }
    var isDragging by remember(parameter, scaleValues) { mutableStateOf(false) }
    val currentValueState by rememberUpdatedState(currentValue)
    val resetValueState by rememberUpdatedState(resetValue)
    val adjustableState by rememberUpdatedState(isAdjustable && scaleValues.size > 1)
    val autoModeState by rememberUpdatedState(isAutoMode)
    val onValueChangeState by rememberUpdatedState(onValueChange)
    val haptic = LocalHapticFeedback.current

    LaunchedEffect(currentValue, isDragging, scaleValues) {
        // Capture results continue to arrive during a gesture; they must not pull the ruler back.
        if (!isDragging) {
            selectedValue = currentValue
            scrollIndex = closestScaleIndex(scaleValues, currentValue).toFloat()
        }
    }

    fun selectValue(value: Float, force: Boolean = false) {
        val clamped = value.coerceIn(minValue, maxValue)
        val changed = clamped != selectedValue
        selectedValue = clamped
        if (changed) haptic.performHapticFeedback(HapticFeedbackType.TextHandleMove)
        // Manual setters also leave auto mode, including when the selected value is unchanged.
        if (changed || force || autoModeState || clamped != currentValueState) {
            onValueChangeState(clamped)
        }
    }

    val displayedValue = if (isDragging) selectedValue else currentValue
    Row(
        modifier = modifier.fillMaxWidth().height(CameraParameterRulerHeight)
            .padding(horizontal = 12.dp),
        verticalAlignment = Alignment.CenterVertically,
        horizontalArrangement = Arrangement.spacedBy(4.dp)
    ) {
        if (showAutoButton) {
            RulerModeButton(
                selected = isAutoMode,
                enabled = isAutoModeToggleEnabled,
                onClick = onAutoModeToggle
            ) {
                Text(
                    text = stringResource(R.string.camera_parameter_auto),
                    fontSize = 12.sp,
                    fontWeight = FontWeight.SemiBold
                )
            }
        }
        if (showHyperfocalButton && onHyperfocalToggle != null) {
            RulerModeButton(
                selected = hyperfocalEnabled,
                onClick = { onHyperfocalToggle(!hyperfocalEnabled) },
                modifier = Modifier.width(64.dp)
            ) {
                Column(horizontalAlignment = Alignment.CenterHorizontally) {
                    Text(
                        stringResource(R.string.camera_hyperfocal_label),
                        fontSize = 10.sp,
                        lineHeight = 12.sp,
                        fontWeight = FontWeight.SemiBold
                    )
                    if (hyperfocalEnabled && hyperfocalDistanceMeters > 0f) {
                        Text(
                            formatHyperfocalDistance(hyperfocalDistanceMeters),
                            fontSize = 9.sp,
                            lineHeight = 11.sp
                        )
                    }
                }
            }
        }
        Box(
            modifier = Modifier.weight(1f).fillMaxHeight().clipToBounds()
                .semantics {
                    stateDescription = formatParameterValue(parameter, displayedValue)
                    progressBarRangeInfo = ProgressBarRangeInfo(
                        closestScaleIndex(scaleValues, displayedValue).toFloat(),
                        0f..scaleValues.lastIndex.toFloat(),
                        (scaleValues.size - 2).coerceAtLeast(0)
                    )
                    if (isAdjustable && scaleValues.size > 1) {
                        setProgress { index ->
                            selectValue(scaleValues[index.roundToInt().coerceIn(scaleValues.indices)], force = true)
                            true
                        }
                    }
                }
                .pointerInput(parameter, scaleValues) {
                    detectTapGestures(
                        onDoubleTap = {
                            if (adjustableState) {
                                resetValueState?.let { selectValue(it, force = true) }
                            }
                        },
                        onTap = { position ->
                            if (adjustableState) {
                                val index = (scrollIndex + (position.x - size.width / 2f) /
                                    ParameterRulerTickSpacing.toPx()).roundToInt().coerceIn(scaleValues.indices)
                                selectValue(scaleValues[index], force = true)
                            }
                        }
                    )
                }
                .pointerInput(parameter, scaleValues) {
                    detectHorizontalDragGestures(
                        onDragStart = {
                            isDragging = adjustableState
                            if (isDragging) {
                                scrollIndex = closestScaleIndex(scaleValues, currentValueState).toFloat()
                                selectValue(scaleValues[scrollIndex.roundToInt()], force = true)
                            }
                        },
                        onDragEnd = { isDragging = false },
                        onDragCancel = { isDragging = false },
                        onHorizontalDrag = { change, delta ->
                            if (isDragging && adjustableState) {
                                change.consume()
                                scrollIndex = (scrollIndex - delta / ParameterRulerTickSpacing.toPx())
                                    .coerceIn(0f, scaleValues.lastIndex.toFloat())
                                val value = scaleValues[scrollIndex.roundToInt()]
                                if (value != selectedValue) selectValue(value)
                            }
                        }
                    )
                },
            contentAlignment = Alignment.TopCenter
        ) {
            Text(
                text = formatParameterValue(parameter, displayedValue),
                modifier = Modifier.padding(top = 3.dp),
                color = CameraParameterAccent,
                fontSize = 14.sp,
                fontWeight = FontWeight.SemiBold,
                style = TextStyle(shadow = ViewfinderTextShadow),
                maxLines = 1,
                softWrap = false
            )
            Canvas(Modifier.fillMaxSize()) {
                val center = size.width / 2f
                val spacing = ParameterRulerTickSpacing.toPx()
                val baseline = size.height - 9.dp.toPx()
                drawLine(
                    Color.White.copy(alpha = 0.12f),
                    Offset(0f, baseline), Offset(size.width, baseline), 1.dp.toPx()
                )
                scaleValues.indices.forEach { index ->
                    val x = center + (index - scrollIndex) * spacing
                    if (x !in 0f..size.width) return@forEach
                    val edgeAlpha = (1f - abs(x - center) / center.coerceAtLeast(1f)).coerceIn(0f, 1f)
                    val major = index % 5 == 0 || index == scaleValues.lastIndex
                    drawLine(
                        color = Color.White.copy(alpha = (0.15f + 0.55f * edgeAlpha) * if (isAdjustable) 1f else 0.5f),
                        start = Offset(x, baseline - if (major) 17.dp.toPx() else 9.dp.toPx()),
                        end = Offset(x, baseline),
                        strokeWidth = 1.dp.toPx(),
                        cap = StrokeCap.Round
                    )
                }
                drawLine(
                    CameraParameterAccent,
                    Offset(center, baseline - 23.dp.toPx()), Offset(center, baseline + 2.dp.toPx()),
                    2.dp.toPx(), StrokeCap.Round
                )
            }
        }
    }
}

@Composable
private fun RulerModeButton(
    selected: Boolean,
    onClick: () -> Unit,
    modifier: Modifier = Modifier,
    enabled: Boolean = true,
    content: @Composable () -> Unit
) {
    Box(
        modifier = modifier.defaultMinSize(minWidth = 44.dp, minHeight = 48.dp)
            .clip(CircleShape)
            .toggleable(value = selected, enabled = enabled, role = Role.Switch, onValueChange = { onClick() })
            .padding(horizontal = 6.dp, vertical = 10.dp)
            .border(1.dp, if (selected) CameraParameterAccent else Color.White.copy(alpha = 0.3f), CircleShape)
            .background(if (selected) CameraParameterAccent else Color.Transparent, CircleShape),
        contentAlignment = Alignment.Center
    ) {
        androidx.compose.runtime.CompositionLocalProvider(
            androidx.compose.material3.LocalContentColor provides when {
                !enabled -> Color.White.copy(alpha = 0.3f)
                selected -> Color.Black
                else -> Color.White
            },
            content = content
        )
    }
}

@Composable
private fun formatHyperfocalDistance(distanceMeters: Float): String = if (distanceMeters >= 1f) {
    stringResource(R.string.camera_hyperfocal_distance_meters, distanceMeters)
} else {
    stringResource(R.string.camera_hyperfocal_distance_centimeters, (distanceMeters * 100).roundToInt())
}

private fun closestScaleIndex(values: List<Float>, value: Float): Int =
    values.indices.minByOrNull { abs(values[it] - value) } ?: 0

private fun formatParameterValue(parameter: CameraParameter, value: Float): String = when (parameter) {
    CameraParameter.EXPOSURE_COMPENSATION -> when {
        abs(value) < 0.05f -> "0"
        value > 0f -> String.format("+%.1f", value)
        else -> String.format("%.1f", value)
    }
    CameraParameter.SHUTTER_SPEED -> formatShutterSpeedValue(value.toLong())
    CameraParameter.ISO -> value.roundToInt().toString()
    CameraParameter.WHITE_BALANCE -> "${value.roundToInt()}K"
    CameraParameter.FOCUS -> formatFocusDistance(value)
}

private fun getScaleValues(parameter: CameraParameter, minValue: Float, maxValue: Float, valueStep: Float): List<Float> {
    if (maxValue <= minValue) return listOf(minValue)
    return when (parameter) {
        CameraParameter.EXPOSURE_COMPENSATION -> {
            (0..((maxValue - minValue) / valueStep).roundToInt()).map { minValue + it * valueStep }
        }

        CameraParameter.SHUTTER_SPEED -> {
            // Common shutter speeds in log scale
            // Values are in nanoseconds, show as fractions
            listOf(
                minValue,
                1_000_000_000L / 12000,  // 1/12000
                1_000_000_000L / 8000,  // 1/8000
                1_000_000_000L / 4000,
                1_000_000_000L / 3200,
                1_000_000_000L / 2500,
                1_000_000_000L / 2000,
                1_000_000_000L / 1600,
                1_000_000_000L / 1250,
                1_000_000_000L / 1000,
                1_000_000_000L / 800,
                1_000_000_000L / 640,
                1_000_000_000L / 500,
                1_000_000_000L / 400,
                1_000_000_000L / 320,
                1_000_000_000L / 250,
                1_000_000_000L / 200,
                1_000_000_000L / 160,
                1_000_000_000L / 125,
                1_000_000_000L / 100,
                1_000_000_000L / 80,
                1_000_000_000L / 60,
                1_000_000_000L / 50,
                1_000_000_000L / 40,
                1_000_000_000L / 30,
                1_000_000_000L / 25,
                1_000_000_000L / 20,
                1_000_000_000L / 15,
                1_000_000_000L / 13,
                1_000_000_000L / 10,
                1_000_000_000L / 8,
                1_000_000_000L / 6,
                1_000_000_000L / 5,
                1_000_000_000L / 4,
                1_000_000_000L / 3,
                1_000_000_000L / 2,
                1_000_000_000L / 1,
                1_000_000_000L * 2,
                1_000_000_000L * 3,
                1_000_000_000L * 4,
                1_000_000_000L * 5,
                1_000_000_000L * 6,
                1_000_000_000L * 8,
                1_000_000_000L * 10,
                1_000_000_000L * 13,
                1_000_000_000L * 15,
                1_000_000_000L * 20,
                1_000_000_000L * 25,
                1_000_000_000L * 30,
                maxValue
            ).toSet().map { it.toFloat() }.filter { it in minValue..maxValue }
        }

        CameraParameter.ISO -> {
            // Standard ISO values
            listOf(
                minValue,
                50f,
                64f,
                80f,
                100f,
                125f,
                160f,
                200f,
                250f,
                320f,
                400f,
                500f,
                640f,
                800f,
                1000f,
                1250f,
                1600f,
                2000f,
                2500f,
                3200f,
                4000f,
                5000f,
                6400f,
                8000f,
                12800f,
                maxValue
            )
                .toSet()
                .map { it }
                .filter { it in minValue..maxValue }
        }

        CameraParameter.WHITE_BALANCE -> {
            // Color temperature presets
            generateSequence(minValue) { it + 100f }
                .takeWhile { it <= maxValue }
                .filter { it in minValue..maxValue }
                .toList()
        }

        CameraParameter.FOCUS -> {
            val steps = 20
            val list = mutableListOf<Float>()
            for (i in 0..steps) {
                list.add(minValue + (maxValue - minValue) * i / steps)
            }
            list
        }

    }.plus(listOf(minValue, maxValue)).filter { it in minValue..maxValue }.distinct().sorted()
}
