package com.hinnka.mycamera.data

import androidx.datastore.core.DataMigration
import androidx.datastore.preferences.core.Preferences
import androidx.datastore.preferences.core.booleanPreferencesKey
import androidx.datastore.preferences.core.stringPreferencesKey
import com.hinnka.mycamera.utils.PLog
import java.security.KeyStore

/**
 * Removes the settings of the retired online AI service (API key, base URL, model, built-in
 * service switch) and the Android Keystore key that encrypted the API key.
 */
internal class RemovedAiServicePreferencesMigration : DataMigration<Preferences> {
    override suspend fun shouldMigrate(currentData: Preferences): Boolean =
        REMOVED_KEYS.any { currentData.contains(it) }

    override suspend fun migrate(currentData: Preferences): Preferences {
        deleteApiKeyEncryptionKey()
        return currentData.toMutablePreferences().apply {
            REMOVED_KEYS.forEach { remove(it) }
        }
    }

    override suspend fun cleanUp() = Unit

    private fun deleteApiKeyEncryptionKey() {
        try {
            val keyStore = KeyStore.getInstance(ANDROID_KEY_STORE).apply { load(null) }
            if (keyStore.containsAlias(API_KEY_ENCRYPTION_KEY_ALIAS)) {
                keyStore.deleteEntry(API_KEY_ENCRYPTION_KEY_ALIAS)
            }
        } catch (e: Exception) {
            PLog.w(TAG, "Cannot delete the retired API key encryption key", e)
        }
    }

    private companion object {
        const val TAG = "RemovedAiServicePrefs"
        const val ANDROID_KEY_STORE = "AndroidKeyStore"
        const val API_KEY_ENCRYPTION_KEY_ALIAS = "photon_openai_api_key_v1"

        val REMOVED_KEYS: List<Preferences.Key<*>> = listOf(
            stringPreferencesKey("openai_api_key"),
            stringPreferencesKey("openai_api_key_encrypted_v1"),
            stringPreferencesKey("openai_base_url"),
            stringPreferencesKey("openai_model"),
            booleanPreferencesKey("use_built_in_ai_service"),
        )
    }
}
