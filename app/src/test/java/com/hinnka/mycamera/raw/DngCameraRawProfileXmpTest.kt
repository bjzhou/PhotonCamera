package com.hinnka.mycamera.raw

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test
import java.io.ByteArrayInputStream
import javax.xml.parsers.DocumentBuilderFactory

class DngCameraRawProfileXmpTest {
    @Test
    fun `embedded Camera Raw Look enables only PGTM`() {
        val profileLookName = "Photon \"HDR\" & Look"
        val document = DocumentBuilderFactory.newInstance().apply {
            isNamespaceAware = true
        }.newDocumentBuilder().parse(
            ByteArrayInputStream(
                DngCameraRawProfileXmp.build(
                    profileLookName = profileLookName,
                    includeProfileGainTableMap = true,
                    includeProfileToneCurve = false,
                )
            )
        )
        val cameraRawNamespace = "http://ns.adobe.com/camera-raw-settings/1.0/"
        val descriptions = document.getElementsByTagNameNS(
            "http://www.w3.org/1999/02/22-rdf-syntax-ns#",
            "Description",
        )
        val rootDescription = descriptions.item(0)
        val lookDescription = descriptions.item(1)
        val parameters = document.getElementsByTagNameNS(cameraRawNamespace, "Parameters").item(0)

        assertNull(rootDescription.attributes
            .getNamedItemNS(cameraRawNamespace, "CameraProfile"))
        assertEquals(profileLookName, lookDescription.attributes
            .getNamedItemNS(cameraRawNamespace, "Name").nodeValue)
        assertEquals("1", lookDescription.attributes
            .getNamedItemNS(cameraRawNamespace, "Amount").nodeValue)
        assertEquals("100", parameters.attributes
            .getNamedItemNS(cameraRawNamespace, "ProfileGainTableMap").nodeValue)
        assertNull(parameters.attributes
            .getNamedItemNS(cameraRawNamespace, "ProfileToneCurve"))
        assertNull(parameters.attributes
            .getNamedItemNS(cameraRawNamespace, "CameraProfile"))
        assertTrue(lookDescription.attributes
            .getNamedItemNS(cameraRawNamespace, "UUID").nodeValue.matches(Regex("[0-9A-F]{32}")))
    }

    @Test
    fun `Photon HDR Look keeps its existing Camera Raw identity`() {
        val xmp = DngCameraRawProfileXmp.build(
            profileLookName = DngProfileToneCurve.PHOTON_PGTM_PROFILE_NAME,
            includeProfileGainTableMap = true,
            includeProfileToneCurve = false,
        ).toString(Charsets.UTF_8)

        assertTrue(xmp.contains("crs:UUID=\"F73E46FD59ECF8FE66D156114E53ED6F\""))
    }

    @Test
    fun `embedded Camera Raw Look reflects externally supplied tone curve`() {
        val xmp = DngCameraRawProfileXmp.build(
            profileLookName = "External curve",
            includeProfileGainTableMap = false,
            includeProfileToneCurve = true,
        ).toString(Charsets.UTF_8)

        assertTrue(xmp.contains("crs:ProfileToneCurve=\"100\""))
        assertFalse(xmp.contains("crs:ProfileGainTableMap=\"100\""))
    }

    @Test
    fun `RAW AE SummaryText is preserved as readable XMP text`() {
        val summary = "PhotonCamera RAW AE SummaryText v1\nshortTargetT=63.8 & longTargetT=<119.3>"
        val document = DocumentBuilderFactory.newInstance().apply {
            isNamespaceAware = true
        }.newDocumentBuilder().parse(
            ByteArrayInputStream(
                DngCameraRawProfileXmp.build(
                    profileLookName = "Embedded",
                    includeProfileGainTableMap = false,
                    includeProfileToneCurve = false,
                    rawSceneExposureSummaryText = summary,
                ),
            ),
        )

        val summaryNode = document.getElementsByTagNameNS(
            "https://hinnka.github.io/PhotonCamera/xmp/1.0/",
            "SummaryText",
        ).item(0)
        assertEquals(summary, summaryNode.textContent)
    }
}
