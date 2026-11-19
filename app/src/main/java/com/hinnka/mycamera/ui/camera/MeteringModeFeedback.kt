package com.hinnka.mycamera.ui.camera

import androidx.compose.animation.AnimatedContent
import androidx.compose.animation.EnterTransition
import androidx.compose.animation.ExitTransition
import androidx.compose.animation.core.tween
import androidx.compose.animation.fadeIn
import androidx.compose.animation.fadeOut
import androidx.compose.animation.togetherWith
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.Stable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import com.hinnka.mycamera.camera.MeteringMode
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Job
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch

private const val MeteringFeedbackDurationMillis = 1_400L

@Stable
internal class MeteringModeFeedbackState(private val scope: CoroutineScope) {
    var mode by mutableStateOf<MeteringMode?>(null)
        private set

    private var hideJob: Job? = null

    fun show(mode: MeteringMode) {
        hideJob?.cancel()
        this.mode = mode
        hideJob = scope.launch {
            delay(MeteringFeedbackDurationMillis)
            this@MeteringModeFeedbackState.mode = null
        }
    }
}

@Composable
internal fun rememberMeteringModeFeedbackState(): MeteringModeFeedbackState {
    val scope = rememberCoroutineScope()
    return remember(scope) { MeteringModeFeedbackState(scope) }
}

@Composable
internal fun MeteringModeFeedback(
    state: MeteringModeFeedbackState,
    modifier: Modifier = Modifier
) {
    AnimatedContent(
        targetState = state.mode,
        modifier = modifier,
        contentAlignment = Alignment.Center,
        transitionSpec = {
            val enter = if (initialState == null) fadeIn(tween(120)) else EnterTransition.None
            val exit = if (targetState == null) fadeOut(tween(180)) else ExitTransition.None
            (enter togetherWith exit).using(null)
        },
        label = "meteringModeFeedback"
    ) { mode ->
        if (mode != null) {
            Text(
                text = stringResource(mode.labelRes),
                color = Color.White,
                style = MaterialTheme.typography.labelMedium,
                maxLines = 1,
                overflow = TextOverflow.Ellipsis,
                modifier = Modifier
                    .autoRotate()
                    .background(Color.Black.copy(alpha = 0.76f), CircleShape)
                    .padding(horizontal = 12.dp, vertical = 6.dp)
            )
        }
    }
}
