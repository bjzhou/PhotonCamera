package com.hinnka.mycamera.data

import android.content.Context
import com.hinnka.mycamera.lut.LutImageProcessor
import com.hinnka.mycamera.lut.LutManager

class ContentRepository private constructor(context: Context) {
    val lutManager: LutManager = LutManager(context.applicationContext).apply { initialize() }
    val imageProcessor: LutImageProcessor = LutImageProcessor()

    companion object {
        @Volatile
        private var instance: ContentRepository? = null

        fun getInstance(context: Context): ContentRepository {
            return instance ?: synchronized(this) {
                instance ?: ContentRepository(context).also { instance = it }
            }
        }
    }
}
