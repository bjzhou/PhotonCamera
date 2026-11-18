package com.hinnka.mycamera.ui.components

import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.ExperimentalLayoutApi
import androidx.compose.foundation.layout.FlowRow
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Check
import androidx.compose.material3.BottomSheetDefaults
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.Icon
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateMapOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.hinnka.mycamera.R
import com.hinnka.mycamera.raw.fotufilm.FotufilmCatalogue
import com.hinnka.mycamera.raw.fotufilm.FotufilmDocument
import com.hinnka.mycamera.raw.fotufilm.FotufilmRuntime
import com.hinnka.mycamera.ui.icons.AppIcons
import com.hinnka.mycamera.ui.theme.AccentColor
import com.hinnka.mycamera.ui.theme.OnAccentColor
import com.hinnka.mycamera.utils.PLog
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import kotlin.math.abs

/**
 * The Fotufilm edit: upstream's Android control catalogue resolved for the document's film and
 * output medium. Light, balance, colour and grade controls are the RAW pipeline's own and are
 * not repeated here; Camera Preflash, which exposes the film itself, is.
 */
@Composable
fun FotufilmControls(
    document: FotufilmDocument,
    onDocumentChange: (FotufilmDocument) -> Unit,
    onAdjustmentStart: () -> Unit,
    onAdjustmentEnd: () -> Unit,
) {
    val context = LocalContext.current
    val scope = rememberCoroutineScope()
    var catalogue by remember(document.stockId) { mutableStateOf<FotufilmCatalogue?>(null) }
    // Slider positions while a drag is in flight; the document changes when the drag ends.
    val dragging = remember(document.stockId) { mutableStateMapOf<String, Float>() }

    LaunchedEffect(document) {
        catalogue = withContext(Dispatchers.Default) {
            runCatching { FotufilmRuntime.catalogue(context, document) }
                .onFailure { PLog.e(TAG, "Fotufilm catalogue unavailable for ${document.stockId}", it) }
                .getOrNull()
        } ?: catalogue
    }
    val current = catalogue ?: return

    fun commit(next: FotufilmDocument) {
        onDocumentChange(next)
        onAdjustmentEnd()
    }

    fun changeStock(stockId: String) {
        scope.launch {
            val next = withContext(Dispatchers.Default) { documentForStock(context, document, stockId) }
            if (next != null) commit(next)
        }
    }

    Column(modifier = Modifier.fillMaxWidth()) {
        val visible = current.controls.filter { control ->
            control.available && control.kind !is FotufilmCatalogue.Kind.Other &&
                (control.section in SHOWN_SECTIONS || control.field in SHOWN_LIGHT_FIELDS) &&
                (control.foldsUnder == null || current.control(control.foldsUnder)?.moved == true)
        }
        visible.groupBy { sectionOf(it) }.forEach { (section, controls) ->
            Text(
                text = FotufilmStrings.section(section),
                color = Color.White.copy(alpha = 0.5f),
                fontSize = 12.sp,
                fontWeight = FontWeight.Medium,
                modifier = Modifier.padding(top = 12.dp, bottom = 4.dp),
            )
            controls.forEach { control ->
                FotufilmControl(
                    control = control,
                    draggingValue = dragging[control.field],
                    onDrag = { value ->
                        onAdjustmentStart()
                        dragging[control.field] = value
                    },
                    onDragEnd = {
                        val value = dragging.remove(control.field) ?: return@FotufilmControl
                        commit(document.withNumber(control, value.toDouble()))
                    },
                    onValue = { value ->
                        onAdjustmentStart()
                        commit(document.withValue(control, value))
                    },
                    onStock = ::changeStock,
                )
            }
        }
    }
}

@Composable
private fun FotufilmControl(
    control: FotufilmCatalogue.Control,
    draggingValue: Float?,
    onDrag: (Float) -> Unit,
    onDragEnd: () -> Unit,
    onValue: (FotufilmDocument.Value?) -> Unit,
    onStock: (String) -> Unit,
) {
    val context = LocalContext.current
    val title = FotufilmStrings.title(control.field)
    val description = FotufilmStrings.description(control.field)
    val indent = if (control.foldsUnder != null) Modifier.padding(start = 12.dp) else Modifier
    when (val kind = control.kind) {
        is FotufilmCatalogue.Kind.Slider -> {
            val scale = kind.scale
            val stored = (control.value as? FotufilmDocument.Value.Number)?.value ?: scale.neutral
            // Push/pull selects complete development curves, not an interpolated value.
            // Other sliders (e.g. age) use stops only as suggested detents.
            if (control.field == PUSH_FIELD) {
                val stops = scale.stops.distinct()
                FotufilmChips(
                    title = title,
                    description = description,
                    options = stops.map { it to FotufilmStrings.formatValue(context, scale, it.toFloat()) },
                    selected = stops.firstOrNull { matchesDevelopmentStop(it, stored) },
                    onSelected = { value ->
                        onValue(if (value == scale.neutral) null else FotufilmDocument.Value.Number(value))
                    },
                    modifier = indent,
                )
                return
            }
            SliderSettingItem(
                title = title,
                description = description,
                value = draggingValue ?: stored.toFloat(),
                valueRange = scale.min.toFloat()..scale.max.toFloat(),
                resetValue = scale.neutral.toFloat(),
                onResetValue = { onValue(null) },
                valueTextFormatter = { FotufilmStrings.formatValue(context, scale, it) },
                onValueChange = onDrag,
                onValueChangeFinished = onDragEnd,
                modifier = indent,
            )
        }

        is FotufilmCatalogue.Kind.Chips -> {
            val stored = (control.value as? FotufilmDocument.Value.Number)?.value ?: kind.scale.neutral
            FotufilmChips(
                title = title,
                description = description,
                options = kind.chips.map { it.value to FotufilmStrings.chip(control.field, it) },
                selected = kind.chips.minByOrNull { abs(it.value - stored) }?.value,
                onSelected = { value ->
                    onValue(if (value == kind.scale.neutral) null else FotufilmDocument.Value.Number(value))
                },
                modifier = indent,
            )
        }

        is FotufilmCatalogue.Kind.Toggle -> {
            val checked = (control.value as? FotufilmDocument.Value.Flag)?.value ?: kind.restingOn
            SwitchSettingItem(
                title = title,
                description = description,
                checked = checked,
                onCheckedChange = { on ->
                    onValue(if (on == kind.restingOn) null else FotufilmDocument.Value.Flag(on))
                },
                modifier = indent,
            )
        }

        is FotufilmCatalogue.Kind.Menu -> {
            val selected = (control.value as? FotufilmDocument.Value.Choice)?.id ?: kind.defaultChoice
            FotufilmMenu(
                title = title,
                control = control,
                kind = kind,
                selected = selected,
                onSelected = { id ->
                    if (control.field == FotufilmDocument.STOCK_FIELD) {
                        onStock(id)
                    } else {
                        onValue(if (id == kind.defaultChoice) null else FotufilmDocument.Value.Choice(id))
                    }
                },
                modifier = indent,
            )
        }

        FotufilmCatalogue.Kind.Other -> Unit
    }
}

@OptIn(ExperimentalLayoutApi::class)
@Composable
private fun FotufilmChips(
    title: String,
    description: String?,
    options: List<Pair<Double, String>>,
    selected: Double?,
    onSelected: (Double) -> Unit,
    modifier: Modifier,
) {
    Column(modifier = modifier.fillMaxWidth().padding(vertical = 8.dp)) {
        Text(text = title, color = Color.White, fontSize = 16.sp, fontWeight = FontWeight.Normal)
        if (description != null) {
            Spacer(modifier = Modifier.height(4.dp))
            Text(text = description, color = Color.White.copy(alpha = 0.6f), fontSize = 13.sp, lineHeight = 18.sp)
        }
        Spacer(modifier = Modifier.height(12.dp))
        FlowRow(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.spacedBy(8.dp),
            verticalArrangement = Arrangement.spacedBy(8.dp),
        ) {
            options.forEach { (value, label) ->
                val isSelected = value == selected
                Box(
                    modifier = Modifier
                        .height(36.dp)
                        .clip(RoundedCornerShape(8.dp))
                        .background(if (isSelected) AccentColor else Color.White.copy(alpha = 0.1f))
                        .clickable { onSelected(value) }
                        .padding(horizontal = 12.dp),
                    contentAlignment = Alignment.Center,
                ) {
                    Text(
                        text = label,
                        color = if (isSelected) OnAccentColor else Color.White,
                        fontSize = 12.sp,
                        maxLines = 1,
                        overflow = TextOverflow.Ellipsis,
                    )
                }
            }
        }
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
private fun FotufilmMenu(
    title: String,
    control: FotufilmCatalogue.Control,
    kind: FotufilmCatalogue.Kind.Menu,
    selected: String,
    onSelected: (String) -> Unit,
    modifier: Modifier,
) {
    var showSheet by remember { mutableStateOf(false) }
    val selectedChoice = kind.choices.firstOrNull { it.id == selected }
    Row(
        modifier = modifier
            .fillMaxWidth()
            .clickable { showSheet = true }
            .padding(vertical = 8.dp),
        horizontalArrangement = Arrangement.SpaceBetween,
        verticalAlignment = Alignment.CenterVertically,
    ) {
        Column(modifier = Modifier.weight(1f)) {
            Text(text = title, color = Color.White, fontSize = 16.sp, fontWeight = FontWeight.Normal)
            Spacer(modifier = Modifier.height(4.dp))
            Text(
                text = selectedChoice?.let { FotufilmStrings.choice(control.field, kind.menu, it) }
                    ?: stringResource(R.string.none),
                color = Color.White.copy(alpha = 0.6f),
                fontSize = 13.sp,
                lineHeight = 18.sp,
                maxLines = 1,
                overflow = TextOverflow.Ellipsis,
            )
        }
        Spacer(modifier = Modifier.width(16.dp))
        Icon(imageVector = AppIcons.ChevronRight, contentDescription = null, tint = Color.White.copy(alpha = 0.6f))
    }

    if (showSheet) {
        AppModalBottomSheet(
            onDismissRequest = { showSheet = false },
            dragHandle = { BottomSheetDefaults.DragHandle(color = Color.White.copy(alpha = 0.2f)) },
        ) {
            Column(modifier = Modifier.fillMaxWidth().padding(horizontal = 16.dp, vertical = 8.dp)) {
                Text(text = title, color = Color.White, fontSize = 20.sp, fontWeight = FontWeight.Bold)
                Spacer(modifier = Modifier.height(16.dp))
                LazyColumn(
                    modifier = Modifier.fillMaxWidth(),
                    contentPadding = PaddingValues(bottom = 32.dp),
                    verticalArrangement = Arrangement.spacedBy(8.dp),
                ) {
                    items(kind.choices, key = { it.id }) { choice ->
                        val isSelected = choice.id == selected
                        Row(
                            modifier = Modifier
                                .fillMaxWidth()
                                .clip(RoundedCornerShape(12.dp))
                                .background(if (isSelected) AccentColor.copy(alpha = 0.15f) else Color.Transparent)
                                .clickable {
                                    showSheet = false
                                    if (!isSelected) onSelected(choice.id)
                                }
                                .padding(16.dp),
                            verticalAlignment = Alignment.CenterVertically,
                            horizontalArrangement = Arrangement.SpaceBetween,
                        ) {
                            Column(modifier = Modifier.weight(1f)) {
                                Text(
                                    text = FotufilmStrings.choice(control.field, kind.menu, choice),
                                    color = if (isSelected) AccentColor else Color.White,
                                    fontSize = 14.sp,
                                    maxLines = 1,
                                    overflow = TextOverflow.Ellipsis,
                                )
                                // A film's subtitle is profile data (maker and material).
                                if (kind.menu == STOCK_MENU && choice.detail.isNotEmpty()) {
                                    Text(
                                        text = choice.detail,
                                        color = Color.White.copy(alpha = 0.5f),
                                        fontSize = 12.sp,
                                        maxLines = 1,
                                        overflow = TextOverflow.Ellipsis,
                                    )
                                }
                            }
                            if (isSelected) {
                                Icon(
                                    imageVector = Icons.Default.Check,
                                    contentDescription = null,
                                    tint = AccentColor,
                                    modifier = Modifier.size(20.dp),
                                )
                            }
                        }
                    }
                }
            }
        }
    }
}

/** Sets a slider's value; the resting value is the field's absence, as upstream stores it. */
private fun FotufilmDocument.withNumber(control: FotufilmCatalogue.Control, value: Double): FotufilmDocument {
    val kind = control.kind as FotufilmCatalogue.Kind.Slider
    val bounded = value.coerceIn(kind.scale.min, kind.scale.max)
    return if (bounded == kind.scale.neutral) without(control.field)
    else with(control.field, FotufilmDocument.Value.Number(bounded))
}

private fun FotufilmDocument.withValue(control: FotufilmCatalogue.Control, value: FotufilmDocument.Value?): FotufilmDocument =
    if (value == null) without(control.field) else with(control.field, value)

/**
 * The document on another film: the edit carries over, less every value the new film cannot take
 * — a control it does not admit or its medium does not offer, a menu choice it does not list (a
 * shutter time without a stated reciprocity), a number outside its admitted range or a push
 * without a matching development condition. Dropping one can change the medium and with it what
 * is offered, so the check repeats until the document is stable; upstream then accepts it or says why not.
 */
private fun documentForStock(
    context: android.content.Context,
    document: FotufilmDocument,
    stockId: String,
): FotufilmDocument? = runCatching {
    var next = document.withStock(stockId)
    while (true) {
        val catalogue = FotufilmRuntime.catalogue(context, next)
        val rejected = next.values.filter { (field, value) -> !catalogue.accepts(field, value) }.keys
        if (rejected.isEmpty()) {
            check(catalogue.documentError == null) { catalogue.documentError.orEmpty() }
            return@runCatching next
        }
        rejected.forEach { next = next.without(it) }
    }
    @Suppress("UNREACHABLE_CODE")
    error("unreachable")
}.onFailure { PLog.e(TAG, "Unable to move the Fotufilm edit to $stockId", it) }.getOrNull()

private fun FotufilmCatalogue.accepts(field: String, value: FotufilmDocument.Value): Boolean {
    val control = control(field) ?: return false
    if (!control.available) return false
    return when (val kind = control.kind) {
        is FotufilmCatalogue.Kind.Menu ->
            value is FotufilmDocument.Value.Choice && kind.choices.any { it.id == value.id }
        is FotufilmCatalogue.Kind.Slider ->
            value is FotufilmDocument.Value.Number &&
                value.value in kind.scale.admittedMin..kind.scale.admittedMax &&
                (field != PUSH_FIELD || kind.scale.stops.any { matchesDevelopmentStop(it, value.value) })
        is FotufilmCatalogue.Kind.Chips ->
            value is FotufilmDocument.Value.Number &&
                value.value in kind.scale.admittedMin..kind.scale.admittedMax
        is FotufilmCatalogue.Kind.Toggle -> value is FotufilmDocument.Value.Flag
        FotufilmCatalogue.Kind.Other -> true
    }
}

/** Matches FilmStock::supportsDevelopment and developmentCondition in PushPull.cpp. */
private fun matchesDevelopmentStop(stop: Double, value: Double): Boolean =
    if (stop == 0.0) value.toFloat() == 0f else abs(stop.toFloat() - value.toFloat()) <= 1e-4f

private fun sectionOf(control: FotufilmCatalogue.Control): String =
    if (control.field in SHOWN_LIGHT_FIELDS) LIGHT_SECTION else control.section

private const val TAG = "FotufilmControls"
private const val PUSH_FIELD = "push"
private const val STOCK_MENU = "stocks"
private const val LIGHT_SECTION = "lightExposure"
private val SHOWN_SECTIONS = setOf(
    "filmStock", "filmGrain", "filmHalation", "filmEmulsion", "filmLab", "printPaper", "printLamp",
)
private val SHOWN_LIGHT_FIELDS = setOf("cameraPreflash")
