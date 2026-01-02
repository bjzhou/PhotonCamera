package com.hinnka.mycamera

import android.Manifest
import android.content.pm.PackageManager
import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
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
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.material3.*
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
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
import com.hinnka.mycamera.ui.camera.CameraScreen
import com.hinnka.mycamera.ui.gallery.GalleryScreen
import com.hinnka.mycamera.ui.gallery.PhotoDetailScreen
import com.hinnka.mycamera.ui.gallery.PhotoEditScreen
import com.hinnka.mycamera.ui.theme.PhotonCameraTheme
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
    const val PHOTO_EDIT = "photo_edit"

    fun photoDetail(index: Int) = "photo_detail/$index"
}

class MainActivity : ComponentActivity() {

    private val cameraViewModel: CameraViewModel by viewModels()
    private val galleryViewModel: GalleryViewModel by viewModels()

    private var hasCameraPermission by mutableStateOf(false)

    private val permissionLauncher = registerForActivityResult(
        ActivityResultContracts.RequestPermission()
    ) { isGranted ->
        hasCameraPermission = isGranted
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        // 启用全屏模式
        enableEdgeToEdge()
        hideSystemUI()
        OrientationObserver.observe(this)

        // 检查相机权限
        hasCameraPermission = ContextCompat.checkSelfPermission(
            this, Manifest.permission.CAMERA
        ) == PackageManager.PERMISSION_GRANTED

        setContent {
            PhotonCameraTheme {
                Surface(
                    modifier = Modifier.fillMaxSize(),
                    color = Color.Black
                ) {
                    if (hasCameraPermission) {
                        NavigationHost(cameraViewModel, galleryViewModel)
                    } else {
                        PermissionScreen(
                            onRequestPermission = {
                                permissionLauncher.launch(Manifest.permission.CAMERA)
                            }
                        )
                    }
                }
            }
        }
    }

    private fun hideSystemUI() {
        WindowCompat.setDecorFitsSystemWindows(window, false)
        WindowInsetsControllerCompat(window, window.decorView).let { controller ->
            controller.hide(WindowInsetsCompat.Type.systemBars())
            controller.systemBarsBehavior =
                WindowInsetsControllerCompat.BEHAVIOR_SHOW_TRANSIENT_BARS_BY_SWIPE
        }
    }
}

@Composable
fun NavigationHost(
    cameraViewModel: CameraViewModel,
    galleryViewModel: GalleryViewModel
) {
    val navController = rememberNavController()

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
            CameraScreen(
                viewModel = cameraViewModel,
                galleryViewModel = galleryViewModel,
                onGalleryClick = {
                    navController.navigate(Routes.GALLERY)
                }
            )
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
                }
            )
        }

        composable(Routes.PHOTO_EDIT) {
            PhotoEditScreen(
                viewModel = galleryViewModel,
                onBack = {
                    navController.popBackStack()
                }
            )
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
            .background(Color.Black),
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
