package com.hinnka.mycamera.raw

import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test
import java.io.ByteArrayInputStream
import javax.xml.parsers.DocumentBuilderFactory

class DngCameraRawProfileXmpTest {
    @Test
    fun `embedded Camera Raw Look enables PGTM and tone curve`() {
        val profileLookName = "Photon \"HDR\" & Look"
        val document = DocumentBuilderFactory.newInstance().apply {
            isNamespaceAware = true
        }.newDocumentBuilder().parse(
            ByteArrayInputStream(
                DngCameraRawProfileXmp.build(
                    profileLookName = profileLookName,
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
        assertEquals("100", parameters.attributes
            .getNamedItemNS(cameraRawNamespace, "ProfileToneCurve").nodeValue)
        assertNull(parameters.attributes
            .getNamedItemNS(cameraRawNamespace, "CameraProfile"))
        assertTrue(lookDescription.attributes
            .getNamedItemNS(cameraRawNamespace, "UUID").nodeValue.matches(Regex("[0-9A-F]{32}")))
    }

    @Test
    fun `Photon HDR Look keeps its existing Camera Raw identity`() {
        val xmp = DngCameraRawProfileXmp.build(
            profileLookName = DngProfileToneCurve.PHOTON_PGTM_PROFILE_NAME,
        ).toString(Charsets.UTF_8)

        assertTrue(xmp.contains("crs:UUID=\"F73E46FD59ECF8FE66D156114E53ED6F\""))
    }
}
