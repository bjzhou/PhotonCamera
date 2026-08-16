package com.hinnka.mycamera.ui.camera

import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.Shadow

/**
 * Keeps viewfinder text readable over both bright and dark preview content.
 * A zero-offset shadow gives the glyphs a subtle outline instead of a panel.
 */
internal val ViewfinderTextShadow = Shadow(
    color = Color.Black.copy(alpha = 0.9f),
    offset = Offset.Zero,
    blurRadius = 3f
)
