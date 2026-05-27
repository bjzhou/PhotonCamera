package com.hinnka.mycamera.agc

import android.content.Context
import android.graphics.Color
import android.graphics.drawable.ColorDrawable
import android.view.Gravity
import android.view.View
import android.view.WindowManager
import androidx.activity.ComponentDialog
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color as ComposeColor
import androidx.compose.ui.platform.ComposeView
import androidx.compose.ui.unit.dp
import com.hinnka.mycamera.lut.LutManager
import com.hinnka.mycamera.ui.components.LutSelector

class PhotonLutSelectorDialog(
    context: Context,
    private val anchor: View?
) : ComponentDialog(context) {
    override fun show() {
        setContentView(
            ComposeView(context).apply {
                setContent {
                    val appContext = context.applicationContext
                    val lutManager = remember { LutManager(appContext).apply { initialize() } }
                    var selectedLutId by remember { mutableStateOf(PhotonAgcBridge.getSelectedLutId(appContext)) }
                    var luts by remember { mutableStateOf(lutManager.getAvailableLuts()) }

                    LaunchedEffect(Unit) {
                        lutManager.initialize()
                        luts = lutManager.getAvailableLuts()
                    }

                    Box(
                        modifier = Modifier
                            .fillMaxWidth()
                            .height(150.dp)
                            .background(ComposeColor.Black.copy(alpha = 0.92f))
                    ) {
                        LutSelector(
                            availableLuts = luts,
                            currentLutId = selectedLutId,
                            thumbnail = null,
                            onLutSelected = { lutId ->
                                selectedLutId = lutId
                                PhotonAgcBridge.setSelectedLutId(appContext, lutId)
                            },
                            modifier = Modifier.fillMaxWidth()
                        )
                    }
                }
            }
        )
        window?.run {
            setBackgroundDrawable(ColorDrawable(Color.TRANSPARENT))
            clearFlags(WindowManager.LayoutParams.FLAG_DIM_BEHIND)
            val params = attributes
            params.width = WindowManager.LayoutParams.MATCH_PARENT
            params.height = WindowManager.LayoutParams.WRAP_CONTENT
            params.gravity = Gravity.BOTTOM
            anchor?.let { view ->
                val location = IntArray(2)
                val visibleFrame = android.graphics.Rect()
                view.getLocationInWindow(location)
                view.getWindowVisibleDisplayFrame(visibleFrame)
                val bottomOffset = (visibleFrame.bottom - location[1]).coerceAtLeast(0)
                params.y = bottomOffset
            }
            attributes = params
        }
        super.show()
    }
}
