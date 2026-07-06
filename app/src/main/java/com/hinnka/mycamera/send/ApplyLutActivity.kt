package com.hinnka.mycamera.send

import android.app.Activity
import android.app.RecoverableSecurityException
import android.content.ContentValues
import android.content.Intent
import android.graphics.Bitmap
import android.net.Uri
import android.os.Build
import android.os.Bundle
import android.os.Environment
import android.provider.Settings
import android.provider.MediaStore
import android.provider.OpenableColumns
import android.widget.Toast
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.result.IntentSenderRequest
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.heightIn
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.widthIn
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.lazy.rememberLazyListState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.HorizontalDivider
import androidx.compose.material3.LinearProgressIndicator
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.lifecycle.lifecycleScope
import com.hinnka.mycamera.R
import com.hinnka.mycamera.data.ContentRepository
import com.hinnka.mycamera.data.UserPreferencesRepository
import com.hinnka.mycamera.gallery.ExifWriter
import com.hinnka.mycamera.gallery.GalleryManager
import com.hinnka.mycamera.gallery.MediaMetadata
import com.hinnka.mycamera.livephoto.GoogleLivePhotoCreator
import com.hinnka.mycamera.livephoto.MotionPhotoWriter
import com.hinnka.mycamera.livephoto.VivoLivePhotoCreator
import com.hinnka.mycamera.lut.LutInfo
import com.hinnka.mycamera.lut.groupLutsForDisplay
import com.hinnka.mycamera.lut.sortLutsByUserOrder
import com.hinnka.mycamera.ui.theme.PhotonCameraTheme
import com.hinnka.mycamera.utils.PLog
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.combine
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import java.io.File
import java.io.FileOutputStream
import java.util.LinkedHashSet

class ApplyLutActivity : ComponentActivity() {

    private companion object {
        const val TAG = "ApplyLutActivity"
    }

    private val contentRepository by lazy { ContentRepository.getInstance(this) }
    private val userPreferencesRepository by lazy { contentRepository.userPreferencesRepository }

    private var sourceUris by mutableStateOf<List<Uri>>(emptyList())
    private var sourceDisplayName by mutableStateOf("")
    private var isApplying by mutableStateOf(false)
    private var hasManageFilesPermission by mutableStateOf(false)
    private var showManageFilesPermissionDialog by mutableStateOf(false)
    private var currentPhotoLutId by mutableStateOf<String?>(null)
    private var progressCurrent by mutableStateOf(0)
    private var progressTotal by mutableStateOf(0)
    private var pendingWriteUris: List<Uri> = emptyList()
    private var pendingSharedUris: List<Uri> = emptyList()
    private var pendingSelectedLut: LutInfo? = null

    private data class SharedTargetInfo(
        val displayName: String?,
        val mimeType: String?,
        val relativePath: String?,
        val size: Long?,
        val dateModifiedSec: Long?
    )

    private val writePermissionLauncher = registerForActivityResult(
        ActivityResultContracts.StartIntentSenderForResult()
    ) { result ->
        val targetUris = pendingWriteUris
        val sharedUris = pendingSharedUris
        val selectedLut = pendingSelectedLut
        if (result.resultCode == Activity.RESULT_OK && targetUris.isNotEmpty() && sharedUris.isNotEmpty() && selectedLut != null) {
            applyLutToSharedPhotos(sharedUris, selectedLut)
        } else {
            isApplying = false
            if (result.resultCode != Activity.RESULT_OK) {
                finish()
            }
        }
    }

    private val manageFilesPermissionLauncher = registerForActivityResult(
        ActivityResultContracts.StartActivityForResult()
    ) {
        hasManageFilesPermission = Environment.isExternalStorageManager()
        showManageFilesPermissionDialog = !hasManageFilesPermission
        if (hasManageFilesPermission) {
            detectCurrentPhotoLutSelection(sourceUris)
        }
        if (!hasManageFilesPermission) {
            finish()
        }
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        hasManageFilesPermission = Environment.isExternalStorageManager()
        showManageFilesPermissionDialog = !hasManageFilesPermission
        sourceUris = intent.resolveSharedImageUris()
        if (sourceUris.isEmpty()) {
            finish()
            return
        }
        sourceDisplayName = buildSourceDisplayName(sourceUris)
        if (hasManageFilesPermission) {
            detectCurrentPhotoLutSelection(sourceUris)
        }

        setContent {
            PhotonCameraTheme {
                ApplyLutScreen(
                    contentRepository = contentRepository,
                    userPreferencesRepository = userPreferencesRepository,
                    sourceDisplayName = sourceDisplayName,
                    currentPhotoLutId = currentPhotoLutId,
                    showManageFilesPermissionDialog = showManageFilesPermissionDialog,
                    isApplying = isApplying,
                    progressCurrent = progressCurrent,
                    progressTotal = progressTotal,
                    hasManageFilesPermission = hasManageFilesPermission,
                    onDismiss = { finish() },
                    onManageFilesPermissionConfirm = {
                        showManageFilesPermissionDialog = false
                        manageFilesPermissionLauncher.launch(
                            Intent(
                                Settings.ACTION_MANAGE_APP_ALL_FILES_ACCESS_PERMISSION,
                                Uri.parse("package:$packageName")
                            )
                        )
                    },
                    onLutSelected = { lut ->
                        if (sourceUris.isNotEmpty()) applyLutToSharedPhotos(sourceUris, lut) else finish()
                    }
                )
            }
        }
    }

    private fun applyLutToSharedPhotos(sharedUris: List<Uri>, lut: LutInfo) {
        if (isApplying) return
        if (sharedUris.isEmpty()) return
        val resolvedUris = sharedUris.map { resolveWritableTargetUri(it) }
        pendingSharedUris = sharedUris
        pendingWriteUris = resolvedUris
        pendingSelectedLut = lut
        isApplying = true
        progressCurrent = 0
        progressTotal = sharedUris.size
        resolvedUris.forEachIndexed { index, resolvedUri ->
            val targetInfo = querySharedTargetInfo(resolvedUri)
            PLog.d(
                TAG,
                "Start applying LUT[$index/${resolvedUris.size}]: sharedUri=${sharedUris[index]} resolvedUri=$resolvedUri name=${targetInfo.displayName} mime=${targetInfo.mimeType} relativePath=${targetInfo.relativePath}"
            )
        }

        lifecycleScope.launch {
            val result = runCatching {
                sharedUris.forEachIndexed { index, sharedUri ->
                    progressCurrent = index + 1
                    withContext(Dispatchers.IO) {
                        renderAndWritePhoto(sharedUri, resolvedUris[index], lut)
                    }
                }
            }
            result.onSuccess {
                isApplying = false
                Toast.makeText(
                    this@ApplyLutActivity,
                    if (sharedUris.size == 1) {
                        getString(R.string.apply_lut_success, lut.getName())
                    } else {
                        getString(R.string.apply_lut_success_multiple, sharedUris.size, lut.getName())
                    },
                    Toast.LENGTH_SHORT
                ).show()
                currentPhotoLutId = lut.id
                progressCurrent = progressTotal
                setResult(Activity.RESULT_OK)
                finish()
            }.onFailure { throwable ->
                when {
                    throwable is RecoverableSecurityException -> {
                        requestWritePermission(resolvedUris)
                    }
                    resolvedUris.any(::isMediaStoreUri) && throwable is SecurityException -> {
                        requestWritePermission(resolvedUris)
                    }
                    else -> {
                        PLog.e(TAG, "Failed to apply LUT batch: sharedUris=${sharedUris.joinToString()} resolvedUris=${resolvedUris.joinToString()}", throwable)
                        isApplying = false
                        progressCurrent = 0
                        progressTotal = 0
                        Toast.makeText(
                            this@ApplyLutActivity,
                            R.string.apply_lut_failed,
                            Toast.LENGTH_SHORT
                        ).show()
                        finish()
                    }
                }
            }
        }
    }

    private suspend fun renderAndWritePhoto(sharedUri: Uri, targetUri: Uri, lut: LutInfo) {
        val existingPhotoId = findExistingImportedPhotoId(sharedUri, targetUri)
        val photoId = existingPhotoId ?: (GalleryManager.importPhoto(this, sharedUri, lut.id) ?: error("Import failed"))
        val metadata = GalleryManager.loadMetadata(this, photoId)
            ?.copy(lutId = lut.id)
            ?: MediaMetadata(lutId = lut.id, sourceUri = sharedUri.toString())

        if (!GalleryManager.saveMetadata(this, photoId, metadata)) {
            error("Metadata save failed")
        }

        GalleryManager.deleteDetailHdrFile(this, photoId)
        GalleryManager.queueDetailHdrCacheBuild(
            context = this,
            photoId = photoId,
            metadata = metadata,
            sharpening = metadata.sharpening ?: 0f,
            noiseReduction = metadata.noiseReduction ?: 0f,
            chromaNoiseReduction = metadata.chromaNoiseReduction ?: 0f
        )
        GalleryManager.notifyPhotoLibraryChanged()

        PLog.d(
            TAG,
            "Render source selected: photoId=$photoId reused=${existingPhotoId != null} sourceUri=${metadata.sourceUri}"
        )

        val renderedBitmap = contentRepository.photoProcessor.process(
            this,
            photoId,
            metadata,
            0f,
            0f,
            0f
        ) ?: error("Render failed")

        writeRenderedBitmap(
            uri = targetUri,
            photoId = photoId,
            metadata = metadata,
            renderedBitmap = renderedBitmap
        )
    }

    private suspend fun findExistingImportedPhotoId(sharedUri: Uri, targetUri: Uri): String? {
        val sourceUriCandidates = linkedSetOf(sharedUri.toString(), targetUri.toString())
        val photoIds = GalleryManager.getPhotoIds(this)
        return photoIds.firstOrNull { photoId ->
            val metadata = GalleryManager.loadMetadata(this, photoId) ?: return@firstOrNull false
            metadata.sourceUri != null && metadata.sourceUri in sourceUriCandidates
        }
    }

    private fun detectCurrentPhotoLutSelection(sharedUris: List<Uri>) {
        lifecycleScope.launch {
            val detectedLutIds = withContext(Dispatchers.IO) {
                sharedUris.mapNotNull { sharedUri ->
                    val resolvedUri = resolveWritableTargetUri(sharedUri)
                    val existingPhotoId = findExistingImportedPhotoId(sharedUri, resolvedUri)
                    val existingMetadata = existingPhotoId?.let { photoId ->
                        GalleryManager.loadMetadata(this@ApplyLutActivity, photoId)
                    }
                    PLog.d(
                        TAG,
                        "Initial LUT selection detected: sharedUri=$sharedUri resolvedUri=$resolvedUri photoId=$existingPhotoId lutId=${existingMetadata?.lutId}"
                    )
                    existingMetadata?.lutId
                }.distinct()
            }
            currentPhotoLutId = detectedLutIds.singleOrNull()
            PLog.d(
                TAG,
                "Initial LUT selection summary: sharedCount=${sharedUris.size} selectedLutId=$currentPhotoLutId"
            )
        }
    }

    private suspend fun writeRenderedBitmap(
        uri: Uri,
        photoId: String,
        metadata: MediaMetadata,
        renderedBitmap: Bitmap
    ) {
        val tempExportFile = File(cacheDir, "shared_lut_${System.nanoTime()}.jpg")
        val photoFile = GalleryManager.getPhotoFile(this, photoId)
        val videoFile = GalleryManager.getVideoFile(this, photoId)
        try {
            FileOutputStream(tempExportFile).use { outputStream ->
                renderedBitmap.compress(Bitmap.CompressFormat.JPEG, 97, outputStream)
            }
            ExifWriter.writeExif(
                tempExportFile,
                metadata.toCaptureInfo().copy(
                    imageWidth = renderedBitmap.width,
                    imageHeight = renderedBitmap.height
                )
            )

            when {
                videoFile.exists() -> {
                    val tempMotionPhotoFile = File(cacheDir, "temp_motion_${System.nanoTime()}.jpg")
                    try {
                        val creator = if (Build.MANUFACTURER.lowercase().contains("vivo")) {
                            GoogleLivePhotoCreator()
                        } else {
                            null
                        }
                        val latestMetadata = GalleryManager.loadMetadata(this, photoId) ?: metadata
                        val success = MotionPhotoWriter.write(
                            tempExportFile.absolutePath,
                            videoFile.absolutePath,
                            tempMotionPhotoFile.absolutePath,
                            latestMetadata.presentationTimestampUs ?: 0L,
                            this,
                            creator
                        )
                        val outputFile = if (success) tempMotionPhotoFile else tempExportFile
                        contentResolver.openOutputStream(uri, "wt")?.use { outputStream ->
                            outputFile.inputStream().use { inputStream ->
                                inputStream.copyTo(outputStream)
                            }
                        } ?: error("Open output failed")
                        PLog.d(
                            TAG,
                            "Shared photo write completed: uri=$uri motionPhoto=$success size=${outputFile.length()}"
                        )
                    } finally {
                        tempMotionPhotoFile.delete()
                    }
                }
                VivoLivePhotoCreator.isVivoPhoto(photoFile.absolutePath) -> {
                    val vivoMetadata = VivoLivePhotoCreator.extractVivoMetadata(photoFile.absolutePath)
                    contentResolver.openOutputStream(uri, "wt")?.use { outputStream ->
                        tempExportFile.inputStream().use { inputStream ->
                            inputStream.copyTo(outputStream)
                        }
                        if (vivoMetadata != null) {
                            outputStream.write(vivoMetadata)
                        }
                    } ?: error("Open output failed")
                    PLog.d(
                        TAG,
                        "Shared photo write completed: uri=$uri vivoMotion=${vivoMetadata != null} size=${tempExportFile.length() + (vivoMetadata?.size ?: 0)}"
                    )
                }
                else -> {
                    contentResolver.openOutputStream(uri, "wt")?.use { outputStream ->
                        tempExportFile.inputStream().use { inputStream ->
                            inputStream.copyTo(outputStream)
                        }
                    } ?: error("Open output failed")
                    normalizeTargetToJpegIfNeeded(uri, tempExportFile)
                    PLog.d(
                        TAG,
                        "Shared photo write completed: uri=$uri motionPhoto=false size=${tempExportFile.length()}"
                    )
                }
            }
        } finally {
            renderedBitmap.recycle()
            tempExportFile.delete()
        }
    }

    private fun requestWritePermission(uris: List<Uri>) {
        val mediaStoreUris = uris.filter(::isMediaStoreUri).distinct()
        if (mediaStoreUris.isEmpty()) {
            isApplying = false
            Toast.makeText(this, R.string.apply_lut_failed, Toast.LENGTH_SHORT).show()
            finish()
            return
        }
        val request = MediaStore.createWriteRequest(contentResolver, mediaStoreUris)
        writePermissionLauncher.launch(
            IntentSenderRequest.Builder(request.intentSender).build()
        )
    }

    private fun queryDisplayName(uri: Uri): String {
        return runCatching {
            contentResolver.query(uri, arrayOf(OpenableColumns.DISPLAY_NAME), null, null, null)
                ?.use { cursor ->
                    if (cursor.moveToFirst()) {
                        val index = cursor.getColumnIndex(OpenableColumns.DISPLAY_NAME)
                        if (index >= 0) cursor.getString(index) else ""
                    } else {
                        ""
                    }
                }.orEmpty()
        }.getOrDefault(uri.lastPathSegment.orEmpty())
    }

    private fun querySharedTargetInfo(uri: Uri): SharedTargetInfo {
        return runCatching {
            val projection = arrayOf(
                OpenableColumns.DISPLAY_NAME,
                MediaStore.MediaColumns.MIME_TYPE,
                MediaStore.MediaColumns.RELATIVE_PATH,
                MediaStore.MediaColumns.SIZE,
                MediaStore.MediaColumns.DATE_MODIFIED
            )
            contentResolver.query(uri, projection, null, null, null)?.use { cursor ->
                if (!cursor.moveToFirst()) {
                    return@use SharedTargetInfo(null, null, null, null, null)
                }
                val displayNameIndex = cursor.getColumnIndex(OpenableColumns.DISPLAY_NAME)
                val mimeTypeIndex = cursor.getColumnIndex(MediaStore.MediaColumns.MIME_TYPE)
                val relativePathIndex = cursor.getColumnIndex(MediaStore.MediaColumns.RELATIVE_PATH)
                val sizeIndex = cursor.getColumnIndex(MediaStore.MediaColumns.SIZE)
                val dateModifiedIndex = cursor.getColumnIndex(MediaStore.MediaColumns.DATE_MODIFIED)
                SharedTargetInfo(
                    displayName = if (displayNameIndex >= 0) cursor.getString(displayNameIndex) else null,
                    mimeType = if (mimeTypeIndex >= 0) cursor.getString(mimeTypeIndex) else null,
                    relativePath = if (relativePathIndex >= 0) cursor.getString(relativePathIndex) else null,
                    size = if (sizeIndex >= 0 && !cursor.isNull(sizeIndex)) cursor.getLong(sizeIndex) else null,
                    dateModifiedSec = if (dateModifiedIndex >= 0 && !cursor.isNull(dateModifiedIndex)) cursor.getLong(dateModifiedIndex) else null
                )
            } ?: SharedTargetInfo(
                sourceDisplayName.takeIf { it.isNotBlank() },
                null,
                null,
                null,
                null
            )
        }.getOrElse {
            PLog.e(TAG, "Failed to query shared target info: $uri", it)
            SharedTargetInfo(
                sourceDisplayName.takeIf { it.isNotBlank() },
                null,
                null,
                null,
                null
            )
        }
    }

    private fun normalizeTargetToJpegIfNeeded(uri: Uri, jpegFile: File) {
        if (!isMediaStoreUri(uri)) return
        val targetInfo = querySharedTargetInfo(uri)
        val currentMime = targetInfo.mimeType?.lowercase()
        val currentName = targetInfo.displayName.orEmpty()
        val needsMimeUpdate = currentMime != "image/jpeg"
        val needsNameUpdate = currentName.isNotEmpty() &&
            !currentName.lowercase().endsWith(".jpg") &&
            !currentName.lowercase().endsWith(".jpeg")
        if (!needsMimeUpdate && !needsNameUpdate) {
            return
        }

        val updatedName = if (needsNameUpdate) {
            currentName.substringBeforeLast('.', currentName) + ".jpg"
        } else {
            currentName
        }
        val values = ContentValues().apply {
            put(MediaStore.MediaColumns.MIME_TYPE, "image/jpeg")
            if (updatedName.isNotEmpty()) {
                put(MediaStore.MediaColumns.DISPLAY_NAME, updatedName)
            }
            put(MediaStore.MediaColumns.SIZE, jpegFile.length())
            put(MediaStore.MediaColumns.DATE_MODIFIED, System.currentTimeMillis() / 1000)
        }
        val updatedRows = contentResolver.update(uri, values, null, null)
        PLog.d(
            TAG,
            "Normalized shared target: uri=$uri rows=$updatedRows oldName=${targetInfo.displayName} oldMime=${targetInfo.mimeType} newName=$updatedName"
        )
    }

    private fun Intent.readSharedImageUris(): List<Uri> {
        if (type?.startsWith("image/") != true) return emptyList()
        return when (action) {
            Intent.ACTION_SEND -> {
                listOfNotNull(
                    if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
                        getParcelableExtra(Intent.EXTRA_STREAM, Uri::class.java)
                    } else {
                        @Suppress("DEPRECATION")
                        getParcelableExtra(Intent.EXTRA_STREAM)
                    }
                )
            }
            Intent.ACTION_SEND_MULTIPLE -> {
                if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
                    getParcelableArrayListExtra(Intent.EXTRA_STREAM, Uri::class.java)?.filterNotNull().orEmpty()
                } else {
                    @Suppress("DEPRECATION")
                    getParcelableArrayListExtra<Uri>(Intent.EXTRA_STREAM).orEmpty()
                }
            }
            else -> emptyList()
        }
    }

    private fun Intent.resolveSharedImageUris(): List<Uri> {
        val directUris = readSharedImageUris()
        val candidates = LinkedHashSet<Uri>()
        directUris.forEach(candidates::add)
        data?.let(candidates::add)
        collectIntentUriCandidates(this, "intent", candidates)
        val candidateList = candidates.toList()
        PLog.d(TAG, "Intent uri candidates: ${candidateList.joinToString()}")
        return when {
            directUris.isNotEmpty() -> directUris
            candidateList.isNotEmpty() -> candidateList.filter(::isPreferredSharedUriCandidate).ifEmpty { candidateList }
            else -> emptyList()
        }
    }

    private fun collectIntentUriCandidates(intent: Intent, label: String, out: MutableSet<Uri>) {
        intent.data?.let(out::add)
        val clipData = intent.clipData
        if (clipData != null) {
            for (index in 0 until clipData.itemCount) {
                val item = clipData.getItemAt(index)
                item.uri?.let(out::add)
                item.intent?.let { nestedIntent ->
                    collectIntentUriCandidates(nestedIntent, "$label.clipData[$index].intent", out)
                }
                item.text?.toString()?.let { collectUrisFromString(it, out) }
                item.htmlText?.let { collectUrisFromString(it, out) }
            }
        }
        intent.extras?.let { collectUriCandidatesFromBundle(it, "$label.extras", out) }
    }

    private fun collectUriCandidatesFromBundle(bundle: Bundle, label: String, out: MutableSet<Uri>) {
        for (key in bundle.keySet()) {
            val value = bundle.get(key)
            collectUriCandidatesFromValue(value, "$label.$key", out)
        }
    }

    @Suppress("UNCHECKED_CAST")
    private fun collectUriCandidatesFromValue(value: Any?, label: String, out: MutableSet<Uri>) {
        when (value) {
            null -> Unit
            is Uri -> out.add(value)
            is Intent -> collectIntentUriCandidates(value, label, out)
            is Bundle -> collectUriCandidatesFromBundle(value, label, out)
            is CharSequence -> collectUrisFromString(value.toString(), out)
            is Array<*> -> value.forEachIndexed { index, item ->
                collectUriCandidatesFromValue(item, "$label[$index]", out)
            }
            is Iterable<*> -> value.forEachIndexed { index, item ->
                collectUriCandidatesFromValue(item, "$label[$index]", out)
            }
            else -> {
                if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU && value is android.os.Parcelable) {
                    collectUrisFromString(value.toString(), out)
                }
            }
        }
    }

    private fun collectUrisFromString(text: String, out: MutableSet<Uri>) {
        val regex = Regex("""content://[^\s,'"<>]+""")
        regex.findAll(text).forEach { match ->
            runCatching { Uri.parse(match.value) }.getOrNull()?.let(out::add)
        }
    }

    private fun isPreferredSharedUriCandidate(uri: Uri): Boolean {
        if (uri.scheme != "content") return false
        val uriString = uri.toString()
        if (uriString.contains("com.vivo.safecenter/.security_share_imgs/", ignoreCase = true)) {
            return false
        }
        return uri.authority == MediaStore.AUTHORITY || uriString.contains("/images/media/")
    }

    private fun isMediaStoreUri(uri: Uri): Boolean {
        return uri.scheme == "content" && uri.authority == MediaStore.AUTHORITY
    }

    private fun resolveWritableTargetUri(uri: Uri): Uri {
        val targetInfo = querySharedTargetInfo(uri)
        findMediaStoreImageUriByMetadata(targetInfo)?.let { resolved ->
            PLog.d(
                TAG,
                "Resolved shared target by metadata: from=$uri to=$resolved name=${targetInfo.displayName} size=${targetInfo.size} date=${targetInfo.dateModifiedSec}"
            )
            return resolved
        }
        val resolved = runCatching {
            if (isMediaStoreUri(uri)) {
                MediaStore.getMediaUri(this, uri)
            } else {
                null
            }
        }.getOrNull()
        return if (resolved != null && resolved != uri) {
            PLog.d(TAG, "Resolved shared target uri: from=$uri to=$resolved")
            resolved
        } else {
            PLog.d(TAG, "Resolved shared target uri fail")
            uri
        }
    }

    private data class ImageCandidate(
        val uri: Uri,
        val displayName: String,
        val size: Long,
        val dateModifiedSec: Long
    )

    private fun findMediaStoreImageUriByMetadata(targetInfo: SharedTargetInfo): Uri? {
        val displayName = targetInfo.displayName?.takeIf { it.isNotBlank() } ?: return null
        val exactCandidates = queryMediaStoreImageCandidates(displayName)
        selectBestImageCandidate(exactCandidates, targetInfo)?.let { return it }

        val stem = displayName.substringBeforeLast('.', displayName)
        if (stem.isNotBlank() && stem != displayName) {
            val fuzzyCandidates = queryMediaStoreImageCandidates(stem, fuzzy = true)
            selectBestImageCandidate(fuzzyCandidates, targetInfo)?.let { return it }
        }
        return null
    }

    private fun queryMediaStoreImageCandidates(name: String, fuzzy: Boolean = false): List<ImageCandidate> {
        val projection = arrayOf(
            MediaStore.Images.Media._ID,
            MediaStore.Images.Media.DISPLAY_NAME,
            MediaStore.Images.Media.SIZE,
            MediaStore.Images.Media.DATE_MODIFIED
        )
        val selection = if (fuzzy) {
            "${MediaStore.Images.Media.DISPLAY_NAME} LIKE ?"
        } else {
            "${MediaStore.Images.Media.DISPLAY_NAME} = ?"
        }
        val selectionArgs = arrayOf(if (fuzzy) "$name%" else name)
        return runCatching {
            contentResolver.query(
                MediaStore.Images.Media.EXTERNAL_CONTENT_URI,
                projection,
                selection,
                selectionArgs,
                "${MediaStore.Images.Media.DATE_MODIFIED} DESC"
            )?.use { cursor ->
                val idIndex = cursor.getColumnIndexOrThrow(MediaStore.Images.Media._ID)
                val nameIndex = cursor.getColumnIndexOrThrow(MediaStore.Images.Media.DISPLAY_NAME)
                val sizeIndex = cursor.getColumnIndexOrThrow(MediaStore.Images.Media.SIZE)
                val dateModifiedIndex = cursor.getColumnIndexOrThrow(MediaStore.Images.Media.DATE_MODIFIED)
                buildList {
                    while (cursor.moveToNext()) {
                        val id = cursor.getLong(idIndex)
                        add(
                            ImageCandidate(
                                uri = Uri.withAppendedPath(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, id.toString()),
                                displayName = cursor.getString(nameIndex),
                                size = cursor.getLong(sizeIndex),
                                dateModifiedSec = cursor.getLong(dateModifiedIndex)
                            )
                        )
                    }
                }
            }.orEmpty()
        }.getOrElse {
            PLog.e(TAG, "Failed to query MediaStore images for name=$name fuzzy=$fuzzy", it)
            emptyList()
        }
    }

    private fun selectBestImageCandidate(
        candidates: List<ImageCandidate>,
        targetInfo: SharedTargetInfo
    ): Uri? {
        if (candidates.isEmpty()) return null
        return candidates.minByOrNull { candidate ->
            val sizeDiff = targetInfo.size?.let { kotlin.math.abs(candidate.size - it) } ?: Long.MAX_VALUE / 4
            val dateDiff = targetInfo.dateModifiedSec?.let { kotlin.math.abs(candidate.dateModifiedSec - it) } ?: Long.MAX_VALUE / 4
            sizeDiff + dateDiff
        }?.uri
    }

    private fun buildSourceDisplayName(uris: List<Uri>): String {
        if (uris.isEmpty()) return ""
        if (uris.size == 1) {
            return queryDisplayName(uris.first())
        }
        return getString(R.string.apply_lut_multi_summary, uris.size)
    }
}

@Composable
private fun ApplyLutScreen(
    contentRepository: ContentRepository,
    userPreferencesRepository: UserPreferencesRepository,
    sourceDisplayName: String,
    currentPhotoLutId: String?,
    showManageFilesPermissionDialog: Boolean,
    isApplying: Boolean,
    progressCurrent: Int,
    progressTotal: Int,
    hasManageFilesPermission: Boolean,
    onDismiss: () -> Unit,
    onManageFilesPermissionConfirm: () -> Unit,
    onLutSelected: (LutInfo) -> Unit
) {
    if (showManageFilesPermissionDialog) {
        Box(
            modifier = Modifier
                .fillMaxSize()
                .background(Color.Black.copy(alpha = 0.5f)),
            contentAlignment = Alignment.Center
        ) {
            Column(
                modifier = Modifier
                    .fillMaxWidth(0.82f)
                    .background(Color(0xFF141414), RoundedCornerShape(20.dp))
                    .padding(24.dp),
                verticalArrangement = Arrangement.spacedBy(16.dp)
            ) {
                Text(
                    text = androidx.compose.ui.res.stringResource(R.string.apply_lut_permission_title),
                    color = Color.White,
                    style = MaterialTheme.typography.titleLarge
                )
                Text(
                    text = androidx.compose.ui.res.stringResource(R.string.apply_lut_permission_message),
                    color = Color.White.copy(alpha = 0.85f),
                    style = MaterialTheme.typography.bodyMedium
                )
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.End
                ) {
                    TextButton(onClick = onDismiss) {
                        Text(text = androidx.compose.ui.res.stringResource(android.R.string.cancel))
                    }
                    TextButton(onClick = onManageFilesPermissionConfirm) {
                        Text(text = androidx.compose.ui.res.stringResource(R.string.apply_lut_permission_confirm))
                    }
                }
            }
        }
    }

    if (!hasManageFilesPermission) {
        return
    }

    val sortedLutsFlow = remember(contentRepository, userPreferencesRepository) {
        contentRepository.availableLuts.combine(userPreferencesRepository.userPreferences) { luts, preferences ->
            val sortedLuts = sortLutsByUserOrder(luts, preferences.filterOrder)
            Triple(sortedLuts, preferences.categoryOrder, preferences.lutId)
        }
    }
    val lutData by sortedLutsFlow.collectAsState(initial = Triple(emptyList(), emptyList(), null))
    val listState = rememberLazyListState()
    val builtInText = androidx.compose.ui.res.stringResource(R.string.built_in)
    val uncategorizedText = androidx.compose.ui.res.stringResource(R.string.uncategorized)
    val groupedLuts = remember(lutData.first, lutData.second, builtInText, uncategorizedText) {
        groupLutsForDisplay(
            luts = lutData.first,
            categoryOrder = lutData.second,
            builtInText = builtInText,
            uncategorizedText = uncategorizedText
        )
    }

    Box(
        modifier = Modifier
            .fillMaxSize()
            .background(Color.Black.copy(alpha = 0.32f))
            .clickable(enabled = !isApplying, onClick = onDismiss),
        contentAlignment = Alignment.Center
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth(0.88f)
                .widthIn(max = 420.dp)
                .background(Color(0xFF141414), RoundedCornerShape(24.dp))
                .clickable(enabled = false) {}
                .padding(20.dp),
            verticalArrangement = Arrangement.spacedBy(14.dp)
        ) {
            Column {
                Text(
                    text = androidx.compose.ui.res.stringResource(R.string.apply_lut_title),
                    color = Color.White,
                    style = MaterialTheme.typography.titleLarge
                )
                if (sourceDisplayName.isNotEmpty()) {
                    Spacer(modifier = Modifier.height(4.dp))
                    Text(
                        text = sourceDisplayName,
                        style = MaterialTheme.typography.bodySmall,
                        color = Color.White.copy(alpha = 0.72f),
                        maxLines = 1,
                        overflow = TextOverflow.Ellipsis
                    )
                }
            }

            Box(
                modifier = Modifier
                    .fillMaxWidth()
                    .heightIn(max = 420.dp)
            ) {
                LazyColumn(
                    state = listState,
                    verticalArrangement = Arrangement.spacedBy(6.dp)
                ) {
                    groupedLuts.forEach { (groupTitle, luts) ->
                        item(key = "header_$groupTitle") {
                            Text(
                                text = groupTitle,
                                style = MaterialTheme.typography.labelMedium,
                                color = Color.White.copy(alpha = 0.6f),
                                modifier = Modifier.padding(top = 4.dp, bottom = 2.dp)
                            )
                        }
                        items(luts, key = { "${groupTitle}_${it.id}" }) { lut ->
                            val selectedLutId = currentPhotoLutId ?: lutData.third
                            val isDefault = lut.id == selectedLutId
                            Row(
                                modifier = Modifier
                                    .fillMaxWidth()
                                    .background(
                                        if (isDefault) Color(0x22FFFFFF) else Color.Transparent,
                                        RoundedCornerShape(12.dp)
                                    )
                                    .clickable(enabled = !isApplying) { onLutSelected(lut) }
                                    .padding(horizontal = 12.dp, vertical = 10.dp),
                                verticalAlignment = Alignment.CenterVertically
                            ) {
                                Text(
                                    text = lut.getName(),
                                    color = Color.White,
                                    fontWeight = if (isDefault) FontWeight.SemiBold else FontWeight.Normal,
                                    modifier = Modifier.weight(1f),
                                    maxLines = 1,
                                    overflow = TextOverflow.Ellipsis
                                )
                            }
                        }
                        item(key = "divider_$groupTitle") {
                            HorizontalDivider(color = Color.White.copy(alpha = 0.08f))
                        }
                    }
                }
            }

            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.End
            ) {
                TextButton(onClick = onDismiss, enabled = !isApplying) {
                    Text(text = androidx.compose.ui.res.stringResource(android.R.string.cancel))
                }
            }
        }

        if (isApplying) {
            Box(
                modifier = Modifier
                    .fillMaxSize()
                    .background(Color.Black.copy(alpha = 0.6f)),
                contentAlignment = Alignment.Center
            ) {
                Column(
                    horizontalAlignment = Alignment.CenterHorizontally,
                    verticalArrangement = Arrangement.spacedBy(12.dp),
                    modifier = Modifier
                        .fillMaxWidth(0.78f)
                        .background(Color(0xF2181818), RoundedCornerShape(20.dp))
                        .padding(horizontal = 24.dp, vertical = 22.dp)
                ) {
                    CircularProgressIndicator(color = Color.White)
                    Text(
                        text = if (progressTotal > 1) {
                            androidx.compose.ui.res.stringResource(
                                R.string.apply_lut_processing_progress,
                                progressCurrent.coerceAtLeast(1),
                                progressTotal
                            )
                        } else {
                            androidx.compose.ui.res.stringResource(R.string.apply_lut_processing)
                        },
                        color = Color.White,
                        style = MaterialTheme.typography.titleMedium
                    )
                    if (progressTotal > 1) {
                        LinearProgressIndicator(
                            progress = { progressCurrent.toFloat() / progressTotal.toFloat() },
                            modifier = Modifier.fillMaxWidth(),
                            color = Color.White,
                            trackColor = Color.White.copy(alpha = 0.2f)
                        )
                        Text(
                            text = androidx.compose.ui.res.stringResource(
                                R.string.apply_lut_processing_progress_detail,
                                progressCurrent.coerceAtLeast(1),
                                progressTotal
                            ),
                            color = Color.White.copy(alpha = 0.8f),
                            style = MaterialTheme.typography.bodyMedium
                        )
                    }
                }
            }
        }
    }
}
