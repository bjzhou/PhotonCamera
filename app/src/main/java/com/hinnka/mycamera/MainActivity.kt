package com.hinnka.mycamera

import android.Manifest
import android.content.Intent
import android.content.pm.PackageManager
import android.os.Build
import android.os.Bundle
import android.view.KeyEvent
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import androidx.activity.SystemBarStyle
import androidx.activity.result.contract.ActivityResultContracts
import androidx.activity.viewModels
import androidx.compose.animation.fadeIn
import androidx.compose.animation.fadeOut
import androidx.compose.animation.slideInHorizontally
import androidx.compose.animation.slideOutHorizontally
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.navigationBarsPadding
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalWindowInfo
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.core.content.ContextCompat
import androidx.core.view.WindowCompat
import androidx.core.view.WindowInsetsCompat
import androidx.core.view.WindowInsetsControllerCompat
import androidx.navigation.NavType
import androidx.navigation.compose.NavHost
import androidx.navigation.compose.composable
import androidx.navigation.compose.rememberNavController
import androidx.navigation.navArgument
import com.hinnka.mycamera.camera.AspectRatio
import com.hinnka.mycamera.ui.camera.CameraScreen
import com.hinnka.mycamera.ui.gallery.BurstDetailScreen
import com.hinnka.mycamera.ui.gallery.GalleryScreen
import com.hinnka.mycamera.ui.gallery.PhotoDetailScreen
import com.hinnka.mycamera.ui.gallery.PhotoEditScreen
import com.hinnka.mycamera.ui.settings.FilterManagementScreen
import com.hinnka.mycamera.ui.settings.FrameManagementScreen
import com.hinnka.mycamera.ui.settings.SettingsScreen
import com.hinnka.mycamera.ui.theme.PhotonCameraTheme
import com.hinnka.mycamera.utils.BuglyHelper
import com.hinnka.mycamera.utils.OrientationObserver
import com.hinnka.mycamera.viewmodel.CameraViewModel
import com.hinnka.mycamera.viewmodel.GalleryViewModel

/**
 * 路由常量
 */
object Routes {
    const val CAMERA = "camera"
    const val GALLERY = "gallery"
    const val PHOTO_DETAIL = "photo_detail/{index}"
    const val BURST_DETAIL = "burst_detail/{photoId}"
    const val PHOTO_EDIT = "photo_edit"
    const val SETTINGS = "settings"
    const val FILTER_MANAGEMENT = "filter_management"
    const val FRAME_MANAGEMENT = "frame_management"

    fun photoDetail(index: Int) = "photo_detail/$index"
    fun burstDetail(photoId: String) = "burst_detail/$photoId"
}

class MainActivity : ComponentActivity() {

    private val cameraViewModel: CameraViewModel by viewModels()
    private val galleryViewModel: GalleryViewModel by viewModels()

    private val permissions = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
        arrayOf(Manifest.permission.CAMERA, Manifest.permission.RECORD_AUDIO)
    } else {
        arrayOf(Manifest.permission.CAMERA, Manifest.permission.RECORD_AUDIO)
    }

    private var hasPermissions by mutableStateOf(false)
    private var pendingRoute by mutableStateOf<String?>(null)

    private val permissionLauncher = registerForActivityResult(
        ActivityResultContracts.RequestMultiplePermissions()
    ) { result ->
        hasPermissions = result.values.all { it }
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        // 启用全屏模式
        enableEdgeToEdge(
            statusBarStyle = SystemBarStyle.dark(android.graphics.Color.TRANSPARENT),
            navigationBarStyle = SystemBarStyle.dark(android.graphics.Color.TRANSPARENT)
        )
        hideSystemUI()
        OrientationObserver.observe(this)

        // 检查权限
        hasPermissions = permissions.all {
            ContextCompat.checkSelfPermission(this, it) == PackageManager.PERMISSION_GRANTED
        }

        handleIntent(intent)


        setContent {
            PhotonCameraTheme {
                Surface(
                    modifier = Modifier.fillMaxSize(),
                    color = Color.Black
                ) {
                    if (hasPermissions) {
                        NavigationHost(
                            cameraViewModel = cameraViewModel,
                            galleryViewModel = galleryViewModel,
                            pendingRoute = pendingRoute,
                            onRouteHandled = { pendingRoute = null }
                        )
                    } else {
                        PermissionScreen(
                            onRequestPermission = {
                                permissionLauncher.launch(permissions)
                            }
                        )
                    }
                }
            }
        }
    }

    override fun onKeyDown(keyCode: Int, event: KeyEvent?): Boolean {
        if (keyCode == KeyEvent.KEYCODE_VOLUME_UP || keyCode == KeyEvent.KEYCODE_VOLUME_DOWN) {
            if (cameraViewModel.handleVolumeKey(keyCode == KeyEvent.KEYCODE_VOLUME_UP)) {
                return true
            }
        }
        return super.onKeyDown(keyCode, event)
    }

    override fun onNewIntent(intent: Intent) {
        super.onNewIntent(intent)
        handleIntent(intent)
    }

    private fun handleIntent(intent: Intent?) {
        intent ?: return
        intent.getStringExtra("route")?.let {
            pendingRoute = it
        }
        intent.getBooleanExtra("show_ghost_permissions", false).let {
            cameraViewModel.showGhostPermissions = it
        }
    }

    private fun hideSystemUI() {
        WindowCompat.setDecorFitsSystemWindows(window, false)
        WindowInsetsControllerCompat(window, window.decorView).let { controller ->
            controller.hide(WindowInsetsCompat.Type.statusBars())
            controller.systemBarsBehavior =
                WindowInsetsControllerCompat.BEHAVIOR_SHOW_TRANSIENT_BARS_BY_SWIPE
        }
    }
}

@Composable
fun NavigationHost(
    cameraViewModel: CameraViewModel,
    galleryViewModel: GalleryViewModel,
    pendingRoute: String? = null,
    onRouteHandled: () -> Unit = {}
) {
    val context = LocalContext.current
    val navController = rememberNavController()

    androidx.compose.runtime.LaunchedEffect(pendingRoute) {
        pendingRoute?.let {
            navController.navigate(it)
            onRouteHandled()
        }
    }
    navController.addOnDestinationChangedListener { _, destination, _ ->
        BuglyHelper.setUserScene(context, destination.route.hashCode())
    }
    val containerSize = LocalWindowInfo.current.containerSize
    cameraViewModel.isExpanded =
        (containerSize.width * 1f / containerSize.height) > AspectRatio.RATIO_4_3.getValue(false)

    Box(modifier = Modifier.fillMaxSize()) {
        NavHost(
            navController = navController,
            startDestination = Routes.CAMERA,
            enterTransition = {
                slideInHorizontally(initialOffsetX = { it }) + fadeIn()
            },
            exitTransition = {
                slideOutHorizontally(targetOffsetX = { -it }) + fadeOut()
            },
            popEnterTransition = {
                slideInHorizontally(initialOffsetX = { -it }) + fadeIn()
            },
            popExitTransition = {
                slideOutHorizontally(targetOffsetX = { it }) + fadeOut()
            }
        ) {
            composable(Routes.CAMERA) {
                if (cameraViewModel.isExpanded) {
                    Row {
                        CameraScreen(
                            viewModel = cameraViewModel,
                            galleryViewModel = galleryViewModel,
                            onGalleryClick = {
                                navController.navigate(Routes.GALLERY)
                                val latestPhoto = galleryViewModel.latestPhoto.value
                                if (latestPhoto != null && System.currentTimeMillis() - latestPhoto.dateAdded < 3 * 60 * 1000) {
                                    navController.navigate(Routes.photoDetail(0))
                                }
                            },
                            onSettingsClick = {
                                navController.navigate(Routes.SETTINGS)
                            },
                            onFilterManagementClick = {
                                navController.navigate(Routes.FILTER_MANAGEMENT)
                            },
                            modifier = Modifier.weight(1f)
                        )
                        PhotoDetailScreen(
                            viewModel = galleryViewModel,
                            isExpanded = true,
                            onEdit = {
                                navController.navigate(Routes.PHOTO_EDIT)
                            },
                            onViewBurst = { photoId ->
                                navController.navigate(Routes.burstDetail(photoId))
                            },
                            modifier = Modifier.weight(1f)
                        )
                    }
                } else {
                    CameraScreen(
                        viewModel = cameraViewModel,
                        galleryViewModel = galleryViewModel,
                        onGalleryClick = {
                            navController.navigate(Routes.GALLERY)
                            val latestPhoto = galleryViewModel.latestPhoto.value
                            if (latestPhoto != null && System.currentTimeMillis() - latestPhoto.dateAdded < 3 * 60 * 1000) {
                                navController.navigate(Routes.photoDetail(0))
                            }
                        },
                        onSettingsClick = {
                            navController.navigate(Routes.SETTINGS)
                        },
                        onFilterManagementClick = {
                            navController.navigate(Routes.FILTER_MANAGEMENT)
                        }
                    )
                }
            }

            composable(Routes.GALLERY) {
                GalleryScreen(
                    viewModel = galleryViewModel,
                    onBack = {
                        navController.popBackStack()
                    },
                    onPhotoClick = { index ->
                        navController.navigate(Routes.photoDetail(index))
                    }
                )
            }

            composable(
                route = Routes.PHOTO_DETAIL,
                arguments = listOf(navArgument("index") { type = NavType.IntType })
            ) { backStackEntry ->
                val index = backStackEntry.arguments?.getInt("index") ?: 0
                PhotoDetailScreen(
                    viewModel = galleryViewModel,
                    initialIndex = index,
                    onBack = {
                        navController.popBackStack()
                    },
                    onEdit = {
                        navController.navigate(Routes.PHOTO_EDIT)
                    },
                    onViewBurst = { id ->
                        navController.navigate(Routes.burstDetail(id))
                    }
                )
            }

            composable(
                route = Routes.BURST_DETAIL,
                arguments = listOf(navArgument("photoId") { type = NavType.StringType })
            ) { backStackEntry ->
                val photoId = backStackEntry.arguments?.getString("photoId") ?: ""
                BurstDetailScreen(
                    viewModel = galleryViewModel,
                    photoId = photoId,
                    onEdit = {
                        navController.navigate(Routes.PHOTO_EDIT)
                    },
                    onBack = {
                        navController.popBackStack()
                    }
                )
            }

            composable(Routes.PHOTO_EDIT) {
                PhotoEditScreen(
                    viewModel = galleryViewModel,
                    cameraViewModel = cameraViewModel,
                    onBack = {
                        navController.popBackStack()
                    }
                )
            }

            composable(Routes.SETTINGS) {
                SettingsScreen(
                    viewModel = cameraViewModel,
                    onBack = {
                        navController.popBackStack()
                    },
                    onFilterManagementClick = {
                        navController.navigate(Routes.FILTER_MANAGEMENT)
                    },
                    onFrameManagementClick = {
                        navController.navigate(Routes.FRAME_MANAGEMENT)
                    }
                )
            }

            composable(Routes.FILTER_MANAGEMENT) {
                FilterManagementScreen(
                    viewModel = cameraViewModel,
                    onBack = {
                        navController.popBackStack()
                    }
                )
            }

            composable(Routes.FRAME_MANAGEMENT) {
                FrameManagementScreen(
                    viewModel = cameraViewModel,
                    onBack = {
                        navController.popBackStack()
                    }
                )
            }
        }
    }
}

@Composable
fun PermissionScreen(
    onRequestPermission: () -> Unit,
    modifier: Modifier = Modifier
) {
    Box(
        modifier = modifier
            .fillMaxSize()
            .background(Color.Black)
            .navigationBarsPadding(),
        contentAlignment = Alignment.Center
    ) {
        Column(
            horizontalAlignment = Alignment.CenterHorizontally,
            verticalArrangement = Arrangement.spacedBy(24.dp)
        ) {
            Text(
                text = stringResource(R.string.camera_permission_required),
                color = Color.White,
                style = MaterialTheme.typography.headlineSmall,
                textAlign = TextAlign.Center
            )

            Button(
                onClick = onRequestPermission,
                colors = ButtonDefaults.buttonColors(
                    containerColor = Color(0xFFFF6B35)
                )
            ) {
                Text(text = stringResource(R.string.grant_permission))
            }
        }
    }
}
