package com.hinnka.mycamera.ui.components

import androidx.annotation.StringRes
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.ColumnScope
import androidx.compose.foundation.layout.FlowRow
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Clear
import androidx.compose.material3.AlertDialog
import androidx.compose.material3.DropdownMenuItem
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.ExposedDropdownMenuAnchorType
import androidx.compose.material3.ExposedDropdownMenuBox
import androidx.compose.material3.ExposedDropdownMenuDefaults
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.InputChip
import androidx.compose.material3.MenuDefaults
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.SegmentedButton
import androidx.compose.material3.SegmentedButtonDefaults
import androidx.compose.material3.SingleChoiceSegmentedButtonRow
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.compose.ui.window.DialogProperties
import com.hinnka.mycamera.R
import com.hinnka.mycamera.color.TransferCurve
import com.hinnka.mycamera.data.ContentRepository
import com.hinnka.mycamera.lut.builtInLutCategories
import com.hinnka.mycamera.lut.orderedLutCategoryTitles
import com.hinnka.mycamera.raw.ColorSpace
import com.hinnka.mycamera.ui.prefs.preferenceValue
import com.hinnka.mycamera.ui.theme.AccentColor
import com.hinnka.mycamera.ui.theme.OnAccentColor
import com.hinnka.mycamera.video.VideoLogProfile

internal fun sanitizeCustomLutCategoryInput(
    category: String,
    reservedCategoryNames: Set<String>,
    categoryTitles: Map<String, String>,
): String {
    val trimmedCategory = category.trim()
    if (trimmedCategory in reservedCategoryNames) return ""
    return categoryTitles.entries.firstOrNull { it.value == trimmedCategory }?.key ?: trimmedCategory
}

@Composable
internal fun GeneratedFilmLutImportDialog(
    defaultName: String,
    onDismiss: () -> Unit,
    onConfirm: (name: String, category: String) -> Unit,
) {
    val context = LocalContext.current
    val library = remember(context) { ContentRepository.getInstance(context) }
    val luts by library.availableLuts.collectAsState()
    val categoryOrder by preferenceValue { it.categoryOrder }
    val uncategorized = stringResource(R.string.uncategorized)
    val reservedCategories = setOf(
        stringResource(R.string.built_in),
        uncategorized,
        stringResource(R.string.favorite),
    )
    val categories = orderedLutCategoryTitles(
        luts = luts,
        categoryOrder = categoryOrder,
        uncategorizedText = uncategorized,
        includeEmptyCategories = true,
    ).filterNot { it in reservedCategories }
    val categoryTitles = builtInLutCategories.associateWith { lutCategoryTitle(it) }
    var name by rememberSaveable(defaultName) { mutableStateOf(defaultName) }

    LutImportDialog(
        title = R.string.film_lut_generate,
        initialCategory = "",
        managedCategories = categories,
        categoryTitles = categoryTitles,
        reservedCategoryNames = reservedCategories,
        confirmLabel = R.string.save,
        confirmEnabled = name.isNotBlank(),
        categoryPlaceholder = uncategorized,
        onDismiss = onDismiss,
        onConfirm = { category -> onConfirm(name.trim(), category) },
    ) {
        Text(stringResource(R.string.film_lut_generate_description, defaultName))
        Spacer(modifier = Modifier.height(16.dp))
        OutlinedTextField(
            value = name,
            onValueChange = { name = it },
            label = { Text(stringResource(R.string.lut_synthesis_name_label)) },
            singleLine = true,
            modifier = Modifier.fillMaxWidth(),
        )
        Spacer(modifier = Modifier.height(12.dp))
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
internal fun FileLutImportDialog(
    initialCategory: String,
    managedCategories: List<String>,
    categoryTitles: Map<String, String>,
    reservedCategoryNames: Set<String>,
    onDismiss: () -> Unit,
    onConfirm: (category: String, colorSpace: ColorSpace, curve: TransferCurve) -> Unit,
) {
    var videoLut by remember { mutableStateOf(false) }
    var selectedLogProfile by remember { mutableStateOf(VideoLogProfile.APPLE_LOG2) }
    val colorSpace = if (videoLut) selectedLogProfile.colorSpace else ColorSpace.SRGB
    val curve = if (videoLut) selectedLogProfile.logCurve else TransferCurve.SRGB
    LutImportDialog(
        title = R.string.import_to_category,
        initialCategory = initialCategory,
        managedCategories = managedCategories,
        categoryTitles = categoryTitles,
        reservedCategoryNames = reservedCategoryNames,
        properties = DialogProperties(dismissOnBackPress = false, dismissOnClickOutside = false),
        onDismiss = onDismiss,
        onConfirm = { category -> onConfirm(category, colorSpace, curve) },
    ) {
        SingleChoiceSegmentedButtonRow(
            modifier = Modifier.fillMaxWidth().padding(vertical = 8.dp),
        ) {
            val colors = SegmentedButtonDefaults.colors(
                activeContainerColor = AccentColor,
                activeContentColor = OnAccentColor,
                inactiveContainerColor = Color.Transparent,
                inactiveContentColor = Color.White.copy(alpha = 0.5f),
                activeBorderColor = AccentColor,
                inactiveBorderColor = Color.White.copy(alpha = 0.2f),
            )
            SegmentedButton(
                selected = !videoLut,
                onClick = { videoLut = false },
                shape = SegmentedButtonDefaults.itemShape(index = 0, count = 2),
                colors = colors,
            ) {
                Text(stringResource(R.string.photo_lut), fontSize = 13.sp)
            }
            SegmentedButton(
                selected = videoLut,
                onClick = { videoLut = true },
                shape = SegmentedButtonDefaults.itemShape(index = 1, count = 2),
                colors = colors,
            ) {
                Text(stringResource(R.string.video_lut), fontSize = 13.sp)
            }
        }

        if (videoLut) {
            var expanded by remember { mutableStateOf(false) }
            Spacer(modifier = Modifier.height(12.dp))
            ExposedDropdownMenuBox(
                expanded = expanded,
                onExpandedChange = { expanded = !expanded },
                modifier = Modifier.fillMaxWidth(),
            ) {
                OutlinedTextField(
                    value = selectedLogProfile.displayName,
                    onValueChange = {},
                    readOnly = true,
                    label = { Text(stringResource(R.string.video_log_format)) },
                    trailingIcon = { ExposedDropdownMenuDefaults.TrailingIcon(expanded = expanded) },
                    colors = ExposedDropdownMenuDefaults.outlinedTextFieldColors(
                        focusedBorderColor = AccentColor,
                        focusedLabelColor = AccentColor,
                        unfocusedLabelColor = Color.White.copy(alpha = 0.5f),
                    ),
                    modifier = Modifier.fillMaxWidth()
                        .menuAnchor(ExposedDropdownMenuAnchorType.PrimaryNotEditable),
                )
                ExposedDropdownMenu(
                    expanded = expanded,
                    onDismissRequest = { expanded = false },
                    modifier = Modifier.background(Color(0xFF2C2C2C)),
                ) {
                    VideoLogProfile.entries.filter { it.isEnabled }.forEach { profile ->
                        DropdownMenuItem(
                            text = { Text(profile.displayName) },
                            onClick = {
                                selectedLogProfile = profile
                                expanded = false
                            },
                            colors = MenuDefaults.itemColors(
                                textColor = if (selectedLogProfile == profile) AccentColor else Color.White,
                            ),
                        )
                    }
                }
            }

            Spacer(modifier = Modifier.height(12.dp))
            OutlinedTextField(
                value = colorSpace.name,
                onValueChange = {},
                readOnly = true,
                label = { Text(stringResource(R.string.color_space)) },
                supportingText = { Text(stringResource(R.string.video_log_color_space_auto)) },
                modifier = Modifier.fillMaxWidth(),
            )
            Spacer(modifier = Modifier.height(16.dp))
        }
    }
}

@Composable
private fun LutImportDialog(
    @StringRes title: Int,
    initialCategory: String,
    managedCategories: List<String>,
    categoryTitles: Map<String, String>,
    reservedCategoryNames: Set<String>,
    @StringRes confirmLabel: Int = R.string.confirm,
    confirmEnabled: Boolean = true,
    categoryPlaceholder: String? = null,
    properties: DialogProperties = DialogProperties(),
    onDismiss: () -> Unit,
    onConfirm: (category: String) -> Unit,
    inputFields: @Composable ColumnScope.() -> Unit,
) {
    var categoryText by rememberSaveable(initialCategory) { mutableStateOf(initialCategory) }
    AlertDialog(
        title = { Text(stringResource(title)) },
        onDismissRequest = onDismiss,
        properties = properties,
        text = {
            Column(modifier = Modifier.verticalScroll(rememberScrollState())) {
                inputFields()
                OutlinedTextField(
                    value = categoryText,
                    onValueChange = { categoryText = it },
                    label = { Text(stringResource(R.string.category)) },
                    placeholder = if (categoryPlaceholder != null) {
                        { Text(categoryPlaceholder) }
                    } else null,
                    singleLine = true,
                    modifier = Modifier.fillMaxWidth(),
                    trailingIcon = if (categoryText.isNotEmpty()) {
                        {
                            IconButton(onClick = { categoryText = "" }) {
                                Icon(
                                    imageVector = Icons.Default.Clear,
                                    contentDescription = stringResource(R.string.settings_baseline_clear),
                                    tint = Color.White.copy(alpha = 0.5f),
                                )
                            }
                        }
                    } else null,
                )

                Spacer(modifier = Modifier.height(8.dp))
                if (managedCategories.isNotEmpty()) {
                    Text(
                        text = stringResource(R.string.common_categories),
                        fontSize = 12.sp,
                        color = Color.White.copy(alpha = 0.5f),
                        modifier = Modifier.padding(vertical = 4.dp),
                    )
                    FlowRow(
                        horizontalArrangement = Arrangement.spacedBy(8.dp),
                        verticalArrangement = Arrangement.spacedBy(4.dp),
                    ) {
                        managedCategories.forEach { category ->
                            val displayName = categoryTitles[category] ?: category
                            InputChip(
                                selected = categoryText == displayName,
                                onClick = { categoryText = displayName },
                                label = { Text(displayName) },
                            )
                        }
                    }
                }
                Spacer(modifier = Modifier.height(12.dp))
            }
        },
        confirmButton = {
            TextButton(
                enabled = confirmEnabled,
                onClick = {
                    onConfirm(sanitizeCustomLutCategoryInput(categoryText, reservedCategoryNames, categoryTitles))
                },
            ) {
                Text(stringResource(confirmLabel))
            }
        },
        dismissButton = {
            TextButton(onClick = onDismiss) {
                Text(stringResource(R.string.cancel))
            }
        },
    )
}
