package com.hinnka.mycamera.agc

import android.content.Context
import android.graphics.Color
import android.graphics.drawable.ColorDrawable
import android.view.Gravity
import android.view.View
import android.view.WindowManager
import androidx.activity.ComponentDialog
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Tune
import androidx.compose.material3.Icon
import androidx.compose.material3.Text
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color as ComposeColor
import androidx.compose.ui.platform.ComposeView
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.lifecycle.setViewTreeLifecycleOwner
import androidx.savedstate.setViewTreeSavedStateRegistryOwner
import androidx.lifecycle.setViewTreeViewModelStoreOwner
import androidx.lifecycle.viewmodel.compose.viewModel
import com.hinnka.mycamera.R
import com.hinnka.mycamera.lut.LutManager
import com.hinnka.mycamera.ui.components.LutSelector
import com.hinnka.mycamera.ui.components.stringResource
import com.hinnka.mycamera.ui.camera.LutEditBottomSheet
import com.hinnka.mycamera.ui.settings.FilterManagementScreen
import com.hinnka.mycamera.viewmodel.CameraViewModel

class PhotonLutSelectorDialog(
    context: Context,
    private val anchor: View?
) : ComponentDialog(context) {

    private fun findLifecycleOwner(): androidx.lifecycle.LifecycleOwner? {
        var ctx = context
        while (ctx is android.content.ContextWrapper) {
            if (ctx is androidx.lifecycle.LifecycleOwner) {
                return ctx
            }
            ctx = ctx.baseContext
        }
        return null
    }

    private fun findSavedStateRegistryOwner(): androidx.savedstate.SavedStateRegistryOwner? {
        var ctx = context
        while (ctx is android.content.ContextWrapper) {
            if (ctx is androidx.savedstate.SavedStateRegistryOwner) {
                return ctx
            }
            ctx = ctx.baseContext
        }
        return null
    }

    private fun findViewModelStoreOwner(): androidx.lifecycle.ViewModelStoreOwner? {
        var ctx = context
        while (ctx is android.content.ContextWrapper) {
            if (ctx is androidx.lifecycle.ViewModelStoreOwner) {
                return ctx
            }
            ctx = ctx.baseContext
        }
        return null
    }

    private fun findActivityResultRegistryOwner(): androidx.activity.result.ActivityResultRegistryOwner? {
        var ctx = context
        while (ctx is android.content.ContextWrapper) {
            if (ctx is androidx.activity.result.ActivityResultRegistryOwner) {
                return ctx
            }
            ctx = ctx.baseContext
        }
        return null
    }

    override fun show() {
        val safeContext = SafeResourcesContextWrapper(context)
        setContentView(
            ComposeView(safeContext).apply {
                val lOwner = findLifecycleOwner() ?: object : androidx.lifecycle.LifecycleOwner {
                    private val lifecycleRegistry = androidx.lifecycle.LifecycleRegistry(this)
                    init {
                        lifecycleRegistry.currentState = androidx.lifecycle.Lifecycle.State.RESUMED
                    }
                    override val lifecycle: androidx.lifecycle.Lifecycle
                        get() = lifecycleRegistry
                }
                val sOwner = findSavedStateRegistryOwner() ?: object : androidx.savedstate.SavedStateRegistryOwner {
                    private val lifecycleRegistry = androidx.lifecycle.LifecycleRegistry(this)
                    private val savedStateRegistryController = androidx.savedstate.SavedStateRegistryController.create(this).apply {
                        performRestore(null)
                    }
                    init {
                        lifecycleRegistry.currentState = androidx.lifecycle.Lifecycle.State.RESUMED
                    }
                    override val lifecycle: androidx.lifecycle.Lifecycle
                        get() = lifecycleRegistry
                    override val savedStateRegistry: androidx.savedstate.SavedStateRegistry
                        get() = savedStateRegistryController.savedStateRegistry
                }
                setViewTreeLifecycleOwner(lOwner)
                setViewTreeSavedStateRegistryOwner(sOwner)

                setContent {
                    val appContext = context.applicationContext
                    val dummyRegistry = remember {
                        object : androidx.activity.result.ActivityResultRegistry() {
                            override fun <I : Any?, O : Any?> onLaunch(
                                requestCode: Int,
                                contract: androidx.activity.result.contract.ActivityResultContract<I, O>,
                                input: I,
                                options: androidx.core.app.ActivityOptionsCompat?
                            ) {
                                // 备用空壳实现
                            }
                        }
                    }
                    val registryOwner = remember {
                        findActivityResultRegistryOwner() ?: object : androidx.activity.result.ActivityResultRegistryOwner {
                            override val activityResultRegistry: androidx.activity.result.ActivityResultRegistry
                                get() = dummyRegistry
                        }
                    }

                    androidx.compose.runtime.CompositionLocalProvider(
                        androidx.activity.compose.LocalActivityResultRegistryOwner provides registryOwner
                    ) {
                        val lutManager = remember { LutManager(appContext).apply { initialize() } }
                        val scope = rememberCoroutineScope()

                    // panel 状态: "FILTERS", "LUT_EDIT", "MANAGEMENT"
                    var activePanel by remember { mutableStateOf("FILTERS") }
                    var selectedLutId by remember { mutableStateOf(PhotonAgcBridge.getSelectedLutId(appContext)) }
                    var luts by remember { mutableStateOf(lutManager.getAvailableLuts()) }

                    LaunchedEffect(activePanel) {
                        lutManager.initialize()
                        luts = lutManager.getAvailableLuts()
                    }

                    // 动态调整 Dialog 窗口大小，如果是管理页面则撑满全屏，否则包裹内容
                    val dialogWindow = this@PhotonLutSelectorDialog.window
                    LaunchedEffect(activePanel) {
                        dialogWindow?.run {
                            val params = attributes
                            if (activePanel == "MANAGEMENT") {
                                params.height = WindowManager.LayoutParams.MATCH_PARENT
                            } else {
                                params.height = WindowManager.LayoutParams.WRAP_CONTENT
                            }
                            attributes = params
                        }
                    }

                    val simulatedViewModel = remember { CameraViewModel(appContext as android.app.Application) }

                    Box(
                        modifier = Modifier
                            .fillMaxSize()
                            .background(ComposeColor.Transparent)
                            .clickable { this@PhotonLutSelectorDialog.dismiss() },
                        contentAlignment = Alignment.BottomCenter
                    ) {
                        // 1. 滤镜管理屏幕 (MANAGEMENT)
                        if (activePanel == "MANAGEMENT") {
                            Box(
                                modifier = Modifier
                                    .fillMaxSize()
                                    .background(ComposeColor(0xFF151515))
                            ) {
                                FilterManagementScreen(
                                    viewModel = simulatedViewModel,
                                    onBack = {
                                        activePanel = "FILTERS"
                                        selectedLutId = PhotonAgcBridge.getSelectedLutId(appContext)
                                        luts = lutManager.getAvailableLuts()
                                    }
                                )
                            }
                        }

                        // 2. 正常滤镜选择主面板 (FILTERS & LUT_EDIT)
                        if (activePanel == "FILTERS" || activePanel == "LUT_EDIT") {
                            val currentLut = luts.find { it.id == selectedLutId }

                            Column(
                                modifier = Modifier
                                    .fillMaxWidth()
                                    .navigationBarsPadding()
                                    .background(ComposeColor.Black.copy(alpha = 0.95f))
                                    .clickable(indication = null, interactionSource = remember { androidx.compose.foundation.interaction.MutableInteractionSource() }) { /* 消费点击，阻止冒泡到背景 */ }
                                    .padding(horizontal = 8.dp, vertical = 4.dp),
                                verticalArrangement = Arrangement.spacedBy(4.dp)
                            ) {
                                Row(
                                    modifier = Modifier
                                        .fillMaxWidth()
                                        .padding(horizontal = 8.dp, vertical = 4.dp),
                                    horizontalArrangement = Arrangement.SpaceBetween,
                                    verticalAlignment = Alignment.CenterVertically
                                ) {
                                    Text(
                                        text = currentLut?.getName() ?: "",
                                        color = ComposeColor.White,
                                        fontSize = 14.sp,
                                        fontWeight = FontWeight.Bold,
                                        modifier = Modifier.weight(1f)
                                    )

                                    Row(
                                        modifier = Modifier
                                            .clip(RoundedCornerShape(16.dp))
                                            .background(ComposeColor.White.copy(alpha = 0.15f))
                                            .clickable {
                                                activePanel = "LUT_EDIT"
                                            }
                                            .padding(horizontal = 12.dp, vertical = 6.dp),
                                        verticalAlignment = Alignment.CenterVertically,
                                        horizontalArrangement = Arrangement.spacedBy(4.dp)
                                    ) {
                                        Icon(
                                            imageVector = Icons.Default.Tune,
                                            contentDescription = stringResource(R.string.color_recipe),
                                            tint = ComposeColor(0xFFFFD700),
                                            modifier = Modifier.size(14.dp)
                                        )
                                        Text(
                                            text = stringResource(R.string.color_recipe),
                                            color = ComposeColor.White,
                                            fontSize = 11.sp,
                                            fontWeight = FontWeight.Medium
                                        )
                                    }
                                }

                                LutSelector(
                                    availableLuts = luts,
                                    currentLutId = selectedLutId,
                                    thumbnail = null,
                                    onLutSelected = { lutId ->
                                        selectedLutId = lutId
                                        PhotonAgcBridge.setSelectedLutId(appContext, lutId)
                                    },
                                    onEditClick = {
                                        activePanel = "LUT_EDIT"
                                    },
                                    onManageClick = { _ ->
                                        activePanel = "MANAGEMENT"
                                    },
                                    modifier = Modifier.fillMaxWidth()
                                )
                            }
                        }

                        // 3. 色彩配方编辑弹窗 (LUT_EDIT)
                        if (activePanel == "LUT_EDIT") {
                            LutEditBottomSheet(
                                lutId = selectedLutId ?: "standard",
                                onDismiss = {
                                    activePanel = "FILTERS"
                                }
                            )
                        }
                    }
                    }
                }
            }
        )
        window?.run {
            setBackgroundDrawable(ColorDrawable(Color.TRANSPARENT))
            clearFlags(WindowManager.LayoutParams.FLAG_DIM_BEHIND)
            val params = attributes
            params.width = WindowManager.LayoutParams.MATCH_PARENT
            params.height = WindowManager.LayoutParams.WRAP_CONTENT
            params.gravity = Gravity.BOTTOM
            params.y = 0
            attributes = params
        }
        setCanceledOnTouchOutside(true)
        super.show()
    }
}

class SafeResourcesContextWrapper(base: Context) : android.content.ContextWrapper(base) {
    private val safeResources by lazy {
        SafeResources(base.resources)
    }

    override fun getResources(): android.content.res.Resources {
        return safeResources
    }
}

class SafeResources(
    private val baseResources: android.content.res.Resources
) : android.content.res.Resources(
    baseResources.assets,
    baseResources.displayMetrics,
    baseResources.configuration
) {
    override fun getText(id: Int): CharSequence {
        return try {
            baseResources.getText(id)
        } catch (e: android.content.res.Resources.NotFoundException) {
            ""
        }
    }

    override fun getText(id: Int, def: CharSequence?): CharSequence {
        return try {
            baseResources.getText(id, def)
        } catch (e: android.content.res.Resources.NotFoundException) {
            def ?: ""
        }
    }

    override fun getString(id: Int): String {
        return try {
            baseResources.getString(id)
        } catch (e: android.content.res.Resources.NotFoundException) {
            ""
        }
    }

    override fun getString(id: Int, vararg formatArgs: Any?): String {
        return try {
            baseResources.getString(id, *formatArgs)
        } catch (e: android.content.res.Resources.NotFoundException) {
            ""
        }
    }

    override fun getQuantityText(id: Int, quantity: Int): CharSequence {
        return try {
            baseResources.getQuantityText(id, quantity)
        } catch (e: android.content.res.Resources.NotFoundException) {
            ""
        }
    }

    override fun getQuantityString(id: Int, quantity: Int): String {
        return try {
            baseResources.getQuantityString(id, quantity)
        } catch (e: android.content.res.Resources.NotFoundException) {
            ""
        }
    }

    override fun getQuantityString(id: Int, quantity: Int, vararg formatArgs: Any?): String {
        return try {
            baseResources.getQuantityString(id, quantity, *formatArgs)
        } catch (e: android.content.res.Resources.NotFoundException) {
            ""
        }
    }
}
