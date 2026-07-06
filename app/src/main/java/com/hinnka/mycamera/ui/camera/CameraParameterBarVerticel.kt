package com.hinnka.mycamera.ui.camera

import android.hardware.camera2.CameraMetadata
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
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
fun CameraParameterBarVerticel(
    state: CameraState,
    selectedParameter: CameraParameter?,
    onParameterClick: (CameraParameter) -> Unit,
    modifier: Modifier = Modifier
) {
    val yellow = Color(0xFFFFD700) // Design uses a yellow/gold color for labels

    Column(
        modifier = modifier
            .verticalScroll(rememberScrollState())
            .padding(horizontal = 8.dp, vertical = 16.dp),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.spacedBy(12.dp)
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
