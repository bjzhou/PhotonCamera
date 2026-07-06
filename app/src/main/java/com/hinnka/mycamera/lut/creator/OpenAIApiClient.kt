package com.hinnka.mycamera.lut.creator

import android.content.Context
import android.graphics.Bitmap
import android.util.Base64
import androidx.annotation.Keep
import com.hinnka.mycamera.BuildConfig
import com.hinnka.mycamera.utils.PLog
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import okhttp3.MediaType.Companion.toMediaType
import okhttp3.MultipartBody
import okhttp3.OkHttpClient
import okhttp3.Request
import okhttp3.RequestBody
import okhttp3.RequestBody.Companion.toRequestBody
import org.json.JSONArray
import org.json.JSONObject
import java.io.ByteArrayOutputStream
import java.util.concurrent.TimeUnit
import androidx.core.graphics.scale
import com.hinnka.mycamera.data.ContentRepository
import com.hinnka.mycamera.utils.DeviceUtil
import kotlinx.coroutines.flow.firstOrNull
import kotlin.math.roundToInt

class OpenAIApiClient() {

    private lateinit var apiBaseUrl: String
    private lateinit var apiKey: String
    private lateinit var model: String

    suspend fun initialize(context: Context) {
        val userPrefs = ContentRepository.getInstance(context).userPreferencesRepository.userPreferences.firstOrNull()
        val isBuiltIn = userPrefs?.openAIApiKey.isNullOrBlank()
        apiKey = if (isBuiltIn) {
            BUILT_IN_API_KEY
        } else {
            userPrefs.openAIApiKey
        }
        apiBaseUrl = if (isBuiltIn) {
            BUILT_IN_API_URL
        } else {
            userPrefs.openAIBaseUrl?.ifBlank { DEFAULT_API_URL } ?: DEFAULT_API_URL
        }.trimEnd('/')
        model = if (isBuiltIn) {
            BUILT_IN_MODEL
        } else {
            userPrefs.openAIModel?.ifBlank { DEFAULT_MODEL } ?: DEFAULT_MODEL
        }
    }

    companion object {
        val DEFAULT_API_URL = "https://api.openai.com/v1"
        val DEFAULT_MODEL = "gpt-5.5"
        val BUILT_IN_API_URL = BuildConfig.BUILT_IN_API_URL
//        const val OPENAI_API_URL = "https://api.openai.com/v1"
        val BUILT_IN_API_KEY = BuildConfig.BUILT_IN_API_KEY
        const val BUILT_IN_IMAGE_MODEL = "gemini-3.5-flash"
        const val BUILT_IN_MODEL = "gemini-3.5-flash"
    }

    private val client = OkHttpClient.Builder()
        .connectTimeout(30, TimeUnit.SECONDS)
        .readTimeout(60, TimeUnit.SECONDS)
        .writeTimeout(60, TimeUnit.SECONDS)
        .build()

    suspend fun getAvailableModels(): Result<List<String>> = withContext(Dispatchers.IO) {
        try {
            val request = Request.Builder()
                .url("$apiBaseUrl/models")
                .addOpenAIHeaders()
                .get()
                .build()

            val response = client.newCall(request).execute()

            if (!response.isSuccessful) {
                return@withContext Result.failure(Exception("API request failed: ${response.code} ${response.body?.string()}"))
            }

            val bodyString = response.body?.string() ?: ""
            val jsonObject = JSONObject(bodyString)
            val dataArray = jsonObject.getJSONArray("data")

            val models = mutableListOf<String>()
            for (i in 0 until dataArray.length()) {
                val modelObj = dataArray.getJSONObject(i)
                val id = modelObj.optString("id")
                if (id.isNotEmpty()) {
                    models.add(id)
                }
            }

            Result.success(models)
        } catch (e: Exception) {
            e.printStackTrace()
            Result.failure(e)
        }
    }

    suspend fun generateOriginalImage(
        bitmap: Bitmap,
        model: String,
        customPrompt: String = ""
    ): Result<Bitmap> =
        withContext(Dispatchers.IO) {
            try {
                val prompt =
                    "Restore this image to its original natural version. Remove all cinematic filters, LUTs, and color grading. Return a high-quality, realistic photo with natural colors and neutral white balance. $customPrompt"
                val requestBody = MultipartBody.Builder()
                    .setType(MultipartBody.FORM)
                    .addFormDataPart("model", model)
                    .addFormDataPart("prompt", prompt)
                    .addFormDataPart(
                        "image",
                        "input.jpg",
                        bitmapToJpegRequestBody(bitmap)
                    )
                    .build()

                val request = Request.Builder()
                    .url("$apiBaseUrl/images/edits")
                    .addOpenAIHeaders()
                    .post(requestBody)
                    .build()

                val response = client.newCall(request).execute()
                PLog.d("OpenAIApiClient", "Response: ${response.code}")
                if (!response.isSuccessful) {
                    val errorBody = response.body?.string() ?: "Unknown error"
                    return@withContext Result.failure(Exception("API failed: ${response.code}\n$errorBody"))
                }

                val responseBodyString = response.body?.string() ?: ""
                val jsonResponse = JSONObject(responseBodyString)
                val b64Data = extractImageBase64FromResponse(jsonResponse)

                if (b64Data == null) {
                    return@withContext Result.failure(Exception("No image data found in AI response. Response: $responseBodyString"))
                }

                val imageBytes = Base64.decode(b64Data, Base64.DEFAULT)
                val decodedBitmap =
                    android.graphics.BitmapFactory.decodeByteArray(imageBytes, 0, imageBytes.size)

                Result.success(decodedBitmap ?: throw Exception("Failed to decode generated image"))
            } catch (e: Exception) {
                Result.failure(e)
            }
        }

    suspend fun generateLutRecipeFromImage(
        bitmap: Bitmap,
        customPrompt: String = ""
    ): Result<LutRecipe> =
        withContext(Dispatchers.IO) {
            try {
                val base64Image = bitmapToBase64(bitmap)
                val prompt = """
You are a professional color scientist for camera LUT creation.
The user uploads one already-styled target image. The current API cannot edit images, so do not generate or request a restored image.
Instead, infer a practical color grading recipe as text only.

Task:
- Inspect the uploaded styled image.
- Infer plausible unstyled source colors that would map into this styled look.
- Return control points for a 3D LUT. Each point maps source RGB to target RGB.
- Use normalized sRGB float values in [0.0, 1.0].
- Keep the mapping photographic, monotonic, and usable. Avoid inversions, posterization, clipping, and extreme hue rotations.
- Include neutrals, shadows, midtones, highlights, skin/foliage/sky-like anchors when relevant.
- Return 12 to 18 high-confidence control points.

User custom instructions:
${customPrompt.ifBlank { "None" }}

Return JSON only, without markdown, using this exact schema:
{
  "controlPoints": [
    {
      "sourceR": 0.0,
      "sourceG": 0.0,
      "sourceB": 0.0,
      "targetR": 0.0,
      "targetG": 0.0,
      "targetB": 0.0,
      "matchConfidence": 0.0
    }
  ]
}
                """.trimIndent()

                val jsonObject = JSONObject().apply {
                    put("model", model)
                    put("messages", JSONArray().apply {
                        put(JSONObject().apply {
                            put("role", "user")
                            put("content", JSONArray().apply {
                                put(JSONObject().apply {
                                    put("type", "text")
                                    put("text", prompt)
                                })
                                put(JSONObject().apply {
                                    put("type", "image_url")
                                    put("image_url", JSONObject().apply {
                                        put("url", "data:image/jpeg;base64,$base64Image")
                                    })
                                })
                            })
                        })
                    })
                    put("response_format", JSONObject().apply {
                        put("type", "json_object")
                    })
                }

                val requestBody =
                    jsonObject.toString().toRequestBody("application/json".toMediaType())

                val request = Request.Builder()
                    .url("$apiBaseUrl/chat/completions")
                    .addOpenAIHeaders()
                    .post(requestBody)
                    .build()

                val response = client.newCall(request).execute()
                PLog.d("OpenAIApiClient", "LUT recipe response: ${response.code}")
                if (!response.isSuccessful) {
                    val errorBody = response.body?.string() ?: "Unknown error"
                    return@withContext Result.failure(Exception("API failed: ${response.code}\n${request.url}\n$errorBody"))
                }

                val responseBodyString = response.body?.string() ?: ""
                val text = extractTextFromResponse(responseBodyString)
                Result.success(parseLutRecipe(text))
            } catch (e: Exception) {
                Result.failure(e)
            }
        }

    suspend fun evaluateImageQuality(
        bitmap: Bitmap,
        localeTag: String
    ): Result<AiPhotoEvaluation> =
        withContext(Dispatchers.IO) {
            try {
                val base64Image = bitmapToBase64(bitmap)
                val prompt = """
你是挑剔且专业的顶级摄影评论家。请采用 PPA 12 Elements of a Merit Image 作为底层评审体系，对照片进行犀利且具有建设性的评分。拒绝任何客套、虚伪的赞美或泛泛而谈。

请默认这是一张 60 分的平庸照片，你需要寻找理由为其加分或大幅扣分。

请分别为 PPA 12 项评分，每项 0-100 分，各项评分各自独立无相关性，无需输出总分。
- Impact： 照片给人的第一印象。一张好照片在被看到的瞬间，就应该能唤起观众的情感共鸣（震撼、感动、好奇、甚至是不安）。
- Technical Excellence： 摄影的基础。包括曝光是否准确、焦点是否清晰（且在正确的位置）、白平衡、色彩管理以及后期的质量。
- Creativity： 摄影师是否用新鲜、独特的视角来展现普通的事物。
- Style： 作品是否体现了特定流派的特征，或者摄影师本人的强烈个人印记。
- Composition： 画面元素的排列是否将观众的视线引向主体，并保持视觉平衡。
- Presentation： 包括照片的裁切、边框、输出材质（如果是实体展出）是否与影像风格统一。
- Color Balance： 画面中的色彩是否协调。不仅指白平衡准确，还包括色彩的情感表达和色彩对比（冷暖、互补等）。
- Center of Interest： 画面必须有一个明确的聚焦点，不能让观众的视线在画面中漫无目的地游荡。
- Lighting： 光线的使用不仅是为了照亮主体，更要塑造形态、质感、维度和氛围。
- Subject Matter： 拍摄对象本身是否具有吸引力，或者是否与整体表达相契合。
- Technique： 摄影师在前期拍摄和后期处理中使用的手法，是否巧妙地服务于最终的视觉效果。
- Storytelling： 影像的最高境界。照片能否在没有文字说明的情况下，激发观众的想象力并传达一个完整的信息或情绪。

The user's current system language is "$localeTag". The "summary" value MUST be written in that language.
Return JSON only, without markdown formatting, code blocks, or any conversational text, using this exact schema:
{
  "impactScore": 0-100 integer,
  "technicalExcellenceScore": 0-100 integer,
  "creativityScore": 0-100 integer,
  "styleScore": 0-100 integer,
  "compositionScore": 0-100 integer,
  "presentationScore": 0-100 integer,
  "colorBalanceScore": 0-100 integer,
  "centerOfInterestScore": 0-100 integer,
  "lightingScore": 0-100 integer,
  "subjectMatterScore": 0-100 integer,
  "techniqueScore": 0-100 integer,
  "storytellingScore": 0-100 integer,
  "summary": "对照片做一句话总结性评论，有内容有具体指导意见，使用用户系统语言"
}
                """.trimIndent()

                val jsonObject = JSONObject().apply {
                    put("model", model)
                    put("messages", JSONArray().apply {
                        put(JSONObject().apply {
                            put("role", "user")
                            put("content", JSONArray().apply {
                                put(JSONObject().apply {
                                    put("type", "text")
                                    put("text", prompt)
                                })
                                put(JSONObject().apply {
                                    put("type", "image_url")
                                    put("image_url", JSONObject().apply {
                                        put("url", "data:image/jpeg;base64,$base64Image")
                                    })
                                })
                            })
                        })
                    })
                    put("response_format", JSONObject().apply {
                        put("type", "json_object")
                    })
                }

                val requestBody =
                    jsonObject.toString().toRequestBody("application/json".toMediaType())

                val request = Request.Builder()
                    .url("$apiBaseUrl/chat/completions")
                    .addOpenAIHeaders()
                    .post(requestBody)
                    .build()

                val response = client.newCall(request).execute()
                PLog.d("OpenAIApiClient", "Evaluate response: ${response.code}")
                if (!response.isSuccessful) {
                    val errorBody = response.body?.string() ?: "Unknown error"
                    return@withContext Result.failure(Exception("API failed: ${response.code}\n${request.url}\n$errorBody"))
                }

                val responseBodyString = response.body?.string() ?: ""
                val text = extractTextFromResponse(responseBodyString)
                Result.success(parseEvaluation(text))
            } catch (e: Exception) {
                Result.failure(e)
            }
        }

    private fun extractTextFromResponse(responseBodyString: String): String {
        val jsonResponse = JSONObject(responseBodyString)

        jsonResponse.optJSONArray("choices")?.let { choices ->
            if (choices.length() > 0) {
                val firstChoice = choices.getJSONObject(0)
                val message = firstChoice.optJSONObject("message")
                val contentText = message?.extractOpenAIContentText().orEmpty()
                if (contentText.isNotBlank()) return contentText
                val text = firstChoice.optString("text")
                if (text.isNotBlank()) return text
            }
        }

        return responseBodyString
    }

    private fun parseEvaluation(text: String): AiPhotoEvaluation {
        val cleaned = text
            .trim()
            .removePrefix("```json")
            .removePrefix("```")
            .removeSuffix("```")
            .trim()
        val jsonStart = cleaned.indexOf('{')
        val jsonEnd = cleaned.lastIndexOf('}')
        val jsonText = if (jsonStart >= 0 && jsonEnd >= jsonStart) {
            cleaned.substring(jsonStart, jsonEnd + 1)
        } else {
            cleaned
        }
        val json = JSONObject(jsonText)
        val scores = AiPhotoElementScores(
            impact = json.optInt("impactScore").coerceIn(0, 100),
            technicalExcellence = json.optInt("technicalExcellenceScore").coerceIn(0, 100),
            creativity = json.optInt("creativityScore").coerceIn(0, 100),
            style = json.optInt("styleScore").coerceIn(0, 100),
            composition = json.optInt("compositionScore").coerceIn(0, 100),
            presentation = json.optInt("presentationScore").coerceIn(0, 100),
            colorBalance = json.optInt("colorBalanceScore").coerceIn(0, 100),
            centerOfInterest = json.optInt("centerOfInterestScore").coerceIn(0, 100),
            lighting = json.optInt("lightingScore").coerceIn(0, 100),
            subjectMatter = json.optInt("subjectMatterScore").coerceIn(0, 100),
            technique = json.optInt("techniqueScore").coerceIn(0, 100),
            storytelling = json.optInt("storytellingScore").coerceIn(0, 100)
        )
        return AiPhotoEvaluation(
            overallScore = scores.weightedOverallScore(),
            scores = scores,
            summary = json.optString("summary").trim()
        )
    }

    private fun parseLutRecipe(text: String): LutRecipe {
        val json = JSONObject(extractJsonObjectText(text))
        val controlPointsJson = json.optJSONArray("controlPoints")
            ?: throw IllegalArgumentException("AI response did not include controlPoints")

        val controlPoints = buildList {
            for (i in 0 until controlPointsJson.length()) {
                val item = controlPointsJson.optJSONObject(i) ?: continue
                add(
                    ControlPoint(
                        sourceR = item.optDouble("sourceR").toFloat().coerceIn(0f, 1f),
                        sourceG = item.optDouble("sourceG").toFloat().coerceIn(0f, 1f),
                        sourceB = item.optDouble("sourceB").toFloat().coerceIn(0f, 1f),
                        targetR = item.optDouble("targetR").toFloat().coerceIn(0f, 1f),
                        targetG = item.optDouble("targetG").toFloat().coerceIn(0f, 1f),
                        targetB = item.optDouble("targetB").toFloat().coerceIn(0f, 1f),
                        matchConfidence = item.optDouble("matchConfidence", 0.8).toFloat()
                            .coerceIn(0f, 1f)
                    )
                )
            }
        }

        if (controlPoints.size < 6) {
            throw IllegalArgumentException("AI returned too few LUT control points: ${controlPoints.size}")
        }

        return LutRecipe(controlPoints)
    }

    private fun extractJsonObjectText(text: String): String {
        val cleaned = text
            .trim()
            .removePrefix("```json")
            .removePrefix("```")
            .removeSuffix("```")
            .trim()
        val jsonStart = cleaned.indexOf('{')
        val jsonEnd = cleaned.lastIndexOf('}')
        return if (jsonStart >= 0 && jsonEnd >= jsonStart) {
            cleaned.substring(jsonStart, jsonEnd + 1)
        } else {
            cleaned
        }
    }

    private fun bitmapToBase64(bitmap: Bitmap): String {
        // Resize bitmap to save token constraints if it's too large
        val maxDim = 1024
        var w = bitmap.width
        var h = bitmap.height
        if (w > maxDim || h > maxDim) {
            val scale = maxDim.toFloat() / Math.max(w, h)
            w = (w * scale).toInt()
            h = (h * scale).toInt()
        }

        val resized = if (w != bitmap.width || h != bitmap.height) {
            bitmap.scale(w, h)
        } else {
            bitmap
        }

        val outputStream = ByteArrayOutputStream()
        resized.compress(Bitmap.CompressFormat.JPEG, 80, outputStream)
        val byteArray = outputStream.toByteArray()
        return Base64.encodeToString(byteArray, Base64.NO_WRAP)
    }

    private fun bitmapToJpegRequestBody(bitmap: Bitmap): RequestBody {
        val outputStream = ByteArrayOutputStream()
        bitmap.compress(Bitmap.CompressFormat.JPEG, 90, outputStream)
        return outputStream.toByteArray().toRequestBody("image/jpeg".toMediaType())
    }

    private fun extractImageBase64FromResponse(jsonResponse: JSONObject): String? {
        val data = jsonResponse.optJSONArray("data") ?: return null
        if (data.length() == 0) return null

        val image = data.getJSONObject(0)
        image.optString("b64_json").takeIf { it.isNotBlank() }?.let { return it }

        val url = image.optString("url")
        if (url.startsWith("data:image/")) {
            return url.substringAfter("base64,", missingDelimiterValue = "")
                .takeIf { it.isNotBlank() }
        }

        return null
    }

    private fun Request.Builder.addOpenAIHeaders(): Request.Builder =
        addHeader("Authorization", "Bearer $apiKey")

    private fun JSONObject.extractOpenAIContentText(): String {
        val content = opt("content")
        if (content is String) return content
        if (content is JSONArray) {
            val textBuilder = StringBuilder()
            for (i in 0 until content.length()) {
                val part = content.optJSONObject(i) ?: continue
                val text = part.optString("text")
                if (text.isNotBlank()) {
                    textBuilder.append(text)
                }
            }
            return textBuilder.toString()
        }
        return ""
    }
}

@Keep
data class AiPhotoEvaluation(
    val overallScore: Int,
    val scores: AiPhotoElementScores,
    val summary: String
)

@Keep
data class AiPhotoElementScores(
    val impact: Int,
    val technicalExcellence: Int,
    val creativity: Int,
    val style: Int,
    val composition: Int,
    val presentation: Int,
    val colorBalance: Int,
    val centerOfInterest: Int,
    val lighting: Int,
    val subjectMatter: Int,
    val technique: Int,
    val storytelling: Int
) {
    fun weightedOverallScore(): Int {
        val weightedSum =
            impact * 5 +
                technicalExcellence * 6 +
                creativity * 7 +
                style * 7 +
                composition * 8 +
                presentation * 8 +
                colorBalance * 8 +
                centerOfInterest * 9 +
                lighting * 9 +
                subjectMatter * 10 +
                technique * 11 +
                storytelling * 12
        return (weightedSum / 100f).roundToInt().coerceIn(0, 100)
    }
}
