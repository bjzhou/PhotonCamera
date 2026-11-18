package com.hinnka.mycamera.ui.components

import androidx.compose.animation.animateColorAsState
import androidx.compose.foundation.background
import androidx.compose.foundation.basicMarquee
import androidx.compose.foundation.border
import androidx.compose.foundation.combinedClickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Check
import androidx.compose.material.icons.filled.Edit
import androidx.compose.material3.Icon
import androidx.compose.material3.LocalTextStyle
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.semantics.contentDescription
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.hinnka.mycamera.R
import com.hinnka.mycamera.ui.camera.ViewfinderTextShadow
import com.hinnka.mycamera.ui.theme.AccentColor
import com.hinnka.mycamera.ui.theme.PremiumGold

@Composable
internal fun lookThumbnailFooterHeight(): Dp = with(LocalDensity.current) { 14.sp.toDp() } + 4.dp

/** One thumbnail/name/selection treatment for filters, capture presets and frames. */
@Composable
internal fun LookThumbnailItem(
    name: String,
    selected: Boolean,
    onClick: () -> Unit,
    modifier: Modifier = Modifier,
    onLongClick: (() -> Unit)? = null,
    onEditClick: (() -> Unit)? = null,
    isVip: Boolean = false,
    thumbnailOnly: Boolean = false,
    content: @Composable BoxScope.() -> Unit
) {
    val shape = RoundedCornerShape(12.dp)
    val highlight = selected && !thumbnailOnly
    val edit = onEditClick.takeIf { selected }
    val border = animateColorAsState(
        if (highlight) AccentColor else Color.White.copy(alpha = 0.15f), label = "lookItemBorder"
    )
    Column(
        modifier = modifier.width(56.dp).combinedClickable(
            onClick = edit ?: onClick,
            onClickLabel = if (edit != null) stringResource(R.string.edit) else null,
            onLongClick = onLongClick
        )
            .then(if (thumbnailOnly) Modifier.semantics { contentDescription = name } else Modifier),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.spacedBy(4.dp)
    ) {
        Box(
            modifier = Modifier.fillMaxWidth().aspectRatio(1f).clip(shape)
                .background(Color(0xFF252A31)),
            contentAlignment = Alignment.Center
        ) {
            content()
            // Draw the border above the preview image, so selection remains visible.
            Box(Modifier.matchParentSize().border(if (highlight) 1.2.dp else 1.dp, border.value, shape))
            if (edit != null) {
                Icon(Icons.Default.Edit, null, tint = AccentColor, modifier = Modifier.align(Alignment.Center).size(18.dp))
            } else if (highlight) {
                Icon(
                    Icons.Default.Check, null, tint = Color.Black,
                    modifier = Modifier.align(Alignment.BottomEnd).padding(5.dp).size(18.dp)
                        .background(AccentColor, CircleShape).padding(3.dp)
                )
            }
            if (showVipBadges && isVip) {
                Text(
                    stringResource(R.string.billing_vip_tag), color = Color.Black,
                    fontSize = 8.sp, lineHeight = 8.sp, fontWeight = FontWeight.Bold,
                    modifier = Modifier.align(Alignment.TopEnd)
                        .background(PremiumGold, RoundedCornerShape(bottomStart = 4.dp))
                        .padding(horizontal = 4.dp, vertical = 2.dp)
                )
            }
        }
        if (!thumbnailOnly) Text(
            name, color = if (selected) AccentColor else Color.White,
            fontSize = 9.sp, lineHeight = 11.sp,
            fontWeight = if (selected) FontWeight.SemiBold else FontWeight.Normal,
            maxLines = 1, overflow = TextOverflow.Ellipsis, textAlign = TextAlign.Center,
            style = LocalTextStyle.current.copy(shadow = ViewfinderTextShadow),
            modifier = Modifier.fillMaxWidth().padding(horizontal = 2.dp, vertical = 1.dp).basicMarquee()
        )
    }
}
