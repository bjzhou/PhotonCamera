package com.hinnka.mycamera.ui.components

import androidx.compose.runtime.Composable
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.remember
import androidx.compose.ui.graphics.asImageBitmap
import androidx.compose.ui.graphics.painter.BitmapPainter
import androidx.compose.ui.graphics.painter.Painter
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.painterResource
import com.hinnka.mycamera.R
import com.hinnka.mycamera.viewmodel.CameraViewModel

@Composable
fun rememberBackgroundPainter(viewModel: CameraViewModel): Painter {
    val bgImage by viewModel.backgroundImage.collectAsState()
    val context = LocalContext.current
    
    return remember(bgImage) {
        if (bgImage.startsWith("/")) {
            try {
                val bitmap = android.graphics.BitmapFactory.decodeFile(bgImage)
                if (bitmap != null) {
                    BitmapPainter(bitmap.asImageBitmap())
                } else {
                    null
                }
            } catch (e: Exception) {
                null
            }
        } else {
            val resId = context.resources.getIdentifier(bgImage, "drawable", context.packageName)
            if (resId != 0) {
                // We can't use painterResource inside remember like this if it's not a composable call
                // But we can get the resource ID and use it outside.
                null // Will handle below
            } else {
                null
            }
        }
    } ?: run {
        // Fallback or Resource handling
        if (!bgImage.startsWith("/")) {
            val resId = context.resources.getIdentifier(bgImage, "drawable", context.packageName)
            if (resId != 0) {
                painterResource(resId)
            } else {
                painterResource(R.drawable.camera_bg)
            }
        } else {
            painterResource(R.drawable.camera_bg)
        }
    }
}
