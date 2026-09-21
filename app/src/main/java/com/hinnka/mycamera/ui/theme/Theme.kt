package com.hinnka.mycamera.ui.theme

import android.app.Activity
import android.os.Build
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.darkColorScheme
import androidx.compose.material3.dynamicDarkColorScheme
import androidx.compose.material3.dynamicLightColorScheme
import androidx.compose.material3.lightColorScheme
import androidx.compose.runtime.Composable
import androidx.compose.runtime.SideEffect
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.remember
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.lerp
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalView
import androidx.core.view.WindowCompat
import com.hinnka.mycamera.data.UserPreferencesRepository
import com.hinnka.mycamera.model.AppAppearance

private val DarkColorScheme = darkColorScheme(
    primary = DefaultAccentColor,
    background = DarkBackground,
    surface = DarkSurface,
    surfaceVariant = DarkSurfaceVariant,
    onPrimary = Color.White,
    onSecondary = Color.White,
    onTertiary = Color.White,
    onBackground = TextPrimary,
    onSurface = TextPrimary,
    onSurfaceVariant = TextSecondary
)

private val LightColorScheme = lightColorScheme(
    primary = DefaultAccentColor
)

@Composable
fun PhotonCameraTheme(
    darkTheme: Boolean = true, // 相机应用默认深色主题
    dynamicColor: Boolean = false, // 禁用动态颜色以保持一致性
    content: @Composable () -> Unit
) {
    val context = LocalContext.current
    // Observe only appearance, without decoding camera settings or initializing camera resources.
    val accentFlow = remember(context.applicationContext) {
        UserPreferencesRepository(context.applicationContext).accentColor
    }
    val accentArgb by accentFlow.collectAsState(initial = AppAppearance.DEFAULT_ACCENT_COLOR)
    val accent = Color(accentArgb)
    val baseColorScheme = when {
        dynamicColor && Build.VERSION.SDK_INT >= Build.VERSION_CODES.S -> {
            if (darkTheme) dynamicDarkColorScheme(context) else dynamicLightColorScheme(context)
        }
        darkTheme -> DarkColorScheme
        else -> LightColorScheme
    }
    val colorScheme = remember(baseColorScheme, accent) {
        val container = lerp(baseColorScheme.surface, accent, 0.22f)
        val onAccent = accentContentColor(accent)
        val onContainer = accentContentColor(container)
        baseColorScheme.copy(
            primary = accent,
            onPrimary = onAccent,
            primaryContainer = container,
            onPrimaryContainer = onContainer,
            secondary = accent,
            onSecondary = onAccent,
            secondaryContainer = container,
            onSecondaryContainer = onContainer,
            tertiary = accent,
            onTertiary = onAccent,
            tertiaryContainer = container,
            onTertiaryContainer = onContainer,
            inversePrimary = accent,
            surfaceTint = accent
        )
    }
    
    val view = LocalView.current
    if (!view.isInEditMode) {
        SideEffect {
            val activity = view.context.findActivity()
            if (activity != null) {
                val window = activity.window
                WindowCompat.getInsetsController(window, view).isAppearanceLightStatusBars = false
            }
            view.isForceDarkAllowed = false
        }
    }

    MaterialTheme(
        colorScheme = colorScheme,
        typography = Typography,
        content = content
    )
}

private fun android.content.Context.findActivity(): Activity? {
    var context = this
    while (context is android.content.ContextWrapper) {
        if (context is Activity) return context
        context = context.baseContext
    }
    return null
}
