package com.hinnka.mycamera.mgc

import android.content.ContentProvider
import android.content.ContentValues
import android.database.Cursor
import android.net.Uri
import android.os.Bundle
import com.hinnka.mycamera.data.ContentRepository
import com.hinnka.mycamera.lut.LutConfig
import com.hinnka.mycamera.model.ColorRecipeParams
import com.hinnka.mycamera.utils.PLog
import kotlinx.coroutines.flow.first
import kotlinx.coroutines.runBlocking

class PhotonLookProvider : ContentProvider() {
    override fun onCreate(): Boolean = true

    override fun call(method: String, arg: String?, extras: Bundle?): Bundle? {
        if (method != PhotonLookContract.METHOD_GET_LOOK_SNAPSHOT) {
            return super.call(method, arg, extras)
        }
        val appContext = context?.applicationContext ?: return null
        return runCatching {
            runBlocking {
                buildLookSnapshot(appContext)
            }
        }.onFailure {
            PLog.e(TAG, "Failed to build MGC look snapshot", it)
        }.getOrNull()
    }

    private suspend fun buildLookSnapshot(context: android.content.Context): Bundle {
        val repository = ContentRepository.getInstance(context)
        if (repository.getAvailableLuts().isEmpty()) {
            repository.initialize()
        }

        val preferences = repository.userPreferencesRepository.userPreferences.first()
        val lutId = preferences.lutId
            ?: repository.getAvailableLuts().firstOrNull { it.isDefault }?.id
            ?: LutConfigNone

        val normalizedLutId = lutId.takeUnless { it == LutConfigNone }
        val lutConfig = normalizedLutId?.let { repository.lutManager.loadLut(it) }
        val recipe = normalizedLutId?.let { repository.lutManager.loadColorRecipeParams(it) }
            ?: ColorRecipeParams.DEFAULT
        val payload = lutConfig?.takeIf { it.isValid() }?.toByteArray()
        val recipeJson = recipe.toJson()
        val signature = buildLookSignature(normalizedLutId, lutConfig, payload, recipeJson)

        return Bundle().apply {
            putInt(PhotonLookContract.EXTRA_SCHEMA_VERSION, SCHEMA_VERSION)
            putString(PhotonLookContract.EXTRA_LOOK_SIGNATURE, signature)
            putString(PhotonLookContract.EXTRA_LUT_ID, normalizedLutId)
            putString(PhotonLookContract.EXTRA_LUT_TITLE, lutConfig?.title.orEmpty())
            putInt(PhotonLookContract.EXTRA_LUT_SIZE, lutConfig?.size ?: 0)
            putInt(
                PhotonLookContract.EXTRA_LUT_DATA_TYPE,
                lutConfig?.configDataType ?: LutConfig.CONFIG_DATA_TYPE_UINT8
            )
            putInt(PhotonLookContract.EXTRA_LUT_CURVE_ORDINAL, lutConfig?.curve?.shaderId ?: 0)
            putInt(PhotonLookContract.EXTRA_LUT_COLOR_SPACE_ORDINAL, lutConfig?.colorSpace?.ordinal ?: 0)
            putByteArray(PhotonLookContract.EXTRA_LUT_PAYLOAD, payload)
            putString(PhotonLookContract.EXTRA_RECIPE_JSON, recipeJson)
        }
    }

    private fun LutConfig.toByteArray(): ByteArray {
        val buffer = toByteBuffer()
        return ByteArray(buffer.remaining()).also { buffer.get(it) }
    }

    private fun buildLookSignature(
        lutId: String?,
        lutConfig: LutConfig?,
        payload: ByteArray?,
        recipeJson: String
    ): String {
        return listOf(
            lutId.orEmpty(),
            lutConfig?.title.orEmpty(),
            lutConfig?.size ?: 0,
            lutConfig?.configDataType ?: 0,
            lutConfig?.curve?.shaderId ?: 0,
            lutConfig?.colorSpace?.ordinal ?: 0,
            payload?.contentHashCode() ?: 0,
            recipeJson.hashCode()
        ).joinToString(separator = ":")
    }

    override fun query(
        uri: Uri,
        projection: Array<out String>?,
        selection: String?,
        selectionArgs: Array<out String>?,
        sortOrder: String?
    ): Cursor? = null

    override fun getType(uri: Uri): String? = null

    override fun insert(uri: Uri, values: ContentValues?): Uri? = null

    override fun delete(uri: Uri, selection: String?, selectionArgs: Array<out String>?): Int = 0

    override fun update(
        uri: Uri,
        values: ContentValues?,
        selection: String?,
        selectionArgs: Array<out String>?
    ): Int = 0

    companion object {
        private const val TAG = "PhotonLookProvider"
        private const val SCHEMA_VERSION = 1
        private const val LutConfigNone = "none"
    }
}
