package com.hinnka.mycamera.previewhook.api

import android.view.Surface

fun interface MgcParallelPreviewSurfaceListener {
    fun onSurfaceReady(surface: Surface)
}
