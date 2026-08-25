package com.hinnka.mycamera.mgc

import android.app.Activity
import android.content.Intent
import android.graphics.Color as AndroidColor
import android.os.Bundle
import android.view.WindowManager
import android.widget.Toast
import androidx.activity.compose.setContent
import androidx.compose.foundation.basicMarquee
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.navigationBarsPadding
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.ModalBottomSheet
import androidx.compose.material3.Text
import androidx.compose.material3.rememberModalBottomSheetState
import androidx.compose.runtime.Composable
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.appcompat.app.AppCompatActivity
import androidx.core.view.WindowCompat
import androidx.lifecycle.lifecycleScope
import com.hinnka.mycamera.R
import com.hinnka.mycamera.billing.BillingManagerImpl
import com.hinnka.mycamera.data.ContentRepository
import com.hinnka.mycamera.lut.sortLutsByUserOrder
import com.hinnka.mycamera.ui.camera.LutEditBottomSheet
import com.hinnka.mycamera.ui.components.LutEditButton
import com.hinnka.mycamera.ui.components.LutSelector
import com.hinnka.mycamera.ui.components.PaymentDialog
import com.hinnka.mycamera.ui.theme.PhotonCameraTheme
import com.hinnka.mycamera.utils.PLog
import kotlinx.coroutines.launch

/**
 * Transparent Photon activity launched over the MGC viewfinder.
 *
 * The activity hosts Photon's existing LUT selector and recipe editor. Both selection
 * and recipe saves use the shared repository, whose notification path updates MGC.
 */
class MgcFilterSelectionActivity : AppCompatActivity() {
    private val contentRepository by lazy {
        ContentRepository.getInstance(applicationContext)
    }
    private val billingManager by lazy {
        BillingManagerImpl(applicationContext)
    }
    private var isSaving by mutableStateOf(false)

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        configureTransparentWindow()

        setContent {
            PhotonCameraTheme {
                val isPurchased by billingManager.isPurchased.collectAsState()
                var showPaymentDialog by remember { mutableStateOf(false) }

                MgcFilterSelectionRoute(
                    contentRepository = contentRepository,
                    isPurchased = isPurchased,
                    isSaving = isSaving,
                    onDismiss = ::finishWithoutAnimation,
                    onPurchaseRequired = { showPaymentDialog = true },
                    onLutSelected = ::persistSelection,
                )

                if (showPaymentDialog) {
                    PaymentDialog(
                        onDismiss = { showPaymentDialog = false },
                        onPurchase = {
                            showPaymentDialog = false
                            billingManager.purchase(this@MgcFilterSelectionActivity)
                        },
                    )
                }
            }
        }
    }

    override fun onResume() {
        super.onResume()
        billingManager.refresh()
    }

    @Suppress("DEPRECATION")
    private fun configureTransparentWindow() {
        WindowCompat.setDecorFitsSystemWindows(window, false)
        window.statusBarColor = AndroidColor.TRANSPARENT
        window.navigationBarColor = AndroidColor.TRANSPARENT
        window.clearFlags(WindowManager.LayoutParams.FLAG_DIM_BEHIND)
        window.attributes = window.attributes.apply {
            dimAmount = 0f
        }
        WindowCompat.getInsetsController(window, window.decorView).apply {
            isAppearanceLightStatusBars = false
            isAppearanceLightNavigationBars = false
        }
    }

    private fun persistSelection(lutId: String) {
        if (isSaving) return
        isSaving = true
        lifecycleScope.launch {
            runCatching {
                contentRepository.userPreferencesRepository.saveLutConfig(lutId)
            }.onSuccess {
                setResult(
                    Activity.RESULT_OK,
                    Intent().putExtra(PhotonLookContract.EXTRA_LUT_ID, lutId),
                )
            }.onFailure { throwable ->
                PLog.e(TAG, "Failed to persist MGC LUT selection: $lutId", throwable)
                Toast.makeText(
                    this@MgcFilterSelectionActivity,
                    R.string.mgc_filter_selection_failed,
                    Toast.LENGTH_SHORT,
                ).show()
            }
            isSaving = false
        }
    }

    private fun finishWithoutAnimation() {
        finish()
        @Suppress("DEPRECATION")
        overridePendingTransition(0, 0)
    }

    companion object {
        const val ACTION_SELECT_MGC_LOOK =
            "com.hinnka.mycamera.action.SELECT_MGC_LOOK"
        private const val TAG = "MgcFilterSelection"
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
private fun MgcFilterSelectionRoute(
    contentRepository: ContentRepository,
    isPurchased: Boolean,
    isSaving: Boolean,
    onDismiss: () -> Unit,
    onPurchaseRequired: () -> Unit,
    onLutSelected: (String) -> Unit,
) {
    val availableLuts by contentRepository.availableLuts.collectAsState()
    val preferences by contentRepository.userPreferencesRepository.userPreferences
        .collectAsState(initial = null)
    val sortedLuts = remember(availableLuts, preferences?.filterOrder) {
        sortLutsByUserOrder(
            luts = availableLuts,
            filterOrder = preferences?.filterOrder.orEmpty(),
        )
    }
    val activeLutId = preferences?.lutId
        ?: sortedLuts.firstOrNull { it.isDefault }?.id
    var editingLutId by remember { mutableStateOf<String?>(null) }

    if (editingLutId == null) {
        val sheetState = rememberModalBottomSheetState(skipPartiallyExpanded = true)
        ModalBottomSheet(
            onDismissRequest = onDismiss,
            sheetState = sheetState,
            containerColor = Color.Black.copy(alpha = 0.8f),
            scrimColor = Color.Transparent,
        ) {
            val currentLut = sortedLuts.firstOrNull { it.id == activeLutId }
            Row(
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(horizontal = 16.dp, vertical = 4.dp),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically,
            ) {
                Text(
                    text = currentLut?.getName().orEmpty(),
                    color = Color.White,
                    fontSize = 14.sp,
                    fontWeight = FontWeight.Bold,
                    modifier = Modifier
                        .weight(1f)
                        .basicMarquee(),
                )
                LutEditButton(
                    onClick = {
                        activeLutId
                            ?.takeIf { currentId -> sortedLuts.any { it.id == currentId } }
                            ?.let { editingLutId = it }
                    },
                )
            }

            LutSelector(
                availableLuts = sortedLuts,
                currentLutId = activeLutId,
                thumbnail = null,
                onLutSelected = onSelection@{ lutId ->
                    if (isSaving || lutId == null) return@onSelection
                    val selectedLut = sortedLuts.firstOrNull { it.id == lutId }
                        ?: return@onSelection
                    if (selectedLut.isVip && !isPurchased) {
                        onPurchaseRequired()
                    } else {
                        onLutSelected(lutId)
                    }
                },
                onEditClick = {
                    activeLutId
                        ?.takeIf { currentId -> sortedLuts.any { it.id == currentId } }
                        ?.let { editingLutId = it }
                },
                categoryOrder = preferences?.categoryOrder.orEmpty(),
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(horizontal = 8.dp),
            )
            Spacer(
                modifier = Modifier
                    .navigationBarsPadding()
                    .height(12.dp),
            )
        }
    } else {
        LutEditBottomSheet(
            lutId = editingLutId!!,
            showEffects = true,
            onDismiss = { editingLutId = null },
        )
    }
}
