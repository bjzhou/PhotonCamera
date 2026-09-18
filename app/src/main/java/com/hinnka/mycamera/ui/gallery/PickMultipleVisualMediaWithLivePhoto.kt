package com.hinnka.mycamera.ui.gallery

import android.content.Context
import android.content.Intent
import android.net.Uri
import androidx.activity.result.PickVisualMediaRequest
import androidx.activity.result.contract.ActivityResultContract
import androidx.activity.result.contract.ActivityResultContracts
import androidx.core.net.toUri
import com.hinnka.mycamera.utils.PLog
import org.json.JSONException
import org.json.JSONObject

internal data class SelectedVisualMedia(
    val uris: List<Uri>,
    val pairedVideoUris: Map<Uri, Uri> = emptyMap(),
)

/** Keeps vivo Live Photo pairs when the picker includes them in its result. */
internal class PickMultipleVisualMediaWithLivePhoto :
    ActivityResultContract<PickVisualMediaRequest, SelectedVisualMedia>() {
    private val picker = ActivityResultContracts.PickMultipleVisualMedia()

    override fun createIntent(context: Context, input: PickVisualMediaRequest): Intent =
        picker.createIntent(context, input)

    override fun parseResult(resultCode: Int, intent: Intent?): SelectedVisualMedia {
        val uris = picker.parseResult(resultCode, intent)
        if (uris.isEmpty()) return SelectedVisualMedia(uris)

        val selectedUris = uris.toSet()
        val pairedVideoUris = mutableMapOf<Uri, Uri>()
        intent?.getStringArrayListExtra("selected_media_infos")?.forEach { text ->
            try {
                val mediaInfo = JSONObject(text)
                val mainUri = mediaInfo.optString("mainUri")
                val extraUri = mediaInfo.optString("extraUri")
                if (mainUri.isNotBlank() && extraUri.isNotBlank()) {
                    val imageUri = mainUri.toUri()
                    if (imageUri in selectedUris) {
                        pairedVideoUris[imageUri] = extraUri.toUri()
                    }
                }
            } catch (e: JSONException) {
                PLog.e("GalleryMediaPicker", "Failed to parse selected_media_infos entry", e)
            }
        }
        return SelectedVisualMedia(uris, pairedVideoUris)
    }
}
