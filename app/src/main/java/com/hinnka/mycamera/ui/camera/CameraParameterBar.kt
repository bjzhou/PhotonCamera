package com.hinnka.mycamera.ui.camera

import android.hardware.camera2.CameraMetadata
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
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
            .padding(horizontal = 16.dp, vertical = 8.dp),
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
            valueColor = if (state.shutterSpeed > 1_000_000_000.0 / 15) Color.Red else null,
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
            label = "Av",
            value = String.format("f/%.1f", if (state.isVirtualApertureEnabled) state.virtualAperture else state.physicalAperture),
            labelColor = yellow,
            valueColor = if (state.isVirtualApertureEnabled) Color(0xFF00E5FF) else null, // 开启虚拟光圈时显示青色
            isSelected = selectedParameter == CameraParameter.APERTURE,
            isEnabled = true, // Enabled for computational bokeh
            onClick = { onParameterClick(CameraParameter.APERTURE) }
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
private fun ParameterItem(
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
        modifier = modifier
            .size(64.dp)
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
