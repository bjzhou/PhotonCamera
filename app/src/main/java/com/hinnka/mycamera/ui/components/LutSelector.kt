package com.hinnka.mycamera.ui.components

import android.graphics.Bitmap
import androidx.compose.animation.animateColorAsState
import androidx.compose.foundation.*
import androidx.compose.foundation.interaction.MutableInteractionSource
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.lazy.rememberLazyListState
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Add
import androidx.compose.material.icons.filled.Settings
import androidx.compose.material3.Icon
import androidx.compose.material3.LocalTextStyle
import androidx.compose.material3.Text
import androidx.compose.runtime.*
import com.hinnka.mycamera.ui.camera.ViewfinderTextShadow
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.vector.ImageVector
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
import com.hinnka.mycamera.frame.FrameInfo
import com.hinnka.mycamera.lut.BaselineColorCorrectionTarget
import com.hinnka.mycamera.lut.LutInfo
import com.hinnka.mycamera.model.CameraPreset
import com.hinnka.mycamera.model.LutSelectorMode
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import com.hinnka.mycamera.ui.icons.AppIcons

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
private val LutPanelAccent = Color(0xFFFFD700)
private val LutPanelSurface = Color.Black.copy(alpha = 0.15f)
internal val LutPanelOptionSize = 64.dp
internal val LutPanelOptionShape = RoundedCornerShape(8.dp)
internal val LutPanelOptionSurface = Color.Black.copy(alpha = 0.2f)
internal val LutPanelOptionSelectedSurface = Color.White.copy(alpha = 0.3f)
internal val LutPanelOptionBorder = Color.White.copy(alpha = 0.2f)
internal val LutPanelOptionSelectedBorder = Color.White

/**
 * LUT 面板右上角的编辑入口。相机页与跨应用 LUT 面板共享同一套样式。
 */
@Composable
fun LutEditButton(
    onClick: () -> Unit,
    modifier: Modifier = Modifier
) {
    val shape = RoundedCornerShape(12.dp)
    Row(
        modifier = modifier
            .clip(shape)
            .background(LutPanelSurface)
            .border(1.dp, Color.White.copy(alpha = 0.18f), shape)
            .clickable(onClick = onClick)
            .padding(horizontal = 9.dp, vertical = 5.dp),
        verticalAlignment = Alignment.CenterVertically,
        horizontalArrangement = Arrangement.spacedBy(3.dp)
    ) {
        Icon(
            imageVector = AppIcons.Tune,
            contentDescription = stringResource(R.string.edit),
            tint = Color.White,
            modifier = Modifier.size(12.dp)
        )
        Text(
            text = stringResource(R.string.edit),
            color = Color.White,
            fontSize = 11.sp,
            fontWeight = FontWeight.Medium,
            style = LocalTextStyle.current.copy(shadow = ViewfinderTextShadow)
        )
    }
}

@Composable
private fun LutPanelIconButton(
    imageVector: ImageVector,
    contentDescription: String?,
    onClick: () -> Unit,
    modifier: Modifier = Modifier
) {
    Box(
        modifier = modifier
            .size(26.dp)
            .clip(CircleShape)
            .background(LutPanelSurface)
            .border(1.dp, Color.White.copy(alpha = 0.18f), CircleShape)
            .clickable(onClick = onClick),
        contentAlignment = Alignment.Center
    ) {
        Icon(
            imageVector = imageVector,
            contentDescription = contentDescription,
            tint = Color.White.copy(alpha = 0.85f),
            modifier = Modifier.size(13.dp)
        )
    }
}

@Composable
private fun LutPanelPresetActionButton(
    text: String,
    onClick: () -> Unit,
    showAddIcon: Boolean = true,
    modifier: Modifier = Modifier
) {
    val shape = RoundedCornerShape(12.dp)
    Row(
        modifier = modifier
            .clip(shape)
            .background(LutPanelSurface)
            .border(1.dp, Color.White.copy(alpha = 0.18f), shape)
            .clickable(onClick = onClick)
            .padding(horizontal = 9.dp, vertical = 5.dp),
        verticalAlignment = Alignment.CenterVertically,
        horizontalArrangement = Arrangement.spacedBy(3.dp)
    ) {
        if (showAddIcon) {
            Icon(
                imageVector = Icons.Default.Add,
                contentDescription = null,
                tint = Color.White,
                modifier = Modifier.size(12.dp)
            )
        }
        Text(
            text = text,
            color = Color.White,
            fontSize = 11.sp,
            fontWeight = FontWeight.Medium,
            style = LocalTextStyle.current.copy(shadow = ViewfinderTextShadow)
        )
    }
}

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
    presetModeEnabled: Boolean = allPresets.isNotEmpty(),
    activePresetId: String? = null,
    activePresetModified: Boolean = false,
    selectedMode: LutSelectorMode = LutSelectorMode.Style,
    onModeSelected: (LutSelectorMode) -> Unit = {},
    availableFrames: List<FrameInfo> = emptyList(),
    currentFrameId: String? = null,
    onFrameSelected: ((String?) -> Unit)? = null,
    onFrameManagementClick: (() -> Unit)? = null,
    onPresetSelected: (CameraPreset?) -> Unit = {},
    onCreatePresetClick: () -> Unit = {},
    onResetPresetClick: () -> Unit = {},
    onSavePresetClick: () -> Unit = {},
    onPresetManagementClick: () -> Unit = {},
    onEditClick: (() -> Unit)? = null,
    onManageClick: ((String) -> Unit)? = null,
    categoryOrder: List<String> = emptyList(),
    modifier: Modifier = Modifier
) {
    val scrollState = rememberLazyListState()
    val coroutineScope = rememberCoroutineScope()
    val favoriteText = stringResource(R.string.favorite)
    val builtInText = stringResource(R.string.built_in)
    val uncategorizedText = stringResource(R.string.uncategorized)
    val styleText = stringResource(R.string.filter)
    val frameText = stringResource(R.string.frame)
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
    val supportsFrames = onFrameSelected != null
    val supportsPresets = presetModeEnabled
    val actualMode = when (selectedMode) {
        LutSelectorMode.Style -> LutSelectorMode.Style
        LutSelectorMode.Frame -> if (supportsFrames) LutSelectorMode.Frame else LutSelectorMode.Style
        LutSelectorMode.Presets -> if (supportsPresets) LutSelectorMode.Presets else LutSelectorMode.Style
    }

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

    CompositionLocalProvider(LocalTextStyle provides LocalTextStyle.current.copy(shadow = ViewfinderTextShadow)) {
        Column(
            modifier = modifier.fillMaxWidth(),
            verticalArrangement = Arrangement.spacedBy(8.dp)
        ) {
            // 顶栏第 1 行：当前项名称（居左）+ 操作按钮（编辑 / 新建）与设置图标（居右）
            Row(
                modifier = Modifier
                    .fillMaxWidth()
                    .heightIn(min = 28.dp)
                    .padding(horizontal = 10.dp),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically
            ) {
                when (actualMode) {
                    LutSelectorMode.Style -> {
                        val currentLut = availableLuts.find { it.id == activeLutId }
                        val currentName = if (activeLutId == null || activeLutId == "none") {
                            stringResource(R.string.none)
                        } else {
                            currentLut?.getName() ?: ""
                        }
                        Text(
                            text = currentName,
                            color = Color.White,
                            fontSize = 13.sp,
                            fontWeight = FontWeight.Bold,
                            maxLines = 1,
                            overflow = TextOverflow.Ellipsis,
                            modifier = Modifier.weight(1f).padding(end = 8.dp).basicMarquee(),
                            style = LocalTextStyle.current.copy(shadow = ViewfinderTextShadow)
                        )

                        Row(
                            verticalAlignment = Alignment.CenterVertically,
                            horizontalArrangement = Arrangement.spacedBy(6.dp)
                        ) {
                            if (onEditClick != null && activeLutId != null) {
                                LutEditButton(onClick = onEditClick)
                            }

                            if (onManageClick != null) {
                                var lastClickTime by remember { mutableLongStateOf(0L) }
                                LutPanelIconButton(
                                    imageVector = Icons.Default.Settings,
                                    contentDescription = stringResource(R.string.settings_filter_management),
                                    onClick = {
                                        val currentTime = System.currentTimeMillis()
                                        if (currentTime - lastClickTime > 1000) {
                                            lastClickTime = currentTime
                                            onManageClick(activeLutId ?: "")
                                        }
                                    }
                                )
                            }
                        }
                    }
                    LutSelectorMode.Frame -> {
                        val currentFrame = availableFrames.find { it.id == currentFrameId }
                        val currentName = if (currentFrameId == null) stringResource(R.string.none) else (currentFrame?.name ?: "")
                        Text(
                            text = currentName,
                            color = Color.White,
                            fontSize = 13.sp,
                            fontWeight = FontWeight.Bold,
                            maxLines = 1,
                            overflow = TextOverflow.Ellipsis,
                            modifier = Modifier.weight(1f).padding(end = 8.dp).basicMarquee(),
                            style = LocalTextStyle.current.copy(shadow = ViewfinderTextShadow)
                        )

                        if (onFrameManagementClick != null) {
                            LutPanelIconButton(
                                imageVector = Icons.Default.Settings,
                                contentDescription = stringResource(R.string.settings_frame_management),
                                onClick = onFrameManagementClick
                            )
                        }
                    }
                    LutSelectorMode.Presets -> {
                        val currentPreset = allPresets.find { it.id == activePresetId }
                        val currentName = currentPreset?.let { preset ->
                            when (preset.id) {
                                "builtin_default" -> stringResource(R.string.default_text)
                                "builtin_hasselblad_natural" -> stringResource(R.string.preset_builtin_hasselblad_natural)
                                "builtin_portrait" -> stringResource(R.string.preset_builtin_portrait)
                                "builtin_classic_film" -> stringResource(R.string.preset_builtin_classic_film)
                                "builtin_monochrome" -> stringResource(R.string.preset_builtin_monochrome)
                                "builtin_cinematic" -> stringResource(R.string.preset_builtin_cinematic)
                                "builtin_leica_m9_moment" -> stringResource(R.string.preset_builtin_leica_m9_moment)
                                else -> preset.name
                            }
                        } ?: ""
                        Text(
                            text = if (currentPreset != null && activePresetModified) {
                                "$currentName*"
                            } else {
                                currentName
                            },
                            color = Color.White,
                            fontSize = 13.sp,
                            fontWeight = FontWeight.Bold,
                            maxLines = 1,
                            overflow = TextOverflow.Ellipsis,
                            modifier = Modifier.weight(1f).padding(end = 8.dp).basicMarquee(),
                            style = LocalTextStyle.current.copy(shadow = ViewfinderTextShadow)
                        )

                        Row(
                            verticalAlignment = Alignment.CenterVertically,
                            horizontalArrangement = Arrangement.spacedBy(6.dp)
                        ) {
                            if (currentPreset != null && activePresetModified) {
                                LutPanelPresetActionButton(
                                    text = stringResource(R.string.preset_reset),
                                    onClick = onResetPresetClick,
                                    showAddIcon = false
                                )
                                LutPanelPresetActionButton(
                                    text = stringResource(R.string.preset_update),
                                    onClick = onSavePresetClick,
                                    showAddIcon = false
                                )
                                LutPanelPresetActionButton(
                                    text = stringResource(R.string.preset_save_as),
                                    onClick = onCreatePresetClick
                                )
                            } else {
                                LutPanelPresetActionButton(
                                    text = stringResource(R.string.preset_new),
                                    onClick = onCreatePresetClick
                                )
                            }

                            LutPanelIconButton(
                                imageVector = Icons.Default.Settings,
                                contentDescription = stringResource(R.string.settings_preset_management),
                                onClick = onPresetManagementClick
                            )
                        }
                    }
                }
            }

            // 顶栏第 2 行：模式切换胶囊 [ 滤镜 | 边框 | 预设 ]
            if (supportsFrames || supportsPresets) {
                Row(
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(horizontal = 10.dp),
                    horizontalArrangement = Arrangement.spacedBy(6.dp),
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    LutSelectorModeTab(
                        text = styleText,
                        isSelected = actualMode == LutSelectorMode.Style,
                        onClick = { onModeSelected(LutSelectorMode.Style) }
                    )
                    if (supportsFrames) {
                        LutSelectorModeTab(
                            text = frameText,
                            isSelected = actualMode == LutSelectorMode.Frame,
                            onClick = { onModeSelected(LutSelectorMode.Frame) }
                        )
                    }
                    if (supportsPresets) {
                        LutSelectorModeTab(
                            text = presetText,
                            isSelected = actualMode == LutSelectorMode.Presets,
                            onClick = { onModeSelected(LutSelectorMode.Presets) },
                            badgeText = if (activePresetModified) "*" else null
                        )
                    }
                }
            }

            when (actualMode) {
                LutSelectorMode.Style -> {
                    Column(
                        modifier = Modifier.fillMaxWidth(),
                        verticalArrangement = Arrangement.spacedBy(10.dp)
                    ) {
                        // 分类使用白色文字保证取景画面上的可读性，选中项以金色区分。
                        LazyRow(
                            modifier = Modifier.fillMaxWidth(),
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
                                    color = if (isSelected) LutPanelAccent else Color.White,
                                    fontSize = 11.sp,
                                    fontWeight = if (isSelected) FontWeight.SemiBold else FontWeight.Medium,
                                    style = LocalTextStyle.current.copy(shadow = ViewfinderTextShadow),
                                    modifier = Modifier
                                        .clickable(
                                            interactionSource = remember { MutableInteractionSource() },
                                            indication = null
                                        ) {
                                            selectedCategory = category
                                        }
                                        .padding(horizontal = 9.dp, vertical = 3.dp)
                                )
                            }
                        }

                        LazyRow(
                            modifier = Modifier.fillMaxWidth(),
                            horizontalArrangement = Arrangement.spacedBy(8.dp),
                            contentPadding = PaddingValues(horizontal = 8.dp),
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
                                            onEditClick?.invoke()
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
                    }
                }
                LutSelectorMode.Frame -> {
                    FrameSelector(
                        availableFrames = availableFrames,
                        currentFrameId = currentFrameId,
                        onFrameSelected = requireNotNull(onFrameSelected),
                        modifier = Modifier
                            .fillMaxWidth()
                            .padding(vertical = 2.dp)
                    )
                }
                LutSelectorMode.Presets -> {
                    // 预设列表
                    PresetsPanel(
                        activePresetId = activePresetId,
                        activePresetModified = activePresetModified,
                        allPresets = allPresets,
                        onPresetSelected = onPresetSelected,
                        onManagePresets = onPresetManagementClick,
                        modifier = Modifier.fillMaxWidth()
                    )
                }
            }
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
    val shape = RoundedCornerShape(12.dp)
    Row(
        modifier = Modifier
            .clip(shape)
            .background(if (isSelected) LutPanelAccent.copy(alpha = 0.12f) else LutPanelSurface)
            .border(
                width = 1.dp,
                color = if (isSelected) LutPanelAccent.copy(alpha = 0.65f) else Color.White.copy(alpha = 0.12f),
                shape = shape
            )
            .clickable(
                interactionSource = remember { MutableInteractionSource() },
                indication = null,
                onClick = onClick
            )
            .padding(horizontal = 10.dp, vertical = 5.dp),
        verticalAlignment = Alignment.CenterVertically,
        horizontalArrangement = Arrangement.spacedBy(4.dp)
    ) {
        Text(
            text = text,
            color = if (isSelected) LutPanelAccent else Color.White.copy(alpha = 0.88f),
            fontSize = 11.sp,
            fontWeight = if (isSelected) FontWeight.SemiBold else FontWeight.Medium,
            style = LocalTextStyle.current.copy(shadow = ViewfinderTextShadow)
        )
        if (badgeText != null) {
            Text(
                text = badgeText,
                color = LutPanelAccent,
                fontSize = 12.sp,
                lineHeight = 12.sp,
                fontWeight = FontWeight.Bold,
                modifier = Modifier.offset(y = 1.dp)
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
    isCustom: Boolean = false,
    modifier: Modifier = Modifier
) {
    val context = LocalContext.current
    val itemShape = RoundedCornerShape(12.dp)
    val borderColor by animateColorAsState(
        targetValue = if (isSelected) LutPanelAccent else Color.White.copy(alpha = 0.15f),
        label = "lutItemBorder"
    )

    Column(
        modifier = modifier
            .width(56.dp)
            .combinedClickable(
                onClick = onClick,
                onLongClick = onManageClick
            ),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.spacedBy(4.dp)
    ) {
        // 预览区域
        Box(
            modifier = Modifier
                .fillMaxWidth()
                .aspectRatio(1f)
                .clip(itemShape)
                .border(
                    width = if (isSelected) 1.2.dp else 1.dp,
                    color = borderColor,
                    shape = itemShape
                )
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

        Text(
            text = name,
            color = if (isSelected) LutPanelAccent else Color.White,
            fontSize = 9.sp,
            lineHeight = 11.sp,
            fontWeight = if (isSelected) FontWeight.SemiBold else FontWeight.Normal,
            maxLines = 1,
            overflow = TextOverflow.Ellipsis,
            textAlign = TextAlign.Center,
            style = LocalTextStyle.current.copy(shadow = ViewfinderTextShadow),
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 2.dp, vertical = 1.dp)
                .basicMarquee()
        )
    }
}
