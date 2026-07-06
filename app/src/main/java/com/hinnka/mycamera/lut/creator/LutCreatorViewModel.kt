package com.hinnka.mycamera.lut.creator

import android.app.Application
import android.graphics.BitmapFactory
import android.net.Uri
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.lifecycle.AndroidViewModel
import androidx.lifecycle.viewModelScope
import com.hinnka.mycamera.data.CustomImportManager
import com.hinnka.mycamera.data.ContentRepository
import com.hinnka.mycamera.lut.LutManager
import com.hinnka.mycamera.utils.PLog
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.SharingStarted
import kotlinx.coroutines.flow.map
import kotlinx.coroutines.flow.stateIn
import kotlinx.coroutines.launch
import java.io.File

class LutCreatorViewModel(application: Application) : AndroidViewModel(application) {

    private val contentRepository = ContentRepository.getInstance(application)
    private val userPreferencesRepository = contentRepository.userPreferencesRepository
    private val billingManager = com.hinnka.mycamera.billing.BillingManagerImpl(application)
    private val importManager = CustomImportManager(application)
    private val lutManager = LutManager(application)

    private val _uiState = MutableStateFlow<LutCreatorUiState>(LutCreatorUiState.Idle)
    val uiState: StateFlow<LutCreatorUiState> = _uiState

    val aiAnalysisEnabled: MutableStateFlow<Boolean> = MutableStateFlow(false)
    val isPurchased = billingManager.isPurchased
    val openAIApiKey = userPreferencesRepository.userPreferences.map { it.openAIApiKey }
        .stateIn(viewModelScope, SharingStarted.Eagerly, "")
    var showPaymentDialog by mutableStateOf(false)

    fun purchase(activity: android.app.Activity) {
        billingManager.purchase(activity)
    }

    fun analyzeAiImage(uri: Uri, customPrompt: String = "") {
        viewModelScope.launch(Dispatchers.IO) {
            _uiState.value = LutCreatorUiState.Analyzing

            try {
                val bitmap = loadBitmapFromUri(uri)
                if (bitmap == null) {
                    _uiState.value = LutCreatorUiState.Error("Failed to decode image(s)")
                    return@launch
                }

                val context = getApplication<Application>()
                val client = OpenAIApiClient()
                client.initialize(context)
                val preparedBitmap = AiImagePreprocessor.prepareForImageToImage(bitmap)

                PLog.d(
                    "LutCreatorViewModel",
                    "Calling AI text recipe generation for single-image LUT creation..."
                )

                val recipe = client.generateLutRecipeFromImage(
                    bitmap = preparedBitmap,
                    customPrompt = customPrompt
                ).getOrThrow()

                PLog.d("LutCreatorViewModel", "AI text recipe: $recipe")

                _uiState.value = LutCreatorUiState.AnalysisComplete(recipe)
            } catch (e: Exception) {
                _uiState.value = LutCreatorUiState.Error("Analysis failed: ${e.message}")
            }
        }
    }

    fun analyzeAiImageWithImageEdit(uri: Uri, customPrompt: String = "") {
        viewModelScope.launch(Dispatchers.IO) {
            _uiState.value = LutCreatorUiState.Analyzing

            try {
                val bitmap = loadBitmapFromUri(uri)
                if (bitmap == null) {
                    _uiState.value = LutCreatorUiState.Error("Failed to decode image(s)")
                    return@launch
                }

                val context = getApplication<Application>()
                val client = OpenAIApiClient()
                client.initialize(context)

                PLog.d(
                    "LutCreatorViewModel",
                    "Calling Gemini 3.1 for direct image-to-image restoration..."
                )

                val preparedBitmap = AiImagePreprocessor.prepareForImageToImage(bitmap)
                val sourceBitmap = client.generateOriginalImage(
                    bitmap = preparedBitmap,
                    model = OpenAIApiClient.BUILT_IN_IMAGE_MODEL,
                    customPrompt = customPrompt
                ).getOrThrow()

                PLog.d("LutCreatorViewModel", "AI generated original image, analyzing pair locally...")
                val recipe = LocalImageAnalyzer.analyzeSourceTargetImages(sourceBitmap, preparedBitmap)

                PLog.d("LutCreatorViewModel", "Recipe: $recipe")

                _uiState.value = LutCreatorUiState.AnalysisComplete(recipe, sourceBitmap)
            } catch (e: Exception) {
                _uiState.value = LutCreatorUiState.Error("Analysis failed: ${e.message}")
            }
        }
    }

    fun analyzeLocalImagePairs(pairs: List<LocalImagePairInput>) {
        viewModelScope.launch(Dispatchers.IO) {
            _uiState.value = LutCreatorUiState.Analyzing

            try {
                if (pairs.isEmpty()) {
                    _uiState.value = LutCreatorUiState.Error("No image pairs selected")
                    return@launch
                }

                val bitmaps = pairs.mapIndexed { index, pair ->
                    val sourceBitmap = loadBitmapFromUri(pair.sourceUri)
                    val targetBitmap = loadBitmapFromUri(pair.targetUri)

                    if (sourceBitmap == null || targetBitmap == null) {
                        _uiState.value = LutCreatorUiState.Error("Failed to decode image pair ${index + 1}")
                        return@launch
                    }
                    sourceBitmap to targetBitmap
                }

                val recipe = LocalImageAnalyzer.analyzeSourceTargetImagePairs(bitmaps)
                PLog.d("LutCreatorViewModel", "Local multi-pair recipe: $recipe")
                _uiState.value = LutCreatorUiState.AnalysisComplete(recipe)
            } catch (e: Exception) {
                _uiState.value = LutCreatorUiState.Error("Analysis failed: ${e.message}")
            }
        }
    }

    private fun loadBitmapFromUri(uri: Uri): android.graphics.Bitmap? {
        val context = getApplication<Application>()
        return try {
            val source = android.graphics.ImageDecoder.createSource(context.contentResolver, uri)
            val bitmap = android.graphics.ImageDecoder.decodeBitmap(source) { decoder, _, _ ->
                decoder.setAllocator(android.graphics.ImageDecoder.ALLOCATOR_SOFTWARE) // Needs mutable maybe later, software allows fast reading
            }
            val totalPixels = bitmap.width * bitmap.height
            if (totalPixels == 0) {
                PLog.w("LutCreatorViewModel", "Loaded bitmap has 0 total pixels for URI: $uri")
                return null
            }
            bitmap
        } catch (e: Exception) {
            PLog.e("LutCreatorViewModel", "decode failed, fallback to BitmapFactory: $uri", e)
            try {
                context.contentResolver.openInputStream(uri).use {
                    BitmapFactory.decodeStream(it)
                }
            } catch (e: Exception) {
                PLog.e("LutCreatorViewModel", "decode failed again: $uri", e)
                null
            }
        }
    }

    fun generateAndImportLut(name: String, recipe: LutRecipe) {
        viewModelScope.launch(Dispatchers.IO) {
            _uiState.value = LutCreatorUiState.Generating

            try {
                // 1. Generate FloatArray 33x33x33x3
                val lutData = LutGenerator.generateLut(recipe)
                // 2. Export to .cube format
                val cubeContent = LutGenerator.exportToCubeString(lutData, 33, name)

                // 3. Write to temp file and use CustomImportManager
                val tempFile = File(getApplication<Application>().cacheDir, "temp_gen.cube")
                tempFile.writeText(cubeContent)

                val uri = Uri.fromFile(tempFile)
                val lutId = importManager.importLut(uri, name, "AI LUT")

                if (lutId != null) {
                    // Initialize to ensure memory cache and disk are synced
                    lutManager.initialize()
                    _uiState.value = LutCreatorUiState.Success(lutId)
                } else {
                    _uiState.value = LutCreatorUiState.Error("Import failed")
                }
            } catch (e: Exception) {
                _uiState.value = LutCreatorUiState.Error(e.message ?: "Unknown error")
            }
        }
    }

    fun resetToIdle() {
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
    data class AnalysisComplete(
        val recipe: LutRecipe,
        val generatedSourceBitmap: android.graphics.Bitmap? = null
    ) : LutCreatorUiState()
    object Generating : LutCreatorUiState()
    data class Success(val lutId: String) : LutCreatorUiState()
    data class Error(val message: String) : LutCreatorUiState()
}
