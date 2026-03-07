package com.hinnka.mycamera.phantom

import android.content.ContentValues
import android.content.Context
import android.content.Intent
import android.database.ContentObserver
import android.graphics.Bitmap
import android.graphics.PixelFormat
import android.media.ThumbnailUtils
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
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.gestures.detectDragGestures
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.heightIn
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.lazy.rememberLazyListState
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.AutoAwesome
import androidx.compose.material.icons.filled.Check
import androidx.compose.material.icons.filled.Close
import androidx.compose.material.icons.filled.Stop
import androidx.compose.material3.HorizontalDivider
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
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
import androidx.compose.ui.text.style.TextOverflow
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
import com.hinnka.mycamera.data.UserPreferencesRepository
import com.hinnka.mycamera.gallery.ExifWriter
import com.hinnka.mycamera.gallery.PhotoManager
import com.hinnka.mycamera.gallery.PhotoManager.loadMetadata
import com.hinnka.mycamera.gallery.PhotoManager.saveMetadata
import com.hinnka.mycamera.livephoto.GoogleLivePhotoCreator
import com.hinnka.mycamera.livephoto.MotionPhotoWriter
import com.hinnka.mycamera.livephoto.VivoLivePhotoCreator
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
import java.io.FileOutputStream
import kotlin.io.copyTo
import kotlin.io.inputStream
import kotlin.use

class PhantomService(val context: Context) : LifecycleOwner, SavedStateRegistryOwner {

    private companion object {
        const val TAG = "GhostService"
        const val MIN_IMPORT_SIZE = 1024 * 1024L
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
    private var showFilterPicker by mutableStateOf(false)

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

                    val name = if (nameIndex != -1) cursor.getString(nameIndex) else "Unknown"
                    val isPending = if (pendingIndex != -1) cursor.getInt(pendingIndex) else 0
                    val size = if (sizeIndex != -1) cursor.getLong(sizeIndex) else 0L
                    val dateTaken = if (dateTakenIndex != -1) cursor.getLong(dateTakenIndex) else 0L
                    val data = if (dataIndex != -1) cursor.getString(dataIndex) else ""
                    val isTrashed = if (isTrashedIndex != -1) cursor.getInt(isTrashedIndex) else 0
                    val relativePath =
                        if (relativePathIndex != -1) cursor.getString(relativePathIndex) else ""

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
                    PLog.d(TAG, "Content changed detected: ${uri.lastPathSegment} $name size=$size")
                    processPhotoTaskMap[path]?.cancel()
                    processPhotoTaskMap[path] = lifecycleScope.async {
                        delay(200L)
                        if (isActive) {
                            // 在延迟后再次检查，此时上一个任务可能已经更新了 processingInfo
                            val info = processingInfo
                            if (info != null
                                && info.relativePath == relativePath
                                && info.name == name
                                && info.size >= size
                            ) {
                                PLog.d(TAG, "Ignore change for $path as it matches current state (size $size)")
                                return@async
                            }
                            if (info != null
                                && info.relativePath == relativePath
                                && info.newName == name
                                && info.newSize >= size
                            ) {
                                PLog.d(TAG, "Ignore change for $path as it matches current state (size $size)")
                                return@async
                            }
                            photoProcessTask(uri, name, size, relativePath)
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
            userPreferencesRepository.userPreferences.map { it.phantomButtonHidden }
                .collect { hidden ->
                    if (isWindowShown) {
                        updateWindowParams(hidden)
                        composeView?.let { windowManager.updateViewLayout(it, windowParams) }
                    } else if (!ProcessLifecycleOwner.get().lifecycle.currentState.isAtLeast(
                            Lifecycle.State.STARTED
                        )
                    ) {
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

    private suspend fun photoProcessTask(
        uri: Uri,
        name: String,
        size: Long,
        relativePath: String
    ) = withContext(Dispatchers.IO) {
        val userPreferencesRepository =
            ContentRepository.getInstance(context).userPreferencesRepository
        val availableLutList = ContentRepository.getInstance(context).getAvailableLuts()
        val photoProcessor = ContentRepository.getInstance(context).photoProcessor
        val preferences = userPreferencesRepository.userPreferences.firstOrNull()
        val lutId = preferences?.lutId ?: availableLutList.firstOrNull { it.isDefault }?.id
        val saveAsNew = preferences?.phantomSaveAsNew ?: false
        val existingPhotoId = if (processingInfo?.uri == uri) processingInfo?.photoId else null
        val photoId =
            PhotoManager.importPhoto(context, uri, lutId, existingPhotoId) ?: run {
                return@withContext
            }
        val metadata = PhotoManager.loadMetadata(context, photoId) ?: run {
            return@withContext
        }
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
                context, photoId, metadata,
                0f, 0f, 0f
            ) ?: return@withContext

            val videoFile = PhotoManager.getVideoFile(context, photoId)
            val photoFile = PhotoManager.getPhotoFile(context, photoId)

            FileOutputStream(tempExportFile).use { outputStream ->
                processedBitmap.compress(Bitmap.CompressFormat.JPEG, 97, outputStream)
            }

            ExifWriter.writeExif(
                tempExportFile, metadata.toCaptureInfo().copy(
                    imageWidth = processedBitmap.width,
                    imageHeight = processedBitmap.height
                )
            )

            var newSize = 0L
            var newName = name

            val writeUri = if (saveAsNew) {
                val lutName =
                    metadata.lutId?.let { ContentRepository.getInstance(context).lutManager.getLutInfo(it)?.getName() }
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
                    val latestMetadata = loadMetadata(context, photoId) ?: metadata
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
            val currentMetadata = loadMetadata(context, photoId) ?: metadata
            val updatedMetadata = currentMetadata.copy(
                exportedUris = currentMetadata.exportedUris + writeUri.toString()
            )
            saveMetadata(context, photoId, updatedMetadata)
            PLog.d(TAG, "Exported URI saved: ${writeUri.lastPathSegment} $newName $newSize for photo $photoId")

            val thumbnail = ThumbnailUtils.extractThumbnail(processedBitmap, 512, 512)
            processingInfo = processingInfo?.copy(
                thumbnail = thumbnail,
                newUri = writeUri,
                newName = newName,
                newSize = newSize
            )
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to export photo", e)
        } finally {
            tempExportFile.delete()
        }
        MyCameraApplication.updateWidgets(context)
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
            windowParams.flags =
                windowParams.flags and WindowManager.LayoutParams.FLAG_NOT_TOUCHABLE.inv()
            windowParams.alpha = 1f
        }
        if (showFilterPicker) {
            windowParams.height = (context.resources.displayMetrics.heightPixels * 0.6f).toInt()
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
                val processingInfo = processingInfo
                LaunchedEffect(expanded, processingInfo, showFilterPicker) {
                    if (expanded && !showFilterPicker) {
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
                                        if (processingInfo?.thumbnail != null) {
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
                        if (processingInfo?.thumbnail != null) {
                            Image(
                                bitmap = processingInfo.thumbnail.asImageBitmap(),
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
                    }

                    if (expanded) {
                        if (showFilterPicker) {
                            val availableLuts by ContentRepository.getInstance(context).availableLuts.collectAsState()
                            val currentLutIdFlow = remember {
                                userPreferencesRepository.userPreferences.map { it.lutId }
                            }
                            val currentLutId by currentLutIdFlow.collectAsState(initial = null)
                            val listState = rememberLazyListState()

                            Column(
                                modifier = Modifier
                                    .width(220.dp)
                                    .heightIn(max = 450.dp)
                                    .padding(8.dp)
                            ) {
                                // Header
                                Row(
                                    modifier = Modifier
                                        .fillMaxWidth()
                                        .padding(bottom = 8.dp),
                                    verticalAlignment = Alignment.CenterVertically
                                ) {
                                    Icon(
                                        imageVector = Icons.Default.AutoAwesome,
                                        contentDescription = null,
                                        tint = Color(0xFFFF6B35),
                                        modifier = Modifier.size(18.dp)
                                    )
                                    Spacer(modifier = Modifier.width(8.dp))
                                    Text(
                                        text = stringResource(R.string.filter_management_title),
                                        color = Color.White,
                                        style = MaterialTheme.typography.titleMedium.copy(
                                            fontWeight = FontWeight.Bold,
                                            fontSize = 15.sp
                                        ),
                                        modifier = Modifier.weight(1f)
                                    )
                                    IconButton(
                                        onClick = {
                                            showFilterPicker = false
                                            updateWindowParams(false)
                                            composeView?.let { windowManager.updateViewLayout(it, windowParams) }
                                        },
                                        modifier = Modifier.size(24.dp)
                                    ) {
                                        Icon(
                                            imageVector = Icons.Default.Close,
                                            contentDescription = "Close",
                                            tint = Color.White.copy(alpha = 0.5f),
                                            modifier = Modifier.size(16.dp)
                                        )
                                    }
                                }

                                HorizontalDivider(
                                    modifier = Modifier.padding(bottom = 8.dp),
                                    color = Color.White.copy(alpha = 0.1f)
                                )

                                LazyColumn(
                                    state = listState,
                                    modifier = Modifier
                                        .weight(1f, fill = false)
                                        .fillMaxWidth(),
                                    verticalArrangement = Arrangement.spacedBy(4.dp)
                                ) {
                                    items(availableLuts) { lut ->
                                        val isSelected = lut.id == currentLutId
                                        Row(
                                            modifier = Modifier
                                                .fillMaxWidth()
                                                .clip(RoundedCornerShape(12.dp))
                                                .background(
                                                    if (isSelected) Color(0xFFFF6B35).copy(alpha = 0.15f)
                                                    else Color.White.copy(alpha = 0.05f)
                                                )
                                                .border(
                                                    width = 1.dp,
                                                    color = if (isSelected) Color(0xFFFF6B35).copy(alpha = 0.5f)
                                                    else Color.Transparent,
                                                    shape = RoundedCornerShape(12.dp)
                                                )
                                                .clickable {
                                                    scope.launch {
                                                        userPreferencesRepository.saveLutConfig(lut.id)
                                                        showFilterPicker = false
                                                        updateWindowParams(false)
                                                        composeView?.let {
                                                            windowManager.updateViewLayout(
                                                                it,
                                                                windowParams
                                                            )
                                                        }
                                                    }
                                                }
                                                .padding(horizontal = 12.dp, vertical = 10.dp),
                                            verticalAlignment = Alignment.CenterVertically
                                        ) {
                                            Text(
                                                text = lut.getName(),
                                                color = if (isSelected) Color(0xFFFF6B35) else Color.White.copy(alpha = 0.9f),
                                                style = MaterialTheme.typography.bodyMedium.copy(
                                                    fontWeight = if (isSelected) FontWeight.Bold else FontWeight.Normal,
                                                    fontSize = 14.sp
                                                ),
                                                maxLines = 1,
                                                overflow = TextOverflow.Ellipsis,
                                                modifier = Modifier.weight(1f)
                                            )
                                            if (isSelected) {
                                                Icon(
                                                    imageVector = Icons.Default.Check,
                                                    contentDescription = null,
                                                    tint = Color(0xFFFF6B35),
                                                    modifier = Modifier.size(16.dp)
                                                )
                                            }
                                        }
                                    }
                                }
                            }
                        } else {
                            Spacer(modifier = Modifier.width(8.dp))
                            IconButton(onClick = {
                                showFilterPicker = true
                                updateWindowParams(false)
                                composeView?.let {
                                    windowManager.updateViewLayout(it, windowParams)
                                }
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
        }
    }

    fun stop() {
        if (registry.currentState == Lifecycle.State.DESTROYED) return
        registry.handleLifecycleEvent(Lifecycle.Event.ON_PAUSE)
        registry.handleLifecycleEvent(Lifecycle.Event.ON_STOP)
        registry.handleLifecycleEvent(Lifecycle.Event.ON_DESTROY)

        ProcessLifecycleOwner.get().lifecycle.removeObserver(appLifecycleObserver)
        removeFloatingWindow()
        unregisterObserver()
        composeView = null
    }
}
