package com.hinnka.mycamera.utils

import android.content.Context
import android.provider.Settings
import com.tencent.bugly.crashreport.BuglyLog
import com.tencent.bugly.crashreport.CrashReport

object BuglyHelper {
    fun init(context: Context) {
        val strategy = CrashReport.UserStrategy(context).apply {
            deviceID = Settings.Secure.getString(context.contentResolver, Settings.Secure.ANDROID_ID)
            deviceModel = DeviceUtil.model
        }
        CrashReport.initCrashReport(context.applicationContext, "9966e9cd35", false, strategy)
    }

    fun setUserScene(context: Context, scene: Int) {
        CrashReport.setUserSceneTag(context, scene)
    }

    fun putUserData(context: Context, key: String, value: String) {
        CrashReport.putUserData(context, key, value)
    }

    fun log(tag: String, msg: String, throwable: Throwable? = null) {
        BuglyLog.e(tag, msg, throwable)
    }

    fun error(throwable: Throwable) {
        CrashReport.postCatchedException(throwable)
    }
}
