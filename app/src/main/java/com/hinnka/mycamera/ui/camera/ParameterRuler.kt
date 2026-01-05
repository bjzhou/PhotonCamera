package com.hinnka.mycamera.ui.camera

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
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.text.font.FontWeight
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
    onDismiss: () -> Unit,
    modifier: Modifier = Modifier
) {
    val yellow = Color(0xFFFFD700)
    val backgroundColor = Color.Black.copy(alpha = 0.95f)

    val currentValueState by rememberUpdatedState(currentValue)
    var selectedValue by remember(parameter) { mutableStateOf(currentValue) }
    val isAdjustableState by rememberUpdatedState(isAdjustable)
    val scaleValues = remember(parameter, minValue, maxValue) {
        getScaleValues(parameter, minValue, maxValue)
    }

    Box(
        modifier = modifier
            .padding(8.dp)
            .fillMaxWidth()
            .height(48.dp)
            .background(backgroundColor, RoundedCornerShape(24.dp))
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
                    currentValue = selectedValue,
                    isAdjustable = isAdjustable
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
    currentValue: Float,
    isAdjustable: Boolean
) {
    val scaleValues = getScaleValues(parameter, minValue, maxValue)
    val yellow = Color(0xFFFFD700)

    // Use BoxWithConstraints to get the width
    BoxWithConstraints(modifier = Modifier.fillMaxSize()) {

        Row(
            modifier = Modifier
                .padding(vertical = 8.dp)
                .fillMaxSize(),
            horizontalArrangement = Arrangement.SpaceBetween,
            verticalAlignment = Alignment.CenterVertically
        ) {
            scaleValues.forEachIndexed { index, value ->
                val isCurrent = if (parameter == CameraParameter.SHUTTER_SPEED) {
                    abs(value - currentValue) < 1000
                } else {
                    abs(value - currentValue) < 1e-3f
                }
                Column(
                    horizontalAlignment = Alignment.CenterHorizontally,
                    verticalArrangement = Arrangement.SpaceBetween,
                    modifier = Modifier.fillMaxHeight().weight(1f)
                ) {

                    // Label
                    Text(
                        text = if (isCurrent || index == 0 || index == scaleValues.size - 1 || value == 0f) formatParameterValue(
                            parameter,
                            value
                        ) else "",
                        fontSize = if (isCurrent) 12.sp else 10.sp,
                        fontWeight = if (isCurrent) FontWeight.Bold else FontWeight.Normal,
                        color = if (isCurrent) yellow else Color.White.copy(alpha = 0.6f),
                        overflow = TextOverflow.Visible,
                        softWrap = false,
                        textAlign = TextAlign.Center,
                        lineHeight = if (isCurrent) 12.sp else 10.sp,
                    )

                    // Tick mark
                    Box(modifier = Modifier.height(13.dp), contentAlignment = Alignment.BottomCenter) {
                        Spacer(
                            modifier = Modifier
                                .width(if (isCurrent) 2.dp else 1.dp)
                                .height(if (isCurrent) 13.dp else 9.dp)
                                .background(
                                    if (isCurrent) yellow else Color.White.copy(alpha = 0.6f),
                                    RoundedCornerShape(1.dp)
                                )
                        )
                    }
                }
            }
        }
    }
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
                50,
                64,
                80,
                100,
                125,
                160,
                200,
                250,
                320,
                400,
                500,
                640,
                800,
                1000,
                1250,
                1600,
                2000,
                2500,
                3200,
                4000,
                5000,
                6400,
                8000,
                12800,
                maxValue
            )
                .toSet()
                .map { it.toFloat() }
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
            // Aperture values (usually fixed on mobile)
            val step = 0.5f
            generateSequence(minValue) { it + step }
                .takeWhile { it <= maxValue }
                .toList()
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
