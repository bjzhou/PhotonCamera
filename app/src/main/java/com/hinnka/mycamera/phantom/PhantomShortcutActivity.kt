package com.hinnka.mycamera.phantom

import android.app.Activity
import android.content.Intent
import android.os.Bundle
import android.os.Environment
import android.provider.MediaStore
import android.provider.Settings
import com.hinnka.mycamera.MainActivity
import com.hinnka.mycamera.data.ContentRepository
import com.hinnka.mycamera.screencapture.PhantomPipPreviewCoordinator
import kotlinx.coroutines.MainScope
import kotlinx.coroutines.flow.first
import kotlinx.coroutines.launch
import kotlinx.coroutines.runBlocking

class PhantomShortcutActivity : Activity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        val userPreferencesRepository = ContentRepository.getInstance(this).userPreferencesRepository
        runBlocking {
            val currentMode = userPreferencesRepository.userPreferences.first().phantomMode
            val newMode = !currentMode

            if (newMode && (!Settings.canDrawOverlays(this@PhantomShortcutActivity) || !Environment.isExternalStorageManager())) {
                val intent = Intent(this@PhantomShortcutActivity, MainActivity::class.java).apply {
                    flags = Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_CLEAR_TOP
                    putExtra("show_ghost_permissions", true)
                }
                startActivity(intent)
            } else {
                userPreferencesRepository.savePhantomMode(newMode)
                if (newMode) {
                    val prefs = userPreferencesRepository.userPreferences.first()
                    if (prefs.phantomPipPreview) {
                        PhantomPipPreviewCoordinator.requestStart(this@PhantomShortcutActivity)
                    }
                    if (prefs.launchCameraOnPhantomMode) {
                        try {
                            val cameraIntent = Intent(MediaStore.INTENT_ACTION_STILL_IMAGE_CAMERA).apply {
                                addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                            }
                            startActivity(cameraIntent)
                        } catch (e: Exception) {
                        }
                    }
                } else {
                    PhantomPipPreviewCoordinator.requestStop(this@PhantomShortcutActivity)
                }
            }
        }
        finish()
        overridePendingTransition(0, 0)
    }
}
