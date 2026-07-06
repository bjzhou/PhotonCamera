package com.hinnka.mycamera.ui.camera

import android.hardware.camera2.CameraMetadata
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.hinnka.mycamera.R
import com.hinnka.mycamera.camera.CameraState

@Composable
fun CameraParameterBar(
    state: CameraState,
    selectedParameter: CameraParameter?,
    onParameterClick: (CameraParameter) -> Unit,
    modifier: Modifier = Modifier
) {
    val yellow = Color(0xFFFFD700) // Design uses a yellow/gold color for labels

    Row(
        modifier = modifier
            .fillMaxWidth()
            .padding(start = 16.dp, top = 4.dp, end = 16.dp),
        horizontalArrangement = Arrangement.SpaceBetween,
        verticalAlignment = Alignment.CenterVertically
    ) {
        ParameterItem(
            label = "AE",
            value = String.format("%.1f", state.exposureCompensation * state.getExposureCompensationStep()),
            labelColor = yellow,
            isSelected = selectedParameter == CameraParameter.EXPOSURE_COMPENSATION,
            isEnabled = state.isAutoExposure, // Only available in auto exposure mode
            onClick = { onParameterClick(CameraParameter.EXPOSURE_COMPENSATION) }
        )
        val tvValue = if (state.shutterSpeed <= 0) "0"
            else if (state.shutterSpeed >= 1_000_000_000.0) (state.shutterSpeed / 1_000_000_000.0).toInt().toString()
            else "1/${(1_000_000_000.0 / state.shutterSpeed).toInt()}"
        ParameterItem(
            label = "Tv",
            value = tvValue,
            labelColor = yellow,
            valueColor = if (state.isPreviewExposureLimited()) Color.Red else null,
            isSelected = selectedParameter == CameraParameter.SHUTTER_SPEED,
            isEnabled = true,
            onClick = { onParameterClick(CameraParameter.SHUTTER_SPEED) }
        )
        ParameterItem(
            label = "ISO",
            value = state.iso.toString(),
            labelColor = yellow,
            isSelected = selectedParameter == CameraParameter.ISO,
            isEnabled = true,
            onClick = { onParameterClick(CameraParameter.ISO) }
        )
        ParameterItem(
            label = "AF",
            value = when {
                state.isAutoFocus -> stringResource(R.string.camera_focus_auto)
                state.isHyperfocalFocusEnabled -> stringResource(R.string.camera_hyperfocal_label)
                else -> formatFocusDistance(state.focusDistance)
            },
            labelColor = yellow,
            isSelected = selectedParameter == CameraParameter.FOCUS,
            isEnabled = true,
            onClick = { onParameterClick(CameraParameter.FOCUS) }
        )
        ParameterItem(
            label = "AWB",
            value = when (state.awbMode) {
                CameraMetadata.CONTROL_AWB_MODE_OFF -> "${state.awbTemperature}K"
                CameraMetadata.CONTROL_AWB_MODE_AUTO -> "AUTO"
                else -> "UNK"
            },
            labelColor = yellow,
            isSelected = selectedParameter == CameraParameter.WHITE_BALANCE,
            isEnabled = true,
            onClick = { onParameterClick(CameraParameter.WHITE_BALANCE) }
        )
    }
}

@Composable
fun ParameterItem(
    label: String,
    value: String,
    labelColor: Color,
    valueColor: Color? = null,
    isSelected: Boolean,
    isEnabled: Boolean,
    onClick: () -> Unit,
    modifier: Modifier = Modifier
) {
    Column(
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.Center,
        modifier = modifier
            .width(60.dp)
            .heightIn(min = 48.dp)
            .autoRotate()
            .then(
                if (isEnabled) {
                    Modifier.clickable { onClick() }
                } else {
                    Modifier
                }
            )
    ) {
        Text(
            text = label,
            color = if (isSelected) Color(0xFFFFD700) else labelColor.copy(alpha = if (isEnabled) 1f else 0.5f),
            fontSize = 10.sp,
            fontWeight = if (isSelected) FontWeight.Bold else FontWeight.Normal
        )
        Text(
            text = value,
            color = valueColor ?: if (isSelected) Color(0xFFFFD700) else Color.White.copy(alpha = if (isEnabled) 1f else 0.5f),
            fontSize = 11.sp,
            fontWeight = if (isSelected) FontWeight.Bold else FontWeight.Bold
        )
    }
}

internal fun formatFocusDistance(value: Float): String {
    return if (value <= 0.01f) "∞"
    else {
        val meters = 1.0f / value
        if (meters >= 1.0f) String.format("%.1fm", meters)
        else String.format("%dcm", (meters * 100).toInt())
    }
}
