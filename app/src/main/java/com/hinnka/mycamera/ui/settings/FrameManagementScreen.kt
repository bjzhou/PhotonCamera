package com.hinnka.mycamera.ui.settings

import android.net.Uri
import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.items
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
import com.hinnka.mycamera.frame.FrameInfo
import com.hinnka.mycamera.frame.TextType
import com.hinnka.mycamera.ui.camera.autoRotate
import com.hinnka.mycamera.ui.common.WatermarkEditSheet
import com.hinnka.mycamera.ui.theme.AccentOrange
import com.hinnka.mycamera.viewmodel.CameraViewModel
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import sh.calvin.reorderable.ReorderableItem
import sh.calvin.reorderable.rememberReorderableLazyListState

/**
 * 边框管理页面
 * 
 * 支持选择默认边框、拖拽排序、重命名、删除（非内建）、导入
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun FrameManagementScreen(
    viewModel: CameraViewModel,
    onBack: () -> Unit,
    modifier: Modifier = Modifier
) {
    val currentFrameId = viewModel.currentFrameId
    val availableFrames = viewModel.availableFrameList
    val customImportManager = viewModel.getCustomImportManager()
    val scope = rememberCoroutineScope()

    // 本地可变列表用于拖拽排序
    var localFrameList by remember { mutableStateOf(availableFrames) }

    // 当 availableFrames 更新时同步本地列表（保留现有顺序，将新项目添加到末尾）
    LaunchedEffect(availableFrames) {
        val existingIds = localFrameList.map { it.id }.toSet()
        val newItems = availableFrames.filter { it.id !in existingIds }
        val updatedExisting = localFrameList.mapNotNull { local ->
            availableFrames.find { it.id == local.id }
        }
        localFrameList = newItems + updatedExisting
    }

    // 重命名对话框状态
    var showRenameDialog by remember { mutableStateOf(false) }
    var renamingFrame by remember { mutableStateOf<FrameInfo?>(null) }
    var renameText by remember { mutableStateOf("") }

    // 删除确认对话框状态
    var showDeleteDialog by remember { mutableStateOf(false) }
    var deletingFrame by remember { mutableStateOf<FrameInfo?>(null) }

    // 导入状态
    var isImporting by remember { mutableStateOf(false) }

    // 导入类型选择
    var showImportMenu by remember { mutableStateOf(false) }

    // 帮助对话框状态
    var showHelpDialog by remember { mutableStateOf(false) }

    // 自定义属性编辑状态
    var showFrameEditSheet by remember { mutableStateOf(false) }
    var editingFrameId by remember { mutableStateOf<String?>(null) }

    // JSON 边框配置文件选择器
    val frameJsonPicker = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.OpenDocument()
    ) { uri: Uri? ->
        uri?.let {
            isImporting = true
            scope.launch {
                withContext(Dispatchers.IO) {
                    customImportManager.importFrame(it)
                }
                viewModel.refreshCustomContent()
                isImporting = false
            }
        }
    }

    // 图片边框文件选择器
    val frameImagePicker = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.OpenDocument()
    ) { uri: Uri? ->
        uri?.let {
            isImporting = true
            scope.launch {
                withContext(Dispatchers.IO) {
                    customImportManager.importImageFrame(it)
                }
                viewModel.refreshCustomContent()
                isImporting = false
            }
        }
    }

    // 拖拽排序状态
    val lazyListState = rememberLazyListState()
    val reorderableLazyListState = rememberReorderableLazyListState(lazyListState) { from, to ->
        val fromId = from.key as? String ?: return@rememberReorderableLazyListState
        val toId = to.key as? String ?: return@rememberReorderableLazyListState

        // 仅处理边框项的排序，忽略 headers (如 "none")
        if (fromId == "none" || toId == "none") return@rememberReorderableLazyListState

        // 在原始列表中找到这两个边框的位置
        val fromIndexInLocal = localFrameList.indexOfFirst { it.id == fromId }
        val toIndexInLocal = localFrameList.indexOfFirst { it.id == toId }

        if (fromIndexInLocal != -1 && toIndexInLocal != -1) {
            // 更新本地列表顺序
            localFrameList = localFrameList.toMutableList().apply {
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
                Text(
                    text = stringResource(R.string.frame_management_title),
                    color = Color.White,
                    fontSize = 20.sp,
                    fontWeight = FontWeight.Medium
                )
            },
            navigationIcon = {
                IconButton(
                    onClick = {
                        // 保存排序顺序
                        viewModel.saveFrameOrder(localFrameList.map { it.id })
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
                // 帮助按钮
                IconButton(
                    onClick = { showHelpDialog = true }
                ) {
                    Icon(
                        imageVector = Icons.Default.HelpOutline,
                        contentDescription = stringResource(R.string.help),
                        tint = Color.White
                    )
                }

                // 导入按钮
                IconButton(
                    onClick = {
                        frameImagePicker.launch(arrayOf("image/png", "image/webp", "image/*"))
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
                            contentDescription = stringResource(R.string.import_frame),
                            tint = Color.White
                        )
                    }
                }
            },
            colors = TopAppBarDefaults.topAppBarColors(
                containerColor = backgroundColor
            )
        )

        // 边框列表
        LazyColumn(
            modifier = Modifier
                .fillMaxSize()
                .padding(horizontal = 16.dp),
            state = lazyListState,
            verticalArrangement = Arrangement.spacedBy(8.dp),
            contentPadding = PaddingValues(vertical = 16.dp)
        ) {
            // "无边框" 选项（不可排序）
            item(key = "none") {
                FrameManagementItem(
                    name = stringResource(R.string.none),
                    isBuiltIn = true,
                    isDefault = currentFrameId == null,
                    isDragging = false,
                    canDrag = false,
                    onSetDefault = {
                        viewModel.setFrame(null)
                    },
                    onRename = null,
                    onEditProperties = null,
                    onDelete = null
                )
            }

            itemsIndexed(localFrameList, key = { _, it -> it.id }) { index, frameInfo ->
                ReorderableItem(reorderableLazyListState, key = frameInfo.id) { isDragging ->
                    FrameManagementItem(
                        name = frameInfo.getName(),
                        isBuiltIn = frameInfo.isBuiltIn,
                        isDefault = currentFrameId == frameInfo.id,
                        isDragging = isDragging,
                        canDrag = true,
                        onSetDefault = {
                            viewModel.setFrame(frameInfo.id)
                        },
                        onRename = if (!frameInfo.isBuiltIn) {
                            {
                                renamingFrame = frameInfo
                                renameText = frameInfo.getName()
                                showRenameDialog = true
                            }
                        } else null,
                        onEditProperties = if (frameInfo.isEditable) {
                            {
                                editingFrameId = frameInfo.id
                                showFrameEditSheet = true
                            }
                        } else null,
                        onDelete = if (!frameInfo.isBuiltIn) {
                            {
                                deletingFrame = frameInfo
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
    if (showRenameDialog && renamingFrame != null) {
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
                                customImportManager.updateFrameName(renamingFrame!!.id, renameText)
                            }
                            viewModel.refreshCustomContent()
                            showRenameDialog = false
                            renamingFrame = null
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
    if (showDeleteDialog && deletingFrame != null) {
        AlertDialog(
            onDismissRequest = { showDeleteDialog = false },
            title = {
                Text(stringResource(R.string.delete_confirm_title))
            },
            text = {
                Text(stringResource(R.string.delete_frame_confirm_message, deletingFrame!!.getName()))
            },
            confirmButton = {
                TextButton(
                    onClick = {
                        scope.launch {
                            withContext(Dispatchers.IO) {
                                customImportManager.deleteCustomFrame(deletingFrame!!.id)
                            }
                            // 如果删除的是当前选中的边框，切换到无边框
                            if (currentFrameId == deletingFrame!!.id) {
                                viewModel.setFrame(null)
                            }
                            viewModel.refreshCustomContent()
                            showDeleteDialog = false
                            deletingFrame = null
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

    // 帮助对话框
    if (showHelpDialog) {
        AlertDialog(
            onDismissRequest = { showHelpDialog = false },
            title = {
                Text(stringResource(R.string.frame_import_help_title))
            },
            text = {
                Text(stringResource(R.string.frame_import_help_message))
            },
            confirmButton = {
                TextButton(onClick = { showHelpDialog = false }) {
                    Text(stringResource(R.string.got_it))
                }
            }
        )
    }

    // 页面退出时保存排序
    DisposableEffect(Unit) {
        onDispose {
            viewModel.saveFrameOrder(localFrameList.map { it.id })
        }
    }

    // 自定义属性编辑底部弹窗
    if (showFrameEditSheet && editingFrameId != null) {
        var properties by remember(editingFrameId) { mutableStateOf<Map<String, String>>(emptyMap()) }
        LaunchedEffect(editingFrameId) {
            properties = withContext(Dispatchers.IO) {
                viewModel.getFrameCustomProperties(editingFrameId!!)
            }
        }
        WatermarkEditSheet(
            customProperties = properties,
            onPropertiesChange = {
                properties = it
                scope.launch {
                    withContext(Dispatchers.IO) {
                        viewModel.saveFrameCustomProperties(editingFrameId!!, it)
                    }
                }
            },
            onDismiss = {
                showFrameEditSheet = false
                editingFrameId = null
            },
            onImportFont = { uri ->
                viewModel.getCustomImportManager().importFont(uri)
            },
            onImportLogo = { uri ->
                viewModel.getCustomImportManager().importLogo(uri)
            }
        )
    }
}

/**
 * 边框管理项
 */
@Composable
private fun FrameManagementItem(
    name: String,
    isBuiltIn: Boolean,
    isDefault: Boolean,
    isDragging: Boolean,
    canDrag: Boolean,
    onSetDefault: () -> Unit,
    onRename: (() -> Unit)?,
    onEditProperties: (() -> Unit)?,
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
        if (canDrag) {
            Icon(
                imageVector = Icons.Default.DragHandle,
                contentDescription = "Drag to reorder",
                tint = Color.White.copy(alpha = 0.5f),
                modifier = dragModifier.size(24.dp)
            )
            Spacer(modifier = Modifier.width(12.dp))
        } else {
            Spacer(modifier = Modifier.width(36.dp)) // 保持对齐
        }

        // 边框名称和类型
        Column(modifier = Modifier.weight(1f)) {
            Row(verticalAlignment = Alignment.CenterVertically) {
                Text(
                    text = name,
                    color = Color.White,
                    fontSize = 16.sp,
                    fontWeight = FontWeight.Medium,
                    maxLines = 1,
                    overflow = TextOverflow.Ellipsis,
                    modifier = Modifier.weight(1f, fill = false)
                )

                Spacer(modifier = Modifier.width(8.dp))

                // 类型标签
                val typeText = if (isBuiltIn) {
                    stringResource(R.string.built_in)
                } else {
                    stringResource(R.string.custom)
                }
                Text(
                    text = typeText,
                    color = if (isBuiltIn) Color.White.copy(alpha = 0.5f) else Color(0xFFFF6B35),
                    fontSize = 11.sp,
                    modifier = Modifier
                        .clip(RoundedCornerShape(4.dp))
                        .background(
                            if (isBuiltIn) Color.White.copy(alpha = 0.1f)
                            else Color(0xFFFF6B35).copy(alpha = 0.2f)
                        )
                        .padding(horizontal = 6.dp, vertical = 2.dp)
                )
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

        // 自定义属性编辑按钮（仅可编辑边框）
        if (onEditProperties != null) {
            IconButton(
                onClick = onEditProperties,
                modifier = Modifier.size(36.dp)
            ) {
                Icon(
                    imageVector = Icons.Default.Tune,
                    contentDescription = stringResource(R.string.watermark_adjustment),
                    tint = Color.White.copy(alpha = 0.7f),
                    modifier = Modifier.size(20.dp)
                )
            }
        }

        // 操作按钮（仅自定义边框）
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

