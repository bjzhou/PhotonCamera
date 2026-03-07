package com.hinnka.mycamera.ui.camera

import androidx.compose.foundation.Canvas
import androidx.compose.foundation.background
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
import androidx.compose.ui.graphics.Path
import androidx.compose.ui.graphics.drawscope.DrawScope
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.text.TextMeasurer
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.drawText
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.rememberTextMeasurer
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import kotlin.math.abs
import kotlin.math.roundToInt

/**
 * Parameter types that can be adjusted with the ruler
 */
enum class CameraParameter {
    EXPOSURE_COMPENSATION,  // AE
    SHUTTER_SPEED,         // Tv
    ISO,                   // ISO
    APERTURE,              // Av
    WHITE_BALANCE          // AWB
}

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
    onValueChange: (Float) -> Unit,
    onAutoModeToggle: () -> Unit,
    modifier: Modifier = Modifier
) {
    val yellow = Color(0xFFFFD700)

    val currentValueState by rememberUpdatedState(currentValue)
    var selectedValue by remember(parameter) { mutableStateOf(currentValue) }
    val isAdjustableState by rememberUpdatedState(isAdjustable)
    val scaleValues = remember(parameter, minValue, maxValue) {
        getScaleValues(parameter, minValue, maxValue)
    }

    LaunchedEffect(isAdjustable, currentValue) {
        if (!isAdjustable) {
            selectedValue = currentValueState
        }
    }

    Box(
        modifier = modifier
            .fillMaxWidth()
            .height(48.dp)
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
                    modifier = Modifier
                        .padding(start = 8.dp)
                        .size(25.dp),
                    colors = ButtonDefaults.buttonColors(
                        containerColor = if (!isAdjustable) yellow else Color.Gray.copy(alpha = 0.5f),
                        contentColor = if (!isAdjustable) Color.Black else Color.White
                    ),
                    shape = CircleShape,
                    contentPadding = PaddingValues(0.dp)
                ) {
                    Text(
                        text = "A",
                        fontSize = 12.sp,
                        fontWeight = FontWeight.Bold
                    )
                }
            }

            // Ruler scale area
            Box(
                modifier = Modifier
                    .weight(1f)
                    .fillMaxHeight()
                    .padding(horizontal = 16.dp)
                    .pointerInput(minValue, maxValue) {
                        detectTapGestures {
                            if (isAdjustableState) {
                                val width = size.width
                                val stepWidth = width / scaleValues.size
                                val index = (it.x / stepWidth).toInt().coerceIn(0, scaleValues.lastIndex)
                                selectedValue = scaleValues[index]
                                if (selectedValue != currentValueState) {
                                    onValueChange(selectedValue)
                                }
                            }
                        }
                    }
                    .pointerInput(minValue, maxValue) {
                        detectDragGestures { change, _ ->
                            if (isAdjustableState) {
                                change.consume()
                                val width = size.width
                                val stepWidth = width / scaleValues.size
                                val index = (change.position.x / stepWidth).toInt().coerceIn(0, scaleValues.lastIndex)
                                selectedValue = scaleValues[index]
                                if (selectedValue != currentValueState) {
                                    onValueChange(selectedValue)
                                }
                            }
                        }
                    }
            ) {
                // Scale marks
                RulerScale(
                    parameter = parameter,
                    minValue = minValue,
                    maxValue = maxValue,
                    currentValue = selectedValue
                )
            }
        }
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
    currentValue: Float
) {
    val scaleValues = getScaleValues(parameter, minValue, maxValue)
    val yellow = Color(0xFFFFD700)
    val textMeasurer = rememberTextMeasurer()

    Canvas(modifier = Modifier.fillMaxSize().padding(vertical = 8.dp)) {
        val width = size.width
        val height = size.height
        val stepCount = scaleValues.size
        
        if (stepCount <= 1) return@Canvas
        
        // Calculate step width
        val stepWidth = width / (stepCount - 1)
        
        // Find current value position
        val currentPosition = findValuePosition(currentValue, scaleValues, stepWidth)
        val currentIndex = findClosestIndex(currentValue, scaleValues, parameter)
        
        // Draw each scale value
        scaleValues.forEachIndexed { index, value ->
            val x = index * stepWidth
            
            val isCurrent = if (parameter == CameraParameter.SHUTTER_SPEED) {
                abs(value - currentValue) < 1000
            } else {
                abs(value - currentValue) < 1e-3f
            }
            
            // Determine if we should show label
            val shouldShowLabel = isCurrent || index == 0 || index == scaleValues.lastIndex || value == 0f
            
            // Draw label
            if (shouldShowLabel) {
                val text = formatParameterValue(parameter, value)
                val textStyle = TextStyle(
                    fontSize = if (isCurrent) 12.sp else 10.sp,
                    fontWeight = if (isCurrent) FontWeight.Bold else FontWeight.Normal,
                    color = if (isCurrent) yellow else Color.White.copy(alpha = 0.6f),
                    textAlign = TextAlign.Center
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
                
                // Draw text centered on the tick mark
                drawText(
                    textLayoutResult = textLayoutResult,
                    topLeft = Offset(
                        x = x - textLayoutResult.size.width / 2f,
                        y = 0f
                    )
                )
            }
            
            // Draw tick mark
            val tickHeight = if (isCurrent) 13.dp.toPx() else 9.dp.toPx()
            val tickWidth = if (isCurrent) 2.dp.toPx() else 1.dp.toPx()
            val tickColor = if (isCurrent) yellow else Color.White.copy(alpha = 0.6f)
            
            drawRect(
                color = tickColor,
                topLeft = Offset(x - tickWidth / 2f, height - tickHeight),
                size = androidx.compose.ui.geometry.Size(tickWidth, tickHeight)
            )
        }
        
        // Draw indicator if current value is between two scale values
        if (!isValueOnScale(currentValue, scaleValues, parameter)) {
            drawCurrentValueIndicator(
                currentPosition = currentPosition,
                height = height,
                yellow = yellow
            )
        }
    }
}

/**
 * Check if current value matches any scale value
 */
private fun isValueOnScale(
    currentValue: Float,
    scaleValues: List<Float>,
    parameter: CameraParameter
): Boolean {
    val tolerance = if (parameter == CameraParameter.SHUTTER_SPEED) 1000f else 1e-3f
    return scaleValues.any { abs(it - currentValue) < tolerance }
}

/**
 * Find the position (x coordinate) of the current value
 */
private fun findValuePosition(
    currentValue: Float,
    scaleValues: List<Float>,
    stepWidth: Float
): Float {
    if (scaleValues.isEmpty()) return 0f
    if (scaleValues.size == 1) return 0f
    
    // Find the two scale values that bracket the current value
    for (i in 0 until scaleValues.size - 1) {
        val v1 = scaleValues[i]
        val v2 = scaleValues[i + 1]
        
        if (currentValue in v1..v2 || currentValue in v2..v1) {
            // Linear interpolation
            val ratio = if (v2 != v1) {
                (currentValue - v1) / (v2 - v1)
            } else {
                0f
            }
            return i * stepWidth + ratio * stepWidth
        }
    }
    
    // If not found, clamp to edges
    return when {
        currentValue < scaleValues.first() -> 0f
        currentValue > scaleValues.last() -> (scaleValues.size - 1) * stepWidth
        else -> 0f
    }
}

/**
 * Find closest scale index to current value
 */
private fun findClosestIndex(
    currentValue: Float,
    scaleValues: List<Float>,
    parameter: CameraParameter
): Int {
    if (scaleValues.isEmpty()) return 0
    
    return scaleValues.indices.minByOrNull { index ->
        abs(scaleValues[index] - currentValue)
    } ?: 0
}

/**
 * Draw a triangle indicator at the current value position
 */
private fun DrawScope.drawCurrentValueIndicator(
    currentPosition: Float,
    height: Float,
    yellow: Color
) {
    val trianglePath = Path().apply {
        val triangleHeight = 8.dp.toPx()
        val triangleWidth = 6.dp.toPx()
        val y = height - 13.dp.toPx() - 2.dp.toPx() // Position above the tallest tick
        
        moveTo(currentPosition, y)
        lineTo(currentPosition - triangleWidth / 2f, y - triangleHeight)
        lineTo(currentPosition + triangleWidth / 2f, y - triangleHeight)
        close()
    }
    
    drawPath(
        path = trianglePath,
        color = yellow
    )
}

/**
 * Get scale values for the parameter
 */
private fun getScaleValues(parameter: CameraParameter, minValue: Float, maxValue: Float): List<Float> {
    return when (parameter) {
        CameraParameter.EXPOSURE_COMPENSATION -> {
            generateSequence(minValue) { it + 1 / 3f }
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
            generateSequence(minValue) { it + 500f }
                .takeWhile { it <= maxValue }
                .filter { it in minValue..maxValue }
                .toList()
        }

        CameraParameter.APERTURE -> {
            listOf(
                minValue,
                1f,
                1.4f,
                1.8f,
                2f,
                2.4f,
                2.8f,
                3.2f,
                3.5f,
                4f,
                4.5f,
                5f,
                5.6f,
                6.3f,
                7.1f,
                8f,
                9f,
                10f,
                11f,
                13f,
                14f,
                16f,
                maxValue
            )
                .toSet()
                .map { it }
                .filter { it in minValue..maxValue }
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

        CameraParameter.APERTURE -> {
            "f/${String.format("%.1f", value)}"
        }
    }
}
