package com.hinnka.mycamera.screencapture

import android.content.Intent

object ScreenCaptureProjectionStore {
    data class ProjectionGrant(
        val resultCode: Int,
        val data: Intent
    )

    private var pendingGrant: ProjectionGrant? = null

    fun save(resultCode: Int, data: Intent) {
        pendingGrant = ProjectionGrant(
            resultCode = resultCode,
            data = Intent(data)
        )
    }

    fun consume(): ProjectionGrant? {
        val grant = pendingGrant
        pendingGrant = null
        return grant
    }
}
