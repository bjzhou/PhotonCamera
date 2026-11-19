package com.hinnka.mycamera.gallery

import com.hinnka.mycamera.lut.LutConfig
import com.hinnka.mycamera.model.ColorRecipeParams
import com.hinnka.mycamera.model.RecipeParam
import org.json.JSONArray
import org.json.JSONException
import org.json.JSONObject

internal data class GalleryEditLook(
    val lutId: String? = null,
    val lutConfig: LutConfig? = null,
    val isLutConfigLoading: Boolean = false,
    val recipe: ColorRecipeParams = ColorRecipeParams.DEFAULT,
    val edits: PhotoColorRecipeEdits = PhotoColorRecipeEdits(),
) {
    fun switchLut(id: String?, base: ColorRecipeParams): GalleryEditLook {
        val photoFields = edits.photoFields - RecipeParam.LUT_INTENSITY.name
        return GalleryEditLook(
            lutId = id,
            recipe = base.copyRecipeFields(recipe, photoFields),
            edits = PhotoColorRecipeEdits(base, photoFields),
        )
    }

    fun withPhotoRecipe(params: ColorRecipeParams, changedFields: Set<String>): GalleryEditLook {
        val photoFields = edits.photoFields - changedFields + params.changedRecipeFields(edits.base)
            .intersect(changedFields)
        return copy(recipe = params, edits = edits.copy(photoFields = photoFields))
    }

    fun withSyncedRecipe(params: ColorRecipeParams, changedFields: Set<String>): GalleryEditLook {
        val base = edits.base.copyRecipeFields(params, changedFields)
        return copy(recipe = params, edits = PhotoColorRecipeEdits(base, edits.photoFields - changedFields))
    }

    fun resetPhotoRecipe(): GalleryEditLook =
        copy(recipe = edits.base, edits = edits.copy(photoFields = emptySet()))
}

/** The effective values live in MediaMetadata.colorRecipeParams, including explicit curve resets. */
internal data class PhotoColorRecipeEdits(
    val base: ColorRecipeParams = ColorRecipeParams.DEFAULT,
    val photoFields: Set<String> = emptySet(),
) {
    fun toJson(): String = JSONObject()
        .put("base", JSONObject(base.toJson()))
        .put("photoFields", JSONArray(photoFields.toList()))
        .toString()

    companion object {
        fun fromJson(json: String?): PhotoColorRecipeEdits? {
            if (json == null) return null
            return try {
                val root = JSONObject(json)
                val fields = root.getJSONArray("photoFields")
                PhotoColorRecipeEdits(
                    base = ColorRecipeParams.fromJson(root.getJSONObject("base").toString()),
                    photoFields = buildSet {
                        for (index in 0 until fields.length()) add(fields.getString(index))
                    },
                )
            } catch (_: JSONException) {
                null
            }
        }

        fun withoutLut(recipe: ColorRecipeParams): PhotoColorRecipeEdits =
            PhotoColorRecipeEdits(photoFields = recipe.changedRecipeFields(ColorRecipeParams.DEFAULT))
    }
}

private class RecipeField(
    val name: String,
    val differs: (ColorRecipeParams, ColorRecipeParams) -> Boolean,
    val copyFrom: (ColorRecipeParams, ColorRecipeParams) -> ColorRecipeParams,
)

private fun <T> recipeField(
    name: String,
    read: (ColorRecipeParams) -> T,
    write: (ColorRecipeParams, T) -> ColorRecipeParams,
    equal: (T, T) -> Boolean = { first, second -> first == second },
) = RecipeField(
    name = name,
    differs = { first, second -> !equal(read(first), read(second)) },
    copyFrom = { target, source -> write(target, read(source)) },
)

private fun curveField(name: String, read: (ColorRecipeParams) -> FloatArray?, write: (ColorRecipeParams, FloatArray?) -> ColorRecipeParams) =
    recipeField(name, read, write) { first, second -> first.contentEquals(second) }

private val recipeFields = RecipeParam.entries.filterNot { it == RecipeParam.HDF }.map { param ->
    recipeField(param.name, param::getValue, param::setValue)
} + listOf(
    recipeField("remarks", ColorRecipeParams::remarks, { p, v -> p.copy(remarks = v) }),
    curveField("masterCurvePoints", ColorRecipeParams::masterCurvePoints) { p, v -> p.copy(masterCurvePoints = v?.copyOf()) },
    curveField("redCurvePoints", ColorRecipeParams::redCurvePoints) { p, v -> p.copy(redCurvePoints = v?.copyOf()) },
    curveField("greenCurvePoints", ColorRecipeParams::greenCurvePoints) { p, v -> p.copy(greenCurvePoints = v?.copyOf()) },
    curveField("blueCurvePoints", ColorRecipeParams::blueCurvePoints) { p, v -> p.copy(blueCurvePoints = v?.copyOf()) },
    recipeField("gradingShadowHue", ColorRecipeParams::gradingShadowHue, { p, v -> p.copy(gradingShadowHue = v) }),
    recipeField("gradingShadowAmount", ColorRecipeParams::gradingShadowAmount, { p, v -> p.copy(gradingShadowAmount = v) }),
    recipeField("gradingShadowLuminance", ColorRecipeParams::gradingShadowLuminance, { p, v -> p.copy(gradingShadowLuminance = v) }),
    recipeField("gradingMidtoneHue", ColorRecipeParams::gradingMidtoneHue, { p, v -> p.copy(gradingMidtoneHue = v) }),
    recipeField("gradingMidtoneAmount", ColorRecipeParams::gradingMidtoneAmount, { p, v -> p.copy(gradingMidtoneAmount = v) }),
    recipeField("gradingMidtoneLuminance", ColorRecipeParams::gradingMidtoneLuminance, { p, v -> p.copy(gradingMidtoneLuminance = v) }),
    recipeField("gradingHighlightHue", ColorRecipeParams::gradingHighlightHue, { p, v -> p.copy(gradingHighlightHue = v) }),
    recipeField("gradingHighlightAmount", ColorRecipeParams::gradingHighlightAmount, { p, v -> p.copy(gradingHighlightAmount = v) }),
    recipeField("gradingHighlightLuminance", ColorRecipeParams::gradingHighlightLuminance, { p, v -> p.copy(gradingHighlightLuminance = v) }),
    recipeField("gradingBalance", ColorRecipeParams::gradingBalance, { p, v -> p.copy(gradingBalance = v) }),
    recipeField("gradingBlending", ColorRecipeParams::gradingBlending, { p, v -> p.copy(gradingBlending = v) }),
)

internal fun ColorRecipeParams.changedRecipeFields(other: ColorRecipeParams): Set<String> = buildSet {
    for (field in recipeFields) {
        if (field.differs(this@changedRecipeFields, other)) add(field.name)
    }
}

internal fun ColorRecipeParams.copyRecipeFields(source: ColorRecipeParams, fields: Set<String>): ColorRecipeParams =
    recipeFields.fold(this) { params, field ->
        if (field.name in fields) field.copyFrom(params, source) else params
    }
