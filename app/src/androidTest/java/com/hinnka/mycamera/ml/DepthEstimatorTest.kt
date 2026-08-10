package com.hinnka.mycamera.ml

import android.graphics.Bitmap
import android.graphics.Color
import androidx.test.ext.junit.runners.AndroidJUnit4
import androidx.test.platform.app.InstrumentationRegistry
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith

@RunWith(AndroidJUnit4::class)
class DepthEstimatorTest {

    @Test
    fun testDepthEstimatorInitializationAndInference() {
        val context = InstrumentationRegistry.getInstrumentation().targetContext

        // The production model is optional and downloaded into app-private storage.
        // Instrumentation environments without a downloaded model have nothing to infer with.
        if (!DepthModelManager.isInstalled(context)) {
            assertFalse(DepthModelManager.isInstalled(context))
            return
        }

        val estimator = DepthEstimator(context)
        
        // Generate a dummy 640x480 bitmap
        val testBitmap = Bitmap.createBitmap(640, 480, Bitmap.Config.ARGB_8888)
        testBitmap.eraseColor(Color.GRAY)

        val depthMap = estimator.estimateDepth(testBitmap)
        
        assertNotNull(depthMap)
        assertEquals(518, depthMap?.width)
        assertEquals(518, depthMap?.height)
        assertEquals(518 * 518, depthMap?.values?.size)
        
        estimator.close()
    }
}
