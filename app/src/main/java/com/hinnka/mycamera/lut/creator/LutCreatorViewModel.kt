package com.hinnka.mycamera.lut.creator

import android.app.Application
import android.net.Uri
import androidx.lifecycle.AndroidViewModel
import androidx.lifecycle.viewModelScope
import com.hinnka.mycamera.data.CustomImportManager
import com.hinnka.mycamera.lut.LutManager
import com.hinnka.mycamera.utils.PLog
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.firstOrNull
import kotlinx.coroutines.launch
import java.io.File

class LutCreatorViewModel(application: Application) : AndroidViewModel(application) {

    private val importManager = CustomImportManager(application)
    private val lutManager = LutManager(application)
    private val userPrefsRepo =
        com.hinnka.mycamera.data.ContentRepository.getInstance(application).userPreferencesRepository

    private val _uiState = MutableStateFlow<LutCreatorUiState>(LutCreatorUiState.Idle)
    val uiState: StateFlow<LutCreatorUiState> = _uiState

    val aiAnalysisEnabled: MutableStateFlow<Boolean> = MutableStateFlow(false)

    fun analyzeAiImage(uri: Uri, customPrompt: String = "") {
        viewModelScope.launch(Dispatchers.IO) {
            _uiState.value = LutCreatorUiState.Analyzing

            try {
                val bitmap = loadBitmapFromUri(uri)
                if (bitmap == null) {
                    _uiState.value = LutCreatorUiState.Error("Failed to decode image(s)")
                    return@launch
                }

                val userPrefs = userPrefsRepo.userPreferences.firstOrNull()
                val isBuiltIn = userPrefs?.useBuiltInAiService ?: false
                val apiKey = if (isBuiltIn) OpenAIApiClient.BUILT_IN_API_KEY else userPrefs?.openAIApiKey ?: ""
                val baseUrl = if (isBuiltIn) OpenAIApiClient.BUILT_IN_API_URL else userPrefs?.openAIBaseUrl ?: ""

                if (apiKey.isEmpty()) {
                    _uiState.value = LutCreatorUiState.Error("OpenAI API Key is not set in settings")
                    return@launch
                }

                val client = OpenAIApiClient(apiKey, baseUrl)

                PLog.d(
                    "LutCreatorViewModel",
                    "Calling Gemini 3.1 for direct image-to-image restoration..."
                )

                val sourceBitmap = client.generateOriginalImage(
                    bitmap = bitmap,
                    isBuiltIn,
                    model = OpenAIApiClient.BUILT_IN_IMAGE_MODEL,
                    customPrompt = customPrompt
                ).getOrThrow()

                PLog.d("LutCreatorViewModel", "AI generated original image, analyzing pair locally...")
                val recipe = LocalImageAnalyzer.analyzeSourceTargetImages(sourceBitmap, bitmap)

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
        return try {
            val source = android.graphics.ImageDecoder.createSource(getApplication<Application>().contentResolver, uri)
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
            PLog.e("LutCreatorViewModel", "Failed to load bitmap from URI: $uri", e)
            null
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
