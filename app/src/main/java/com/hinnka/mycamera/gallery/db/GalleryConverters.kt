package com.hinnka.mycamera.gallery.db

import androidx.room.TypeConverter

class GalleryConverters {
    @TypeConverter
    fun fromFloatArray(value: FloatArray?): String? {
        return value?.joinToString(";")
    }

    @TypeConverter
    fun toFloatArray(value: String?): FloatArray? {
        if (value.isNullOrEmpty()) return null
        return value.split(";").mapNotNull { it.toFloatOrNull() }.toFloatArray()
    }
}
