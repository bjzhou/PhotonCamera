package com.hinnka.mycamera.ui.components

import androidx.compose.foundation.border
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.pager.HorizontalPager
import androidx.compose.foundation.pager.PageSize
import androidx.compose.foundation.pager.PagerDefaults
import androidx.compose.foundation.pager.PagerSnapDistance
import androidx.compose.foundation.pager.PagerState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.drawWithCache
import androidx.compose.ui.graphics.BlendMode
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.CompositingStrategy
import androidx.compose.ui.graphics.graphicsLayer
import androidx.compose.ui.unit.dp
import com.hinnka.mycamera.ui.theme.AccentColor
import kotlinx.coroutines.launch

@Composable
internal fun <T> CompactLookCarousel(
    options: List<T>,
    key: (T) -> String,
    selectedId: String?,
    onSelected: (T) -> Unit,
    modifier: Modifier = Modifier,
    selectOnSettle: Boolean = false,
    content: @Composable (item: T, selected: Boolean, onClick: () -> Unit, modifier: Modifier) -> Unit
) {
    if (options.isEmpty()) return
    val ids = remember(options) { options.map(key) }
    val pager = remember(ids) {
        PagerState(currentPage = ids.indexOf(selectedId).coerceAtLeast(0)) { ids.size }
    }
    val items by rememberUpdatedState(options)
    val scope = rememberCoroutineScope()
    val activeId by rememberUpdatedState(selectedId)
    val select by rememberUpdatedState(onSelected)

    LaunchedEffect(pager, selectOnSettle) {
        var previousActive = activeId
        fun selectionPage() = if (selectOnSettle) pager.settledPage else pager.currentPage
        var previousPage = selectionPage()
        val pendingSelections = mutableListOf<String>()
        snapshotFlow { activeId to selectionPage() }.collect { (active, page) ->
            if (active != previousActive) {
                previousActive = active
                // Recomposition may acknowledge several crossed thumbnails at once.
                val acknowledged = pendingSelections.lastIndexOf(active)
                if (acknowledged >= 0) {
                    pendingSelections.subList(0, acknowledged + 1).clear()
                } else {
                    pendingSelections.clear()
                    val index = ids.indexOf(active)
                    if (index >= 0 && index != page) pager.scrollToPage(index)
                    previousPage = selectionPage()
                    return@collect
                }
            }
            if (page != previousPage) {
                previousPage = page
                val centeredId = ids[page]
                if (centeredId != (pendingSelections.lastOrNull() ?: active)) {
                    pendingSelections.add(centeredId)
                    select(items[page])
                }
            }
        }
    }

    BoxWithConstraints(modifier.fillMaxWidth(), contentAlignment = Alignment.Center) {
        val slot = maxWidth / 5
        val thumb = (slot - 10.dp).coerceIn(1.dp, 40.dp)
        HorizontalPager(
            state = pager,
            pageSize = PageSize.Fixed(slot),
            contentPadding = PaddingValues(horizontal = (maxWidth - slot) / 2),
            flingBehavior = PagerDefaults.flingBehavior(pager, pagerSnapDistance = PagerSnapDistance.atMost(5)),
            key = { ids[it] },
            modifier = Modifier.fillMaxWidth()
                .graphicsLayer { compositingStrategy = CompositingStrategy.Offscreen }
                .drawWithCache {
                    val mask = Brush.horizontalGradient(
                        0f to Color.Transparent,
                        0.16f to Color.Black,
                        0.84f to Color.Black,
                        1f to Color.Transparent
                    )
                    onDrawWithContent {
                        drawContent()
                        drawRect(mask, blendMode = BlendMode.DstIn)
                    }
                }
        ) { index ->
            val centered = pager.currentPage == index && !pager.isScrollInProgress
            Box(Modifier.fillMaxWidth(), contentAlignment = Alignment.Center) {
                content(options[index], centered && ids[index] == selectedId, {
                    if (centered) {
                        if (ids[index] != activeId) select(items[index])
                    } else {
                        scope.launch { pager.animateScrollToPage(index) }
                    }
                }, Modifier.width(thumb))
            }
        }
        if (selectedId in ids || pager.isScrollInProgress) Box(Modifier.size(thumb).border(2.dp, AccentColor, RoundedCornerShape(12.dp)))
    }
}
