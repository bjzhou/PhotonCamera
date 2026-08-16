package com.hinnka.mycamera.ui.components

import androidx.compose.animation.AnimatedVisibility
import androidx.compose.animation.fadeIn
import androidx.compose.animation.fadeOut
import androidx.compose.animation.core.tween
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.Stable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Job
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch

private const val LutNameOverlayDurationMillis = 1_000L

@Stable
class LutNameOverlayState internal constructor(
    private val coroutineScope: CoroutineScope,
) {
    var name by mutableStateOf("")
        private set

    var visible by mutableStateOf(false)
        private set

    private var hideJob: Job? = null

    fun show(name: String) {
        if (name.isBlank()) return

        this.name = name
        visible = true
        hideJob?.cancel()
        hideJob = coroutineScope.launch {
            delay(LutNameOverlayDurationMillis)
            visible = false
            hideJob = null
        }
    }
}

@Composable
fun rememberLutNameOverlayState(): LutNameOverlayState {
    val coroutineScope = rememberCoroutineScope()
    return remember(coroutineScope) {
        LutNameOverlayState(coroutineScope)
    }
}

@Composable
fun LutNameOverlay(
    state: LutNameOverlayState,
    modifier: Modifier = Modifier,
) {
    AnimatedVisibility(
        visible = state.visible,
        modifier = modifier,
        enter = fadeIn(animationSpec = tween(durationMillis = 150)),
        exit = fadeOut(animationSpec = tween(durationMillis = 250)),
    ) {
        Surface(
            color = Color.Black.copy(alpha = 0.32f),
            shape = RoundedCornerShape(8.dp),
            shadowElevation = 4.dp,
        ) {
            Text(
                text = state.name,
                color = Color.White,
                fontSize = 13.sp,
                fontWeight = FontWeight.SemiBold,
                style = TextStyle(shadow = com.hinnka.mycamera.ui.camera.ViewfinderTextShadow),
                maxLines = 1,
                overflow = TextOverflow.Ellipsis,
                modifier = Modifier.padding(horizontal = 8.dp, vertical = 4.dp),
            )
        }
    }
}
