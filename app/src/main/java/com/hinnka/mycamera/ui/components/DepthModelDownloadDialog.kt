package com.hinnka.mycamera.ui.components

import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
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
import androidx.compose.ui.unit.dp
import com.hinnka.mycamera.R
import com.hinnka.mycamera.ml.DepthModelDownloadState
import androidx.compose.ui.res.stringResource
import kotlin.math.roundToInt

@Composable
fun DepthModelDownloadDialog(
    state: DepthModelDownloadState,
    onDownload: () -> Unit,
    onImport: () -> Unit,
    onDismiss: () -> Unit
) {
    val isBusy = state is DepthModelDownloadState.Downloading ||
        state is DepthModelDownloadState.Importing
    AlertDialog(
        onDismissRequest = onDismiss,
        title = {
            Text(
                text = stringResource(R.string.depth_model_download_title),
                style = MaterialTheme.typography.titleLarge
            )
        },
        text = {
            Column {
                Text(
                    text = when (state) {
                        DepthModelDownloadState.Failed ->
                            stringResource(R.string.depth_model_download_failed)
                        DepthModelDownloadState.Ready ->
                            stringResource(R.string.depth_model_download_ready)
                        else -> stringResource(R.string.depth_model_download_description)
                    },
                    style = MaterialTheme.typography.bodyMedium
                )
                if (isBusy) {
                    Spacer(modifier = Modifier.height(16.dp))
                    val progress = (state as? DepthModelDownloadState.Downloading)?.progress
                    if (progress != null) {
                        LinearProgressIndicator(
                            progress = { progress },
                            modifier = Modifier.fillMaxWidth()
                        )
                    } else {
                        LinearProgressIndicator(modifier = Modifier.fillMaxWidth())
                    }
                    Spacer(modifier = Modifier.height(8.dp))
                    Text(
                        text = if (state is DepthModelDownloadState.Importing) {
                            stringResource(R.string.depth_model_importing)
                        } else if (
                            state is DepthModelDownloadState.Downloading &&
                            state.isInstalling
                        ) {
                            stringResource(R.string.depth_model_installing)
                        } else if (progress != null) {
                            stringResource(
                                R.string.depth_model_downloading_progress,
                                (progress * 100f).roundToInt()
                            )
                        } else {
                            stringResource(R.string.depth_model_downloading)
                        },
                        style = MaterialTheme.typography.bodySmall
                    )
                }
            }
        },
        confirmButton = {
            when (state) {
                DepthModelDownloadState.Missing -> {
                    Row {
                        TextButton(onClick = onImport) {
                            Text(stringResource(R.string.depth_model_import_action))
                        }
                        TextButton(onClick = onDownload) {
                            Text(stringResource(R.string.depth_model_download_action))
                        }
                    }
                }
                DepthModelDownloadState.Failed -> {
                    Row {
                        TextButton(onClick = onImport) {
                            Text(stringResource(R.string.depth_model_import_action))
                        }
                        TextButton(onClick = onDownload) {
                            Text(stringResource(R.string.depth_model_retry))
                        }
                    }
                }
                DepthModelDownloadState.Ready -> {
                    TextButton(onClick = onDismiss) {
                        Text(stringResource(R.string.depth_model_done))
                    }
                }
                is DepthModelDownloadState.Downloading -> Unit
                DepthModelDownloadState.Importing -> Unit
            }
        },
        dismissButton = {
            TextButton(onClick = onDismiss) {
                Text(
                    stringResource(
                        if (isBusy) R.string.close else R.string.cancel
                    )
                )
            }
        }
    )
}
