package com.hinnka.mycamera.ui.components

import androidx.annotation.StringRes
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.key
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.stringResource
import com.hinnka.mycamera.R
import com.hinnka.mycamera.raw.SpectralRgb
import com.hinnka.mycamera.ui.settings.DropdownSettingItem
import kotlin.math.abs
import kotlin.math.expm1
import kotlin.math.ln1p
import kotlin.math.roundToInt
import kotlin.math.sign

@Composable
internal fun SpektrafilmNumberSetting(
    @StringRes title: Int,
    value: Float,
    range: ClosedFloatingPointRange<Float>,
    step: Float,
    resetValue: Float,
    @StringRes format: Int = R.string.spektrafilm_value_decimal,
    logarithmicScale: Float? = null,
    onCommit: (Float) -> Unit,
) {
    val context = LocalContext.current
    var pending by remember { mutableStateOf<Float?>(null) }
    val number = pending ?: value
    fun toPosition(number: Float): Float = logarithmicScale?.let { scale ->
        sign(number) * ln1p(abs(number) / scale)
    } ?: number
    val positionRange = toPosition(range.start)..toPosition(range.endInclusive)
    SliderSettingItem(
        title = stringResource(title),
        value = toPosition(number),
        valueRange = positionRange,
        resetValue = toPosition(resetValue),
        valueTextFormatter = {
            val displayValue = if (format == R.string.spektrafilm_value_percent) number * 100f else number
            context.getString(format, displayValue)
        },
        onResetValue = {
            pending = null
            onCommit(resetValue)
        },
        onValueChange = { position ->
            pending = when {
                position <= positionRange.start -> range.start
                position >= positionRange.endInclusive -> range.endInclusive
                else -> {
                    val adjusted = logarithmicScale?.let { scale ->
                        sign(position) * expm1(abs(position)) * scale
                    } ?: position
                    ((adjusted / step).roundToInt() * step).coerceIn(range)
                }
            }
        },
        onValueChangeFinished = {
            pending?.let(onCommit)
            pending = null
        },
    )
}

internal class SpektrafilmNumberSpec<T>(
    @param:StringRes val title: Int,
    val range: ClosedFloatingPointRange<Float>,
    val step: Float,
    val read: (T) -> Float,
    @param:StringRes val format: Int = R.string.spektrafilm_value_decimal,
    val logarithmicScale: Float? = null,
    val write: T.(Float) -> T,
)

@Composable
internal fun <T> SpektrafilmNumberControls(
    specs: List<SpektrafilmNumberSpec<T>>,
    settings: T,
    defaults: T,
    onCommit: (T) -> Unit,
) {
    for (spec in specs) {
        SpektrafilmNumberControl(spec, settings, defaults, onCommit)
    }
}

@Composable
internal fun <T> SpektrafilmNumberControl(
    spec: SpektrafilmNumberSpec<T>,
    settings: T,
    defaults: T,
    onCommit: (T) -> Unit,
) {
    key(spec.title) {
        SpektrafilmNumberSetting(
            title = spec.title,
            value = spec.read(settings),
            range = spec.range,
            step = spec.step,
            resetValue = spec.read(defaults),
            format = spec.format,
            logarithmicScale = spec.logarithmicScale,
            onCommit = { onCommit(spec.write(settings, it)) },
        )
    }
}

private data class RgbChannel(
    val title: Int,
    val read: (SpectralRgb) -> Float,
    val write: SpectralRgb.(Float) -> SpectralRgb,
)

private val rgbChannels = listOf(
    RgbChannel(R.string.recipe_lch_red, SpectralRgb::r) { copy(r = it) },
    RgbChannel(R.string.recipe_lch_green, SpectralRgb::g) { copy(g = it) },
    RgbChannel(R.string.recipe_lch_blue, SpectralRgb::b) { copy(b = it) },
)

@Composable
internal fun SpektrafilmRgbSetting(
    @StringRes title: Int,
    value: SpectralRgb,
    defaults: SpectralRgb,
    range: ClosedFloatingPointRange<Float>,
    step: Float,
    @StringRes format: Int = R.string.spektrafilm_value_decimal,
    @StringRes redTitle: Int = R.string.recipe_lch_red,
    @StringRes greenTitle: Int = R.string.recipe_lch_green,
    @StringRes blueTitle: Int = R.string.recipe_lch_blue,
    maxAtDefault: Boolean = false,
    onCommit: (SpectralRgb) -> Unit,
) {
    FilmAdjustmentSection(title) {
        val titles = intArrayOf(redTitle, greenTitle, blueTitle)
        rgbChannels.forEachIndexed { index, channel ->
            key(channel.title) {
                val resetValue = channel.read(defaults)
                val maximum = if (maxAtDefault) resetValue else range.endInclusive
                if (maximum > range.start) {
                    SpektrafilmNumberSetting(
                        title = titles[index],
                        value = channel.read(value),
                        range = range.start..maximum,
                        step = step,
                        resetValue = resetValue,
                        format = format,
                        onCommit = { onCommit(channel.write(value, it)) },
                    )
                }
            }
        }
    }
}

@Composable
internal fun <T> SpektrafilmChoiceSetting(
    @StringRes title: Int,
    value: T,
    choices: List<Pair<T, String>>,
    onCommit: (T) -> Unit,
) {
    DropdownSettingItem(
        title = stringResource(title),
        value = choices.first { it.first == value }.second,
        options = choices.map { it.second },
        isLoading = false,
        onExpanded = {},
        onOptionSelected = { label -> onCommit(choices.first { it.second == label }.first) },
    )
}
