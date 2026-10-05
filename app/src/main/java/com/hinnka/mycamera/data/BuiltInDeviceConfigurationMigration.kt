package com.hinnka.mycamera.data

import android.content.Context
import android.os.Build
import androidx.datastore.core.DataMigration
import androidx.datastore.preferences.core.Preferences
import androidx.datastore.preferences.core.stringPreferencesKey
import com.google.gson.Gson
import com.google.gson.JsonArray
import com.google.gson.JsonObject
import com.hinnka.mycamera.raw.DcpManager
import com.hinnka.mycamera.raw.RawNoiseProfileManager
import com.hinnka.mycamera.utils.DeviceUtil
import com.hinnka.mycamera.utils.PLog
import java.util.Locale

/** Installs hardware defaults before any preference reader (including camera discovery) runs. */
internal class BuiltInDeviceConfigurationMigration(
    manufacturer: String,
    model: String,
    private val loadConfigurations: () -> List<DeviceConfiguration>,
    private val validateAssets: (DeviceConfiguration) -> Unit = {},
    private val onApplied: (DeviceConfiguration) -> Unit = {},
    /**
     * 解析「Oplus 家族通用」默认 DCP；返回 null 表示不适用或没有可用配置文件。
     * 注入而非在类内直接读 Context，便于测试。
     */
    private val resolveOplusDefaultRawDcpId: () -> String? = { null },
) : DataMigration<Preferences> {
    private val deviceManufacturer = manufacturer.trim().lowercase(Locale.ROOT)
    private val deviceModel = model.trim().lowercase(Locale.ROOT)
    private val deviceIdentity = "$deviceManufacturer/$deviceModel"
    private var migratedConfigurations: List<DeviceConfiguration> = emptyList()

    private val matchingConfiguration: DeviceConfiguration? by lazy {
        val configurations = loadConfigurations()
        configurations.forEach { configuration ->
            require(!configuration.manufacturer.isNullOrBlank() && configuration.models.isNotEmpty()) {
                "Built-in configuration must declare manufacturer and models: ${configuration.name}"
            }
        }
        val matches = configurations.filter { configuration ->
            configuration.manufacturer?.trim()?.equals(deviceManufacturer, ignoreCase = true) == true &&
                configuration.models.any { it.equals(deviceModel, ignoreCase = true) }
        }
        require(matches.size <= 1) { "Multiple built-in configurations match $deviceIdentity" }
        matches.singleOrNull()
    }

    /**
     * Oplus 家族（OPPO / realme / OnePlus）机型在没有专门机型配置时补一份默认 DCP。
     *
     * 这些机型共用 Oplus 相机 HAL，其 Camera2/DNG 标定矩阵会让 RAW 出现偏色，而厂商 DCP
     * 是正确的色彩来源。项目对一加 Ace 2 已经用机型配置指派了同一个 DCP
     * （见 assets/device_configurations/oneplus_ace2.json）；realme 等机型此前没有任何
     * 条目，于是只能落到有问题的标定矩阵上。
     *
     * 只在**没有**专门机型配置时生效：已经做过明确配置的机型（OPPO X8/X9 Ultra、
     * 一加 Ace 2）保持原样，不受影响。
     */
    private val brandDefaultConfiguration: DeviceConfiguration? by lazy {
        if (matchingConfiguration != null) return@lazy null
        if (!DeviceUtil.isOplusFamilyManufacturer(deviceManufacturer)) return@lazy null
        val dcpId = resolveOplusDefaultRawDcpId() ?: return@lazy null
        runCatching {
            DeviceConfiguration.parse(
                brandDefaultConfigurationJson(
                    manufacturer = deviceManufacturer,
                    model = deviceModel,
                    rawDcpId = dcpId,
                )
            )
        }.onFailure { error ->
            PLog.w(TAG, "Failed to build Oplus brand default configuration", error)
        }.getOrNull()
    }

    /** 机型配置优先；没有机型配置时才用品牌级默认。 */
    private val applicableConfigurations: List<DeviceConfiguration>
        get() = listOfNotNull(matchingConfiguration ?: brandDefaultConfiguration)

    override suspend fun shouldMigrate(currentData: Preferences): Boolean {
        if (currentData[APPLIED_DEVICE] == deviceIdentity) return false
        return applicableConfigurations.isNotEmpty()
    }

    override suspend fun migrate(currentData: Preferences): Preferences {
        if (currentData[APPLIED_DEVICE] == deviceIdentity) return currentData
        val configurations = applicableConfigurations
        if (configurations.isEmpty()) return currentData
        configurations.forEach { configuration ->
            if (configuration === matchingConfiguration) validateAssets(configuration)
        }
        return currentData.toMutablePreferences().apply {
            configurations.forEach { configuration ->
                DeviceConfigurationFields.apply(this, configuration)
            }
            this[APPLIED_DEVICE] = deviceIdentity
        }.also { migratedConfigurations = configurations }
    }

    override suspend fun cleanUp() {
        migratedConfigurations.forEach(onApplied)
        migratedConfigurations = emptyList()
    }

    companion object {
        const val APPLIED_DEVICE_KEY_NAME = "builtin_device_configuration_applied_v1"
        val APPLIED_DEVICE = stringPreferencesKey(APPLIED_DEVICE_KEY_NAME)
        private const val ASSET_DIRECTORY = "device_configurations"
        private const val TAG = "DeviceConfiguration"

        /**
         * 项目内置的 OPPO 参考标定。与 oneplus_ace2.json 使用的同一个文件，
         * 确保 Oplus 家族内色彩口径一致。
         */
        private const val OPLUS_REFERENCE_RAW_DCP_ID = DcpManager.OPLUS_REFERENCE_RAW_DCP_ID

        private const val OPLUS_BRAND_DEFAULT_NAME = "Oplus family RAW color default"

        private fun brandDefaultConfigurationJson(
            manufacturer: String,
            model: String,
            rawDcpId: String,
        ): String {
            val root = JsonObject().apply {
                addProperty("format", DeviceConfiguration.FORMAT)
                addProperty("version", 1)
                addProperty("name", OPLUS_BRAND_DEFAULT_NAME)
                addProperty("manufacturer", manufacturer)
                add("models", JsonArray().apply { add(model) })
                add("overrides", JsonObject().apply { addProperty("raw_dcp_id", rawDcpId) })
            }
            return Gson().toJson(root)
        }

        /**
         * 优先使用项目内置的 OPPO 参考标定；若其被移除，则退回任意内置 OPPO 配置文件。
         * 两者都没有时返回 null，即不指派默认 DCP。
         */
        private fun resolveOplusReferenceRawDcpId(context: Context): String? {
            val builtIn = DcpManager(context).getAvailableDcps().filter { it.isBuiltIn }
            builtIn.firstOrNull { it.id == OPLUS_REFERENCE_RAW_DCP_ID }?.let { return it.id }
            return builtIn.firstOrNull { it.getName().startsWith("OPPO ", ignoreCase = true) }?.id
        }

        fun create(context: Context): BuiltInDeviceConfigurationMigration {
            val appContext = context.applicationContext
            return BuiltInDeviceConfigurationMigration(
                manufacturer = Build.MANUFACTURER,
                model = Build.MODEL,
                loadConfigurations = {
                    appContext.assets.list(ASSET_DIRECTORY).orEmpty()
                        .filter { it.endsWith(".json") }.sorted().map { file ->
                            appContext.assets.open("$ASSET_DIRECTORY/$file").use(DeviceConfiguration::read)
                        }
                },
                validateAssets = { configuration ->
                    val overrides = configuration.overrides
                    fun requireProfiles(single: String, perLens: String, availableIds: () -> Set<String>) {
                        val requested = buildList {
                            overrides[single]?.takeUnless { it.isJsonNull }?.let { add(it.asString) }
                            overrides[perLens]?.takeUnless { it.isJsonNull }?.asJsonObject
                                ?.entrySet()?.forEach { (_, value) ->
                                    if (!value.isJsonNull) add(value.asString)
                                }
                        }
                        if (requested.isNotEmpty()) {
                            val missing = requested.toSet() - availableIds()
                            require(missing.isEmpty()) { "Missing built-in calibration assets: $missing" }
                        }
                    }
                    requireProfiles("raw_dcp_id", "raw_dcp_ids_by_lens") {
                        DcpManager(appContext).getAvailableDcps()
                            .filter { it.isBuiltIn }.map { it.id }.toSet()
                    }
                    requireProfiles("raw_noise_profile_id", "raw_noise_profile_ids_by_lens") {
                        RawNoiseProfileManager(appContext).getAvailableProfiles()
                            .filter { it.isBuiltIn && it.id != RawNoiseProfileManager.ADAPTIVE_PROFILE_ID }
                            .map { it.id }.toSet()
                    }
                },
                onApplied = { configuration ->
                    PLog.i(TAG, "Applied built-in defaults: ${configuration.name} (${Build.MODEL})")
                },
                resolveOplusDefaultRawDcpId = { resolveOplusReferenceRawDcpId(appContext) },
            )
        }
    }
}
