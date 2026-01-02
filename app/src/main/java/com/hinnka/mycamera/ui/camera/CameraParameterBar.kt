package com.hinnka.mycamera.ui.camera

import android.hardware.camera2.CameraMetadata
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
import com.hinnka.mycamera.camera.CameraUtils

@Composable
fun CameraParameterBar(
    state: CameraState,
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
        ParameterItem("AE", String.format("%.1f", state.exposureCompensation * 0.33f), yellow)
        ParameterItem("SEC", "1/${(1_000_000_000.0 / state.shutterSpeed).toInt()}", yellow)
        ParameterItem("ISO", state.iso.toString(), yellow)
        ParameterItem("AWB", when (state.awbMode) {
            CameraMetadata.CONTROL_AWB_MODE_OFF -> "OFF"
            CameraMetadata.CONTROL_AWB_MODE_AUTO -> "AUTO"
            CameraMetadata.CONTROL_AWB_MODE_INCANDESCENT -> "INC"
            CameraMetadata.CONTROL_AWB_MODE_FLUORESCENT -> "FLUOR"
            CameraMetadata.CONTROL_AWB_MODE_WARM_FLUORESCENT -> "W-FLUOR"
            CameraMetadata.CONTROL_AWB_MODE_DAYLIGHT -> "DAY"
            CameraMetadata.CONTROL_AWB_MODE_CLOUDY_DAYLIGHT -> "CLOUD"
            CameraMetadata.CONTROL_AWB_MODE_TWILIGHT -> "TWIL"
            CameraMetadata.CONTROL_AWB_MODE_SHADE -> "SHADE"
            else -> "UNK"
        }, yellow)
    }
}

@Composable
private fun ParameterItem(
    label: String,
    value: String,
    labelColor: Color,
    modifier: Modifier = Modifier
) {
    Column(
        horizontalAlignment = Alignment.CenterHorizontally,
        modifier = modifier.size(64.dp).autoRotate()
    ) {
        Text(
            text = label,
            color = labelColor,
            fontSize = 10.sp
        )
        Text(
            text = value,
            color = Color.White,
            fontSize = 11.sp,
            fontWeight = FontWeight.Bold
        )
    }
}
