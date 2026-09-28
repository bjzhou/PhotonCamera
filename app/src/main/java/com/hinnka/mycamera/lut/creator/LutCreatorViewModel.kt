package com.hinnka.mycamera.lut.creator

import android.app.Application
import android.graphics.Bitmap
import android.graphics.ImageDecoder
import android.net.Uri
import androidx.annotation.StringRes
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.lifecycle.AndroidViewModel
import androidx.lifecycle.viewModelScope
import com.hinnka.mycamera.R
import com.hinnka.mycamera.data.ContentRepository
import com.hinnka.mycamera.data.CustomImportManager
import com.hinnka.mycamera.lut.LutConfig
import com.hinnka.mycamera.lut.LutConverter
import com.hinnka.mycamera.lut.LutManager
import com.hinnka.mycamera.utils.PLog
import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.Job
import kotlinx.coroutines.ensureActive
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.SharingStarted
import kotlinx.coroutines.flow.map
import kotlinx.coroutines.flow.stateIn
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import java.io.File
import java.nio.ByteBuffer
import java.nio.ByteOrder
import kotlin.math.roundToInt

class LutCreatorViewModel(application: Application) : AndroidViewModel(application) {
    private val contentRepository = ContentRepository.getInstance(application)
    private val userPreferencesRepository = contentRepository.userPreferencesRepository
    private val billingManager = com.hinnka.mycamera.billing.BillingManagerImpl(application)
    private val importManager = CustomImportManager(application)
    private val lutManager = LutManager(application)
    private val estimator = StyleLutEstimator(application)
    private var operation: Job? = null

    private val _uiState = MutableStateFlow<LutCreatorUiState>(LutCreatorUiState.Idle)
    val uiState: StateFlow<LutCreatorUiState> = _uiState
    val isPurchased = billingManager.isPurchased
    val openAIApiKey = userPreferencesRepository.userPreferences.map { it.openAIApiKey }
        .stateIn(viewModelScope, SharingStarted.Eagerly, "")
    var showPaymentDialog by mutableStateOf(false)

    fun purchase(activity: android.app.Activity) {
        billingManager.purchase(activity)
    }

    fun analyzeAiImage(uri: Uri) {
        analyze { estimator.estimate(uri) }
    }

    fun analyzeLocalImagePairs(pairs: List<LocalImagePairInput>) {
        val selectedPairs = pairs.toList()
        analyze {
            require(selectedPairs.isNotEmpty()) { "No image pairs selected" }
            val decoded = mutableListOf<Bitmap>()
            try {
                val bitmaps = selectedPairs.map { pair ->
                    val source = loadBitmapFromUri(pair.sourceUri).also(decoded::add)
                    val target = loadBitmapFromUri(pair.targetUri).also(decoded::add)
                    source to target
                }
                val recipe = LocalImageAnalyzer.analyzeSourceTargetImagePairs(bitmaps)
                LutGenerator.generateLut(recipe, StyleLutEstimator.LUT_SIZE)
            } finally {
                decoded.forEach(Bitmap::recycle)
            }
        }
    }

    private fun analyze(block: suspend () -> FloatArray) {
        if (operation?.isActive == true) return
        _uiState.value = LutCreatorUiState.Analyzing
        operation = viewModelScope.launch {
            try {
                val lutData = withContext(Dispatchers.IO) { block() }
                ensureActive()
                _uiState.value = LutCreatorUiState.AnalysisComplete(lutData)
            } catch (e: CancellationException) {
                throw e
            } catch (e: Exception) {
                ensureActive()
                PLog.e("LutCreatorViewModel", "LUT analysis failed", e)
                _uiState.value = LutCreatorUiState.Error(R.string.lut_creator_analysis_failed)
            }
        }
    }

    private fun loadBitmapFromUri(uri: Uri): Bitmap {
        val source = ImageDecoder.createSource(getApplication<Application>().contentResolver, uri)
        return ImageDecoder.decodeBitmap(source) { decoder, _, _ ->
            decoder.allocator = ImageDecoder.ALLOCATOR_SOFTWARE
        }
    }

    fun generateAndImportLut(name: String) {
        val result = _uiState.value as? LutCreatorUiState.AnalysisComplete ?: return
        if (operation?.isActive == true || name.isBlank()) return
        _uiState.value = LutCreatorUiState.Generating
        operation = viewModelScope.launch {
            try {
                val lutId = withContext(Dispatchers.IO) {
                    val lutData = result.lutData
                    val size = StyleLutEstimator.LUT_SIZE
                    require(lutData.size == size * size * size * 3)
                    val buffer = ByteBuffer.allocateDirect(lutData.size * 2)
                        .order(ByteOrder.LITTLE_ENDIAN)
                    lutData.forEach { value ->
                        require(value.isFinite() && value in 0f..1f) { "Invalid LUT output: $value" }
                        buffer.putShort((value * 65535f).roundToInt().toShort())
                    }
                    buffer.rewind()
                    val config = LutConfig(
                        size = size,
                        byteBuffer = buffer,
                        title = name.trim(),
                        configDataType = LutConfig.CONFIG_DATA_TYPE_UINT16
                    )
                    val tempFile = File.createTempFile("generated_lut_", ".plut", getApplication<Application>().cacheDir)
                    try {
                        tempFile.outputStream().use { LutConverter.exportToPlut(config, it) }
                        ensureActive()
                        val id = checkNotNull(importManager.importLut(Uri.fromFile(tempFile), name.trim(), "AI LUT")) {
                            "Failed to import generated LUT"
                        }
                        lutManager.initialize()
                        id
                    } finally {
                        tempFile.delete()
                    }
                }
                ensureActive()
                _uiState.value = LutCreatorUiState.Success(lutId)
            } catch (e: CancellationException) {
                throw e
            } catch (e: Exception) {
                ensureActive()
                PLog.e("LutCreatorViewModel", "LUT save failed", e)
                _uiState.value = LutCreatorUiState.Error(R.string.lut_creator_save_failed)
            }
        }
    }

    fun resetToIdle() {
        operation?.cancel()
        operation = null
        _uiState.value = LutCreatorUiState.Idle
    }
}

data class LocalImagePairInput(
    val sourceUri: Uri,
    val targetUri: Uri
)

sealed class LutCreatorUiState {
    object Idle : LutCreatorUiState()
    object Analyzing : LutCreatorUiState()
    data class AnalysisComplete(val lutData: FloatArray) : LutCreatorUiState()
    object Generating : LutCreatorUiState()
    data class Success(val lutId: String) : LutCreatorUiState()
    data class Error(@param:StringRes val messageResId: Int) : LutCreatorUiState()
}
