package com.hinnka.mycamera.ui.settings

import android.net.Uri
import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Add
import androidx.compose.material.icons.filled.Delete
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.hinnka.mycamera.R
import com.hinnka.mycamera.data.CustomImportManager
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

/**
 * 自定义导入设置组件
 *
 * 提供 LUT 和边框样式的导入功能
 */
@Composable
fun CustomImportSection(
    customImportManager: CustomImportManager,
    onImportSuccess: () -> Unit,
    modifier: Modifier = Modifier
) {
    var importResult by remember { mutableStateOf<String?>(null) }
    var customLuts by remember { mutableStateOf(customImportManager.getCustomLuts()) }
    var customFrames by remember { mutableStateOf(customImportManager.getCustomFrames()) }
    var isImporting by remember { mutableStateOf(false) }  // 添加导入中状态
    val scope = rememberCoroutineScope()

    // 刷新自定义内容列表
    fun refreshCustomContent() {
        customLuts = customImportManager.getCustomLuts()
        customFrames = customImportManager.getCustomFrames()
        onImportSuccess()
    }

    // LUT 文件选择器
    val lutLauncher = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.GetContent()
    ) { uri: Uri? ->
        scope.launch {
            uri?.let {
                isImporting = true  // 开始导入
                val result = withContext(Dispatchers.IO) {
                    customImportManager.importLut(it)
                }
                isImporting = false  // 导入完成
                importResult = if (result != null) {
                    refreshCustomContent()
                    "LUT 导入成功"
                } else {
                    "LUT 导入失败"
                }
            }
        }
    }

    // 边框样式文件选择器
    val frameLauncher = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.GetContent()
    ) { uri: Uri? ->
        scope.launch {
            uri?.let {
                isImporting = true  // 开始导入
                val result = withContext(Dispatchers.IO) {
                    customImportManager.importFrame(it)
                }
                isImporting = false  // 导入完成
                importResult = if (result != null) {
                    refreshCustomContent()
                    "边框样式导入成功"
                } else {
                    "边框样式导入失败"
                }
            }
        }
    }

    Column(modifier = modifier.fillMaxWidth()) {
        Text(
            text = stringResource(R.string.settings_custom_import),
            color = Color.White,
            fontSize = 16.sp,
            fontWeight = FontWeight.Normal,
            modifier = Modifier.padding(bottom = 12.dp)
        )

        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.spacedBy(12.dp)
        ) {
            // 导入 LUT 按钮
            ImportButton(
                text = stringResource(R.string.import_lut),
                onClick = { lutLauncher.launch("*/*") },
                enabled = !isImporting,  // 导入时禁用
                modifier = Modifier.weight(1f)
            )

            // 导入边框样式按钮
            ImportButton(
                text = stringResource(R.string.import_frame),
                onClick = { frameLauncher.launch("application/json") },
                enabled = !isImporting,  // 导入时禁用
                modifier = Modifier.weight(1f)
            )
        }

        // 显示导入中状态
        if (isImporting) {
            Spacer(modifier = Modifier.height(12.dp))
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.Center,
                verticalAlignment = Alignment.CenterVertically
            ) {
                CircularProgressIndicator(
                    modifier = Modifier.size(20.dp),
                    color = Color(0xFFFF6B35),
                    strokeWidth = 2.dp
                )
                Spacer(modifier = Modifier.width(12.dp))
                Text(
                    text = stringResource(R.string.importing),
                    color = Color.White.copy(alpha = 0.8f),
                    fontSize = 13.sp
                )
            }
        }

        // 显示导入结果
        importResult?.let { result ->
            Spacer(modifier = Modifier.height(8.dp))
            Text(
                text = result,
                color = if (result.contains("成功")) Color(0xFF4CAF50) else Color(0xFFFF5252),
                fontSize = 12.sp,
                modifier = Modifier.padding(top = 4.dp)
            )
            LaunchedEffect(result) {
                kotlinx.coroutines.delay(3000)
                importResult = null
            }
        }

        Spacer(modifier = Modifier.height(12.dp))

        Text(
            text = stringResource(R.string.settings_import_description),
            color = Color.White.copy(alpha = 0.6f),
            fontSize = 13.sp
        )

        // 已导入内容管理
        if (customLuts.isNotEmpty() || customFrames.isNotEmpty()) {
            Spacer(modifier = Modifier.height(20.dp))

            Text(
                text = stringResource(R.string.custom_content_management),
                color = Color.White,
                fontSize = 14.sp,
                fontWeight = FontWeight.Medium,
                modifier = Modifier.padding(bottom = 8.dp)
            )

            // 自定义 LUT 列表
            customLuts.forEach { lut ->
                CustomContentItem(
                    name = lut.getName(),
                    type = stringResource(R.string.lut_type),
                    onDelete = {
                        scope.launch {
                            withContext(Dispatchers.IO) {
                                customImportManager.deleteCustomLut(lut.id)
                            }
                            importResult = "已删除: ${lut.getName()}"
                            refreshCustomContent()
                        }
                    }
                )
                Spacer(modifier = Modifier.height(8.dp))
            }

            // 自定义边框列表
            customFrames.forEach { frame ->
                CustomContentItem(
                    name = frame.name,
                    type = stringResource(R.string.frame_type),
                    onDelete = {
                        scope.launch {
                            withContext(Dispatchers.IO) {
                                customImportManager.deleteCustomFrame(frame.id)
                            }
                            importResult = "已删除: ${frame.name}"
                            refreshCustomContent()
                        }
                    }
                )
                Spacer(modifier = Modifier.height(8.dp))
            }
        }
    }
}

/**
 * 自定义内容项
 */
@Composable
private fun CustomContentItem(
    name: String,
    type: String,
    onDelete: () -> Unit,
    modifier: Modifier = Modifier
) {
    var showDeleteDialog by remember { mutableStateOf(false) }

    Row(
        modifier = modifier
            .fillMaxWidth()
            .background(
                Color.White.copy(alpha = 0.1f),
                RoundedCornerShape(8.dp)
            )
            .padding(horizontal = 12.dp, vertical = 10.dp),
        verticalAlignment = Alignment.CenterVertically,
        horizontalArrangement = Arrangement.SpaceBetween
    ) {
        Column(modifier = Modifier.weight(1f)) {
            Text(
                text = name,
                color = Color.White,
                fontSize = 14.sp,
                fontWeight = FontWeight.Medium
            )
            Spacer(modifier = Modifier.height(2.dp))
            Text(
                text = type,
                color = Color.White.copy(alpha = 0.6f),
                fontSize = 12.sp
            )
        }

        IconButton(
            onClick = { showDeleteDialog = true },
            modifier = Modifier.size(36.dp)
        ) {
            Icon(
                imageVector = Icons.Default.Delete,
                contentDescription = stringResource(R.string.delete),
                tint = Color(0xFFFF5252)
            )
        }
    }

    // 删除确认对话框
    if (showDeleteDialog) {
        AlertDialog(
            onDismissRequest = { showDeleteDialog = false },
            title = {
                Text(text = stringResource(R.string.delete_confirm_title))
            },
            text = {
                Text(text = stringResource(R.string.delete_custom_content_confirm, name))
            },
            confirmButton = {
                TextButton(
                    onClick = {
                        onDelete()
                        showDeleteDialog = false
                    }
                ) {
                    Text(
                        text = stringResource(R.string.delete),
                        color = Color(0xFFFF5252)
                    )
                }
            },
            dismissButton = {
                TextButton(onClick = { showDeleteDialog = false }) {
                    Text(text = stringResource(R.string.cancel))
                }
            }
        )
    }
}

/**
 * 导入按钮
 */
@Composable
private fun ImportButton(
    text: String,
    onClick: () -> Unit,
    enabled: Boolean = true,  // 添加 enabled 参数
    modifier: Modifier = Modifier
) {
    Button(
        onClick = onClick,
        enabled = enabled,  // 使用 enabled 状态
        modifier = modifier.height(48.dp),
        shape = RoundedCornerShape(8.dp),
        colors = ButtonDefaults.buttonColors(
            containerColor = Color(0xFFFF6B35),
            disabledContainerColor = Color(0xFFFF6B35).copy(alpha = 0.5f)  // 禁用时半透明
        )
    ) {
        Icon(
            imageVector = Icons.Default.Add,
            contentDescription = null,
            tint = Color.White.copy(alpha = if (enabled) 1f else 0.5f),
            modifier = Modifier.size(18.dp)
        )
        Spacer(modifier = Modifier.width(4.dp))
        Text(
            text = text,
            color = Color.White.copy(alpha = if (enabled) 1f else 0.5f),
            fontSize = 14.sp,
            fontWeight = FontWeight.Medium
        )
    }
}
