package com.hinnka.mycamera.ui.components

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.hinnka.mycamera.BuildConfig
import com.hinnka.mycamera.R
import com.hinnka.mycamera.ui.theme.PremiumGold

internal val showVipBadges = BuildConfig.FLAVOR == "google"

@Composable
internal fun VipBadge(modifier: Modifier = Modifier) {
    if (!showVipBadges) return

    Text(
        text = stringResource(R.string.billing_vip_tag),
        modifier = modifier
            .background(PremiumGold, RoundedCornerShape(4.dp))
            .padding(horizontal = 4.dp),
        color = Color.Black,
        fontSize = 10.sp,
        fontWeight = FontWeight.Bold,
        lineHeight = 16.sp,
        maxLines = 1
    )
}
