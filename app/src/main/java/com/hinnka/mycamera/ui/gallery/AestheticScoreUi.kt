package com.hinnka.mycamera.ui.gallery

import androidx.annotation.StringRes
import androidx.compose.animation.core.FastOutSlowInEasing
import androidx.compose.animation.core.animateFloatAsState
import androidx.compose.animation.core.tween
import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.BoxWithConstraints
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.offset
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Close
import androidx.compose.material3.BottomSheetDefaults
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.Surface
import androidx.compose.material3.Switch
import androidx.compose.material3.SwitchDefaults
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.material3.rememberModalBottomSheetState
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.hinnka.mycamera.R
import com.hinnka.mycamera.data.UserPreferences
import com.hinnka.mycamera.gallery.MediaData
import com.hinnka.mycamera.ui.components.AppModalBottomSheet
import com.hinnka.mycamera.ui.prefs.rememberPreference
import com.hinnka.mycamera.ui.theme.AccentColor
import com.hinnka.mycamera.ui.theme.OnAccentColor
import com.hinnka.mycamera.viewmodel.GalleryViewModel
import java.util.Locale

/** Score bands on the LAION aesthetic scale (about 1..10), highest first. */
enum class AestheticTier(val minScore: Float, @StringRes val labelRes: Int, val argb: Int) {
    EXCEPTIONAL(6.5f, R.string.aesthetic_tier_exceptional, 0xFFF0C96B.toInt()),
    GREAT(5.75f, R.string.aesthetic_tier_great, 0xFFE7904F.toInt()),
    GOOD(5.0f, R.string.aesthetic_tier_good, 0xFFD7A36D.toInt()),
    FAIR(4.0f, R.string.aesthetic_tier_fair, 0xFFB8B2A7.toInt()),
    WEAK(Float.NEGATIVE_INFINITY, R.string.aesthetic_tier_weak, 0xFFD98270.toInt());

    val color: Color get() = Color(argb)

    companion object {
        fun of(score: Float): AestheticTier = entries.first { score >= it.minScore }
    }
}

const val AESTHETIC_SCALE_MIN = 1f
const val AESTHETIC_SCALE_MAX = 10f

/** Scores are shown with one decimal, clamped to the 1..10 scale. */
fun formatAestheticScore(score: Float): String =
    String.format(Locale.getDefault(), "%.1f", score.coerceIn(AESTHETIC_SCALE_MIN, AESTHETIC_SCALE_MAX))

/** Other scored photos needed before a rank within the album is shown. */
private const val MIN_RANK_POPULATION = 5

private val SheetBackground = Color(0xFF11110F)
private val SheetSurface = Color(0xFF1A1A17)
private val SheetOnSurface = Color(0xFFF3EFE7)

private sealed interface AestheticUiState {
    data object Scoring : AestheticUiState
    data class Scored(val score: Float) : AestheticUiState
    data object Failed : AestheticUiState
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun AestheticScoreSheet(
    photo: MediaData,
    viewModel: GalleryViewModel,
    onDismissRequest: () -> Unit
) {
    val sheetState = rememberModalBottomSheetState(skipPartiallyExpanded = true)
    var requestToken by remember(photo.id) { mutableIntStateOf(0) }
    var uiState by remember(photo.id) { mutableStateOf<AestheticUiState>(AestheticUiState.Scoring) }
    LaunchedEffect(photo.id, requestToken) {
        uiState = AestheticUiState.Scoring
        uiState = viewModel.scoreAesthetic(photo)?.let { AestheticUiState.Scored(it) } ?: AestheticUiState.Failed
    }

    AppModalBottomSheet(
        containerColor = SheetBackground,
        onDismissRequest = onDismissRequest,
        sheetState = sheetState,
        dragHandle = { BottomSheetDefaults.DragHandle(color = SheetOnSurface.copy(alpha = 0.28f)) }
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .verticalScroll(rememberScrollState())
                .padding(bottom = 36.dp, start = 20.dp, end = 20.dp)
        ) {
            Row(
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(bottom = 20.dp),
                verticalAlignment = Alignment.CenterVertically
            ) {
                Column(modifier = Modifier.weight(1f)) {
                    Text(
                        text = stringResource(R.string.gallery_aesthetic_score),
                        color = SheetOnSurface,
                        fontSize = 22.sp,
                        fontWeight = FontWeight.SemiBold
                    )
                    Spacer(modifier = Modifier.height(4.dp))
                    Text(
                        text = stringResource(R.string.aesthetic_sheet_subtitle),
                        color = SheetOnSurface.copy(alpha = 0.5f),
                        fontSize = 12.sp
                    )
                }
                IconButton(onClick = onDismissRequest) {
                    Icon(
                        imageVector = Icons.Default.Close,
                        contentDescription = stringResource(R.string.cancel),
                        tint = SheetOnSurface.copy(alpha = 0.62f)
                    )
                }
            }

            when (val state = uiState) {
                AestheticUiState.Scoring -> ScoringCard()
                AestheticUiState.Failed -> FailedCard(onRetry = { requestToken += 1 })
                is AestheticUiState.Scored -> {
                    ScoreCard(score = state.score)
                    Spacer(modifier = Modifier.height(12.dp))
                    AlbumRankCard(photo = photo, score = state.score, viewModel = viewModel)
                }
            }

            Spacer(modifier = Modifier.height(12.dp))
            ShowInGalleryRow()
            Spacer(modifier = Modifier.height(18.dp))
            Text(
                text = stringResource(R.string.aesthetic_note),
                color = SheetOnSurface.copy(alpha = 0.38f),
                fontSize = 11.sp,
                lineHeight = 16.sp,
                modifier = Modifier.padding(horizontal = 4.dp)
            )
        }
    }
}

@Composable
private fun SheetCard(content: @Composable () -> Unit) {
    Surface(
        color = SheetSurface,
        shape = RoundedCornerShape(24.dp),
        border = BorderStroke(1.dp, SheetOnSurface.copy(alpha = 0.08f)),
        modifier = Modifier.fillMaxWidth(),
        content = content
    )
}

@Composable
private fun ScoringCard() {
    SheetCard {
        Column(
            modifier = Modifier.padding(vertical = 40.dp, horizontal = 24.dp),
            horizontalAlignment = Alignment.CenterHorizontally
        ) {
            CircularProgressIndicator(
                color = AccentColor,
                modifier = Modifier.size(28.dp),
                strokeWidth = 3.dp
            )
            Spacer(modifier = Modifier.height(16.dp))
            Text(
                text = stringResource(R.string.aesthetic_scoring),
                color = SheetOnSurface.copy(alpha = 0.7f),
                fontSize = 14.sp
            )
        }
    }
}

@Composable
private fun FailedCard(onRetry: () -> Unit) {
    SheetCard {
        Column(
            modifier = Modifier.padding(24.dp),
            horizontalAlignment = Alignment.CenterHorizontally
        ) {
            Text(
                text = stringResource(R.string.aesthetic_failed),
                color = SheetOnSurface,
                fontSize = 15.sp
            )
            Spacer(modifier = Modifier.height(8.dp))
            TextButton(onClick = onRetry) {
                Text(
                    text = stringResource(R.string.hf_model_retry),
                    color = AccentColor,
                    fontWeight = FontWeight.SemiBold
                )
            }
        }
    }
}

@Composable
private fun ScoreCard(score: Float) {
    val tier = AestheticTier.of(score)
    SheetCard {
        Column(modifier = Modifier.padding(22.dp)) {
            Row(
                modifier = Modifier.fillMaxWidth(),
                verticalAlignment = Alignment.CenterVertically
            ) {
                Row(verticalAlignment = Alignment.Bottom, modifier = Modifier.weight(1f)) {
                    Text(
                        text = formatAestheticScore(score),
                        color = tier.color,
                        fontSize = 56.sp,
                        fontWeight = FontWeight.SemiBold,
                        lineHeight = 58.sp
                    )
                    Text(
                        text = stringResource(R.string.aesthetic_score_out_of),
                        color = SheetOnSurface.copy(alpha = 0.42f),
                        fontSize = 14.sp,
                        modifier = Modifier.padding(bottom = 9.dp, start = 4.dp)
                    )
                }
                Surface(
                    color = tier.color.copy(alpha = 0.12f),
                    shape = CircleShape,
                    border = BorderStroke(1.dp, tier.color.copy(alpha = 0.28f))
                ) {
                    Text(
                        text = stringResource(tier.labelRes),
                        color = tier.color,
                        fontSize = 12.sp,
                        fontWeight = FontWeight.SemiBold,
                        modifier = Modifier.padding(horizontal = 13.dp, vertical = 7.dp)
                    )
                }
            }
            Spacer(modifier = Modifier.height(20.dp))
            AestheticScale(score = score)
        }
    }
}

/** The 1..10 scale divided into the tier bands, with a marker at [score]. */
@Composable
private fun AestheticScale(score: Float) {
    val range = AESTHETIC_SCALE_MAX - AESTHETIC_SCALE_MIN
    val fraction = ((score - AESTHETIC_SCALE_MIN) / range).coerceIn(0f, 1f)
    val animatedFraction by animateFloatAsState(
        targetValue = fraction,
        animationSpec = tween(900, easing = FastOutSlowInEasing),
        label = "aestheticScaleMarker"
    )
    val bands = AestheticTier.entries.reversed()
    Column {
        BoxWithConstraints(
            modifier = Modifier
                .fillMaxWidth()
                .height(14.dp)
        ) {
            Row(
                modifier = Modifier
                    .fillMaxWidth()
                    .height(6.dp)
                    .align(Alignment.Center),
                horizontalArrangement = Arrangement.spacedBy(2.dp)
            ) {
                bands.forEachIndexed { index, band ->
                    val start = band.minScore.coerceAtLeast(AESTHETIC_SCALE_MIN)
                    val end = bands.getOrNull(index + 1)?.minScore ?: AESTHETIC_SCALE_MAX
                    Box(
                        modifier = Modifier
                            .weight(end - start)
                            .fillMaxHeight()
                            .background(band.color.copy(alpha = 0.45f), CircleShape)
                    )
                }
            }
            val markerSize = 14.dp
            Box(
                modifier = Modifier
                    .offset(x = (maxWidth - markerSize) * animatedFraction)
                    .size(markerSize)
                    .background(SheetOnSurface, CircleShape)
                    .border(3.dp, AestheticTier.of(score).color, CircleShape)
            )
        }
        Spacer(modifier = Modifier.height(6.dp))
        Row(modifier = Modifier.fillMaxWidth()) {
            Text(
                text = formatAestheticScore(AESTHETIC_SCALE_MIN),
                color = SheetOnSurface.copy(alpha = 0.38f),
                fontSize = 11.sp,
                modifier = Modifier.weight(1f)
            )
            Text(
                text = formatAestheticScore(AESTHETIC_SCALE_MAX),
                color = SheetOnSurface.copy(alpha = 0.38f),
                fontSize = 11.sp
            )
        }
    }
}

/** Where [score] stands among the other scored photos of the album being browsed. */
@Composable
private fun AlbumRankCard(photo: MediaData, score: Float, viewModel: GalleryViewModel) {
    val photos by viewModel.currentPhotos.collectAsState()
    val scores by viewModel.aestheticScores.collectAsState()
    val others = remember(photos, scores, photo.id) {
        photos.filter { it.isImage && it.id != photo.id }
            .mapNotNull { scores[viewModel.aestheticScoreKey(it)] }
    }
    val text = if (others.size >= MIN_RANK_POPULATION) {
        val percent = others.count { it < score } * 100 / others.size
        stringResource(R.string.aesthetic_rank, percent, others.size)
    } else {
        stringResource(R.string.aesthetic_rank_pending)
    }
    Surface(
        color = AccentColor.copy(alpha = 0.08f),
        shape = RoundedCornerShape(18.dp),
        border = BorderStroke(1.dp, AccentColor.copy(alpha = 0.18f)),
        modifier = Modifier.fillMaxWidth()
    ) {
        Text(
            text = text,
            color = SheetOnSurface.copy(alpha = 0.82f),
            fontSize = 14.sp,
            lineHeight = 20.sp,
            modifier = Modifier.padding(17.dp)
        )
    }
}

@Composable
private fun ShowInGalleryRow() {
    var showInGallery by rememberPreference(UserPreferences::showAestheticScores)
    Surface(
        color = SheetSurface,
        shape = RoundedCornerShape(18.dp),
        border = BorderStroke(1.dp, SheetOnSurface.copy(alpha = 0.07f)),
        modifier = Modifier.fillMaxWidth()
    ) {
        Row(
            modifier = Modifier.padding(horizontal = 17.dp, vertical = 12.dp),
            verticalAlignment = Alignment.CenterVertically
        ) {
            Column(modifier = Modifier.weight(1f)) {
                Text(
                    text = stringResource(R.string.aesthetic_show_in_gallery),
                    color = SheetOnSurface.copy(alpha = 0.86f),
                    fontSize = 14.sp,
                    fontWeight = FontWeight.Medium
                )
                Spacer(modifier = Modifier.height(2.dp))
                Text(
                    text = stringResource(R.string.aesthetic_show_in_gallery_description),
                    color = SheetOnSurface.copy(alpha = 0.48f),
                    fontSize = 12.sp,
                    lineHeight = 17.sp
                )
            }
            Spacer(modifier = Modifier.width(12.dp))
            Switch(
                checked = showInGallery,
                onCheckedChange = { showInGallery = it },
                colors = SwitchDefaults.colors(
                    checkedThumbColor = OnAccentColor,
                    checkedTrackColor = AccentColor
                )
            )
        }
    }
}
