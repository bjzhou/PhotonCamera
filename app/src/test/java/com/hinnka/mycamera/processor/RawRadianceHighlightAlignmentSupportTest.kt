package com.hinnka.mycamera.processor

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class RawRadianceHighlightAlignmentSupportTest {
    @Test
    fun acceptedLongFrameKeepsFullGlobalWeightDespiteSparseSeedCoverage() {
        val admission = planRadianceLongAdmission(
            evidence = longEvidence(
                validTileCount = 230,
                coveredQuadrants = 2,
                eligibleTileCount = 4_000,
                eligibleQuadrants = 2,
            ),
            requirements = longRequirements(),
        )

        assertEquals(1f, admission.frameWeight, 0f)
        assertEquals(RawRadianceLongAdmissionMode.VALIDATED_FLOW, admission.mode)
        assertEquals(24f, admission.precisionWeightCap, 0f)
        assertTrue(admission.rejectionReasons.isEmpty())
        assertEquals(2, admission.requiredQuadrants)
    }

    @Test
    fun longFrameStillRequiresThreeQuadrantsWhenFourAreEligible() {
        val admission = planRadianceLongAdmission(
            evidence = longEvidence(
                validTileCount = 230,
                coveredQuadrants = 2,
                eligibleTileCount = 4_000,
                eligibleQuadrants = 4,
            ),
            requirements = longRequirements(),
        )

        assertEquals(0f, admission.frameWeight, 0f)
        assertEquals(RawRadianceLongAdmissionMode.REJECTED, admission.mode)
        assertEquals(3, admission.requiredQuadrants)
    }

    @Test
    fun longFrameRejectsInsufficientCoverageOfEligibleTiles() {
        val admission = planRadianceLongAdmission(
            evidence = longEvidence(
                validTileCount = 64,
                coveredQuadrants = 3,
                eligibleTileCount = 10_000,
                eligibleQuadrants = 3,
            ),
            requirements = longRequirements(),
        )

        assertEquals(0f, admission.frameWeight, 0f)
        assertEquals(0.0064f, admission.eligibleCoverage, 1e-6f)
    }

    @Test
    fun lowObservabilityLongFrameIsRejectedEvenWithStrongPhotonGain() {
        val admission = planRadianceLongAdmission(
            evidence = longEvidence(
                validTileCount = 0,
                coveredQuadrants = 0,
                eligibleTileCount = 2,
                eligibleQuadrants = 0,
                referenceObservableTileCount = 2,
                currentObservableTileCount = 45_600,
            ),
            requirements = longRequirements(),
        )

        assertEquals(RawRadianceLongAdmissionMode.REJECTED, admission.mode)
        assertEquals(0f, admission.frameWeight, 0f)
        assertEquals(0f, admission.precisionWeightCap, 0f)
        assertTrue(
            RawRadianceLongRejectionReason.REFERENCE_PROXY_UNOBSERVABLE in
                admission.rejectionReasons,
        )
        assertTrue(
            RawRadianceLongRejectionReason.MUTUAL_OBSERVABILITY_INSUFFICIENT in
                admission.rejectionReasons,
        )
    }

    @Test
    fun separatelyReportsLongProxyObservabilityFailure() {
        val admission = planRadianceLongAdmission(
            evidence = longEvidence(
                validTileCount = 0,
                coveredQuadrants = 0,
                eligibleTileCount = 0,
                eligibleQuadrants = 0,
                referenceObservableTileCount = 40_000,
                currentObservableTileCount = 0,
            ),
            requirements = longRequirements(),
        )

        assertEquals(RawRadianceLongAdmissionMode.REJECTED, admission.mode)
        assertEquals(0f, admission.frameWeight, 0f)
        assertEquals(0f, admission.precisionWeightCap, 0f)
        assertFalse(
            RawRadianceLongRejectionReason.REFERENCE_PROXY_UNOBSERVABLE in
                admission.rejectionReasons,
        )
        assertTrue(
            RawRadianceLongRejectionReason.LONG_PROXY_UNOBSERVABLE in
                admission.rejectionReasons,
        )
    }

    private fun longEvidence(
        validTileCount: Int,
        coveredQuadrants: Int,
        eligibleTileCount: Int,
        eligibleQuadrants: Int,
        referenceObservableTileCount: Int = 40_000,
        currentObservableTileCount: Int = 40_000,
    ) = RawRadianceLongAdmissionEvidence(
        validTileCount = validTileCount,
        coveredQuadrants = coveredQuadrants,
        eligibleTileCount = eligibleTileCount,
        eligibleQuadrants = eligibleQuadrants,
        referenceObservableTileCount = referenceObservableTileCount,
        currentObservableTileCount = currentObservableTileCount,
    )

    private fun longRequirements() = RawRadianceLongAdmissionRequirements(
        minimumValidTiles = 64,
        minimumQuadrants = 3,
        minimumEligibleCoverage = 0.01f,
        validatedPrecisionWeightCap = 24f,
    )
}
