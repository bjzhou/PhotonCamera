package com.hinnka.mycamera

import android.annotation.SuppressLint
import android.app.Application
import com.hinnka.mycamera.data.ContentRepository
import com.hinnka.mycamera.ghost.GhostService
import com.hinnka.mycamera.utils.BuglyHelper

class MyCameraApplication : Application() {

    override fun onCreate() {
        super.onCreate()
        instance = this
        BuglyHelper.init(this)
        ContentRepository.getInstance(this).initialize()
        ghostService = GhostService(this)
    }

    companion object {
        lateinit var instance: MyCameraApplication
        @SuppressLint("StaticFieldLeak")
        lateinit var ghostService: GhostService
    }
}