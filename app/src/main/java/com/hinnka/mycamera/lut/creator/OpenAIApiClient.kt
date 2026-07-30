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
You are an exacting international photography juror reviewing one single image.
Use an editorial, contemporary-photography framework inspired by the recurring
principles in LensCulture juror guidance: impact, originality, visual language,
narrative autonomy, conceptual coherence, aesthetic quality, and technical mastery.
This is not an official LensCulture score and you must not claim that it is.

Judge what is visible in the image. Do not invent the photographer's biography,
caption, location, intent, or a larger series. Do not penalize unconventional focus,
exposure, color, grain, motion, or framing when the choice clearly strengthens the
work. Be candid, specific, and constructive; avoid generic praise.

Start from 60 for competent but unremarkable work, then move only when visible
evidence earns it. Calibrate strictly:
- 0-49: unresolved
- 50-64: developing
- 65-73: promising
- 74-81: strong
- 82-89: distinctive
- 90-95: award-ready
- 96-100: truly exceptional and extremely rare

Score these five independent criteria from 0 to 100:
1. Visual Impact (25%): stopping power, memorability, emotional immediacy, and
   whether the image rewards sustained attention.
2. Originality & Authorial Voice (20%): a fresh subjective point of view and a
   distinctive visual language, not novelty for its own sake.
3. Narrative & Meaning (20%): the image's ability to evoke a story, idea, tension,
   or feeling and to stand autonomously without a caption.
4. Intent & Coherence (20%): whether subject, moment, framing, light, color, and
   editing work together toward a legible purpose within this single frame.
5. Aesthetic & Technical Execution (15%): composition, light, tone/color,
   focus/motion, timing, and post-processing, judged by how well craft serves intent.

For every criterion, give one short sentence citing concrete visual evidence.
Also provide:
- "verdict": a concise two-sentence juror assessment balancing achievement and limitation.
- "strength": the single most successful visible choice.
- "improvement": the highest-leverage, actionable change for shooting, selection,
  framing, timing, light, or editing. Do not prescribe a generic rule.

The user's current system language is "$localeTag". Every feedback string,
"verdict", "strength", and "improvement" MUST be written in that language.
Return JSON only, without markdown formatting, code blocks, or any conversational text, using this exact schema:
{
  "visualImpact": {
    "score": 0-100 integer,
    "feedback": "specific evidence"
  },
  "originalityAndVoice": {
    "score": 0-100 integer,
    "feedback": "specific evidence"
  },
  "narrativeAndMeaning": {
    "score": 0-100 integer,
    "feedback": "specific evidence"
  },
  "intentAndCoherence": {
    "score": 0-100 integer,
    "feedback": "specific evidence"
  },
  "aestheticAndTechnicalExecution": {
    "score": 0-100 integer,
    "feedback": "specific evidence"
  },
  "verdict": "concise two-sentence juror assessment",
  "strength": "single strongest visible choice",
  "improvement": "single highest-leverage actionable change"
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
        val scores = AiPhotoCriteriaScores(
            visualImpact = json.requirePhotoCriterion("visualImpact"),
            originalityAndVoice = json.requirePhotoCriterion("originalityAndVoice"),
            narrativeAndMeaning = json.requirePhotoCriterion("narrativeAndMeaning"),
            intentAndCoherence = json.requirePhotoCriterion("intentAndCoherence"),
            aestheticAndTechnicalExecution =
                json.requirePhotoCriterion("aestheticAndTechnicalExecution")
        )
        return AiPhotoEvaluation(
            overallScore = scores.weightedOverallScore(),
            scores = scores,
            verdict = json.requireEvaluationText("verdict"),
            strength = json.requireEvaluationText("strength"),
            improvement = json.requireEvaluationText("improvement")
        )
    }

    private fun JSONObject.requirePhotoCriterion(name: String): AiPhotoCriterion {
        val criterion = getJSONObject(name)
        val score = criterion.getInt("score")
        require(score in 0..100) {
            "AI response field \"$name.score\" was outside 0..100"
        }
        return AiPhotoCriterion(
            score = score,
            feedback = criterion.requireEvaluationText("feedback")
        )
    }

    private fun JSONObject.requireEvaluationText(name: String): String =
        getString(name).trim().takeIf { it.isNotBlank() }
            ?: throw IllegalArgumentException("AI response field \"$name\" was blank")

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
    val scores: AiPhotoCriteriaScores,
    val verdict: String,
    val strength: String,
    val improvement: String
)

@Keep
data class AiPhotoCriterion(
    val score: Int,
    val feedback: String
)

@Keep
data class AiPhotoCriteriaScores(
    val visualImpact: AiPhotoCriterion,
    val originalityAndVoice: AiPhotoCriterion,
    val narrativeAndMeaning: AiPhotoCriterion,
    val intentAndCoherence: AiPhotoCriterion,
    val aestheticAndTechnicalExecution: AiPhotoCriterion
) {
    fun weightedOverallScore(): Int {
        val weightedSum =
            visualImpact.score * 25 +
                originalityAndVoice.score * 20 +
                narrativeAndMeaning.score * 20 +
                intentAndCoherence.score * 20 +
                aestheticAndTechnicalExecution.score * 15
        return (weightedSum / 100f).roundToInt().coerceIn(0, 100)
    }
}
