package com.hinnka.mycamera.ui.settings

import android.content.Context
import android.graphics.Bitmap
import android.graphics.Canvas
import android.graphics.ImageDecoder
import android.graphics.LinearGradient
import android.graphics.Paint
import android.graphics.RectF
import android.graphics.Shader
import android.net.Uri
import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material3.Button
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedButton
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.material3.TopAppBar
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalConfiguration
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.unit.dp
import com.hinnka.mycamera.R
import com.hinnka.mycamera.screencapture.PhantomPipCrop
import com.hinnka.mycamera.ui.gallery.CropAspectOption
import com.hinnka.mycamera.ui.gallery.CropOverlay
import com.hinnka.mycamera.utils.PLog
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import kotlin.math.max
import kotlin.math.roundToInt

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun PhantomPipCropScreen(
    initialCrop: PhantomPipCrop,
    onBack: () -> Unit,
    onSave: (PhantomPipCrop) -> Unit,
    modifier: Modifier = Modifier
) {
    var crop by remember(initialCrop) { mutableStateOf(initialCrop.normalized()) }
    var selectedBackgroundUri by rememberSaveable { mutableStateOf<String?>(null) }
    var customPreviewBitmap by remember { mutableStateOf<Bitmap?>(null) }
    val configuration = LocalConfiguration.current
    val context = LocalContext.current
    val previewBitmap = remember(configuration.screenWidthDp, configuration.screenHeightDp) {
        createCropPreviewBitmap(
            width = max(configuration.screenWidthDp, 360).dpToBitmapPx(),
            height = max(configuration.screenHeightDp, 640).dpToBitmapPx()
        )
    }
    val backgroundPicker = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.GetContent()
    ) { uri: Uri? ->
        if (uri == null) return@rememberLauncherForActivityResult
        runCatching {
            context.contentResolver.takePersistableUriPermission(
                uri,
                android.content.Intent.FLAG_GRANT_READ_URI_PERMISSION
            )
        }
        selectedBackgroundUri = uri.toString()
    }

    LaunchedEffect(selectedBackgroundUri, previewBitmap) {
        customPreviewBitmap = selectedBackgroundUri?.let { uriString ->
            loadPreviewBitmap(
                context = context,
                uri = Uri.parse(uriString),
                fallbackWidth = previewBitmap.width,
                fallbackHeight = previewBitmap.height
            )
        }
    }

    Column(
        modifier = modifier
            .fillMaxSize()
            .background(Color.Black)
    ) {
        TopAppBar(
            title = {
                Text(
                    text = stringResource(R.string.settings_phantom_pip_crop),
                    color = Color.White
                )
            },
            navigationIcon = {
                IconButton(onClick = onBack) {
                    Icon(
                        imageVector = Icons.AutoMirrored.Filled.ArrowBack,
                        contentDescription = stringResource(R.string.back),
                        tint = Color.White
                    )
                }
            },
            colors = TopAppBarDefaults.topAppBarColors(
                containerColor = Color.Transparent
            )
        )

        Column(
            modifier = Modifier
                .fillMaxSize()
                .padding(horizontal = 16.dp)
                .padding(bottom = 16.dp)
        ) {
            Text(
                text = stringResource(R.string.settings_phantom_pip_crop_description),
                color = Color.White.copy(alpha = 0.7f),
                style = MaterialTheme.typography.bodyMedium
            )

            Spacer(modifier = Modifier.height(20.dp))

            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(12.dp)
            ) {
                OutlinedButton(
                    onClick = { backgroundPicker.launch("image/*") },
                    modifier = Modifier.weight(1f)
                ) {
                    Text(stringResource(R.string.settings_phantom_pip_crop_choose_background))
                }

                OutlinedButton(
                    onClick = {
                        selectedBackgroundUri = null
                        customPreviewBitmap = null
                    },
                    modifier = Modifier.weight(1f)
                ) {
                    Text(stringResource(R.string.settings_phantom_pip_crop_default_background))
                }
            }

            Spacer(modifier = Modifier.height(16.dp))

            Surface(
                color = Color(0xFF111111),
                shape = RoundedCornerShape(28.dp),
                modifier = Modifier
                    .fillMaxWidth()
                    .weight(1f)
                    .clip(RoundedCornerShape(28.dp))
            ) {
                Box(
                    modifier = Modifier
                        .fillMaxSize()
                        .padding(16.dp),
                    contentAlignment = Alignment.Center
                ) {
                    CropOverlay(
                        bitmap = customPreviewBitmap ?: previewBitmap,
                        cropRect = crop.toRectF(),
                        onCropRectChanged = { crop = it.toPhantomPipCrop() },
                        aspectOption = CropAspectOption.Free,
                        modifier = Modifier.fillMaxSize()
                    )
                }
            }

            Spacer(modifier = Modifier.height(20.dp))

            CropSummary(crop = crop)

            Spacer(modifier = Modifier.height(20.dp))

            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(12.dp)
            ) {
                OutlinedButton(
                    onClick = { crop = PhantomPipCrop() },
                    modifier = Modifier.weight(1f)
                ) {
                    Text(stringResource(R.string.settings_phantom_pip_crop_reset))
                }

                Button(
                    onClick = { onSave(crop.normalized()) },
                    modifier = Modifier.weight(1f)
                ) {
                    Text(stringResource(R.string.save))
                }
            }
        }
    }
}

@Composable
private fun CropSummary(
    crop: PhantomPipCrop,
    modifier: Modifier = Modifier
) {
    val widthPercent = ((crop.right - crop.left) * 100).roundToInt().coerceIn(0, 100)
    val heightPercent = ((crop.bottom - crop.top) * 100).roundToInt().coerceIn(0, 100)

    Surface(
        color = Color.White.copy(alpha = 0.06f),
        shape = RoundedCornerShape(20.dp),
        modifier = modifier.fillMaxWidth()
    ) {
        Column(
            modifier = Modifier.padding(horizontal = 16.dp, vertical = 14.dp),
            verticalArrangement = Arrangement.spacedBy(4.dp)
        ) {
            Text(
                text = "${widthPercent}% × ${heightPercent}%",
                color = Color.White,
                style = MaterialTheme.typography.titleMedium
            )
            Text(
                text = "X ${(crop.left * 100).roundToInt()}% - ${(crop.right * 100).roundToInt()}%   Y ${(crop.top * 100).roundToInt()}% - ${(crop.bottom * 100).roundToInt()}%",
                color = Color.White.copy(alpha = 0.65f),
                style = MaterialTheme.typography.bodySmall
            )
        }
    }
}

private fun PhantomPipCrop.toRectF(): RectF = RectF(left, top, right, bottom)

private fun RectF.toPhantomPipCrop(): PhantomPipCrop = PhantomPipCrop(
    left = left,
    top = top,
    right = right,
    bottom = bottom
).normalized()

private fun Int.dpToBitmapPx(): Int = max((this * 2f).roundToInt(), 1)

private suspend fun loadPreviewBitmap(
    context: Context,
    uri: Uri,
    fallbackWidth: Int,
    fallbackHeight: Int
): Bitmap? = withContext(Dispatchers.IO) {
    try {
        val source = ImageDecoder.createSource(context.contentResolver, uri)
        ImageDecoder.decodeBitmap(source) { decoder, info, _ ->
            decoder.allocator = ImageDecoder.ALLOCATOR_SOFTWARE
            val sourceWidth = info.size.width.coerceAtLeast(1)
            val sourceHeight = info.size.height.coerceAtLeast(1)
            val scale = minOf(
                1f,
                fallbackWidth.toFloat() / sourceWidth.toFloat(),
                fallbackHeight.toFloat() / sourceHeight.toFloat(),
                2048f / sourceWidth.toFloat(),
                2048f / sourceHeight.toFloat()
            )
            decoder.setTargetSize(
                max((sourceWidth * scale).roundToInt(), 1),
                max((sourceHeight * scale).roundToInt(), 1)
            )
        }
    } catch (e: Exception) {
        PLog.e("PhantomPipCropScreen", "Failed to load crop preview background", e)
        null
    }
}

private fun createCropPreviewBitmap(width: Int, height: Int): Bitmap {
    val bitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888)
    val canvas = Canvas(bitmap)

    val backgroundPaint = Paint(Paint.ANTI_ALIAS_FLAG).apply {
        shader = LinearGradient(
            0f,
            0f,
            width.toFloat(),
            height.toFloat(),
            intArrayOf(
                android.graphics.Color.parseColor("#1B1F2A"),
                android.graphics.Color.parseColor("#26344A"),
                android.graphics.Color.parseColor("#0F1218")
            ),
            floatArrayOf(0f, 0.55f, 1f),
            Shader.TileMode.CLAMP
        )
    }
    canvas.drawRect(0f, 0f, width.toFloat(), height.toFloat(), backgroundPaint)

    val panelPaint = Paint(Paint.ANTI_ALIAS_FLAG).apply {
        color = android.graphics.Color.argb(60, 255, 255, 255)
    }
    val accentPaint = Paint(Paint.ANTI_ALIAS_FLAG).apply {
        color = android.graphics.Color.parseColor("#FF8C42")
    }
    val linePaint = Paint(Paint.ANTI_ALIAS_FLAG).apply {
        color = android.graphics.Color.argb(70, 255, 255, 255)
        strokeWidth = max(width, height) / 220f
    }

    val inset = width * 0.08f
    val topBarHeight = height * 0.12f
    canvas.drawRoundRect(
        RectF(inset, inset, width - inset, inset + topBarHeight),
        width * 0.03f,
        width * 0.03f,
        panelPaint
    )

    val contentTop = inset + topBarHeight + height * 0.05f
    val contentRect = RectF(
        inset,
        contentTop,
        width - inset,
        height - inset
    )
    canvas.drawRoundRect(
        contentRect,
        width * 0.04f,
        width * 0.04f,
        panelPaint
    )

    val thirdsX1 = contentRect.left + contentRect.width() / 3f
    val thirdsX2 = contentRect.left + contentRect.width() * 2f / 3f
    val thirdsY1 = contentRect.top + contentRect.height() / 3f
    val thirdsY2 = contentRect.top + contentRect.height() * 2f / 3f
    canvas.drawLine(thirdsX1, contentRect.top, thirdsX1, contentRect.bottom, linePaint)
    canvas.drawLine(thirdsX2, contentRect.top, thirdsX2, contentRect.bottom, linePaint)
    canvas.drawLine(contentRect.left, thirdsY1, contentRect.right, thirdsY1, linePaint)
    canvas.drawLine(contentRect.left, thirdsY2, contentRect.right, thirdsY2, linePaint)

    val accentWidth = contentRect.width() * 0.18f
    val accentHeight = contentRect.height() * 0.1f
    canvas.drawRoundRect(
        RectF(
            contentRect.left + contentRect.width() * 0.08f,
            contentRect.top + contentRect.height() * 0.1f,
            contentRect.left + contentRect.width() * 0.08f + accentWidth,
            contentRect.top + contentRect.height() * 0.1f + accentHeight
        ),
        width * 0.025f,
        width * 0.025f,
        accentPaint
    )

    val previewCardPaint = Paint(Paint.ANTI_ALIAS_FLAG).apply {
        color = android.graphics.Color.argb(45, 0, 0, 0)
    }
    val cardWidth = contentRect.width() * 0.34f
    val cardHeight = contentRect.height() * 0.22f
    val cardTop = contentRect.bottom - cardHeight - contentRect.height() * 0.08f
    repeat(2) { index ->
        val left = contentRect.left + contentRect.width() * (0.08f + index * 0.42f)
        canvas.drawRoundRect(
            RectF(left, cardTop, left + cardWidth, cardTop + cardHeight),
            width * 0.025f,
            width * 0.025f,
            previewCardPaint
        )
    }

    return bitmap
}
