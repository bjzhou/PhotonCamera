package com.hinnka.mycamera.ui.common

import android.net.Uri
import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.hinnka.mycamera.R
import com.hinnka.mycamera.frame.TextType
import com.hinnka.mycamera.ui.theme.AccentOrange

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun WatermarkEditSheet(
    customProperties: Map<String, String>,
    onPropertiesChange: (Map<String, String>) -> Unit,
    onDismiss: () -> Unit,
    originalValues: Map<TextType, String> = emptyMap(),
    onImportFont: (Uri) -> String? = { null }, // Returns the stored font path/id
    onImportLogo: (Uri) -> String? = { null } // Returns the stored logo path
) {
    val sheetState = rememberModalBottomSheetState()
    val properties = remember(customProperties) {
        mutableStateMapOf<String, String>().apply {
            putAll(customProperties)
        }
    }

    val context = LocalContext.current
    val fontPicker = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.OpenDocument()
    ) { uri: Uri? ->
        uri?.let {
            val fontPath = onImportFont(it)
            if (fontPath != null) {
                properties["DEVICE_MODEL_FONT"] = fontPath
                onPropertiesChange(properties.toMap())
            }
        }
    }

    val logoPicker = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.GetContent()
    ) { uri: Uri? ->
        uri?.let {
            val logoPath = onImportLogo(it)
            if (logoPath != null) {
                properties["LOGO"] = logoPath
                onPropertiesChange(properties.toMap())
            }
        }
    }

    ModalBottomSheet(
        onDismissRequest = onDismiss,
        sheetState = sheetState,
        containerColor = Color(0xFF1A1A1A),
        contentColor = Color.White,
        scrimColor = Color.Transparent
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(16.dp)
                .padding(bottom = 32.dp)
        ) {
            Text(
                text = stringResource(R.string.watermark_adjustment),
                fontSize = 18.sp,
                fontWeight = FontWeight.Bold,
                modifier = Modifier.padding(bottom = 16.dp)
            )

            // Logo 选择
            Text(
                text = stringResource(R.string.logo),
                fontSize = 14.sp,
                color = Color.White.copy(alpha = 0.6f),
                modifier = Modifier.padding(bottom = 8.dp)
            )

            val logos = listOf(
                "none" to stringResource(R.string.none),
                "Custom" to stringResource(R.string.custom_import),
                "apple" to "Apple",
                "samsung" to "Samsung",
                "xiaomi" to "Xiaomi",
                "huawei" to "Huawei",
                "honor" to "Honor",
                "oppo" to "OPPO",
                "vivo" to "Vivo",
                "sony" to "Sony",
                "canon" to "Canon",
                "nikon" to "Nikon",
                "fujifilm" to "Fujifilm",
                "leica" to "Leica",
                "hasselblad" to "Hasselblad",
                "dji" to "DJI",
                "panasonic" to "Panasonic",
                "olympus" to "Olympus",
                "pentax" to "Pentax",
                "ricoh" to "Ricoh",
            )

            val effectiveLogo = properties["LOGO"]

            LazyRow(
                horizontalArrangement = Arrangement.spacedBy(8.dp),
                modifier = Modifier.padding(bottom = 16.dp)
            ) {
                items(logos) { (id, name) ->
                    val isSelected = if (id == "Custom") {
                        effectiveLogo != null && effectiveLogo != "none" && logos.none { it.first == effectiveLogo }
                    } else {
                        effectiveLogo == id
                    }

                    Surface(
                        onClick = {
                            if (id == "Custom") {
                                logoPicker.launch("image/*")
                            } else {
                                properties["LOGO"] = id
                                onPropertiesChange(properties.toMap())
                            }
                        },
                        color = if (isSelected) AccentOrange.copy(alpha = 0.2f) else Color.White.copy(alpha = 0.1f),
                        shape = RoundedCornerShape(8.dp),
                        border = if (isSelected) BorderStroke(1.dp, AccentOrange) else null
                    ) {
                        Text(
                            text = if (id == "Custom" && isSelected) {
                                effectiveLogo?.substringAfterLast('/') ?: name
                            } else name,
                            modifier = Modifier.padding(horizontal = 12.dp, vertical = 6.dp),
                            fontSize = 13.sp,
                            color = if (isSelected) AccentOrange else Color.White
                        )
                    }
                }
            }

            // 文字编辑
            Text(
                text = stringResource(R.string.text_content),
                fontSize = 14.sp,
                color = Color.White.copy(alpha = 0.6f),
                modifier = Modifier.padding(bottom = 8.dp)
            )

            val textTypes = listOf(
                TextType.DEVICE_MODEL to stringResource(R.string.device_model),
                TextType.BRAND to stringResource(R.string.brand_name),
                TextType.DATE to stringResource(R.string.date_label),
                TextType.TIME to stringResource(R.string.time_label),
                TextType.DATETIME to stringResource(R.string.datetime_label)
            )

            textTypes.forEach { (type, label) ->
                val originalValue = originalValues[type]

                Column(modifier = Modifier.fillMaxWidth().padding(bottom = 8.dp)) {
                    OutlinedTextField(
                        value = properties[type.name] ?: originalValue ?: "",
                        onValueChange = {
                            properties[type.name] = it
                            onPropertiesChange(properties.toMap())
                        },
                        label = { Text(label) },
                        placeholder = { Text(stringResource(R.string.default_from_photo)) },
                        modifier = Modifier.fillMaxWidth(),
                        colors = OutlinedTextFieldDefaults.colors(
                            focusedBorderColor = AccentOrange,
                            unfocusedBorderColor = Color.White.copy(alpha = 0.2f),
                            focusedLabelColor = AccentOrange,
                            unfocusedLabelColor = Color.White.copy(alpha = 0.5f),
                            cursorColor = AccentOrange
                        ),
                        singleLine = true
                    )

                    // 字体选项 (仅对 DEVICE_MODEL 生效)
                    if (type == TextType.DEVICE_MODEL) {
                        Spacer(modifier = Modifier.height(8.dp))
                        Text(
                            text = stringResource(R.string.font_option),
                            fontSize = 12.sp,
                            color = Color.White.copy(alpha = 0.6f),
                            modifier = Modifier.padding(bottom = 4.dp)
                        )
                        val fontOptions = listOf(
                            "Default" to stringResource(R.string.default_text),
                            "SlacksideOne" to "SlacksideOne",
                            "Custom" to stringResource(R.string.custom_import)
                        )
                        val currentFont = properties["DEVICE_MODEL_FONT"]

                        LazyRow(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                            items(fontOptions) { (id, name) ->
                                // 如果是自定义字体，且当前值是一个路径，则显示为选中自定义
                                val isSelected = if (id == "Custom") {
                                    currentFont != null && currentFont != "Default" && currentFont != "SlacksideOne"
                                } else {
                                    currentFont == id
                                }

                                Surface(
                                    onClick = {
                                        if (id == "Custom") {
                                            fontPicker.launch(arrayOf("font/*", "application/octet-stream"))
                                        } else {
                                            properties["DEVICE_MODEL_FONT"] = id
                                            onPropertiesChange(properties.toMap())
                                        }
                                    },
                                    color = if (isSelected) AccentOrange.copy(alpha = 0.2f) else Color.White.copy(alpha = 0.1f),
                                    shape = RoundedCornerShape(8.dp),
                                    border = if (isSelected) BorderStroke(1.dp, AccentOrange) else null
                                ) {
                                    Text(
                                        text = if (id == "Custom" && isSelected) {
                                            // 截取文件名显示
                                            currentFont?.substringAfterLast('/') ?: name
                                        } else name,
                                        modifier = Modifier.padding(horizontal = 10.dp, vertical = 4.dp),
                                        fontSize = 11.sp,
                                        color = if (isSelected) AccentOrange else Color.White
                                    )
                                }
                            }
                        }
                        Spacer(modifier = Modifier.height(8.dp))
                    }
                }
            }
        }
    }
}
