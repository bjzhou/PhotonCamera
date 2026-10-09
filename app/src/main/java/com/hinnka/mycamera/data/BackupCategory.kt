package com.hinnka.mycamera.data

/** Keeps each resource index together with the files needed to restore it. */
enum class BackupCategory(internal val paths: List<String>) {
    SETTINGS(listOf("datastore")),
    PRESETS(listOf(BackupPreferenceSanitizer.USER_PREFERENCES_ENTRY)),
    LUTS(listOf("custom_luts.json", "custom_luts", "category_overrides.json")),
    FRAMES(listOf("custom_frames.json", "custom_frames", "custom_fonts", "custom_logos")),
    DCP_PROFILES(listOf("custom_dcps.json", "custom_dcps")),
    RAW_NOISE_PROFILES(listOf("custom_raw_noise_profiles.json", "custom_raw_noise_profiles")),
    CAPTURE_SOUNDS(listOf("capture_sounds")),
}
