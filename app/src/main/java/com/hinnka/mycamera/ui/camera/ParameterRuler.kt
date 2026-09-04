package com.hinnka.mycamera.ui.camera

import androidx.compose.foundation.Canvas
import androidx.compose.foundation.gestures.detectDragGestures
import androidx.compose.foundation.gestures.detectTapGestures
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Text
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.drawText
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.rememberTextMeasurer
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.hinnka.mycamera.R
import kotlin.math.abs
import kotlin.math.roundToInt

/**
 * Parameter types that can be adjusted with the ruler
 */
enum class CameraParameter {
    EXPOSURE_COMPENSATION,  // AE
    SHUTTER_SPEED,         // Tv
    ISO,                   // ISO
    FOCUS,                 // Focus
    WHITE_BALANCE          // AWB
}

internal val CameraParameterRulerHeight = 40.dp
private val ParameterRulerElementSize = 18.dp
private val ParameterRulerNormalTickHeight = 10.dp
private val ParameterRulerVerticalPadding = 4.dp
private val ParameterRulerAutoButtonOffset =
    CameraParameterRulerHeight / 2 -
        ParameterRulerVerticalPadding -
        ParameterRulerElementSize / 2

/**
 * Parameter ruler component for adjusting camera parameters
 */
@Composable
fun ParameterRuler(
    parameter: CameraParameter,
    currentValue: Float,
    minValue: Float,
    maxValue: Float,
    isAdjustable: Boolean,
    showAutoButton: Boolean,
    isAutoModeToggleEnabled: Boolean = true,
    resetValue: Float? = null,
    showHyperfocalButton: Boolean = false,
    hyperfocalEnabled: Boolean = false,
    hyperfocalDistanceMeters: Float = 0f,
    onHyperfocalToggle: ((Boolean) -> Unit)? = null,
    onValueChange: (Float) -> Unit,
    onAutoModeToggle: () -> Unit,
    modifier: Modifier = Modifier
) {
    val yellow = Color(0xFFFFD700)

    val currentValueState by rememberUpdatedState(currentValue)
    val resetValueState by rememberUpdatedState(resetValue)
    var selectedValue by remember(parameter) { mutableStateOf(currentValue) }
    var isDragging by remember(parameter) { mutableStateOf(false) }
    val isAdjustableState by rememberUpdatedState(isAdjustable)
    val scaleValues = remember(parameter, minValue, maxValue) {
        getScaleValues(parameter, minValue, maxValue)
    }

    LaunchedEffect(parameter, currentValue) {
        selectedValue = currentValueState
    }

    Box(
        modifier = modifier
            .fillMaxWidth()
            .height(CameraParameterRulerHeight)
            .padding(horizontal = 8.dp)
    ) {
        Row(
            modifier = Modifier.fillMaxSize(),
            verticalAlignment = Alignment.CenterVertically
        ) {
            // Auto mode button (if supported)
            if (showAutoButton) {
                Button(
                    onClick = onAutoModeToggle,
                    enabled = isAutoModeToggleEnabled,
                    modifier = Modifier
                        .padding(start = 8.dp)
                        .offset(y = ParameterRulerAutoButtonOffset)
                        .size(ParameterRulerElementSize),
                    colors = ButtonDefaults.buttonColors(
                        containerColor = if (!isAdjustable) yellow else Color.Gray.copy(alpha = 0.5f),
                        contentColor = if (!isAdjustable) Color.Black else Color.White,
                        disabledContainerColor = Color.Gray.copy(alpha = 0.25f),
                        disabledContentColor = Color.White.copy(alpha = 0.35f)
                    ),
                    shape = CircleShape,
                    contentPadding = PaddingValues(0.dp)
                ) {
                    Text(
                        text = "A",
                        fontSize = 10.sp,
                        fontWeight = FontWeight.Bold
                    )
                }
            }

            if (showHyperfocalButton && onHyperfocalToggle != null) {
                HyperfocalFocusButton(
                    enabled = hyperfocalEnabled,
                    distanceMeters = hyperfocalDistanceMeters,
                    onToggle = { onHyperfocalToggle(!hyperfocalEnabled) }
                )
            }

            // Ruler scale area
            Box(
                modifier = Modifier
                    .weight(1f)
                    .fillMaxHeight()
                    .padding(horizontal = 16.dp)
                    .pointerInput(parameter, minValue, maxValue) {
                        detectTapGestures(
                            onDoubleTap = {
                                val value = resetValueState
                                if (isAdjustableState && value != null) {
                                    selectedValue = value
                                    if (value != currentValueState) {
                                        onValueChange(value)
                                    }
                                }
                            },
                            onTap = {
                                if (isAdjustableState) {
                                    val width = size.width
                                    val stepWidth = width / (scaleValues.size - 1).coerceAtLeast(1)
                                    val index = (it.x / stepWidth).roundToInt().coerceIn(0, scaleValues.lastIndex)
                                    selectedValue = scaleValues[index]
                                    if (selectedValue != currentValueState) {
                                        onValueChange(selectedValue)
                                    }
                                }
                            }
                        )
                    }
                    .pointerInput(parameter, minValue, maxValue) {
                        detectDragGestures(
                            onDragStart = {
                                isDragging = isAdjustableState
                            },
                            onDragEnd = {
                                isDragging = false
                            },
                            onDragCancel = {
                                isDragging = false
                            },
                            onDrag = { change, _ ->
                                if (isAdjustableState) {
                                    change.consume()
                                    val width = size.width
                                    val stepWidth = width / (scaleValues.size - 1).coerceAtLeast(1)
                                    val index = (change.position.x / stepWidth)
                                        .roundToInt()
                                        .coerceIn(0, scaleValues.lastIndex)
                                    selectedValue = scaleValues[index]
                                    if (selectedValue != currentValueState) {
                                        onValueChange(selectedValue)
                                    }
                                }
                            }
                        )
                    }
            ) {
                // Scale marks
                RulerScale(
                    parameter = parameter,
                    minValue = minValue,
                    maxValue = maxValue,
                    currentValue = selectedValue,
                    showCurrentValue = isDragging,
                )
            }
        }
    }
}

@Composable
private fun HyperfocalFocusButton(
    enabled: Boolean,
    distanceMeters: Float,
    onToggle: () -> Unit
) {
    val yellow = Color(0xFFFFD700)
    Button(
        onClick = onToggle,
        modifier = Modifier
            .padding(start = 6.dp)
            .offset(y = ParameterRulerAutoButtonOffset)
            .width(58.dp)
            .height(ParameterRulerElementSize),
        colors = ButtonDefaults.buttonColors(
            containerColor = if (enabled) yellow else Color.Gray.copy(alpha = 0.45f),
            contentColor = if (enabled) Color.Black else Color.White
        ),
        shape = RoundedCornerShape(ParameterRulerElementSize / 2),
        contentPadding = PaddingValues(horizontal = 0.dp, vertical = 0.dp)
    ) {
        Column(
            horizontalAlignment = Alignment.CenterHorizontally,
            verticalArrangement = Arrangement.Center
        ) {
            Text(
                text = stringResource(R.string.camera_hyperfocal_label),
                fontSize = 8.sp,
                lineHeight = 8.sp,
                fontWeight = FontWeight.Bold,
                maxLines = 1
            )
            if (enabled && distanceMeters > 0f) {
                Text(
                    text = formatHyperfocalDistance(distanceMeters),
                    fontSize = 7.sp,
                    lineHeight = 7.sp,
                    fontWeight = FontWeight.Bold,
                    maxLines = 1
                )
            }
        }
    }
}

@Composable
private fun formatHyperfocalDistance(distanceMeters: Float): String {
    return if (distanceMeters >= 1.0f) {
        stringResource(R.string.camera_hyperfocal_distance_meters, distanceMeters)
    } else {
        stringResource(
            R.string.camera_hyperfocal_distance_centimeters,
            (distanceMeters * 100).roundToInt()
        )
    }
}

/**
 * Ruler scale with tick marks and labels
 */
@Composable
private fun RulerScale(
    parameter: CameraParameter,
    minValue: Float,
    maxValue: Float,
    currentValue: Float,
    showCurrentValue: Boolean,
) {
    val scaleValues = getScaleValues(parameter, minValue, maxValue)
    val yellow = Color(0xFFFFD700)
    val textMeasurer = rememberTextMeasurer()

    Canvas(
        modifier = Modifier
            .fillMaxSize()
            .padding(vertical = ParameterRulerVerticalPadding)
    ) {
        val width = size.width
        val height = size.height
        val stepCount = scaleValues.size
        
        if (stepCount <= 1) return@Canvas
        
        val stepWidth = width / (stepCount - 1)
        val matchingIndex = scaleValues.indexOfFirst {
            isSameParameterValue(it, currentValue, parameter)
        }
        val selectedIndex = if (matchingIndex >= 0) {
            matchingIndex
        } else {
            scaleValues.indices.minByOrNull { index ->
                abs(scaleValues[index] - currentValue)
            } ?: 0
        }

        scaleValues.forEachIndexed { index, value ->
            val x = index * stepWidth
            val isCurrent = index == selectedIndex

            if (showCurrentValue && isCurrent) {
                val text = formatParameterValue(parameter, value)
                val textStyle = TextStyle(
                    fontSize = 12.sp,
                    fontWeight = FontWeight.Bold,
                    color = yellow,
                    textAlign = TextAlign.Center,
                    shadow = ViewfinderTextShadow
                )
                val textLayoutResult = textMeasurer.measure(
                    text = text,
                    style = textStyle,
                    constraints = androidx.compose.ui.unit.Constraints(
                        maxWidth = Int.MAX_VALUE,
                        maxHeight = Int.MAX_VALUE
                    ),
                    overflow = TextOverflow.Visible,
                    softWrap = false,
                    maxLines = 1
                )
                val textX = (x - textLayoutResult.size.width / 2f).coerceIn(
                    minimumValue = 0f,
                    maximumValue = (width - textLayoutResult.size.width).coerceAtLeast(0f),
                )
                drawText(
                    textLayoutResult = textLayoutResult,
                    topLeft = Offset(
                        x = textX,
                        y = 0f
                    )
                )
            }

            val tickHeight = if (isCurrent) {
                ParameterRulerElementSize.toPx()
            } else {
                ParameterRulerNormalTickHeight.toPx()
            }
            val tickWidth = if (isCurrent) 1.5.dp.toPx() else 1.dp.toPx()
            val tickColor = if (isCurrent) yellow else Color.White.copy(alpha = 0.6f)
            
            drawRect(
                color = tickColor,
                topLeft = Offset(x - tickWidth / 2f, height - tickHeight),
                size = androidx.compose.ui.geometry.Size(tickWidth, tickHeight)
            )
        }
    }
}

private fun isSameParameterValue(
    value: Float,
    currentValue: Float,
    parameter: CameraParameter
): Boolean {
    val tolerance = when (parameter) {
        CameraParameter.SHUTTER_SPEED -> 1000f
        CameraParameter.ISO -> 1f
        CameraParameter.WHITE_BALANCE -> 25f
        else -> 1e-3f
    }
    return abs(value - currentValue) < tolerance
}


/**
 * Get scale values for the parameter
 */
private fun getScaleValues(parameter: CameraParameter, minValue: Float, maxValue: Float): List<Float> {
    return when (parameter) {
        CameraParameter.EXPOSURE_COMPENSATION -> {
            generateSequence(minValue) { it + 0.333f }
                .takeWhile { it <= maxValue }
                .filter { it in minValue..maxValue }
                .toList()
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

    }
}

/**
 * Format parameter value for display
 */
private fun formatParameterValue(parameter: CameraParameter, value: Float): String {
    return when (parameter) {
        CameraParameter.EXPOSURE_COMPENSATION -> {
            val epsilon = 0.0001f
            val rounded = value.roundToInt()

            when {
                abs(value - rounded) < epsilon -> rounded.toString()
                value > 0 -> String.format("+%.1f", value)
                else -> String.format("%.1f", value)
            }
        }

        CameraParameter.SHUTTER_SPEED -> {
            if (value >= 1_000_000_000) {
                return (value / 1_000_000_000).toInt().toString()
            }
            val denom = (1_000_000_000.0 / value).roundToInt()
            "1/$denom"
        }

        CameraParameter.ISO -> {
            value.toInt().toString()
        }

        CameraParameter.WHITE_BALANCE -> {
            "${value.toInt()}K"
        }

        CameraParameter.FOCUS -> {
            if (value <= 0.01f) "∞"
            else {
                val meters = 1.0f / value
                if (meters >= 1.0f) String.format("%.1fm", meters)
                else String.format("%dcm", (meters * 100).toInt())
            }
        }

    }
}
