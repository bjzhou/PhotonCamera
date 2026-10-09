package com.hinnka.mycamera.ui.settings

import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.selection.toggleable
import androidx.compose.foundation.verticalScroll
import androidx.compose.material3.AlertDialog
import androidx.compose.material3.Checkbox
import androidx.compose.material3.CheckboxDefaults
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.semantics.Role
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.hinnka.mycamera.R
import com.hinnka.mycamera.data.BackupCategory
import com.hinnka.mycamera.ui.theme.AccentColor

@Composable
internal fun BackupSelectionDialog(
    availableCategories: Set<BackupCategory>,
    selectedCategories: Set<BackupCategory>,
    onSelectionChange: (Set<BackupCategory>) -> Unit,
    onDismiss: () -> Unit,
    onConfirm: () -> Unit,
) {
    AlertDialog(
        onDismissRequest = onDismiss,
        containerColor = Color(0xFF1A1A1A),
        title = { Text(stringResource(R.string.backup_select_content), color = Color.White) },
        text = {
            Column(Modifier.verticalScroll(rememberScrollState())) {
                Text(
                    stringResource(R.string.backup_select_content_description),
                    color = Color.White.copy(alpha = 0.6f),
                    fontSize = 13.sp,
                )
                TextButton(
                    onClick = { onSelectionChange(availableCategories) },
                    enabled = selectedCategories != availableCategories,
                ) {
                    Text(stringResource(R.string.select_all))
                }
                BackupCategory.entries.forEach { category ->
                    val available = category in availableCategories
                    val checked = category in selectedCategories
                    Row(
                        modifier = Modifier
                            .fillMaxWidth()
                            .toggleable(
                                value = checked,
                                enabled = available,
                                role = Role.Checkbox,
                                onValueChange = { selected ->
                                    onSelectionChange(
                                        if (selected) selectedCategories + category
                                        else selectedCategories - category
                                    )
                                },
                            )
                            .padding(vertical = 12.dp),
                        verticalAlignment = Alignment.CenterVertically,
                    ) {
                        Checkbox(
                            checked = checked,
                            onCheckedChange = null,
                            enabled = available,
                            colors = CheckboxDefaults.colors(
                                checkedColor = AccentColor,
                                uncheckedColor = Color.White.copy(alpha = 0.6f),
                            ),
                        )
                        Column(Modifier.weight(1f).padding(start = 12.dp)) {
                            Text(
                                stringResource(category.labelResource),
                                color = Color.White.copy(alpha = if (available) 1f else 0.4f),
                            )
                            if (!available) {
                                Text(
                                    stringResource(R.string.backup_no_content),
                                    color = Color.White.copy(alpha = 0.4f),
                                    fontSize = 12.sp,
                                )
                            }
                        }
                    }
                }
            }
        },
        confirmButton = {
            TextButton(onClick = onConfirm, enabled = selectedCategories.isNotEmpty()) {
                Text(stringResource(R.string.backup_continue))
            }
        },
        dismissButton = {
            TextButton(onClick = onDismiss) { Text(stringResource(R.string.cancel)) }
        },
    )
}

private val BackupCategory.labelResource: Int
    get() = when (this) {
        BackupCategory.SETTINGS -> R.string.backup_category_settings
        BackupCategory.PRESETS -> R.string.backup_category_presets
        BackupCategory.LUTS -> R.string.backup_category_luts
        BackupCategory.FRAMES -> R.string.backup_category_frames
        BackupCategory.DCP_PROFILES -> R.string.backup_category_dcps
        BackupCategory.RAW_NOISE_PROFILES -> R.string.backup_category_raw_noise
        BackupCategory.CAPTURE_SOUNDS -> R.string.backup_category_sounds
    }
