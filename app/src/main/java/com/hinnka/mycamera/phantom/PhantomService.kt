package com.hinnka.mycamera.phantom

import android.content.Context
import android.content.Intent
import android.database.ContentObserver
import android.graphics.Bitmap
import android.graphics.PixelFormat
import android.net.Uri
import android.os.Environment
import android.os.Handler
import android.os.Looper
import android.provider.MediaStore
import android.provider.OpenableColumns
import android.provider.Settings
import android.view.Gravity
import android.view.WindowManager
import androidx.compose.foundation.Image
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.gestures.detectDragGestures
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.AutoAwesome
import androidx.compose.material.icons.filled.Stop
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.Recomposer
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.asImageBitmap
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.layout.onSizeChanged
import androidx.compose.ui.platform.AndroidUiDispatcher
import androidx.compose.ui.platform.ComposeView
import androidx.compose.ui.platform.ViewCompositionStrategy
import androidx.compose.ui.platform.compositionContext
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.unit.dp
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleEventObserver
import androidx.lifecycle.LifecycleOwner
import androidx.lifecycle.LifecycleRegistry
import androidx.lifecycle.ProcessLifecycleOwner
import androidx.lifecycle.lifecycleScope
import androidx.lifecycle.setViewTreeLifecycleOwner
import androidx.savedstate.SavedStateRegistry
import androidx.savedstate.SavedStateRegistryController
import androidx.savedstate.SavedStateRegistryOwner
import androidx.savedstate.setViewTreeSavedStateRegistryOwner
import com.hinnka.mycamera.MainActivity
import com.hinnka.mycamera.R
import com.hinnka.mycamera.Routes
import com.hinnka.mycamera.data.ContentRepository
import com.hinnka.mycamera.data.UserPreferencesRepository
import com.hinnka.mycamera.gallery.PhotoManager
import com.hinnka.mycamera.utils.PLog
import kotlinx.coroutines.Deferred
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.async
import kotlinx.coroutines.delay
import kotlinx.coroutines.flow.firstOrNull
import kotlinx.coroutines.flow.map
import kotlinx.coroutines.isActive
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import java.io.File
import kotlin.use

class PhantomService(val context: Context) : LifecycleOwner, SavedStateRegistryOwner {

    private companion object {
        const val TAG = "GhostService"
        const val MIN_IMPORT_SIZE = 1024 * 1024L
    }

    data class ProcessingInfo(
        val uri: Uri,
        val path: String,
        val photoId: String,
        val thumbnail: Bitmap? = null,
        val size: Long
    )

    private var registry = LifecycleRegistry(this)

    override val lifecycle: Lifecycle
        get() = registry

    private lateinit var windowManager: WindowManager
    private var composeView: ComposeView? = null
    private lateinit var windowParams: WindowManager.LayoutParams
    private var isWindowShown = false
    private var isObserverRegistered = false

    private var savedStateRegistryController = SavedStateRegistryController.create(this)

    override val savedStateRegistry: SavedStateRegistry
        get() = savedStateRegistryController.savedStateRegistry

    private val userPreferencesRepository = UserPreferencesRepository(context)

    private val processPhotoTaskMap = mutableMapOf<String, Deferred<*>>()

    private var processingInfo: ProcessingInfo? by mutableStateOf(null)
    private var expanded by mutableStateOf(false)

    private val contentObserver = object : ContentObserver(Handler(Looper.getMainLooper())) {
        override fun onChange(selfChange: Boolean, uri: Uri?) {
            super.onChange(selfChange, uri)
            uri ?: return
            if (selfChange) return

            val projection = arrayOf(
                OpenableColumns.DISPLAY_NAME,
                MediaStore.MediaColumns.DATA,
                MediaStore.MediaColumns.SIZE,
                MediaStore.MediaColumns.IS_PENDING,
                MediaStore.MediaColumns.IS_TRASHED,
                MediaStore.MediaColumns.RELATIVE_PATH,
            )

            try {
                context.contentResolver.query(uri, projection, null, null, null)?.use { cursor ->
                    if (!cursor.moveToFirst()) return

                    val nameIndex = cursor.getColumnIndex(OpenableColumns.DISPLAY_NAME)
                    val pendingIndex = cursor.getColumnIndex(MediaStore.Images.Media.IS_PENDING)
                    val sizeIndex = cursor.getColumnIndex(MediaStore.MediaColumns.SIZE)
                    val dataIndex = cursor.getColumnIndex(MediaStore.MediaColumns.DATA)
                    val isTrashedIndex = cursor.getColumnIndex(MediaStore.MediaColumns.IS_TRASHED)
                    val relativePathIndex = cursor.getColumnIndex(MediaStore.MediaColumns.RELATIVE_PATH)

                    val name = if (nameIndex != -1) cursor.getString(nameIndex) else "Unknown"
                    val isPending = if (pendingIndex != -1) cursor.getInt(pendingIndex) else 0
                    val size = if (sizeIndex != -1) cursor.getLong(sizeIndex) else 0L
                    val data = if (dataIndex != -1) cursor.getString(dataIndex) else ""
                    val isTrashed = if (isTrashedIndex != -1) cursor.getInt(isTrashedIndex) else 0
                    val relativePath = if (relativePathIndex != -1) cursor.getString(relativePathIndex) else ""

                    if (isPending != 0) return
                    if (isTrashed != 0) return
                    if (size <= MIN_IMPORT_SIZE) return
                    if (!relativePath.contains("DCIM/Camera", ignoreCase = true)) return

                    val path = data.ifEmpty {
                        val dir = File(Environment.getExternalStorageDirectory(), relativePath)
                        File(dir, name).absolutePath
                    }
                    PLog.d(TAG, "Content changed detected: path=$path size=$size")
                    processPhotoTaskMap[path]?.cancel()
                    processPhotoTaskMap[path] = lifecycleScope.async {
                        delay(200L)
                        if (isActive) {
                            // 在延迟后再次检查，此时上一个任务可能已经更新了 processingInfo
                            if (processingInfo?.path == path && processingInfo?.size == size) {
                                PLog.d(TAG, "Ignore change for $path as it matches current state (size $size)")
                                return@async
                            }
                            photoProcessTask(uri, path)
                            processPhotoTaskMap.remove(path)
                        }
                    }
                }
            } catch (e: Exception) {
                PLog.e(TAG, "Error querying content: $uri", e)
            }
        }
    }

    init {
        savedStateRegistryController.performRestore(null)
        registry.handleLifecycleEvent(Lifecycle.Event.ON_CREATE)
    }

    fun start() {
        if (registry.currentState == Lifecycle.State.DESTROYED) {
            registry = LifecycleRegistry(this)
            savedStateRegistryController = SavedStateRegistryController.create(this)
            savedStateRegistryController.performRestore(null)
            registry.handleLifecycleEvent(Lifecycle.Event.ON_CREATE)
        }
        registry.handleLifecycleEvent(Lifecycle.Event.ON_START)
        registry.handleLifecycleEvent(Lifecycle.Event.ON_RESUME)

        windowManager = context.getSystemService(Context.WINDOW_SERVICE) as WindowManager
        initWindowParams()
        initComposeView()

        ProcessLifecycleOwner.get().lifecycle.addObserver(appLifecycleObserver)

        if (!ProcessLifecycleOwner.get().lifecycle.currentState.isAtLeast(Lifecycle.State.STARTED)) {
            showFloatingWindow()
            registerObserver()
        }

        lifecycleScope.launch {
            userPreferencesRepository.userPreferences.map { it.phantomButtonHidden }.collect { hidden ->
                if (isWindowShown) {
                    updateWindowParams(hidden)
                    composeView?.let { windowManager.updateViewLayout(it, windowParams) }
                } else if (!ProcessLifecycleOwner.get().lifecycle.currentState.isAtLeast(Lifecycle.State.STARTED)) {
                    showFloatingWindow()
                }
            }
        }
    }

    private val appLifecycleObserver = LifecycleEventObserver { _, event ->
        when (event) {
            Lifecycle.Event.ON_START -> {
                removeFloatingWindow()
                unregisterObserver()
            }

            Lifecycle.Event.ON_STOP -> {
                showFloatingWindow()
                registerObserver()
            }

            else -> {}
        }
    }

    private fun registerObserver() {
        if (!isObserverRegistered) {
            context.contentResolver.registerContentObserver(
                MediaStore.Images.Media.EXTERNAL_CONTENT_URI,
                true,
                contentObserver
            )
            isObserverRegistered = true
        }
    }

    private fun unregisterObserver() {
        if (isObserverRegistered) {
            context.contentResolver.unregisterContentObserver(contentObserver)
            isObserverRegistered = false
        }
    }

    private suspend fun photoProcessTask(uri: Uri, path: String) = withContext(Dispatchers.IO) {
        val userPreferencesRepository = ContentRepository.getInstance(context).userPreferencesRepository
        val availableLutList = ContentRepository.getInstance(context).getAvailableLuts()
        val photoProcessor = ContentRepository.getInstance(context).photoProcessor
        val lutId = userPreferencesRepository.userPreferences.map { it.lutId }.firstOrNull()
            ?: availableLutList.firstOrNull { it.isDefault }?.id
        val existingPhotoId = if (processingInfo?.uri == uri) processingInfo?.photoId else null
        val photoId = PhotoManager.importPhoto(context, uri, lutId, existingPhotoId, uri.toString()) ?: run {
            return@withContext
        }
        val metadata = PhotoManager.loadMetadata(context, photoId) ?: run {
            return@withContext
        }
        if (!isActive) return@withContext
        val result = PhotoManager.updateExternalPhoto(context, photoId, uri, path, photoProcessor, metadata)
        if (result != null) {
            this@PhantomService.processingInfo = result
//            PLog.d(TAG, "Processing info updated: $result")
        }
        delay(200L)
    }

    private fun initWindowParams() {
        val displayMetrics = context.resources.displayMetrics
        windowParams = WindowManager.LayoutParams(
            WindowManager.LayoutParams.WRAP_CONTENT,
            WindowManager.LayoutParams.WRAP_CONTENT,
            WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY,
            WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE,
            PixelFormat.TRANSLUCENT
        ).apply {
            gravity = Gravity.TOP or Gravity.END
            x = 0
            y = displayMetrics.heightPixels / 3
        }
    }

    private fun updateWindowParams(hidden: Boolean) {
        if (hidden) {
            windowParams.width = 1
            windowParams.height = 1
            windowParams.flags = windowParams.flags or WindowManager.LayoutParams.FLAG_NOT_TOUCHABLE
            windowParams.alpha = 0f
        } else {
            windowParams.width = WindowManager.LayoutParams.WRAP_CONTENT
            windowParams.height = WindowManager.LayoutParams.WRAP_CONTENT
            windowParams.flags = windowParams.flags and WindowManager.LayoutParams.FLAG_NOT_TOUCHABLE.inv()
            windowParams.alpha = 1f
        }
    }

    private fun initComposeView() {
        composeView = ComposeView(context).apply {
            setViewCompositionStrategy(ViewCompositionStrategy.DisposeOnViewTreeLifecycleDestroyed)
            setContent {
                val phantomButtonHiddenFlow = remember {
                    userPreferencesRepository.userPreferences.map { it.phantomButtonHidden }
                }
                val phantomButtonHidden by phantomButtonHiddenFlow.collectAsState(initial = false)

                if (phantomButtonHidden) return@setContent

                val scope = rememberCoroutineScope()
                val processingInfo = this@PhantomService.processingInfo
                LaunchedEffect(expanded, processingInfo) {
                    if (expanded) {
                        delay(2000L)
                        expanded = false
                    }
                }

                Row(
                    modifier = Modifier
                        .padding(4.dp)
                        .onSizeChanged {
                            composeView?.let { view ->
                                if (view.isAttachedToWindow) {
                                    windowManager.updateViewLayout(view, windowParams)
                                }
                            }
                        }
                        .background(Color.Black.copy(alpha = 0.6f), RoundedCornerShape(24.dp))
                        .padding(4.dp)
                        .pointerInput(Unit) {
                            detectDragGestures(
                                onDrag = { change, dragAmount ->
                                    change.consume()
                                    windowParams.y += dragAmount.y.toInt()
                                    windowManager.updateViewLayout(this@apply, windowParams)
                                }
                            )
                        }
                        .clip(RoundedCornerShape(24.dp))
                        .clickable {
                            if (!expanded) {
                                expanded = true
                            } else {
                                context.startActivity(
                                    Intent(
                                        context,
                                        MainActivity::class.java
                                    ).apply {
                                        flags = Intent.FLAG_ACTIVITY_NEW_TASK
                                        if (processingInfo?.thumbnail != null) {
                                            val photoId = processingInfo?.photoId
                                            putExtra("photoId", photoId)
                                            putExtra("route", Routes.photoDetail(photoId = photoId))
                                        }
                                    })
                            }
                        },
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    if (processingInfo?.thumbnail != null) {
                        Image(
                            bitmap = processingInfo!!.thumbnail!!.asImageBitmap(),
                            contentDescription = stringResource(R.string.app_name),
                            modifier = Modifier
                                .size(40.dp)
                                .clip(CircleShape)
                        )
                    } else {
                        Image(
                            painter = painterResource(id = R.mipmap.ic_launcher_round),
                            contentDescription = stringResource(R.string.app_name),
                            modifier = Modifier
                                .size(40.dp)
                                .clip(CircleShape)
                        )
                    }

                    if (expanded) {
                        Spacer(modifier = Modifier.width(8.dp))
                        IconButton(onClick = {
                            context.startActivity(
                                Intent(context, MainActivity::class.java).apply {
                                    flags = Intent.FLAG_ACTIVITY_NEW_TASK
                                    putExtra("route", Routes.FILTER_MANAGEMENT)
                                })
                        }) {
                            Icon(
                                imageVector = Icons.Default.AutoAwesome,
                                contentDescription = "LUT",
                                tint = Color.White
                            )
                        }
                        Spacer(modifier = Modifier.width(8.dp))
                        IconButton(onClick = {
                            scope.launch {
                                userPreferencesRepository.savePhantomMode(false)
                                stop()
                            }
                        }) {
                            Icon(
                                imageVector = Icons.Default.Stop,
                                contentDescription = "Stop",
                                tint = Color.Red
                            )
                        }
                    }
                }
            }
        }.also { view ->
            view.setViewTreeLifecycleOwner(this)
            view.setViewTreeSavedStateRegistryOwner(this)

            // 使用 AndroidUiDispatcher.Main 提供的 MonotonicFrameClock 来驱动重组
            val recomposer = Recomposer(lifecycleScope.coroutineContext + AndroidUiDispatcher.Main)
            view.compositionContext = recomposer
            lifecycleScope.launch(AndroidUiDispatcher.Main) {
                recomposer.runRecomposeAndApplyChanges()
            }
        }
    }

    private fun showFloatingWindow() {
        if (!Settings.canDrawOverlays(context)) return
        if (isWindowShown) return
        isWindowShown = true
        lifecycleScope.launch {
            val hidden = userPreferencesRepository.userPreferences.map { it.phantomButtonHidden }.firstOrNull() ?: false
            updateWindowParams(hidden)
            composeView?.let {
                try {
                    windowManager.addView(it, windowParams)
                } catch (e: Exception) {
                    isWindowShown = false
                    PLog.e(TAG, "Error adding floating window", e)
                }
            }
        }
    }

    private fun removeFloatingWindow() {
        if (isWindowShown) {
            composeView?.let { windowManager.removeView(it) }
            isWindowShown = false
            expanded = false
        }
    }

    fun stop() {
        registry.handleLifecycleEvent(Lifecycle.Event.ON_PAUSE)
        registry.handleLifecycleEvent(Lifecycle.Event.ON_STOP)
        registry.handleLifecycleEvent(Lifecycle.Event.ON_DESTROY)

        ProcessLifecycleOwner.get().lifecycle.removeObserver(appLifecycleObserver)
        removeFloatingWindow()
        unregisterObserver()
        composeView = null
    }
}
