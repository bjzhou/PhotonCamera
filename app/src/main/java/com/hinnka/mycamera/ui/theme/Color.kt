package com.hinnka.mycamera.ui.theme

import androidx.compose.material3.MaterialTheme
import androidx.compose.runtime.Composable
import androidx.compose.runtime.ReadOnlyComposable
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.luminance
import com.hinnka.mycamera.model.AppAppearance

val DefaultAccentColor = Color(AppAppearance.DEFAULT_ACCENT_COLOR)

/** One configurable accent for controls, camera selections, progress and professional mode. */
val AccentColor: Color
    @Composable @ReadOnlyComposable get() = MaterialTheme.colorScheme.primary

val OnAccentColor: Color
    @Composable @ReadOnlyComposable get() = MaterialTheme.colorScheme.onPrimary

/** Choose the foreground with the higher WCAG contrast on a solid accent. */
fun accentContentColor(color: Color): Color =
    if (color.luminance() > 0.179f) Color.Black else Color.White

// 深色主题
val DarkBackground = Color(0xFF0D0D0D)
val DarkSurface = Color(0xFF1A1A1A)
val DarkSurfaceVariant = Color(0xFF2D2D2D)

// 文字颜色
val TextPrimary = Color(0xFFFFFFFF)
val TextSecondary = Color(0xB3FFFFFF) // 70% white
val TextTertiary = Color(0x80FFFFFF) // 50% white

// 状态颜色
val SuccessGreen = Color(0xFF4CAF50)
val ErrorRed = Color(0xFFE53935)
val WarningYellow = Color(0xFFFFC107)

// Membership branding is independent of the configurable interface accent.
val PremiumGold = Color(0xFFFFD700)
val PremiumAmber = Color(0xFFFFA000)

// 旧颜色（保持兼容）
val Purple80 = Color(0xFFD0BCFF)
val PurpleGrey80 = Color(0xFFCCC2DC)
val Pink80 = Color(0xFFEFB8C8)

val Purple40 = Color(0xFF6650a4)
val PurpleGrey40 = Color(0xFF625b71)
val Pink40 = Color(0xFF7D5260)
