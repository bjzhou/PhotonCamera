package com.hinnka.mycamera.mgc

import android.content.Context
import android.net.Uri

object PhotonLookContract {
    const val AUTHORITY_SUFFIX = ".mgc.look"
    const val METHOD_GET_LOOK_SNAPSHOT = "getLookSnapshot"

    const val EXTRA_SCHEMA_VERSION = "schemaVersion"
    const val EXTRA_LOOK_SIGNATURE = "lookSignature"
    const val EXTRA_LUT_ID = "lutId"
    const val EXTRA_LUT_TITLE = "lutTitle"
    const val EXTRA_LUT_SIZE = "lutSize"
    const val EXTRA_LUT_DATA_TYPE = "lutDataType"
    // Legacy key name kept for MGC dex compatibility; value is TransferCurve.shaderId.
    const val EXTRA_LUT_CURVE_ORDINAL = "lutCurveOrdinal"
    const val EXTRA_LUT_COLOR_SPACE_ORDINAL = "lutColorSpaceOrdinal"
    const val EXTRA_LUT_PAYLOAD = "lutPayload"
    const val EXTRA_RECIPE_JSON = "recipeJson"

    fun authority(context: Context): String = context.packageName + AUTHORITY_SUFFIX

    fun lookUri(context: Context): Uri = Uri.parse("content://${authority(context)}/look")

    fun notifyLookChanged(context: Context) {
        context.contentResolver.notifyChange(lookUri(context), null)
    }
}
