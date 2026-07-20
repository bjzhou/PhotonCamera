package com.hinnka.mycamera.processor

import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class RawRadianceHighlightAlignmentSupportTest {
    @Test
    fun acceptsSparseButSpatiallyDistributedValidatedFlow() {
        assertTrue(
            hasRadianceHighlightAlignmentSupport(
                validTileCount = 166,
                coveredQuadrants = 3,
                minimumValidTiles = 16,
                minimumQuadrants = 2,
            ),
        )
    }

    @Test
    fun rejectsTooFewValidatedCorrespondences() {
        assertFalse(
            hasRadianceHighlightAlignmentSupport(
                validTileCount = 15,
                coveredQuadrants = 4,
                minimumValidTiles = 16,
                minimumQuadrants = 2,
            ),
        )
    }

    @Test
    fun rejectsSpatiallyConcentratedCorrespondences() {
        assertFalse(
            hasRadianceHighlightAlignmentSupport(
                validTileCount = 166,
                coveredQuadrants = 1,
                minimumValidTiles = 16,
                minimumQuadrants = 2,
            ),
        )
    }
}
