package com.hinnka.mycamera.raw

import android.content.Context
import com.hinnka.mycamera.R
import com.hinnka.mycamera.data.CustomImportManager
import com.hinnka.mycamera.processor.CalibratedRawNoiseProfile
import com.hinnka.mycamera.processor.RawNoiseProfileSelection
import com.hinnka.mycamera.utils.PLog
import java.util.Locale
import java.util.concurrent.ConcurrentHashMap

data class RawNoiseProfileInfo(
    val id: String,
    val nameMap: Map<String, String>,
    val filePath: String?,
    val isBuiltIn: Boolean,
    val nameResId: Int? = null,
) {
    fun getName(): String {
        val language = Locale.getDefault().language
        return nameMap[language] ?: nameMap["en"] ?: nameMap.values.firstOrNull() ?: id
    }
}

class RawNoiseProfileManager(context: Context) {
    private val appContext = context.applicationContext
    private val customImportManager = CustomImportManager(appContext)
    private val calibratedCache = ConcurrentHashMap<String, CalibratedRawNoiseProfile>()

    fun getAvailableProfiles(): List<RawNoiseProfileInfo> =
        (BUILT_IN_PROFILES + customImportManager.getCustomRawNoiseProfiles())
            .distinctBy(RawNoiseProfileInfo::id)

    fun resolveSelection(requestedId: String?): RawNoiseProfileSelection {
        val id = requestedId?.takeIf { it.isNotBlank() } ?: DEFAULT_PROFILE_ID
        if (id == SYSTEM_PROFILE_ID) return RawNoiseProfileSelection.Camera2
        if (id == PIXEL3_PROFILE_ID) {
            return RawNoiseProfileSelection.Calibrated(
                CalibratedRawNoiseProfile.MGC_GOOGLE_BLUELINE_REAR,
                PIXEL3_PROFILE_ID,
            )
        }
        val info = getAvailableProfiles().firstOrNull { it.id == id }
        val calibrated = info?.let(::loadCalibratedProfile)
        if (calibrated != null) return RawNoiseProfileSelection.Calibrated(calibrated, id)

        PLog.w(TAG, "RAW noise profile unavailable: $id; using Pixel 3")
        return RawNoiseProfileSelection.Calibrated(
            CalibratedRawNoiseProfile.MGC_GOOGLE_BLUELINE_REAR,
            PIXEL3_PROFILE_ID,
        )
    }

    private fun loadCalibratedProfile(info: RawNoiseProfileInfo): CalibratedRawNoiseProfile? {
        calibratedCache[info.id]?.let { return it }
        val path = info.filePath ?: return null
        return runCatching {
            val profile = if (info.isBuiltIn) {
                appContext.assets.open(path).use { input ->
                    CalibratedRawNoiseProfile.parseGcamC(info.id, input)
                }
            } else {
                java.io.File(path).inputStream().use { input ->
                    CalibratedRawNoiseProfile.parseGcamC(info.id, input)
                }
            }
            calibratedCache.putIfAbsent(info.id, profile) ?: profile
        }.onFailure { error ->
            PLog.e(TAG, "Failed to load RAW noise profile: ${info.id}", error)
        }.getOrNull()
    }

    companion object {
        private const val TAG = "RawNoiseProfileManager"
        const val SYSTEM_PROFILE_ID = RawNoiseProfileSelection.SYSTEM_CAMERA2_ID
        const val PIXEL3_PROFILE_ID = "builtin_noise_pixel3"
        const val PIXEL8_PRO_PROFILE_ID = "builtin_noise_pixel8_pro"
        const val DEFAULT_PROFILE_ID = PIXEL3_PROFILE_ID

        private val BUILT_IN_PROFILES = listOf(
            RawNoiseProfileInfo(
                id = SYSTEM_PROFILE_ID,
                nameMap = emptyMap(),
                filePath = null,
                isBuiltIn = true,
                nameResId = R.string.raw_noise_profile_system,
            ),
            RawNoiseProfileInfo(
                id = PIXEL3_PROFILE_ID,
                nameMap = emptyMap(),
                filePath = null,
                isBuiltIn = true,
                nameResId = R.string.raw_noise_profile_pixel3,
            ),
            RawNoiseProfileInfo(
                id = PIXEL8_PRO_PROFILE_ID,
                nameMap = emptyMap(),
                filePath = "noise_profiles/Pixel8Pro.c",
                isBuiltIn = true,
                nameResId = R.string.raw_noise_profile_pixel8_pro,
            ),
        )
    }
}
