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
import androidx.compose.material.icons.filled.Settings
import androidx.compose.material3.Icon
import androidx.compose.material3.Text
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import coil.compose.AsyncImage
import coil.request.ImageRequest
import coil.size.Size
import coil.transform.Transformation
import com.hinnka.mycamera.R
import com.hinnka.mycamera.data.ContentRepository
import com.hinnka.mycamera.lut.BaselineColorCorrectionTarget
import com.hinnka.mycamera.lut.LutInfo
import com.hinnka.mycamera.model.CameraPreset
import com.hinnka.mycamera.model.LutSelectorMode
import com.hinnka.mycamera.ui.camera.LutEditBottomSheet
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import com.hinnka.mycamera.ui.icons.AppIcons

@Composable
fun LutSelectorWithRecipeAction(
    availableLuts: List<LutInfo>,
    currentLutId: String?,
    thumbnail: Bitmap?,
    onLutSelected: (String?) -> Unit,
    onEditRecipeClick: (() -> Unit)?,
    onEditEffectClick: (() -> Unit)?,
    modifier: Modifier = Modifier,
    recipeIsCustomized: Boolean = false,
    onManageClick: ((String) -> Unit)? = null,
    categoryOrder: List<String> = emptyList()
) {
    val selectedLutName = availableLuts.find { it.id == currentLutId }?.getName().orEmpty()

    Column(modifier = modifier.fillMaxWidth()) {
        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.SpaceBetween,
            verticalAlignment = Alignment.CenterVertically
        ) {
            Column(verticalArrangement = Arrangement.spacedBy(2.dp), modifier = Modifier.weight(1f)) {
                Text(
                    text = stringResource(R.string.filter).uppercase(),
                    color = Color.White.copy(alpha = 0.4f),
                    fontSize = 10.sp,
                    fontWeight = FontWeight.Bold,
                    letterSpacing = 1.sp
                )
                Text(
                    text = if (selectedLutName.isEmpty()) stringResource(R.string.none) else selectedLutName,
                    color = Color.White,
                    fontSize = 16.sp,
                    fontWeight = FontWeight.Bold,
                    maxLines = 1,
                    overflow = TextOverflow.Ellipsis,
                    modifier = Modifier.basicMarquee()
                )
            }

            Row(
                horizontalArrangement = Arrangement.spacedBy(8.dp),
                verticalAlignment = Alignment.CenterVertically
            ) {
                if (onEditRecipeClick != null) {
                    Row(
                        modifier = Modifier
                            .clip(RoundedCornerShape(16.dp))
                            .background(
                                if (recipeIsCustomized) Color(0xFFFF9800).copy(alpha = 0.15f)
                                else Color.White.copy(alpha = 0.1f)
                            )
                            .clickable { onEditRecipeClick() }
                            .padding(horizontal = 10.dp, vertical = 6.dp),
                        verticalAlignment = Alignment.CenterVertically,
                        horizontalArrangement = Arrangement.spacedBy(4.dp)
                    ) {
                        Icon(
                            imageVector = AppIcons.Tune,
                            contentDescription = null,
                            tint = if (recipeIsCustomized) Color(0xFFFF9800) else Color(0xFFFFD700),
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
                if (onEditEffectClick != null) {
                    EffectsActionChip(
                        onClick = { onEditEffectClick() }
                    )
                }
            }
        }

        Spacer(modifier = Modifier.height(8.dp))

        LutSelector(
            availableLuts = availableLuts,
            currentLutId = currentLutId,
            thumbnail = thumbnail,
            onLutSelected = onLutSelected,
            onEditClick = onEditRecipeClick,
            onManageClick = onManageClick,
            categoryOrder = categoryOrder
        )
    }
}

private sealed class LutCategoryTab {
    data object Favorite : LutCategoryTab()
    data object BuiltIn : LutCategoryTab()
    data object Uncategorized : LutCategoryTab()
    data class Category(val name: String) : LutCategoryTab()
}

private fun LutCategoryTab.stableKey(): String = when (this) {
    LutCategoryTab.Favorite -> "fixed:favorite"
    LutCategoryTab.BuiltIn -> "fixed:built_in"
    LutCategoryTab.Uncategorized -> "fixed:uncategorized"
    is LutCategoryTab.Category -> "category:$name"
}

private const val NONE_LUT_ITEM_KEY = "__photon_lut_selector_none__"

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
    // 预设相关参数 (添加默认值以支持向后兼容)
    allPresets: List<CameraPreset> = emptyList(),
    activePresetId: String? = null,
    selectedMode: LutSelectorMode = LutSelectorMode.Style,
    onModeSelected: (LutSelectorMode) -> Unit = {},
    onPresetSelected: (CameraPreset?) -> Unit = {},
    onCreatePresetClick: () -> Unit = {},
    onPresetManagementClick: () -> Unit = {},
    onEditClick: (() -> Unit)? = null,
    onManageClick: ((String) -> Unit)? = null,
    categoryOrder: List<String> = emptyList(),
    modifier: Modifier = Modifier
) {
    val scrollState = rememberLazyListState()
    val coroutineScope = rememberCoroutineScope()
    var showLutEditDialogState by remember { mutableStateOf(false) }
    val favoriteText = stringResource(R.string.favorite)
    val builtInText = stringResource(R.string.built_in)
    val uncategorizedText = stringResource(R.string.uncategorized)
    val styleText = stringResource(R.string.filter)
    val presetText = stringResource(R.string.preset_title)
    val noneText = stringResource(R.string.none)

    // 分类逻辑
    val categoryTabs = remember(availableLuts, categoryOrder, favoriteText, builtInText, uncategorizedText) {
        val reservedCategoryNames = setOf(favoriteText, builtInText, uncategorizedText)
        val dynamicCategories = availableLuts.map { it.category }
            .distinct()
            .filter { it.isNotEmpty() && it !in reservedCategoryNames }
        val hasUncategorizedLuts = availableLuts.any { !it.isBuiltIn && it.category.isEmpty() }
        val orderedEntries = categoryOrder.filter { it == builtInText || dynamicCategories.contains(it) }
        val remainingDynamic = dynamicCategories.filterNot { it in orderedEntries }.sorted()

        buildList {
            add(LutCategoryTab.Favorite)
            if (orderedEntries.isEmpty()) {
                add(LutCategoryTab.BuiltIn)
                addAll(remainingDynamic.map(LutCategoryTab::Category))
            } else {
                orderedEntries.forEach { entry ->
                    when (entry) {
                        builtInText -> add(LutCategoryTab.BuiltIn)
                        else -> add(LutCategoryTab.Category(entry))
                    }
                }
                if (builtInText !in orderedEntries) add(LutCategoryTab.BuiltIn)
                addAll(remainingDynamic.map(LutCategoryTab::Category))
            }

            if (hasUncategorizedLuts) {
                add(LutCategoryTab.Uncategorized)
            }
        }
    }
    fun LutCategoryTab.contains(lut: LutInfo): Boolean = when (this) {
        LutCategoryTab.Favorite -> lut.isFavorite
        LutCategoryTab.BuiltIn -> lut.isBuiltIn
        LutCategoryTab.Uncategorized -> !lut.isBuiltIn && lut.category.isEmpty()
        is LutCategoryTab.Category -> lut.category == name
    }

    fun preferredCategoryFor(lut: LutInfo): LutCategoryTab = when {
        lut.isFavorite -> LutCategoryTab.Favorite
        lut.category.isNotEmpty() -> LutCategoryTab.Category(lut.category)
        lut.isBuiltIn -> LutCategoryTab.BuiltIn
        else -> LutCategoryTab.Uncategorized
    }

    var selectedCategory by remember { mutableStateOf<LutCategoryTab>(LutCategoryTab.BuiltIn) }
    val activeLutId = currentLutId
    val actualMode = if (allPresets.isEmpty()) LutSelectorMode.Style else selectedMode

    LaunchedEffect(activeLutId, availableLuts, categoryTabs) {
        val selectedLut = availableLuts.find { it.id == activeLutId }
        selectedCategory = when {
            selectedLut != null && selectedCategory.contains(selectedLut) -> selectedCategory
            selectedLut?.isFavorite == true -> LutCategoryTab.Favorite
            selectedLut != null -> preferredCategoryFor(selectedLut)
            selectedCategory in categoryTabs -> selectedCategory
            else -> LutCategoryTab.BuiltIn
        }
    }

    val filteredLuts = remember(selectedCategory, availableLuts) {
        when (selectedCategory) {
            LutCategoryTab.Favorite -> availableLuts.filter { it.isFavorite }
            LutCategoryTab.BuiltIn -> availableLuts.filter { it.isBuiltIn }
            LutCategoryTab.Uncategorized -> availableLuts.filter { !it.isBuiltIn && it.category.isEmpty() }
            is LutCategoryTab.Category -> {
                val categoryName = (selectedCategory as LutCategoryTab.Category).name
                availableLuts.filter { it.category == categoryName }
            }
        }
    }

    val actualShowLutEditDialog = onEditClick == null && showLutEditDialogState

    // 在组件首次加载时滚动到当前选中的 LUT
    LaunchedEffect(activeLutId, actualMode, filteredLuts) {
        if (actualMode == LutSelectorMode.Style) {
            activeLutId?.let { lutId ->
                val selectedIndex = filteredLuts.indexOfFirst { it.id == lutId }
                if (selectedIndex >= 2) {
                    coroutineScope.launch {
                        scrollState.scrollToItem(selectedIndex - 2)
                    }
                }
            }
        }
    }

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
        if (allPresets.isNotEmpty()) {
            Row(
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(horizontal = 8.dp, vertical = 4.dp),
                horizontalArrangement = Arrangement.spacedBy(8.dp),
                verticalAlignment = Alignment.CenterVertically
            ) {
                LutSelectorModeTab(
                    text = styleText,
                    isSelected = actualMode == LutSelectorMode.Style,
                    onClick = { onModeSelected(LutSelectorMode.Style) }
                )
                LutSelectorModeTab(
                    text = presetText,
                    isSelected = actualMode == LutSelectorMode.Presets,
                    onClick = { onModeSelected(LutSelectorMode.Presets) }
                )
            }
        }

        if (actualMode == LutSelectorMode.Style) {
            // 分类选择器 (小芯片样式)
            Row(
                modifier = Modifier.fillMaxWidth().padding(bottom = 4.dp),
                verticalAlignment = Alignment.CenterVertically
            ) {
                LazyRow(
                    modifier = Modifier.weight(1f),
                    horizontalArrangement = Arrangement.spacedBy(8.dp),
                    contentPadding = PaddingValues(horizontal = 8.dp)
                ) {
                    items(categoryTabs, key = { it.stableKey() }) { category ->
                        val isSelected = selectedCategory == category
                        val categoryName = when (category) {
                            LutCategoryTab.Favorite -> favoriteText
                            LutCategoryTab.BuiltIn -> builtInText
                            LutCategoryTab.Uncategorized -> uncategorizedText
                            is LutCategoryTab.Category -> category.name
                        }

                        Text(
                            text = categoryName,
                            color = if (isSelected) Color(0xFFFF6B35) else Color.White.copy(alpha = 0.7f),
                            fontSize = 11.sp,
                            fontWeight = if (isSelected) FontWeight.Bold else FontWeight.Medium,
                            modifier = Modifier
                                .clickable(
                                    interactionSource = remember { MutableInteractionSource() },
                                    indication = null
                                ) {
                                    selectedCategory = category
                                }
                                .padding(horizontal = 4.dp, vertical = 6.dp)
                        )
                    }
                }

                if (onManageClick != null) {
                    var lastClickTime by remember { mutableLongStateOf(0L) }
                    Icon(
                        imageVector = Icons.Default.Settings,
                        contentDescription = "Manage Filters",
                        tint = Color.White.copy(alpha = 0.6f),
                        modifier = Modifier
                            .padding(end = 12.dp)
                            .size(24.dp)
                            .clip(CircleShape)
                            .clickable {
                                val currentTime = System.currentTimeMillis()
                                if (currentTime - lastClickTime > 1000) {
                                    lastClickTime = currentTime
                                    onManageClick(currentLutId ?: "")
                                }
                            }
                            .padding(4.dp)
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
                    var lastManageClickTime by remember { mutableLongStateOf(0L) }
                    LutItem(
                        id = lut.id,
                        name = lut.getName(),
                        previewBitmap = thumbnail,
                        isSelected = activeLutId == lut.id,
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
                        },
                        onManageClick = if (onManageClick != null) {
                            {
                                val currentTime = System.currentTimeMillis()
                                if (currentTime - lastManageClickTime > 1000) {
                                    lastManageClickTime = currentTime
                                    onManageClick(lut.id)
                                }
                            }
                        } else null
                    )
                }
            }
        } else {
            // 预设列表
            PresetsPanel(
                activePresetId = activePresetId,
                allPresets = allPresets,
                onPresetSelected = onPresetSelected,
                onCreatePreset = onCreatePresetClick,
                onManagePresets = onPresetManagementClick,
                modifier = Modifier.fillMaxWidth()
            )
        }
    }
}

@Composable
private fun LutSelectorModeTab(
    text: String,
    isSelected: Boolean,
    onClick: () -> Unit,
    badgeText: String? = null
) {
    Row(
        modifier = Modifier
            .clip(RoundedCornerShape(14.dp))
            .background(if (isSelected) Color.White.copy(alpha = 0.18f) else Color.Transparent)
            .border(
                width = 1.dp,
                color = if (isSelected) Color.White.copy(alpha = 0.5f) else Color.White.copy(alpha = 0.15f),
                shape = RoundedCornerShape(14.dp)
            )
            .clickable(
                interactionSource = remember { MutableInteractionSource() },
                indication = null,
                onClick = onClick
            )
            .padding(horizontal = 10.dp, vertical = 5.dp),
        verticalAlignment = Alignment.CenterVertically,
        horizontalArrangement = Arrangement.spacedBy(6.dp)
    ) {
        Text(
            text = text,
            color = if (isSelected) Color.White else Color.White.copy(alpha = 0.7f),
            fontSize = 12.sp,
            fontWeight = if (isSelected) FontWeight.SemiBold else FontWeight.Medium
        )
        if (badgeText != null) {
            Text(
                text = badgeText,
                color = Color.Black,
                fontSize = 9.sp,
                fontWeight = FontWeight.Bold,
                modifier = Modifier
                    .clip(RoundedCornerShape(8.dp))
                    .background(Color(0xFFFFD700))
                    .padding(horizontal = 5.dp, vertical = 1.dp)
            )
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
    onManageClick: (() -> Unit)? = null,
    recipeTarget: BaselineColorCorrectionTarget? = null,
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
            .combinedClickable(
                onClick = onClick,
                onLongClick = onManageClick
            )
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
                    } else if (previewBitmap != null) {
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
            if (!isNone && previewBitmap != null) {
                // 照片缩略图
                val transformation = remember(id, previewBitmap) {
                    object : Transformation {
                        override val cacheKey: String = "previewTransformation_${previewBitmap.hashCode()}_$id"
                        val contentRepository = ContentRepository.getInstance(context)

                        override suspend fun transform(
                            input: Bitmap,
                            size: Size
                        ): Bitmap {
                            val lutConfig = withContext(Dispatchers.IO) {
                                contentRepository.lutManager.loadLut(id)
                            }
                            if (lutConfig != null) {
                                val colorRecipeParams = contentRepository.lutManager.loadColorRecipeParams(id, recipeTarget)
                                return contentRepository.imageProcessor.applyLut(
                                    bitmap = input,
                                    lutConfig = lutConfig,
                                    colorRecipeParams = colorRecipeParams
                                )
                            }
                            return input
                        }

                    }
                }
                val imageRequest = remember(previewBitmap, transformation) {
                    ImageRequest.Builder(context)
                        .data(previewBitmap)
                        .crossfade(true)
                        .transformations(transformation)
                        .build()
                }

                AsyncImage(
                    model = imageRequest,
                    contentDescription = name,
                    contentScale = ContentScale.Crop,
                    modifier = Modifier.fillMaxSize()
                )
            }
            if (isNone) {
                Icon(
                    imageVector = AppIcons.FilterNone,
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
                            imageVector = AppIcons.Tune,
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
