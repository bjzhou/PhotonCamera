package com.hinnka.mycamera.data

import android.security.keystore.KeyGenParameterSpec
import android.security.keystore.KeyProperties
import android.util.Base64
import androidx.datastore.core.DataMigration
import androidx.datastore.preferences.core.Preferences
import androidx.datastore.preferences.core.stringPreferencesKey
import java.nio.charset.StandardCharsets
import java.security.KeyStore
import javax.crypto.Cipher
import javax.crypto.KeyGenerator
import javax.crypto.SecretKey
import javax.crypto.spec.GCMParameterSpec

internal val ENCRYPTED_OPEN_AI_API_KEY_PREFERENCE =
    stringPreferencesKey("openai_api_key_encrypted_v1")
private val LEGACY_OPEN_AI_API_KEY_PREFERENCE = stringPreferencesKey("openai_api_key")

/** Encrypts the user-provided API key with an app-scoped, non-exportable Android Keystore key. */
internal class OpenAiApiKeyCipher {
    fun encrypt(apiKey: String): String {
        require(apiKey.isNotEmpty()) { "API key must not be empty" }

        val cipher = Cipher.getInstance(TRANSFORMATION)
        cipher.init(Cipher.ENCRYPT_MODE, getOrCreateSecretKey())
        cipher.updateAAD(ASSOCIATED_DATA)

        val initializationVector = Base64.encodeToString(cipher.iv, Base64.NO_WRAP)
        val ciphertext = Base64.encodeToString(
            cipher.doFinal(apiKey.toByteArray(StandardCharsets.UTF_8)),
            Base64.NO_WRAP,
        )
        return "$ENCRYPTED_VALUE_PREFIX$initializationVector:$ciphertext"
    }

    fun decrypt(encryptedValue: String): String {
        require(isEncrypted(encryptedValue)) { "Unsupported API key storage format" }

        val parts = encryptedValue.removePrefix(ENCRYPTED_VALUE_PREFIX).split(':', limit = 2)
        require(parts.size == 2) { "Invalid encrypted API key payload" }

        val initializationVector = Base64.decode(parts[0], Base64.NO_WRAP)
        val ciphertext = Base64.decode(parts[1], Base64.NO_WRAP)
        val cipher = Cipher.getInstance(TRANSFORMATION)
        cipher.init(
            Cipher.DECRYPT_MODE,
            getOrCreateSecretKey(),
            GCMParameterSpec(GCM_AUTH_TAG_LENGTH_BITS, initializationVector),
        )
        cipher.updateAAD(ASSOCIATED_DATA)
        return String(cipher.doFinal(ciphertext), StandardCharsets.UTF_8)
    }

    fun isEncrypted(value: String): Boolean = value.startsWith(ENCRYPTED_VALUE_PREFIX)

    private fun getOrCreateSecretKey(): SecretKey {
        val keyStore = KeyStore.getInstance(ANDROID_KEY_STORE).apply { load(null) }
        (keyStore.getKey(KEY_ALIAS, null) as? SecretKey)?.let { return it }

        return KeyGenerator.getInstance(KeyProperties.KEY_ALGORITHM_AES, ANDROID_KEY_STORE).run {
            init(
                KeyGenParameterSpec.Builder(
                    KEY_ALIAS,
                    KeyProperties.PURPOSE_ENCRYPT or KeyProperties.PURPOSE_DECRYPT,
                )
                    .setBlockModes(KeyProperties.BLOCK_MODE_GCM)
                    .setEncryptionPaddings(KeyProperties.ENCRYPTION_PADDING_NONE)
                    .setKeySize(KEY_SIZE_BITS)
                    .build(),
            )
            generateKey()
        }
    }

    private companion object {
        const val ANDROID_KEY_STORE = "AndroidKeyStore"
        const val KEY_ALIAS = "photon_openai_api_key_v1"
        const val TRANSFORMATION = "AES/GCM/NoPadding"
        const val ENCRYPTED_VALUE_PREFIX = "keystore:v1:"
        const val GCM_AUTH_TAG_LENGTH_BITS = 128
        const val KEY_SIZE_BITS = 256
        val ASSOCIATED_DATA = "openai_api_key".toByteArray(StandardCharsets.UTF_8)
    }
}

/** Rewrites API keys saved by older versions before DataStore exposes their plaintext value. */
internal class OpenAiApiKeyEncryptionMigration(
    private val cipher: OpenAiApiKeyCipher = OpenAiApiKeyCipher(),
) : DataMigration<Preferences> {
    override suspend fun shouldMigrate(currentData: Preferences): Boolean {
        return currentData.contains(LEGACY_OPEN_AI_API_KEY_PREFERENCE)
    }

    override suspend fun migrate(currentData: Preferences): Preferences {
        val storedValue = currentData[LEGACY_OPEN_AI_API_KEY_PREFERENCE]
        return currentData.toMutablePreferences().apply {
            remove(LEGACY_OPEN_AI_API_KEY_PREFERENCE)
            if (!storedValue.isNullOrBlank()) {
                this[ENCRYPTED_OPEN_AI_API_KEY_PREFERENCE] = cipher.encrypt(storedValue)
            }
        }
    }

    override suspend fun cleanUp() = Unit
}
