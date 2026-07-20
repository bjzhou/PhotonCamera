package com.hinnka.mycamera.processor

import org.junit.Assert.assertEquals
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

    @Test
    fun acceptedLongFrameKeepsFullGlobalWeightDespiteSparseSeedCoverage() {
        val admission = planRadianceLongAdmission(
            validTileCount = 230,
            coveredQuadrants = 2,
            eligibleTileCount = 4_000,
            eligibleQuadrants = 2,
            minimumValidTiles = 64,
            minimumQuadrants = 3,
            minimumEligibleCoverage = 0.01f,
        )

        assertEquals(
            1f,
            admission.frameWeight,
            0f,
        )
        assertEquals(2, admission.requiredQuadrants)
    }

    @Test
    fun longFrameStillRequiresThreeQuadrantsWhenFourAreEligible() {
        val admission = planRadianceLongAdmission(
            validTileCount = 230,
            coveredQuadrants = 2,
            eligibleTileCount = 4_000,
            eligibleQuadrants = 4,
            minimumValidTiles = 64,
            minimumQuadrants = 3,
            minimumEligibleCoverage = 0.01f,
        )

        assertEquals(
            0f,
            admission.frameWeight,
            0f,
        )
        assertEquals(3, admission.requiredQuadrants)
    }

    @Test
    fun longFrameRejectsInsufficientCoverageOfEligibleTiles() {
        val admission = planRadianceLongAdmission(
            validTileCount = 64,
            coveredQuadrants = 3,
            eligibleTileCount = 10_000,
            eligibleQuadrants = 3,
            minimumValidTiles = 64,
            minimumQuadrants = 3,
            minimumEligibleCoverage = 0.01f,
        )

        assertEquals(0f, admission.frameWeight, 0f)
        assertEquals(0.0064f, admission.eligibleCoverage, 1e-6f)
    }
}
