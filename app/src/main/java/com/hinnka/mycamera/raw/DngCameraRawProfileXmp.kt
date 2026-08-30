package com.hinnka.mycamera.raw

import java.security.MessageDigest

/**
 * Camera Raw treats ProfileGainTableMap and ProfileToneCurve as weighted profile operations.
 * The DNG tags provide the data; this Look enables exactly the operations supplied by the caller.
 */
internal object DngCameraRawProfileXmp {
    const val TAG_XMP = 700

    private const val CAMERA_RAW_VERSION = "16.0"
    private const val PROCESS_VERSION = "15.4"

    fun build(
        profileLookName: String,
        includeProfileGainTableMap: Boolean,
        includeProfileToneCurve: Boolean,
        rawSceneExposureSummaryText: String? = null,
    ): ByteArray {
        require(profileLookName.isNotBlank()) { "Camera Raw Look name must not be blank" }
        val escapedProfileLookName = escapeXmlAttribute(profileLookName)
        val escapedRawSceneExposureSummaryText = rawSceneExposureSummaryText
            ?.takeIf { it.isNotBlank() }
            ?.let(::escapeXmlText)
        val hasProfileOperations = includeProfileGainTableMap || includeProfileToneCurve
        require(hasProfileOperations || escapedRawSceneExposureSummaryText != null) {
            "XMP must contain a Camera Raw Look or RAW AE summary"
        }
        val lookUuid = stableLookUuid(profileLookName)
        val profileOperationAttributes = buildList {
            if (includeProfileGainTableMap) add("crs:ProfileGainTableMap=\"100\"")
            if (includeProfileToneCurve) add("crs:ProfileToneCurve=\"100\"")
        }.joinToString(separator = "\n                  ")
        val cameraRawLook = if (hasProfileOperations) {
            """
                <crs:Look>
                 <rdf:Description
                  crs:Name="$escapedProfileLookName"
                  crs:Amount="1"
                  crs:UUID="$lookUuid"
                  crs:SupportsMonochrome="false"
                  crs:SupportsOutputReferred="false">
                  <crs:Group>
                   <rdf:Alt>
                    <rdf:li xml:lang="x-default">Profiles</rdf:li>
                   </rdf:Alt>
                  </crs:Group>
                  <crs:Parameters
                   crs:Version="$CAMERA_RAW_VERSION"
                   crs:ProcessVersion="$PROCESS_VERSION"
                   $profileOperationAttributes
                   crs:ConvertToGrayscale="False"/>
                 </rdf:Description>
                </crs:Look>
            """.trimIndent()
        } else {
            ""
        }
        return """
            <x:xmpmeta xmlns:x="adobe:ns:meta/" x:xmptk="PhotonCamera">
             <rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
              <rdf:Description rdf:about=""
               xmlns:crs="http://ns.adobe.com/camera-raw-settings/1.0/"
               xmlns:photon="https://hinnka.github.io/PhotonCamera/xmp/1.0/"
               crs:Version="$CAMERA_RAW_VERSION"
               crs:ProcessVersion="$PROCESS_VERSION"
               crs:HasSettings="True"
               crs:AlreadyApplied="False">
               ${escapedRawSceneExposureSummaryText?.let {
                   "<photon:SummaryText>$it</photon:SummaryText>"
               }.orEmpty()}
               $cameraRawLook
              </rdf:Description>
             </rdf:RDF>
            </x:xmpmeta>
        """.trimIndent().toByteArray(Charsets.UTF_8)
    }

    private fun stableLookUuid(profileLookName: String): String {
        // The Look identity must not change when its bound base profile is renamed;
        // otherwise Camera Raw keeps both identities in its profile cache.
        val digest = MessageDigest.getInstance("SHA-256")
            .digest("PhotonCamera Camera Raw Look:$profileLookName".toByteArray(Charsets.UTF_8))
        return digest.take(16).joinToString(separator = "") { byte ->
            "%02X".format(byte.toInt() and 0xFF)
        }
    }

    private fun escapeXmlAttribute(value: String): String = buildString(value.length) {
        value.forEach { character ->
            append(
                when (character) {
                    '&' -> "&amp;"
                    '<' -> "&lt;"
                    '>' -> "&gt;"
                    '"' -> "&quot;"
                    '\'' -> "&apos;"
                    else -> character
                }
            )
        }
    }

    private fun escapeXmlText(value: String): String = buildString(value.length) {
        value.forEach { character ->
            append(
                when (character) {
                    '&' -> "&amp;"
                    '<' -> "&lt;"
                    '>' -> "&gt;"
                    else -> character
                },
            )
        }
    }
}
