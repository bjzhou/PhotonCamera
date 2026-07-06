package com.hinnka.mycamera.ui.gallery

import android.app.Activity
import android.content.Context
import android.content.Intent
import android.content.pm.ApplicationInfo
import android.content.pm.PackageManager
import android.net.Uri
import android.provider.MediaStore
import com.hinnka.mycamera.utils.PLog
import org.json.JSONArray
import android.graphics.Rect
import android.graphics.Bitmap
import android.widget.Toast
import android.view.LayoutInflater
import android.widget.ImageView
import android.widget.TextView
import android.os.Build
import android.view.View
import android.view.ViewGroup
import android.widget.FrameLayout
import android.widget.LinearLayout
import androidx.activity.compose.BackHandler
import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.result.IntentSenderRequest
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.animation.AnimatedVisibility
import androidx.compose.animation.fadeIn
import androidx.compose.animation.fadeOut
import androidx.compose.animation.slideInVertically
import androidx.compose.animation.slideOutVertically
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.Close
import androidx.compose.material.icons.filled.Delete
import androidx.compose.material.icons.filled.Share
import androidx.compose.material3.*
import androidx.compose.material3.TabRowDefaults.tabIndicatorOffset
import androidx.compose.material3.pulltorefresh.PullToRefreshBox
import androidx.compose.runtime.*
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.ui.Alignment
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleEventObserver
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.viewinterop.AndroidView
import android.annotation.SuppressLint
import android.graphics.Canvas
import android.graphics.Paint
import android.graphics.Typeface
import android.view.MotionEvent
import androidx.compose.ui.graphics.toArgb
import androidx.recyclerview.widget.RecyclerView
import androidx.recyclerview.widget.StaggeredGridLayoutManager
import com.hinnka.mycamera.R
import com.hinnka.mycamera.gallery.MediaData
import com.hinnka.mycamera.ui.theme.AccentOrange
import com.hinnka.mycamera.utils.OrientationObserver
import com.hinnka.mycamera.viewmodel.GalleryTab
import com.hinnka.mycamera.viewmodel.GalleryViewModel
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.Job
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch
import androidx.recyclerview.widget.DiffUtil
import android.os.Parcelable
import org.json.JSONObject
import kotlin.math.abs
import androidx.core.net.toUri
import com.hinnka.mycamera.ui.icons.AppIcons

private const val GALLERY_SCREEN_TAG = "GalleryScreen"

private fun buildSystemGalleryMediaPickIntent(context: Context): Intent {
    val systemGalleryIntent = buildSystemGalleryActionPickIntent()
    if (systemGalleryIntent.hasAvailableActivity(context)) {
        return systemGalleryIntent
    }

    PLog.d(GALLERY_SCREEN_TAG, "ACTION_PICK media picker unavailable, falling back to ACTION_GET_CONTENT")
    return buildGetContentMediaPickIntent()
}

private fun buildSystemGalleryActionPickIntent(): Intent {
    return Intent(Intent.ACTION_PICK).apply {
        setDataAndType(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, "*/*")
        putExtra(Intent.EXTRA_MIME_TYPES, buildGalleryMediaMimeTypes())
        putExtra(Intent.EXTRA_ALLOW_MULTIPLE, true)
    }
}

private fun buildGetContentMediaPickIntent(): Intent {
    return Intent(Intent.ACTION_GET_CONTENT).apply {
        type = "*/*"
        putExtra(Intent.EXTRA_MIME_TYPES, buildGalleryMediaMimeTypes())
        putExtra(Intent.EXTRA_ALLOW_MULTIPLE, true)
    }
}

private fun buildGalleryMediaMimeTypes(): Array<String> {
    return arrayOf("image/*", "video/*")
}

private fun Intent.hasAvailableActivity(context: Context): Boolean {
    return resolveActivity(context.packageManager) != null
}

/**
 * 相册浏览界面
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun GalleryScreen(
    viewModel: GalleryViewModel,
    onBack: () -> Unit,
    onPhotoClick: (GalleryTab, Int) -> Unit,
    onNavigateToEdit: (String?) -> Unit = {},
    modifier: Modifier = Modifier
) {
    val photos by viewModel.currentPhotos.collectAsState()
    val context = LocalContext.current
    val isLoading by viewModel.isLoading.collectAsState()
    val isSystemLoadingMore by viewModel.isSystemLoadingMore.collectAsState()
    val isPhotonLoadingMore by viewModel.isPhotonLoadingMore.collectAsState()
    val isSharing by viewModel.isSharing.collectAsState()
    val isSelectionMode = viewModel.isSelectionMode
    val selectedPhotos = viewModel.selectedPhotos
    val selectedTab = viewModel.selectedTab
    val hasPermission = viewModel.hasGalleryPermission
    val scope = rememberCoroutineScope()
    var shouldRenderGrid by rememberSaveable { mutableStateOf(false) }

    BackHandler(enabled = isSelectionMode) {
        viewModel.exitSelectionMode()
    }

    fun importSelectedMedia(uris: List<Uri>, videoUris: List<Uri?>? = null) {
        if (uris.isEmpty()) return
        val uniqueUris = uris.distinct().also { distinct ->
            if (distinct.size != uris.size) {
                PLog.d("GalleryScreen", "Ignoring ${uris.size - distinct.size} duplicate selected media URI(s)")
            }
        }
        val alignedVideoUris = videoUris?.let { uriVideoMap ->
            uniqueUris.map { uri ->
                val originalIndex = uris.indexOf(uri)
                uriVideoMap.getOrNull(originalIndex)
            }
        }
        viewModel.importPhotos(uniqueUris, alignedVideoUris) { importedIds ->
            if (importedIds.size == 1) {
                val newPhotoId = importedIds.first()
                viewModel.setCurrentPhotoById(newPhotoId)
                viewModel.enterEditMode()
                onNavigateToEdit(newPhotoId)
            }
        }
    }

    val launcher = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.StartActivityForResult()
    ) { result ->
        if (result.resultCode == Activity.RESULT_OK) {
            result.data?.let { data ->
                PLog.d("GalleryScreen", "Received ACTION_PICK result. Data URI: ${data.data}, ClipData count: ${data.clipData?.itemCount ?: 0}")

                val mediaInfosStrs = data.getStringArrayListExtra("selected_media_infos")
                val vivoLivePhotosMap = mutableMapOf<Uri, Uri>()
                if (!mediaInfosStrs.isNullOrEmpty()) {
                    try {
                        for (text in mediaInfosStrs) {
                            val jsonObject = JSONObject(text)
                            val mainUriStr = jsonObject.optString("mainUri")
                            val extraUriStr = jsonObject.optString("extraUri")
                            if (!mainUriStr.isNullOrBlank() && !extraUriStr.isNullOrBlank()) {
                                vivoLivePhotosMap[mainUriStr.toUri()] = extraUriStr.toUri()
                            }
                        }
                    } catch (e: Exception) {
                        PLog.e("GalleryScreen", "Failed to parse selected_media_infos", e)
                    }
                }

                val uris = mutableListOf<Uri>()
                val videoUris = mutableListOf<Uri?>()
                fun addSelectedUri(uri: Uri) {
                    uris.add(uri)
                    videoUris.add(vivoLivePhotosMap[uri])
                }

                data.data?.let(::addSelectedUri)
                data.clipData?.let { clipData ->
                    for (i in 0 until clipData.itemCount) {
                        clipData.getItemAt(i).uri?.let(::addSelectedUri)
                    }
                }

                importSelectedMedia(uris, videoUris)
            }
        }
    }

    val permissionLauncher = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.RequestMultiplePermissions()
    ) { grants ->
        if (grants.values.all { it }) {
            viewModel.checkGalleryPermission()
        }
    }

    // Activity Result Launcher for batch delete confirmation
    val batchDeleteLauncher = rememberLauncherForActivityResult(
        ActivityResultContracts.StartIntentSenderForResult()
    ) { result ->
        if (result.resultCode == Activity.RESULT_OK || viewModel.selectedTab == GalleryTab.PHOTON) {
            // User confirmed deletion or we are in PHOTON tab (delete internal photos anyway)
            viewModel.deleteBatchPhotosAfterConfirmation()
        } else {
            // User cancelled deletion in SYSTEM tab
            viewModel.clearBatchDeleteRequest()
        }
    }

    // Monitor batchDeletePendingIntent and launch system delete dialog
    LaunchedEffect(viewModel.batchDeletePendingIntent) {
        viewModel.batchDeletePendingIntent?.let { pendingIntent ->
            try {
                batchDeleteLauncher.launch(
                    IntentSenderRequest.Builder(pendingIntent.intentSender).build()
                )
            } catch (e: Exception) {
                // Failed to launch, clear the request
                viewModel.clearBatchDeleteRequest()
            }
        }
    }

    var showDeleteDialog by remember { mutableStateOf(false) }

    // 首次进入时先让导航过渡完成，再挂载重型网格，避免首屏动画和列表构建抢主线程。
    LaunchedEffect(Unit) {
        viewModel.loadCurrentTabData()
        delay(300L)
        shouldRenderGrid = true
    }

    fun loadCurrentTabData() {
        scope.launch {
            viewModel.loadCurrentTabData()
        }
    }

    // 监听生命周期，onResume 时刷新列表
    val lifecycleOwner = androidx.lifecycle.compose.LocalLifecycleOwner.current
    DisposableEffect(lifecycleOwner) {
        val observer = LifecycleEventObserver { _, event ->
            if (event == Lifecycle.Event.ON_RESUME) {
                loadCurrentTabData()
            }
        }
        lifecycleOwner.lifecycle.addObserver(observer)
        onDispose {
            lifecycleOwner.lifecycle.removeObserver(observer)
        }
    }



    Scaffold(
        topBar = {
            Column {
                TopAppBar(
                    modifier = Modifier,
                    title = {
                        if (isSelectionMode) {
                            Text(
                                text = stringResource(R.string.items_selected, selectedPhotos.size),
                                color = Color.White
                            )
                        } else {
                            Text(
                                text = stringResource(R.string.gallery_photon),
                                color = Color.White,
                                fontSize = 18.sp,
                                fontWeight = FontWeight.Bold
                            )
                        }
                    },
                    navigationIcon = {
                        IconButton(onClick = {
                            if (isSelectionMode) {
                                viewModel.exitSelectionMode()
                            } else {
                                onBack()
                            }
                        }) {
                            Icon(
                                imageVector = if (isSelectionMode) Icons.Default.Close else Icons.AutoMirrored.Filled.ArrowBack,
                                contentDescription = stringResource(R.string.back),
                                tint = Color.White
                            )
                        }
                    },
                    actions = {
                        if (isSelectionMode) {
                            IconButton(onClick = { viewModel.toggleSelectAll() }) {
                                Icon(
                                    imageVector = AppIcons.SelectAll,
                                    contentDescription = stringResource(R.string.select_all),
                                    tint = Color.White
                                )
                            }
                        } else {
                            IconButton(onClick = {
                                launcher.launch(buildSystemGalleryMediaPickIntent(context))
                            }) {
                                Icon(
                                    imageVector = AppIcons.AddPhotoAlternate,
                                    contentDescription = stringResource(R.string.import_photo),
                                    tint = Color.White
                                )
                            }
                        }
                    },
                    colors = TopAppBarDefaults.topAppBarColors(
                        containerColor = Color(0xFF151515)
                    )
                )
                if (!isSelectionMode) {
                    GalleryTabRow(
                        selectedTab = selectedTab,
                        onTabSelected = { tab ->
                            scope.launch {
                                viewModel.selectTab(tab)
                            }
                        }
                    )
                }
            }
        },
        bottomBar = {
            // 多选模式下显示操作栏
            AnimatedVisibility(
                visible = isSelectionMode && selectedPhotos.isNotEmpty(),
                enter = slideInVertically(initialOffsetY = { it }) + fadeIn(),
                exit = slideOutVertically(targetOffsetY = { it }) + fadeOut()
            ) {
                Surface(
                    color = Color(0xFF1A1A1A),
                    modifier = Modifier
                        .fillMaxWidth()
                        .navigationBarsPadding()
                ) {
                    Row(
                        modifier = Modifier
                            .fillMaxWidth()
                            .padding(16.dp),
                        horizontalArrangement = Arrangement.SpaceEvenly
                    ) {
                        // 删除按钮
                        Column(
                            horizontalAlignment = Alignment.CenterHorizontally,
                            modifier = Modifier.clickable { showDeleteDialog = true }
                        ) {
                            Icon(
                                imageVector = Icons.Default.Delete,
                                contentDescription = stringResource(R.string.delete),
                                tint = Color.White,
                                modifier = Modifier.size(28.dp)
                            )
                            Spacer(modifier = Modifier.height(4.dp))
                            Text(
                                text = stringResource(R.string.delete),
                                color = Color.White,
                                fontSize = 12.sp
                            )
                        }

                        // 分享按钮
                        Column(
                            horizontalAlignment = Alignment.CenterHorizontally,
                            modifier = Modifier.clickable(enabled = !isSharing) { viewModel.shareSelectedPhotos() }
                        ) {
                            if (isSharing) {
                                CircularProgressIndicator(
                                    color = Color.White,
                                    modifier = Modifier.size(28.dp),
                                    strokeWidth = 2.dp
                                )
                            } else {
                                Icon(
                                    imageVector = Icons.Default.Share,
                                    contentDescription = stringResource(R.string.share),
                                    tint = Color.White,
                                    modifier = Modifier.size(28.dp)
                                )
                            }
                            Spacer(modifier = Modifier.height(4.dp))
                            Text(
                                text = stringResource(R.string.share),
                                color = Color.White,
                                fontSize = 12.sp
                            )
                        }

                        // 导出按钮
                        if (viewModel.selectedTab == GalleryTab.PHOTON) {
                            val isExporting by viewModel.isExporting.collectAsState()
                            val context = LocalContext.current
                            Column(
                                horizontalAlignment = Alignment.CenterHorizontally,
                                modifier = Modifier.clickable(enabled = !isExporting) {
                                    viewModel.exportSelectedPhotos { count ->
                                        if (count > 0) {
                                            Toast.makeText(context, R.string.export_complete, Toast.LENGTH_SHORT).show()
                                        }
                                    }
                                }
                            ) {
                                if (isExporting) {
                                    val progress = viewModel.exportProgress
                                    Column(horizontalAlignment = Alignment.CenterHorizontally) {
                                        CircularProgressIndicator(
                                            color = Color.White,
                                            modifier = Modifier.size(28.dp),
                                            strokeWidth = 2.dp
                                        )
                                        Text(
                                            text = "${progress.first}/${progress.second}",
                                            color = Color.White,
                                            fontSize = 10.sp
                                        )
                                    }
                                } else {
                                    Icon(
                                        imageVector = AppIcons.Output,
                                        contentDescription = stringResource(R.string.export),
                                        tint = AccentOrange,
                                        modifier = Modifier.size(28.dp)
                                    )
                                    Spacer(modifier = Modifier.height(4.dp))
                                    Text(
                                        text = stringResource(R.string.export),
                                        color = Color.White,
                                        fontSize = 12.sp
                                    )
                                }
                            }
                        }
                    }
                }
            }
        },
        containerColor = Color(0xFF151515),
        modifier = modifier
    ) { paddingValues ->
        PullToRefreshBox(
            isRefreshing = isLoading,
            onRefresh = {
                loadCurrentTabData()
            },
            modifier = Modifier
                .fillMaxSize()
                .padding(paddingValues)
        ) {
            if (selectedTab == GalleryTab.SYSTEM && !hasPermission) {
                // 权限缺失提示
                Column(
                    modifier = Modifier
                        .align(Alignment.Center)
                        .padding(32.dp),
                    horizontalAlignment = Alignment.CenterHorizontally
                ) {
                    Text(
                        text = stringResource(R.string.permission_required_gallery),
                        color = Color.White.copy(alpha = 0.6f),
                        fontSize = 16.sp,
                        textAlign = TextAlign.Center
                    )
                    Spacer(modifier = Modifier.height(16.dp))
                    Button(
                        onClick = {
                            val permission = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
                                arrayOf(
                                    android.Manifest.permission.READ_MEDIA_IMAGES,
                                    android.Manifest.permission.READ_MEDIA_VIDEO
                                )
                            } else {
                                arrayOf(android.Manifest.permission.READ_EXTERNAL_STORAGE)
                            }
                            permissionLauncher.launch(permission)
                        },
                        colors = ButtonDefaults.buttonColors(containerColor = AccentOrange)
                    ) {
                        Text(stringResource(R.string.grant_permission))
                    }
                }
            } else if (photos.isEmpty()) {
                // 空状态
                Column(
                    modifier = Modifier.align(Alignment.Center),
                    horizontalAlignment = Alignment.CenterHorizontally
                ) {
                    Text(
                        text = stringResource(R.string.no_photos),
                        color = Color.White.copy(alpha = 0.6f),
                        fontSize = 16.sp,
                        textAlign = TextAlign.Center
                    )
                }
            } else if (!shouldRenderGrid) {
                Box(
                    modifier = Modifier.fillMaxSize(),
                    contentAlignment = Alignment.Center
                ) {
                    CircularProgressIndicator(
                        color = AccentOrange,
                        modifier = Modifier.size(28.dp),
                        strokeWidth = 2.dp
                    )
                }
            } else {
                val currentPhotos = photos
                val gridEntries = remember(currentPhotos, context) {
                    buildGalleryGridEntries(
                        context = context,
                        photos = currentPhotos
                    )
                }
                GalleryRecyclerGrid(
                    entries = gridEntries,
                    selectedTab = selectedTab,
                    viewModel = viewModel,
                    selectedPhotos = selectedPhotos,
                    isSelectionMode = isSelectionMode,
                    isLoadingMore = (selectedTab == GalleryTab.SYSTEM && isSystemLoadingMore) ||
                            (selectedTab == GalleryTab.PHOTON && isPhotonLoadingMore),
                    onPhotoClick = onPhotoClick,
                    onLoadMore = { scope.launch { viewModel.loadCurrentTabMore() } },
                    modifier = Modifier.fillMaxSize()
                )
            }
        }
    }

    val deleteExportedPref by viewModel.deleteExported.collectAsState()

    // 删除确认对话框
    if (showDeleteDialog) {
        val exportedPhotosCount = remember(selectedPhotos) {
            selectedPhotos.sumOf { photo ->
                val baseCount = photo.metadata?.exportedUris?.size ?: 0
                val sourceUri = photo.metadata?.sourceUri
                val isVideoAndCaptured = photo.isVideo &&
                        photo.metadata?.isImported != true &&
                        !sourceUri.isNullOrBlank()
                baseCount + (if (isVideoAndCaptured) 1 else 0)
            }
        }
        val selectedOnlyVideos = remember(selectedPhotos) {
            selectedPhotos.isNotEmpty() && selectedPhotos.all { it.isVideo }
        }
        var deleteExportedState by remember(showDeleteDialog) { mutableStateOf(deleteExportedPref) }

        AlertDialog(
            onDismissRequest = { showDeleteDialog = false },
            title = { Text(stringResource(R.string.delete)) },
            text = {
                Column {
                    Text(
                        text = stringResource(R.string.delete_multiple_confirm, selectedPhotos.size)
                    )
                    if (viewModel.selectedTab == GalleryTab.PHOTON) {
                        if (exportedPhotosCount > 0) {
                            Spacer(modifier = Modifier.height(12.dp))
                            Row(
                                verticalAlignment = Alignment.CenterVertically,
                                modifier = Modifier
                                    .fillMaxWidth()
                                    .clickable { deleteExportedState = !deleteExportedState }
                                    .padding(vertical = 4.dp)
                            ) {
                                Checkbox(
                                    checked = deleteExportedState,
                                    onCheckedChange = { deleteExportedState = it },
                                    colors = CheckboxDefaults.colors(
                                        checkedColor = AccentOrange,
                                        uncheckedColor = Color.White.copy(alpha = 0.6f)
                                    )
                                )
                                Spacer(modifier = Modifier.width(8.dp))
                                Text(
                                    text = if (selectedOnlyVideos) {
                                        stringResource(R.string.delete_exported_videos_count, exportedPhotosCount)
                                    } else {
                                        stringResource(R.string.delete_exported_photos_count, exportedPhotosCount)
                                    },
                                    color = Color.White,
                                    fontSize = 14.sp
                                )
                            }
                        }
                    }
                }
            },
            confirmButton = {
                TextButton(
                    onClick = {
                        val finalDeleteExported = if (viewModel.selectedTab == GalleryTab.PHOTON && exportedPhotosCount > 0) deleteExportedState else true
                        if (viewModel.selectedTab == GalleryTab.PHOTON && exportedPhotosCount > 0) {
                            viewModel.setDeleteExported(deleteExportedState)
                        }
                        viewModel.deleteSelectedPhotos(finalDeleteExported)
                        showDeleteDialog = false
                    }
                ) {
                    Text(stringResource(R.string.delete), color = Color.Red)
                }
            },
            dismissButton = {
                TextButton(onClick = { showDeleteDialog = false }) {
                    Text(stringResource(R.string.cancel))
                }
            },
            containerColor = Color(0xFF2D2D2D),
            titleContentColor = Color.White,
            textContentColor = Color.White
        )
    }
}

@Composable
private fun GalleryTabRow(
    selectedTab: GalleryTab,
    onTabSelected: (GalleryTab) -> Unit
) {
    val selectedTabIndex = selectedTab.ordinal
    TabRow(
        selectedTabIndex = selectedTabIndex,
        containerColor = Color(0xFF151515),
        contentColor = Color.White,
        indicator = { tabPositions ->
            TabRowDefaults.SecondaryIndicator(
                modifier = Modifier.tabIndicatorOffset(tabPositions[selectedTabIndex]),
                color = AccentOrange
            )
        }
    ) {
        Tab(
            selected = selectedTab == GalleryTab.PHOTON,
            onClick = { onTabSelected(GalleryTab.PHOTON) },
            text = { Text(stringResource(R.string.gallery_photon)) }
        )
        Tab(
            selected = selectedTab == GalleryTab.SYSTEM,
            onClick = { onTabSelected(GalleryTab.SYSTEM) },
            text = { Text(stringResource(R.string.gallery_system)) }
        )
    }
}

@Composable
private fun GalleryRecyclerGrid(
    entries: List<GalleryGridEntry>,
    selectedTab: GalleryTab,
    viewModel: GalleryViewModel,
    selectedPhotos: List<MediaData>,
    isSelectionMode: Boolean,
    isLoadingMore: Boolean,
    onPhotoClick: (GalleryTab, Int) -> Unit,
    onLoadMore: () -> Unit,
    modifier: Modifier = Modifier
) {
    val selectedPhotoIds = selectedPhotos.map { it.id }.toSet()
    val adapter = remember {
        GalleryRecyclerAdapter()
    }

    // Preserve scroll state for each tab separately
    var photonScrollState by rememberSaveable { mutableStateOf<Parcelable?>(null) }
    var systemScrollState by rememberSaveable { mutableStateOf<Parcelable?>(null) }

    val currentScrollState = if (selectedTab == GalleryTab.PHOTON) photonScrollState else systemScrollState

    key(selectedTab) {
        val currentTab = selectedTab
        val rvHolder = remember { arrayOfNulls<RecyclerView>(1) }
        DisposableEffect(Unit) {
            onDispose {
                val state = rvHolder[0]?.layoutManager?.onSaveInstanceState()
                if (currentTab == GalleryTab.PHOTON) {
                    photonScrollState = state
                } else {
                    systemScrollState = state
                }
            }
        }

        AndroidView(
            modifier = modifier,
            factory = { context ->
                val container = FrameLayout(context)
                val spacingPx = (4f * context.resources.displayMetrics.density).toInt().coerceAtLeast(1)
                val recyclerView = RecyclerView(context).apply {
                    layoutParams = FrameLayout.LayoutParams(
                        FrameLayout.LayoutParams.MATCH_PARENT,
                        FrameLayout.LayoutParams.MATCH_PARENT
                    )
                    layoutManager = StaggeredGridLayoutManager(3, RecyclerView.VERTICAL).apply {
                        gapStrategy = StaggeredGridLayoutManager.GAP_HANDLING_MOVE_ITEMS_BETWEEN_SPANS
                        // Restore state for this specific tab
                        currentScrollState?.let { onRestoreInstanceState(it) }
                    }
                    setPadding(spacingPx / 2, spacingPx / 2, spacingPx / 2, spacingPx / 2)
                    clipToPadding = false
                    overScrollMode = RecyclerView.OVER_SCROLL_NEVER
                    isVerticalScrollBarEnabled = false
                    itemAnimator = null
                    setHasFixedSize(false)
                    addItemDecoration(GalleryGridSpacingDecoration(spacingPx))
                    this.adapter = adapter
                    rvHolder[0] = this

                    // Save state when scrolling stops
                    addOnScrollListener(object : RecyclerView.OnScrollListener() {
                        override fun onScrollStateChanged(recyclerView: RecyclerView, newState: Int) {
                            if (newState == RecyclerView.SCROLL_STATE_IDLE) {
                                val state = layoutManager?.onSaveInstanceState()
                                if (selectedTab == GalleryTab.PHOTON) {
                                    photonScrollState = state
                                } else {
                                    systemScrollState = state
                                }
                            }
                        }
                    })
                }
                container.addView(recyclerView)

                val fastScroller = GalleryFastScrollerView(context, recyclerView).apply {
                    layoutParams = FrameLayout.LayoutParams(
                        FrameLayout.LayoutParams.MATCH_PARENT,
                        FrameLayout.LayoutParams.MATCH_PARENT
                    )
                }
                container.addView(fastScroller)

                container
            },
            update = { container ->
                val recyclerView = container.getChildAt(0) as RecyclerView
                val fastScroller = container.getChildAt(1) as GalleryFastScrollerView
                val spanCount = 3 // Keep 3 columns as requested
                val layoutManager = recyclerView.layoutManager as? StaggeredGridLayoutManager
                if (layoutManager != null && layoutManager.spanCount != spanCount) {
                    layoutManager.spanCount = spanCount
                }

                fastScroller.onScrollEnd = {
                    val state = recyclerView.layoutManager?.onSaveInstanceState()
                    if (selectedTab == GalleryTab.PHOTON) {
                        photonScrollState = state
                    } else {
                        systemScrollState = state
                    }
                }

                adapter.bindState(
                    entries = entries,
                    selectedTab = selectedTab,
                    viewModel = viewModel,
                    selectedPhotoIds = selectedPhotoIds,
                    isSelectionMode = isSelectionMode,
                    isLoadingMore = isLoadingMore,
                    isLandscape = OrientationObserver.isLandscape,
                    rotationDegrees = OrientationObserver.rotationDegrees,
                    onPhotoClick = { tab, index ->
                        val state = recyclerView.layoutManager?.onSaveInstanceState()
                        if (tab == GalleryTab.PHOTON) {
                            photonScrollState = state
                        } else {
                            systemScrollState = state
                        }
                        onPhotoClick(tab, index)
                    },
                    onLoadMore = onLoadMore
                )
                if (recyclerView.adapter == null) {
                    recyclerView.adapter = adapter
                }
                // Ensure layout is recalculated if entries changed to prevent gaps
                (recyclerView.layoutManager as? StaggeredGridLayoutManager)?.invalidateSpanAssignments()

                fastScroller.setEntries(entries)
            }
        )
    }
}

private class GalleryFastScrollerView(
    context: Context,
    private val recyclerView: RecyclerView
) : View(context) {
    var onScrollEnd: (() -> Unit)? = null
    private val density = context.resources.displayMetrics.density
    private val thumbWidth = (4 * density).toInt()
    private val thumbHeight = (56 * density).toInt()
    private val trackWidth = (6 * density).toInt()
    private val touchAreaWidth = (24 * density).toInt()
    private val bubbleMargin = (48 * density).toInt()

    private val thumbPaint = Paint(Paint.ANTI_ALIAS_FLAG).apply {
        color = 0xE6FF5722.toInt() // AccentOrange with alpha
    }
    private val trackPaint = Paint(Paint.ANTI_ALIAS_FLAG).apply {
        color = 0x29FFFFFF.toInt() // White with 0.16 alpha
    }
    private val bubblePaint = Paint(Paint.ANTI_ALIAS_FLAG).apply {
        color = android.graphics.Color.WHITE
    }
    private val textPaint = Paint(Paint.ANTI_ALIAS_FLAG).apply {
        color = android.graphics.Color.BLACK
        textSize = 13 * density
        typeface = Typeface.create(Typeface.DEFAULT, Typeface.BOLD)
        textAlign = Paint.Align.CENTER
    }

    private var entries: List<GalleryGridEntry> = emptyList()
    private var isDragging = false
    private var lastTouchY = 0f
    private var thumbAlpha = 0f
    private var dragLabel: String? = null

    private val hideRunnable = Runnable {
        animateThumb(0f)
    }

    init {
        recyclerView.addOnScrollListener(object : RecyclerView.OnScrollListener() {
            override fun onScrolled(recyclerView: RecyclerView, dx: Int, dy: Int) {
                if (!isDragging) {
                    showThumb()
                    invalidate()
                }
            }

            override fun onScrollStateChanged(recyclerView: RecyclerView, newState: Int) {
                if (newState == RecyclerView.SCROLL_STATE_IDLE && !isDragging) {
                    postDelayed(hideRunnable, 900)
                } else {
                    removeCallbacks(hideRunnable)
                    showThumb()
                }
            }
        })
    }

    fun setEntries(entries: List<GalleryGridEntry>) {
        this.entries = entries
        invalidate()
    }

    private fun showThumb() {
        removeCallbacks(hideRunnable)
        if (thumbAlpha < 1f) {
            animateThumb(1f)
        }
    }

    private fun animateThumb(targetAlpha: Float) {
        animate().alpha(targetAlpha).setDuration(180).start()
        thumbAlpha = targetAlpha
    }

    override fun onDraw(canvas: Canvas) {
        if (entries.isEmpty() || thumbAlpha == 0f && !isDragging) return

        val range = recyclerView.computeVerticalScrollRange()
        val extent = recyclerView.computeVerticalScrollExtent()
        val offset = recyclerView.computeVerticalScrollOffset()

        if (range <= extent) return

        val usableHeight = height - thumbHeight
        val progress = offset.toFloat() / (range - extent).toFloat()
        val thumbTop = (progress * usableHeight).coerceIn(0f, usableHeight.toFloat())

        // Draw track
        val trackLeft = width - trackWidth.toFloat()
        canvas.drawRoundRect(trackLeft, 0f, width.toFloat(), height.toFloat(), 999f, 999f, trackPaint)

        // Draw thumb
        val thumbLeft = width - thumbWidth.toFloat() - (1 * density)
        canvas.drawRoundRect(thumbLeft, thumbTop, width.toFloat() - (1 * density), thumbTop + thumbHeight, 999f, 999f, thumbPaint)

        // Draw bubble
        if (isDragging && dragLabel != null) {
            val label = dragLabel!!
            val textBounds = Rect()
            textPaint.getTextBounds(label, 0, label.length, textBounds)
            val bubblePaddingH = 16 * density
            val bubblePaddingV = 10 * density
            val bubbleWidth = textBounds.width() + bubblePaddingH * 2
            val bubbleHeight = textBounds.height() + bubblePaddingV * 2
            val bubbleRight = width - bubbleMargin.toFloat()
            val bubbleLeft = bubbleRight - bubbleWidth
            val bubbleCenterY = thumbTop + thumbHeight / 2f
            val bubbleTop = (bubbleCenterY - bubbleHeight / 2f).coerceIn(0f, height - bubbleHeight)
            val bubbleBottom = bubbleTop + bubbleHeight

            canvas.drawRoundRect(bubbleLeft, bubbleTop, bubbleRight, bubbleBottom, 999f, 999f, bubblePaint)
            canvas.drawText(label, bubbleLeft + bubbleWidth / 2f, bubbleTop + bubblePaddingV + textBounds.height(), textPaint)
        }
    }

    @SuppressLint("ClickableViewAccessibility")
    override fun onTouchEvent(event: MotionEvent): Boolean {
        val x = event.x
        val y = event.y

        when (event.action) {
            MotionEvent.ACTION_DOWN -> {
                if (x < width - touchAreaWidth) return false
                isDragging = true
                showThumb()
                scrollTo(y)
                return true
            }
            MotionEvent.ACTION_MOVE -> {
                if (isDragging) {
                    scrollTo(y)
                    return true
                }
            }
            MotionEvent.ACTION_UP, MotionEvent.ACTION_CANCEL -> {
                if (isDragging) {
                    isDragging = false
                    dragLabel = null
                    onScrollEnd?.invoke()
                    postDelayed(hideRunnable, 900)
                    invalidate()
                    return true
                }
            }
        }
        return super.onTouchEvent(event)
    }

    private fun scrollTo(y: Float) {
        val usableHeight = height - thumbHeight
        val progress = ((y - thumbHeight / 2f) / usableHeight).coerceIn(0f, 1f)
        val itemCount = recyclerView.adapter?.itemCount ?: 0
        if (itemCount > 0) {
            val targetPos = (progress * (itemCount - 1)).toInt()
            recyclerView.scrollToPosition(targetPos)
            dragLabel = entries.getOrNull(targetPos)?.toFastScrollDateLabel(context)
            invalidate()
        }
    }

    private fun GalleryGridEntry.toFastScrollDateLabel(context: Context): String {
        return when (this) {
            is GalleryGridEntry.Header -> title
            is GalleryGridEntry.Photo -> {
                val sdf = java.text.SimpleDateFormat("yyyy-MM-dd", java.util.Locale.getDefault())
                sdf.format(java.util.Date(photo.dateAdded))
            }
        }
    }
}

private class GalleryGridSpacingDecoration(
    private val spacingPx: Int
) : RecyclerView.ItemDecoration() {
    private val halfSpacingPx = spacingPx / 2

    override fun getItemOffsets(
        outRect: Rect,
        view: View,
        parent: RecyclerView,
        state: RecyclerView.State
    ) {
        outRect.set(halfSpacingPx, halfSpacingPx, halfSpacingPx, halfSpacingPx)
    }
}

private class GalleryRecyclerAdapter : RecyclerView.Adapter<RecyclerView.ViewHolder>() {
    private val scope = CoroutineScope(SupervisorJob() + Dispatchers.Main.immediate)
    private var entries: List<GalleryGridEntry> = emptyList()
    private var selectedTab: GalleryTab = GalleryTab.PHOTON
    private var viewModel: GalleryViewModel? = null
    private var selectedPhotoIds: Set<String> = emptySet()
    private var isSelectionMode: Boolean = false
    private var isLoadingMore: Boolean = false
    private var isLandscape: Boolean = false
    private var rotationDegrees: Float = 0f
    private var onPhotoClick: (GalleryTab, Int) -> Unit = { _, _ -> }
    private var onLoadMore: () -> Unit = {}

    init {
        setHasStableIds(true)
    }

    fun bindState(
        entries: List<GalleryGridEntry>,
        selectedTab: GalleryTab,
        viewModel: GalleryViewModel,
        selectedPhotoIds: Set<String>,
        isSelectionMode: Boolean,
        isLoadingMore: Boolean,
        isLandscape: Boolean,
        rotationDegrees: Float,
        onPhotoClick: (GalleryTab, Int) -> Unit,
        onLoadMore: () -> Unit
    ) {
        val oldEntries = this.entries
        val oldLoadingMore = this.isLoadingMore
        val oldSelectedPhotoIds = this.selectedPhotoIds
        val oldIsSelectionMode = this.isSelectionMode
        val oldIsLandscape = this.isLandscape
        val oldRotationDegrees = this.rotationDegrees

        this.entries = entries
        this.selectedTab = selectedTab
        this.viewModel = viewModel
        this.selectedPhotoIds = selectedPhotoIds
        this.isSelectionMode = isSelectionMode
        this.isLoadingMore = isLoadingMore
        this.isLandscape = isLandscape
        this.rotationDegrees = rotationDegrees
        this.onPhotoClick = onPhotoClick
        this.onLoadMore = onLoadMore

        val diffResult = DiffUtil.calculateDiff(object : DiffUtil.Callback() {
            override fun getOldListSize(): Int = oldEntries.size + if (oldLoadingMore) 1 else 0
            override fun getNewListSize(): Int = entries.size + if (isLoadingMore) 1 else 0

            override fun areItemsTheSame(oldItemPosition: Int, newItemPosition: Int): Boolean {
                val oldIsLoading = oldItemPosition >= oldEntries.size
                val newIsLoading = newItemPosition >= entries.size
                if (oldIsLoading && newIsLoading) return true
                if (oldIsLoading || newIsLoading) return false

                val oldEntry = oldEntries[oldItemPosition]
                val newEntry = entries[newItemPosition]
                return when {
                    oldEntry is GalleryGridEntry.Header && newEntry is GalleryGridEntry.Header -> oldEntry.key == newEntry.key
                    oldEntry is GalleryGridEntry.Photo && newEntry is GalleryGridEntry.Photo -> oldEntry.photo.id == newEntry.photo.id
                    else -> false
                }
            }

            override fun areContentsTheSame(oldItemPosition: Int, newItemPosition: Int): Boolean {
                if (oldItemPosition >= oldEntries.size || newItemPosition >= entries.size) return true

                val oldEntry = oldEntries[oldItemPosition]
                val newEntry = entries[newItemPosition]

                // If anything about the UI state changed, we should rebind
                if (oldIsSelectionMode != isSelectionMode || oldIsLandscape != isLandscape || oldRotationDegrees != rotationDegrees) return false

                return when {
                    oldEntry is GalleryGridEntry.Header && newEntry is GalleryGridEntry.Header -> oldEntry.title == newEntry.title
                    oldEntry is GalleryGridEntry.Photo && newEntry is GalleryGridEntry.Photo -> {
                        val id = oldEntry.photo.id
                        val wasSelected = id in oldSelectedPhotoIds
                        val isSelected = id in selectedPhotoIds
                        wasSelected == isSelected && oldEntry.photo.dateAdded == newEntry.photo.dateAdded
                    }

                    else -> false
                }
            }
        })
        diffResult.dispatchUpdatesTo(this)
    }

    override fun getItemCount(): Int = entries.size + if (isLoadingMore) 1 else 0

    override fun getItemId(position: Int): Long {
        if (position >= entries.size) return "loading_more".hashCode().toLong()
        return when (val entry = entries[position]) {
            is GalleryGridEntry.Header -> entry.key.hashCode().toLong()
            is GalleryGridEntry.Photo -> entry.photo.id.hashCode().toLong()
        }
    }

    override fun getItemViewType(position: Int): Int {
        if (position >= entries.size) return VIEW_TYPE_LOADING
        return when (entries[position]) {
            is GalleryGridEntry.Header -> VIEW_TYPE_HEADER
            is GalleryGridEntry.Photo -> VIEW_TYPE_PHOTO
        }
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RecyclerView.ViewHolder {
        return when (viewType) {
            VIEW_TYPE_HEADER -> HeaderHolder(
                LayoutInflater.from(parent.context).inflate(R.layout.item_gallery_header, parent, false) as TextView
            )

            VIEW_TYPE_LOADING -> LoadingHolder(
                LayoutInflater.from(parent.context).inflate(R.layout.item_gallery_loading, parent, false)
            )

            else -> PhotoHolder(GalleryPhotoItemView(parent.context))
        }
    }

    override fun onBindViewHolder(holder: RecyclerView.ViewHolder, position: Int) {
        val params = (holder.itemView.layoutParams as? StaggeredGridLayoutManager.LayoutParams)
            ?: StaggeredGridLayoutManager.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.WRAP_CONTENT
            )
        params.isFullSpan = position >= entries.size || entries[position].isFullSpan()
        holder.itemView.layoutParams = params

        if (position >= entries.size) {
            return
        }

        when (val entry = entries[position]) {
            is GalleryGridEntry.Header -> {
                (holder.itemView as TextView).text = entry.title
            }

            is GalleryGridEntry.Photo -> {
                val photo = entry.photo
                val model = viewModel ?: return
                if (position == entries.lastIndex) {
                    onLoadMore()
                }
                (holder as PhotoHolder).bind(
                    photo = photo,
                    viewModel = model,
                    isSelected = photo.id in selectedPhotoIds,
                    isSelectionMode = isSelectionMode,
                    isLandscape = isLandscape,
                    rotationDegrees = rotationDegrees,
                    scope = scope,
                    onClick = {
                        if (isSelectionMode) {
                            model.togglePhotoSelection(photo)
                        } else {
                            model.setCurrentPhoto(entry.index)
                            onPhotoClick(selectedTab, entry.index)
                        }
                    },
                    onLongClick = {
                        if (!isSelectionMode) {
                            model.enterSelectionMode()
                        }
                        model.togglePhotoSelection(photo)
                    }
                )
            }
        }
    }

    override fun onViewRecycled(holder: RecyclerView.ViewHolder) {
        if (holder is PhotoHolder) {
            holder.recycle()
        }
        super.onViewRecycled(holder)
    }

    private fun GalleryGridEntry.isFullSpan(): Boolean =
        this is GalleryGridEntry.Header ||
                (this is GalleryGridEntry.Photo && photo.shouldUseFullLineSpan())

    private class HeaderHolder(view: TextView) : RecyclerView.ViewHolder(view)
    private class LoadingHolder(view: View) : RecyclerView.ViewHolder(view)
    private class PhotoHolder(
        private val view: GalleryPhotoItemView
    ) : RecyclerView.ViewHolder(view) {
        private var job: Job? = null

        fun bind(
            photo: MediaData,
            viewModel: GalleryViewModel,
            isSelected: Boolean,
            isSelectionMode: Boolean,
            isLandscape: Boolean,
            rotationDegrees: Float,
            scope: CoroutineScope,
            onClick: () -> Unit,
            onLongClick: () -> Unit
        ) {
            job?.cancel()
            view.bindStatic(
                photo = photo,
                viewModel = viewModel,
                isSelected = isSelected,
                isSelectionMode = isSelectionMode,
                isLandscape = isLandscape,
                rotationDegrees = rotationDegrees,
                onClick = onClick,
                onLongClick = onLongClick
            )
            job = scope.launch {
                val bitmap = viewModel.getGridThumbnailBitmap(photo)
                view.bindThumbnail(photo.id, bitmap)
            }
        }

        fun recycle() {
            job?.cancel()
            job = null
            view.clearThumbnail()
        }
    }

    private companion object {
        const val VIEW_TYPE_HEADER = 0
        const val VIEW_TYPE_PHOTO = 1
        const val VIEW_TYPE_LOADING = 2
    }
}

private fun MediaData.shouldUseFullLineSpan(): Boolean {
    if (!isImage) return false
    val width = width.takeIf { it > 0 } ?: return false
    val height = height.takeIf { it > 0 } ?: return false
    return width.toFloat() / height.toFloat() >= 2.2f
}

private class GalleryPhotoItemView(context: Context) : FrameLayout(context) {
    private val contentLayer: FrameLayout
    private val imageView: ImageView
    private val selectionOverlay: View
    private val selectionIcon: ImageView
    private val videoBadge: LinearLayout
    private val videoDuration: TextView
    private val motionIcon: ImageView
    private val burstIcon: ImageView
    private val rawBadge: TextView
    private val importedBadge: TextView
    private val relatedBadge: View
    private var aspectRatio: Float = 1f
    private var boundPhotoId: String? = null

    init {
        LayoutInflater.from(context).inflate(R.layout.item_gallery_photo, this, true)
        clipToOutline = true
        background = androidx.core.content.ContextCompat.getDrawable(context, R.drawable.bg_gallery_photo_item)
        layoutParams = ViewGroup.LayoutParams(
            ViewGroup.LayoutParams.MATCH_PARENT,
            ViewGroup.LayoutParams.WRAP_CONTENT
        )
        contentLayer = findViewById(R.id.gallery_photo_content)
        imageView = findViewById(R.id.gallery_photo_image)
        selectionOverlay = findViewById(R.id.gallery_photo_selection_overlay)
        selectionIcon = findViewById(R.id.gallery_photo_selection_icon)
        videoBadge = findViewById(R.id.gallery_photo_video_badge)
        videoDuration = findViewById(R.id.gallery_photo_video_duration)
        motionIcon = findViewById(R.id.gallery_photo_motion_icon)
        burstIcon = findViewById(R.id.gallery_photo_burst_icon)
        rawBadge = findViewById(R.id.gallery_photo_raw_badge)
        importedBadge = findViewById(R.id.gallery_photo_imported_badge)
        relatedBadge = findViewById(R.id.gallery_photo_related_badge)
        clipChildren = false
        clipToPadding = false
    }

    fun bindStatic(
        photo: MediaData,
        viewModel: GalleryViewModel,
        isSelected: Boolean,
        isSelectionMode: Boolean,
        isLandscape: Boolean,
        rotationDegrees: Float,
        onClick: () -> Unit,
        onLongClick: () -> Unit
    ) {
        boundPhotoId = photo.id
        aspectRatio = photo.galleryAspectRatio(isLandscape)
        imageView.setImageDrawable(null)
        selectionOverlay.visibility = if (isSelectionMode && isSelected) VISIBLE else GONE
        selectionIcon.visibility = if (isSelectionMode) VISIBLE else GONE
        selectionIcon.setImageResource(
            if (isSelected) R.drawable.ic_gallery_check_circle else R.drawable.ic_gallery_radio_unchecked
        )

        videoBadge.visibility = if (photo.isVideo) VISIBLE else GONE
        videoDuration.text = photo.getFormattedDuration()
        motionIcon.visibility = if (photo.isMotionPhoto) VISIBLE else GONE
        burstIcon.visibility = if (photo.isBurstPhoto) VISIBLE else GONE
        rawBadge.visibility = if (photo.isImage && viewModel.isRawInGallery(photo.id)) VISIBLE else GONE
        importedBadge.visibility =
            if (viewModel.selectedTab == GalleryTab.PHOTON && photo.sourceUri != null) VISIBLE else GONE
        importedBadge.text = context.getString(R.string.imported)
        relatedBadge.visibility =
            if (viewModel.selectedTab == GalleryTab.SYSTEM && photo.relatedPhoto != null) VISIBLE else GONE

        setOnClickListener { onClick() }
        setOnLongClickListener {
            onLongClick()
            true
        }

        val targetDegrees = if (rotationDegrees != 0f) rotationDegrees - 180f else 0f
        if (contentLayer.rotation != targetDegrees) {
            contentLayer.animate()
                .rotation(targetDegrees)
                .setDuration(300)
                .start()
        }
        requestLayout()
    }

    fun bindThumbnail(photoId: String, bitmap: Bitmap?) {
        if (boundPhotoId != photoId || bitmap == null || bitmap.isRecycled) return
        val bitmapAspectRatio = bitmap.galleryBitmapAspectRatio()
        if (abs(aspectRatio - bitmapAspectRatio) > 0.01f) {
            aspectRatio = bitmapAspectRatio
            requestLayout()
        }
        imageView.setImageBitmap(bitmap)
    }

    fun clearThumbnail() {
        boundPhotoId = null
        imageView.setImageDrawable(null)
    }

    override fun onMeasure(widthMeasureSpec: Int, heightMeasureSpec: Int) {
        val width = MeasureSpec.getSize(widthMeasureSpec).coerceAtLeast(1)
        val height = (width / aspectRatio.coerceAtLeast(0.1f)).toInt().coerceAtLeast(1)

        setMeasuredDimension(width, height)

        val isRotated = OrientationObserver.isLandscape
        val childWidth: Int
        val childHeight: Int

        if (isRotated) {
            childWidth = height
            childHeight = width
        } else {
            childWidth = width
            childHeight = height
        }

        val childWidthSpec = MeasureSpec.makeMeasureSpec(childWidth, MeasureSpec.EXACTLY)
        val childHeightSpec = MeasureSpec.makeMeasureSpec(childHeight, MeasureSpec.EXACTLY)

        // Measure contentLayer and other potential children
        for (i in 0 until childCount) {
            val child = getChildAt(i)
            if (child.visibility != GONE) {
                child.measure(childWidthSpec, childHeightSpec)
            }
        }
    }

    override fun onLayout(changed: Boolean, left: Int, top: Int, right: Int, bottom: Int) {
        val width = right - left
        val height = bottom - top

        for (i in 0 until childCount) {
            val child = getChildAt(i)
            if (child.visibility != GONE) {
                val childWidth = child.measuredWidth
                val childHeight = child.measuredHeight
                val childLeft = (width - childWidth) / 2
                val childTop = (height - childHeight) / 2
                child.layout(childLeft, childTop, childLeft + childWidth, childTop + childHeight)
            }
        }
    }
}

private fun Bitmap.galleryBitmapAspectRatio(): Float {
    val resolvedWidth = width.takeIf { it > 0 } ?: return 1f
    val resolvedHeight = height.takeIf { it > 0 } ?: return 1f
    return if (OrientationObserver.isLandscape) {
        resolvedHeight.toFloat() / resolvedWidth.toFloat()
    } else {
        resolvedWidth.toFloat() / resolvedHeight.toFloat()
    }
}

private fun MediaData.galleryAspectRatio(isLandscape: Boolean): Float {
    val rawWidth = if (isVideo) {
        width
    } else {
        width
    }
    val rawHeight = if (isVideo) {
        height
    } else {
        height
    }
    val rotationDegrees = if (isVideo) metadata?.rotationDegrees ?: 0 else 0
    val shouldSwapDimensions = rotationDegrees == 90 || rotationDegrees == 270
    val resolvedWidth = if (shouldSwapDimensions) rawHeight else rawWidth
    val resolvedHeight = if (shouldSwapDimensions) rawWidth else rawHeight
    return if (resolvedWidth > 0 && resolvedHeight > 0) {
        if (isLandscape) {
            resolvedHeight.toFloat() / resolvedWidth.toFloat()
        } else {
            resolvedWidth.toFloat() / resolvedHeight.toFloat()
        }
    } else {
        1f
    }
}
