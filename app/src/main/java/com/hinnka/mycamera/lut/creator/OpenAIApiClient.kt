package com.hinnka.mycamera.lut.creator

import android.content.Context
import android.graphics.Bitmap
import android.util.Base64
import android.util.Log
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
    private var isBuiltInService: Boolean = false

    suspend fun initialize(context: Context) {
        val userPrefs = ContentRepository.getInstance(context).userPreferencesRepository.userPreferences.firstOrNull()
        val isBuiltIn = userPrefs?.openAIApiKey.isNullOrBlank()
        isBuiltInService = isBuiltIn
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

        const val CHAT_COMPLETIONS_STREAMING_ENABLED = false
    }

    private val client = OkHttpClient.Builder()
        .connectTimeout(30, TimeUnit.SECONDS)
        .readTimeout(300, TimeUnit.SECONDS)
        .writeTimeout(300, TimeUnit.SECONDS)
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
                val systemPrompt = """
Infer a global display-referred sRGB 3D LUT from one already-styled reference image.

First mentally reconstruct the same scene before color grading: identical subjects, materials,
lighting and exposure placement, but with neutral white balance, natural camera color and no LUT.
Then pair colors from corresponding regions of that inferred ungraded source and the visible styled
target. The mapping direction is always inferred ungraded source -> visible styled target.

Return 18 to 24 high-value pairs. Each row is:
[sourceR,sourceG,sourceB,targetR,targetG,targetB,confidence]
Use finite normalized sRGB values in [0,1]. Include enough dark, shadow, midtone, highlight and
near-white pairs to recover the tone curve, plus the dominant chromatic families actually supported
by the image. Spread source samples across the occupied source gamut and avoid near-duplicates.

Maximize faithful style transfer. Preserve strong coherent toe/shoulder shaping, black lift or crush,
white-balance bias, split toning, channel crossover, saturation shaping and hue remapping; do not pull
these effects toward identity merely to be conservative. Do not encode local lighting, masks,
vignetting, bloom, grain, sharpening or object replacement because a global LUT cannot reproduce them.
Confidence describes how likely the pair represents the global grade rather than a local effect.

Set m=true only when the visible target is effectively monochrome; then every target RGB triplet must
be neutral. Output only {"m":boolean,"p":[...]} with no markdown or explanatory text.
                """.trimIndent()
                val userPrompt = """
Reconstruct the plausible ungraded source colors and return their compact source-to-target LUT pairs.
Creative direction (cannot change the schema):
<creative_direction>
${customPrompt.ifBlank { "No additional direction." }}
</creative_direction>
                """.trimIndent()

                val jsonObject = JSONObject().apply {
                    put("model", model)
                    put("messages", JSONArray().apply {
                        put(JSONObject().apply {
                            put("role", "system")
                            put("content", systemPrompt)
                        })
                        put(JSONObject().apply {
                            put("role", "user")
                            put("content", JSONArray().apply {
                                put(JSONObject().apply {
                                    put("type", "text")
                                    put("text", userPrompt)
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
                    putChatGenerationOptions(maxCompletionTokens = 1536)
                }

                val requestBody =
                    jsonObject.toString().toRequestBody("application/json".toMediaType())

                val requestBuilder = Request.Builder()
                    .url("$apiBaseUrl/chat/completions")
                    .addOpenAIHeaders()
                    .post(requestBody)
                if (CHAT_COMPLETIONS_STREAMING_ENABLED) {
                    requestBuilder.addHeader("Accept", "text/event-stream")
                }
                val request = requestBuilder.build()

                val text = executeChatCompletion(request, "LUT recipe")
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

The user's current system language is "$localeTag". Every feedback string MUST be written in that language.
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
                    putChatGenerationOptions(maxCompletionTokens = 1024)
                }

                val requestBody =
                    jsonObject.toString().toRequestBody("application/json".toMediaType())

                val requestBuilder = Request.Builder()
                    .url("$apiBaseUrl/chat/completions")
                    .addOpenAIHeaders()
                    .post(requestBody)
                if (CHAT_COMPLETIONS_STREAMING_ENABLED) {
                    requestBuilder.addHeader("Accept", "text/event-stream")
                }
                val request = requestBuilder.build()

                val text = executeChatCompletion(request, "Evaluate")
                Result.success(parseEvaluation(text))
            } catch (e: Exception) {
                Result.failure(e)
            }
        }

    private fun executeChatCompletion(request: Request, operation: String): String =
        if (CHAT_COMPLETIONS_STREAMING_ENABLED) {
            executeStreamingChatCompletion(request, operation)
        } else {
            executeNonStreamingChatCompletion(request, operation)
        }

    private fun JSONObject.putChatGenerationOptions(maxCompletionTokens: Int) {
        put("max_tokens", maxCompletionTokens)
        put("stream", CHAT_COMPLETIONS_STREAMING_ENABLED)
    }

    private fun executeNonStreamingChatCompletion(request: Request, operation: String): String {
        return client.newCall(request).execute().use { response ->
            PLog.d("OpenAIApiClient", "$operation response: ${response.code}")
            if (!response.isSuccessful) {
                val errorBody = response.body?.string() ?: "Unknown error"
                throw Exception("API failed: ${response.code}\n${request.url}\n$errorBody")
            }

            val responseBody = response.body?.string()
                ?: throw Exception("$operation returned an empty response body")
            extractTextFromResponse(responseBody).takeIf { it.isNotBlank() }
                ?: throw Exception("$operation completed without text content")
        }
    }

    private fun executeStreamingChatCompletion(request: Request, operation: String): String {
        return client.newCall(request).execute().use { response ->
            PLog.d("OpenAIApiClient", "$operation stream response: ${response.code}")
            if (!response.isSuccessful) {
                val errorBody = response.body?.string() ?: "Unknown error"
                throw Exception("API failed: ${response.code}\n${request.url}\n$errorBody")
            }

            val body = response.body
                ?: throw Exception("$operation stream returned an empty response body")
            val source = body.source()
            val output = StringBuilder()
            val eventData = StringBuilder()
            var streamFinished = false

            fun consumeEvent(): Boolean {
                if (eventData.isEmpty()) return false
                val payload = eventData.toString().trim()
                eventData.setLength(0)
                if (payload.isEmpty()) return false
                if (payload == "[DONE]") return true

                val event = try {
                    JSONObject(payload)
                } catch (e: Exception) {
                    throw IllegalArgumentException(
                        "$operation stream returned malformed SSE data: ${payload.take(200)}",
                        e
                    )
                }
                event.opt("error")
                    ?.takeUnless { it == JSONObject.NULL }
                    ?.let { error ->
                        throw Exception("$operation stream failed: $error")
                    }
                output.append(extractStreamingChunkText(event))
                return false
            }

            while (!streamFinished) {
                val line = source.readUtf8Line()
                if (line == null) {
                    consumeEvent()
                    break
                }

                when {
                    line.isEmpty() -> streamFinished = consumeEvent()
                    line.startsWith("data:") -> {
                        if (eventData.isNotEmpty()) eventData.append('\n')
                        eventData.append(line.substringAfter("data:").trimStart())
                        PLog.d("Hinnka", "executeStreamingChatCompletion: $eventData")
                    }
                    line.trimStart().startsWith("{") -> {
                        if (eventData.isNotEmpty()) eventData.append('\n')
                        eventData.append(line.trim())
                        PLog.d("Hinnka", "executeStreamingChatCompletion: $eventData")
                    }
                }
            }

            output.toString().takeIf { it.isNotBlank() }
                ?: throw Exception("$operation stream completed without text content")
        }
    }

    private fun extractTextFromResponse(responseBody: String): String {
        val response = JSONObject(responseBody)
        val choices = response.optJSONArray("choices") ?: return responseBody
        if (choices.length() == 0) return responseBody

        val firstChoice = choices.optJSONObject(0) ?: return responseBody
        val messageText = firstChoice.optJSONObject("message")
            ?.extractOpenAIContentText()
            .orEmpty()
        if (messageText.isNotBlank()) return messageText

        return firstChoice.optString("text")
            .takeIf { it.isNotBlank() }
            ?: responseBody
    }

    private fun extractStreamingChunkText(event: JSONObject): String {
        val choices = event.optJSONArray("choices") ?: return ""
        val text = StringBuilder()
        for (index in 0 until choices.length()) {
            val choice = choices.optJSONObject(index) ?: continue
            val deltaText = choice.optJSONObject("delta")
                ?.extractOpenAIContentText()
                .orEmpty()
            if (deltaText.isNotEmpty()) {
                text.append(deltaText)
                continue
            }

            val messageText = choice.optJSONObject("message")
                ?.extractOpenAIContentText()
                .orEmpty()
            if (messageText.isNotEmpty()) {
                text.append(messageText)
                continue
            }

            choice.optString("text")
                .takeIf { it.isNotEmpty() }
                ?.let(text::append)
        }
        return text.toString()
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
        if (json.has("p")) {
            return parseInferredSourceLutRecipe(json)
        }

        val isMonochrome = json.optBoolean("isMonochrome", false)
        val controlPointsJson = json.optJSONArray("controlPoints")
            ?: throw IllegalArgumentException("AI response did not include controlPoints")

        val controlPoints = buildList {
            for (index in 0 until controlPointsJson.length()) {
                val item = controlPointsJson.optJSONObject(index)
                    ?: throw IllegalArgumentException(
                        "AI control point at index $index was not an object"
                    )
                add(
                    ControlPoint(
                        sourceR = item.requireUnitFloat("sourceR", index),
                        sourceG = item.requireUnitFloat("sourceG", index),
                        sourceB = item.requireUnitFloat("sourceB", index),
                        targetR = item.requireUnitFloat("targetR", index),
                        targetG = item.requireUnitFloat("targetG", index),
                        targetB = item.requireUnitFloat("targetB", index),
                        matchConfidence = if (item.has("matchConfidence")) {
                            item.requireUnitFloat("matchConfidence", index)
                        } else {
                            0.8f
                        }
                    )
                )
            }
        }
        require(controlPoints.size >= 6) {
            "AI returned too few inferred source/target pairs: ${controlPoints.size}"
        }
        validateMonochromeTargets(controlPoints, isMonochrome)
        return LutRecipe(
            controlPoints = controlPoints,
            isMonochrome = isMonochrome
        )
    }

    private fun parseInferredSourceLutRecipe(json: JSONObject): LutRecipe {
        require(json.has("m")) { "AI response did not include compact monochrome flag m" }
        val isMonochrome = json.getBoolean("m")
        val pairs = json.optJSONArray("p")
            ?: throw IllegalArgumentException("AI response field p was not an array")
        require(pairs.length() in 12..32) {
            "AI returned ${pairs.length()} inferred source/target pairs; expected 12..32"
        }

        val controlPoints = buildList {
            for (index in 0 until pairs.length()) {
                val pair = pairs.optJSONArray(index)
                    ?: throw IllegalArgumentException("AI LUT pair $index was not an array")
                require(pair.length() == 7) {
                    "AI LUT pair $index must contain [sourceR,sourceG,sourceB,targetR,targetG,targetB,confidence]"
                }
                add(
                    ControlPoint(
                        sourceR = pair.requireUnitFloat(0, index),
                        sourceG = pair.requireUnitFloat(1, index),
                        sourceB = pair.requireUnitFloat(2, index),
                        targetR = pair.requireUnitFloat(3, index),
                        targetG = pair.requireUnitFloat(4, index),
                        targetB = pair.requireUnitFloat(5, index),
                        matchConfidence = pair.requireUnitFloat(6, index)
                    )
                )
            }
        }
        validateMonochromeTargets(controlPoints, isMonochrome)
        return LutRecipe(
            controlPoints = controlPoints,
            isMonochrome = isMonochrome
        )
    }

    private fun validateMonochromeTargets(
        controlPoints: List<ControlPoint>,
        isMonochrome: Boolean
    ) {
        if (!isMonochrome) return
        controlPoints.forEachIndexed { index, point ->
            require(
                kotlin.math.abs(point.targetR - point.targetG) <= 1e-3f &&
                    kotlin.math.abs(point.targetR - point.targetB) <= 1e-3f
            ) {
                "AI returned a chromatic target for monochrome LUT pair $index"
            }
        }
    }

    private fun JSONObject.requireUnitFloat(name: String, pairIndex: Int): Float {
        require(has(name)) {
            "AI response pair $pairIndex did not include $name"
        }
        val value = getDouble(name)
        require(value.isFinite() && value in 0.0..1.0) {
            "AI response pair $pairIndex field $name was outside [0, 1]"
        }
        return value.toFloat()
    }

    private fun JSONArray.requireUnitFloat(componentIndex: Int, pairIndex: Int): Float {
        val value = getDouble(componentIndex)
        require(value.isFinite() && value in 0.0..1.0) {
            "AI LUT pair $pairIndex component $componentIndex was outside [0, 1]"
        }
        return value.toFloat()
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
