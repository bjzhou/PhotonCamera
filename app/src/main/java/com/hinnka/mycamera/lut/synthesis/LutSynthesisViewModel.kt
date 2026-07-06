package com.hinnka.mycamera.lut.synthesis

import android.app.Application
import android.content.Context
import android.graphics.Bitmap
import android.graphics.Canvas
import android.graphics.Color
import android.graphics.ImageDecoder
import android.graphics.Paint
import android.net.Uri
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.lifecycle.AndroidViewModel
import androidx.lifecycle.viewModelScope
import com.hinnka.mycamera.R
import com.hinnka.mycamera.color.TransferCurve
import com.hinnka.mycamera.data.CustomImportManager
import com.hinnka.mycamera.gallery.GalleryManager
import com.hinnka.mycamera.lut.LutConfig
import com.hinnka.mycamera.lut.LutInfo
import com.hinnka.mycamera.lut.LutImageProcessor
import com.hinnka.mycamera.lut.LutManager
import com.hinnka.mycamera.model.ColorRecipeParams
import com.hinnka.mycamera.raw.ColorSpace
import com.hinnka.mycamera.utils.PLog
import kotlinx.coroutines.*
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import java.io.File
import java.io.FileOutputStream
import java.util.UUID

class LutSynthesisViewModel(application: Application) : AndroidViewModel(application) {
    private val billingManager = com.hinnka.mycamera.billing.BillingManagerImpl(application)
    val isPurchased = billingManager.isPurchased
    var showPaymentDialog by mutableStateOf(false)

    fun purchase(activity: android.app.Activity) {
        billingManager.purchase(activity)
    }

    private val importManager = CustomImportManager(application)
    private val lutManager = LutManager(application)
    private val imageProcessor = LutImageProcessor()

    // 状态流
    private val _layers = MutableStateFlow<List<LutSynthesisLayer>>(emptyList())
    val layers: StateFlow<List<LutSynthesisLayer>> = _layers.asStateFlow()

    private val _colorRecipe = MutableStateFlow<ColorRecipeParams>(ColorRecipeParams.DEFAULT)
    val colorRecipe: StateFlow<ColorRecipeParams> = _colorRecipe.asStateFlow()

    private val _availableLuts = MutableStateFlow<List<LutInfo>>(emptyList())
    val availableLuts: StateFlow<List<LutInfo>> = _availableLuts.asStateFlow()

    // 预览图相关
    private val _originalBitmap = MutableStateFlow<Bitmap?>(null)
    val originalBitmap: StateFlow<Bitmap?> = _originalBitmap.asStateFlow()

    private val _processedBitmap = MutableStateFlow<Bitmap?>(null)
    val processedBitmap: StateFlow<Bitmap?> = _processedBitmap.asStateFlow()

    private val _isLoading = MutableStateFlow(false)
    val isLoading: StateFlow<Boolean> = _isLoading.asStateFlow()

    private val _exportState = MutableStateFlow<ExportState>(ExportState.Idle)
    val exportState: StateFlow<ExportState> = _exportState.asStateFlow()

    private var renderJob: Job? = null

    init {
        // 初始化 LUT 列表
        viewModelScope.launch(Dispatchers.IO) {
            lutManager.initialize()
            _availableLuts.value = lutManager.getAvailableLuts().filter { !it.isDefault }
        }

        // 生成默认测试卡预览图
        _originalBitmap.value = createTestPatternBitmap()

        // 监听参数变化，防抖并异步渲染预览图
        viewModelScope.launch {
            combineState().collect { (layersList, recipe) ->
                triggerRender(layersList, recipe)
            }
        }
    }

    private fun combineState() = kotlinx.coroutines.flow.combine(layers, colorRecipe) { l, r -> Pair(l, r) }

    // 生成测试色卡
    private fun createTestPatternBitmap(): Bitmap {
        val context = getApplication<Application>()
        val source = ImageDecoder.createSource(context.resources, R.drawable.photo_preview)
        return ImageDecoder.decodeBitmap(source) { decoder, info, _ ->
            decoder.allocator = ImageDecoder.ALLOCATOR_SOFTWARE
        }
    }

    // 设置自定义预览图
    fun setPreviewUri(uri: Uri) {
        viewModelScope.launch(Dispatchers.IO) {
            _isLoading.value = true
            try {
                val resolver = getApplication<Application>().contentResolver
                val source = ImageDecoder.createSource(resolver, uri)
                val fullBitmap = ImageDecoder.decodeBitmap(source) { decoder, _, _ ->
                    decoder.setAllocator(ImageDecoder.ALLOCATOR_SOFTWARE)
                }

                val maxSide = 1080
                val scale = Math.min(1.0f, maxSide.toFloat() / Math.max(fullBitmap.width, fullBitmap.height))
                val targetW = (fullBitmap.width * scale).toInt()
                val targetH = (fullBitmap.height * scale).toInt()

                val scaledBitmap = Bitmap.createScaledBitmap(fullBitmap, targetW, targetH, true)
                _originalBitmap.value = scaledBitmap
                triggerRender(layers.value, colorRecipe.value)
            } catch (e: Exception) {
                PLog.e("LutSynthesisViewModel", "Failed to load preview image", e)
            } finally {
                _isLoading.value = false
            }
        }
    }

    fun useDefaultPreview() {
        _originalBitmap.value = createTestPatternBitmap()
        triggerRender(layers.value, colorRecipe.value)
    }

    // 增删改 LUT 图层
    fun addLayer(lut: LutInfo, weight: Float = 1.0f) {
        val current = _layers.value.toMutableList()
        current.add(LutSynthesisLayer(lut = lut, weight = weight))
        _layers.value = current
    }

    fun removeLayer(index: Int) {
        val current = _layers.value.toMutableList()
        if (index in current.indices) {
            current.removeAt(index)
            _layers.value = current
        }
    }

    fun updateLayerWeight(index: Int, weight: Float) {
        val current = _layers.value.toMutableList()
        if (index in current.indices) {
            current[index] = current[index].copy(weight = weight)
            _layers.value = current
        }
    }

    fun updateLayerMask(index: Int, mask: LutSynthesisMask) {
        val current = _layers.value.toMutableList()
        if (index in current.indices) {
            current[index] = current[index].copy(mask = mask)
            _layers.value = current
        }
    }

    fun moveLayer(fromIndex: Int, toIndex: Int) {
        val current = _layers.value.toMutableList()
        if (fromIndex in current.indices && toIndex in current.indices) {
            val item = current.removeAt(fromIndex)
            current.add(toIndex, item)
            _layers.value = current
        }
    }

    // 更新配方参数
    fun updateColorRecipe(recipe: ColorRecipeParams) {
        _colorRecipe.value = recipe
    }

    // 触发异步防抖预览渲染
    private fun triggerRender(layersList: List<LutSynthesisLayer>, recipe: ColorRecipeParams) {
        val original = _originalBitmap.value ?: return
        renderJob?.cancel()
        renderJob = viewModelScope.launch(Dispatchers.Default) {
            delay(50)
            _isLoading.value = true
            try {
                var currentBitmap = original.copy(Bitmap.Config.ARGB_8888, true)

                // 1. 逐层应用 LUT
                for (layer in layersList) {
                    ensureActive()
                    val lutConfig = lutManager.loadLut(layer.lut.id) ?: continue
                    val layerParams = ColorRecipeParams(lutIntensity = layer.weight)
                    currentBitmap = imageProcessor.applyLut(
                        bitmap = currentBitmap,
                        lutConfig = lutConfig,
                        colorRecipeParams = layerParams,
                        lutMaskType = layer.mask.shaderId
                    )
                }

                // 2. 应用调色参数（仅应用可烘焙色彩参数，与烘焙结果对齐）
                ensureActive()
                val bakeableRecipe = recipe.copy(
                    filmGrain = 0f,
                    vignette = 0f,
                    bloom = 0f,
                    halation = 0f,
                    redHalation = 0f,
                    chromaticAberration = 0f,
                    noise = 0f,
                    lowRes = 0f
                )
                currentBitmap = imageProcessor.applyLut(
                    bitmap = currentBitmap,
                    lutConfig = null,
                    colorRecipeParams = bakeableRecipe
                )

                ensureActive()
                _processedBitmap.value = currentBitmap
            } catch (e: CancellationException) {
                // 被正常取消
            } catch (e: Exception) {
                PLog.e("LutSynthesisViewModel", "Render preview failed", e)
            } finally {
                _isLoading.value = false
            }
        }
    }

    // 创建 CLUT 的 Identity 像素 (1089x33)
    private fun createIdentityClutBitmap(): Bitmap {
        val width = 1089
        val height = 33
        val bitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888)
        val pixels = IntArray(width * height)
        for (b in 0 until 33) {
            for (g in 0 until 33) {
                for (r in 0 until 33) {
                    val x = b * 33 + r
                    val y = g
                    val red = (r / 32f * 255f).toInt().coerceIn(0, 255)
                    val green = (g / 32f * 255f).toInt().coerceIn(0, 255)
                    val blue = (b / 32f * 255f).toInt().coerceIn(0, 255)
                    pixels[y * width + x] = (0xFF shl 24) or (red shl 16) or (green shl 8) or blue
                }
            }
        }
        bitmap.setPixels(pixels, 0, width, 0, 0, width, height)
        return bitmap
    }

    // 核心导出逻辑
    fun exportSynthesizedLut(name: String, category: String) {
        viewModelScope.launch(Dispatchers.IO) {
            _exportState.value = ExportState.Saving

            try {
                var clutBitmap = createIdentityClutBitmap()

                // 1. 逐层应用选择的 LUT
                val layersList = _layers.value
                for (layer in layersList) {
                    val lutConfig = lutManager.loadLut(layer.lut.id) ?: continue
                    val layerParams = ColorRecipeParams(lutIntensity = layer.weight)
                    clutBitmap = imageProcessor.applyLut(
                        bitmap = clutBitmap,
                        lutConfig = lutConfig,
                        colorRecipeParams = layerParams,
                        lutMaskType = layer.mask.shaderId
                    )
                }

                // 2. 应用去除空间类后的调色烘焙配方
                val recipe = _colorRecipe.value
                val bakeableRecipe = recipe.copy(
                    filmGrain = 0f,
                    vignette = 0f,
                    bloom = 0f,
                    halation = 0f,
                    redHalation = 0f,
                    chromaticAberration = 0f,
                    noise = 0f,
                    lowRes = 0f
                )
                clutBitmap = imageProcessor.applyLut(
                    bitmap = clutBitmap,
                    lutConfig = null,
                    colorRecipeParams = bakeableRecipe
                )

                // 3. 保存 clutBitmap 为临时 PNG
                val tempFile = File(getApplication<Application>().cacheDir, "synthesis_${UUID.randomUUID()}.png")
                FileOutputStream(tempFile).use { out ->
                    clutBitmap.compress(Bitmap.CompressFormat.PNG, 100, out)
                }

                // 4. 导入到 CustomImportManager
                val importId = importManager.importLut(
                    uri = Uri.fromFile(tempFile),
                    displayName = name,
                    category = category,
                    colorSpace = ColorSpace.SRGB,
                    curve = TransferCurve.SRGB
                )

                // 5. 清理临时文件
                if (tempFile.exists()) {
                    tempFile.delete()
                }

                if (importId != null) {
                    lutManager.initialize() // 刷新 LUT 列表
                    _exportState.value = ExportState.Success(importId)
                } else {
                    _exportState.value = ExportState.Error("Import returned null ID")
                }
            } catch (e: Exception) {
                PLog.e("LutSynthesisViewModel", "Export synthesized LUT failed", e)
                _exportState.value = ExportState.Error(e.message ?: "Unknown Export Error")
            }
        }
    }

    fun resetExportState() {
        _exportState.value = ExportState.Idle
    }

    override fun onCleared() {
        super.onCleared()
        renderJob?.cancel()
        imageProcessor.release()
    }
}

data class LutSynthesisLayer(
    val lut: LutInfo,
    val weight: Float = 1f,
    val mask: LutSynthesisMask = LutSynthesisMask.ALL
)

enum class LutSynthesisMask(val shaderId: Int) {
    ALL(0),
    SKIN(1),
    SKY(2)
}

sealed class ExportState {
    object Idle : ExportState()
    object Saving : ExportState()
    data class Success(val lutId: String) : ExportState()
    data class Error(val message: String) : ExportState()
}
