package com.hinnka.mycamera.model

import androidx.annotation.Keep

@Keep
data class Film(
    val id: String?,
    val name: String?,
    val type: String?,
    val iso: String?,
    val canisterUrl: String? = null,
    val manufacturer: String? = null,
    val origin: String? = null,
    val formats: List<String>? = null,
    val grain: String? = null,
    val contrast: String? = null,
    val bestFor: List<String>? = null,
    val examples: List<String>? = null
)
