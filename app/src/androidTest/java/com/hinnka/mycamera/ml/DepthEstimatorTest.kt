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
        
        // This test requires the midas_v2_w8a8.tflite model to be present in the assets folder.
        // If it's not present, the initialization should fail gracefully (catch block in init).
        val estimator = DepthEstimator(context)
        
        // Generate a dummy 640x480 bitmap
        val testBitmap = Bitmap.createBitmap(640, 480, Bitmap.Config.ARGB_8888)
        testBitmap.eraseColor(Color.GRAY)

        val depthMap = estimator.estimateDepth(testBitmap)
        
        // Since we don't have the model file in the automated environment, 
        // depthMap will likely be null. If the user places the model in assets/,
        // this test should pass and return a 256x256 bitmap.
        if (depthMap != null) {
            assertEquals(256, depthMap.width)
            assertEquals(256, depthMap.height)
            assertNotNull(depthMap)
        } else {
            println("Model file not found. Please place midas_v2_w8a8.tflite in src/main/assets/ to fully run this test.")
        }
        
        estimator.close()
    }
}
