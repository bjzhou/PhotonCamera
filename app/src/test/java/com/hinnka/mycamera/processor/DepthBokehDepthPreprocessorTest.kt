package com.hinnka.mycamera.processor

import com.hinnka.mycamera.ml.RelativeDepthMap
import com.hinnka.mycamera.ml.SubjectMask
import com.hinnka.mycamera.ml.SubjectMaskRegion
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Test

class DepthBokehDepthPreprocessorTest {
    @Test
    fun refocusingOntoBackgroundPreservesScenePolarity() {
        val depth = RelativeDepthMap(64, 48, FloatArray(64 * 48) { index ->
            if (index % 64 in 16..47 && index / 64 in 12..35) 0.9f else 0.1f
        })
        val mask = SubjectMask(16, 16, FloatArray(16 * 16) { index ->
            if (index % 16 in 4..11 && index / 16 in 4..11) 1f else 0f
        })

        val subjectFocus = DepthBokehDepthPreprocessor.prepare(depth, 0.5f, 0.5f, mask)
        val backgroundFocus = DepthBokehDepthPreprocessor.prepare(depth, 0.1f, 0.1f, mask)

        assertFalse(subjectFocus.inverted)
        assertFalse(backgroundFocus.inverted)
        assertEquals(0.9f, subjectFocus.focusDepth, 0.001f)
        assertEquals(0.1f, backgroundFocus.focusDepth, 0.001f)
        assertEquals(subjectFocus.normalScore, backgroundFocus.normalScore, 0f)
        assertEquals(subjectFocus.invertedScore, backgroundFocus.invertedScore, 0f)
    }

    @Test
    fun croppedMaskUsesImageCoordinatesAndKeepsPolarityWhenRefocusing() {
        val depth = RelativeDepthMap(100, 80, FloatArray(100 * 80) { index ->
            if (index % 100 in 35..64 && index / 100 in 28..51) 0.85f else 0.15f
        })
        val mask = SubjectMask(32, 32, FloatArray(32 * 32) { index ->
            if (index % 32 in 4..27 && index / 32 in 4..27) 1f else 0f
        }, SubjectMaskRegion(0.3f, 0.3f, 0.7f, 0.7f))
        val subject = DepthBokehDepthPreprocessor.prepare(depth, 0.5f, 0.5f, mask)
        val background = DepthBokehDepthPreprocessor.prepare(depth, 0.1f, 0.1f, mask)
        assertFalse(subject.inverted)
        assertFalse(background.inverted)
        assertEquals(0.85f, subject.focusDepth, 0.001f)
        assertEquals(0.15f, background.focusDepth, 0.001f)
        assertEquals(subject.normalScore, background.normalScore, 0f)
        assertEquals(subject.invertedScore, background.invertedScore, 0f)
    }
}
