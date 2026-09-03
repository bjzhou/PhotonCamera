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
    private val systemCamera2Selection: RawNoiseProfileSelection.Camera2 by lazy(
        LazyThreadSafetyMode.SYNCHRONIZED,
    ) {
        val fallbackInfo = checkNotNull(
            BUILT_IN_PROFILES.firstOrNull { it.id == PIXEL8_PRO_PROFILE_ID },
        ) { "Bundled Pixel 8 Pro RAW noise fallback is not registered" }
        val fallbackProfile = checkNotNull(loadCalibratedProfile(fallbackInfo)) {
            "Bundled Pixel 8 Pro RAW noise fallback could not be loaded"
        }
        RawNoiseProfileSelection.Camera2(fallbackProfile)
    }
    private val adaptiveTemplate: CalibratedRawNoiseProfile by lazy(
        LazyThreadSafetyMode.SYNCHRONIZED,
    ) {
        val templateInfo = checkNotNull(
            BUILT_IN_PROFILES.firstOrNull { it.id == X9_ULTRA_PROFILE_ID },
        ) { "Bundled X9 Ultra adaptive RAW noise template is not registered" }
        checkNotNull(loadCalibratedProfile(templateInfo)) {
            "Bundled X9 Ultra adaptive RAW noise template could not be loaded"
        }
    }

    fun getAvailableProfiles(): List<RawNoiseProfileInfo> =
        (BUILT_IN_PROFILES + customImportManager.getCustomRawNoiseProfiles())
            .distinctBy(RawNoiseProfileInfo::id)

    fun resolveSelection(
        requestedId: String?,
        metadata: RawMetadata? = null,
    ): RawNoiseProfileSelection {
        val id = requestedId?.takeIf { it.isNotBlank() } ?: DEFAULT_PROFILE_ID
        if (id == SYSTEM_PROFILE_ID) return systemCamera2Selection
        if (id == ADAPTIVE_PROFILE_ID) return resolveAdaptiveSelection(metadata)
        val info = getAvailableProfiles().firstOrNull { it.id == id }
        val calibrated = info?.let(::loadCalibratedProfile)
        if (calibrated != null) return RawNoiseProfileSelection.Calibrated(calibrated, id)

        PLog.w(
            TAG,
            "RAW noise profile unavailable: $id; using Camera2 system profile with " +
                "$PIXEL8_PRO_PROFILE_ID fallback",
        )
        return systemCamera2Selection
    }

    private fun resolveAdaptiveSelection(metadata: RawMetadata?): RawNoiseProfileSelection {
        val estimate = metadata?.let { rawMetadata ->
            AdaptiveRawNoiseProfileEstimator.estimate(
                id = ADAPTIVE_PROFILE_ID,
                template = adaptiveTemplate,
                target = AdaptiveRawNoiseProfileTarget(
                    sensorPhysicalWidthMm = rawMetadata.sensorPhysicalWidthMm,
                    sensorPhysicalHeightMm = rawMetadata.sensorPhysicalHeightMm,
                    sensorPixelArrayWidth = rawMetadata.sensorPixelArrayWidth,
                    sensorPixelArrayHeight = rawMetadata.sensorPixelArrayHeight,
                    aperture = rawMetadata.aperture,
                    maximumAnalogSensitivityIso = rawMetadata.maxAnalogSensitivity,
                ),
            )
        }
        if (estimate != null) {
            val targetMetadata = checkNotNull(metadata)
            PLog.i(
                TAG,
                "Adaptive RAW noise profile generated: " +
                    "sensor=${targetMetadata.sensorPhysicalWidthMm}x" +
                    "${targetMetadata.sensorPhysicalHeightMm}mm " +
                    "pixels=${targetMetadata.sensorPixelArrayWidth}x" +
                    "${targetMetadata.sensorPixelArrayHeight} " +
                    "aperture=f/${targetMetadata.aperture} " +
                    "maxAnalogIso=${targetMetadata.maxAnalogSensitivity} " +
                    "driver=${estimate.relativeNoiseDriver} shotScale=${estimate.shotScale} " +
                    "readQuadraticScale=${estimate.readQuadraticScale} " +
                    "readFloorScale=${estimate.readFloorScale}",
            )
            return RawNoiseProfileSelection.Calibrated(
                profile = estimate.profile,
                id = ADAPTIVE_PROFILE_ID,
            )
        }

        PLog.w(
            TAG,
            "Adaptive RAW noise profile lacks complete sensor geometry; using the source " +
                "Camera2/DNG profile with the X9 Ultra template as fallback",
        )
        return RawNoiseProfileSelection.Camera2(
            fallbackProfile = adaptiveTemplate,
            id = ADAPTIVE_PROFILE_ID,
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
        const val ADAPTIVE_PROFILE_ID = "adaptive_x9_ultra"
        const val PIXEL8_PRO_PROFILE_ID = "builtin_noise_pixel8_pro"
        const val X9_ULTRA_PROFILE_ID = "builtin_noise_x9_ultra"
        const val X9_ULTRA_3X_PROFILE_ID = "builtin_noise_x9_ultra_3x"
        const val DEFAULT_PROFILE_ID = SYSTEM_PROFILE_ID

        private val BUILT_IN_PROFILES = listOf(
            RawNoiseProfileInfo(
                id = SYSTEM_PROFILE_ID,
                nameMap = emptyMap(),
                filePath = null,
                isBuiltIn = true,
                nameResId = R.string.raw_noise_profile_system,
            ),
            RawNoiseProfileInfo(
                id = ADAPTIVE_PROFILE_ID,
                nameMap = emptyMap(),
                filePath = null,
                isBuiltIn = true,
                nameResId = R.string.raw_noise_profile_adaptive,
            ),
            RawNoiseProfileInfo(
                id = PIXEL8_PRO_PROFILE_ID,
                nameMap = emptyMap(),
                filePath = "noise_profiles/Pixel8Pro.c",
                isBuiltIn = true,
                nameResId = R.string.raw_noise_profile_pixel8_pro,
            ),
            RawNoiseProfileInfo(
                id = X9_ULTRA_PROFILE_ID,
                nameMap = emptyMap(),
                filePath = "noise_profiles/X9Ultra.c",
                isBuiltIn = true,
                nameResId = R.string.raw_noise_profile_x9_ultra,
            ),
            RawNoiseProfileInfo(
                id = X9_ULTRA_3X_PROFILE_ID,
                nameMap = emptyMap(),
                filePath = "noise_profiles/X9Ultra3X.c",
                isBuiltIn = true,
                nameResId = R.string.raw_noise_profile_x9_ultra_3x,
            ),
        )
    }
}
