package com.hinnka.mycamera.ui.settings

import android.net.Uri
import android.widget.Toast
import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
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
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.hinnka.mycamera.R
import com.hinnka.mycamera.frame.FrameInfo
import com.hinnka.mycamera.ui.camera.autoRotate
import com.hinnka.mycamera.utils.PLog
import com.hinnka.mycamera.viewmodel.CameraViewModel
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import sh.calvin.reorderable.ReorderableItem
import sh.calvin.reorderable.rememberReorderableLazyListState
import com.hinnka.mycamera.ui.icons.AppIcons

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
    onCreateFrameClick: () -> Unit,
    onEditFrameStyle: (String) -> Unit,
    modifier: Modifier = Modifier
) {
    val currentFrameId = viewModel.currentFrameId
    val availableFrames = viewModel.availableFrameList
    val customImportManager = viewModel.getCustomImportManager()
    val scope = rememberCoroutineScope()
    val context = LocalContext.current

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

    // 复制对话框状态
    var showCopyDialog by remember { mutableStateOf(false) }
    var copyingFrame by remember { mutableStateOf<FrameInfo?>(null) }
    var copyText by remember { mutableStateOf("") }

    // 删除确认对话框状态
    var showDeleteDialog by remember { mutableStateOf(false) }
    var deletingFrame by remember { mutableStateOf<FrameInfo?>(null) }

    // 导入状态
    var isImporting by remember { mutableStateOf(false) }
    var pendingExportBytes by remember { mutableStateOf(ByteArray(0)) }

    // 顶部操作菜单
    var showCreateMenu by remember { mutableStateOf(false) }

    // JSON 边框配置文件选择器
    val frameJsonPicker = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.GetContent()
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

    val exportLauncher = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.CreateDocument("application/json")
    ) { uri: Uri? ->
        uri?.let {
            scope.launch {
                withContext(Dispatchers.IO) {
                    try {
                        context.contentResolver.openOutputStream(it)?.use { output ->
                            output.write(pendingExportBytes)
                        }
                        withContext(Dispatchers.Main) {
                            Toast.makeText(
                                context,
                                context.getString(R.string.frame_export_success),
                                Toast.LENGTH_SHORT
                            ).show()
                        }
                    } catch (e: Exception) {
                        PLog.e("FrameManagementScreen", "Failed to export frame", e)
                        withContext(Dispatchers.Main) {
                            Toast.makeText(
                                context,
                                context.getString(R.string.frame_export_failed),
                                Toast.LENGTH_SHORT
                            ).show()
                        }
                    }
                }
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
                // 导入按钮
                IconButton(
                    onClick = { showCreateMenu = true },
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
                            contentDescription = stringResource(R.string.frame_editor_create_menu),
                            tint = Color.White
                        )
                    }
                }
                DropdownMenu(
                    expanded = showCreateMenu,
                    onDismissRequest = { showCreateMenu = false }
                ) {
                    DropdownMenuItem(
                        text = { Text(stringResource(R.string.frame_editor_new_title)) },
                        onClick = {
                            showCreateMenu = false
                            onCreateFrameClick()
                        }
                    )
                    DropdownMenuItem(
                        text = { Text(stringResource(R.string.import_frame_json)) },
                        onClick = {
                            showCreateMenu = false
                            frameJsonPicker.launch("*/*")
                        }
                    )
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
                        onEditStyle = null,
                        onCopy = null,
                        onExport = null,
                        onRename = null,
                        onDelete = null
                )
            }

            itemsIndexed(localFrameList, key = { _, it -> it.id }) { index, frameInfo ->
                ReorderableItem(reorderableLazyListState, key = frameInfo.id) { isDragging ->
                    val copySuffix = stringResource(R.string.copy_suffix)
                    FrameManagementItem(
                        name = frameInfo.getName(),
                        isBuiltIn = frameInfo.isBuiltIn,
                        isDefault = currentFrameId == frameInfo.id,
                        isDragging = isDragging,
                        canDrag = true,
                        onSetDefault = {
                            viewModel.setFrame(frameInfo.id)
                        },
                        onEditStyle = {
                            onEditFrameStyle(frameInfo.id)
                        },
                        onCopy = {
                            copyingFrame = frameInfo
                            copyText = frameInfo.getName() + copySuffix
                            showCopyDialog = true
                        },
                        onExport = {
                            scope.launch {
                                val bytes = viewModel.exportFrameToJson(frameInfo)
                                if (bytes != null) {
                                    pendingExportBytes = bytes
                                    exportLauncher.launch("${frameInfo.getName()}.json")
                                } else {
                                    Toast.makeText(
                                        context,
                                        context.getString(R.string.frame_export_failed),
                                        Toast.LENGTH_SHORT
                                    ).show()
                                }
                            }
                        },
                        onRename = if (!frameInfo.isBuiltIn) {
                            {
                                renamingFrame = frameInfo
                                renameText = frameInfo.getName()
                                showRenameDialog = true
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

    // 复制对话框
    if (showCopyDialog && copyingFrame != null) {
        AlertDialog(
            onDismissRequest = { showCopyDialog = false },
            title = {
                Text(stringResource(R.string.copy_frame_dialog_title))
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
                        viewModel.copyFrame(copyingFrame!!, copyText)
                        showCopyDialog = false
                        copyingFrame = null
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

    // 页面退出时保存排序
    DisposableEffect(Unit) {
        onDispose {
            viewModel.saveFrameOrder(localFrameList.map { it.id })
        }
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
    onEditStyle: (() -> Unit)?,
    onCopy: (() -> Unit)?,
    onExport: (() -> Unit)?,
    onRename: (() -> Unit)?,
    onDelete: (() -> Unit)?,
    dragModifier: Modifier = Modifier,
    modifier: Modifier = Modifier
) {
    var showActionsMenu by remember { mutableStateOf(false) }
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
            .padding(horizontal = 12.dp, vertical = 12.dp),
        verticalAlignment = Alignment.CenterVertically
    ) {
        // 拖拽图标 - 仅在此图标上应用拖拽手势
        if (canDrag) {
            Box(
                modifier = Modifier.size(40.dp),
                contentAlignment = Alignment.Center
            ) {
                Icon(
                    imageVector = AppIcons.DragHandle,
                    contentDescription = "Drag to reorder",
                    tint = Color.White.copy(alpha = 0.5f),
                    modifier = dragModifier.size(24.dp)
                )
            }
            Spacer(modifier = Modifier.width(12.dp))
        } else {
            Spacer(modifier = Modifier.width(52.dp)) // 保持对齐
        }

        // 边框名称和类型
        Column(
            modifier = Modifier
                .weight(1f)
                .clip(RoundedCornerShape(8.dp))
                .clickable(onClick = onSetDefault)
        ) {
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

        if (onEditStyle != null || onCopy != null || onExport != null || onRename != null || onDelete != null) {
            Box {
                IconButton(
                    onClick = { showActionsMenu = true },
                    modifier = Modifier.size(36.dp)
                ) {
                    Icon(
                        imageVector = Icons.Default.MoreVert,
                        contentDescription = stringResource(R.string.more_options),
                        tint = Color.White.copy(alpha = 0.7f),
                        modifier = Modifier.size(20.dp)
                    )
                }
                DropdownMenu(
                    expanded = showActionsMenu,
                    onDismissRequest = { showActionsMenu = false }
                ) {
                    onEditStyle?.let {
                        DropdownMenuItem(
                            text = { Text(stringResource(R.string.frame_editor_edit_title)) },
                            onClick = {
                                showActionsMenu = false
                                it()
                            }
                        )
                    }
                    onCopy?.let {
                        DropdownMenuItem(
                            text = { Text(stringResource(R.string.copy)) },
                            onClick = {
                                showActionsMenu = false
                                it()
                            }
                        )
                    }
                    onExport?.let {
                        DropdownMenuItem(
                            text = { Text(stringResource(R.string.export_frame_json)) },
                            onClick = {
                                showActionsMenu = false
                                it()
                            }
                        )
                    }
                    onRename?.let {
                        DropdownMenuItem(
                            text = { Text(stringResource(R.string.rename)) },
                            onClick = {
                                showActionsMenu = false
                                it()
                            }
                        )
                    }
                    onDelete?.let {
                        DropdownMenuItem(
                            text = { Text(stringResource(R.string.delete)) },
                            onClick = {
                                showActionsMenu = false
                                it()
                            }
                        )
                    }
                }
            }
        }
    }
}
