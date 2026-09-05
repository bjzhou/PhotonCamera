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
        modifier = modifier.verticalScroll(rememberScrollState()).padding(vertical = 12.dp),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.spacedBy(4.dp)
    ) {
        cameraParameterItems(state).forEach { item ->
            ParameterItem(
                item = item,
                isSelected = selectedParameter == item.parameter,
                onClick = { onParameterClick(item.parameter) },
                vertical = true
            )
        }
    }
}
