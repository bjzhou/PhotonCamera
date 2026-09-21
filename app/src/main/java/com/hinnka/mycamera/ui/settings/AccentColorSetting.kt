package com.hinnka.mycamera.ui.settings

import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.material3.ButtonDefaults
import androidx.compose.runtime.*
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.semantics.Role
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.hinnka.mycamera.R
import com.hinnka.mycamera.model.AppAppearance
import java.util.Locale

@Composable
internal fun AccentColorSetting(color: Int, onColorSelected: (Int) -> Unit) {
    var showPicker by rememberSaveable { mutableStateOf(false) }
    Column {
        Row(
            modifier = Modifier.fillMaxWidth()
                .clickable(role = Role.Button) { showPicker = true }
                .padding(vertical = 8.dp),
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.spacedBy(16.dp)
        ) {
            Column(modifier = Modifier.weight(1f)) {
                Text(stringResource(R.string.settings_accent_color), color = Color.White, fontSize = 16.sp)
                Spacer(Modifier.height(4.dp))
                Text(
                    stringResource(R.string.settings_accent_color_description),
                    color = Color.White.copy(alpha = 0.6f),
                    fontSize = 13.sp
                )
            }
            Box(
                Modifier.size(36.dp).clip(CircleShape).background(Color(color))
                    .border(1.dp, Color.White.copy(alpha = 0.3f), CircleShape)
            )
        }
        Row(modifier = Modifier.fillMaxWidth(), verticalAlignment = Alignment.CenterVertically) {
            Text(
                String.format(Locale.ROOT, "#%06X", color and 0xFFFFFF),
                color = Color.White.copy(alpha = 0.7f),
                fontSize = 13.sp,
                modifier = Modifier.weight(1f)
            )
            TextButton(
                onClick = { onColorSelected(AppAppearance.DEFAULT_ACCENT_COLOR) },
                colors = ButtonDefaults.textButtonColors(contentColor = Color.White),
                enabled = color != AppAppearance.DEFAULT_ACCENT_COLOR
            ) {
                Text(stringResource(R.string.settings_accent_color_reset))
            }
        }
    }
    if (showPicker) {
        ColorPickerDialog(
            title = stringResource(R.string.settings_accent_color),
            initialColor = color,
            onDismiss = { showPicker = false },
            onConfirm = {
                onColorSelected(it)
                showPicker = false
            },
            allowAlpha = false
        )
    }
}
