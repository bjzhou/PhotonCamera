package com.hinnka.mycamera.ui.components

import android.graphics.Bitmap
import androidx.compose.foundation.*
import androidx.compose.foundation.interaction.MutableInteractionSource
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.lazy.rememberLazyListState
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.FilterNone
import androidx.compose.material.icons.filled.Tune
import androidx.compose.material3.Icon
import androidx.compose.material3.Text
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.asImageBitmap
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.hinnka.mycamera.R
import com.hinnka.mycamera.data.ContentRepository
import com.hinnka.mycamera.lut.LutInfo
import com.hinnka.mycamera.ui.camera.LutEditBottomSheet
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

/**
 * LUT 选择器组件
 *
 * 显示可用的 LUT 列表，支持选择和预览
 */
@Composable
fun LutSelector(
    availableLuts: List<LutInfo>,
    currentLutId: String?,
    thumbnail: Bitmap?,
    onLutSelected: (String?) -> Unit,
    onEditClick: (() -> Unit)? = null,
    categoryOrder: List<String> = emptyList(),
    modifier: Modifier = Modifier
) {
    val scrollState = rememberLazyListState()
    val coroutineScope = rememberCoroutineScope()
    var showLutEditDialogState by remember { mutableStateOf(false) }

    // 分类逻辑
    val categories = remember(availableLuts, categoryOrder) {
        val dynamicCategories = availableLuts.map { it.category }
            .distinct()
            .filter { it.isNotEmpty() }

        val sortedDynamic = dynamicCategories.sortedWith(compareBy<String> { cat ->
            val index = categoryOrder.indexOf(cat)
            if (index == -1) Int.MAX_VALUE else index
        }.thenBy { it })

        listOf(null) + sortedDynamic + listOf("Custom")
    }
    var selectedCategory by remember { mutableStateOf(availableLuts.find { it.id == currentLutId }?.category) }

    val filteredLuts = remember(selectedCategory, availableLuts) {
        when (selectedCategory) {
            null -> availableLuts
            "Custom" -> availableLuts.filter { !it.isBuiltIn }
            else -> availableLuts.filter { it.category == selectedCategory }
        }
    }

    val actualShowLutEditDialog = onEditClick == null && showLutEditDialogState

    // 在组件首次加载时滚动到当前选中的 LUT
    LaunchedEffect(currentLutId) {
        currentLutId?.let { lutId ->
            val selectedIndex = filteredLuts.indexOfFirst { it.id == lutId }
            if (selectedIndex >= 2) {
                coroutineScope.launch {
                    scrollState.animateScrollToItem(selectedIndex - 2)
                }
            }
        }
    }

    // 如果选中的 LUT 不在当前分类中，可选：不自动切换分类，或者在切换分类时如果是“全部”则保持选中

    // 全局 LUT 编辑底部弹窗
    if (actualShowLutEditDialog && currentLutId != null) {
        LutEditBottomSheet(
            lutId = currentLutId,
            onDismiss = {
                showLutEditDialogState = false
            }
        )
    }

    Column(modifier = modifier.fillMaxWidth()) {
        // 分类选择器 (小芯片样式)
        LazyRow(
            modifier = Modifier
                .fillMaxWidth()
                .padding(bottom = 4.dp),
            horizontalArrangement = Arrangement.spacedBy(12.dp),
            contentPadding = PaddingValues(horizontal = 8.dp)
        ) {
            items(categories) { category ->
                val isSelected = selectedCategory == category
                val categoryName = when (category) {
                    null -> stringResource(R.string.category_all)
                    "Custom" -> stringResource(R.string.category_custom)
                    else -> category
                }

                Text(
                    text = categoryName,
                    color = if (isSelected) Color(0xFFFF6B35) else Color.White.copy(alpha = 0.5f),
                    fontSize = 12.sp,
                    fontWeight = if (isSelected) FontWeight.Bold else FontWeight.Medium,
                    modifier = Modifier
                        .clickable(
                            interactionSource = remember { MutableInteractionSource() },
                            indication = null
                        ) {
                            selectedCategory = category
                        }
                        .padding(vertical = 4.dp)
                )
            }
        }

        LazyRow(
            modifier = Modifier
                .fillMaxWidth()
                .padding(vertical = 4.dp),
            horizontalArrangement = Arrangement.spacedBy(8.dp),
            state = scrollState
        ) {
            // LUT 列表
            items(filteredLuts, key = { it.id }) { lut ->
                LutItem(
                    id = lut.id,
                    name = lut.getName(),
                    previewBitmap = thumbnail,
                    isSelected = currentLutId == lut.id,
                    isVip = lut.isVip,
                    isCustom = !lut.isBuiltIn,
                    onClick = {
                        if (currentLutId == lut.id) {
                            if (onEditClick != null) {
                                onEditClick()
                            } else {
                                showLutEditDialogState = true
                            }
                        } else {
                            onLutSelected(lut.id)
                        }
                    }
                )
            }
        }
    }
}

/**
 * 单个 LUT 选项
 */
@OptIn(ExperimentalFoundationApi::class)
@Composable
private fun LutItem(
    id: String,
    name: String,
    previewBitmap: Bitmap?,
    isSelected: Boolean,
    isVip: Boolean,
    onClick: () -> Unit,
    isNone: Boolean = false,
    isCustom: Boolean = false,  // 添加自定义标识参数
    modifier: Modifier = Modifier
) {
    val context = LocalContext.current
    val backgroundColor = if (isSelected) {
        Color.White.copy(alpha = 0.3f)
    } else {
        Color.Black.copy(alpha = 0.5f)
    }

    val borderColor = if (isSelected) {
        Color.White
    } else {
        Color.Gray.copy(alpha = 0.5f)
    }

    var bitmap by remember(previewBitmap) { mutableStateOf(previewBitmap) }

    LaunchedEffect(previewBitmap) {
        val contentRepository = ContentRepository.getInstance(context)
        val lutConfig = withContext(Dispatchers.IO) {
            contentRepository.lutManager.loadLut(id)
        }

        if (lutConfig != null) {
            val colorRecipeParams = contentRepository.lutManager.loadColorRecipeParams(id)
            // LUT 预览生成：禁用软件处理（预览图小，不需要降噪/锐化）
            bitmap = previewBitmap?.let {
                contentRepository.imageProcessor.applyLut(
                    bitmap = it,
                    lutConfig = lutConfig,
                    colorRecipeParams = colorRecipeParams
                    // 预览不需要软件处理
                )
            }
        }
    }

    Column(
        modifier = modifier
            .width(60.dp)
            .clip(RoundedCornerShape(8.dp))
            .background(backgroundColor)
            .border(
                width = if (isSelected) 2.dp else 1.dp,
                color = borderColor,
                shape = RoundedCornerShape(8.dp)
            )
            .clickable { onClick() }
            .padding(8.dp),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.Center
    ) {
        // 预览区域
        Box(
            modifier = Modifier
                .size(44.dp)
                .clip(RoundedCornerShape(4.dp))
                .then(
                    if (isNone) {
                        Modifier.background(Color.DarkGray)
                    } else if (bitmap != null) {
                        // 显示真实预览图
                        Modifier
                    } else {
                        // 占位符：模拟滤镜预览的渐变色
                        Modifier.background(
                            Brush.linearGradient(
                                colors = listOf(
                                    Color(0xFF4A148C),
                                    Color(0xFF00897B),
                                    Color(0xFFFF6F00)
                                )
                            )
                        )
                    }
                ),
            contentAlignment = Alignment.Center
        ) {
            // 显示预览图片
            if (!isNone && bitmap != null) {
                Image(
                    bitmap = bitmap!!.asImageBitmap(),
                    contentDescription = null,
                    contentScale = ContentScale.Crop,
                    modifier = Modifier.fillMaxSize()
                )
            }
            if (isNone) {
                Icon(
                    imageVector = Icons.Default.FilterNone,
                    contentDescription = null,
                    tint = Color.White.copy(alpha = 0.7f),
                    modifier = Modifier.size(24.dp)
                )
            }

            if (isSelected) {
                Box(
                    modifier = Modifier
                        .fillMaxSize()
                        .background(Color.Black.copy(alpha = 0.3f)),
                    contentAlignment = Alignment.Center
                ) {
                    Box(
                        modifier = Modifier
                            .size(24.dp)
                            .background(Color.White.copy(alpha = 0.2f), CircleShape)
                            .border(1.dp, Color.White.copy(alpha = 0.5f), CircleShape),
                        contentAlignment = Alignment.Center
                    ) {
                        Icon(
                            imageVector = Icons.Default.Tune,
                            contentDescription = stringResource(R.string.edit),
                            tint = Color.White,
                            modifier = Modifier.size(14.dp)
                        )
                    }
                }
            }

            if (isVip) {
                Box(
                    modifier = Modifier
                        .align(Alignment.TopEnd)
                        .background(
                            color = Color(0xFFFFD700),
                            shape = RoundedCornerShape(bottomStart = 4.dp)
                        )
                        .padding(horizontal = 4.dp, vertical = 2.dp)
                ) {
                    Text(
                        text = stringResource(R.string.billing_vip_tag),
                        color = Color.Black,
                        fontSize = 8.sp,
                        fontWeight = FontWeight.Bold,
                        lineHeight = 8.sp
                    )
                }
            }

            // 自定义标识
            if (isCustom) {
                Box(
                    modifier = Modifier
                        .align(Alignment.TopStart)
                        .background(
                            color = Color(0xFF4CAF50),  // 绿色表示自定义
                            shape = RoundedCornerShape(bottomEnd = 4.dp)
                        )
                        .padding(horizontal = 4.dp, vertical = 2.dp)
                ) {
                    Text(
                        text = stringResource(R.string.custom_tag),
                        color = Color.White,
                        fontSize = 8.sp,
                        fontWeight = FontWeight.Bold,
                        lineHeight = 8.sp
                    )
                }
            }
        }

        Spacer(modifier = Modifier.height(4.dp))

        // 名称
        Text(
            text = name,
            color = Color.White,
            fontSize = 9.sp,
            fontWeight = if (isSelected) FontWeight.Bold else FontWeight.Normal,
            maxLines = 1,
            overflow = TextOverflow.Ellipsis,
            textAlign = TextAlign.Center,
            modifier = Modifier.fillMaxWidth().basicMarquee()
        )
    }
}


/**
 * LUT 控制面板
 *
 * 包含 LUT 选择器和强度滑块
 */
@Composable
fun LutControlPanel(
    availableLuts: List<LutInfo>,
    currentLutId: String?,
    thumbnail: Bitmap?,
    onLutSelected: (String?) -> Unit,
    categoryOrder: List<String> = emptyList(),
    modifier: Modifier = Modifier
) {
    var showLutEditDialog by remember { mutableStateOf(false) }

    if (showLutEditDialog && currentLutId != null) {
        LutEditBottomSheet(
            lutId = currentLutId,
            onDismiss = { showLutEditDialog = false }
        )
    }

    Column(
        modifier = modifier
            .fillMaxWidth()
            .padding(4.dp),
        verticalArrangement = Arrangement.spacedBy(4.dp)
    ) {
        if (currentLutId != null) {
            val currentLut = availableLuts.find { it.id == currentLutId }
            Row(
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(horizontal = 8.dp, vertical = 4.dp),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically
            ) {
                Text(
                    text = currentLut?.getName() ?: "",
                    color = Color.White,
                    fontSize = 14.sp,
                    fontWeight = FontWeight.Bold,
                    modifier = Modifier.weight(1f).basicMarquee()
                )

                Row(
                    modifier = Modifier
                        .clip(RoundedCornerShape(16.dp))
                        .background(Color.White.copy(alpha = 0.15f))
                        .clickable { showLutEditDialog = true }
                        .padding(horizontal = 12.dp, vertical = 6.dp),
                    verticalAlignment = Alignment.CenterVertically,
                    horizontalArrangement = Arrangement.spacedBy(4.dp)
                ) {
                    Icon(
                        imageVector = Icons.Default.Tune,
                        contentDescription = stringResource(R.string.color_recipe),
                        tint = Color(0xFFFFD700), // Gold color to match VIP/Premium feel
                        modifier = Modifier.size(14.dp)
                    )
                    Text(
                        text = stringResource(R.string.color_recipe),
                        color = Color.White,
                        fontSize = 11.sp,
                        fontWeight = FontWeight.Medium
                    )
                }
            }
        }

        // LUT 选择器
        LutSelector(
            availableLuts = availableLuts,
            currentLutId = currentLutId,
            thumbnail = thumbnail,
            onLutSelected = onLutSelected,
            onEditClick = { showLutEditDialog = true },
            categoryOrder = categoryOrder
        )
    }
}
