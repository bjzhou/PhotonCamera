package com.hinnka.mycamera.ui.components

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.BoxWithConstraints
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.lazy.rememberLazyListState
import androidx.compose.foundation.lazy.grid.GridCells
import androidx.compose.foundation.lazy.grid.LazyVerticalGrid
import androidx.compose.foundation.lazy.grid.items
import androidx.compose.foundation.lazy.grid.rememberLazyGridState
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.SideEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.Alignment
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.unit.Density
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp

private const val LookOptionColumns = 5
private const val LookOptionVisibleRows = 3
private val LookOptionPadding = 8.dp
private val LookOptionVerticalPadding = 4.dp
private val LookOptionColumnSpacing = 8.dp
private val LookOptionRowSpacing = 6.dp
private val LookOptionExpandedSize = 48.dp

private fun lookOptionCellWidth(width: Dp, density: Density): Dp = with(density) {
    // Round down in pixels so five compact cards never clip the last card at fractional densities.
    val available = width.roundToPx() - LookOptionPadding.roundToPx() * 2 -
        LookOptionColumnSpacing.roundToPx() * (LookOptionColumns - 1)
    (available.coerceAtLeast(0) / LookOptionColumns).toDp()
}

@Composable
internal fun lookOptionGridHeight(width: Dp, footerHeight: Dp): Dp = with(LocalDensity.current) {
    val cellHeight = (minOf(lookOptionCellWidth(width, this), LookOptionExpandedSize) + footerHeight).roundToPx()
    (cellHeight * LookOptionVisibleRows +
        LookOptionRowSpacing.roundToPx() * (LookOptionVisibleRows - 1) +
        LookOptionVerticalPadding.roundToPx() * 2).toDp()
}

/** Fit five options across the available width and exactly three rows in the expanded viewport. */
@Composable
internal fun <T> LookOptionList(
    options: List<T>,
    key: (T) -> String,
    selectedIndex: Int,
    expanded: Boolean,
    itemFooterHeight: Dp = 0.dp,
    modifier: Modifier = Modifier,
    contentKey: Any? = null,
    content: @Composable (T) -> Unit
) {
    BoxWithConstraints(modifier.fillMaxWidth()) {
        if (expanded) {
            val selectedRowStart = selectedIndex.coerceAtLeast(0) / LookOptionColumns * LookOptionColumns
            val gridState = rememberLazyGridState(initialFirstVisibleItemIndex = selectedRowStart)
            val scrollRequest = contentKey to selectedIndex
            var appliedRequest by remember { mutableStateOf(scrollRequest) }
            SideEffect {
                if (appliedRequest != scrollRequest) {
                    gridState.requestScrollToItem(selectedRowStart)
                    appliedRequest = scrollRequest
                }
            }
            val itemWidth = minOf(lookOptionCellWidth(maxWidth, LocalDensity.current), LookOptionExpandedSize)
            val cellHeight = itemWidth + itemFooterHeight
            LazyVerticalGrid(
                columns = GridCells.Fixed(LookOptionColumns),
                state = gridState,
                modifier = Modifier.fillMaxWidth().height(lookOptionGridHeight(maxWidth, itemFooterHeight)),
                contentPadding = PaddingValues(horizontal = LookOptionPadding, vertical = LookOptionVerticalPadding),
                horizontalArrangement = Arrangement.spacedBy(LookOptionColumnSpacing),
                verticalArrangement = Arrangement.spacedBy(LookOptionRowSpacing)
            ) {
                items(options, key = key) {
                    Box(
                        modifier = Modifier.fillMaxWidth().height(cellHeight),
                        contentAlignment = Alignment.TopCenter
                    ) {
                        Box(Modifier.width(itemWidth), propagateMinConstraints = true) { content(it) }
                    }
                }
            }
        } else {
            val listState = rememberLazyListState()
            LaunchedEffect(contentKey, selectedIndex) {
                listState.scrollToItem((selectedIndex - 1).coerceAtLeast(0))
            }
            LazyRow(
                state = listState,
                modifier = Modifier.fillMaxWidth(),
                contentPadding = PaddingValues(horizontal = LookOptionPadding),
                horizontalArrangement = Arrangement.spacedBy(LookOptionColumnSpacing)
            ) {
                items(options, key = key) { content(it) }
            }
        }
    }
}
