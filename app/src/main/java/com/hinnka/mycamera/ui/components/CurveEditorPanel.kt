package com.hinnka.mycamera.ui.components

import androidx.compose.foundation.Canvas
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.gestures.awaitFirstDown
import androidx.compose.foundation.gestures.detectDragGestures
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.Text
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.alpha
import androidx.compose.ui.draw.clip
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.geometry.Size
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.Path
import androidx.compose.ui.graphics.PathEffect
import androidx.compose.ui.graphics.StrokeCap
import androidx.compose.ui.graphics.drawscope.DrawScope
import androidx.compose.ui.graphics.drawscope.Stroke
import androidx.compose.ui.input.pointer.changedToDown
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.hinnka.mycamera.lut.CurveUtils
import com.hinnka.mycamera.model.ColorRecipeParams

/**
 * 曲线通道枚举
 */
enum class CurveChannel(val label: String, val color: Color) {
    MASTER("RGB", Color.White),
    RED("R", Color(0xFFFF5555)),
    GREEN("G", Color(0xFF55DD55)),
    BLUE("B", Color(0xFF5599FF))
}

/**
 * 仿 Camera Raw 的曲线编辑面板
 *
 * 支持：
 * - 4 通道切换：Master (RGB)、R、G、B
 * - 拖动控制点
 * - 点击空白区域添加控制点
 * - 双击控制点删除
 */
@Composable
fun CurveEditorPanel(
    currentParams: ColorRecipeParams,
    onCurveChange: (CurveChannel, FloatArray?) -> Unit,
    modifier: Modifier = Modifier
) {
    var selectedChannel by remember { mutableStateOf(CurveChannel.MASTER) }

    Column(modifier = modifier.fillMaxWidth()) {
        // 通道选择器
        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.spacedBy(8.dp)
        ) {
            CurveChannel.entries.forEach { channel ->
                val isSelected = selectedChannel == channel
                Box(
                    modifier = Modifier
                        .weight(1f)
                        .height(28.dp)
                        .clip(RoundedCornerShape(4.dp))
                        .background(
                            if (isSelected) channel.color.copy(alpha = 0.25f)
                            else Color.Transparent
                        )
                        .clickable { selectedChannel = channel },
                    contentAlignment = Alignment.Center
                ) {
                    Text(
                        text = channel.label,
                        color = if (isSelected) channel.color else channel.color.copy(alpha = 0.45f),
                        fontSize = 11.sp,
                        fontWeight = if (isSelected) FontWeight.Bold else FontWeight.Normal
                    )
                }
            }
        }

        Spacer(modifier = Modifier.height(6.dp))

        // 曲线编辑画布
        val currentPoints = currentParams.getCurvePoints(selectedChannel)

        CurveCanvas(
            points = currentPoints ?: identityPoints(),
            curveColor = selectedChannel.color,
            onPointsChange = { newPoints ->
                val arr = if (newPoints.size <= 4 && CurveUtils.isIdentityCurve(newPoints)) null else newPoints
                onCurveChange(selectedChannel, arr)
            },
            modifier = Modifier.fillMaxWidth()
        )
    }
}

@Composable
private fun CurveCanvas(
    points: FloatArray,
    curveColor: Color,
    onPointsChange: (FloatArray) -> Unit,
    modifier: Modifier = Modifier
) {
    val density = LocalDensity.current
    val hitThresholdPx = with(density) { 20.dp.toPx() }

    // 内部拖动状态；pointerInput key 使用 state 对象引用（稳定）
    val controlPointsState = remember { mutableStateOf(parsePoints(points)) }
    val controlPoints = controlPointsState.value

    // 普通 holder（非 Compose State），避免异步快照时序导致 LaunchedEffect 误判
    val lastEmitted = remember { arrayOf(points) }

    LaunchedEffect(points) {
        if (!points.contentEquals(lastEmitted[0])) {
            // 来自外部的真实变更（例如切换通道或重置），同步到内部状态
            controlPointsState.value = parsePoints(points)
            lastEmitted[0] = points
        }
    }

    // 双击检测状态
    var lastTapTime by remember { mutableLongStateOf(0L) }
    var lastTapIndex by remember { mutableIntStateOf(-1) }

    // Issue 4: padding 让两端控制点有更多可触摸空间
    Box(modifier = modifier.padding(horizontal = 32.dp).padding(top = 16.dp)) {
        Canvas(
            modifier = Modifier
                .fillMaxWidth()
                .aspectRatio(1f)
                // key 使用 state 对象引用（稳定），避免拖动时 coroutine 被重启
                .pointerInput(controlPointsState, hitThresholdPx) {
                    awaitPointerEventScope {
                        while (true) {
                            val down = awaitFirstDown(requireUnconsumed = false)

                            val downPos = down.position
                            val nearIdx = findNearestIndex(
                                controlPointsState.value, downPos, size, hitThresholdPx
                            )

                            if (nearIdx >= 0) {
                                // 双击检测（删除点）
                                val now = System.currentTimeMillis()
                                if (now - lastTapTime < 350 && lastTapIndex == nearIdx) {
                                    lastTapTime = 0L
                                    lastTapIndex = -1
                                    val current = controlPointsState.value
                                    if (current.size > 2) {
                                        val updated = current.toMutableList().also { it.removeAt(nearIdx) }
                                        controlPointsState.value = updated
                                        val arr = updated.toFloatArray()
                                        lastEmitted[0] = arr
                                        onPointsChange(arr)
                                    }
                                    down.consume()
                                    continue
                                }
                                lastTapTime = now
                                lastTapIndex = nearIdx

                                // 拖动控制点
                                // Issue 2/3: 所有点（含端点）均可在 x/y 自由移动；
                                // 用相邻点夹紧代替排序，避免 index 跳变导致的抖动。
                                var dragIdx = nearIdx
                                drag@ while (true) {
                                    val event = awaitPointerEvent()
                                    val change = event.changes.firstOrNull { it.id == down.id }
                                    if (change == null || !change.pressed) break@drag
                                    change.consume()

                                    val current = controlPointsState.value
                                    val rawX = change.position.x / size.width
                                    val ny = (1f - change.position.y / size.height).coerceIn(0f, 1f)

                                    // x 轴：由相邻点边界夹紧，不排序——消除抖动
                                    val minX = if (dragIdx > 0) current[dragIdx - 1].first + 0.005f else 0f
                                    val maxX = if (dragIdx < current.size - 1) current[dragIdx + 1].first - 0.005f else 1f
                                    val nx = rawX.coerceIn(minX, maxX)

                                    val updated = current.toMutableList()
                                    updated[dragIdx] = Pair(nx, ny)
                                    controlPointsState.value = updated
                                    val arr = updated.toFloatArray()
                                    lastEmitted[0] = arr
                                    onPointsChange(arr)
                                }
                            } else {
                                // Issue 1: 点击空白区域 →
                                //   手指静止抬起 → 在抬起处添加点（原有行为）
                                //   手指开始移动 → 立即在 down 位置插入点并跟随拖动
                                var dragIdx = -1
                                var newPointAdded = false
                                var upPos = downPos

                                tap@ while (true) {
                                    val event = awaitPointerEvent()
                                    val change = event.changes.firstOrNull { it.id == down.id }
                                    if (change == null || !change.pressed) {
                                        upPos = change?.position ?: upPos
                                        break@tap
                                    }
                                    change.consume()

                                    if (!newPointAdded && (change.position - downPos).getDistance() > 4f) {
                                        // 手指开始移动：在 down 位置插入新点，立即进入拖动模式
                                        val nx0 = (downPos.x / size.width).coerceIn(0.001f, 0.999f)
                                        val ny0 = (1f - downPos.y / size.height).coerceIn(0f, 1f)
                                        val newPt = Pair(nx0, ny0)
                                        val withNew = (controlPointsState.value + newPt).sortedBy { it.first }
                                        controlPointsState.value = withNew
                                        dragIdx = withNew.indexOf(newPt)
                                        newPointAdded = true
                                    }

                                    if (newPointAdded && dragIdx >= 0) {
                                        val current = controlPointsState.value
                                        val rawX = change.position.x / size.width
                                        val ny = (1f - change.position.y / size.height).coerceIn(0f, 1f)
                                        val minX = if (dragIdx > 0) current[dragIdx - 1].first + 0.005f else 0f
                                        val maxX = if (dragIdx < current.size - 1) current[dragIdx + 1].first - 0.005f else 1f
                                        val nx = rawX.coerceIn(minX, maxX)
                                        val updated = current.toMutableList()
                                        updated[dragIdx] = Pair(nx, ny)
                                        controlPointsState.value = updated
                                        val arr = updated.toFloatArray()
                                        lastEmitted[0] = arr
                                        onPointsChange(arr)
                                    }
                                }

                                // 纯点击（未拖动）：在抬起位置添加点
                                if (!newPointAdded) {
                                    val nx = (upPos.x / size.width).coerceIn(0.001f, 0.999f)
                                    val ny = (1f - upPos.y / size.height).coerceIn(0f, 1f)
                                    val updated = (controlPointsState.value + Pair(nx, ny))
                                        .sortedBy { it.first }
                                    controlPointsState.value = updated
                                    val arr = updated.toFloatArray()
                                    lastEmitted[0] = arr
                                    onPointsChange(arr)
                                }
                            }
                        }
                    }
                }
        ) {
            drawCurveCanvas(
                controlPoints = controlPoints,
                curveColor = curveColor,
                canvasSize = size
            )
        }
    }
}

private fun DrawScope.drawCurveCanvas(
    controlPoints: List<Pair<Float, Float>>,
    curveColor: Color,
    canvasSize: Size
) {
    val w = canvasSize.width
    val h = canvasSize.height

    // 背景
    drawRect(Color(0xFF1A1A1A))

    // 网格线（4×4）
    val gridColor = Color.White.copy(alpha = 0.08f)
    for (i in 1..3) {
        val x = w * i / 4f
        val y = h * i / 4f
        drawLine(gridColor, Offset(x, 0f), Offset(x, h), strokeWidth = 1f)
        drawLine(gridColor, Offset(0f, y), Offset(w, y), strokeWidth = 1f)
    }

    // 边框
    drawRect(
        color = Color.White.copy(alpha = 0.15f),
        style = Stroke(1f)
    )

    // 恒等线（虚线对角）
    val dashEffect = PathEffect.dashPathEffect(floatArrayOf(4f, 4f))
    drawLine(
        color = Color.White.copy(alpha = 0.2f),
        start = Offset(0f, h),
        end = Offset(w, 0f),
        strokeWidth = 1f,
        pathEffect = dashEffect
    )

    // 评估曲线并绘制
    val pts = FloatArray(controlPoints.size * 2) { i ->
        if (i % 2 == 0) controlPoints[i / 2].first else controlPoints[i / 2].second
    }
    val lut = CurveUtils.evaluateCurve(pts)

    val curvePath = Path()
    var firstPoint = true
    for (i in 0 until CurveUtils.LUT_SIZE) {
        val cx = i / (CurveUtils.LUT_SIZE - 1f) * w
        val cy = (1f - lut[i]) * h
        if (firstPoint) {
            curvePath.moveTo(cx, cy)
            firstPoint = false
        } else {
            curvePath.lineTo(cx, cy)
        }
    }
    drawPath(curvePath, curveColor, style = Stroke(width = 2f, cap = StrokeCap.Round))

    // 控制点
    val pointRadius = 5.dp.toPx()
    val pointBorderWidth = 1.5f
    for ((px, py) in controlPoints) {
        val cx = px * w
        val cy = (1f - py) * h
        drawCircle(Color(0xFF1A1A1A), radius = pointRadius, center = Offset(cx, cy))
        drawCircle(
            curveColor,
            radius = pointRadius,
            center = Offset(cx, cy),
            style = Stroke(pointBorderWidth)
        )
        drawCircle(curveColor.copy(alpha = 0.7f), radius = pointRadius - pointBorderWidth - 1f, center = Offset(cx, cy))
    }
}

// ──────────────────────── 辅助函数 ────────────────────────

/** 解析 FloatArray 为控制点列表 */
private fun parsePoints(points: FloatArray): List<Pair<Float, Float>> {
    val n = points.size / 2
    return (0 until n).map { Pair(points[it * 2], points[it * 2 + 1]) }.sortedBy { it.first }
}

/** 创建默认恒等曲线控制点 */
fun identityPoints(): FloatArray = floatArrayOf(0f, 0f, 1f, 1f)

/** 将控制点列表转换为 FloatArray */
private fun List<Pair<Float, Float>>.toFloatArray(): FloatArray =
    FloatArray(size * 2) { i -> if (i % 2 == 0) this[i / 2].first else this[i / 2].second }

/** 恒等曲线返回 null，否则返回 FloatArray */
private fun List<Pair<Float, Float>>.toFloatArrayOrNull(): FloatArray? {
    val arr = toFloatArray()
    return if (CurveUtils.isIdentityCurve(arr)) null else arr
}

/** 查找最近控制点的索引，超过阈值则返回 -1 */
private fun findNearestIndex(
    points: List<Pair<Float, Float>>,
    pos: Offset,
    size: androidx.compose.ui.unit.IntSize,
    threshold: Float
): Int {
    var nearestIdx = -1
    var nearestDist = threshold
    points.forEachIndexed { idx, (px, py) ->
        val cx = px * size.width
        val cy = (1f - py) * size.height
        val dist = Offset(cx - pos.x, cy - pos.y).getDistance()
        if (dist < nearestDist) {
            nearestDist = dist
            nearestIdx = idx
        }
    }
    return nearestIdx
}

/** 从 ColorRecipeParams 获取指定通道的控制点 */
fun ColorRecipeParams.getCurvePoints(channel: CurveChannel): FloatArray? = when (channel) {
    CurveChannel.MASTER -> masterCurvePoints
    CurveChannel.RED -> redCurvePoints
    CurveChannel.GREEN -> greenCurvePoints
    CurveChannel.BLUE -> blueCurvePoints
}
