package com.hinnka.mycamera.mgc

import android.content.Context
import android.net.Uri

object PhotonRawContract {
    const val AUTHORITY_SUFFIX = ".mgc.raw"

    const val METHOD_BEGIN_RAW_SESSION = "beginRawSession"
    const val METHOD_RENDER_RAW_SESSION = "renderRawSession"
    const val METHOD_ABORT_RAW_SESSION = "abortRawSession"

    const val EXTRA_SCHEMA_VERSION = "schemaVersion"
    const val EXTRA_SESSION_ID = "sessionId"
    const val EXTRA_INPUT_URI = "inputUri"
    const val EXTRA_PHOTO_ID = "photoId"
    const val EXTRA_ACCEPTED = "accepted"
    const val EXTRA_SOURCE_PACKAGE = "sourcePackage"
    const val EXTRA_SOURCE = "source"
    const val EXTRA_SOURCE_URI = "sourceUri"
    const val EXTRA_DATE_TAKEN = "dateTaken"
    const val EXTRA_ROTATION = "rotation"

    fun authority(context: Context): String = context.packageName + AUTHORITY_SUFFIX

    fun rawUri(context: Context): Uri = Uri.parse("content://${authority(context)}/raw")

    fun inputUri(context: Context, sessionId: String): Uri =
        Uri.parse("content://${authority(context)}/session/$sessionId/original.dng")
}
