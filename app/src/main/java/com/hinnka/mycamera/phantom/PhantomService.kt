package com.hinnka.mycamera.phantom

import android.content.ContentValues
import android.content.Context
import android.content.Intent
import android.database.ContentObserver
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.graphics.Canvas
import android.graphics.Paint
import android.graphics.PixelFormat
import android.graphics.Rect
import android.graphics.RectF
import android.hardware.display.DisplayManager
import android.net.Uri
import android.os.Build
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
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.heightIn
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Close
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
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
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
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
import com.hinnka.mycamera.MyCameraApplication
import com.hinnka.mycamera.R
import com.hinnka.mycamera.Routes
import com.hinnka.mycamera.data.ContentRepository
import com.hinnka.mycamera.screencapture.PhantomPipPreviewCoordinator
import com.hinnka.mycamera.screencapture.ScreenCaptureForegroundServiceState
import com.hinnka.mycamera.screencapture.ScreenCapturePipState
import com.hinnka.mycamera.screencapture.ScreenCaptureRenderConfigStore
import com.hinnka.mycamera.data.UserPreferencesRepository
import com.hinnka.mycamera.gallery.ExifWriter
import com.hinnka.mycamera.gallery.GalleryManager
import com.hinnka.mycamera.gallery.GalleryManager.loadMetadata
import com.hinnka.mycamera.gallery.GalleryManager.saveMetadata
import com.hinnka.mycamera.livephoto.GoogleLivePhotoCreator
import com.hinnka.mycamera.livephoto.MotionPhotoWriter
import com.hinnka.mycamera.livephoto.VivoLivePhotoCreator
import com.hinnka.mycamera.lut.BaselineColorCorrectionTarget
import com.hinnka.mycamera.model.ColorPaletteMapper
import com.hinnka.mycamera.model.ColorPaletteState
import com.hinnka.mycamera.model.ColorRecipeParams
import com.hinnka.mycamera.model.EffectParams
import com.hinnka.mycamera.ui.camera.LutIntensitySlider
import com.hinnka.mycamera.ui.components.ColorRecipePanel
import com.hinnka.mycamera.ui.components.CurveChannel
import com.hinnka.mycamera.ui.components.EffectsPanel
import com.hinnka.mycamera.ui.components.LutSelectorWithRecipeAction
import com.hinnka.mycamera.utils.PLog
import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.delay
import kotlinx.coroutines.flow.combine
import kotlinx.coroutines.flow.distinctUntilChanged
import kotlinx.coroutines.flow.firstOrNull
import kotlinx.coroutines.flow.map
import kotlinx.coroutines.isActive
import kotlinx.coroutines.Job
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import java.io.File
import java.io.FileOutputStream
import kotlin.io.copyTo
import kotlin.io.inputStream
import kotlin.math.max
import kotlin.math.min
import kotlin.use
import com.hinnka.mycamera.ui.icons.AppIcons

class PhantomService(val context: Context) : LifecycleOwner, SavedStateRegistryOwner {

    private companion object {
        const val TAG = "GhostService"
        const val MIN_IMPORT_SIZE = 1024 * 1024L
        const val MIN_PHANTOM_SHORT_SIDE = 1080
    }

    private data class ImageResolution(
        val width: Int,
        val height: Int
    ) {
        val shortSide: Int = min(width, height)
    }

    data class ProcessingInfo(
        val uri: Uri,
        val name: String,
        val relativePath: String,
        val photoId: String,
        val thumbnail: Bitmap? = null,
        val size: Long,
        val newUri: Uri? = null,
        val newName: String = "",
        val newSize: Long = 0L
    )

    private var registry = LifecycleRegistry(this)

    override val lifecycle: Lifecycle
        get() = registry

    private val overlayContext: Context by lazy { createOverlayContext() }
    private lateinit var windowManager: WindowManager
    private var composeView: ComposeView? = null
    private lateinit var windowParams: WindowManager.LayoutParams
    private var isWindowShown = false
    private var isObserverRegistered = false
    private var pipStateJob: Job? = null

    private var savedStateRegistryController = SavedStateRegistryController.create(this)

    override val savedStateRegistry: SavedStateRegistry
        get() = savedStateRegistryController.savedStateRegistry

    private val userPreferencesRepository = UserPreferencesRepository(context)

    private val processPhotoTaskMap = mutableMapOf<String, Job>()
    private val activePhotoProcessPaths = mutableSetOf<String>()

    private var processingInfo: ProcessingInfo? by mutableStateOf(null)
    private var expanded by mutableStateOf(false)
    private var showFilterPicker by mutableStateOf(false)
    private var showRecipeEditor by mutableStateOf(false)
    private var showEffectsEditor by mutableStateOf(false)
    private var floatingWindowYBeforeEditor: Int? = null

    private val contentObserver = object : ContentObserver(Handler(Looper.getMainLooper())) {
        override fun onChange(selfChange: Boolean, uri: Uri?) {
            super.onChange(selfChange, uri)
            uri ?: return
            if (selfChange) return

            val projection = arrayOf(
                OpenableColumns.DISPLAY_NAME,
                MediaStore.MediaColumns.DATA,
                MediaStore.MediaColumns.SIZE,
                MediaStore.MediaColumns.DATE_TAKEN,
                MediaStore.MediaColumns.IS_PENDING,
                MediaStore.MediaColumns.IS_TRASHED,
                MediaStore.MediaColumns.RELATIVE_PATH,
                MediaStore.MediaColumns.WIDTH,
                MediaStore.MediaColumns.HEIGHT,
            )

            try {
                context.contentResolver.query(uri, projection, null, null, null)?.use { cursor ->
                    if (!cursor.moveToFirst()) return

                    val nameIndex = cursor.getColumnIndex(OpenableColumns.DISPLAY_NAME)
                    val pendingIndex = cursor.getColumnIndex(MediaStore.Images.Media.IS_PENDING)
                    val sizeIndex = cursor.getColumnIndex(MediaStore.MediaColumns.SIZE)
                    val dateTakenIndex = cursor.getColumnIndex(MediaStore.MediaColumns.DATE_TAKEN)
                    val dataIndex = cursor.getColumnIndex(MediaStore.MediaColumns.DATA)
                    val isTrashedIndex = cursor.getColumnIndex(MediaStore.MediaColumns.IS_TRASHED)
                    val relativePathIndex =
                        cursor.getColumnIndex(MediaStore.MediaColumns.RELATIVE_PATH)
                    val widthIndex = cursor.getColumnIndex(MediaStore.MediaColumns.WIDTH)
                    val heightIndex = cursor.getColumnIndex(MediaStore.MediaColumns.HEIGHT)

                    val name = if (nameIndex != -1) cursor.getString(nameIndex) else "Unknown"
                    val isPending = if (pendingIndex != -1) cursor.getInt(pendingIndex) else 0
                    val size = if (sizeIndex != -1) cursor.getLong(sizeIndex) else 0L
                    val dateTaken = if (dateTakenIndex != -1) cursor.getLong(dateTakenIndex) else 0L
                    val data = if (dataIndex != -1) cursor.getString(dataIndex) else ""
                    val isTrashed = if (isTrashedIndex != -1) cursor.getInt(isTrashedIndex) else 0
                    val relativePath =
                        if (relativePathIndex != -1) cursor.getString(relativePathIndex) else ""
                    val width = if (widthIndex != -1) cursor.getInt(widthIndex) else 0
                    val height = if (heightIndex != -1) cursor.getInt(heightIndex) else 0

                    if (isPending != 0) return
                    if (isTrashed != 0) return
                    if (size <= MIN_IMPORT_SIZE) return
                    if (dateTaken < System.currentTimeMillis() - 300 * 1000L) return
                    if (!relativePath.contains(
                            "DCIM/Camera",
                            ignoreCase = true
                        ) && !relativePath.contains("DCIM/100IMAGE", ignoreCase = true)
                    ) return
                    if (name.startsWith("PhotonCamera")) return

                    val path = data.ifEmpty {
                        val dir = File(Environment.getExternalStorageDirectory(), relativePath)
                        File(dir, name).absolutePath
                    }
                    PLog.d(
                        TAG,
                        "Content changed detected: ${uri.lastPathSegment} $name size=$size resolution=${width}x${height}"
                    )
                    if (activePhotoProcessPaths.contains(path)) {
                        PLog.d(TAG, "Ignore change for $path because phantom export is already running")
                        return
                    }
                    processPhotoTaskMap[path]?.cancel()
                    processPhotoTaskMap[path] = lifecycleScope.launch {
                        var exportStarted = false
                        try {
                            delay(200L)
                            if (!isActive) return@launch

                            val resolution = withContext(Dispatchers.IO) {
                                resolveImageResolution(uri, width, height)
                            }
                            if (!isActive) return@launch
                            if (resolution != null && resolution.shortSide <= MIN_PHANTOM_SHORT_SIDE) {
                                PLog.d(
                                    TAG,
                                    "Ignore change for $path because short side ${resolution.shortSide}px <= ${MIN_PHANTOM_SHORT_SIDE}px (${resolution.width}x${resolution.height})"
                                )
                                return@launch
                            }

                            // 在延迟后再次检查，此时上一个任务可能已经更新了 processingInfo
                            val info = processingInfo
                            if (info != null
                                && info.relativePath == relativePath
                                && info.name == name
                                && info.size >= size
                            ) {
                                PLog.d(TAG, "Ignore change for $path as it matches current state (size $size)")
                                return@launch
                            }
                            if (info != null
                                && info.relativePath == relativePath
                                && info.newName == name
                                && info.newSize >= size
                            ) {
                                PLog.d(TAG, "Ignore change for $path as it matches current state (size $size)")
                                return@launch
                            }

                            activePhotoProcessPaths += path
                            exportStarted = true
                            photoProcessTask(uri, name, size, relativePath)
                        } finally {
                            if (exportStarted) {
                                activePhotoProcessPaths -= path
                            }
                            processPhotoTaskMap.remove(path)
                        }
                    }
                }
            } catch (e: Exception) {
                PLog.e(TAG, "Error querying content: $uri", e)
            }
        }
    }

    private fun resolveImageResolution(
        uri: Uri,
        mediaStoreWidth: Int,
        mediaStoreHeight: Int
    ): ImageResolution? {
        if (mediaStoreWidth > 0 && mediaStoreHeight > 0) {
            return ImageResolution(mediaStoreWidth, mediaStoreHeight)
        }

        return try {
            val options = BitmapFactory.Options().apply {
                inJustDecodeBounds = true
            }
            context.contentResolver.openInputStream(uri)?.use { inputStream ->
                BitmapFactory.decodeStream(inputStream, null, options)
            }
            if (options.outWidth > 0 && options.outHeight > 0) {
                ImageResolution(options.outWidth, options.outHeight)
            } else {
                PLog.d(TAG, "Image resolution unavailable for $uri")
                null
            }
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to read image resolution: $uri", e)
            null
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

        windowManager = overlayContext.getSystemService(Context.WINDOW_SERVICE) as WindowManager
        initWindowParams()
        initComposeView()
        ProcessLifecycleOwner.get().lifecycle.addObserver(appLifecycleObserver)
        pipStateJob?.cancel()
        pipStateJob = lifecycleScope.launch {
            ScreenCapturePipState.isInPipMode.collect {
                syncWindowAndObserver()
            }
        }

        syncWindowAndObserver()

        lifecycleScope.launch {
            userPreferencesRepository.userPreferences
                .map { it.phantomPipPreview }
                .distinctUntilChanged()
                .collect { enable ->
                    if (enable) {
                        val captureAlreadyRunning =
                            ScreenCapturePipState.isInPipMode.value || ScreenCaptureForegroundServiceState.isRunning.value
                        if (!captureAlreadyRunning) {
                            PhantomPipPreviewCoordinator.requestStart(context)
                        }
                    } else {
                        PhantomPipPreviewCoordinator.requestStop(context)
                    }
                }
        }

        lifecycleScope.launch {
            userPreferencesRepository.userPreferences
                .map { it.phantomButtonHidden }
                .distinctUntilChanged()
                .collect { hidden ->
                    if (isWindowShown) {
                        updateWindowParams(hidden)
                        composeView?.let { windowManager.updateViewLayout(it, windowParams) }
                    } else if (shouldTreatAppAsStopped()) {
                        showFloatingWindow()
                    }
                }
        }
    }

    private val appLifecycleObserver = LifecycleEventObserver { _, event ->
        when (event) {
            Lifecycle.Event.ON_START -> {
                syncWindowAndObserver()
            }

            Lifecycle.Event.ON_STOP -> {
                syncWindowAndObserver()
            }

            else -> {}
        }
    }

    private fun shouldTreatAppAsStopped(): Boolean {
        return ScreenCapturePipState.isInPipMode.value ||
            !ProcessLifecycleOwner.get().lifecycle.currentState.isAtLeast(Lifecycle.State.STARTED)
    }

    private fun syncWindowAndObserver() {
        if (shouldTreatAppAsStopped()) {
            showFloatingWindow()
            registerObserver()
        } else {
            removeFloatingWindow()
            unregisterObserver()
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

    private suspend fun photoProcessTask(
        uri: Uri,
        name: String,
        size: Long,
        relativePath: String
    ) = withContext(Dispatchers.IO) {
        var shouldNotifyGallery = false
        val userPreferencesRepository =
            ContentRepository.getInstance(context).userPreferencesRepository
        val availableLutList = ContentRepository.getInstance(context).getAvailableLuts()
        val photoProcessor = ContentRepository.getInstance(context).photoProcessor
        val preferences = userPreferencesRepository.userPreferences.firstOrNull()
        val lutId = preferences?.lutId
            ?: availableLutList.firstOrNull { it.isDefault }?.id
        val saveAsNew = preferences?.phantomSaveAsNew ?: false
        val computationalAperture = preferences?.defaultVirtualAperture?.let { if (it > 0f) it else null }
        val existingPhotoId = if (processingInfo?.uri == uri) processingInfo?.photoId else null
        val photoId =
            GalleryManager.importPhoto(context, uri, lutId, computationalAperture, existingPhotoId) ?: run {
                return@withContext
        }
        val phantomBaselineLutId = preferences?.phantomBaselineLutId
        val baselineTarget = if (phantomBaselineLutId != null) BaselineColorCorrectionTarget.PHANTOM else null
        val baselineLutId = phantomBaselineLutId
        val baselineColorRecipeParams = phantomBaselineLutId?.let {
            ContentRepository.getInstance(context).lutManager.loadColorRecipeParams(it, BaselineColorCorrectionTarget.PHANTOM)
        }
        val creativeColorRecipeParams = lutId?.let {
            ContentRepository.getInstance(context).lutManager.loadColorRecipeParams(it)
        } ?: ColorRecipeParams.DEFAULT
        val effectiveCreativeColorRecipeParams = preferences
            ?.activeEffectParams
            ?.applyTo(creativeColorRecipeParams)
            ?: creativeColorRecipeParams
        val metadataCreativeColorRecipeParams = effectiveCreativeColorRecipeParams
            .takeUnless { it.isDefault() }

        val updatedMetadata = GalleryManager.updateMetadata(context, photoId) { current ->
            if (baselineTarget != null) {
                current.copy(
                    lutId = lutId,
                    colorRecipeParams = metadataCreativeColorRecipeParams,
                    baselineTarget = baselineTarget,
                    baselineLutId = baselineLutId,
                    baselineColorRecipeParams = baselineColorRecipeParams,
                )
            } else {
                current.copy(
                    lutId = lutId,
                    colorRecipeParams = metadataCreativeColorRecipeParams,
                    baselineTarget = null,
                    baselineLutId = null,
                    baselineColorRecipeParams = null,
                )
            }
        } ?: return@withContext
        if (!isActive) return@withContext

        if (uri != processingInfo?.uri) {
            if (name != processingInfo?.name || relativePath != processingInfo?.relativePath) {
                processingInfo = ProcessingInfo(
                    uri = uri,
                    photoId = photoId,
                    name = name,
                    size = size,
                    relativePath = relativePath,
                )
            }
        }

        val tempExportFile = File(context.cacheDir, "temp_export_${System.nanoTime()}.jpg")
        try {
            // 读取照片
            val processedBitmap = photoProcessor.process(
                context, photoId, updatedMetadata,
                0f, 0f, 0f
            ) ?: return@withContext

            val videoFile = GalleryManager.getVideoFile(context, photoId)
            val photoFile = GalleryManager.getPhotoFile(context, photoId)

            val exportedWidth = processedBitmap.width
            val exportedHeight = processedBitmap.height
            val thumbnail = createOverlayThumbnail(processedBitmap)

            FileOutputStream(tempExportFile).use { outputStream ->
                processedBitmap.compress(Bitmap.CompressFormat.JPEG, 97, outputStream)
            }

            ExifWriter.writeExif(
                tempExportFile, updatedMetadata.toCaptureInfo().copy(
                    imageWidth = exportedWidth,
                    imageHeight = exportedHeight
                )
            )

            var newSize = 0L
            var newName = name

            val writeUri = if (saveAsNew) {
                val lutName =
                    updatedMetadata.lutId?.let { ContentRepository.getInstance(context).lutManager.getLutInfo(it)?.getName() }
                var withSuffix = ""
                lutName?.let {
                    withSuffix += ".$lutName"
                }

                newName = "PhotonCamera_" + name.replace(".jpg", "$withSuffix.jpg")

                processingInfo = processingInfo?.copy(
                    newName = newName,
                    newSize = newSize
                )

                if (processingInfo?.newUri != null) {
                    processingInfo!!.newUri!!
                } else {
                    val contentValues = ContentValues().apply {
                        put(MediaStore.MediaColumns.DISPLAY_NAME, newName)
                        put(MediaStore.MediaColumns.MIME_TYPE, "image/jpeg")
                        put(MediaStore.MediaColumns.RELATIVE_PATH, relativePath)
                    }
                    context.contentResolver.insert(
                        MediaStore.Images.Media.EXTERNAL_CONTENT_URI,
                        contentValues
                    ) ?: uri
                }
            } else {
                uri
            }

            if (videoFile.exists()) {
                val tempMotionPhotoFile = File(context.cacheDir, "temp_motion_${System.nanoTime()}.jpg")
                try {

                    val creator = if (Build.MANUFACTURER.lowercase().contains("vivo") && videoFile.exists()) {
                        // Vivo Live Photo 照片中没有内嵌视频文件，存在视频文件说明非 Vivo Live Photo
                        // 而是 Google Live Photo，需要特殊处理
                        GoogleLivePhotoCreator()
                    } else null

                    // 重新从磁盘加载最新元数据，以获取可能刚写回的 presentationTimestampUs
                    val latestMetadata = GalleryManager.loadMetadata(context, photoId) ?: updatedMetadata
                    val success = MotionPhotoWriter.write(
                        tempExportFile.absolutePath,
                        videoFile.absolutePath,
                        tempMotionPhotoFile.absolutePath,
                        latestMetadata.presentationTimestampUs ?: 0L,
                        context,
                        creator
                    )

                    newSize = if (success) tempMotionPhotoFile.length() else tempExportFile.length()

                    processingInfo = processingInfo?.copy(
                        newUri = writeUri,
                        newName = newName,
                        newSize = newSize
                    )

                    context.contentResolver.openOutputStream(writeUri, "wt")?.use { outputStream ->
                        if (success) {
                            tempMotionPhotoFile.inputStream().use { input -> input.copyTo(outputStream) }
                            PLog.d(
                                TAG,
                                "Exported Live Photo successfully: ${tempMotionPhotoFile.length()} bytes"
                            )
                        } else {
                            // Fallback to normal JPEG (with EXIF)
                            PLog.w(TAG, "Motion Photo synthesis failed, falling back to JPEG")
                            tempExportFile.inputStream().use { input -> input.copyTo(outputStream) }
                        }
                    }
                } finally {
                    tempMotionPhotoFile.delete()
                }
            } else if (VivoLivePhotoCreator.isVivoPhoto(photoFile.absolutePath)) {
                // 如果是 Vivo Photo，特殊处理
                val vivoMetadata = VivoLivePhotoCreator.extractVivoMetadata(photoFile.absolutePath)
                newSize = tempExportFile.length() + (vivoMetadata?.size?.toLong() ?: 0L)

                processingInfo = processingInfo?.copy(
                    newUri = writeUri,
                    newName = newName,
                    newSize = newSize
                )
                context.contentResolver.openOutputStream(writeUri, "wt")?.use { outputStream ->
                    tempExportFile.inputStream().use { input -> input.copyTo(outputStream) }
                    if (vivoMetadata != null) {
                        outputStream.write(vivoMetadata)
                    }
                }
            } else {
                newSize = tempExportFile.length()
                processingInfo = processingInfo?.copy(
                    newUri = writeUri,
                    newName = newName,
                    newSize = newSize
                )
                // 3b. Normal Export: Copy Temp File (with EXIF) to MediaStore
                context.contentResolver.openOutputStream(writeUri, "wt")?.use { outputStream ->
                    tempExportFile.inputStream().use { input -> input.copyTo(outputStream) }
                }
            }

            // Save exported URI to metadata
            GalleryManager.updateMetadata(context, photoId) { current ->
                current.copy(
                    exportedUris = current.exportedUris + writeUri.toString()
                )
            }
            shouldNotifyGallery = true
            PLog.d(TAG, "Exported URI saved: ${writeUri.lastPathSegment} $newName $newSize for photo $photoId")

            processingInfo = processingInfo?.copy(
                thumbnail = thumbnail,
                newUri = writeUri,
                newName = newName,
                newSize = newSize
            )
        } catch (e: CancellationException) {
            PLog.d(TAG, "Phantom export cancelled for $name")
            throw e
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to export photo", e)
        } finally {
            tempExportFile.delete()
        }
        MyCameraApplication.updateWidgets(context)
        if (shouldNotifyGallery) {
            GalleryManager.notifyPhotoLibraryChanged()
        }
        delay(200L)
    }

    private fun createOverlayThumbnail(source: Bitmap): Bitmap? {
        if (source.isRecycled || source.width <= 0 || source.height <= 0) return null

        return try {
            val thumbnailSize = 512
            val scale = max(
                thumbnailSize.toFloat() / source.width.toFloat(),
                thumbnailSize.toFloat() / source.height.toFloat()
            )
            val scaledWidth = source.width * scale
            val scaledHeight = source.height * scale
            val left = (thumbnailSize - scaledWidth) / 2f
            val top = (thumbnailSize - scaledHeight) / 2f
            val output = Bitmap.createBitmap(thumbnailSize, thumbnailSize, Bitmap.Config.ARGB_8888)
            val paint = Paint(Paint.ANTI_ALIAS_FLAG or Paint.FILTER_BITMAP_FLAG)
            Canvas(output).drawBitmap(
                source,
                null,
                RectF(left, top, left + scaledWidth, top + scaledHeight),
                paint
            )
            output
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to create overlay thumbnail", e)
            null
        }
    }

    private fun initWindowParams() {
        val displayBounds = getOverlayDisplayBounds()
        windowParams = WindowManager.LayoutParams(
            WindowManager.LayoutParams.WRAP_CONTENT,
            WindowManager.LayoutParams.WRAP_CONTENT,
            WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY,
            WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE,
            PixelFormat.TRANSLUCENT
        ).apply {
            gravity = Gravity.TOP or Gravity.END
            x = 0
            y = displayBounds.height() / 3
        }
    }

    private fun updateWindowParams(hidden: Boolean) {
        val editorVisible = showRecipeEditor || showEffectsEditor
        if (hidden) {
            windowParams.width = 1
            windowParams.height = 1
            windowParams.flags = windowParams.flags or WindowManager.LayoutParams.FLAG_NOT_TOUCHABLE
            windowParams.alpha = 0f
        } else {
            if (editorVisible) {
                if (floatingWindowYBeforeEditor == null) {
                    floatingWindowYBeforeEditor = windowParams.y
                }
                windowParams.gravity = Gravity.BOTTOM or Gravity.END
                windowParams.y = 0
            } else {
                windowParams.gravity = Gravity.TOP or Gravity.END
                floatingWindowYBeforeEditor?.let {
                    windowParams.y = it
                    floatingWindowYBeforeEditor = null
                }
            }
            windowParams.width = when {
                editorVisible -> getOverlayDisplayBounds().width()
                showFilterPicker -> WindowManager.LayoutParams.WRAP_CONTENT
                expanded -> WindowManager.LayoutParams.WRAP_CONTENT
                else -> WindowManager.LayoutParams.WRAP_CONTENT
            }
            windowParams.height = WindowManager.LayoutParams.WRAP_CONTENT
            windowParams.flags =
                windowParams.flags and WindowManager.LayoutParams.FLAG_NOT_TOUCHABLE.inv()
            windowParams.alpha = 1f
        }
    }

    private fun getOverlayDisplayBounds(): Rect {
        return if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
            windowManager.maximumWindowMetrics.bounds
        } else {
            Rect(
                0,
                0,
                overlayContext.resources.displayMetrics.widthPixels,
                overlayContext.resources.displayMetrics.heightPixels
            )
        }
    }

    private fun initComposeView() {
        composeView = ComposeView(overlayContext).apply {
            setViewCompositionStrategy(ViewCompositionStrategy.DisposeOnViewTreeLifecycleDestroyed)
            setContent {
                val phantomButtonHiddenFlow = remember {
                    userPreferencesRepository.userPreferences.map { it.phantomButtonHidden }
                }
                val phantomButtonHidden by phantomButtonHiddenFlow.collectAsState(initial = false)

                if (phantomButtonHidden) return@setContent

                val scope = rememberCoroutineScope()
                val processingInfo = processingInfo
                val currentLutIdFlow = remember {
                    userPreferencesRepository.userPreferences.map {
                        it.lutId
                    }
                }
                val currentLutId by currentLutIdFlow.collectAsState(initial = null)
                val currentEffectParamsFlow = remember {
                    userPreferencesRepository.userPreferences.map {
                        it.activeEffectParams
                    }
                }
                val currentEffectParams by currentEffectParamsFlow.collectAsState(
                    initial = EffectParams.DEFAULT
                )
                var recipePreviewParams by remember(currentLutId) {
                    mutableStateOf<ColorRecipeParams?>(null)
                }
                LaunchedEffect(expanded, processingInfo, showFilterPicker) {
                    if (expanded && !showFilterPicker) {
                        delay(2000L)
                        expanded = false
                    }
                }

                if (!showRecipeEditor && !showEffectsEditor) {
                    Row(
                        modifier = Modifier
                            .padding(4.dp)
                            .onSizeChanged {
                                composeView?.let { view ->
                                    if (view.isAttachedToWindow) {
                                        updateWindowParams(false)
                                        windowManager.updateViewLayout(view, windowParams)
                                    }
                                }
                            }
                            .background(Color(0xFF1A1C1E).copy(alpha = 0.8f), RoundedCornerShape(24.dp))
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
                                            if (processingInfo?.thumbnail?.isRecycled == false) {
                                                val photoId = processingInfo.photoId
                                                putExtra("photoId", photoId)
                                                putExtra("route", Routes.photoDetail(photoId = photoId))
                                            }
                                        })
                                }
                            },
                        verticalAlignment = Alignment.CenterVertically
                    ) {
                        if (!showFilterPicker) {
                            val thumbnail = processingInfo?.thumbnail?.takeIf { !it.isRecycled }
                            if (thumbnail != null) {
                                Image(
                                    bitmap = thumbnail.asImageBitmap(),
                                    contentDescription = stringResource(R.string.app_name),
                                    modifier = Modifier
                                        .size(40.dp)
                                        .clip(CircleShape)
                                )
                            } else {
                                Box(
                                    modifier = Modifier
                                        .size(40.dp)
                                        .clip(CircleShape)
                                        .background(Color(0xFF252525)),
                                    contentAlignment = Alignment.Center
                                ) {
                                    Image(
                                        painter = painterResource(id = R.drawable.ic_launcher_foreground),
                                        contentDescription = stringResource(R.string.app_name),
                                        modifier = Modifier.fillMaxSize()
                                    )
                                }
                            }
                        }

                        if (expanded) {
                            if (showFilterPicker) {
                            val sortedLutsFlow = remember {
                                ContentRepository.getInstance(context).availableLuts.combine(
                                    userPreferencesRepository.userPreferences.map {
                                        it.filterOrder to it.categoryOrder
                                    }
                                ) { luts, (filterOrder, categoryOrder) ->
                                    val sortedLuts = if (filterOrder.isEmpty()) {
                                        luts
                                    } else {
                                        val orderMap = filterOrder.withIndex().associate { it.value to it.index }
                                        luts.sortedBy { orderMap[it.id] ?: Int.MAX_VALUE }
                                    }
                                    sortedLuts to categoryOrder
                                }
                            }
                            val sortedLutData by sortedLutsFlow.collectAsState(
                                initial = emptyList<com.hinnka.mycamera.lut.LutInfo>() to emptyList()
                            )
                            val availableLuts = sortedLutData.first
                            val categoryOrder = sortedLutData.second
                            Box(
                                modifier = Modifier
                                    .heightIn(max = 220.dp)
                                    .width(340.dp)
                                    .padding(8.dp)
                            ) {
                                fun closeFilterPicker() {
                                    showFilterPicker = false
                                    updateWindowParams(false)
                                    composeView?.let { windowManager.updateViewLayout(it, windowParams) }
                                }

                                LutSelectorWithRecipeAction(
                                    availableLuts = availableLuts,
                                    currentLutId = currentLutId,
                                    thumbnail = processingInfo?.thumbnail?.takeIf { !it.isRecycled },
                                    onLutSelected = { lutId ->
                                        scope.launch {
                                            userPreferencesRepository.saveLutConfig(lutId)
                                            syncScreenCaptureRenderConfig(lutId)
                                            closeFilterPicker()
                                        }
                                    },
                                    onEditRecipeClick = if (currentLutId != null) {
                                        {
                                            showRecipeEditor = true
                                            updateWindowParams(false)
                                            composeView?.let { windowManager.updateViewLayout(it, windowParams) }
                                        }
                                    } else null,
                                    onEditEffectClick = {
                                        showEffectsEditor = true
                                        updateWindowParams(false)
                                        composeView?.let { windowManager.updateViewLayout(it, windowParams) }
                                    },
                                    categoryOrder = categoryOrder,
                                    modifier = Modifier
                                        .fillMaxWidth()
                                        .padding(top = 32.dp)
                                )

                                Row(
                                    modifier = Modifier
                                        .align(Alignment.TopEnd)
                                        .size(28.dp)
                                        .background(Color.Black.copy(alpha = 0.45f), CircleShape)
                                ) {
                                    IconButton(
                                        onClick = { closeFilterPicker() },
                                        modifier = Modifier.size(28.dp)
                                    ) {
                                        Icon(
                                            imageVector = Icons.Default.Close,
                                            contentDescription = stringResource(R.string.close),
                                            tint = Color.White.copy(alpha = 0.72f),
                                            modifier = Modifier.size(16.dp)
                                        )
                                    }
                                }
                            }
                        } else {
                            Row(
                                modifier = Modifier.padding(start = 8.dp),
                                horizontalArrangement = Arrangement.SpaceBetween,
                                verticalAlignment = Alignment.CenterVertically
                            ) {
                                Box(
                                    modifier = Modifier.width(48.dp),
                                    contentAlignment = Alignment.Center
                                ) {
                                    IconButton(
                                        onClick = {
                                            showFilterPicker = true
                                            updateWindowParams(false)
                                            composeView?.let {
                                                windowManager.updateViewLayout(it, windowParams)
                                            }
                                        },
                                        modifier = Modifier.size(48.dp)
                                    ) {
                                        Icon(
                                            imageVector = AppIcons.AutoAwesome,
                                            contentDescription = "LUT",
                                            tint = Color.White
                                        )
                                    }
                                }

                                Box(
                                    modifier = Modifier.width(48.dp),
                                    contentAlignment = Alignment.Center
                                ) {
                                    IconButton(
                                        onClick = {
                                            scope.launch {
                                                userPreferencesRepository.savePhantomMode(false)
                                            }
                                        },
                                        modifier = Modifier.size(48.dp)
                                    ) {
                                        Icon(
                                            imageVector = AppIcons.Stop,
                                            contentDescription = "Stop",
                                            tint = Color.Red
                                        )
                                    }
                                }
                            }
                            }
                        }
                    }
                }

                val editingLutId = currentLutId
                if (showRecipeEditor && editingLutId != null) {
                    var editingParams by remember(editingLutId) {
                        mutableStateOf(ColorRecipeParams.DEFAULT)
                    }
                    var paletteState by remember(editingLutId) {
                        mutableStateOf(ColorPaletteState.DEFAULT)
                    }

                    fun updateRecipeParams(params: ColorRecipeParams) {
                        editingParams = params
                        recipePreviewParams = params
                        scope.launch {
                            ContentRepository.getInstance(context).lutManager.saveColorRecipeParams(
                                editingLutId,
                                params
                            )
                            syncScreenCaptureRenderConfig(
                                lutId = editingLutId,
                                creativeRecipeParamsOverride = params
                            )
                        }
                    }

                    fun closeRecipeEditor() {
                        showRecipeEditor = false
                        val finalPreviewParams = recipePreviewParams
                        recipePreviewParams = null
                        scope.launch {
                            if (finalPreviewParams != null) {
                                ContentRepository.getInstance(context).lutManager.saveColorRecipeParams(
                                    editingLutId,
                                    finalPreviewParams
                                )
                            }
                            syncScreenCaptureRenderConfig(
                                lutId = editingLutId,
                                creativeRecipeParamsOverride = finalPreviewParams
                            )
                            updateWindowParams(false)
                            composeView?.let { windowManager.updateViewLayout(it, windowParams) }
                        }
                    }

                    LaunchedEffect(editingLutId) {
                        val params = ContentRepository.getInstance(context)
                            .lutManager
                            .loadColorRecipeParams(editingLutId)
                        editingParams = params
                        paletteState = ColorPaletteState(
                            x = params.paletteX,
                            y = params.paletteY,
                            density = params.paletteDensity
                        ).normalized()
                    }

                    Column(
                        modifier = Modifier
                            .fillMaxWidth()
                            .background(Color.Black.copy(alpha = 0.88f))
                            .padding(horizontal = 12.dp, vertical = 8.dp)
                    ) {
                        PhantomEditorHeader(
                            title = stringResource(R.string.color_recipe),
                            onClose = { closeRecipeEditor() }
                        )
                        LutIntensitySlider(
                            intensity = editingParams.lutIntensity,
                            onIntensityChange = {
                                updateRecipeParams(editingParams.copy(lutIntensity = it))
                            }
                        )
                        ColorRecipePanel(
                            currentParams = editingParams,
                            paletteState = paletteState,
                            onPaletteStateChange = { newState ->
                                val normalizedState = newState.normalized()
                                paletteState = normalizedState
                                updateRecipeParams(
                                    ColorPaletteMapper.updatePaletteState(
                                        editingParams,
                                        normalizedState
                                    )
                                )
                            },
                            onParamChange = { param, value ->
                                updateRecipeParams(param.setValue(editingParams, value))
                            },
                            onParamsChange = { newParams ->
                                paletteState = ColorPaletteState(
                                    x = newParams.paletteX,
                                    y = newParams.paletteY,
                                    density = newParams.paletteDensity
                                ).normalized()
                                updateRecipeParams(newParams)
                            },
                            onRemarksChange = {
                                updateRecipeParams(editingParams.copy(remarks = it))
                            },
                            onCurveChange = { channel, points ->
                                updateRecipeParams(
                                    when (channel) {
                                        CurveChannel.MASTER -> editingParams.copy(masterCurvePoints = points)
                                        CurveChannel.RED -> editingParams.copy(redCurvePoints = points)
                                        CurveChannel.GREEN -> editingParams.copy(greenCurvePoints = points)
                                        CurveChannel.BLUE -> editingParams.copy(blueCurvePoints = points)
                                    }
                                )
                            },
                            modifier = Modifier.fillMaxWidth()
                        )
                    }
                }

                if (showEffectsEditor) {
                    fun closeEffectsEditor() {
                        showEffectsEditor = false
                        scope.launch {
                            syncScreenCaptureRenderConfig(currentLutId)
                            updateWindowParams(false)
                            composeView?.let { windowManager.updateViewLayout(it, windowParams) }
                        }
                    }

                    Column(
                        modifier = Modifier
                            .fillMaxWidth()
                            .background(Color.Black.copy(alpha = 0.88f))
                            .padding(horizontal = 12.dp, vertical = 8.dp)
                    ) {
                        PhantomEditorHeader(
                            title = stringResource(R.string.effects_title),
                            onClose = { closeEffectsEditor() }
                        )
                        EffectsPanel(
                            currentParams = currentEffectParams,
                            onParamsChange = { effects ->
                                scope.launch {
                                    userPreferencesRepository.saveActiveEffectParams(effects)
                                    syncScreenCaptureRenderConfig(
                                        lutId = currentLutId,
                                        effectParamsOverride = effects
                                    )
                                }
                            },
                            modifier = Modifier.fillMaxWidth()
                        )
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

    @Composable
    private fun PhantomEditorHeader(
        title: String,
        onClose: () -> Unit
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(bottom = 8.dp),
            verticalAlignment = Alignment.CenterVertically
        ) {
            Text(
                text = title,
                color = Color.White,
                fontSize = 15.sp,
                fontWeight = FontWeight.Bold,
                modifier = Modifier.weight(1f)
            )
            IconButton(
                onClick = onClose,
                modifier = Modifier.size(32.dp)
            ) {
                Icon(
                    imageVector = Icons.Default.Close,
                    contentDescription = stringResource(R.string.close),
                    tint = Color.White.copy(alpha = 0.72f),
                    modifier = Modifier.size(18.dp)
                )
            }
        }
    }

    private fun showFloatingWindow() {
        if (!Settings.canDrawOverlays(context)) return
        if (isWindowShown) return

        lifecycleScope.launch {
            val hidden = userPreferencesRepository.userPreferences.map { it.phantomButtonHidden }
                .firstOrNull() ?: false
            updateWindowParams(hidden)

            // 关键：将状态标记与实际 addView 放在同一个调度周期或确保同步
            composeView?.let { view ->
                try {
                    if (!view.isAttachedToWindow) {
                        isWindowShown = true // 确定要添加后再设为 true
                        windowManager.addView(view, windowParams)
                    }
                } catch (e: Exception) {
                    isWindowShown = false
                    PLog.e(TAG, "Error adding floating window", e)
                }
            }
        }
    }

    private fun removeFloatingWindow() {
        if (isWindowShown) {
            composeView?.let {
                if (it.isAttachedToWindow) {
                    try {
                        windowManager.removeViewImmediate(it) // 使用同步移除
                    } catch (e: Exception) {
                        PLog.e(TAG, "Error removing window", e)
                    }
                }
            }
            isWindowShown = false
            expanded = false
            showFilterPicker = false
            showRecipeEditor = false
            showEffectsEditor = false
            floatingWindowYBeforeEditor = null
        }
    }

    private suspend fun syncScreenCaptureRenderConfig(
        lutId: String?,
        creativeRecipeParamsOverride: ColorRecipeParams? = null,
        effectParamsOverride: EffectParams? = null
    ) {
        ScreenCaptureRenderConfigStore.syncFromPreferences(
            context = context,
            lutIdOverride = lutId,
            creativeRecipeParamsOverride = creativeRecipeParamsOverride,
            effectParamsOverride = effectParamsOverride
        )
    }

    fun stop() {
        if (registry.currentState == Lifecycle.State.DESTROYED) return
        registry.handleLifecycleEvent(Lifecycle.Event.ON_PAUSE)
        registry.handleLifecycleEvent(Lifecycle.Event.ON_STOP)
        registry.handleLifecycleEvent(Lifecycle.Event.ON_DESTROY)

        pipStateJob?.cancel()
        pipStateJob = null
        ProcessLifecycleOwner.get().lifecycle.removeObserver(appLifecycleObserver)
        removeFloatingWindow()
        unregisterObserver()
        composeView = null
    }

    private fun createOverlayContext(): Context {
        return if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
            val displayManager = context.getSystemService(DisplayManager::class.java)
            val defaultDisplay = displayManager?.getDisplay(android.view.Display.DEFAULT_DISPLAY)
            val displayContext = defaultDisplay?.let { context.createDisplayContext(it) } ?: context
            displayContext.createWindowContext(
                WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY,
                null
            )
        } else {
            context
        }
    }
}
