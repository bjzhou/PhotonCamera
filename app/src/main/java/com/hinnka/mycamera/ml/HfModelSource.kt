package com.hinnka.mycamera.ml

import android.content.Context
import java.util.Locale

/** Host serving commit-pinned Hugging Face model files; the mirror serves the same repositories. */
enum class HfModelSource(val host: String) {
    HUGGING_FACE("https://huggingface.co"),
    HF_MIRROR("https://hf-mirror.com");

    fun url(path: String): String = host + path

    companion object {
        private const val PREFS_NAME = "hf_model_source"
        private const val KEY_SOURCE = "source"

        /** The last source the user downloaded from; hf-mirror by default in mainland China. */
        fun preferred(context: Context): HfModelSource {
            val saved = context.getSharedPreferences(PREFS_NAME, Context.MODE_PRIVATE).getString(KEY_SOURCE, null)
            entries.firstOrNull { it.name == saved }?.let { return it }
            return if (Locale.getDefault().country == "CN") HF_MIRROR else HUGGING_FACE
        }

        fun remember(context: Context, source: HfModelSource) {
            context.getSharedPreferences(PREFS_NAME, Context.MODE_PRIVATE)
                .edit().putString(KEY_SOURCE, source.name).apply()
        }
    }
}
