package com.hinnka.mycamera.screencapture

import android.app.Activity
import android.content.Context
import android.content.Intent
import android.media.projection.MediaProjectionManager
import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.result.contract.ActivityResultContracts
import com.hinnka.mycamera.utils.PLog

class ScreenCapturePermissionActivity : ComponentActivity() {

    private val projectionManager by lazy {
        getSystemService(Context.MEDIA_PROJECTION_SERVICE) as MediaProjectionManager
    }

    private val capturePermissionLauncher = registerForActivityResult(
        ActivityResultContracts.StartActivityForResult()
    ) { result ->
        val data = result.data
        if (result.resultCode == Activity.RESULT_OK && data != null) {
            ScreenCaptureProjectionStore.save(result.resultCode, data)
            startActivity(Intent(this, ScreenCapturePipActivity::class.java))
        } else {
            PLog.w(TAG, "Screen capture permission denied or empty result data")
        }
        finishWithoutAnimation()
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        if (savedInstanceState == null) {
            capturePermissionLauncher.launch(projectionManager.createScreenCaptureIntent())
        }
    }

    private fun finishWithoutAnimation() {
        finish()
        overridePendingTransition(0, 0)
    }

    companion object {
        private const val TAG = "ScreenCapturePermission"
    }
}
