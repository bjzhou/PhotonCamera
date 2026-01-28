package com.hinnka.mycamera.ui.settings

import android.annotation.SuppressLint
import android.net.Uri
import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.foundation.ExperimentalFoundationApi
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.combinedClickable
import androidx.compose.foundation.layout.*
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
import com.hinnka.mycamera.lut.LutInfo
import com.hinnka.mycamera.ui.camera.autoRotate
import com.hinnka.mycamera.ui.camera.LutEditBottomSheet
import com.hinnka.mycamera.viewmodel.CameraViewModel
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import sh.calvin.reorderable.ReorderableItem
import sh.calvin.reorderable.rememberReorderableLazyListState

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
    modifier: Modifier = Modifier
) {
    val currentLutId by viewModel.currentLutId.collectAsState()
    val availableLuts = viewModel.availableLutList
    val customImportManager = viewModel.getCustomImportManager()
    val scope = rememberCoroutineScope()
    val context = LocalContext.current

    // 本地可变列表用于拖拽排序
    var localLutList by remember { mutableStateOf(availableLuts) }

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

    // 多选状态
    var selectedIds by remember { mutableStateOf(setOf<String>()) }
    val isSelectionMode = selectedIds.isNotEmpty()

    // 分类管理状态
    val categoryOrder by viewModel.categoryOrder.collectAsState(emptyList())
    var showCategoryManagement by remember { mutableStateOf(false) }

    val allText = stringResource(R.string.category_all)
    val customText = stringResource(R.string.custom)

    var selectedTabIndex by remember { mutableIntStateOf(0) }
    val categories = remember(localLutList, categoryOrder, allText, customText) {
        // 动态分类提取
        val dynamicCategories = localLutList.map { it.category }
            .distinct()
            .filter { it.isNotEmpty() && it != allText && it != customText }

        // 合并排序中的分类（即使是空的）和数据中实际存在的分类
        val allUniqueCategories = (categoryOrder + dynamicCategories).distinct()

        // 按保存的排序排列；新分类（不在排序中的）排在后面
        val sortedDynamic = allUniqueCategories.sortedWith(compareBy<String> { cat ->
            val index = categoryOrder.indexOf(cat)
            if (index == -1) Int.MAX_VALUE else index
        }.thenBy { it })

        listOf(allText, customText) + sortedDynamic
    }
    val filteredLutList = remember(selectedTabIndex, localLutList, categories) {
        if (selectedTabIndex >= categories.size) return@remember localLutList

        when (selectedTabIndex) {
            0 -> localLutList // All
            1 -> localLutList.filter { !it.isBuiltIn } // Custom
            else -> localLutList.filter { it.category == categories[selectedTabIndex] }
        }
    }

    // 批量文件选择器
    val lutFilePicker = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.OpenMultipleDocuments()
    ) { uris: List<Uri> ->
        if (uris.isNotEmpty()) {
            pendingImportUris = uris
            categoryText = ""
            showImportCategoryDialog = true
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
    val lazyListState = rememberLazyListState()
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

    val backgroundColor = Color(0xFF434A5D)

    Column(
        modifier = modifier
            .fillMaxSize()
            .background(backgroundColor)
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
                            imageVector = if (selectedIds.size == filteredLutList.size) Icons.Default.CheckBox else Icons.Default.CheckBoxOutlineBlank,
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
                            imageVector = Icons.Default.Label,
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
                            lutFilePicker.launch(arrayOf("*/*"))
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
            LaunchedEffect(categories.size) {
                if (selectedTabIndex >= categories.size) {
                    selectedTabIndex = 0
                }
            }

            val copy_suffix = stringResource(R.string.copy_suffix)

            ScrollableTabRow(
                selectedTabIndex = selectedTabIndex,
                containerColor = Color.Transparent,
                contentColor = Color.White,
                edgePadding = 16.dp,
                divider = {},
                indicator = { tabPositions ->
                    TabRowDefaults.SecondaryIndicator(
                        modifier = Modifier.tabIndicatorOffset(tabPositions[selectedTabIndex]),
                        color = Color(0xFFFF6B35)
                    )
                }
            ) {
                categories.forEachIndexed { index, category ->
                    Tab(
                        selected = selectedTabIndex == index,
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
                            onEditCategory = if (!isSelectionMode) {
                                {
                                    categorizingIds = listOf(lutInfo.id)
                                    categoryText = lutInfo.category
                                    showCategoryDialog = true
                                }
                            } else null,
                            showCategory = (selectedTabIndex <= 1) && lutInfo.category.isNotEmpty(),
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
                    Column {
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
                        val commonCategories = remember(localLutList, categoryOrder) {
                            val dynamic = localLutList.map { it.category }.distinct().filter { it.isNotEmpty() }
                            (categoryOrder + dynamic).distinct()
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
                            scope.launch {
                                withContext(Dispatchers.IO) {
                                    categorizingIds.forEach { id ->
                                        customImportManager.updateLutCategory(id, categoryText)
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
            AlertDialog(
                onDismissRequest = {
                    showImportCategoryDialog = false
                    pendingImportUris = emptyList()
                },
                title = { Text(stringResource(R.string.import_to_category)) },
                text = {
                    Column {
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
                        val commonCategories = remember(localLutList, categoryOrder) {
                            val dynamic = localLutList.map { it.category }.distinct().filter { it.isNotEmpty() }
                            (categoryOrder + dynamic).distinct()
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
                    }
                },
                confirmButton = {
                    TextButton(
                        onClick = {
                            val targetCategory = categoryText
                            val urisToImport = pendingImportUris
                            showImportCategoryDialog = false
                            pendingImportUris = emptyList()

                            isImporting = true
                            importProgress = Pair(0, urisToImport.size)
                            scope.launch {
                                var successCount = 0
                                var failCount = 0

                                urisToImport.forEachIndexed { index, uri ->
                                    importProgress = Pair(index + 1, urisToImport.size)
                                    val result = withContext(Dispatchers.IO) {
                                        customImportManager.importLut(uri, category = targetCategory)
                                    }
                                    if (result != null) {
                                        successCount++
                                    } else {
                                        failCount++
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
            val dynamicCategories = remember(localLutList, allText, customText) {
                localLutList.map { it.category }
                    .distinct()
                    .filter { it.isNotEmpty() && it != allText && it != customText }
            }
            // 合并当前有的分类和保存的排序
            val allCategories = remember(dynamicCategories, categoryOrder) {
                (categoryOrder + dynamicCategories).distinct()
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
                        viewModel.saveCategoryOrder(newOrder)
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
                                val newOrder = categoryOrder.filter { it != target }
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
    onDeleteCategory: (String) -> Unit
) {
    var localCategories by remember { mutableStateOf(categories) }
    val lazyListState = rememberLazyListState()
    val reorderableLazyListState = rememberReorderableLazyListState(lazyListState) { from, to ->
        localCategories = localCategories.toMutableList().apply {
            add(to.index, removeAt(from.index))
        }
        onSaveOrder(localCategories)
    }

    var showAddDialog by remember { mutableStateOf(false) }
    var newCategoryName by remember { mutableStateOf("") }
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
            itemsIndexed(localCategories, key = { _, it -> it }) { index, category ->
                ReorderableItem(reorderableLazyListState, key = category) { isDragging ->
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
                            imageVector = Icons.Default.DragHandle,
                            contentDescription = null,
                            tint = Color.White.copy(alpha = 0.5f),
                            modifier = Modifier.draggableHandle().padding(4.dp)
                        )
                        Spacer(modifier = Modifier.width(12.dp))
                        Text(
                            text = category,
                            color = Color.White,
                            modifier = Modifier.weight(1f),
                            fontSize = 16.sp
                        )
                        IconButton(onClick = { categoryToDelete = category }) {
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
                            if (newCategoryName.isNotBlank() && !localCategories.contains(newCategoryName)) {
                                localCategories += newCategoryName
                                onSaveOrder(localCategories)
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
                            localCategories = localCategories.filter { it != target }
                            onSaveOrder(localCategories)
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
    onEditCategory: (() -> Unit)? = null,
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
            .combinedClickable(
                onClick = onSetDefault,
                onLongClick = onToggleSelection
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
            Icon(
                imageVector = Icons.Default.DragHandle,
                contentDescription = "Drag to reorder",
                tint = Color.White.copy(alpha = 0.5f),
                modifier = dragModifier.padding(8.dp).size(24.dp)
            )
        }

        // 核心信息区
        Column(
            modifier = Modifier
                .weight(1f)
                .padding(vertical = 4.dp, horizontal = 4.dp)
        ) {
            Row(verticalAlignment = Alignment.CenterVertically) {
                Text(
                    text = lutInfo.getName(),
                    color = Color.White,
                    fontSize = 16.sp,
                    fontWeight = FontWeight.Medium,
                    maxLines = 1,
                    overflow = TextOverflow.Ellipsis,
                    modifier = Modifier.weight(1f, fill = false)
                )

                Spacer(modifier = Modifier.width(6.dp))

                // 类型标签
                val typeText =
                    if (lutInfo.isBuiltIn) stringResource(R.string.built_in) else stringResource(R.string.custom)
                Text(
                    text = typeText,
                    color = if (lutInfo.isBuiltIn) Color.White.copy(alpha = 0.5f) else Color(0xFFFF6B35),
                    fontSize = 10.sp,
                    modifier = Modifier
                        .clip(RoundedCornerShape(4.dp))
                        .background(
                            if (lutInfo.isBuiltIn) Color.White.copy(alpha = 0.1f) else Color(0xFFFF6B35).copy(
                                alpha = 0.2f
                            )
                        )
                        .padding(horizontal = 4.dp, vertical = 1.dp)
                )

                // VIP 标签
                if (lutInfo.isVip) {
                    Spacer(modifier = Modifier.width(4.dp))
                    Text(
                        text = stringResource(R.string.billing_vip_tag),
                        color = Color(0xFFFFD700),
                        fontSize = 10.sp,
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
                    imageVector = Icons.Default.Tune,
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
                        leadingIcon = { Icon(Icons.Default.Label, null, tint = Color.White.copy(alpha = 0.7f)) },
                        onClick = {
                            showMenu = false
                            onEditCategory?.invoke()
                        }
                    )

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
                        leadingIcon = { Icon(Icons.Default.ContentCopy, null, tint = Color.White.copy(alpha = 0.7f)) },
                        onClick = {
                            showMenu = false
                            onCopy?.invoke()
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
