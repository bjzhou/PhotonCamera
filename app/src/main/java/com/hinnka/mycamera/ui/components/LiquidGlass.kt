package com.hinnka.mycamera.ui.components

import android.graphics.BlurMaskFilter
import android.graphics.ColorMatrix
import android.graphics.ColorMatrixColorFilter
import android.graphics.RenderEffect
import android.graphics.RuntimeShader
import android.graphics.Shader
import android.os.Build
import androidx.annotation.RequiresApi
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.BoxScope
import androidx.compose.runtime.Composable
import androidx.compose.runtime.Immutable
import androidx.compose.runtime.Stable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.drawWithCache
import androidx.compose.ui.draw.drawWithContent
import androidx.compose.ui.geometry.CornerRadius
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.geometry.Rect
import androidx.compose.ui.geometry.RoundRect
import androidx.compose.ui.geometry.isSpecified
import androidx.compose.ui.graphics.BlendMode
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.Path
import androidx.compose.ui.graphics.Paint
import androidx.compose.ui.graphics.PaintingStyle
import androidx.compose.ui.graphics.drawscope.drawIntoCanvas
import androidx.compose.ui.graphics.asComposeRenderEffect
import androidx.compose.ui.graphics.drawscope.clipPath
import androidx.compose.ui.graphics.drawscope.clipRect
import androidx.compose.ui.graphics.drawscope.translate
import androidx.compose.ui.graphics.layer.GraphicsLayer
import androidx.compose.ui.graphics.layer.drawLayer
import androidx.compose.ui.graphics.rememberGraphicsLayer
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.layout.onGloballyPositioned
import androidx.compose.ui.layout.positionInRoot
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.IntOffset
import androidx.compose.ui.unit.IntSize
import androidx.compose.ui.unit.dp
import kotlin.math.ceil
import kotlin.math.floor

/**
 * Real-time AndroidLiquidGlass material for Compose UI.
 *
 * Shares the optical model of [com.hinnka.mycamera.frame.FrameLiquidGlass] (Kyant's rounded-rect SDF
 * refraction, vibrancy, 5% surface and directional rim highlight, all with the same parameters), but runs entirely on the RenderThread:
 * the backdrop is a [GraphicsLayer] (RenderNode) referenced by the glass layer, and the effect chain
 * vibrancy -> blur -> lens is a platform RenderEffect. No pixels are read back to the CPU, and the
 * glass node is only re-rendered when its backdrop or geometry changes, not when panel content does.
 *
 * Capability tiers: API 33+ full lens + highlight; API 31-32 vibrancy with a flat rim;
 * API 30 an opaque fallback color without backdrop capture.
 */
@Immutable
data class LiquidGlassStyle(
    // Defaults mirror FrameLiquidGlass: pure lens without blur, 24dp edge profile, 48dp displacement.
    val blurRadius: Dp = 0.dp,
    val refractionHeight: Dp = 24.dp,
    val refractionAmount: Dp = 48.dp,
    val saturation: Float = 1.5f,
    // Upstream glass surface treatment: black at 5%.
    val tint: Color = Color(0x0D000000),
    // Highlight.Default: .5dp inner stroke, .25dp mask blur, white at .5 alpha, additive.
    val highlightWidth: Dp = 0.5.dp,
    val highlightBlur: Dp = 0.25.dp,
    val highlightAlpha: Float = 0.5f,
    val fallbackColor: Color = Color(0xF0141414),
)

/** Backdrop captured by [liquidGlassBackdropSource] and sampled by [LiquidGlassSurface]. */
@Stable
class LiquidGlassBackdrop internal constructor(internal val layer: GraphicsLayer) {
    internal var positionInRoot by mutableStateOf(Offset.Unspecified)
    internal var size by mutableStateOf(IntSize.Zero)
}

@Composable
fun rememberLiquidGlassBackdrop(): LiquidGlassBackdrop {
    val layer = rememberGraphicsLayer()
    return remember(layer) { LiquidGlassBackdrop(layer) }
}

/** Records this node's content into [backdrop] while drawing it unchanged. */
fun Modifier.liquidGlassBackdropSource(backdrop: LiquidGlassBackdrop): Modifier {
    if (!BACKDROP_SUPPORTED) return this
    return this
        .onGloballyPositioned {
            backdrop.positionInRoot = it.positionInRoot()
            backdrop.size = it.size
        }
        .drawWithContent {
            backdrop.layer.record { this@drawWithContent.drawContent() }
            drawLayer(backdrop.layer)
        }
}

/**
 * A rounded-rect glass container. With [openBottomEdge] the shape continues past the bottom bound
 * (e.g. a bottom sheet touching the screen edge), so neither refraction nor rim appears there.
 */
@Composable
fun LiquidGlassSurface(
    backdrop: LiquidGlassBackdrop,
    modifier: Modifier = Modifier,
    cornerRadius: Dp = 24.dp,
    openBottomEdge: Boolean = false,
    style: LiquidGlassStyle = LiquidGlassStyle(),
    content: @Composable BoxScope.() -> Unit,
) {
    val glassStyle = style
    var positionInRoot by remember { mutableStateOf(Offset.Unspecified) }
    val shaders = remember { if (LENS_SUPPORTED) GlassShaders() else null }
    Box(
        modifier = modifier
            .onGloballyPositioned { positionInRoot = it.positionInRoot() }
            // Like Surface: the panel never lets touches fall through to the content underneath.
            .pointerInput(Unit) {}
            .drawWithCache {
                val width = size.width
                val height = size.height
                val radius = cornerRadius.toPx().coerceAtMost(minOf(width, height) / 2f)
                // Same rounding as FrameLiquidGlass: whole-pixel half width, doubled for the clipped inner stroke.
                val highlightStroke = ceil(minOf(style.highlightWidth.toPx(), minOf(width, height) / 2f)) * 2f
                val refractionHeight = style.refractionHeight.toPx()
                // Extend the geometry below the bounds so its bottom edge stays out of view.
                val geometryHeight = if (openBottomEdge) height + refractionHeight + highlightStroke else height
                val bottomRadius = if (openBottomEdge) 0f else radius
                val outline = Path().apply {
                    addRoundRect(
                        RoundRect(
                            rect = Rect(0f, 0f, width, geometryHeight),
                            topLeft = CornerRadius(radius),
                            topRight = CornerRadius(radius),
                            bottomRight = CornerRadius(bottomRadius),
                            bottomLeft = CornerRadius(bottomRadius),
                        )
                    )
                }

                val backdropPosition = backdrop.positionInRoot
                val backdropSize = backdrop.size
                if (!BACKDROP_SUPPORTED) {
                    return@drawWithCache onDrawBehind {
                        clipRect { drawPath(outline, style.fallbackColor) }
                    }
                }
                if (!positionInRoot.isSpecified || !backdropPosition.isSpecified ||
                    backdropSize == IntSize.Zero || width <= 0f || height <= 0f
                ) {
                    return@drawWithCache onDrawBehind {}
                }

                // Glass layer covers the surface plus blur padding (the lens only samples inward), limited to the backdrop bounds so
                // clamped blur edges come from real content instead of transparent pixels.
                val blurRadius = style.blurRadius.toPx()
                val padding = blurRadius * 2f
                val backdropOrigin = backdropPosition - positionInRoot
                val captureRect = Rect(-padding, -padding, width + padding, height + padding)
                    .intersect(Rect(backdropOrigin, backdropSize.toSize()))
                val layerOffset = IntOffset(floor(captureRect.left).toInt(), floor(captureRect.top).toInt())
                val layerSize = IntSize(
                    ceil(captureRect.right).toInt() - layerOffset.x,
                    ceil(captureRect.bottom).toInt() - layerOffset.y,
                )
                if (layerSize.width <= 0 || layerSize.height <= 0) {
                    return@drawWithCache onDrawBehind {}
                }

                val glassLayer = obtainGraphicsLayer().apply {
                    topLeft = layerOffset
                    renderEffect = glassEffect(
                        style = style,
                        blurRadius = blurRadius,
                        refractionHeight = refractionHeight,
                        refractionAmount = style.refractionAmount.toPx(),
                        shapeOffset = Offset(-layerOffset.x.toFloat(), -layerOffset.y.toFloat()),
                        shapeWidth = width,
                        shapeHeight = geometryHeight,
                        radius = radius,
                        bottomRadius = bottomRadius,
                        shaders = shaders,
                    ).asComposeRenderEffect()
                    record(size = layerSize) {
                        translate(backdropOrigin.x - layerOffset.x, backdropOrigin.y - layerOffset.y) {
                            drawLayer(backdrop.layer)
                        }
                    }
                }
                val highlightPaint = Paint().apply {
                    this.style = PaintingStyle.Stroke
                    strokeWidth = highlightStroke
                    blendMode = BlendMode.Plus
                    if (shaders != null) {
                        shaders.setHighlightUniforms(width, geometryHeight, radius, bottomRadius, glassStyle.highlightAlpha)
                        shader = shaders.highlight
                    } else {
                        color = Color.White.copy(alpha = glassStyle.highlightAlpha * 0.3f)
                    }
                    val highlightBlur = glassStyle.highlightBlur.toPx()
                    if (highlightBlur > 0f) {
                        asFrameworkPaint().maskFilter = BlurMaskFilter(highlightBlur, BlurMaskFilter.Blur.NORMAL)
                    }
                }

                onDrawBehind {
                    clipRect {
                        clipPath(outline) {
                            drawLayer(glassLayer)
                            drawRect(style.tint)
                            drawIntoCanvas { it.drawPath(outline, highlightPaint) }
                        }
                    }
                }
            },
        content = content,
    )
}

private fun IntSize.toSize() = androidx.compose.ui.geometry.Size(width.toFloat(), height.toFloat())

@RequiresApi(Build.VERSION_CODES.S)
private fun glassEffect(
    style: LiquidGlassStyle,
    blurRadius: Float,
    refractionHeight: Float,
    refractionAmount: Float,
    shapeOffset: Offset,
    shapeWidth: Float,
    shapeHeight: Float,
    radius: Float,
    bottomRadius: Float,
    shaders: GlassShaders?,
): RenderEffect {
    // AndroidLiquidGlass vibrancy(): saturation matrix, same as frame_glass/color.frag.
    val vibrancy = RenderEffect.createColorFilterEffect(
        ColorMatrixColorFilter(ColorMatrix().apply { setSaturation(style.saturation) })
    )
    val blur = if (blurRadius > 0f) {
        RenderEffect.createBlurEffect(blurRadius, blurRadius, vibrancy, Shader.TileMode.CLAMP)
    } else {
        vibrancy
    }
    if (shaders == null || Build.VERSION.SDK_INT < Build.VERSION_CODES.TIRAMISU) return blur
    return shaders.lensEffect(blur, shapeOffset, shapeWidth, shapeHeight, radius, bottomRadius,
        refractionHeight, refractionAmount)
}

/** Compiled once per surface; uniforms are snapshotted when an effect is created or a draw is recorded. */
@RequiresApi(Build.VERSION_CODES.TIRAMISU)
private class GlassShaders {
    private val lens = RuntimeShader(LENS_SHADER)
    val highlight = RuntimeShader(HIGHLIGHT_SHADER)

    fun lensEffect(
        input: RenderEffect,
        shapeOffset: Offset,
        width: Float,
        height: Float,
        radius: Float,
        bottomRadius: Float,
        refractionHeight: Float,
        refractionAmount: Float,
    ): RenderEffect {
        lens.setFloatUniform("shapeOffset", shapeOffset.x, shapeOffset.y)
        lens.setFloatUniform("size", width, height)
        lens.setFloatUniform("cornerRadii", radius, radius, bottomRadius, bottomRadius)
        lens.setFloatUniform("refractionHeight", refractionHeight)
        // Negative amount samples inward, matching FrameGlassGpu.setUniforms.
        lens.setFloatUniform("refractionAmount", -refractionAmount)
        lens.setFloatUniform("depthEffect", 1f)
        return RenderEffect.createChainEffect(RenderEffect.createRuntimeShaderEffect(lens, "content"), input)
    }

    fun setHighlightUniforms(width: Float, height: Float, radius: Float, bottomRadius: Float, alpha: Float) {
        highlight.setFloatUniform("size", width, height)
        highlight.setFloatUniform("cornerRadii", radius, radius, bottomRadius, bottomRadius)
        highlight.setFloatUniform("angle", HIGHLIGHT_ANGLE)
        highlight.setFloatUniform("falloff", HIGHLIGHT_FALLOFF)
        highlight.setFloatUniform("alpha", alpha)
    }
}

private val BACKDROP_SUPPORTED = Build.VERSION.SDK_INT >= Build.VERSION_CODES.S
private val LENS_SUPPORTED = Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU
private const val HIGHLIGHT_ANGLE = 0.7853981633974483f
private const val HIGHLIGHT_FALLOFF = 2f

// AGSL port of Kyant's RoundedRectSDF (see assets/shaders/frame_glass), Apache License 2.0.
private const val SDF_FUNCTIONS = """
float radiusAt(float2 coord, float4 radii) {
    if (coord.x >= 0.0) {
        return coord.y <= 0.0 ? radii.y : radii.z;
    }
    return coord.y <= 0.0 ? radii.x : radii.w;
}

float sdRoundedRect(float2 coord, float2 halfSize, float radius) {
    float2 cornerCoord = abs(coord) - (halfSize - float2(radius));
    float outside = length(max(cornerCoord, 0.0)) - radius;
    float inside = min(max(cornerCoord.x, cornerCoord.y), 0.0);
    return outside + inside;
}

float2 gradSdRoundedRect(float2 coord, float2 halfSize, float radius) {
    float2 cornerCoord = abs(coord) - (halfSize - float2(radius));
    if (cornerCoord.x >= 0.0 || cornerCoord.y >= 0.0) {
        return sign(coord) * normalize(max(cornerCoord, 0.0));
    }
    float gradX = step(cornerCoord.y, cornerCoord.x);
    return sign(coord) * float2(gradX, 1.0 - gradX);
}

float2 directionOrZero(float2 v) {
    float magnitude = length(v);
    return magnitude > 0.0 ? v / magnitude : float2(0.0);
}
"""

private const val LENS_SHADER = """
uniform shader content;
uniform float2 shapeOffset;
uniform float2 size;
uniform float4 cornerRadii;
uniform float refractionHeight;
uniform float refractionAmount;
uniform float depthEffect;
$SDF_FUNCTIONS
float circleMap(float x) {
    return 1.0 - sqrt(1.0 - x * x);
}

half4 main(float2 fragCoord) {
    float2 halfSize = size * 0.5;
    float2 centered = fragCoord - shapeOffset - halfSize;
    float radius = radiusAt(centered, cornerRadii);
    float sd = sdRoundedRect(centered, halfSize, radius);
    if (-sd >= refractionHeight) {
        return content.eval(fragCoord);
    }
    sd = min(sd, 0.0);
    float d = circleMap(1.0 - -sd / refractionHeight) * refractionAmount;
    float gradRadius = min(radius * 1.5, min(halfSize.x, halfSize.y));
    float2 grad = gradSdRoundedRect(centered, halfSize, gradRadius);
    grad = directionOrZero(grad + depthEffect * directionOrZero(centered));
    return content.eval(fragCoord + d * grad);
}
"""

private const val HIGHLIGHT_SHADER = """
uniform float2 size;
uniform float4 cornerRadii;
uniform float angle;
uniform float falloff;
uniform float alpha;
$SDF_FUNCTIONS
half4 main(float2 coord) {
    float2 halfSize = size * 0.5;
    float2 centered = coord - halfSize;
    float radius = radiusAt(centered, cornerRadii);
    float gradRadius = min(radius * 1.5, min(halfSize.x, halfSize.y));
    float2 grad = gradSdRoundedRect(centered, halfSize, gradRadius);
    float2 normal = float2(cos(angle), sin(angle));
    float intensity = pow(abs(dot(grad, normal)), falloff);
    return half4(intensity * alpha);
}
"""
