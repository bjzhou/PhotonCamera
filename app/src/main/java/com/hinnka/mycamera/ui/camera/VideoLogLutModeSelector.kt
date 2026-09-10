package com.hinnka.mycamera.ui.camera

import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.SegmentedButton
import androidx.compose.material3.SegmentedButtonDefaults
import androidx.compose.material3.SingleChoiceSegmentedButtonRow
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.hinnka.mycamera.R
import com.hinnka.mycamera.video.VideoLogLutMode

@Composable
internal fun VideoLogLutModeSelector(
    mode: VideoLogLutMode,
    enabled: Boolean,
    onModeSelected: (VideoLogLutMode) -> Unit
) {
    Column(Modifier.fillMaxWidth().padding(horizontal = 10.dp)) {
        SingleChoiceSegmentedButtonRow(Modifier.fillMaxWidth()) {
            VideoLogLutMode.entries.forEachIndexed { index, option ->
                SegmentedButton(
                    selected = mode == option,
                    onClick = { onModeSelected(option) },
                    enabled = enabled,
                    shape = SegmentedButtonDefaults.itemShape(index, VideoLogLutMode.entries.size),
                    colors = SegmentedButtonDefaults.colors(
                        activeContainerColor = Color.White.copy(alpha = 0.25f),
                        activeContentColor = Color.White,
                        inactiveContainerColor = Color.Black.copy(alpha = 0.2f),
                        inactiveContentColor = Color.White.copy(alpha = 0.7f)
                    )
                ) {
                    Text(stringResource(if (option == VideoLogLutMode.MONITOR_ONLY)
                        R.string.video_log_lut_monitor_only else R.string.video_log_lut_bake_in), fontSize = 12.sp)
                }
            }
        }
        Text(
            stringResource(if (mode == VideoLogLutMode.MONITOR_ONLY)
                R.string.video_log_lut_monitor_hint else R.string.video_log_lut_bake_hint),
            color = Color.White.copy(alpha = 0.8f),
            fontSize = 11.sp,
            modifier = Modifier.padding(top = 4.dp)
        )
    }
}
