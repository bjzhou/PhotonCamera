package com.hinnka.mycamera.ui.components

import androidx.compose.runtime.Composable

@Composable
fun PaymentDialog(
    onDismiss: () -> Unit,
    onSuccess: () -> Unit = {},
    onPurchase: (sku: String) -> Unit = {}
) {
    onDismiss()
}
