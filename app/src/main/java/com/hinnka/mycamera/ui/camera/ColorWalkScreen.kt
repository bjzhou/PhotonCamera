package com.hinnka.mycamera.ui.camera

import android.graphics.Bitmap
import android.graphics.SweepGradient
import android.widget.Toast
import androidx.compose.animation.core.*
import androidx.compose.foundation.*
import androidx.compose.foundation.gestures.*
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.Check
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.graphics.*
import androidx.compose.ui.input.pointer.*
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.hinnka.mycamera.R
import com.hinnka.mycamera.frame.*
import com.hinnka.mycamera.lut.LutInfo
import com.hinnka.mycamera.viewmodel.CameraViewModel
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch
import kotlin.math.*
import kotlin.random.Random
import androidx.compose.runtime.collectAsState
import androidx.compose.ui.platform.LocalContext
import com.hinnka.mycamera.ui.icons.AppIcons

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ColorWalkScreen(
    viewModel: CameraViewModel,
    onBack: () -> Unit
) {
    val scope = rememberCoroutineScope()
    val context = LocalContext.current
    val animatableHue = remember { Animatable(Random.nextFloat() * 360f) }
    val currentHue = animatableHue.value % 360f
    
    val selectedColor = remember(currentHue) {
        Color.hsv(if (currentHue < 0) currentHue + 360f else currentHue, 1f, 1f)
    }

    // Dopamine color logic: Triadic offset for a vibrant contrast
    val dopamineHue = remember(currentHue) { currentHue % 360f }
    val dopamineColor = remember(dopamineHue) { Color.hsv(dopamineHue, 0.85f, 0.98f) }

    // Prepare Frame Draft for rendering
    val frameDraft = remember(dopamineColor) {
        FrameEditorDraft.createNew().let { base ->
            base.copy(
                name = "Color Walk",
                layout = base.layout.copy(
                    backgroundColor = dopamineColor.toArgb(),
                    borderColor = dopamineColor.toArgb(),
                ),
                elements = base.elements.map { element ->
                    when (element) {
                        is FrameElementDraft.Text -> element.copy(color = Color.hsv(dopamineHue, 0.95f, 0.5f).toArgb())
                        is FrameElementDraft.Divider -> element.copy(color = if (dopamineColor.isDark()) 0x40FFFFFF else 0x40000000)
                        is FrameElementDraft.Logo -> element.copy(light = dopamineColor.isDark())
                        else -> element
                    }
                }
            )
        }
    }

    // Real Rendering of the Frame
    val framePreviewBitmap by produceState<Bitmap?>(null, frameDraft) {
        delay(200) // Debounce rendering to avoid stutter during drag
        value = viewModel.renderFrameEditorPreview(frameDraft, portrait = false)
    }

    val recommendedLuts by produceState(emptyList(), currentHue) {
        value = viewModel.recommendLutsForColor(selectedColor.toArgb())
    }

    val currentLutId by viewModel.currentLutId.collectAsState()

    Scaffold(
        topBar = {
            CenterAlignedTopAppBar(
                title = {
                    Text(
                        stringResource(R.string.color_walk_title),
                        fontSize = 18.sp,
                        fontWeight = FontWeight.Bold
                    )
                },
                navigationIcon = {
                    IconButton(onClick = onBack) {
                        Icon(Icons.AutoMirrored.Filled.ArrowBack, contentDescription = "Back")
                    }
                },
                actions = {},
                colors = TopAppBarDefaults.centerAlignedTopAppBarColors(
                    containerColor = Color.Black,
                    titleContentColor = Color.White,
                    navigationIconContentColor = Color.White
                )
            )
        },
        containerColor = Color.Black
    ) { padding ->
        Column(
            modifier = Modifier
                .fillMaxSize()
                .padding(padding)
                .verticalScroll(rememberScrollState())
                .padding(horizontal = 24.dp)
        ) {
            // Detailed Introduction
            Column(modifier = Modifier.padding(vertical = 16.dp)) {
                Text(
                    text = "THE PHILOSOPHY",
                    color = MaterialTheme.colorScheme.primary,
                    fontSize = 11.sp,
                    fontWeight = FontWeight.ExtraBold,
                    letterSpacing = 2.sp
                )
                Spacer(modifier = Modifier.height(10.dp))
                Text(
                    text = stringResource(R.string.color_walk_desc),
                    color = Color.White.copy(alpha = 0.85f),
                    fontSize = 12.sp,
                    lineHeight = 18.sp,
                    fontWeight = FontWeight.Light
                )
            }

            Row(
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(top = 16.dp, bottom = 12.dp),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically
            ) {
                Text(
                    text = stringResource(R.string.color_walk_select_color),
                    color = Color.White,
                    fontWeight = FontWeight.Bold,
                    fontSize = 18.sp
                )
                
                TextButton(
                    onClick = {
                        scope.launch {
                            val target = animatableHue.value + 1080f + Random.nextFloat() * 360f
                            animatableHue.animateTo(
                                targetValue = target,
                                animationSpec = tween(
                                    durationMillis = 5000,
                                    easing = CubicBezierEasing(0.2f, 0.4f, 0.1f, 1f)
                                )
                            )
                        }
                    },
                    colors = ButtonDefaults.textButtonColors(contentColor = MaterialTheme.colorScheme.primary)
                ) {
                    Icon(AppIcons.Shuffle, contentDescription = null, modifier = Modifier.size(16.dp))
                    Spacer(modifier = Modifier.width(4.dp))
                    Text(stringResource(R.string.color_walk_random), fontSize = 14.sp)
                }
            }

            // Color Wheel
            Box(
                modifier = Modifier
                    .fillMaxWidth()
                    .aspectRatio(1f),
                contentAlignment = Alignment.Center
            ) {
                ColorWheel(
                    selectedHue = currentHue,
                    onHueChanged = { hue ->
                        scope.launch {
                            animatableHue.snapTo(hue)
                        }
                    },
                    modifier = Modifier.fillMaxSize()
                        .padding(16.dp)
                )
                
                // Current Selected Color Preview in the center
                Surface(
                    onClick = {
                        scope.launch {
                            val target = animatableHue.value + 1080f + Random.nextFloat() * 360f
                            animatableHue.animateTo(
                                targetValue = target,
                                animationSpec = tween(
                                    durationMillis = 5000,
                                    easing = CubicBezierEasing(0.2f, 0.4f, 0.1f, 1f)
                                )
                            )
                        }
                    },
                    shape = CircleShape,
                    color = selectedColor,
                    modifier = Modifier.size(90.dp),
                    border = BorderStroke(4.dp, Color.Black.copy(alpha = 0.5f)),
                    shadowElevation = 12.dp
                ) {
                    Box(contentAlignment = Alignment.Center) {
                        Icon(
                            AppIcons.Shuffle,
                            contentDescription = null,
                            tint = if (selectedColor.isDark()) Color.White.copy(alpha = 0.3f) else Color.Black.copy(alpha = 0.3f),
                            modifier = Modifier.size(32.dp)
                        )
                    }
                }
            }

            Spacer(modifier = Modifier.height(16.dp))

            // Recommended Filters Label
            Text(
                text = stringResource(R.string.color_walk_recommendations),
                color = Color.White,
                fontWeight = FontWeight.Bold,
                fontSize = 18.sp,
                modifier = Modifier.padding(bottom = 16.dp)
            )

            // Smaller Recommended Filters Horizontal List
            LazyRow(
                horizontalArrangement = Arrangement.spacedBy(12.dp),
                contentPadding = PaddingValues(bottom = 16.dp),
                modifier = Modifier.height(90.dp)
            ) {
                items(recommendedLuts) { lut ->
                    CompactLutRecommendationItem(
                        lut = lut,
                        color = selectedColor,
                        isCurrent = currentLutId == lut.id,
                        onClick = {
                            viewModel.setLut(lut.id)
                        }
                    )
                }
            }

            RecommendedFrameSection(
                previewBitmap = framePreviewBitmap,
                onClick = {
                    scope.launch {
                        val id = viewModel.saveFrameEditorDraft(frameDraft)
                        viewModel.setFrame(id)
                        Toast.makeText(context, R.string.apply_frame_success, Toast.LENGTH_SHORT).show()
                    }
                }
            )
            
            Spacer(modifier = Modifier.height(24.dp))
        }
    }
}

@Composable
fun ColorWheel(
    selectedHue: Float,
    onHueChanged: (Float) -> Unit,
    modifier: Modifier = Modifier
) {
    Canvas(
        modifier = modifier
            .pointerInput(Unit) {
                awaitEachGesture {
                    val down = awaitFirstDown()
                    val center = Offset(size.width / 2f, size.height / 2f)
                    val radius = min(size.width, size.height) / 2f - 24.dp.toPx()
                    val strokeWidth = 32.dp.toPx()
                    val tolerance = 8.dp.toPx() // Small tolerance for easier touching
                    val innerRadius = radius - strokeWidth / 2 - tolerance
                    val outerRadius = radius + strokeWidth / 2 + tolerance

                    val dist = (down.position - center).getDistance()
                    if (dist in innerRadius..outerRadius) {
                        fun handlePointer(pos: Offset) {
                            val dx = pos.x - center.x
                            val dy = pos.y - center.y
                            var angle = atan2(dy, dx) * (180f / PI.toFloat())
                            if (angle < 0) angle += 360f
                            onHueChanged(angle)
                        }

                        handlePointer(down.position)
                        down.consume()

                        while (true) {
                            val event = awaitPointerEvent()
                            val change = event.changes.find { it.id == down.id } ?: break
                            if (change.pressed) {
                                handlePointer(change.position)
                                change.consume()
                            } else {
                                break
                            }
                        }
                    }
                }
            }
    ) {
        val center = Offset(size.width / 2, size.height / 2)
        val radius = size.minDimension / 2 - 24.dp.toPx()
        val strokeWidth = 32.dp.toPx()

        // Draw Hue Ring using SweepGradient
        val colors = IntArray(361) { h -> android.graphics.Color.HSVToColor(floatArrayOf(h.toFloat(), 1f, 1f)) }
        drawContext.canvas.nativeCanvas.apply {
            val paint = android.graphics.Paint().apply {
                isAntiAlias = true
                style = android.graphics.Paint.Style.STROKE
                this.strokeWidth = strokeWidth
                shader = SweepGradient(center.x, center.y, colors, null)
            }
            drawCircle(center.x, center.y, radius, paint)
        }

        // Draw Selector
        val angleRad = selectedHue * (PI.toFloat() / 180f)
        val selectorPos = Offset(
            center.x + radius * cos(angleRad),
            center.y + radius * sin(angleRad)
        )
        
        drawCircle(
            color = Color.Black.copy(alpha = 0.5f),
            radius = (strokeWidth / 2) + 6.dp.toPx(),
            center = selectorPos
        )
        drawCircle(
            color = Color.White,
            radius = (strokeWidth / 2) + 2.dp.toPx(),
            center = selectorPos
        )
        drawCircle(
            color = Color.hsv(selectedHue, 1f, 1f),
            radius = (strokeWidth / 2) - 2.dp.toPx(),
            center = selectorPos
        )
    }
}

@Composable
private fun RecommendedFrameSection(
    previewBitmap: Bitmap?,
    onClick: () -> Unit
) {
    Column(modifier = Modifier) {
        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.SpaceBetween,
            verticalAlignment = Alignment.CenterVertically
        ) {
            Text(
                text = stringResource(R.string.color_walk_recommended_frame),
                color = Color.White,
                fontWeight = FontWeight.Bold,
                fontSize = 16.sp
            )

            Surface(
                modifier = Modifier.clickable(onClick = onClick),
                color = MaterialTheme.colorScheme.primary.copy(alpha = 0.1f),
                shape = RoundedCornerShape(8.dp)
            ) {
                Text(
                    text = stringResource(R.string.color_walk_apply_frame),
                    color = MaterialTheme.colorScheme.primary,
                    fontSize = 11.sp,
                    fontWeight = FontWeight.Bold,
                    modifier = Modifier.padding(horizontal = 12.dp, vertical = 6.dp)
                )
            }
        }

        Spacer(modifier = Modifier.height(16.dp))

        // Frame Style Real Rendering Preview
        Box(
            modifier = Modifier
                .fillMaxWidth()
                .height(160.dp)
                .clip(RoundedCornerShape(12.dp))
                .background(Color.White.copy(alpha = 0.05f)),
            contentAlignment = Alignment.Center
        ) {
            if (previewBitmap != null) {
                Image(
                    bitmap = previewBitmap.asImageBitmap(),
                    contentDescription = null,
                    contentScale = ContentScale.Fit,
                    modifier = Modifier.fillMaxSize()
                )
            } else {
                CircularProgressIndicator(
                    modifier = Modifier.size(24.dp),
                    strokeWidth = 2.dp,
                    color = MaterialTheme.colorScheme.primary
                )
            }
        }
    }
}

@Composable
private fun CompactLutRecommendationItem(
    lut: LutInfo,
    color: Color,
    isCurrent: Boolean,
    onClick: () -> Unit
) {
    Surface(
        onClick = onClick,
        shape = RoundedCornerShape(16.dp),
        color = Color(0xFF1C1C1E),
        modifier = Modifier
            .width(130.dp)
            .fillMaxHeight(),
        border = BorderStroke(1.dp, Color.White.copy(alpha = 0.1f))
    ) {
        Box(modifier = Modifier.fillMaxSize()) {
            // Background accent with selected color
            Box(
                modifier = Modifier
                    .fillMaxWidth()
                    .height(3.dp)
                    .background(color)
                    .align(Alignment.TopCenter)
            )

            Column(
                modifier = Modifier
                    .padding(12.dp)
                    .align(Alignment.CenterStart)
            ) {
                Text(
                    text = lut.getName(),
                    color = Color.White,
                    fontWeight = FontWeight.Bold,
                    fontSize = 13.sp,
                    maxLines = 1
                )
                Text(
                    text = lut.category ?: "Filter",
                    color = Color.White.copy(alpha = 0.4f),
                    fontSize = 10.sp,
                    modifier = Modifier.padding(top = 2.dp)
                )
            }
            
            if (isCurrent) {
                Icon(
                    imageVector = Icons.Default.Check,
                    contentDescription = null,
                    tint = color.copy(alpha = 0.8f),
                    modifier = Modifier
                        .size(20.dp)
                        .align(Alignment.BottomEnd)
                        .padding(end = 8.dp, bottom = 8.dp)
                )
            }
        }
    }
}

private fun Color.isDark(): Boolean {
    val luminance = 0.299 * red + 0.587 * green + 0.114 * blue
    return luminance < 0.5
}
