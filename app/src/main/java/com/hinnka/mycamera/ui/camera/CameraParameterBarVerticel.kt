package com.hinnka.mycamera.ui.camera

import androidx.compose.foundation.layout.*
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import com.hinnka.mycamera.camera.CameraState

@Composable
fun CameraParameterBarVerticel(
    state: CameraState,
    selectedParameter: CameraParameter?,
    onParameterClick: (CameraParameter) -> Unit,
    modifier: Modifier = Modifier
) {
    Column(
        modifier = modifier
            .verticalScroll(rememberScrollState())
            .padding(horizontal = 8.dp, vertical = 16.dp),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.spacedBy(12.dp)
    ) {
        ParameterItem(
            label = "AE",
            isSelected = selectedParameter == CameraParameter.EXPOSURE_COMPENSATION,
            isEnabled = state.isAutoExposure, // Only available in auto exposure mode
            onClick = { onParameterClick(CameraParameter.EXPOSURE_COMPENSATION) },
            vertical = true
        )
        ParameterItem(
            label = "Tv",
            isSelected = selectedParameter == CameraParameter.SHUTTER_SPEED,
            isEnabled = true,
            onClick = { onParameterClick(CameraParameter.SHUTTER_SPEED) },
            vertical = true
        )
        ParameterItem(
            label = "ISO",
            isSelected = selectedParameter == CameraParameter.ISO,
            isEnabled = true,
            onClick = { onParameterClick(CameraParameter.ISO) },
            vertical = true
        )
        ParameterItem(
            label = "AF",
            isSelected = selectedParameter == CameraParameter.FOCUS,
            isEnabled = true,
            onClick = { onParameterClick(CameraParameter.FOCUS) },
            vertical = true
        )
        ParameterItem(
            label = "AWB",
            isSelected = selectedParameter == CameraParameter.WHITE_BALANCE,
            isEnabled = state.canAdjustWhiteBalance || state.actualAwbTemperature != null,
            onClick = { onParameterClick(CameraParameter.WHITE_BALANCE) },
            vertical = true
        )
    }
}
