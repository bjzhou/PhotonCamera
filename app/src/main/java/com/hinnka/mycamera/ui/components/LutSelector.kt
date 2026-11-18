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
import androidx.compose.material.icons.filled.Add
import androidx.compose.material.icons.filled.Settings
import androidx.compose.material3.Icon
import androidx.compose.material3.LocalTextStyle
import androidx.compose.material3.Text
import androidx.compose.runtime.*
import com.hinnka.mycamera.ui.theme.AccentColor
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
import kotlinx.coroutines.withContext
import com.hinnka.mycamera.ui.icons.AppIcons

/** Camera browsing is opt-in; editors and external camera integrations keep their horizontal layout. */
enum class LutSelectorPresentation { Horizontal, Compact, Expanded }

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
            imageVector = Icons.Default.Add,
            contentDescription = null,
            tint = Color.White,
            modifier = Modifier.size(12.dp)
        )
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
    onPresetManagementClick: () -> Unit = {},
    onEditClick: (() -> Unit)? = null,
    onManageClick: ((String) -> Unit)? = null,
    categoryOrder: List<String> = emptyList(),
    headerContent: (@Composable () -> Unit)? = null,
    modifier: Modifier = Modifier,
    presentation: LutSelectorPresentation = LutSelectorPresentation.Horizontal,
    onExpandedChange: (Boolean) -> Unit = {},
    presetThumbnailInput: com.hinnka.mycamera.lut.PresetThumbnailInput? = null,
    onEditPreset: ((String) -> Unit)? = null
) {
    val favoriteText = stringResource(R.string.favorite)
    val builtInText = stringResource(R.string.built_in)
    val uncategorizedText = stringResource(R.string.uncategorized)
    val styleText = stringResource(R.string.filter)
    val frameText = stringResource(R.string.frame)
    val presetText = stringResource(R.string.preset_title)

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
        LutCategoryTab.Category(lut.category) in categoryTabs -> LutCategoryTab.Category(lut.category)
        lut.isBuiltIn -> LutCategoryTab.BuiltIn
        else -> LutCategoryTab.Uncategorized
    }

    val activeLutId = currentLutId
    val supportsFrames = onFrameSelected != null
    val supportsPresets = presetModeEnabled
    val expanded = presentation == LutSelectorPresentation.Expanded
    val compact = presentation == LutSelectorPresentation.Compact
    val actualMode = when (selectedMode) {
        LutSelectorMode.Style -> LutSelectorMode.Style
        LutSelectorMode.Frame -> if (supportsFrames && !compact) LutSelectorMode.Frame else LutSelectorMode.Style
        LutSelectorMode.Presets -> if (supportsPresets) LutSelectorMode.Presets else LutSelectorMode.Style
    }

    val selectedLut = remember(availableLuts, activeLutId) { availableLuts.find { it.id == activeLutId } }
    var browsedCategory by remember(expanded, expanded && actualMode == LutSelectorMode.Style) {
        mutableStateOf<LutCategoryTab?>(if (expanded) null else LutCategoryTab.BuiltIn)
    }
    val selectedCategory = browsedCategory?.takeIf { it in categoryTabs }
        ?: selectedLut?.let(::preferredCategoryFor) ?: LutCategoryTab.BuiltIn
    LaunchedEffect(activeLutId, availableLuts, compact) {
        if (!compact && selectedLut != null && !selectedCategory.contains(selectedLut)) {
            browsedCategory = null
        }
    }

    val lutOptions = remember(selectedCategory, availableLuts) {
        when (val category = selectedCategory) {
            LutCategoryTab.Favorite -> availableLuts.filter { it.isFavorite }
            LutCategoryTab.BuiltIn -> availableLuts.filter { it.isBuiltIn }
            LutCategoryTab.Uncategorized -> availableLuts.filter { !it.isBuiltIn && it.category.isEmpty() }
            is LutCategoryTab.Category -> availableLuts.filter { it.category == category.name }
        }
    }

    val lutFooterHeight = lookThumbnailFooterHeight()
    val optionContent = @Composable {
        when (actualMode) {
            LutSelectorMode.Style -> LookOptionList(
                options = lutOptions,
                key = { it.id },
                selectedIndex = lutOptions.indexOfFirst { it.id == activeLutId },
                expanded = expanded,
                itemFooterHeight = lutFooterHeight,
                contentKey = selectedCategory
            ) { lut ->
                var lastManageClickTime by remember { mutableLongStateOf(0L) }
                LutItem(
                    id = lut.id,
                    name = lut.getName(),
                    previewBitmap = thumbnail,
                    isSelected = activeLutId == lut.id,
                    isVip = lut.isVip,
                    onClick = {
                        if (activeLutId != lut.id) {
                            browsedCategory = selectedCategory
                            onLutSelected(lut.id)
                        } else if (presentation == LutSelectorPresentation.Horizontal || lut.id != "none") {
                            onEditClick?.invoke()
                        }
                    },
                    onEditClick = onEditClick.takeIf {
                        presentation != LutSelectorPresentation.Horizontal && activeLutId == lut.id && lut.id != "none"
                    },
                    onManageClick = onManageClick?.let { manage ->
                        {
                            val now = System.currentTimeMillis()
                            if (now - lastManageClickTime > 1000) {
                                lastManageClickTime = now
                                manage(lut.id)
                            }
                        }
                    },
                    modifier = if (expanded) Modifier.fillMaxWidth() else Modifier
                )
            }
            LutSelectorMode.Frame -> FrameSelector(
                availableFrames = availableFrames,
                currentFrameId = currentFrameId,
                onFrameSelected = requireNotNull(onFrameSelected),
                expanded = expanded
            )
            LutSelectorMode.Presets -> PresetsPanel(
                activePresetId = activePresetId,
                activePresetModified = activePresetModified,
                allPresets = allPresets,
                onPresetSelected = onPresetSelected,
                onManagePresets = onPresetManagementClick,
                thumbnail = thumbnail,
                thumbnailInput = presetThumbnailInput,
                expanded = expanded,
                compact = compact,
                onEditPreset = onEditPreset
            )
        }
    }

    val modeContent = @Composable {
        // Editors and external camera integrations retain their horizontal mode tabs.
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
    }
    val browserContent = @Composable {
        if (actualMode == LutSelectorMode.Style) {
            val tabIndex = categoryTabs.indexOf(selectedCategory).coerceAtLeast(0)
            val tabListState = rememberLazyListState(initialFirstVisibleItemIndex = if (expanded) tabIndex else 0)
            if (expanded) {
                LaunchedEffect(selectedCategory, tabIndex, activeLutId) {
                    val layout = tabListState.layoutInfo
                    val fullyVisible = layout.visibleItemsInfo.any {
                        it.key == selectedCategory.stableKey() && it.offset >= layout.viewportStartOffset &&
                            it.offset + it.size <= layout.viewportEndOffset
                    }
                    if (!fullyVisible) tabListState.scrollToItem(tabIndex)
                }
            }
            // 分类使用白色文字保证取景画面上的可读性，选中项以金色区分。
            LazyRow(
                modifier = Modifier.fillMaxWidth(),
                state = tabListState,
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
                        color = if (isSelected) AccentColor else Color.White,
                        fontSize = 11.sp,
                        fontWeight = if (isSelected) FontWeight.SemiBold else FontWeight.Medium,
                        style = LocalTextStyle.current.copy(shadow = ViewfinderTextShadow),
                        modifier = Modifier
                            .clickable(
                                interactionSource = remember { MutableInteractionSource() },
                                indication = null
                            ) {
                                browsedCategory = category
                            }
                            .padding(horizontal = 9.dp, vertical = 3.dp)
                    )
                }
            }
        }
        if (expanded && actualMode == LutSelectorMode.Style && lutOptions.isEmpty()) {
            BoxWithConstraints(Modifier.fillMaxWidth()) {
                Box(
                    modifier = Modifier.fillMaxWidth().height(lookOptionGridHeight(maxWidth, lutFooterHeight)),
                    contentAlignment = Alignment.Center
                ) {
                    Text(
                        text = stringResource(
                            if (selectedCategory == LutCategoryTab.Favorite) R.string.favorite_empty_title
                            else R.string.category_empty_title
                        ),
                        color = Color.White.copy(alpha = 0.6f),
                        fontSize = 13.sp
                    )
                }
            }
        } else {
            optionContent()
        }
    }

    val activePreset = allPresets.firstOrNull { it.id == activePresetId }
    val cameraModeRail = @Composable {
        CameraLookModeRail(
            selectedMode = actualMode,
            supportsPresets = supportsPresets,
            supportsFrames = supportsFrames,
            presetModified = activePresetModified,
            expanded = expanded,
            onModeSelected = onModeSelected
        )
    }

    if (compact) {
        Column(modifier = modifier.fillMaxWidth()) {
            headerContent?.invoke()
            Box(
                modifier = Modifier.fillMaxWidth()
                    .heightIn(min = if (supportsPresets) 84.dp else 64.dp)
                    .clip(RoundedCornerShape(topStart = 16.dp, topEnd = 16.dp))
                    .background(CameraLookPanelSurface),
                contentAlignment = Alignment.Center
            ) {
                Column(
                    modifier = Modifier.fillMaxWidth()
                        .padding(horizontal = CameraLookModeRailWidth + 4.dp, vertical = 8.dp),
                    verticalArrangement = Arrangement.spacedBy(6.dp),
                    horizontalAlignment = Alignment.CenterHorizontally
                ) {
                    if (actualMode == LutSelectorMode.Style) {
                        val compactLuts = remember(availableLuts) {
                            availableLuts.sortedWith(
                                compareBy<LutInfo> { it.id != "none" }.thenByDescending { it.isFavorite }
                            )
                        }
                        CompactLookCarousel(
                            options = compactLuts,
                            key = { it.id },
                            selectedId = activeLutId ?: "none",
                            onSelected = { onLutSelected(it.id) }
                        ) { lut, selected, click, cardModifier ->
                            LutItem(
                                id = lut.id, name = lut.getName(), previewBitmap = thumbnail,
                                isSelected = selected, isVip = lut.isVip, thumbnailOnly = true,
                                onClick = click,
                                onEditClick = onEditClick.takeUnless { lut.id == "none" },
                                onManageClick = onManageClick?.let { manage -> { manage(lut.id) } },
                                modifier = cardModifier
                            )
                        }
                    } else {
                        optionContent()
                    }
                    val caption = when (actualMode) {
                        LutSelectorMode.Style -> availableLuts.firstOrNull { it.id == (activeLutId ?: "none") }?.getName()
                        LutSelectorMode.Presets -> activePreset?.let {
                            val name = presetDisplayName(it)
                            if (activePresetModified) "$name*" else name
                        }
                        LutSelectorMode.Frame -> null
                    }
                    if (caption != null) {
                        Text(
                            caption,
                            modifier = Modifier.fillMaxWidth()
                                .basicMarquee(iterations = Int.MAX_VALUE),
                            color = Color.White, fontSize = 12.sp, lineHeight = 15.sp,
                            fontWeight = FontWeight.Medium, maxLines = 1, textAlign = TextAlign.Center
                        )
                    }
                }
                Row(
                    modifier = Modifier.matchParentSize(),
                    horizontalArrangement = Arrangement.SpaceBetween,
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    cameraModeRail()
                    Column(
                        modifier = Modifier.width(CameraLookModeRailWidth)
                            .clip(RoundedCornerShape(12.dp))
                            .clickable { onExpandedChange(true) }
                            .padding(vertical = 8.dp),
                        verticalArrangement = Arrangement.spacedBy(2.dp),
                        horizontalAlignment = Alignment.CenterHorizontally
                    ) {
                        Icon(AppIcons.ExpandLess, stringResource(R.string.camera_looks_more), tint = Color.White)
                        Text(stringResource(R.string.camera_looks_more), color = Color.White, fontSize = 10.sp)
                    }
                }
            }
        }
        return
    }

    if (expanded) {
        Column(modifier = modifier.fillMaxWidth(), verticalArrangement = Arrangement.spacedBy(4.dp)) {
            headerContent?.invoke()
            ExpandedCameraLookLayout(
                modifier = Modifier.fillMaxWidth()
                    .clip(RoundedCornerShape(topStart = 16.dp, topEnd = 16.dp))
                    .background(CameraLookPanelSurface),
                modeRail = cameraModeRail
            ) {
                Column(
                    modifier = Modifier.fillMaxWidth()
                        .padding(top = 4.dp),
                    verticalArrangement = Arrangement.spacedBy(4.dp)
                ) {
                    browserContent()

                }
            }
        }
        return
    }

    CompositionLocalProvider(LocalTextStyle provides LocalTextStyle.current.copy(shadow = ViewfinderTextShadow)) {
        Column(
            modifier = modifier.fillMaxWidth(),
            verticalArrangement = Arrangement.spacedBy(8.dp)
        ) {
            headerContent?.invoke()
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
                        val currentPreset = activePreset
                        val currentName = currentPreset?.let { presetDisplayName(it) }.orEmpty()
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
                            LutPanelPresetActionButton(
                                text = stringResource(if (activePresetModified) R.string.preset_save_as else R.string.preset_new),
                                onClick = onCreatePresetClick
                            )

                            LutPanelIconButton(
                                imageVector = Icons.Default.Settings,
                                contentDescription = stringResource(R.string.settings_preset_management),
                                onClick = onPresetManagementClick
                            )
                        }
                    }
                }
            }

            modeContent()
            browserContent()
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
            .background(if (isSelected) AccentColor.copy(alpha = 0.12f) else LutPanelSurface)
            .border(
                width = 1.dp,
                color = if (isSelected) AccentColor.copy(alpha = 0.65f) else Color.White.copy(alpha = 0.12f),
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
            color = if (isSelected) AccentColor else Color.White.copy(alpha = 0.88f),
            fontSize = 11.sp,
            fontWeight = if (isSelected) FontWeight.SemiBold else FontWeight.Medium,
            style = LocalTextStyle.current.copy(shadow = ViewfinderTextShadow)
        )
        if (badgeText != null) {
            Text(
                text = badgeText,
                color = AccentColor,
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
internal fun LutItem(
    id: String,
    name: String,
    previewBitmap: Bitmap?,
    isSelected: Boolean,
    isVip: Boolean,
    onClick: () -> Unit,
    onManageClick: (() -> Unit)? = null,
    onEditClick: (() -> Unit)? = null,
    recipeTarget: BaselineColorCorrectionTarget? = null,
    thumbnailOnly: Boolean = false,
    modifier: Modifier = Modifier
) {
    val context = LocalContext.current
    val isNone = id == "none"
    LookThumbnailItem(
        name = name,
        selected = isSelected,
        onClick = onClick,
        onLongClick = onManageClick,
        onEditClick = onEditClick,
        isVip = isVip,
        thumbnailOnly = thumbnailOnly,
        modifier = modifier
    ) {
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
        } else if (isNone) {
            Icon(AppIcons.Block, null, tint = Color.White.copy(alpha = 0.7f), modifier = Modifier.size(24.dp))
        } else {
            Box(Modifier.fillMaxSize().background(Brush.linearGradient(listOf(
                Color(0xFF4A148C), Color(0xFF00897B), Color(0xFFFF6F00)
            ))))
        }
    }
}
