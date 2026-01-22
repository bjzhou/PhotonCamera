package com.hinnka.mycamera

import android.app.Application
import com.hinnka.mycamera.utils.BuglyHelper

class MyCameraApplication : Application() {

    override fun onCreate() {
        super.onCreate()

        BuglyHelper.init(this)
    }
}