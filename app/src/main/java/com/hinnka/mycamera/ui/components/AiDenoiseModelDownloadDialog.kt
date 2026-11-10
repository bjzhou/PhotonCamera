package com.hinnka.mycamera.ui.components

import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.material3.AlertDialog
import androidx.compose.material3.LinearProgressIndicator
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.unit.dp
import com.hinnka.mycamera.R
import com.hinnka.mycamera.ml.HfModelSource
import com.hinnka.mycamera.ml.AiDenoiseModelState
import kotlin.math.roundToInt

/** Asks to download the AI denoise model; the caller continues once [state] becomes Ready. */
@Composable
fun AiDenoiseModelDownloadDialog(
    state: AiDenoiseModelState,
    source: HfModelSource,
    onSourceChange: (HfModelSource) -> Unit,
    onDownload: () -> Unit,
    onDismiss: () -> Unit
) {
    val downloading = state as? AiDenoiseModelState.Downloading
    AlertDialog(
        onDismissRequest = onDismiss,
        title = {
            Text(
                text = stringResource(R.string.ai_denoise_model_title),
                style = MaterialTheme.typography.titleLarge
            )
        },
        text = {
            Column {
                Text(
                    text = stringResource(
                        if (state == AiDenoiseModelState.Failed) R.string.ai_denoise_model_failed
                        else R.string.ai_denoise_model_description
                    ),
                    style = MaterialTheme.typography.bodyMedium
                )
                if (state == AiDenoiseModelState.Missing || state == AiDenoiseModelState.Failed) {
                    Spacer(modifier = Modifier.height(16.dp))
                    HfModelSourcePicker(source = source, onSourceChange = onSourceChange)
                }
                if (downloading != null) {
                    Spacer(modifier = Modifier.height(16.dp))
                    val progress = downloading.progress
                    if (progress != null && !downloading.isInstalling) {
                        LinearProgressIndicator(progress = { progress }, modifier = Modifier.fillMaxWidth())
                    } else {
                        LinearProgressIndicator(modifier = Modifier.fillMaxWidth())
                    }
                    Spacer(modifier = Modifier.height(8.dp))
                    Text(
                        text = if (downloading.isInstalling) {
                            stringResource(R.string.ai_denoise_model_installing)
                        } else {
                            stringResource(
                                R.string.ai_denoise_model_downloading,
                                ((progress ?: 0f) * 100f).roundToInt()
                            )
                        },
                        style = MaterialTheme.typography.bodySmall
                    )
                }
            }
        },
        confirmButton = {
            when (state) {
                AiDenoiseModelState.Missing -> TextButton(onClick = onDownload) {
                    Text(stringResource(R.string.ai_denoise_model_download))
                }
                AiDenoiseModelState.Failed -> TextButton(onClick = onDownload) {
                    Text(stringResource(R.string.ai_denoise_model_retry))
                }
                is AiDenoiseModelState.Downloading, AiDenoiseModelState.Ready -> Unit
            }
        },
        dismissButton = {
            TextButton(onClick = onDismiss) {
                Text(stringResource(if (downloading != null) R.string.close else R.string.cancel))
            }
        }
    )
}
