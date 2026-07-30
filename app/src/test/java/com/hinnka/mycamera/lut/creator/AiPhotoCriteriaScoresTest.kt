package com.hinnka.mycamera.lut.creator

import org.junit.Assert.assertEquals
import org.junit.Test

class AiPhotoCriteriaScoresTest {

    @Test
    fun weightedOverallScoreUsesEditorialCriterionWeights() {
        fun criterion(score: Int) = AiPhotoCriterion(score = score, feedback = "Evidence")

        val scores = AiPhotoCriteriaScores(
            visualImpact = criterion(90),
            originalityAndVoice = criterion(80),
            narrativeAndMeaning = criterion(70),
            intentAndCoherence = criterion(60),
            aestheticAndTechnicalExecution = criterion(50)
        )

        assertEquals(72, scores.weightedOverallScore())
    }
}
