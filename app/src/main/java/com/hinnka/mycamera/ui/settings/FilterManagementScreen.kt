package com.hinnka.mycamera.ui.settings

import android.net.Uri
import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.itemsIndexed
import androidx.compose.foundation.lazy.rememberLazyListState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
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
@OptIn(ExperimentalMaterial3Api::class)
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
    
    // 本地可变列表用于拖拽排序
    var localLutList by remember { mutableStateOf(availableLuts) }
    
    // 当 availableLuts 更新时同步本地列表（保留现有顺序，将新项目添加到末尾）
    LaunchedEffect(availableLuts) {
        val existingIds = localLutList.map { it.id }.toSet()
        val newItems = availableLuts.filter { it.id !in existingIds }
        val updatedExisting = localLutList.mapNotNull { local ->
            availableLuts.find { it.id == local.id }
        }
        localLutList = newItems + updatedExisting
    }

    // 重命名对话框状态
    var showRenameDialog by remember { mutableStateOf(false) }
    var renamingLut by remember { mutableStateOf<LutInfo?>(null) }
    var renameText by remember { mutableStateOf("") }

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

    // 批量文件选择器
    val lutFilePicker = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.GetMultipleContents()
    ) { uris: List<Uri> ->
        if (uris.isNotEmpty()) {
            isImporting = true
            importProgress = Pair(0, uris.size)
            scope.launch {
                var successCount = 0
                var failCount = 0

                uris.forEachIndexed { index, uri ->
                    importProgress = Pair(index + 1, uris.size)
                    val result = withContext(Dispatchers.IO) {
                        customImportManager.importLut(uri)
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
                    failCount == 0 && successCount == 1 -> null  // 单个成功时不显示消息
                    failCount == 0 -> "成功导入 $successCount 个 LUT"
                    successCount == 0 -> "导入失败，共 $failCount 个文件"
                    else -> "成功导入 $successCount 个，失败 $failCount 个"
                }
            }
        }
    }
    
    // 拖拽排序状态
    val lazyListState = rememberLazyListState()
    val reorderableLazyListState = rememberReorderableLazyListState(lazyListState) { from, to ->
        // 更新本地列表顺序
        localLutList = localLutList.toMutableList().apply {
            add(to.index, removeAt(from.index))
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
                Text(
                    text = stringResource(R.string.filter_management_title),
                    color = Color.White,
                    fontSize = 20.sp,
                    fontWeight = FontWeight.Medium
                )
            },
            navigationIcon = {
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
            },
            actions = {
                // 导入进度提示
                if (isImporting && importProgress != null) {
                    Text(
                        text = "${importProgress!!.first}/${importProgress!!.second}",
                        color = Color.White.copy(alpha = 0.7f),
                        fontSize = 14.sp,
                        modifier = Modifier.padding(end = 8.dp)
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
            },
            colors = TopAppBarDefaults.topAppBarColors(
                containerColor = backgroundColor
            )
        )

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
            itemsIndexed(localLutList, key = { _, it -> it.id }) { index, lutInfo ->
                ReorderableItem(reorderableLazyListState, key = lutInfo.id) { isDragging ->
                    FilterManagementItem(
                        lutInfo = lutInfo,
                        isDefault = currentLutId == lutInfo.id,
                        isDragging = isDragging,
                        onSetDefault = {
                            viewModel.setLut(lutInfo.id)
                        },
                        onRename = if (!lutInfo.isBuiltIn) {
                            {
                                renamingLut = lutInfo
                                renameText = lutInfo.getName()
                                showRenameDialog = true
                            }
                        } else null,
                        onEditColorRecipe = {
                            editingLutId = lutInfo.id
                            showColorRecipeSheet = true
                        },
                        onDelete = if (!lutInfo.isBuiltIn) {
                            {
                                deletingLut = lutInfo
                                showDeleteDialog = true
                            }
                        } else null,
                        dragModifier = Modifier.draggableHandle()
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
}

/**
 * 滤镜管理项
 */
@Composable
private fun FilterManagementItem(
    lutInfo: LutInfo,
    isDefault: Boolean,
    isDragging: Boolean,
    onSetDefault: () -> Unit,
    onRename: (() -> Unit)?,
    onEditColorRecipe: (() -> Unit)?,
    onDelete: (() -> Unit)?,
    dragModifier: Modifier = Modifier,
    modifier: Modifier = Modifier
) {
    val borderColor = if (isDefault) Color(0xFFFF6B35) else Color.White.copy(alpha = 0.2f)
    val backgroundColor = when {
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
                width = if (isDefault) 2.dp else 1.dp,
                color = borderColor,
                shape = RoundedCornerShape(12.dp)
            )
            .clickable(onClick = onSetDefault)
            .padding(horizontal = 12.dp, vertical = 12.dp),
        verticalAlignment = Alignment.CenterVertically
    ) {
        // 拖拽图标 - 仅在此图标上应用拖拽手势
        Icon(
            imageVector = Icons.Default.DragHandle,
            contentDescription = "Drag to reorder",
            tint = Color.White.copy(alpha = 0.5f),
            modifier = dragModifier.size(24.dp)
        )
        
        Spacer(modifier = Modifier.width(12.dp))
        
        // 滤镜名称和类型
        Column(modifier = Modifier.weight(1f)) {
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
                
                Spacer(modifier = Modifier.width(8.dp))
                
                // 类型标签
                val typeText = if (lutInfo.isBuiltIn) {
                    stringResource(R.string.built_in)
                } else {
                    stringResource(R.string.custom)
                }
                Text(
                    text = typeText,
                    color = if (lutInfo.isBuiltIn) Color.White.copy(alpha = 0.5f) else Color(0xFFFF6B35),
                    fontSize = 11.sp,
                    modifier = Modifier
                        .clip(RoundedCornerShape(4.dp))
                        .background(
                            if (lutInfo.isBuiltIn) Color.White.copy(alpha = 0.1f)
                            else Color(0xFFFF6B35).copy(alpha = 0.2f)
                        )
                        .padding(horizontal = 6.dp, vertical = 2.dp)
                )
                
                // VIP 标签
                if (lutInfo.isVip) {
                    Spacer(modifier = Modifier.width(4.dp))
                    Text(
                        text = stringResource(R.string.billing_vip_tag),
                        color = Color(0xFFFFD700),
                        fontSize = 11.sp,
                        modifier = Modifier
                            .clip(RoundedCornerShape(4.dp))
                            .background(Color(0xFFFFD700).copy(alpha = 0.2f))
                            .padding(horizontal = 6.dp, vertical = 2.dp)
                    )
                }
            }
            
            // 默认标识
            if (isDefault) {
                Spacer(modifier = Modifier.height(4.dp))
                Text(
                    text = stringResource(R.string.current_default),
                    color = Color(0xFFFF6B35),
                    fontSize = 12.sp
                )
            }
        }

        // 色彩配方编辑按钮
        if (onEditColorRecipe != null) {
            IconButton(
                onClick = onEditColorRecipe,
                modifier = Modifier.size(36.dp)
            ) {
                Icon(
                    imageVector = Icons.Default.Tune,
                    contentDescription = stringResource(R.string.color_recipe),
                    tint = Color.White.copy(alpha = 0.7f),
                    modifier = Modifier.size(20.dp)
                )
            }
        }

        // 操作按钮（仅自定义滤镜）
        if (onRename != null) {
            IconButton(
                onClick = onRename,
                modifier = Modifier.size(36.dp)
            ) {
                Icon(
                    imageVector = Icons.Default.Edit,
                    contentDescription = stringResource(R.string.rename),
                    tint = Color.White.copy(alpha = 0.7f),
                    modifier = Modifier.size(20.dp)
                )
            }
        }

        if (onDelete != null) {
            IconButton(
                onClick = onDelete,
                modifier = Modifier.size(36.dp)
            ) {
                Icon(
                    imageVector = Icons.Default.Delete,
                    contentDescription = stringResource(R.string.delete),
                    tint = Color.White.copy(alpha = 0.7f),
                    modifier = Modifier.size(20.dp)
                )
            }
        }
    }
}
