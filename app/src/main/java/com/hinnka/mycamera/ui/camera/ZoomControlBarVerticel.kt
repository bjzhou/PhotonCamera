package com.hinnka.mycamera.ui.camera

import androidx.compose.animation.*
import androidx.compose.foundation.Canvas
import androidx.compose.foundation.background
import androidx.compose.foundation.gestures.detectTapGestures
import androidx.compose.foundation.gestures.detectVerticalDragGestures
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.Text
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.geometry.Size
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextDecoration
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.rememberTextMeasurer
import androidx.compose.ui.text.drawText
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.Constraints
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.hinnka.mycamera.R
import com.hinnka.mycamera.camera.CameraInfo
import com.hinnka.mycamera.camera.LensType
import com.hinnka.mycamera.viewmodel.CameraViewModel
import kotlinx.coroutines.delay
import kotlin.math.abs
import kotlin.math.exp
import kotlin.math.ln
import kotlin.math.roundToInt
import com.hinnka.mycamera.ui.icons.AppIcons


@Composable
fun ZoomControlBarVerticel(
    viewModel: CameraViewModel,
    zoomRatio: Float,
    availableCameras: List<CameraInfo>,
    currentCameraId: String,
    onZoomChange: (Float) -> Unit,
    onLensSwitch: (String) -> Unit,
    onFilterClick: () -> Unit,
    modifier: Modifier = Modifier
) {
    val displayMode by viewModel.zoomDisplayMode.collectAsState()

    val currentCameraIdState by rememberUpdatedState(currentCameraId)

    val currentCamera = availableCameras.find { it.cameraId == currentCameraId }

    // 获取当前相机信息
    val mainCamera =
        availableCameras.find { it.lensType == if (currentCamera?.lensType == LensType.FRONT) LensType.FRONT else LensType.BACK_MAIN }

    // 根据可用相机计算变焦档位
    val customFocalLengths by viewModel.customFocalLengths.collectAsState(initial = emptyList())
    val hiddenFocalLengths by viewModel.hiddenFocalLengths.collectAsState(initial = emptyList())
    val lensZoomStops = viewModel.calculateLensZoomStops(availableCameras, currentCamera)
    val customLensZoomStops = remember(availableCameras, currentCamera) {
        availableCameras
            .filter { camera ->
                camera.isCustomLensId &&
                    if (currentCamera?.lensType == LensType.FRONT) {
                        camera.lensType == LensType.FRONT
                    } else {
                        camera.lensType != LensType.FRONT && camera.lensType != LensType.BACK_MACRO
                    }
            }
            .map { it.displayIntrinsicZoomRatio }
    }
    val zoomStops = viewModel.allZoomStops(lensZoomStops, mainCamera, currentCamera, customFocalLengths, hiddenFocalLengths)

    val macroCameras = remember(availableCameras) {
        availableCameras.filter { it.lensType == LensType.BACK_MACRO }
    }

    val cameraState by viewModel.state.collectAsState()
    val minZoom = remember(cameraState.availableCameras) {
        cameraState.availableCameras.filter { it.lensType != LensType.FRONT }.minOfOrNull { it.minZoom * it.displayIntrinsicZoomRatio } ?: 1f
    }
    val maxZoom = remember(cameraState.availableCameras) {
        cameraState.availableCameras.filter { it.lensType != LensType.FRONT }.maxOfOrNull { it.maxZoom * it.displayIntrinsicZoomRatio } ?: 20f
    }

    var isContinuousZooming by remember { mutableStateOf(false) }
    var lastInteractionTime by remember { mutableLongStateOf(0L) }
    var internalZoomRatio by remember { mutableFloatStateOf(zoomRatio) }
    var isDragging by remember { mutableStateOf(false) }

    // 离开连续变焦后显示的临时档位逻辑
    var customZoomStop by remember { mutableStateOf<Float?>(null) }
    var replacedStopIndex by remember { mutableIntStateOf(-1) }
    var originalStopRatio by remember { mutableFloatStateOf(0f) }

    fun closeContinuousZoomBar() {
        if (!isContinuousZooming) {
            return
        }

        isContinuousZooming = false

        val settlement = settleContinuousZoomStop(
            zoomStops = zoomStops,
            zoomRatio = internalZoomRatio
        )
        customZoomStop = settlement.customZoomStop
        replacedStopIndex = settlement.replacedStopIndex
        originalStopRatio = settlement.originalStopRatio
        settlement.snapZoomStop?.let(onZoomChange)
    }

    // 当不处于拖拽状态且没有临时档位时，或者处于外部变焦（Pinch）过程中，同步外部变焦值
    LaunchedEffect(zoomRatio, isDragging, isContinuousZooming, viewModel.isZooming) {
        if (viewModel.isZooming || (!isDragging && !isContinuousZooming && customZoomStop == null)) {
            internalZoomRatio = zoomRatio
        }
    }

    // 监听外部变焦状态 (如预览 Pinch)
    LaunchedEffect(viewModel.isZooming) {
        if (viewModel.isZooming) {
            isContinuousZooming = true
            customZoomStop = null
            replacedStopIndex = -1
        }
        lastInteractionTime = System.currentTimeMillis()
    }

    LaunchedEffect(zoomStops, customZoomStop, replacedStopIndex) {
        if (customZoomStop != null && replacedStopIndex !in zoomStops.indices) {
            customZoomStop = null
            replacedStopIndex = -1
        }
    }

    // 自动恢复默认 UI 的定时器
    LaunchedEffect(isContinuousZooming, lastInteractionTime, isDragging, viewModel.isZooming) {
        if (isContinuousZooming && !isDragging && !viewModel.isZooming) {
            delay(2000)
            if (isContinuousZooming && !isDragging && !viewModel.isZooming) {
                closeContinuousZoomBar()
            }
        }
    }

    Box(
        modifier = modifier
            .padding(8.dp)
            .width(32.dp)
            .pointerInput(minZoom, maxZoom, zoomStops) {
                var dragAccumulated = 0f
                detectVerticalDragGestures(
                    onDragStart = {
                        dragAccumulated = 0f
                        isDragging = true
                        customZoomStop = null
                        replacedStopIndex = -1
                    },
                    onVerticalDrag = { change, dragAmount ->
                        if (!isContinuousZooming) {
                            dragAccumulated += dragAmount
                            if (abs(dragAccumulated) > 10.dp.toPx()) {
                                isContinuousZooming = true
                            }
                        }

                        if (isContinuousZooming) {
                            change.consume()
                            lastInteractionTime = System.currentTimeMillis()
                            // 向下拖动 (dragAmount > 0) 放大，向上拖动 (dragAmount < 0) 缩小
                            val sensitivity = 0.002f
                            val newZoom = (internalZoomRatio * exp(-dragAmount.toDouble() * sensitivity).toFloat()).coerceIn(minZoom, maxZoom)
                            internalZoomRatio = newZoom

                            onZoomChange(newZoom)
                        }
                    },
                    onDragEnd = {
                        val shouldCloseContinuousZoomBar = isContinuousZooming && !viewModel.isZooming
                        isDragging = false
                        dragAccumulated = 0f
                        lastInteractionTime = System.currentTimeMillis()
                        if (shouldCloseContinuousZoomBar) {
                            closeContinuousZoomBar()
                        }
                    },
                    onDragCancel = {
                        val shouldCloseContinuousZoomBar = isContinuousZooming && !viewModel.isZooming
                        isDragging = false
                        dragAccumulated = 0f
                        lastInteractionTime = System.currentTimeMillis()
                        if (shouldCloseContinuousZoomBar) {
                            closeContinuousZoomBar()
                        }
                    }
                )
            },
        contentAlignment = Alignment.Center
    ) {
        AnimatedVisibility(
            visible = !isContinuousZooming,
            enter = fadeIn() + expandVertically(),
            exit = fadeOut() + shrinkVertically(),
            modifier = Modifier.align(Alignment.TopCenter)
        ) {
            // Display Mode Toggle (Top)
            IconButton(
                onClick = {
                    viewModel.saveZoomDisplayMode(displayMode.next())
                },
                modifier = Modifier.size(32.dp)
            ) {
                Icon(
                    imageVector = AppIcons.SwapHoriz,
                    contentDescription = stringResource(R.string.toggle_display_mode),
                    modifier = Modifier.size(32.dp)
                        .background(Color.Black.copy(alpha = 0.3f), CircleShape)
                        .padding(8.dp),
                    tint = Color.White
                )
            }
        }

        AnimatedVisibility(
            visible = !isContinuousZooming,
            enter = fadeIn() + expandVertically(),
            exit = fadeOut() + shrinkVertically(),
            modifier = Modifier.align(Alignment.BottomCenter)
        ) {
            // 底部滤镜按钮
            IconButton(
                onClick = onFilterClick,
                modifier = Modifier.size(32.dp)
            ) {
                Icon(
                    imageVector = AppIcons.AutoAwesome,
                    contentDescription = stringResource(R.string.filters_panel),
                    modifier = Modifier.size(32.dp)
                        .background(Color.Black.copy(alpha = 0.3f), CircleShape)
                        .padding(8.dp),
                    tint = Color.Yellow
                )
            }
        }

        // Zoom Ruler (Center)
        Box(
            modifier = Modifier
                .fillMaxWidth()
                .padding(vertical = if (isContinuousZooming) 0.dp else 40.dp),
            contentAlignment = Alignment.Center
        ) {
            if (isContinuousZooming) {
                ZoomContinuousRulerVertical(
                    zoomRatio = internalZoomRatio,
                    minZoom = minZoom,
                    maxZoom = maxZoom,
                    mainCamera = mainCamera,
                    displayMode = displayMode,
                    modifier = Modifier.fillMaxSize()
                )
            } else {
                val effectiveStops = remember(zoomStops, customZoomStop, replacedStopIndex) {
                    buildEffectiveZoomStops(
                        zoomStops = zoomStops,
                        customZoomStop = customZoomStop,
                        replacedStopIndex = replacedStopIndex
                    )
                }
                ZoomRulerVertical(
                    zoomRatio = internalZoomRatio,
                    lensStops = lensZoomStops,
                    customLensStops = customLensZoomStops,
                    stops = effectiveStops,
                    macroCameras = macroCameras,
                    currentCameraId = currentCameraIdState,
                    mainCamera = mainCamera,
                    displayMode = displayMode,
                    onZoomChange = { stop ->
                        val targetStop = if (customZoomStop != null && stop == customZoomStop) originalStopRatio else stop
                        onZoomChange(targetStop)
                        customZoomStop = null
                        replacedStopIndex = -1
                    },
                    onLensSwitch = onLensSwitch,
                    modifier = Modifier.fillMaxWidth()
                )
            }
        }
    }
}

private fun buildEffectiveZoomStops(
    zoomStops: List<Float>,
    customZoomStop: Float?,
    replacedStopIndex: Int
): List<Float> {
    if (customZoomStop == null || replacedStopIndex !in zoomStops.indices) {
        return zoomStops
    }

    return zoomStops.toMutableList().apply {
        this[replacedStopIndex] = customZoomStop
    }
}




@Composable
fun ZoomRulerVertical(
    zoomRatio: Float,
    lensStops: List<Float>,
    customLensStops: List<Float>,
    stops: List<Float>,
    macroCameras: List<CameraInfo>,
    currentCameraId: String,
    mainCamera: CameraInfo?,
    displayMode: ZoomDisplayMode,
    onZoomChange: (Float) -> Unit,
    onLensSwitch: (String) -> Unit,
    modifier: Modifier = Modifier
) {
    val activeColor = Color(0xFFFFD700)
    val inactiveColor = Color.White.copy(alpha = 0.5f)

    val stopsState by rememberUpdatedState(stops)

    BoxWithConstraints(
        modifier = modifier,
        contentAlignment = Alignment.Center
    ) {
        val hasMacroSeparator = stopsState.isNotEmpty() && macroCameras.isNotEmpty()
        val adaptiveMetrics = calculateZoomRulerAdaptiveMetrics(
            availableSpace = maxHeight,
            itemCount = stopsState.size + macroCameras.size,
            separatorCount = if (hasMacroSeparator) 1 else 0
        )

        Column(
            modifier = Modifier
                .height(adaptiveMetrics.rulerLength)
                .fillMaxWidth()
                .background(Color.Black.copy(alpha = 0.3f), RoundedCornerShape(16.dp)),
            horizontalAlignment = Alignment.CenterHorizontally,
            verticalArrangement = Arrangement.spacedBy(adaptiveMetrics.spacing, Alignment.CenterVertically)
        ) {
            val isCurrentMacro = macroCameras.any { it.cameraId == currentCameraId }
            val selectedStopIndex = if (isCurrentMacro) -1 else stopsState.indices.minByOrNull {
                abs(stopsState[it] - zoomRatio)
            }

            stopsState.forEachIndexed { index, stop ->
                val isSelected = index == selectedStopIndex && abs(stop - zoomRatio) <= 0.01f
                val isCustomLensStop = customLensStops.any { abs(it - stop) <= 0.01f }

                // 显示文本
                val text = when (displayMode) {
                    ZoomDisplayMode.ZOOM_RATIO -> {
                        formatZoomRatioLabel(stop)
                    }

                    ZoomDisplayMode.FOCAL_LENGTH -> {
                        zoomRatioToFocalLengthV(stop, mainCamera)
                    }
                } + if (isCustomLensStop) "*" else ""

                val style = TextStyle(
                    fontSize = if (isSelected) adaptiveMetrics.selectedFontSize else adaptiveMetrics.normalFontSize,
                    fontWeight = if (isSelected) FontWeight.Bold else FontWeight.Normal,
                    color = if (isSelected) activeColor else inactiveColor,
                    textAlign = TextAlign.Center,
                    textDecoration = if (lensStops.contains(stop)) TextDecoration.Underline else TextDecoration.None
                )

                Box(
                    modifier = Modifier
                        .size(adaptiveMetrics.itemSize)
                        .autoRotate()
                        .pointerInput(stop) {
                            detectTapGestures { onZoomChange(stop) }
                        },
                    contentAlignment = Alignment.Center
                ) {
                    Text(
                        text = text,
                        style = style,
                        maxLines = 1,
                        softWrap = false,
                        overflow = TextOverflow.Clip
                    )
                }
            }

            if (macroCameras.isNotEmpty()) {
                if (hasMacroSeparator) {
                    Box(
                        modifier = Modifier
                            .width(adaptiveMetrics.separatorLength)
                            .height(1.dp)
                            .background(Color.White.copy(alpha = 0.2f))
                    )
                }

                macroCameras.forEach { macroCam ->
                    val isSelected = macroCam.cameraId == currentCameraId
                    Box(
                        modifier = Modifier
                            .size(adaptiveMetrics.itemSize)
                            .autoRotate()
                            .pointerInput(macroCam.cameraId) {
                                detectTapGestures { onLensSwitch(macroCam.cameraId) }
                            },
                        contentAlignment = Alignment.Center
                    ) {
                        Icon(
                            imageVector = AppIcons.FilterVintage,
                            contentDescription = "Macro",
                            tint = if (isSelected) activeColor else inactiveColor,
                            modifier = Modifier.size(
                                if (isSelected) adaptiveMetrics.selectedIconSize else adaptiveMetrics.normalIconSize
                            )
                        )
                    }
                }
            }
        }
    }
}

/**
 * 垂直连续变焦标尺
 */
@Composable
fun ZoomContinuousRulerVertical(
    zoomRatio: Float,
    minZoom: Float,
    maxZoom: Float,
    mainCamera: CameraInfo?,
    displayMode: ZoomDisplayMode,
    modifier: Modifier = Modifier
) {
    val yellow = Color(0xFFFFD700)
    val textMeasurer = rememberTextMeasurer()

    Box(
        modifier = modifier
            .background(Color.Black.copy(alpha = 0.3f), RoundedCornerShape(16.dp))
    ) {
        Canvas(modifier = Modifier.fillMaxSize().padding(horizontal = 4.dp, vertical = 24.dp)) {
            val width = size.width
            val height = size.height
            val yellowPx = yellow

            // 垂直标尺：当前 zoom 在中心，向上为放大，向下为缩小
            val visibleRatioRange = 1.5f
            val logRangePerPixel = ln(visibleRatioRange.toDouble()) / height

            fun zoomToY(z: Float): Float {
                // 向下放大：z > zoomRatio → y > center
                return (height / 2 + (ln(z.toDouble() / zoomRatio.toDouble()) / logRangePerPixel)).toFloat()
            }

            fun yToZoom(y: Float): Float {
                return (zoomRatio * exp((y - height / 2) * logRangePerPixel)).toFloat()
            }

            val minVisibleZoom = yToZoom(0f)
            val maxVisibleZoom = yToZoom(height)

            val majorSteps = listOf(0.5f, 1f, 2f, 3f, 4f, 5f, 6f, 7f, 8f, 9f, 10f, 12f, 15f, 20f, 30f, 50f)
            majorSteps.forEach { stepValue ->
                if (stepValue in minVisibleZoom..maxVisibleZoom) {
                    val y = zoomToY(stepValue)
                    val tickWidth = 12.dp.toPx()
                    val tickHeight = 1.5.dp.toPx()

                    drawRect(
                        color = Color.White.copy(alpha = 0.8f),
                        topLeft = Offset(width - tickWidth, y - tickHeight / 2f),
                        size = Size(tickWidth, tickHeight)
                    )

                    val text = when (displayMode) {
                        ZoomDisplayMode.ZOOM_RATIO -> formatZoomRatioLabel(stepValue)
                        ZoomDisplayMode.FOCAL_LENGTH -> zoomRatioToFocalLengthV(stepValue, mainCamera)
                    }

                    val textLayoutResult = textMeasurer.measure(
                        text = text,
                        style = TextStyle(
                            fontSize = 8.sp,
                            color = Color.White.copy(alpha = 0.8f),
                            textAlign = TextAlign.Center
                        ),
                        maxLines = 1,
                        softWrap = false,
                        overflow = TextOverflow.Visible,
                        constraints = Constraints(maxWidth = (width - tickWidth - 2.dp.toPx()).toInt())
                    )

                    drawText(
                        textLayoutResult = textLayoutResult,
                        topLeft = Offset(
                            x = 0f,
                            y = y - textLayoutResult.size.height / 2f
                        )
                    )
                }
            }

            // 细刻度
            var minor = (Math.floor(minVisibleZoom * 10.0) / 10.0).toFloat()
            while (minor <= maxVisibleZoom) {
                if (minor >= minZoom && minor <= maxZoom) {
                    val y = zoomToY(minor)
                    if (y in 0f..height) {
                        val isMajor = majorSteps.any { abs(it - minor) < 0.01f }
                        if (!isMajor) {
                            val tickWidth = 6.dp.toPx()
                            val tickHeight = 1.dp.toPx()
                            drawRect(
                                color = Color.White.copy(alpha = 0.4f),
                                topLeft = Offset(width - tickWidth, y - tickHeight / 2f),
                                size = Size(tickWidth, tickHeight)
                            )
                        }
                    }
                }
                minor += 0.1f
            }

            // 中心指示器 (固定在中心)
            val centerY = height / 2f
            val indicatorHeight = 2.dp.toPx()

            drawCircle(
                color = yellowPx.copy(alpha = 0.2f),
                center = Offset(width - 6.dp.toPx(), centerY),
                radius = 8.dp.toPx()
            )

            drawRect(
                color = yellowPx,
                topLeft = Offset(width - 15.dp.toPx(), centerY - indicatorHeight / 2f),
                size = Size(15.dp.toPx(), indicatorHeight)
            )

            // 当前数值浮窗
            val currentText = when (displayMode) {
                ZoomDisplayMode.ZOOM_RATIO -> formatZoomRatioLabel(zoomRatio)
                ZoomDisplayMode.FOCAL_LENGTH -> zoomRatioToFocalLengthV(zoomRatio, mainCamera) + "mm"
            }
            val currentTextLayout = textMeasurer.measure(
                text = currentText,
                style = TextStyle(
                    fontSize = 11.sp,
                    fontWeight = FontWeight.Bold,
                    color = yellowPx
                )
            )
            drawText(
                currentTextLayout,
                topLeft = Offset(
                    x = width + 2.dp.toPx(),
                    y = centerY - currentTextLayout.size.height / 2f
                )
            )
        }
    }
}

/**
 * 变焦倍率转换为35mm等效焦距
 */
private fun zoomRatioToFocalLengthV(zoomRatio: Float, mainCamera: CameraInfo?): String {
    if (mainCamera == null || mainCamera.focalLength35mmEquivalent <= 0) {
        return (23f * zoomRatio).toInt().toString()
    }
    return (mainCamera.focalLength35mmEquivalent * zoomRatio).roundToInt().toString()
}
