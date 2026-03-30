package com.hinnka.mycamera.utils

import android.util.Log

object PLog {
    fun v(tag: String, message: String) = Log.v("PLog_$tag", message)
    fun d(tag: String, message: String) = Log.d("PLog_$tag", message)
    fun i(tag: String, message: String) = Log.i("PLog_$tag", message)
    fun w(tag: String, message: String, throwable: Throwable? = null) {
        if (throwable != null) Log.w("PLog_$tag", message, throwable) else Log.w("PLog_$tag", message)
    }
    fun e(tag: String, message: String, throwable: Throwable? = null) {
        if (throwable != null) Log.e("PLog_$tag", message, throwable) else Log.e("PLog_$tag", message)
    }
}
