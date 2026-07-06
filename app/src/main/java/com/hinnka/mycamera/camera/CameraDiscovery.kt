package com.hinnka.mycamera.camera

import android.content.Context
import android.graphics.ImageFormat
import android.hardware.camera2.CameraAccessException
import android.hardware.camera2.CameraCharacteristics
import android.hardware.camera2.CameraManager
import android.hardware.camera2.CameraMetadata
import android.os.Build
import android.util.Log
import android.util.Range
import com.hinnka.mycamera.data.UserPreferencesRepository
import com.hinnka.mycamera.utils.DeviceUtil
import com.hinnka.mycamera.utils.PLog
import kotlinx.coroutines.flow.firstOrNull
import kotlinx.coroutines.runBlocking
import kotlin.math.abs

/**
 * 相机发现器
 * 
 * 负责发现和枚举设备上的所有可用摄像头，包括：
 * - 通过 CameraX intrinsicZoomRatio 识别广角/长焦
 * - 通过暴力探测 Camera ID 0-5 发现隐藏的物理摄像头
 * - 处理厂商特定的兼容性问题
 */
class CameraDiscovery(private val context: Context) {

    companion object {
        private const val TAG = "CameraDiscovery"

        // 探测的最大 Camera ID
        private const val MAX_PROBE_ID = 6

        // 需要跳过探测的厂商
        private val SKIP_PROBE_MANUFACTURERS = setOf("huawei", "honor")

        // Vivo 需要跳过探测的机型
        private val VIVO_SKIP_MODELS = setOf("V1914A", "V2023EA")
    }

    private val cameraManager: CameraManager by lazy {
        context.getSystemService(Context.CAMERA_SERVICE) as CameraManager
    }

    private val userPreferencesRepository = UserPreferencesRepository(context)

    // 缓存已发现的摄像头 ID 列表
    private var cachedCameraIds: List<String>? = null
    private var cachedCameraIdsWithDuplicateMain: List<String>? = null
    private var cachedRawCameraIdList: List<String>? = null
    private val cameraCharacteristicsCache = mutableMapOf<String, CameraCharacteristics>()

    /**
     * 发现所有可用的摄像头（不依赖 CameraX）
     * 
     * 纯粹使用 Camera2 API，包括：
     * - 系统返回的摄像头
     * - 通过暴力探测发现的隐藏摄像头
     * 
     * @return 摄像头信息列表，按类型分类
     */
    fun discoverAllCameras(): List<CameraInfo> {
        val cameras = mutableListOf<CameraInfo>()
        val preferredMainCameraId = loadPreferredMainCameraId()

        val discoveredCameras = discoverCameraCandidates(
            includeDuplicateMainCameraIds = false,
            preferredMainCameraId = preferredMainCameraId
        )

        val iszVirtualCameras = createIszVirtualCameraCandidates(discoveredCameras.backCameras)
        val classifiedBackCameras = classifyBackCameras(
            cameras = discoveredCameras.backCameras + iszVirtualCameras,
            preferredMainCameraId = preferredMainCameraId
        )
        cameras.addAll(classifiedBackCameras)

        // 添加前置摄像头
        discoveredCameras.frontCamera?.let { cameras.add(it) }

        val uniqueCameras = removeDuplicatePhysicalCameraEntries(cameras)

        PLog.d(TAG, "Camera2 final list:")
        uniqueCameras.forEach { cam ->
            PLog.d(
                TAG,
                "  - ${cam.cameraId}: ${cam.lensType}, intrinsicZoom=${cam.intrinsicZoomRatio}, " +
                        "displayZoom=${cam.displayIntrinsicZoomRatio}"
            )
        }

        return uniqueCameras
    }

    fun discoverMainCameraIdOptions(): List<String> {
        val discoveredCameras = discoverCameraCandidates(includeDuplicateMainCameraIds = true)
        val adjustedCameras = adjustMacroCandidatesByFocalLength(discoveredCameras.backCameras)
        val options = adjustedCameras
            .filter { !it.isMacro && isSameFocalLength(it.intrinsicZoomRatio, 1f) }
            .sortedWith(
                compareBy<CameraInfoWithZoom>(
                    { it.info.cameraId.toIntOrNull() ?: Int.MAX_VALUE },
                    { it.info.cameraId }
                )
            )
            .map { it.info.cameraId }
            .distinct()

        PLog.d(TAG, "Main camera ID options: $options")
        return options
    }

    private fun discoverCameraCandidates(
        includeDuplicateMainCameraIds: Boolean,
        preferredMainCameraId: String? = null
    ): DiscoveredCameraCandidates {
        val customLensIdSet = loadCustomLensIds().toSet()
        val baseCameraIds = getAllCameraIds(includeDuplicateMainCameraIds)
        val logicalCameraDiscoveryConfig = loadLogicalCameraDiscoveryConfig()
        val logicalCameraBindings = findLogicalCameraBindings(
            publicCameraIdSet = baseCameraIds.toSet(),
            config = logicalCameraDiscoveryConfig
        )
        val directCameraIds = appendPreferredMainCameraId(
            baseIds = baseCameraIds,
            preferredMainCameraId = preferredMainCameraId,
            logicalCameraBindings = logicalCameraBindings
        )
        // 获取完整的 Camera ID 列表（包括探测的隐藏摄像头和逻辑多摄暴露的物理摄像头）
        val allCameraIds = (directCameraIds + logicalCameraBindings.keys).distinct()
        PLog.d(TAG, "Camera2 discovered IDs: $allCameraIds")

        val backCameras = mutableListOf<CameraInfoWithZoom>()
        var frontCamera: CameraInfo? = null

        for (cameraId in allCameraIds) {
            try {
                val characteristics = getCameraCharacteristics(cameraId)
                val lensFacing = characteristics.get(CameraCharacteristics.LENS_FACING) ?: continue

                // 计算 intrinsicZoomRatio
                val intrinsicZoomRatio = calculateIntrinsicZoomRatio(cameraId, characteristics, lensFacing)

                // 检测是否为微距镜头
                val isMacro = isMacroLens(characteristics)

                val info = createCameraInfo(
                    cameraId = cameraId,
                    characteristics = characteristics,
                    lensFacing = lensFacing,
                    intrinsicZoomRatio = intrinsicZoomRatio,
                    isCustomLensId = customLensIdSet.contains(cameraId),
                    logicalBinding = logicalCameraBindings[cameraId]
                )

                when (lensFacing) {
                    CameraCharacteristics.LENS_FACING_BACK -> {
                        backCameras.add(CameraInfoWithZoom(info, intrinsicZoomRatio, isMacro))
                    }

                    CameraCharacteristics.LENS_FACING_FRONT -> {
                        if (frontCamera == null) {
                            frontCamera = info.copy(lensType = LensType.FRONT)
                        }
                    }
                }

                PLog.d(TAG, "Camera2: $cameraId: facing=$lensFacing, intrinsicZoom=$intrinsicZoomRatio")

            } catch (e: Exception) {
                PLog.w(TAG, "Failed to get camera $cameraId info", e)
            }
        }

        return DiscoveredCameraCandidates(
            backCameras = backCameras,
            frontCamera = frontCamera
        )
    }

    /**
     * 获取所有 Camera ID，包括通过探测发现的隐藏摄像头
     */
    private fun getAllCameraIds(includeDuplicateMainCameraIds: Boolean = false): List<String> {
        // 使用缓存
        if (includeDuplicateMainCameraIds) {
            cachedCameraIdsWithDuplicateMain?.let { return appendCustomCameraIds(it) }
        } else {
            cachedCameraIds?.let { return appendCustomCameraIds(it) }
        }

        val systemCameraIds = getPublicCameraIds()

        PLog.d(TAG, "System camera IDs: $systemCameraIds")

        // 探测隐藏的摄像头
        val lensIdBlacklist = loadLensIdBlacklist().toSet()
        val probedIds = if (DeviceUtil.isGoogle || DeviceUtil.isHuawei) {
            emptyList()
        } else {
            probeCameraIds(systemCameraIds, lensIdBlacklist, includeDuplicateMainCameraIds)
        }
        val allIds = (systemCameraIds + probedIds).distinct()

        PLog.d(TAG, "After probing: $allIds (probed: $probedIds)")

        if (includeDuplicateMainCameraIds) {
            cachedCameraIdsWithDuplicateMain = allIds
        } else {
            cachedCameraIds = allIds
        }
        return appendCustomCameraIds(allIds)
    }

    private fun getRawCameraIdList(): List<String> {
        cachedRawCameraIdList?.let { return it }
        return cameraManager.cameraIdList.toList().also {
            cachedRawCameraIdList = it
        }
    }

    private fun getCameraCharacteristics(cameraId: String): CameraCharacteristics {
        cameraCharacteristicsCache[cameraId]?.let { return it }
        return cameraManager.getCameraCharacteristics(cameraId).also {
            cameraCharacteristicsCache[cameraId] = it
        }
    }

    private fun getPublicCameraIds(): List<String> {
        val rawIds = try {
            getRawCameraIdList()
        } catch (e: CameraAccessException) {
            PLog.e(TAG, "Failed to get camera ID list (CameraAccessException)", e)
            return emptyList()
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to get camera ID list (${e.javaClass.simpleName}): ${e.message}", e)
            return emptyList()
        }

        return rawIds.filter { cameraId ->
            if (getCameraCharacteristicsOrNull(cameraId, "public camera list validation") != null) {
                true
            } else {
                PLog.w(TAG, "Public camera ID $cameraId skipped: characteristics unavailable")
                false
            }
        }
    }

    private fun appendCustomCameraIds(baseIds: List<String>): List<String> {
        val existingSet = baseIds.toSet()
        val customIds = loadCustomLensIds()
            .filterNot { existingSet.contains(it) }
            .filter { isCustomCameraIdAvailable(it) }

        if (customIds.isNotEmpty()) {
            PLog.d(TAG, "Custom lens IDs available: $customIds")
        }

        return (baseIds + customIds).distinct()
    }

    private fun appendPreferredMainCameraId(
        baseIds: List<String>,
        preferredMainCameraId: String?,
        logicalCameraBindings: Map<String, LogicalCameraBinding>
    ): List<String> {
        val cameraId = preferredMainCameraId?.trim()?.takeIf { it.isNotEmpty() } ?: return baseIds
        if (baseIds.contains(cameraId)) return baseIds
        logicalCameraBindings[cameraId]?.let { binding ->
            PLog.d(
                TAG,
                "Preferred main camera ID $cameraId uses logical camera ${binding.logicalCameraId}"
            )
            return baseIds
        }
        if (!isCustomCameraIdAvailable(cameraId)) return baseIds

        PLog.d(TAG, "Preferred main camera ID $cameraId added to discovery IDs")
        return (baseIds + cameraId).distinct()
    }

    private fun findLogicalCameraBindings(
        publicCameraIdSet: Set<String>,
        config: LogicalCameraDiscoveryConfig
    ): Map<String, LogicalCameraBinding> {
        val bindings = mutableMapOf<String, LogicalCameraBinding>()

        if (config.autoDiscoveryEnabled) {
            discoverAutomaticLogicalCameraBindings(
                publicCameraIdSet = publicCameraIdSet,
                bindings = bindings
            )
        } else {
            PLog.d(TAG, "Logical multi-camera auto discovery disabled")
        }

        applyForcedLogicalCameraBindings(
            bindings = bindings,
            forcedBindings = config.forcedBindings
        )

        return bindings
    }

    private fun discoverAutomaticLogicalCameraBindings(
        publicCameraIdSet: Set<String>,
        bindings: MutableMap<String, LogicalCameraBinding>
    ) {
        for (logicalCameraId in getRawCameraIdList()) {
            try {
                val characteristics = getCameraCharacteristics(logicalCameraId)
                val capabilities = characteristics.get(CameraCharacteristics.REQUEST_AVAILABLE_CAPABILITIES)
                    ?: continue
                if (!capabilities.contains(CameraMetadata.REQUEST_AVAILABLE_CAPABILITIES_LOGICAL_MULTI_CAMERA)) {
                    continue
                }

                val physicalCameras = characteristics.physicalCameraIds
                    .mapNotNull { physicalCameraId ->
                        createPhysicalCameraCandidate(
                            logicalCameraId = logicalCameraId,
                            physicalCameraId = physicalCameraId
                        )
                    }
                if (physicalCameras.isEmpty()) continue

                PLog.d(
                    TAG,
                    "Logical multi-camera $logicalCameraId exposes physical IDs: " +
                            physicalCameras.joinToString { "${it.cameraId}:${it.intrinsicZoomRatio}" }
                )

                for (physicalCamera in physicalCameras) {
                    if (publicCameraIdSet.contains(physicalCamera.cameraId)) {
                        PLog.d(
                            TAG,
                            "Skip logical binding for direct camera ${physicalCamera.cameraId} " +
                                    "from logical $logicalCameraId"
                        )
                        continue
                    }
                    val binding = LogicalCameraBinding(
                        logicalCameraId = logicalCameraId,
                        physicalCameras = listOf(physicalCamera)
                    )
                    PLog.d(
                        TAG,
                        "Add supplemental logical binding for missing physical camera ${physicalCamera.cameraId} " +
                                "from logical $logicalCameraId"
                    )
                    putBetterLogicalBinding(bindings, physicalCamera.cameraId, binding)
                }
            } catch (e: Exception) {
                PLog.w(TAG, "Failed to inspect logical camera $logicalCameraId", e)
            }
        }
    }

    private fun applyForcedLogicalCameraBindings(
        bindings: MutableMap<String, LogicalCameraBinding>,
        forcedBindings: List<LogicalCameraBindingRequest>
    ) {
        if (forcedBindings.isEmpty()) return

        for (forcedBinding in forcedBindings) {
            val binding = createForcedLogicalCameraBinding(forcedBinding) ?: continue
            val previous = bindings.put(forcedBinding.physicalCameraId, binding)
            if (previous == null) {
                PLog.d(
                    TAG,
                    "Forced logical binding added: " +
                            "${forcedBinding.logicalCameraId}/${forcedBinding.physicalCameraId}"
                )
            } else {
                PLog.d(
                    TAG,
                    "Forced logical binding overrides ${previous.logicalCameraId}/${forcedBinding.physicalCameraId}: " +
                            "${forcedBinding.logicalCameraId}/${forcedBinding.physicalCameraId}"
                )
            }
        }
    }

    private fun createForcedLogicalCameraBinding(
        request: LogicalCameraBindingRequest
    ): LogicalCameraBinding? {
        return try {
            val logicalCharacteristics = getCameraCharacteristics(request.logicalCameraId)
            val capabilities = logicalCharacteristics.get(CameraCharacteristics.REQUEST_AVAILABLE_CAPABILITIES)
            if (capabilities?.contains(CameraMetadata.REQUEST_AVAILABLE_CAPABILITIES_LOGICAL_MULTI_CAMERA) != true) {
                PLog.w(
                    TAG,
                    "Forced logical binding ${request.logicalCameraId}/${request.physicalCameraId} skipped: " +
                            "logical camera has no logical multi-camera capability"
                )
                return null
            }

            val advertisedPhysicalIds = logicalCharacteristics.physicalCameraIds
            if (!advertisedPhysicalIds.contains(request.physicalCameraId)) {
                PLog.w(
                    TAG,
                    "Forced logical binding ${request.logicalCameraId}/${request.physicalCameraId} skipped: " +
                            "physical camera is not advertised by logical camera"
                )
                return null
            }

            val physicalCamera = createPhysicalCameraCandidate(
                logicalCameraId = request.logicalCameraId,
                physicalCameraId = request.physicalCameraId
            ) ?: return null

            LogicalCameraBinding(
                logicalCameraId = request.logicalCameraId,
                physicalCameras = listOf(physicalCamera)
            )
        } catch (e: Exception) {
            PLog.w(
                TAG,
                "Failed to create forced logical binding " +
                        "${request.logicalCameraId}/${request.physicalCameraId}",
                e
            )
            null
        }
    }

    private fun putBetterLogicalBinding(
        bindings: MutableMap<String, LogicalCameraBinding>,
        cameraId: String,
        candidate: LogicalCameraBinding
    ) {
        val existing = bindings[cameraId]
        if (existing == null || isBetterLogicalBinding(candidate, existing)) {
            bindings[cameraId] = candidate
            if (existing != null) {
                PLog.d(
                    TAG,
                    "Logical binding for camera $cameraId switched " +
                            "from ${existing.logicalCameraId} to ${candidate.logicalCameraId}"
                )
            }
        } else {
            PLog.d(
                TAG,
                "Logical binding for camera $cameraId keeps ${existing.logicalCameraId}, " +
                        "skip ${candidate.logicalCameraId}"
            )
        }
    }

    private fun isBetterLogicalBinding(
        candidate: LogicalCameraBinding,
        existing: LogicalCameraBinding
    ): Boolean {
        val candidateCount = candidate.physicalCameras.size
        val existingCount = existing.physicalCameras.size
        if (candidateCount != existingCount) return candidateCount > existingCount

        val candidateZoomSpan = candidate.zoomSpan()
        val existingZoomSpan = existing.zoomSpan()
        if (abs(candidateZoomSpan - existingZoomSpan) > 0.01f) {
            return candidateZoomSpan > existingZoomSpan
        }

        return candidate.logicalCameraId.toIntOrNull()?.let { candidateId ->
            existing.logicalCameraId.toIntOrNull()?.let { existingId ->
                candidateId < existingId
            }
        } ?: (candidate.logicalCameraId < existing.logicalCameraId)
    }

    private fun createPhysicalCameraCandidate(
        logicalCameraId: String,
        physicalCameraId: String
    ): CameraPhysicalInfo? {
        return try {
            val characteristics = getCameraCharacteristics(physicalCameraId)
            val lensFacing = characteristics.get(CameraCharacteristics.LENS_FACING)
                ?: getCameraCharacteristics(logicalCameraId)
                    .get(CameraCharacteristics.LENS_FACING)
                ?: return null
            CameraPhysicalInfo(
                cameraId = physicalCameraId,
                intrinsicZoomRatio = calculateIntrinsicZoomRatio(
                    physicalCameraId,
                    characteristics,
                    lensFacing
                ),
                focalLength35mmEquivalent = get35mmEquivalentFocalLength(characteristics),
                focalLength = characteristics.get(CameraCharacteristics.LENS_INFO_AVAILABLE_FOCAL_LENGTHS)
                    ?.firstOrNull()
                    ?: 0f
            )
        } catch (e: Exception) {
            PLog.w(TAG, "Failed to inspect physical camera $physicalCameraId of logical $logicalCameraId", e)
            null
        }
    }

    private fun createIszVirtualCameraCandidates(
        baseCameras: List<CameraInfoWithZoom>
    ): List<CameraInfoWithZoom> {
        val configs = loadIszLensConfigs()
        if (configs.isEmpty()) return emptyList()

        val baseCameraById = baseCameras.associateBy { it.info.cameraId }
        return configs.mapNotNull { config ->
            val baseCamera = baseCameraById[config.baseCameraId]
            if (baseCamera == null) {
                PLog.w(TAG, "ISZ virtual lens skipped: base camera ${config.baseCameraId} is unavailable")
                return@mapNotNull null
            }

            val displayZoomRatio = baseCamera.intrinsicZoomRatio * config.iszZoomRatio
            val virtualInfo = baseCamera.info.copy(
                cameraId = config.virtualCameraId,
                logicalCameraId = baseCamera.info.getOpenCameraId(),
                focalLength = baseCamera.info.focalLength * config.iszZoomRatio,
                focalLength35mmEquivalent = baseCamera.info.focalLength35mmEquivalent * config.iszZoomRatio,
                intrinsicZoomRatio = baseCamera.info.intrinsicZoomRatio,
                displayIntrinsicZoomRatio = displayZoomRatio,
                isCustomLensId = false,
                isVirtualIszLens = true,
                isVirtualIszMacroLens = config.isMacro,
                baseCameraId = baseCamera.info.cameraId,
                iszZoomRatio = config.iszZoomRatio,
                rawBlackBorderCrop = config.rawBlackBorderCrop
            )

            PLog.d(
                TAG,
                "Add ISZ virtual lens ${virtualInfo.cameraId}: base=${config.baseCameraId}, " +
                        "apiIntrinsic=${virtualInfo.intrinsicZoomRatio}, displayZoom=$displayZoomRatio, " +
                        "isMacro=${config.isMacro}, rawBlackBorderCrop=${config.rawBlackBorderCrop}"
            )
            CameraInfoWithZoom(
                info = virtualInfo,
                intrinsicZoomRatio = displayZoomRatio,
                isMacro = config.isMacro
            )
        }
    }

    private fun loadCustomLensIds(): List<String> {
        return try {
            runBlocking {
                userPreferencesRepository.userPreferences.firstOrNull()?.customLensIds ?: emptyList()
            }
        } catch (e: Exception) {
            PLog.w(TAG, "Failed to load custom lens IDs", e)
            emptyList()
        }
    }

    private fun loadIszLensConfigs(): List<IszLensConfig> {
        return try {
            runBlocking {
                userPreferencesRepository.userPreferences.firstOrNull()?.iszLensConfigs ?: emptyList()
            }
        } catch (e: Exception) {
            PLog.w(TAG, "Failed to load ISZ lens configs", e)
            emptyList()
        }
    }

    private fun isCustomCameraIdAvailable(cameraId: String): Boolean {
        return try {
            val characteristics = getCameraCharacteristics(cameraId)

            characteristics.get(CameraCharacteristics.LENS_FACING) ?: return false

            val map = characteristics.get(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP)
            if (map?.getOutputSizes(ImageFormat.JPEG).isNullOrEmpty()) {
                PLog.d(TAG, "Custom lens ID $cameraId skipped: no JPEG output")
                return false
            }

            true
        } catch (e: Exception) {
            PLog.v(TAG, "Custom lens ID $cameraId unavailable: ${e.message}")
            false
        }
    }

    /**
     * 检查是否应该跳过摄像头探测
     * 某些厂商的设备在探测不存在的摄像头时可能崩溃
     */
    private fun shouldSkipProbing(): Boolean {
        val manufacturer = Build.MANUFACTURER.lowercase()

        // Huawei / Honor 跳过
        if (SKIP_PROBE_MANUFACTURERS.any { manufacturer.contains(it) }) {
            PLog.d(TAG, "Skipping probe for manufacturer: $manufacturer")
            return true
        }

        // Vivo 特殊处理
        if (manufacturer.contains("vivo")) {
            // 特定机型跳过
            if (VIVO_SKIP_MODELS.contains(Build.MODEL)) {
                PLog.d(TAG, "Skipping probe for Vivo model: ${Build.MODEL}")
                return true
            }
        }

        return false
    }

    /**
     * 暴力探测摄像头 ID 0-5
     * 某些设备的广角/长焦摄像头不会出现在系统 API 返回的列表中
     */
    private fun loadLensIdBlacklist(): List<String> {
        return try {
            runBlocking {
                userPreferencesRepository.userPreferences.firstOrNull()?.lensIdBlacklist ?: emptyList()
            }
        } catch (e: Exception) {
            PLog.w(TAG, "Failed to load lens ID blacklist", e)
            emptyList()
        }
    }

    private fun loadPreferredMainCameraId(): String? {
        return try {
            runBlocking {
                userPreferencesRepository.userPreferences.firstOrNull()?.preferredMainCameraId
            }
        } catch (e: Exception) {
            PLog.w(TAG, "Failed to load preferred main camera ID", e)
            null
        }
    }

    private fun loadLogicalCameraDiscoveryConfig(): LogicalCameraDiscoveryConfig {
        return try {
            runBlocking {
                val preferences = userPreferencesRepository.userPreferences.firstOrNull()
                LogicalCameraDiscoveryConfig(
                    autoDiscoveryEnabled = preferences?.enableLogicalMultiCameraDiscovery ?: false,
                    forcedBindings = parseLogicalCameraBindingRequests(
                        preferences?.logicalCameraBindingWhitelist ?: emptyList()
                    )
                )
            }
        } catch (e: Exception) {
            PLog.w(TAG, "Failed to load logical multi-camera discovery config", e)
            LogicalCameraDiscoveryConfig()
        }
    }

    private fun parseLogicalCameraBindingRequests(
        values: List<String>
    ): List<LogicalCameraBindingRequest> {
        return values
            .mapNotNull { value ->
                val parts = value.trim().split("/", limit = 2)
                if (parts.size != 2) return@mapNotNull null

                val logicalCameraId = parts[0].trim()
                val physicalCameraId = parts[1].trim()
                if (logicalCameraId.isEmpty() || physicalCameraId.isEmpty()) {
                    null
                } else {
                    LogicalCameraBindingRequest(
                        logicalCameraId = logicalCameraId,
                        physicalCameraId = physicalCameraId
                    )
                }
            }
            .distinct()
    }

    private fun probeCameraIds(
        existingIds: List<String>,
        lensIdBlacklist: Set<String>,
        includeDuplicateMainCameraIds: Boolean
    ): List<String> {
        val existingSet = existingIds.toSet()
        val foundIds = mutableListOf<String>()
        val foundMap = mutableMapOf<String, Float>()

        for (cameraId in getProbeCameraIdCandidates()) {

            if (existingSet.contains(cameraId)) {
                foundMap[cameraId] = loadZoomRation(cameraId) ?: 1f
                continue
            }

            if (lensIdBlacklist.contains(cameraId)) {
                PLog.d(TAG, "Probe camera $cameraId skipped: lens ID blacklist")
                continue
            }

            try {
                val characteristics = getCameraCharacteristics(cameraId)

                val availableCapabilities = characteristics.get(CameraCharacteristics.REQUEST_AVAILABLE_CAPABILITIES)
                availableCapabilities ?: continue
                if (!availableCapabilities.contains(CameraMetadata.REQUEST_AVAILABLE_CAPABILITIES_BACKWARD_COMPATIBLE)) {
                    continue
                }

                val map = characteristics.get(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP)
                map ?: continue
                if (map.getOutputSizes(ImageFormat.JPEG).isEmpty()) {
                    continue
                }

                val lensFacing = characteristics.get(CameraCharacteristics.LENS_FACING)
                lensFacing ?: continue

                // 计算 intrinsicZoomRatio 来判断是否是有意义的摄像头
                val intrinsicZoomRatio = calculateIntrinsicZoomRatio(cameraId, characteristics, lensFacing)

                if (isSameFocalLength(intrinsicZoomRatio, 1f)) {
                    if (includeDuplicateMainCameraIds) {
                        PLog.d(TAG, "Probed camera $cameraId: intrinsicZoom=$intrinsicZoomRatio main candidate")
                        foundIds.add(cameraId)
                        foundMap[cameraId] = intrinsicZoomRatio
                    } else {
                        PLog.d(TAG, "Probed camera $cameraId: skipped (intrinsicZoom=1.0)")
                    }
                    continue
                }

                // 只有 intrinsicZoomRatio != 1.0 的才是广角/长焦
                PLog.d(TAG, "Probed camera $cameraId: intrinsicZoom=$intrinsicZoomRatio")
                val exist = foundMap.any { abs(it.value - intrinsicZoomRatio) <= 0.01f }
                if (!exist) {
                    foundIds.add(cameraId)
                    foundMap[cameraId] = intrinsicZoomRatio
                }
            } catch (e: Exception) {
                // 该 ID 不存在或无法访问，忽略
                PLog.v(TAG, "Probe camera $cameraId failed: ${e.message}")
            }
        }

        return foundIds
    }

    private fun getProbeCameraIdCandidates(): List<String> {
        val idList = mutableListOf(0, 1, 2, 3, 4, 5)
        if (DeviceUtil.isSamsung) {
            val samsungList = listOf(52, 54, 56, 58)
            idList.addAll(samsungList)
        }
        return idList.map { it.toString() }
    }

    private fun loadZoomRation(cameraId: String): Float? {
        val characteristics = getCameraCharacteristicsOrNull(cameraId, "zoom ratio preload")
            ?: return null
        val lensFacing = characteristics.get(CameraCharacteristics.LENS_FACING) ?: return null
        return calculateIntrinsicZoomRatio(cameraId, characteristics, lensFacing)
    }

    private fun getCameraCharacteristicsOrNull(
        cameraId: String,
        reason: String
    ): CameraCharacteristics? {
        return try {
            getCameraCharacteristics(cameraId)
        } catch (e: Exception) {
            PLog.v(
                TAG,
                "Camera $cameraId characteristics unavailable during $reason: ${e.message}"
            )
            null
        }
    }

    /**
     * 计算摄像头的固有变焦比例
     * 
     * intrinsicZoomRatio = 该摄像头35mm等效焦距 / 主摄35mm等效焦距
     * 
     * - 主摄返回 ~1.0
     * - 广角返回 < 1.0 (如 0.5, 0.6)
     * - 长焦返回 > 1.0 (如 2.0, 3.0)
     */
    private fun calculateIntrinsicZoomRatio(
        cameraId: String,
        characteristics: CameraCharacteristics,
        lensFacing: Int
    ): Float {
        try {
            val current35mm = get35mmEquivalentFocalLength(characteristics)
            val default35mm = getDefault35mmEquivalent(lensFacing)

            if (current35mm <= 0 || default35mm <= 0) {
                return 1f
            }

            return current35mm / default35mm

        } catch (e: Exception) {
            PLog.w(TAG, "Failed to calculate intrinsicZoomRatio for camera $cameraId", e)
            return 1f
        }
    }

    /**
     * 获取设备默认35mm等效焦距（主摄）
     */
    private fun getDefault35mmEquivalent(lensFacing: Int): Float {
        try {
            for (cameraId in getRawCameraIdList()) {
                val characteristics = getCameraCharacteristics(cameraId)
                val facing = characteristics.get(CameraCharacteristics.LENS_FACING) ?: continue

                if (facing != lensFacing) continue

                return get35mmEquivalentFocalLength(characteristics)
            }
        } catch (e: Exception) {
            PLog.w(TAG, "Failed to get default focal length", e)
        }

        return 0f
    }

    /**
     * 计算 35mm 等效焦距
     * 35mm Equivalent = Physical Focal Length * (35mm Diagonal / Sensor Diagonal)
     */
    private fun get35mmEquivalentFocalLength(characteristics: CameraCharacteristics): Float {
        val focalLengths = characteristics.get(CameraCharacteristics.LENS_INFO_AVAILABLE_FOCAL_LENGTHS)
        val sensorSize = characteristics.get(CameraCharacteristics.SENSOR_INFO_PHYSICAL_SIZE)

        if (focalLengths == null || focalLengths.isEmpty() || sensorSize == null) {
            return 0f
        }

        val focalLength = focalLengths[0]

        // 计算传感器对角线
        val sensorDiagonal = kotlin.math.sqrt(
            (sensorSize.width * sensorSize.width + sensorSize.height * sensorSize.height).toDouble()
        ).toFloat()

        // 35mm 全画幅对角线 (36mm x 24mm)
        val filmDiagonal = 43.2666f

        if (sensorDiagonal <= 0) return 0f

        return focalLength * filmDiagonal / sensorDiagonal
    }

    /**
     * 检测是否为微距镜头
     */
    private fun isMacroLens(characteristics: CameraCharacteristics): Boolean {
        // 1. 通过最小对焦距离判断
        // 微距镜头通常支持极近距离对焦。
        // LENS_INFO_MINIMUM_FOCUS_DISTANCE 的单位是 1/米 (diopters)。
        // 10 对应 0.1米 (10cm)，20 对应 0.05米 (5cm)。
        val minFocusDistance = characteristics.get(CameraCharacteristics.LENS_INFO_MINIMUM_FOCUS_DISTANCE) ?: 0f
        val focusCalibration = characteristics.get(CameraCharacteristics.LENS_INFO_FOCUS_DISTANCE_CALIBRATION)

        // 专用微距镜头的典型特征：
        // (1) 最小对焦距离很大
        if (minFocusDistance >= 30f) {
            PLog.d(TAG, "isMacroLens: minFocusDistance=$minFocusDistance, focusCalibration=$focusCalibration")
            return true
        }
        return false
    }

    /**
     * 根据 intrinsicZoomRatio 分类后置摄像头
     */
    private fun classifyBackCameras(
        cameras: List<CameraInfoWithZoom>,
        preferredMainCameraId: String?
    ): List<CameraInfo> {
        if (cameras.isEmpty()) return emptyList()

        val adjustedCameras = adjustMacroCandidatesByFocalLength(cameras)

        // 分离微距镜头和普通镜头
        val macroCameras = preferCustomCameraForSameFocalLength(adjustedCameras.filter { it.isMacro })
        val normalCameras = preferCustomCameraForSameFocalLength(
            cameras = adjustedCameras.filter { !it.isMacro },
            preferredMainCameraId = preferredMainCameraId
        )

        if (normalCameras.isEmpty()) {
            // 如果全部被识别为微距（不常见），则按 intrinsicZoomRatio 排序并返回
            return adjustedCameras.sortedBy { it.intrinsicZoomRatio }
                .map { it.info.copy(lensType = LensType.BACK_MACRO) }
        }

        val result = mutableListOf<CameraInfo>()

        // 分类普通镜头
        if (normalCameras.size == 1) {
            result.add(normalCameras.first().info.copy(lensType = LensType.BACK_MAIN))
        } else {
            // 按 intrinsicZoomRatio 排序
            val sorted = normalCameras.sortedBy { it.intrinsicZoomRatio }

            // 找到最接近 1.0 的作为主摄
            val mainCameraIndex = findMainCameraIndex(sorted, preferredMainCameraId)

            result.addAll(sorted.mapIndexed { index, camera ->
                val lensType = when {
                    index < mainCameraIndex -> LensType.BACK_ULTRA_WIDE
                    index > mainCameraIndex -> LensType.BACK_TELEPHOTO
                    else -> LensType.BACK_MAIN
                }
                camera.info.copy(lensType = lensType)
            })
        }

        // 添加微距镜头
        result.addAll(macroCameras.map { it.info.copy(lensType = LensType.BACK_MACRO) })

        return result
    }

    private fun findMainCameraIndex(
        sortedCameras: List<CameraInfoWithZoom>,
        preferredMainCameraId: String?
    ): Int {
        val preferredIndex = preferredMainCameraId
            ?.takeIf { it.isNotBlank() }
            ?.let { cameraId ->
                sortedCameras.indexOfFirst {
                    it.info.cameraId == cameraId && isSameFocalLength(it.intrinsicZoomRatio, 1f)
                }
            }
            ?: -1

        if (preferredIndex >= 0) {
            PLog.d(TAG, "Preferred main camera selected: $preferredMainCameraId")
            return preferredIndex
        }

        if (!preferredMainCameraId.isNullOrBlank()) {
            PLog.d(TAG, "Preferred main camera $preferredMainCameraId not available; using closest 1x")
        }

        return sortedCameras.indices.minByOrNull { abs(sortedCameras[it].intrinsicZoomRatio - 1f) } ?: 0
    }

    private fun adjustMacroCandidatesByFocalLength(cameras: List<CameraInfoWithZoom>): List<CameraInfoWithZoom> {
        if (cameras.size <= 1) return cameras

        val shortestFocalLength = cameras
            .map { getComparableFocalLength(it) }
            .filter { it > 0f }
            .minOrNull()
            ?: return cameras

        return cameras.map { camera ->
            if (camera.isMacro && camera.info.isVirtualIszMacroLens) {
                return@map camera
            }
            if (!camera.isMacro || !isSameFocalLength(getComparableFocalLength(camera), shortestFocalLength)) {
                camera
            } else {
                PLog.d(
                    TAG,
                    "Macro candidate ${camera.info.cameraId} treated as normal lens: shortest focal length " +
                        "(${getComparableFocalLength(camera)}mm)"
                )
                camera.copy(isMacro = false)
            }
        }
    }

    private fun getComparableFocalLength(camera: CameraInfoWithZoom): Float {
        return camera.info.focalLength35mmEquivalent
            .takeIf { it > 0f }
            ?: camera.info.focalLength.takeIf { it > 0f }
            ?: camera.intrinsicZoomRatio
    }

    private fun preferCustomCameraForSameFocalLength(
        cameras: List<CameraInfoWithZoom>,
        preferredMainCameraId: String? = null
    ): List<CameraInfoWithZoom> {
        val selectedCameras = mutableListOf<CameraInfoWithZoom>()

        for (camera in cameras) {
            val sameFocalIndex = selectedCameras.indexOfFirst {
                isSameFocalLength(it.intrinsicZoomRatio, camera.intrinsicZoomRatio)
            }

            if (sameFocalIndex < 0) {
                selectedCameras.add(camera)
                continue
            }

            val existing = selectedCameras[sameFocalIndex]
            if (shouldReplaceSameFocalCamera(existing, camera, preferredMainCameraId)) {
                PLog.d(
                    TAG,
                    "Camera ID ${camera.info.cameraId} overrides same focal ID ${existing.info.cameraId} " +
                            "(intrinsicZoom=${camera.intrinsicZoomRatio}, " +
                            "physicalCandidates=${camera.info.physicalCameraIds})"
                )
                selectedCameras[sameFocalIndex] = camera
            } else {
                PLog.d(
                    TAG,
                    "Skip duplicate focal ID ${camera.info.cameraId}; using ${existing.info.cameraId} " +
                        "(intrinsicZoom=${camera.intrinsicZoomRatio})"
                )
            }
        }

        return selectedCameras
    }

    private fun shouldReplaceSameFocalCamera(
        existing: CameraInfoWithZoom,
        candidate: CameraInfoWithZoom,
        preferredMainCameraId: String?
    ): Boolean {
        if (isSameFocalLength(candidate.intrinsicZoomRatio, 1f)) {
            val existingIsPreferred = existing.info.cameraId == preferredMainCameraId
            val candidateIsPreferred = candidate.info.cameraId == preferredMainCameraId
            if (existingIsPreferred != candidateIsPreferred) return candidateIsPreferred
        }

        return shouldReplaceSameFocalCamera(existing.info, candidate.info)
    }

    private fun shouldReplaceSameFocalCamera(existing: CameraInfo, candidate: CameraInfo): Boolean {
        if (!existing.isVirtualIszLens && candidate.isVirtualIszLens) return true
        if (existing.isVirtualIszLens != candidate.isVirtualIszLens) return false
        if (!existing.isCustomLensId && candidate.isCustomLensId) return true
        if (existing.isCustomLensId != candidate.isCustomLensId) return false

        val existingHasPhysicalBinding = existing.physicalCameras.isNotEmpty()
        val candidateHasPhysicalBinding = candidate.physicalCameras.isNotEmpty()
        return existingHasPhysicalBinding && !candidateHasPhysicalBinding
    }

    private fun isSameFocalLength(firstZoomRatio: Float, secondZoomRatio: Float): Boolean {
        return abs(firstZoomRatio - secondZoomRatio) <= 0.01f
    }

    private fun removeDuplicatePhysicalCameraEntries(cameras: List<CameraInfo>): List<CameraInfo> {
        val usedPhysicalCameraIds = mutableSetOf<String>()
        val uniqueCameras = mutableListOf<CameraInfo>()

        for (camera in cameras) {
            val ownedPhysicalCameraIds = getOwnedPhysicalCameraIds(camera)
            val duplicatePhysicalCameraId = ownedPhysicalCameraIds.firstOrNull {
                usedPhysicalCameraIds.contains(it)
            }
            if (duplicatePhysicalCameraId != null) {
                PLog.w(
                    TAG,
                    "Skip duplicate physical camera entry ${camera.cameraId}: " +
                            "physicalId=$duplicatePhysicalCameraId, logical=${camera.logicalCameraId}"
                )
                continue
            }

            uniqueCameras.add(camera)
            usedPhysicalCameraIds.addAll(ownedPhysicalCameraIds)
        }

        return uniqueCameras
    }

    private fun getOwnedPhysicalCameraIds(camera: CameraInfo): List<String> {
        if (camera.isVirtualIszLens) return listOf(camera.cameraId)

        camera.outputPhysicalCameraId?.let { return listOf(it) }

        if (camera.logicalCameraId != null && camera.physicalCameras.isNotEmpty()) {
            return camera.physicalCameras.map { it.cameraId }.distinct()
        }

        return listOf(camera.cameraId)
    }

    /**
     * 创建 CameraInfo
     */
    private fun createCameraInfo(
        cameraId: String,
        characteristics: CameraCharacteristics,
        lensFacing: Int,
        intrinsicZoomRatio: Float,
        isCustomLensId: Boolean,
        logicalBinding: LogicalCameraBinding?
    ): CameraInfo {
        // 焦距信息
        val focalLengths = characteristics.get(CameraCharacteristics.LENS_INFO_AVAILABLE_FOCAL_LENGTHS)
        val focalLength = focalLengths?.firstOrNull() ?: 0f

        // 计算 35mm 等效焦距
        val focalLength35mm = get35mmEquivalentFocalLength(characteristics)

        // ISO 范围
        val isoRange = characteristics.get(CameraCharacteristics.SENSOR_INFO_SENSITIVITY_RANGE)

        // 曝光时间范围
        val exposureTimeRange = characteristics.get(CameraCharacteristics.SENSOR_INFO_EXPOSURE_TIME_RANGE)

        // 曝光补偿范围
        val exposureCompensationRange = characteristics.get(CameraCharacteristics.CONTROL_AE_COMPENSATION_RANGE)
            ?: Range(0, 0)

        // 曝光补偿步长
        val exposureCompensationStep =
            characteristics.get(CameraCharacteristics.CONTROL_AE_COMPENSATION_STEP)?.toFloat() ?: 0f

        // Camera2 zoom ratio range 可以表达逻辑多摄的 <1x 超广角范围
        val zoomRatioRange = characteristics.get(CameraCharacteristics.CONTROL_ZOOM_RATIO_RANGE)
        val maxZoom = zoomRatioRange?.upper
            ?: characteristics.get(CameraCharacteristics.SCALER_AVAILABLE_MAX_DIGITAL_ZOOM)
            ?: 1f
        val minZoom = zoomRatioRange?.lower ?: 1f

        // 传感器方向
        val sensorOrientation = characteristics.get(CameraCharacteristics.SENSOR_ORIENTATION) ?: 0

        // 活动区域大小
        val activeArraySize = characteristics.get(CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE)

        // 硬件支持级别
        val hardwareLevel = characteristics.get(CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL) ?: -1

        return CameraInfo(
            cameraId = cameraId,
            logicalCameraId = logicalBinding?.logicalCameraId,
            outputPhysicalCameraId = null,
            physicalCameras = logicalBinding?.physicalCameras ?: emptyList(),
            lensFacing = lensFacing,
            lensType = LensType.BACK_MAIN, // 临时，后续分类
            physicalCameraIds = logicalBinding?.physicalCameraIds ?: characteristics.physicalCameraIds.toList(),
            isoRange = isoRange,
            exposureTimeRange = exposureTimeRange,
            exposureCompensationRange = exposureCompensationRange,
            exposureCompensationStep = exposureCompensationStep,
            maxZoom = maxZoom,
            minZoom = minZoom,
            sensorOrientation = sensorOrientation,
            activeArraySize = activeArraySize,
            focalLength = focalLength,
            focalLength35mmEquivalent = focalLength35mm,
            zoomSteps = listOf(1f),
            intrinsicZoomRatio = intrinsicZoomRatio,
            hardwareLevel = hardwareLevel,
            supportsManualProcessing = checkManualProcessingSupport(characteristics),
            supportsRaw = characteristics.get(CameraCharacteristics.REQUEST_AVAILABLE_CAPABILITIES)?.contains(
                CameraCharacteristics.REQUEST_AVAILABLE_CAPABILITIES_RAW
            ) == true,
            isCustomLensId = isCustomLensId,
            minimumFocusDistance = characteristics.get(CameraCharacteristics.LENS_INFO_MINIMUM_FOCUS_DISTANCE) ?: 0f
        )
    }

    /**
     * 检查是否支持手动处理模式
     * 要求设备支持 EDGE_MODE_OFF 和 NOISE_REDUCTION_MODE_OFF
     */
    private fun checkManualProcessingSupport(characteristics: CameraCharacteristics): Boolean {
        val edgeModes = characteristics.get(CameraCharacteristics.EDGE_AVAILABLE_EDGE_MODES) ?: intArrayOf()
        val nrModes =
            characteristics.get(CameraCharacteristics.NOISE_REDUCTION_AVAILABLE_NOISE_REDUCTION_MODES) ?: intArrayOf()

        val supportsEdgeOff = edgeModes.contains(CameraMetadata.EDGE_MODE_OFF)
        val supportsNrOff = nrModes.contains(CameraMetadata.NOISE_REDUCTION_MODE_OFF)

        return supportsEdgeOff && supportsNrOff
    }

    /**
     * 清除缓存
     */
    fun clearCache() {
        cachedCameraIds = null
        cachedCameraIdsWithDuplicateMain = null
        cachedRawCameraIdList = null
        cameraCharacteristicsCache.clear()
    }

    // 内部数据类
    private data class CameraXInfo(
        val cameraId: String,
        val intrinsicZoomRatio: Float,
        val minZoom: Float,
        val maxZoom: Float
    )

    private data class CameraInfoWithZoom(
        val info: CameraInfo,
        val intrinsicZoomRatio: Float,
        val isMacro: Boolean
    )

    private data class DiscoveredCameraCandidates(
        val backCameras: List<CameraInfoWithZoom>,
        val frontCamera: CameraInfo?
    )

    private data class LogicalCameraDiscoveryConfig(
        val autoDiscoveryEnabled: Boolean = false,
        val forcedBindings: List<LogicalCameraBindingRequest> = emptyList()
    )

    private data class LogicalCameraBindingRequest(
        val logicalCameraId: String,
        val physicalCameraId: String
    )

    private data class LogicalCameraBinding(
        val logicalCameraId: String,
        val physicalCameras: List<CameraPhysicalInfo>
    ) {
        val physicalCameraIds: List<String> = physicalCameras.map { it.cameraId }

        fun zoomSpan(): Float {
            val zoomRatios = physicalCameras.map { it.intrinsicZoomRatio }
            return (zoomRatios.maxOrNull() ?: 1f) - (zoomRatios.minOrNull() ?: 1f)
        }
    }
}
