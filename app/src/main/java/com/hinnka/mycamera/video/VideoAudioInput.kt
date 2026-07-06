package com.hinnka.mycamera.video

import android.content.Context
import android.media.AudioDeviceCallback
import android.media.AudioDeviceInfo
import android.media.AudioManager
import android.os.Build
import com.hinnka.mycamera.utils.PLog
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow

const val VIDEO_AUDIO_INPUT_AUTO = "auto"

data class VideoAudioInputOption(
    val id: String,
    val type: Int,
    val productName: String?,
    val address: String?
)

fun AudioDeviceInfo.toVideoAudioInputOption(): VideoAudioInputOption {
    return VideoAudioInputOption(
        id = toVideoAudioInputId(),
        type = type,
        productName = productName?.toString()
            ?.takeIf { it.isNotBlank() }
            ?.takeUnless { it.equals(Build.MODEL, ignoreCase = true) }
            ?.takeUnless { it.equals(Build.DEVICE, ignoreCase = true) }
            ?.takeUnless { it.equals(Build.PRODUCT, ignoreCase = true) },
        address = address.takeIf { it.isNotBlank() }
    )
}

fun AudioDeviceInfo.toVideoAudioInputId(): String {
    val stableAddress = address.takeIf { it.isNotBlank() }
    val stableName = productName?.toString()?.takeIf { it.isNotBlank() }
    return listOfNotNull(type.toString(), stableAddress, stableName).joinToString(":")
}

class VideoAudioInputManager(context: Context) {

    companion object {
        private const val TAG = "VideoAudioInputManager"
    }

    private val audioManager = context.getSystemService(AudioManager::class.java)
    private val _availableInputs = MutableStateFlow(emptyList<VideoAudioInputOption>())
    val availableInputs: StateFlow<List<VideoAudioInputOption>> = _availableInputs.asStateFlow()

    private val audioDeviceCallback = object : AudioDeviceCallback() {
        override fun onAudioDevicesAdded(addedDevices: Array<out AudioDeviceInfo>) {
            refreshAvailableInputs()
        }

        override fun onAudioDevicesRemoved(removedDevices: Array<out AudioDeviceInfo>) {
            refreshAvailableInputs()
        }
    }

    init {
        refreshAvailableInputs()
        audioManager.registerAudioDeviceCallback(audioDeviceCallback, null)
    }

    fun release() {
        audioManager.unregisterAudioDeviceCallback(audioDeviceCallback)
    }

    private fun refreshAvailableInputs() {
        val devices = audioManager.getDevices(AudioManager.GET_DEVICES_INPUTS)
            .asSequence()
            .filter { it.isSource && it.isSelectableVideoInput() }
            .map { it.toVideoAudioInputOption() }
            .distinctBy { it.id }
            .sortedWith(
                compareBy<VideoAudioInputOption> { audioInputPriority(it.type) }
                    .thenBy { it.productName.orEmpty() }
                    .thenBy { it.address.orEmpty() }
            )
            .toList()
        _availableInputs.value = devices
        PLog.d(TAG, "Audio inputs refreshed: ${devices.map { "${it.id}(${it.type})" }}")
    }

    private fun audioInputPriority(type: Int): Int {
        return when (type) {
            AudioDeviceInfo.TYPE_BUILTIN_MIC -> 0
            AudioDeviceInfo.TYPE_WIRED_HEADSET -> 1
            AudioDeviceInfo.TYPE_USB_HEADSET,
            AudioDeviceInfo.TYPE_USB_DEVICE -> 2
            AudioDeviceInfo.TYPE_BLUETOOTH_SCO -> 3
            AudioDeviceInfo.TYPE_BLE_HEADSET -> 4
            AudioDeviceInfo.TYPE_LINE_ANALOG,
            AudioDeviceInfo.TYPE_LINE_DIGITAL,
            AudioDeviceInfo.TYPE_HDMI -> 5
            else -> Int.MAX_VALUE
        }
    }
}

private fun AudioDeviceInfo.isSelectableVideoInput(): Boolean {
    return when (type) {
        AudioDeviceInfo.TYPE_BUILTIN_MIC,
        AudioDeviceInfo.TYPE_WIRED_HEADSET,
        AudioDeviceInfo.TYPE_USB_HEADSET,
        AudioDeviceInfo.TYPE_USB_DEVICE,
        AudioDeviceInfo.TYPE_BLUETOOTH_SCO,
        AudioDeviceInfo.TYPE_BLE_HEADSET,
        AudioDeviceInfo.TYPE_LINE_ANALOG,
        AudioDeviceInfo.TYPE_LINE_DIGITAL,
        AudioDeviceInfo.TYPE_HDMI -> true
        else -> false
    }
}
