package com.hinnka.mycamera.phantom

import android.app.PendingIntent
import android.content.Intent
import android.provider.MediaStore
import android.service.quicksettings.Tile
import android.service.quicksettings.TileService
import androidx.core.service.quicksettings.PendingIntentActivityWrapper
import androidx.core.service.quicksettings.TileServiceCompat
import com.hinnka.mycamera.MainActivity
import com.hinnka.mycamera.data.ContentRepository
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.Job
import kotlinx.coroutines.flow.first
import kotlinx.coroutines.launch

class PhantomTileService : TileService() {

    private val serviceScope = CoroutineScope(Dispatchers.Main + Job())

    override fun onStartListening() {
        super.onStartListening()
        val userPreferencesRepository = ContentRepository.getInstance(this).userPreferencesRepository
        serviceScope.launch {
            val phantomMode = userPreferencesRepository.userPreferences.first().phantomMode
            updateTileState(phantomMode)
        }
    }

    override fun onClick() {
        super.onClick()
        val userPreferencesRepository = ContentRepository.getInstance(this).userPreferencesRepository
        serviceScope.launch {
            val currentMode = userPreferencesRepository.userPreferences.first().phantomMode
            val newMode = !currentMode

            if (newMode && (!android.provider.Settings.canDrawOverlays(this@PhantomTileService) || !android.os.Environment.isExternalStorageManager())) {
                val intent = Intent(this@PhantomTileService, MainActivity::class.java).apply {
                    flags = Intent.FLAG_ACTIVITY_NEW_TASK
                    putExtra("show_ghost_permissions", true)
                }
                TileServiceCompat.startActivityAndCollapse(
                    this@PhantomTileService,
                    PendingIntentActivityWrapper(
                        this@PhantomTileService,
                        0,
                        intent,
                        PendingIntent.FLAG_UPDATE_CURRENT,
                        false
                    )
                )
                return@launch
            }

            userPreferencesRepository.savePhantomMode(newMode)
            updateTileState(newMode)

            if (newMode) {
                val prefs = userPreferencesRepository.userPreferences.first()
                if (prefs.launchCameraOnPhantomMode) {
                    val cameraIntent = Intent(MediaStore.INTENT_ACTION_STILL_IMAGE_CAMERA).apply {
                        flags = Intent.FLAG_ACTIVITY_NEW_TASK
                    }
                    TileServiceCompat.startActivityAndCollapse(
                        this@PhantomTileService,
                        PendingIntentActivityWrapper(
                            this@PhantomTileService,
                            0,
                            cameraIntent,
                            PendingIntent.FLAG_UPDATE_CURRENT,
                            false
                        )
                    )
                }
            }
        }
    }

    private fun updateTileState(isActive: Boolean) {
        val tile = qsTile ?: return
        tile.state = if (isActive) Tile.STATE_ACTIVE else Tile.STATE_INACTIVE
        tile.updateTile()
    }
}
