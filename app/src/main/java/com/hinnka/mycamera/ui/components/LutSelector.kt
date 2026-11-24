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
import androidx.compose.material.icons.filled.Edit
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
import androidx.compose.ui.geometry.Offset
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
import coil.compose.AsyncImagePainter
import coil.request.ImageRequest
import coil.size.Size
import coil.transform.Transformation
import com.hinnka.mycamera.R
import com.hinnka.mycamera.data.ContentRepository
import com.hinnka.mycamera.frame.FrameInfo
import com.hinnka.mycamera.lut.BaselineColorCorrectionTarget
import com.hinnka.mycamera.lut.DIGITAL_LUT_CATEGORY
import com.hinnka.mycamera.lut.FILM_LUT_CATEGORY
import com.hinnka.mycamera.lut.LutInfo
import com.hinnka.mycamera.lut.builtInLutCategories
import com.hinnka.mycamera.lut.inLutCategory
import com.hinnka.mycamera.lut.orderedLutCategoryTitles
import com.hinnka.mycamera.model.CameraPreset
import com.hinnka.mycamera.model.LutSelectorMode
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import com.hinnka.mycamera.ui.icons.AppIcons

/** Camera browsing uses Expanded; editors and external camera integrations keep Horizontal. */
enum class LutSelectorPresentation { Horizontal, Expanded }

@Composable
internal fun lutCategoryTitle(category: String): String = when (category) {
    DIGITAL_LUT_CATEGORY -> stringResource(R.string.lut_category_digital)
    FILM_LUT_CATEGORY -> stringResource(R.string.lut_category_film)
    else -> category
}

private val LutPanelSurface = Color.Black.copy(alpha = 0.15f)
private val CameraLookPanelCornerRadius = 16.dp
private val CameraLookPanelShape = RoundedCornerShape(
    topStart = CameraLookPanelCornerRadius,
    topEnd = CameraLookPanelCornerRadius
)
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
    presetThumbnailInput: com.hinnka.mycamera.lut.PresetThumbnailInput? = null,
    onEditPreset: ((String) -> Unit)? = null,
    presetLookActive: Boolean = false,
    showHorizontalHeader: Boolean = true,
    cameraBackdrop: LiquidGlassBackdrop? = null,
    showExpandedOptions: Boolean = true,
    cameraBackdropBottomLeft: Offset? = null,
    scrollCaption: Boolean = true,
) {
    val favoriteText = stringResource(R.string.favorite)
    val uncategorizedText = stringResource(R.string.uncategorized)
    val styleText = stringResource(R.string.filter)
    val frameText = stringResource(R.string.frame)
    val presetText = stringResource(R.string.preset_title)

    val categoryTabs = remember(availableLuts, categoryOrder, favoriteText, uncategorizedText) {
        orderedLutCategoryTitles(availableLuts, categoryOrder, uncategorizedText, favoriteText)
    }

    val activeLutId = currentLutId
    val editActiveLut = onEditClick.takeIf {
        !presetLookActive && activeLutId != null && activeLutId != "none"
    }
    val supportsFrames = onFrameSelected != null
    val supportsPresets = presetModeEnabled
    val expanded = presentation == LutSelectorPresentation.Expanded
    val actualMode = when (selectedMode) {
        LutSelectorMode.Style -> LutSelectorMode.Style
        LutSelectorMode.Frame -> if (supportsFrames) LutSelectorMode.Frame else LutSelectorMode.Style
        LutSelectorMode.Presets -> if (supportsPresets) LutSelectorMode.Presets else LutSelectorMode.Style
    }

    var lastLutManageClickTime by remember { mutableLongStateOf(0L) }
    val manageLut: ((String) -> Unit)? = onManageClick?.let { manage ->
        { lutId ->
            val now = System.currentTimeMillis()
            if (now - lastLutManageClickTime > 1000) {
                lastLutManageClickTime = now
                manage(lutId)
            }
        }
    }

    val selectedLut = remember(availableLuts, activeLutId) { availableLuts.find { it.id == activeLutId } }
    var browsedCategory by remember(expanded, expanded && actualMode == LutSelectorMode.Style) {
        mutableStateOf<String?>(null)
    }
    val selectedCategory = browsedCategory?.takeIf { it in categoryTabs }
        ?: selectedLut?.let { if (it.isFavorite) favoriteText else it.category.ifEmpty { uncategorizedText } }
            ?.takeIf { it in categoryTabs }
        ?: builtInLutCategories.firstOrNull { it in categoryTabs }
        ?: categoryTabs.first()
    val lutOptions = remember(selectedCategory, availableLuts, favoriteText, uncategorizedText) {
        availableLuts.inLutCategory(selectedCategory, uncategorizedText, favoriteText)
    }
    LaunchedEffect(activeLutId, availableLuts) {
        if (selectedLut != null && selectedLut !in lutOptions) {
            browsedCategory = null
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
                LutItem(
                    id = lut.id,
                    name = lut.getName(),
                    previewBitmap = thumbnail,
                    isSelected = activeLutId == lut.id,
                    isVip = lut.isVip,
                    onClick = {
                        if (activeLutId != lut.id || presetLookActive) {
                            browsedCategory = selectedCategory
                            onLutSelected(lut.id)
                        } else {
                            editActiveLut?.invoke()
                        }
                    },
                    onEditClick = editActiveLut.takeIf {
                        expanded && activeLutId == lut.id
                    },
                    onManageClick = manageLut?.let { manage -> { manage(lut.id) } },
                    modifier = if (expanded) Modifier.fillMaxWidth() else Modifier
                )
            }
            LutSelectorMode.Frame -> FrameSelector(
                availableFrames = availableFrames,
                currentFrameId = currentFrameId,
                onFrameSelected = requireNotNull(onFrameSelected),
                expanded = expanded,
                onManageFrames = onFrameManagementClick
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
    val styleCategoryRow: @Composable (Modifier, PaddingValues) -> Unit = { rowModifier, contentPadding ->
        val tabIndex = categoryTabs.indexOf(selectedCategory).coerceAtLeast(0)
        val tabListState = rememberLazyListState(initialFirstVisibleItemIndex = if (expanded) tabIndex else 0)
        if (expanded) {
            LaunchedEffect(selectedCategory, tabIndex, activeLutId) {
                val layout = tabListState.layoutInfo
                val fullyVisible = layout.visibleItemsInfo.any {
                    it.key == selectedCategory && it.offset >= layout.viewportStartOffset &&
                        it.offset + it.size <= layout.viewportEndOffset
                }
                if (!fullyVisible) tabListState.scrollToItem(tabIndex)
            }
        }
        // 分类使用白色文字保证取景画面上的可读性，选中项以金色与底部短线区分。
        LazyRow(
            modifier = rowModifier,
            state = tabListState,
            horizontalArrangement = Arrangement.spacedBy(if (expanded) 4.dp else 8.dp),
            contentPadding = contentPadding
        ) {
            items(categoryTabs, key = { it }) { category ->
                val isSelected = selectedCategory == category
                Column(
                    modifier = Modifier
                        .clickable(
                            interactionSource = remember { MutableInteractionSource() },
                            indication = null
                        ) {
                            browsedCategory = category
                        }
                        .padding(horizontal = 8.dp, vertical = 3.dp),
                    horizontalAlignment = Alignment.CenterHorizontally,
                    verticalArrangement = Arrangement.spacedBy(2.dp)
                ) {
                    Text(
                        text = lutCategoryTitle(category),
                        color = if (isSelected) AccentColor else Color.White.copy(alpha = if (expanded) 0.78f else 1f),
                        fontSize = 11.sp,
                        fontWeight = if (isSelected) FontWeight.SemiBold else FontWeight.Medium,
                        maxLines = 1,
                        softWrap = false,
                        style = LocalTextStyle.current.copy(shadow = ViewfinderTextShadow)
                    )
                    if (expanded) {
                        Box(
                            modifier = Modifier
                                .width(12.dp)
                                .height(2.dp)
                                .clip(CircleShape)
                                .background(if (isSelected) AccentColor else Color.Transparent)
                        )
                    }
                }
            }
        }
    }

    val optionsOrEmptyContent = @Composable {
        val emptyStyleList = actualMode == LutSelectorMode.Style && lutOptions.isEmpty()
        if (expanded && (!showExpandedOptions || emptyStyleList)) {
            BoxWithConstraints(Modifier.fillMaxWidth()) {
                Box(
                    modifier = Modifier.fillMaxWidth().height(lookOptionGridHeight(maxWidth, lutFooterHeight)),
                    contentAlignment = Alignment.Center
                ) {
                    if (showExpandedOptions) {
                        Text(
                            text = stringResource(
                                if (selectedCategory == favoriteText) R.string.favorite_empty_title
                                else R.string.category_empty_title
                            ),
                            color = Color.White.copy(alpha = 0.6f),
                            fontSize = 13.sp
                        )
                    }
                }
            }
        } else {
            optionContent()
        }
    }

    val browserContent = @Composable {
        if (actualMode == LutSelectorMode.Style) {
            styleCategoryRow(Modifier.fillMaxWidth(), PaddingValues(horizontal = 8.dp))
        }
        optionsOrEmptyContent()
    }

    val activePreset = allPresets.firstOrNull { it.id == activePresetId }
    val currentFrame = availableFrames.find { it.id == currentFrameId }
    val noneText = stringResource(R.string.none)
    val editText = stringResource(R.string.edit)
    val filterManageText = stringResource(R.string.settings_filter_management)
    val presetManageText = stringResource(R.string.settings_preset_management)
    val frameManageText = stringResource(R.string.settings_frame_management)
    val presetCreateText = stringResource(
        if (activePresetModified) R.string.preset_save_as else R.string.preset_new
    )
    val currentPresetCaption = activePreset?.let {
        val name = presetDisplayName(it)
        if (activePresetModified) "$name*" else name
    }.orEmpty()
    val currentFrameCaption = if (currentFrameId == null) noneText else (currentFrame?.name ?: noneText)
    val headerActions: List<CameraLookHeaderIconAction> = when (actualMode) {
        LutSelectorMode.Style -> buildList {
            editActiveLut?.let { edit ->
                add(
                    CameraLookHeaderIconAction(
                        icon = AppIcons.Tune,
                        contentDescription = editText,
                        emphasized = true,
                        onClick = edit
                    )
                )
            }
            manageLut?.let { manage ->
                add(
                    CameraLookHeaderIconAction(
                        icon = Icons.Default.Settings,
                        contentDescription = filterManageText,
                        onClick = { manage(activeLutId ?: "") }
                    )
                )
            }
        }
        LutSelectorMode.Presets -> buildList {
            add(
                CameraLookHeaderIconAction(
                    icon = Icons.Default.Add,
                    contentDescription = presetCreateText,
                    emphasized = activePresetModified,
                    onClick = onCreatePresetClick
                )
            )
            val presetId = activePreset?.id
            if (presetId != null && onEditPreset != null) {
                add(
                    CameraLookHeaderIconAction(
                        icon = Icons.Default.Edit,
                        contentDescription = editText,
                        emphasized = !activePresetModified,
                        onClick = { onEditPreset(presetId) }
                    )
                )
            }
            add(
                CameraLookHeaderIconAction(
                    icon = Icons.Default.Settings,
                    contentDescription = presetManageText,
                    onClick = onPresetManagementClick
                )
            )
        }
        LutSelectorMode.Frame -> buildList {
            onFrameManagementClick?.let { manage ->
                add(
                    CameraLookHeaderIconAction(
                        icon = Icons.Default.Settings,
                        contentDescription = frameManageText,
                        onClick = manage
                    )
                )
            }
        }
    }
    val cameraPanelBackground = if (cameraBackdrop != null && expanded) {
        Modifier.liquidGlassBackground(
            backdrop = cameraBackdrop,
            cornerRadius = CameraLookPanelCornerRadius,
            openBottomEdge = true,
            style = CameraPanelGlassStyle,
            sampleBottomLeftInRoot = cameraBackdropBottomLeft
        )
    } else {
        Modifier.background(CameraLookPanelSurface)
    }

    if (expanded) {
        Column(modifier = modifier.fillMaxWidth(), verticalArrangement = Arrangement.spacedBy(4.dp)) {
            headerContent?.invoke()
            Column(
                modifier = Modifier
                    .fillMaxWidth()
                    .clip(CameraLookPanelShape)
                    .then(cameraPanelBackground)
                    .padding(bottom = 4.dp),
                verticalArrangement = Arrangement.spacedBy(4.dp)
            ) {
                CameraLookHeaderBar(
                    selectedMode = actualMode,
                    supportsPresets = supportsPresets,
                    supportsFrames = supportsFrames,
                    presetModified = activePresetModified,
                    onModeSelected = onModeSelected,
                    actions = headerActions
                )
                when (actualMode) {
                    LutSelectorMode.Style -> CameraLookSubBar(
                        leading = {
                            styleCategoryRow(Modifier.fillMaxWidth(), PaddingValues(horizontal = 0.dp))
                        }
                    )
                    LutSelectorMode.Presets -> CameraLookSubBar(
                        leading = {
                            CameraLookSubBarTitle(title = currentPresetCaption, scrollTitle = scrollCaption)
                        }
                    )
                    LutSelectorMode.Frame -> CameraLookSubBar(
                        leading = {
                            CameraLookSubBarTitle(title = currentFrameCaption, scrollTitle = scrollCaption)
                        }
                    )
                }
                optionsOrEmptyContent()
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
            if (showHorizontalHeader) {
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
                                if (editActiveLut != null) {
                                    LutEditButton(onClick = editActiveLut)
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
    modifier: Modifier = Modifier
) {
    val context = LocalContext.current
    val isNone = id == "none"
    val previewReady = remember(id, previewBitmap) { mutableStateOf(false) }
    LookThumbnailItem(
        name = name,
        selected = isSelected,
        onClick = onClick,
        onLongClick = onManageClick,
        onEditClick = onEditClick,
        editIcon = AppIcons.Tune,
        isVip = isVip,
        thumbnailVisible = if (isNone) null else previewReady,
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
                    .crossfade(false)
                    .transformations(transformation)
                    .build()
            }

            AsyncImage(
                model = imageRequest,
                contentDescription = name,
                contentScale = ContentScale.Crop,
                onState = { previewReady.value = it is AsyncImagePainter.State.Success },
                modifier = Modifier.fillMaxSize()
            )
        } else if (isNone) {
            Icon(AppIcons.Block, null, tint = Color.White.copy(alpha = 0.7f), modifier = Modifier.size(24.dp))
        }
    }
}
