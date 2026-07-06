package com.hinnka.mycamera.ui.settings

import android.annotation.SuppressLint
import android.net.Uri
import androidx.activity.compose.BackHandler
import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.foundation.ExperimentalFoundationApi
import androidx.compose.foundation.background
import androidx.compose.foundation.basicMarquee
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.combinedClickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.itemsIndexed
import androidx.compose.foundation.lazy.rememberLazyListState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.material3.TabRowDefaults.tabIndicatorOffset
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.hinnka.mycamera.R
import com.hinnka.mycamera.color.TransferCurve
import com.hinnka.mycamera.data.CustomImportManager
import com.hinnka.mycamera.data.ZipCubeImportManager
import com.hinnka.mycamera.lut.LutInfo
import com.hinnka.mycamera.lut.orderedLutCategoryTitles
import com.hinnka.mycamera.raw.ColorSpace
import com.hinnka.mycamera.ui.camera.autoRotate
import com.hinnka.mycamera.ui.camera.LutEditBottomSheet
import com.hinnka.mycamera.utils.PLog
import com.hinnka.mycamera.ui.components.PaymentDialog
import com.hinnka.mycamera.viewmodel.CameraViewModel
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import sh.calvin.reorderable.ReorderableItem
import sh.calvin.reorderable.rememberReorderableLazyListState
import com.hinnka.mycamera.ui.icons.AppIcons

private data class CategoryManagementItem(
    val name: String,
    val isFixed: Boolean
)

private fun sanitizeCustomLutCategoryInput(
    category: String,
    favoriteText: String,
    builtInText: String,
    uncategorizedText: String
): String {
    val trimmedCategory = category.trim()
    return if (trimmedCategory == favoriteText || trimmedCategory == builtInText || trimmedCategory == uncategorizedText) {
        ""
    } else {
        trimmedCategory
    }
}

private fun sanitizeCategoryOrder(
    order: List<String>,
    builtInText: String,
    reservedCategoryNames: Set<String>
): List<String> {
    return order
        .filter { it == builtInText || it !in reservedCategoryNames }
        .distinct()
}

private fun isZipImportUri(context: android.content.Context, uri: Uri): Boolean {
    return CustomImportManager.isZipImportFileName(
        CustomImportManager.resolveDisplayFileName(context, uri)
    )
}

/**
 * 滤镜管理页面
 * 
 * 支持选择默认滤镜、拖拽排序、重命名、删除（非内建）、导入
 */
@SuppressLint("LocalContextGetResourceValueCall")
@OptIn(ExperimentalMaterial3Api::class, ExperimentalFoundationApi::class)
@Composable
fun FilterManagementScreen(
    viewModel: CameraViewModel,
    onBack: () -> Unit,
    pendingLutImportUris: List<Uri> = emptyList(),
    onLutImportHandled: () -> Unit = {},
    locateLutId: String? = null,
    modifier: Modifier = Modifier
) {
    val currentLutId by viewModel.currentLutId.collectAsState()
    val isPurchased by viewModel.isPurchased.collectAsState()
    val availableLuts = viewModel.availableLutList
    val customImportManager = viewModel.getCustomImportManager()
    val scope = rememberCoroutineScope()
    val context = LocalContext.current

    // 本地可变列表用于拖拽排序
    var localLutList by remember { mutableStateOf(availableLuts) }

    // 如果初始为空但 ViewModel 数据已加载，立即同步
    if (localLutList.isEmpty() && availableLuts.isNotEmpty()) {
        localLutList = availableLuts
    }

    // 当 availableLuts 更新时同步本地列表
    LaunchedEffect(availableLuts) {
        val existingIds = localLutList.map { it.id }.toSet()
        val newItems = availableLuts.filter { it.id !in existingIds }

        if (newItems.isEmpty()) {
            localLutList = localLutList.mapNotNull { local ->
                availableLuts.find { it.id == local.id }
            }
        } else {
            // 如果新项是一个（如复制）或多个（如批量导入），按 availableLuts 的顺序插入到 localLutList 的合适位置
            val updatedList = localLutList.mapNotNull { local ->
                availableLuts.find { it.id == local.id }
            }.toMutableList()

            newItems.forEach { newItem ->
                val idxInAvailable = availableLuts.indexOfFirst { it.id == newItem.id }
                if (idxInAvailable > 0) {
                    val prevId = availableLuts[idxInAvailable - 1].id
                    val insertPos = updatedList.indexOfFirst { it.id == prevId }
                    if (insertPos != -1) {
                        updatedList.add(insertPos + 1, newItem)
                    } else {
                        updatedList.add(0, newItem)
                    }
                } else {
                    updatedList.add(0, newItem)
                }
            }
            localLutList = updatedList
        }
    }

    // 重命名对话框状态
    var showRenameDialog by remember { mutableStateOf(false) }
    var renamingLut by remember { mutableStateOf<LutInfo?>(null) }
    var renameText by remember { mutableStateOf("") }

    // 复制对话框状态
    var showCopyDialog by remember { mutableStateOf(false) }
    var copyingLut by remember { mutableStateOf<LutInfo?>(null) }
    var copyText by remember { mutableStateOf("") }

    // 删除确认对话框状态
    var showDeleteDialog by remember { mutableStateOf(false) }
    var deletingLut by remember { mutableStateOf<LutInfo?>(null) }

    // 导出预设对话框状态
    var showExportDialog by remember { mutableStateOf(false) }
    var exportingLut by remember { mutableStateOf<LutInfo?>(null) }

    // 导入状态
    var isImporting by remember { mutableStateOf(false) }
    var importProgress by remember { mutableStateOf<Pair<Int, Int>?>(null) }  // 当前进度和总数
    var importResult by remember { mutableStateOf<String?>(null) }

    // 色彩配方编辑状态
    var showColorRecipeSheet by remember { mutableStateOf(false) }
    var editingLutId by remember { mutableStateOf<String?>(null) }

    // 分类编辑状态
    var showCategoryDialog by remember { mutableStateOf(false) }
    var categorizingIds by remember { mutableStateOf<List<String>>(emptyList()) }
    var categoryText by remember { mutableStateOf("") }
    var categoryToDelete by remember { mutableStateOf<String?>(null) }
    var showImportCategoryDialog by remember { mutableStateOf(false) }
    var pendingImportUris by remember { mutableStateOf<List<Uri>>(emptyList()) }
    var pendingZipUris by remember { mutableStateOf<Set<Uri>>(emptySet()) }

    val lazyListState = rememberLazyListState()

    LaunchedEffect(pendingLutImportUris) {
        if (pendingLutImportUris.isNotEmpty()) {
            pendingImportUris = pendingLutImportUris
            pendingZipUris = pendingLutImportUris.filter { isZipImportUri(context, it) }.toSet()
            categoryText = ""
            showImportCategoryDialog = true
            onLutImportHandled()
        }
    }

    // 多选状态
    var selectedIds by remember { mutableStateOf(setOf<String>()) }
    val isSelectionMode = selectedIds.isNotEmpty()

    BackHandler(enabled = isSelectionMode) {
        selectedIds = emptySet()
    }

    // 分类管理状态
    val categoryOrder by viewModel.categoryOrder.collectAsState(emptyList())
    var showCategoryManagement by remember { mutableStateOf(false) }

    val builtInText = stringResource(R.string.built_in)
    val uncategorizedText = stringResource(R.string.uncategorized)
    val favoriteText = stringResource(R.string.favorite)
    val reservedCategoryNames = remember(favoriteText, builtInText, uncategorizedText) {
        setOf(favoriteText, builtInText, uncategorizedText)
    }

    var selectedTabIndex by remember { mutableIntStateOf(0) }
    val categories = remember(localLutList, categoryOrder, favoriteText, builtInText, uncategorizedText, reservedCategoryNames) {
        orderedLutCategoryTitles(
            luts = localLutList,
            categoryOrder = categoryOrder,
            builtInText = builtInText,
            uncategorizedText = uncategorizedText,
            favoriteText = favoriteText
        )
    }
    val filteredLutList = remember(selectedTabIndex, localLutList, categories) {
        if (selectedTabIndex >= categories.size) return@remember localLutList

        when (val selectedCategory = categories[selectedTabIndex]) {
            favoriteText -> localLutList.filter { it.isFavorite }
            builtInText -> localLutList.filter { it.isBuiltIn }
            uncategorizedText -> localLutList.filter { !it.isBuiltIn && it.category.isEmpty() }
            else -> localLutList.filter { it.category == selectedCategory }
        }
    }

    var hasLocated by remember(locateLutId) { mutableStateOf(false) }

    // 自动定位到指定滤镜
    LaunchedEffect(locateLutId, categories) {
        if (!locateLutId.isNullOrEmpty() && !hasLocated && categories.isNotEmpty()) {
            // 确保本地列表已同步且包含目标项
            val targetLut = localLutList.find { it.id == locateLutId }
            if (targetLut != null) {
                // 等待页面入场动画完成 (约 350ms)，避免与 Navigation 切换动画抢占资源导致掉帧卡顿
                kotlinx.coroutines.delay(350)
                
                // 查找目标所属分类
                val categoryName = if (targetLut.isFavorite) favoriteText
                                 else if (targetLut.isBuiltIn) builtInText
                                 else if (targetLut.category.isEmpty()) uncategorizedText
                                 else targetLut.category
                val categoryIndex = categories.indexOf(categoryName)
                
                if (categoryIndex >= 0 && selectedTabIndex != categoryIndex) {
                    selectedTabIndex = categoryIndex
                    // 等待 Tab 切换引起的列表重组完成
                    kotlinx.coroutines.delay(150) 
                }
                
                // 重新获取当前分类下的列表并定位
                val filteredLutsNow = when (categoryName) {
                    favoriteText -> localLutList.filter { it.isFavorite }
                    builtInText -> localLutList.filter { it.isBuiltIn }
                    uncategorizedText -> localLutList.filter { !it.isBuiltIn && it.category.isEmpty() }
                    else -> localLutList.filter { it.category == categoryName }
                }
                
                val indexInFiltered = filteredLutsNow.indexOfFirst { it.id == locateLutId }
                if (indexInFiltered >= 0) {
                    // 使用带动画的滚动，给用户一个明确的"定位"视觉反馈
                    lazyListState.animateScrollToItem(maxOf(0, indexInFiltered - 1))
                }
            }
            hasLocated = true // 标记为已定位，避免后续数据变化时反复触发
        }
    }

    // 批量文件选择器
    val lutFilePicker = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.GetMultipleContents()
    ) { uris: List<Uri> ->
        if (uris.isNotEmpty()) {
            pendingImportUris = uris
            pendingZipUris = uris.filter { isZipImportUri(context, it) }.toSet()
            categoryText = ""
            showImportCategoryDialog = true
        }
    }

    var pendingExportName by remember { mutableStateOf("") }
    var pendingExportBytes by remember { mutableStateOf(ByteArray(0)) }
    val exportLauncher = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.CreateDocument("application/octet-stream"),
    ) { uri ->
        if (uri != null) {
            scope.launch {
                withContext(Dispatchers.IO) {
                    try {
                        context.contentResolver.openOutputStream(uri)?.use { output ->
                            output.write(pendingExportBytes)
                        }
                        withContext(Dispatchers.Main) {
                            android.widget.Toast.makeText(
                                context,
                                context.getString(R.string.export_success),
                                android.widget.Toast.LENGTH_SHORT
                            ).show()
                        }
                    } catch (e: Exception) {
                        PLog.e("FilterManagementScreen", "Failed to export LUT", e)
                    }
                }
            }
        }
    }

    // 分类删除确认对话框
    if (categoryToDelete != null) {
        val target = categoryToDelete!!
        AlertDialog(
            onDismissRequest = { categoryToDelete = null },
            title = { Text(stringResource(R.string.delete_category_title)) },
            text = { Text(stringResource(R.string.delete_category_message, target)) },
            confirmButton = {
                TextButton(
                    onClick = {
                        scope.launch {
                            // 立即更新本地 UI 列表防止闪烁
                            localLutList = localLutList.map {
                                if (it.category == target) it.copy(category = "") else it
                            }
                            withContext(Dispatchers.IO) {
                                // 批量在持久层清空分类
                                val impacted = availableLuts.filter { it.category == target }
                                impacted.forEach { lut ->
                                    customImportManager.updateLutCategory(lut.id, "")
                                }
                            }
                            viewModel.refreshCustomContent()
                            categoryToDelete = null
                        }
                    },
                    colors = ButtonDefaults.textButtonColors(contentColor = Color.Red)
                ) {
                    Text(stringResource(R.string.delete))
                }
            },
            dismissButton = {
                TextButton(onClick = { categoryToDelete = null }) {
                    Text(stringResource(R.string.cancel))
                }
            }
        )
    }

    // 拖拽排序状态
    val reorderableLazyListState = rememberReorderableLazyListState(lazyListState) { from, to ->
        val fromId = from.key as? String ?: return@rememberReorderableLazyListState
        val toId = to.key as? String ?: return@rememberReorderableLazyListState

        // 仅处理滤镜项的排序，忽略非滤镜项（如 import_result）
        if (fromId == "import_result" || toId == "import_result") return@rememberReorderableLazyListState

        // 在原始列表中找到这两个滤镜的位置
        val fromIndexInLocal = localLutList.indexOfFirst { it.id == fromId }
        val toIndexInLocal = localLutList.indexOfFirst { it.id == toId }

        if (fromIndexInLocal != -1 && toIndexInLocal != -1) {
            // 更新本地列表顺序
            localLutList = localLutList.toMutableList().apply {
                add(toIndexInLocal, removeAt(fromIndexInLocal))
            }
        }
    }

    val backgroundColor = Color(0xFF151515)

    Column(
        modifier = modifier
            .fillMaxSize()
            .background(backgroundColor)
            .navigationBarsPadding()
    ) {
        // 顶部标题栏
        TopAppBar(
            title = {
                if (isSelectionMode) {
                    Text(
                        text = stringResource(R.string.selected_count, selectedIds.size),
                        color = Color.White,
                        fontSize = 20.sp,
                        fontWeight = FontWeight.Medium
                    )
                } else {
                    Text(
                        text = stringResource(R.string.filter_management_title),
                        color = Color.White,
                        fontSize = 20.sp,
                        fontWeight = FontWeight.Medium
                    )
                }
            },
            navigationIcon = {
                if (isSelectionMode) {
                    IconButton(onClick = { selectedIds = emptySet() }) {
                        Icon(
                            imageVector = Icons.Default.Close,
                            contentDescription = stringResource(R.string.cancel),
                            tint = Color.White
                        )
                    }
                } else {
                    IconButton(
                        onClick = {
                            // 保存排序顺序
                            viewModel.saveFilterOrder(localLutList.map { it.id })
                            onBack()
                        },
                        modifier = Modifier.autoRotate()
                    ) {
                        Icon(
                            imageVector = Icons.AutoMirrored.Filled.ArrowBack,
                            contentDescription = stringResource(R.string.back),
                            tint = Color.White
                        )
                    }
                }
            },
            actions = {
                if (isSelectionMode) {
                    // 全选按钮
                    IconButton(onClick = {
                        selectedIds = if (selectedIds.size == filteredLutList.size) {
                            emptySet()
                        } else {
                            filteredLutList.map { it.id }.toSet()
                        }
                    }) {
                        Icon(
                            imageVector = if (selectedIds.size == filteredLutList.size) AppIcons.CheckBox else AppIcons.CheckBoxOutlineBlank,
                            contentDescription = "Select All",
                            tint = Color.White
                        )
                    }
                    // 批量分类
                    IconButton(onClick = {
                        categorizingIds = selectedIds.toList()
                        categoryText = ""
                        showCategoryDialog = true
                    }) {
                        Icon(
                            imageVector = AppIcons.Label,
                            contentDescription = "Batch Categorize",
                            tint = Color.White
                        )
                    }
                    // 批量删除
                    IconButton(onClick = {
                        val toDelete = availableLuts.filter { it.id in selectedIds && !it.isBuiltIn }
                        if (toDelete.isNotEmpty()) {
                            scope.launch {
                                withContext(Dispatchers.IO) {
                                    toDelete.forEach {
                                        customImportManager.deleteCustomLut(it.id)
                                    }
                                }
                                viewModel.refreshCustomContent()
                                selectedIds = emptySet()
                            }
                        }
                    }) {
                        Icon(
                            imageVector = Icons.Default.Delete,
                            contentDescription = "Batch Delete",
                            tint = Color.White
                        )
                    }
                } else {
                    // 导入进度提示
                    if (isImporting && importProgress != null) {
                        Text(
                            text = "${importProgress!!.first}/${importProgress!!.second}",
                            color = Color.White.copy(alpha = 0.7f),
                            fontSize = 14.sp,
                            modifier = Modifier.padding(end = 8.dp)
                        )
                    }

                    // 分类管理按钮
                    IconButton(onClick = { showCategoryManagement = true }) {
                        Icon(
                            imageVector = Icons.Default.Settings,
                            contentDescription = stringResource(R.string.category_management_title),
                            tint = Color.White
                        )
                    }


                    // 导入按钮
                    IconButton(
                        onClick = {
                            lutFilePicker.launch("*/*")
                        },
                        enabled = !isImporting
                    ) {
                        if (isImporting) {
                            CircularProgressIndicator(
                                modifier = Modifier.size(24.dp),
                                color = Color.White,
                                strokeWidth = 2.dp
                            )
                        } else {
                            Icon(
                                imageVector = Icons.Default.Add,
                                contentDescription = stringResource(R.string.import_filter),
                                tint = Color.White
                            )
                        }
                    }
                }
            },
            colors = TopAppBarDefaults.topAppBarColors(
                containerColor = backgroundColor
            )
        )

        // 导入进度提示
        importProgress?.takeIf { isImporting }?.let { progress ->
            Box(
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(horizontal = 16.dp, vertical = 8.dp)
            ) {
                LinearProgressIndicator(
                    progress = { progress.first.toFloat() / (progress.second.takeIf { it > 0 } ?: 1) },
                    modifier = Modifier.fillMaxWidth().height(4.dp).clip(RoundedCornerShape(2.dp)),
                    color = Color(0xFFFF6B35),
                    trackColor = Color.White.copy(alpha = 0.1f)
                )
            }
        }

        Column(modifier = Modifier.weight(1f)) {
            // 修正 Tab 越界（如果分类消失了）
            val currentTabIndex = if (selectedTabIndex >= categories.size) 0 else selectedTabIndex

            LaunchedEffect(categories.size) {
                if (selectedTabIndex >= categories.size) {
                    selectedTabIndex = 0
                }
            }

            val copy_suffix = stringResource(R.string.copy_suffix)

            ScrollableTabRow(
                selectedTabIndex = currentTabIndex,
                containerColor = Color.Transparent,
                contentColor = Color.White,
                edgePadding = 16.dp,
                divider = {},
                indicator = { tabPositions ->
                    if (currentTabIndex < tabPositions.size) {
                        TabRowDefaults.SecondaryIndicator(
                            modifier = Modifier.tabIndicatorOffset(tabPositions[currentTabIndex]),
                            color = Color(0xFFFF6B35)
                        )
                    }
                }
            ) {
                categories.forEachIndexed { index, category ->
                    Tab(
                        selected = currentTabIndex == index,
                        onClick = {
                            selectedTabIndex = index
                            selectedIds = emptySet()
                        },
                        text = {
                            Text(
                                text = category,
                                fontSize = 14.sp,
                                fontWeight = if (selectedTabIndex == index) FontWeight.Bold else FontWeight.Normal
                            )
                        }
                    )
                }
            }

            // 滤镜列表
            LazyColumn(
                modifier = Modifier
                    .fillMaxSize()
                    .padding(horizontal = 16.dp),
                state = lazyListState,
                verticalArrangement = Arrangement.spacedBy(8.dp),
                contentPadding = PaddingValues(vertical = 16.dp)
            ) {
                // 导入结果提示
                importResult?.let { result ->
                    item(key = "import_result") {
                        Text(
                            text = result,
                            color = if (result.contains("成功")) Color(0xFF4CAF50) else Color(0xFFFF5252),
                            fontSize = 14.sp,
                            modifier = Modifier
                                .fillMaxWidth()
                                .background(
                                    if (result.contains("成功")) Color(0xFF4CAF50).copy(alpha = 0.1f)
                                    else Color(0xFFFF5252).copy(alpha = 0.1f),
                                    RoundedCornerShape(8.dp)
                                )
                                .padding(horizontal = 12.dp, vertical = 8.dp)
                        )

                        LaunchedEffect(result) {
                            kotlinx.coroutines.delay(3000)
                            importResult = null
                        }
                    }
                }
                itemsIndexed(filteredLutList, key = { _, it -> it.id }) { index, lutInfo ->
                    ReorderableItem(reorderableLazyListState, key = lutInfo.id) { isDragging ->
                        FilterManagementItem(
                            lutInfo = lutInfo,
                            isDefault = currentLutId == lutInfo.id,
                            isSelected = selectedIds.contains(lutInfo.id),
                            isSelectionMode = isSelectionMode,
                            isDragging = isDragging,
                            onSetDefault = {
                                if (isSelectionMode) {
                                    selectedIds = if (selectedIds.contains(lutInfo.id)) {
                                        selectedIds - lutInfo.id
                                    } else {
                                        selectedIds + lutInfo.id
                                    }
                                } else {
                                    viewModel.setLut(lutInfo.id)
                                }
                            },
                            onToggleSelection = {
                                selectedIds = if (selectedIds.contains(lutInfo.id)) {
                                    selectedIds - lutInfo.id
                                } else {
                                    selectedIds + lutInfo.id
                                }
                            },
                            onRename = if (!lutInfo.isBuiltIn && !isSelectionMode) {
                                {
                                    renamingLut = lutInfo
                                    renameText = lutInfo.getName()
                                    showRenameDialog = true
                                }
                            } else null,
                            onCopy = if (!isSelectionMode) {
                                {
                                    copyingLut = lutInfo
                                    copyText = lutInfo.getName() + copy_suffix
                                    showCopyDialog = true
                                }
                            } else null,
                            onEditColorRecipe = if (!isSelectionMode) {
                                {
                                    editingLutId = lutInfo.id
                                    showColorRecipeSheet = true
                                }
                            } else null,
                            onDelete = if (!lutInfo.isBuiltIn && !isSelectionMode) {
                                {
                                    deletingLut = lutInfo
                                    showDeleteDialog = true
                                }
                            } else null,
                            onExport = if (!isSelectionMode) {
                                {
                                    if (lutInfo.isBuiltIn && !isPurchased) {
                                        viewModel.showPaymentDialog = true
                                    } else {
                                        exportingLut = lutInfo
                                        showExportDialog = true
                                    }
                                }
                            } else null,
                            onEditCategory = if (!isSelectionMode) {
                                {
                                    categorizingIds = listOf(lutInfo.id)
                                    categoryText = lutInfo.category
                                    showCategoryDialog = true
                                }
                            } else null,
                            onToggleFavorite = if (!isSelectionMode) {
                                {
                                    scope.launch {
                                        val nextFavorite = !lutInfo.isFavorite
                                        localLutList = localLutList.map {
                                            if (it.id == lutInfo.id) it.copy(isFavorite = nextFavorite) else it
                                        }
                                        withContext(Dispatchers.IO) {
                                            customImportManager.updateLutFavorite(lutInfo.id, nextFavorite)
                                        }
                                        viewModel.refreshCustomContent()
                                    }
                                }
                            } else null,
                            showCategory = categories.getOrNull(currentTabIndex) == builtInText && lutInfo.category.isNotEmpty(),
                            dragModifier = if (isSelectionMode) Modifier else Modifier.draggableHandle()
                        )
                    }
                }
            }
        }

        // 重命名对话框
        if (showRenameDialog && renamingLut != null) {
            AlertDialog(
                onDismissRequest = { showRenameDialog = false },
                title = {
                    Text(stringResource(R.string.rename_dialog_title))
                },
                text = {
                    OutlinedTextField(
                        value = renameText,
                        onValueChange = { renameText = it },
                        label = { Text(stringResource(R.string.name)) },
                        singleLine = true,
                        modifier = Modifier.fillMaxWidth()
                    )
                },
                confirmButton = {
                    TextButton(
                        onClick = {
                            scope.launch {
                                withContext(Dispatchers.IO) {
                                    customImportManager.updateLutName(renamingLut!!.id, renameText)
                                }
                                viewModel.refreshCustomContent()
                                showRenameDialog = false
                                renamingLut = null
                            }
                        }
                    ) {
                        Text(stringResource(R.string.confirm))
                    }
                },
                dismissButton = {
                    TextButton(onClick = { showRenameDialog = false }) {
                        Text(stringResource(R.string.cancel))
                    }
                }
            )
        }

        // 复制对话框
        if (showCopyDialog && copyingLut != null) {
            AlertDialog(
                onDismissRequest = { showCopyDialog = false },
                title = {
                    Text(stringResource(R.string.copy_lut_dialog_title))
                },
                text = {
                    OutlinedTextField(
                        value = copyText,
                        onValueChange = { copyText = it },
                        label = { Text(stringResource(R.string.name)) },
                        singleLine = true,
                        modifier = Modifier.fillMaxWidth()
                    )
                },
                confirmButton = {
                    TextButton(
                        onClick = {
                            viewModel.copyLut(copyingLut!!, copyText)
                            showCopyDialog = false
                            copyingLut = null
                        }
                    ) {
                        Text(stringResource(R.string.confirm))
                    }
                },
                dismissButton = {
                    TextButton(onClick = { showCopyDialog = false }) {
                        Text(stringResource(R.string.cancel))
                    }
                }
            )
        }

        // 删除确认对话框
        if (showDeleteDialog && deletingLut != null) {
            AlertDialog(
                onDismissRequest = { showDeleteDialog = false },
                title = {
                    Text(stringResource(R.string.delete_confirm_title))
                },
                text = {
                    Text(stringResource(R.string.delete_filter_confirm_message, deletingLut!!.getName()))
                },
                confirmButton = {
                    TextButton(
                        onClick = {
                            scope.launch {
                                withContext(Dispatchers.IO) {
                                    customImportManager.deleteCustomLut(deletingLut!!.id)
                                }
                                // 如果删除的是当前选中的滤镜，切换到第一个
                                if (currentLutId == deletingLut!!.id) {
                                    viewModel.setLut(localLutList.firstOrNull()?.id)
                                }
                                viewModel.refreshCustomContent()
                                showDeleteDialog = false
                                deletingLut = null
                            }
                        },
                        colors = ButtonDefaults.textButtonColors(
                            contentColor = MaterialTheme.colorScheme.error
                        )
                    ) {
                        Text(stringResource(R.string.delete))
                    }
                },
                dismissButton = {
                    TextButton(onClick = { showDeleteDialog = false }) {
                        Text(stringResource(R.string.cancel))
                    }
                }
            )
        }

        // 导出选项对话框
        if (showExportDialog && exportingLut != null) {
            val lut = exportingLut!!
            AlertDialog(
                onDismissRequest = {
                    showExportDialog = false
                    exportingLut = null
                },
                title = {
                    Text(
                        text = stringResource(R.string.export_lut_title),
                        color = Color.White,
                        fontSize = 18.sp,
                        fontWeight = FontWeight.Bold
                    )
                },
                text = {
                    Column(
                        modifier = Modifier.fillMaxWidth(),
                        verticalArrangement = Arrangement.spacedBy(8.dp)
                    ) {
                        Button(
                            onClick = {
                                scope.launch {
                                    val bytes = viewModel.exportLutToCube(lut.id)
                                    if (bytes != null) {
                                        pendingExportBytes = bytes
                                        pendingExportName = "${lut.getName()}.cube"
                                        exportLauncher.launch(pendingExportName)
                                    }
                                    showExportDialog = false
                                    exportingLut = null
                                }
                            },
                            modifier = Modifier.fillMaxWidth(),
                            colors = ButtonDefaults.buttonColors(
                                containerColor = Color(0xFF2C2C2C),
                                contentColor = Color.White
                            ),
                            shape = RoundedCornerShape(8.dp)
                        ) {
                            Text(
                                text = stringResource(R.string.export_mode_raw_cube),
                                fontSize = 15.sp,
                                fontWeight = FontWeight.Medium
                            )
                        }

                        Button(
                            onClick = {
                                scope.launch {
                                    val bytes = viewModel.exportLutToPlut(lut.id)
                                    if (bytes != null) {
                                        pendingExportBytes = bytes
                                        pendingExportName = "${lut.getName()}.plut"
                                        exportLauncher.launch(pendingExportName)
                                    }
                                    showExportDialog = false
                                    exportingLut = null
                                }
                            },
                            modifier = Modifier.fillMaxWidth(),
                            colors = ButtonDefaults.buttonColors(
                                containerColor = Color(0xFF2C2C2C),
                                contentColor = Color.White
                            ),
                            shape = RoundedCornerShape(8.dp)
                        ) {
                            Text(
                                text = stringResource(R.string.export_mode_plut),
                                fontSize = 15.sp,
                                fontWeight = FontWeight.Medium
                            )
                        }

                        Button(
                            onClick = {
                                scope.launch {
                                    val bytes = viewModel.exportBakedLutToCube(lut.id)
                                    if (bytes != null) {
                                        pendingExportBytes = bytes
                                        pendingExportName = "${lut.getName()}_baked.cube"
                                        exportLauncher.launch(pendingExportName)
                                    }
                                    showExportDialog = false
                                    exportingLut = null
                                }
                            },
                            modifier = Modifier.fillMaxWidth(),
                            colors = ButtonDefaults.buttonColors(
                                containerColor = Color(0xFFFF6B35),
                                contentColor = Color.White
                            ),
                            shape = RoundedCornerShape(8.dp)
                        ) {
                            Text(
                                text = stringResource(R.string.export_mode_baked_cube),
                                fontSize = 15.sp,
                                fontWeight = FontWeight.Medium
                            )
                        }

                        Button(
                            onClick = {
                                scope.launch {
                                    val bytes = viewModel.exportBakedLutToHaldPng(lut.id)
                                    if (bytes != null) {
                                        pendingExportBytes = bytes
                                        pendingExportName = "${lut.getName()}_baked_hald.png"
                                        exportLauncher.launch(pendingExportName)
                                    }
                                    showExportDialog = false
                                    exportingLut = null
                                }
                            },
                            modifier = Modifier.fillMaxWidth(),
                            colors = ButtonDefaults.buttonColors(
                                containerColor = Color(0xFFFF6B35),
                                contentColor = Color.White
                            ),
                            shape = RoundedCornerShape(8.dp)
                        ) {
                            Text(
                                text = stringResource(R.string.export_mode_baked_hald_png),
                                fontSize = 15.sp,
                                fontWeight = FontWeight.Medium
                            )
                        }
                    }
                },
                confirmButton = {},
                dismissButton = {
                    TextButton(
                        onClick = {
                            showExportDialog = false
                            exportingLut = null
                        }
                    ) {
                        Text(
                            text = stringResource(R.string.cancel),
                            color = Color.LightGray
                        )
                    }
                },
                containerColor = Color(0xFF1E1E1E),
                shape = RoundedCornerShape(12.dp)
            )
        }

        if (viewModel.showPaymentDialog) {
            val activity = context as? android.app.Activity
            PaymentDialog(
                onDismiss = { viewModel.showPaymentDialog = false },
                onPurchase = {
                    viewModel.showPaymentDialog = false
                    activity?.let { viewModel.purchase(it) }
                }
            )
        }

        // 分类编辑对话框
        if (showCategoryDialog && categorizingIds.isNotEmpty()) {
            AlertDialog(
                onDismissRequest = {
                    showCategoryDialog = false
                    categorizingIds = emptyList()
                },
                title = {
                    Text(
                        if (categorizingIds.size > 1) stringResource(R.string.batch_edit_category) else stringResource(
                            R.string.edit_category
                        )
                    )
                },
                text = {
                    Column(modifier = Modifier.verticalScroll(rememberScrollState())) {
                        OutlinedTextField(
                            value = categoryText,
                            onValueChange = { categoryText = it },
                            label = { Text(stringResource(R.string.category)) },
                            singleLine = true,
                            modifier = Modifier.fillMaxWidth(),
                            trailingIcon = if (categoryText.isNotEmpty()) {
                                {
                                    IconButton(onClick = { categoryText = "" }) {
                                        Icon(
                                            imageVector = Icons.Default.Clear,
                                            contentDescription = "Clear",
                                            tint = Color.White.copy(alpha = 0.5f)
                                        )
                                    }
                                }
                            } else null
                        )

                        Spacer(modifier = Modifier.height(8.dp))

                        // 常用分类快速选择
                        val commonCategories = remember(localLutList, categoryOrder, reservedCategoryNames) {
                            val dynamic = localLutList.map { it.category }
                                .distinct()
                                .filter { it.isNotEmpty() && it !in reservedCategoryNames }
                            val orderedDynamic = categoryOrder.filter { it in dynamic }
                            val remainingDynamic = dynamic.filterNot { it in orderedDynamic }.sorted()
                            orderedDynamic + remainingDynamic
                        }
                        if (commonCategories.isNotEmpty()) {
                            Text(
                                text = stringResource(R.string.common_categories),
                                fontSize = 12.sp,
                                color = Color.White.copy(alpha = 0.5f),
                                modifier = Modifier.padding(vertical = 4.dp)
                            )
                            FlowRow(
                                horizontalArrangement = Arrangement.spacedBy(8.dp),
                                verticalArrangement = Arrangement.spacedBy(4.dp)
                            ) {
                                // 清除选项
                                if (categoryText.isNotEmpty()) {
                                    SuggestionChip(
                                        onClick = { categoryText = "" },
                                        label = { Text(stringResource(R.string.none)) },
                                        colors = SuggestionChipDefaults.suggestionChipColors(
                                            labelColor = Color(0xFFFF5252)
                                        )
                                    )
                                }

                                commonCategories.forEach { cat ->
                                    InputChip(
                                        selected = categoryText == cat,
                                        onClick = { categoryText = cat },
                                        label = { Text(cat) },
                                    )
                                }
                            }
                        } else if (categoryText.isNotEmpty()) {
                            // 如果没有常用分类但当前有文本，也显示清除按钮
                            SuggestionChip(
                                onClick = { categoryText = "" },
                                label = { Text(stringResource(R.string.none)) },
                                colors = SuggestionChipDefaults.suggestionChipColors(
                                    labelColor = Color(0xFFFF5252)
                                )
                            )
                        }
                    }
                },
                confirmButton = {
                    TextButton(
                        onClick = {
                            val sanitizedCategory = sanitizeCustomLutCategoryInput(
                                category = categoryText,
                                favoriteText = favoriteText,
                                builtInText = builtInText,
                                uncategorizedText = uncategorizedText
                            )
                            scope.launch {
                                withContext(Dispatchers.IO) {
                                    categorizingIds.forEach { id ->
                                        customImportManager.updateLutCategory(id, sanitizedCategory)
                                    }
                                }
                                viewModel.refreshCustomContent()
                                showCategoryDialog = false
                                categorizingIds = emptyList()
                                selectedIds = emptySet() // 完成后清除选择
                            }
                        }
                    ) {
                        Text(stringResource(R.string.confirm))
                    }
                },
                dismissButton = {
                    TextButton(onClick = {
                        showCategoryDialog = false
                        categorizingIds = emptyList()
                    }) {
                        Text(stringResource(R.string.cancel))
                    }
                }
            )
        }

        // 导入时分类选择对话框
        if (showImportCategoryDialog && pendingImportUris.isNotEmpty()) {
            var selectedColorSpace by remember { mutableStateOf(ColorSpace.SRGB) }
            var selectedCurve by remember { mutableStateOf(TransferCurve.SRGB) }
            var selectedLutType by remember { mutableIntStateOf(0) } // 0: Photo, 1: Video
            AlertDialog(
                onDismissRequest = {
                    //showImportCategoryDialog = false
                    //pendingImportUris = emptyList()
                },
                title = { Text(stringResource(R.string.import_to_category)) },
                text = {
                    Column(modifier = Modifier.verticalScroll(rememberScrollState())) {
                        SingleChoiceSegmentedButtonRow(
                            modifier = Modifier
                                .fillMaxWidth()
                                .padding(vertical = 8.dp)
                        ) {
                            SegmentedButton(
                                selected = selectedLutType == 0,
                                onClick = { selectedLutType = 0 },
                                shape = SegmentedButtonDefaults.itemShape(index = 0, count = 2),
                                colors = SegmentedButtonDefaults.colors(
                                    activeContainerColor = Color(0xFFFF6B35),
                                    activeContentColor = Color.White,
                                    inactiveContainerColor = Color.Transparent,
                                    inactiveContentColor = Color.White.copy(alpha = 0.5f),
                                    activeBorderColor = Color(0xFFFF6B35),
                                    inactiveBorderColor = Color.White.copy(alpha = 0.2f)
                                )
                            ) {
                                Text(stringResource(R.string.photo_lut), fontSize = 13.sp)
                            }
                            SegmentedButton(
                                selected = selectedLutType == 1,
                                onClick = { selectedLutType = 1 },
                                shape = SegmentedButtonDefaults.itemShape(index = 1, count = 2),
                                colors = SegmentedButtonDefaults.colors(
                                    activeContainerColor = Color(0xFFFF6B35),
                                    activeContentColor = Color.White,
                                    inactiveContainerColor = Color.Transparent,
                                    inactiveContentColor = Color.White.copy(alpha = 0.5f),
                                    activeBorderColor = Color(0xFFFF6B35),
                                    inactiveBorderColor = Color.White.copy(alpha = 0.2f)
                                )
                            ) {
                                Text(stringResource(R.string.video_lut), fontSize = 13.sp)
                            }
                        }

                        if (selectedLutType == 1) {
                            var expanded by remember { mutableStateOf(false) }
                            Spacer(modifier = Modifier.height(12.dp))

                            Text(
                                text = stringResource(R.string.video_lut_photo_conversion_hint),
                                fontSize = 12.sp,
                                color = Color.White.copy(alpha = 0.7f),
                                modifier = Modifier.fillMaxWidth()
                            )
                            Spacer(modifier = Modifier.height(12.dp))

                            ExposedDropdownMenuBox(
                                expanded = expanded,
                                onExpandedChange = { expanded = !expanded },
                                modifier = Modifier.fillMaxWidth()
                            ) {
                                OutlinedTextField(
                                    value = selectedCurve.name,
                                    onValueChange = {},
                                    readOnly = true,
                                    label = { Text(stringResource(R.string.input_curve)) },
                                    trailingIcon = { ExposedDropdownMenuDefaults.TrailingIcon(expanded = expanded) },
                                    colors = ExposedDropdownMenuDefaults.outlinedTextFieldColors(
                                        focusedBorderColor = Color(0xFFFF6B35),
                                        focusedLabelColor = Color(0xFFFF6B35),
                                        unfocusedLabelColor = Color.White.copy(alpha = 0.5f)
                                    ),
                                    modifier = Modifier.fillMaxWidth().menuAnchor()
                                )
                                ExposedDropdownMenu(
                                    expanded = expanded,
                                    onDismissRequest = { expanded = false },
                                    modifier = Modifier.background(Color(0xFF2C2C2C))
                                ) {
                                    TransferCurve.entries.filter { it != TransferCurve.HLG }.forEach { curve ->
                                        DropdownMenuItem(
                                            text = { Text(curve.name) },
                                            onClick = {
                                                selectedCurve = curve
                                                expanded = false
                                            },
                                            colors = MenuDefaults.itemColors(
                                                textColor = if (selectedCurve == curve) Color(
                                                    0xFFFF6B35
                                                ) else Color.White
                                            )
                                        )
                                    }
                                }
                            }

                            var colorSpaceExpanded by remember { mutableStateOf(false) }
                            Spacer(modifier = Modifier.height(12.dp))

                            ExposedDropdownMenuBox(
                                expanded = colorSpaceExpanded,
                                onExpandedChange = { colorSpaceExpanded = !colorSpaceExpanded },
                                modifier = Modifier.fillMaxWidth()
                            ) {
                                OutlinedTextField(
                                    value = selectedColorSpace.name,
                                    onValueChange = {},
                                    readOnly = true,
                                    label = { Text(stringResource(R.string.color_space)) },
                                    trailingIcon = {
                                        ExposedDropdownMenuDefaults.TrailingIcon(
                                            expanded = colorSpaceExpanded
                                        )
                                    },
                                    colors = ExposedDropdownMenuDefaults.outlinedTextFieldColors(
                                        focusedBorderColor = Color(0xFFFF6B35),
                                        focusedLabelColor = Color(0xFFFF6B35),
                                        unfocusedLabelColor = Color.White.copy(alpha = 0.5f)
                                    ),
                                    modifier = Modifier.fillMaxWidth().menuAnchor()
                                )
                                ExposedDropdownMenu(
                                    expanded = colorSpaceExpanded,
                                    onDismissRequest = { colorSpaceExpanded = false },
                                    modifier = Modifier.background(Color(0xFF2C2C2C))
                                ) {
                                    ColorSpace.entries.forEach { colorSpace ->
                                        DropdownMenuItem(
                                            text = { Text(colorSpace.name) },
                                            onClick = {
                                                selectedColorSpace = colorSpace
                                                colorSpaceExpanded = false
                                            },
                                            colors = MenuDefaults.itemColors(
                                                textColor = if (selectedColorSpace == colorSpace) Color(
                                                    0xFFFF6B35
                                                ) else Color.White
                                            )
                                        )
                                    }
                                }
                            }
                            Spacer(modifier = Modifier.height(16.dp))
                        }

                        OutlinedTextField(
                            value = categoryText,
                            onValueChange = { categoryText = it },
                            label = { Text(stringResource(R.string.category)) },
                            singleLine = true,
                            modifier = Modifier.fillMaxWidth(),
                            trailingIcon = if (categoryText.isNotEmpty()) {
                                {
                                    IconButton(onClick = { categoryText = "" }) {
                                        Icon(
                                            imageVector = Icons.Default.Clear,
                                            contentDescription = "Clear",
                                            tint = Color.White.copy(alpha = 0.5f)
                                        )
                                    }
                                }
                            } else null
                        )

                        Spacer(modifier = Modifier.height(8.dp))

                        // 常用分类快速选择
                        val commonCategories = remember(localLutList, categoryOrder, reservedCategoryNames) {
                            val dynamic = localLutList.map { it.category }
                                .distinct()
                                .filter { it.isNotEmpty() && it !in reservedCategoryNames }
                            val orderedDynamic = categoryOrder.filter { it in dynamic }
                            val remainingDynamic = dynamic.filterNot { it in orderedDynamic }.sorted()
                            orderedDynamic + remainingDynamic
                        }
                        if (commonCategories.isNotEmpty()) {
                            Text(
                                text = stringResource(R.string.common_categories),
                                fontSize = 12.sp,
                                color = Color.White.copy(alpha = 0.5f),
                                modifier = Modifier.padding(vertical = 4.dp)
                            )
                            FlowRow(
                                horizontalArrangement = Arrangement.spacedBy(8.dp),
                                verticalArrangement = Arrangement.spacedBy(4.dp)
                            ) {
                                commonCategories.forEach { cat ->
                                    InputChip(
                                        selected = categoryText == cat,
                                        onClick = { categoryText = cat },
                                        label = { Text(cat) }
                                    )
                                }
                            }
                        }

                        Spacer(modifier = Modifier.height(12.dp))

                    }
                },
                confirmButton = {
                    TextButton(
                        onClick = {
                            val targetCategory = sanitizeCustomLutCategoryInput(
                                category = categoryText,
                                favoriteText = favoriteText,
                                builtInText = builtInText,
                                uncategorizedText = uncategorizedText
                            )
                            val urisToImport = pendingImportUris
                            val curveToUse = selectedCurve
                            val colorSpace = selectedColorSpace
                            val zipUrisToImport = pendingZipUris
                            showImportCategoryDialog = false
                            pendingImportUris = emptyList()
                            pendingZipUris = emptySet()

                            isImporting = true
                            importProgress = Pair(0, urisToImport.size)
                            scope.launch {
                                var successCount = 0
                                var failCount = 0
                                val zipCubeImportManager = ZipCubeImportManager(context.applicationContext)

                                urisToImport.forEachIndexed { index, uri ->
                                    importProgress = Pair(index + 1, urisToImport.size)
                                    if (uri in zipUrisToImport || isZipImportUri(context, uri)) {
                                        val result = withContext(Dispatchers.IO) {
                                            zipCubeImportManager.importCubeFilesFromZip(
                                                uri = uri,
                                                category = targetCategory,
                                                colorSpace = colorSpace,
                                                curve = curveToUse
                                            )
                                        }
                                        successCount += result.successCount
                                        failCount += result.failCount
                                    } else {
                                        val lutId = withContext(Dispatchers.IO) {
                                            customImportManager.importLut(
                                                uri,
                                                category = targetCategory,
                                                colorSpace = colorSpace,
                                                curve = curveToUse
                                            )
                                        }
                                        if (lutId != null) {
                                            successCount++
                                            // 若为 .plut v4 文件，提取嵌入的色彩配方并保存
                                            viewModel.extractAndSaveColorRecipeFromPlut(lutId, uri)
                                        } else {
                                            failCount++
                                        }
                                    }
                                }

                                viewModel.refreshCustomContent()
                                isImporting = false
                                importProgress = null

                                importResult = when {
                                    failCount == 0 && successCount == 1 -> null
                                    failCount == 0 -> context.getString(R.string.import_success, successCount)
                                    successCount == 0 -> context.getString(R.string.import_failed, failCount)
                                    else -> context.getString(
                                        R.string.import_success,
                                        successCount
                                    ) + ", " + context.getString(R.string.import_failed, failCount)
                                }
                            }
                        }
                    ) {
                        Text(stringResource(R.string.confirm))
                    }
                },
                dismissButton = {
                    TextButton(onClick = {
                        showImportCategoryDialog = false
                        pendingImportUris = emptyList()
                        pendingZipUris = emptySet()
                    }) {
                        Text(stringResource(R.string.cancel))
                    }
                }
            )
        }

        // 页面退出时保存排序
        DisposableEffect(Unit) {
            onDispose {
                viewModel.saveFilterOrder(localLutList.map { it.id })
            }
        }

        // 色彩配方编辑底部弹窗
        if (showColorRecipeSheet && editingLutId != null) {
            LutEditBottomSheet(
                lutId = editingLutId!!,
                onDismiss = {
                    showColorRecipeSheet = false
                    editingLutId = null
                }
            )
        }

        // 分类管理页面 (弹出式)
        if (showCategoryManagement) {
            val dynamicCategories = remember(localLutList, reservedCategoryNames) {
                localLutList.map { it.category }
                    .distinct()
                    .filter { it.isNotEmpty() && it !in reservedCategoryNames }
            }
            val allCategories = remember(dynamicCategories, categoryOrder, builtInText) {
                val orderedKnownCategories = categoryOrder.filter {
                    it == builtInText || dynamicCategories.contains(it)
                }
                val remainingDynamic = dynamicCategories.filterNot { it in orderedKnownCategories }.sorted()

                buildList {
                    if (orderedKnownCategories.isEmpty()) {
                        add(builtInText)
                        addAll(remainingDynamic)
                    } else {
                        addAll(orderedKnownCategories)
                        if (builtInText !in orderedKnownCategories) add(builtInText)
                        addAll(remainingDynamic)
                    }
                }
            }

            ModalBottomSheet(
                onDismissRequest = {
                    showCategoryManagement = false
                },
                containerColor = backgroundColor,
                dragHandle = { BottomSheetDefaults.DragHandle(color = Color.White.copy(alpha = 0.3f)) }
            ) {
                CategoryManagementSheet(
                    categories = allCategories,
                    onSaveOrder = { newOrder ->
                        viewModel.saveCategoryOrder(
                            sanitizeCategoryOrder(newOrder, builtInText, reservedCategoryNames)
                        )
                    },
                    onRenameCategory = { oldName, newName ->
                        scope.launch {
                            // 立即更新本地 UI 列表防止闪烁
                            localLutList = localLutList.map {
                                if (it.category == oldName) it.copy(category = newName) else it
                            }
                            withContext(Dispatchers.IO) {
                                // 批量在持久层更新分类
                                val impacted = availableLuts.filter { it.category == oldName }
                                impacted.forEach { lut ->
                                    customImportManager.updateLutCategory(lut.id, newName)
                                }
                                // 在排序中更新
                                val newOrder = sanitizeCategoryOrder(
                                    categoryOrder.map { if (it == oldName) newName else it },
                                    builtInText,
                                    reservedCategoryNames
                                )
                                viewModel.saveCategoryOrder(newOrder)
                            }
                            viewModel.refreshCustomContent()
                        }
                    },
                    onDeleteCategory = { target ->
                        scope.launch {
                            // 立即更新本地 UI 列表防止闪烁
                            localLutList = localLutList.map {
                                if (it.category == target) it.copy(category = "") else it
                            }
                            withContext(Dispatchers.IO) {
                                // 批量在持久层清空分类
                                val impacted = availableLuts.filter { it.category == target }
                                impacted.forEach { lut ->
                                    customImportManager.updateLutCategory(lut.id, "")
                                }
                                // 从排序中移除
                                val newOrder = sanitizeCategoryOrder(
                                    categoryOrder.filter { it != target },
                                    builtInText,
                                    reservedCategoryNames
                                )
                                viewModel.saveCategoryOrder(newOrder)
                            }
                            viewModel.refreshCustomContent()
                        }
                    }
                )
            }
        }
    }
}

/**
 * 分类管理内部内容
 */
@OptIn(ExperimentalMaterial3Api::class, ExperimentalFoundationApi::class)
@Composable
private fun CategoryManagementSheet(
    categories: List<String>,
    onSaveOrder: (List<String>) -> Unit,
    onRenameCategory: (String, String) -> Unit,
    onDeleteCategory: (String) -> Unit
) {
    var localCategories by remember(categories) {
        mutableStateOf(
            categories.map {
                CategoryManagementItem(
                    name = it,
                    isFixed = false
                )
            }
        )
    }
    val builtInText = stringResource(R.string.built_in)
    val uncategorizedText = stringResource(R.string.uncategorized)
    val favoriteText = stringResource(R.string.favorite)
    val fixedNames = remember(builtInText, uncategorizedText, favoriteText) {
        setOf(builtInText, uncategorizedText, favoriteText)
    }

    LaunchedEffect(categories, fixedNames) {
        localCategories = categories.map { name ->
            CategoryManagementItem(
                name = name,
                isFixed = name in fixedNames
            )
        }
    }
    val lazyListState = rememberLazyListState()
    val reorderableLazyListState = rememberReorderableLazyListState(lazyListState) { from, to ->
        localCategories = localCategories.toMutableList().apply {
            add(to.index, removeAt(from.index))
        }
        onSaveOrder(localCategories.map { it.name })
    }

    var showAddDialog by remember { mutableStateOf(false) }
    var newCategoryName by remember { mutableStateOf("") }
    var showRenameDialog by remember { mutableStateOf(false) }
    var renamingCategory by remember { mutableStateOf<String?>(null) }
    var renameCategoryText by remember { mutableStateOf("") }
    var categoryToDelete by remember { mutableStateOf<String?>(null) }

    Column(
        modifier = Modifier
            .fillMaxWidth()
            .navigationBarsPadding()
            .heightIn(max = 600.dp)
            .padding(bottom = 16.dp)
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 16.dp, vertical = 8.dp),
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.SpaceBetween
        ) {
            Text(
                text = stringResource(R.string.category_management_title),
                color = Color.White,
                fontSize = 20.sp,
                fontWeight = FontWeight.Bold
            )
            IconButton(onClick = {
                newCategoryName = ""
                showAddDialog = true
            }) {
                Icon(
                    imageVector = Icons.Default.Add,
                    contentDescription = stringResource(R.string.new_category),
                    tint = Color.White
                )
            }
        }

        Text(
            text = stringResource(R.string.drag_to_reorder_categories),
            fontSize = 12.sp,
            color = Color.White.copy(alpha = 0.5f),
            modifier = Modifier.padding(horizontal = 16.dp, vertical = 4.dp)
        )

        LazyColumn(
            state = lazyListState,
            verticalArrangement = Arrangement.spacedBy(8.dp),
            modifier = Modifier
                .fillMaxWidth()
                .weight(1f, fill = false)
                .padding(horizontal = 16.dp, vertical = 8.dp),
            contentPadding = PaddingValues(bottom = 16.dp)
        ) {
            itemsIndexed(localCategories, key = { _, it -> it.name }) { _, category ->
                ReorderableItem(reorderableLazyListState, key = category.name) { isDragging ->
                    val draggingBgColor =
                        if (isDragging) Color.White.copy(alpha = 0.15f) else Color.White.copy(alpha = 0.05f)
                    Row(
                        modifier = Modifier
                            .fillMaxWidth()
                            .background(draggingBgColor, RoundedCornerShape(12.dp))
                            .border(1.dp, Color.White.copy(alpha = 0.1f), RoundedCornerShape(12.dp))
                            .padding(horizontal = 12.dp, vertical = 8.dp),
                        verticalAlignment = Alignment.CenterVertically
                    ) {
                        Icon(
                            imageVector = AppIcons.DragHandle,
                            contentDescription = null,
                            tint = Color.White.copy(alpha = 0.5f),
                            modifier = Modifier.draggableHandle().padding(4.dp)
                        )
                        Spacer(modifier = Modifier.width(12.dp))
                        Text(
                            text = category.name,
                            color = Color.White,
                            modifier = Modifier.weight(1f),
                            fontSize = 16.sp
                        )
                        if (!category.isFixed) {
                            IconButton(onClick = {
                                renamingCategory = category.name
                                renameCategoryText = category.name
                                showRenameDialog = true
                            }) {
                                Icon(
                                    imageVector = Icons.Default.Edit,
                                    contentDescription = stringResource(R.string.rename),
                                    tint = Color.White.copy(alpha = 0.7f)
                                )
                            }
                            IconButton(onClick = { categoryToDelete = category.name }) {
                                Icon(
                                    imageVector = Icons.Default.Delete,
                                    contentDescription = stringResource(R.string.delete),
                                    tint = Color.Red.copy(alpha = 0.7f)
                                )
                            }
                        }
                    }
                }
            }
        }

        // 新建分类对话框
        if (showAddDialog) {
            AlertDialog(
                onDismissRequest = { showAddDialog = false },
                title = { Text(stringResource(R.string.new_category)) },
                text = {
                    OutlinedTextField(
                        value = newCategoryName,
                        onValueChange = { newCategoryName = it },
                        label = { Text(stringResource(R.string.category_name)) },
                        singleLine = true,
                        modifier = Modifier.fillMaxWidth()
                    )
                },
                confirmButton = {
                    TextButton(
                        onClick = {
                            val trimmedName = newCategoryName.trim()
                            if (
                                trimmedName.isNotBlank() &&
                                trimmedName !in fixedNames &&
                                localCategories.none { it.name == trimmedName }
                            ) {
                                localCategories += CategoryManagementItem(
                                    name = trimmedName,
                                    isFixed = false
                                )
                                onSaveOrder(localCategories.map { it.name })
                                showAddDialog = false
                            }
                        }
                    ) {
                        Text(stringResource(R.string.confirm))
                    }
                },
                dismissButton = {
                    TextButton(onClick = { showAddDialog = false }) {
                        Text(stringResource(R.string.cancel))
                    }
                }
            )
        }

        // 重命名分类对话框
        if (showRenameDialog && renamingCategory != null) {
            AlertDialog(
                onDismissRequest = { showRenameDialog = false },
                title = { Text(stringResource(R.string.rename_dialog_title)) },
                text = {
                    OutlinedTextField(
                        value = renameCategoryText,
                        onValueChange = { renameCategoryText = it },
                        label = { Text(stringResource(R.string.category_name)) },
                        singleLine = true,
                        modifier = Modifier.fillMaxWidth()
                    )
                },
                confirmButton = {
                    TextButton(
                        onClick = {
                            val oldName = renamingCategory!!
                            val newName = renameCategoryText.trim()
                            if (
                                newName.isNotEmpty() &&
                                newName != oldName &&
                                newName !in fixedNames &&
                                localCategories.none { it.name == newName }
                            ) {
                                onRenameCategory(oldName, newName)
                                localCategories = localCategories.map {
                                    if (it.name == oldName) it.copy(name = newName) else it
                                }
                                onSaveOrder(localCategories.map { it.name })
                            }
                            showRenameDialog = false
                        }
                    ) {
                        Text(stringResource(R.string.confirm))
                    }
                },
                dismissButton = {
                    TextButton(onClick = { showRenameDialog = false }) {
                        Text(stringResource(R.string.cancel))
                    }
                }
            )
        }

        // 删除确认对话框
        if (categoryToDelete != null) {
            AlertDialog(
                onDismissRequest = { categoryToDelete = null },
                title = { Text(stringResource(R.string.delete_category_title)) },
                text = { Text(stringResource(R.string.delete_category_message, categoryToDelete!!)) },
                confirmButton = {
                    TextButton(
                        onClick = {
                            val target = categoryToDelete!!
                            onDeleteCategory(target)
                            localCategories = localCategories.filter { it.name != target }
                            onSaveOrder(localCategories.map { it.name })
                            categoryToDelete = null
                        },
                        colors = ButtonDefaults.textButtonColors(contentColor = Color.Red)
                    ) {
                        Text(stringResource(R.string.delete))
                    }
                },
                dismissButton = {
                    TextButton(onClick = { categoryToDelete = null }) {
                        Text(stringResource(R.string.cancel))
                    }
                }
            )
        }
    }
}

/**
 * 滤镜管理项
 */
@Composable
private fun FilterManagementItem(
    lutInfo: LutInfo,
    isDefault: Boolean,
    isSelected: Boolean = false,
    isSelectionMode: Boolean = false,
    isDragging: Boolean,
    onSetDefault: () -> Unit,
    onToggleSelection: () -> Unit,
    onRename: (() -> Unit)?,
    onCopy: (() -> Unit)? = null,
    onEditColorRecipe: (() -> Unit)?,
    onDelete: (() -> Unit)?,
    onExport: (() -> Unit)? = null,
    onEditCategory: (() -> Unit)? = null,
    onToggleFavorite: (() -> Unit)? = null,
    showCategory: Boolean = false,
    dragModifier: Modifier = Modifier,
    modifier: Modifier = Modifier
) {
    val borderColor = when {
        isSelected -> Color(0xFFFF6B35)
        isDefault -> Color(0xFFFF6B35).copy(alpha = 0.5f)
        else -> Color.White.copy(alpha = 0.2f)
    }
    val backgroundColor = when {
        isSelected -> Color(0xFFFF6B35).copy(alpha = 0.2f)
        isDragging -> Color.White.copy(alpha = 0.2f)
        isDefault -> Color.White.copy(alpha = 0.1f)
        else -> Color.White.copy(alpha = 0.05f)
    }

    Row(
        modifier = modifier
            .fillMaxWidth()
            .clip(RoundedCornerShape(12.dp))
            .background(backgroundColor)
            .border(
                width = if (isSelected || isDefault) 2.dp else 1.dp,
                color = borderColor,
                shape = RoundedCornerShape(12.dp)
            )
            .padding(horizontal = 4.dp, vertical = 8.dp),
        verticalAlignment = Alignment.CenterVertically
    ) {
        // 拖拽图标或多选框
        if (isSelectionMode) {
            Checkbox(
                checked = isSelected,
                onCheckedChange = { onToggleSelection() },
                colors = CheckboxDefaults.colors(
                    checkedColor = Color(0xFFFF6B35),
                    uncheckedColor = Color.White.copy(alpha = 0.5f)
                ),
                modifier = Modifier.padding(4.dp)
            )
        } else {
            Box(
                modifier = Modifier
                    .padding(horizontal = 4.dp)
                    .size(40.dp),
                contentAlignment = Alignment.Center
            ) {
                Icon(
                    imageVector = AppIcons.DragHandle,
                    contentDescription = "Drag to reorder",
                    tint = Color.White.copy(alpha = 0.5f),
                    modifier = dragModifier.size(24.dp)
                )
            }
        }

        // 核心信息区
        Column(
            modifier = Modifier
                .weight(1f)
                .clip(RoundedCornerShape(8.dp))
                .combinedClickable(
                    onClick = onSetDefault,
                    onLongClick = onToggleSelection
                )
                .padding(vertical = 4.dp, horizontal = 4.dp)
        ) {
            Row(verticalAlignment = Alignment.CenterVertically) {
                Text(
                    text = lutInfo.getName(),
                    color = Color.White,
                    fontSize = 13.sp,
                    fontWeight = FontWeight.Medium,
                    maxLines = 1,
                    overflow = TextOverflow.Ellipsis,
                    modifier = Modifier.weight(1f, fill = false).basicMarquee()
                )

                // VIP 标签
                if (lutInfo.isVip) {
                    Spacer(modifier = Modifier.width(4.dp))
                    Text(
                        text = stringResource(R.string.billing_vip_tag),
                        color = Color(0xFFFFD700),
                        fontSize = 8.sp,
                        lineHeight = 15.sp,
                        modifier = Modifier
                            .clip(RoundedCornerShape(4.dp))
                            .background(Color(0xFFFFD700).copy(alpha = 0.2f))
                            .padding(horizontal = 4.dp, vertical = 1.dp)
                    )
                }

                // 分类标签
                if (showCategory) {
                    Spacer(modifier = Modifier.width(4.dp))
                    Text(
                        text = lutInfo.category,
                        color = Color.White.copy(alpha = 0.7f),
                        fontSize = 10.sp,
                        modifier = Modifier
                            .clip(RoundedCornerShape(4.dp))
                            .background(Color.White.copy(alpha = 0.15f))
                            .padding(horizontal = 4.dp, vertical = 1.dp)
                    )
                }

                if (lutInfo.isFavorite) {
                    Spacer(modifier = Modifier.width(4.dp))
                    Icon(
                        imageVector = Icons.Default.Star,
                        contentDescription = stringResource(R.string.favorite),
                        tint = Color(0xFFFFD700),
                        modifier = Modifier.size(14.dp)
                    )
                }
            }

            if (isDefault) {
                Text(
                    text = stringResource(R.string.current_default),
                    color = Color(0xFFFF6B35),
                    fontSize = 11.sp
                )
            }
        }

        // 右侧操作区 (精简为核心操作 + 更多菜单)
        Row(verticalAlignment = Alignment.CenterVertically) {
            // 色彩配方编辑按钮 (高频，保留直达)
            IconButton(
                onClick = onEditColorRecipe ?: {},
                modifier = Modifier.size(36.dp)
            ) {
                Icon(
                    imageVector = AppIcons.Tune,
                    contentDescription = stringResource(R.string.color_recipe),
                    tint = Color.White.copy(alpha = 0.8f),
                    modifier = Modifier.size(20.dp)
                )
            }

            // 更多操作菜单
            var showMenu by remember { mutableStateOf(false) }
            Box {
                IconButton(onClick = { showMenu = true }, modifier = Modifier.size(36.dp)) {
                    Icon(
                        imageVector = Icons.Default.MoreVert,
                        contentDescription = "More",
                        tint = Color.White.copy(alpha = 0.6f),
                        modifier = Modifier.size(20.dp)
                    )
                }

                DropdownMenu(
                    expanded = showMenu,
                    onDismissRequest = { showMenu = false },
                    modifier = Modifier.background(Color(0xFF2C313F))
                ) {
                    // 分类修改 (所有滤镜可用)
                    DropdownMenuItem(
                        text = { Text(stringResource(R.string.category), color = Color.White) },
                        leadingIcon = { Icon(AppIcons.Label, null, tint = Color.White.copy(alpha = 0.7f)) },
                        onClick = {
                            showMenu = false
                            onEditCategory?.invoke()
                        }
                    )

                    if (onToggleFavorite != null) {
                        DropdownMenuItem(
                            text = {
                                Text(
                                    stringResource(
                                        if (lutInfo.isFavorite) R.string.remove_from_favorites else R.string.add_to_favorites
                                    ),
                                    color = Color.White
                                )
                            },
                            leadingIcon = {
                                Icon(
                                    if (lutInfo.isFavorite) Icons.Default.Star else AppIcons.StarBorder,
                                    null,
                                    tint = Color(0xFFFFD700)
                                )
                            },
                            onClick = {
                                showMenu = false
                                onToggleFavorite()
                            }
                        )
                    }

                    // 重命名 (仅自定义)
                    if (onRename != null) {
                        DropdownMenuItem(
                            text = { Text(stringResource(R.string.rename), color = Color.White) },
                            leadingIcon = { Icon(Icons.Default.Edit, null, tint = Color.White.copy(alpha = 0.7f)) },
                            onClick = {
                                showMenu = false
                                onRename()
                            }
                        )
                    }

                    // 复制 (所有滤镜可用)
                    DropdownMenuItem(
                        text = { Text(stringResource(R.string.copy), color = Color.White) },
                        leadingIcon = { Icon(AppIcons.ContentCopy, null, tint = Color.White.copy(alpha = 0.7f)) },
                        onClick = {
                            showMenu = false
                            onCopy?.invoke()
                        }
                    )

                    // 导出 (所有滤镜可用)
                    DropdownMenuItem(
                        text = { Text(stringResource(R.string.export_lut_cube), color = Color.White) },
                        leadingIcon = { Icon(AppIcons.Download, null, tint = Color.White.copy(alpha = 0.7f)) },
                        onClick = {
                            showMenu = false
                            onExport?.invoke()
                        }
                    )

                    // 删除 (仅自定义)
                    if (onDelete != null) {
                        DropdownMenuItem(
                            text = { Text(stringResource(R.string.delete), color = Color.Red) },
                            leadingIcon = { Icon(Icons.Default.Delete, null, tint = Color.Red.copy(alpha = 0.7f)) },
                            onClick = {
                                showMenu = false
                                onDelete()
                            }
                        )
                    }
                }
            }
        }
    }
}
