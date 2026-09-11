package com.hinnka.mycamera.ui.gallery

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.DropdownMenu
import androidx.compose.material3.DropdownMenuItem
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.unit.dp
import com.hinnka.mycamera.R
import com.hinnka.mycamera.video.VideoLogProfile

@Composable
internal fun VideoSourceLogSelector(
    profile: VideoLogProfile,
    detectedFromFile: Boolean,
    onProfileSelected: (VideoLogProfile) -> Unit,
) {
    var expanded by remember { mutableStateOf(false) }
    val offLabel = stringResource(R.string.video_log_off)
    Row(
        modifier = Modifier.fillMaxWidth().padding(horizontal = 16.dp),
        horizontalArrangement = Arrangement.SpaceBetween,
        verticalAlignment = Alignment.CenterVertically,
    ) {
        Text(stringResource(R.string.video_log_format), color = Color.White)
        Box {
            TextButton(onClick = { expanded = true }, enabled = !detectedFromFile) {
                Text(if (profile.isEnabled) profile.displayName else offLabel, color = Color.White)
            }
            DropdownMenu(expanded = expanded, onDismissRequest = { expanded = false }) {
                VideoLogProfile.entries.forEach { option ->
                    DropdownMenuItem(
                        text = { Text(if (option.isEnabled) option.displayName else offLabel) },
                        onClick = {
                            expanded = false
                            onProfileSelected(option)
                        },
                    )
                }
            }
        }
    }
}
