package com.hinnka.mycamera.lut.creator

import android.net.Uri
import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.ArrowBack
import androidx.compose.material.icons.filled.AutoAwesome
import androidx.compose.material.icons.filled.CheckCircle
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.ui.graphics.asImageBitmap
import com.hinnka.mycamera.R

private data class LocalImagePairDraft(
    val sourceUri: Uri,
    val targetUri: Uri
)

private enum class LutCreatorMode {
    AI,
    LOCAL
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun LutCreatorScreen(
    viewModel: LutCreatorViewModel,
    onNavigateBack: () -> Unit,
    onSuccess: (String) -> Unit
) {
    val uiState by viewModel.uiState.collectAsState()
    var lutName by remember { mutableStateOf("My AI LUT") }
    var customPrompt by remember { mutableStateOf("") }
    var selectedMode by remember { mutableStateOf(LutCreatorMode.AI) }
    var pendingSourceUri by remember { mutableStateOf<Uri?>(null) }
    var localPairs by remember { mutableStateOf(listOf<LocalImagePairDraft>()) }
    val idleScrollState = rememberScrollState()

    val aiImageLauncher = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.GetContent()
    ) { uri: Uri? ->
        uri ?: return@rememberLauncherForActivityResult
        viewModel.analyzeAiImage(uri, customPrompt)
    }

    val localSourceLauncher = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.GetContent()
    ) { uri: Uri? ->
        pendingSourceUri = uri
    }

    val localTargetLauncher = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.GetContent()
    ) { uri: Uri? ->
        val sourceUri = pendingSourceUri ?: return@rememberLauncherForActivityResult
        if (uri != null) {
            localPairs = localPairs + LocalImagePairDraft(sourceUri, uri)
        }
        pendingSourceUri = null
    }

    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text(stringResource(R.string.lut_creator_title)) },
                navigationIcon = {
                    IconButton(onClick = onNavigateBack) {
                        Icon(imageVector = Icons.Default.ArrowBack, contentDescription = stringResource(R.string.back))
                    }
                }
            )
        }
    ) { padding ->
        Column(
            modifier = Modifier
                .fillMaxSize()
                .padding(padding)
                .padding(horizontal = 24.dp),
            horizontalAlignment = Alignment.CenterHorizontally,
            verticalArrangement = Arrangement.Center
        ) {
            when (val state = uiState) {
                is LutCreatorUiState.Idle -> {
                    Column(
                        modifier = Modifier
                            .fillMaxWidth()
                            .weight(1f)
                            .verticalScroll(idleScrollState),
                        verticalArrangement = Arrangement.Top,
                        horizontalAlignment = Alignment.Start
                    ) {
                        PrimaryTabRow(
                            selectedTabIndex = selectedMode.ordinal,
                            containerColor = Color.Transparent,
                            contentColor = Color(0xFFE5A324)
                        ) {
                            Tab(
                                selected = selectedMode == LutCreatorMode.AI,
                                onClick = { selectedMode = LutCreatorMode.AI },
                                text = { Text(stringResource(R.string.lut_creator_tab_ai)) }
                            )
                            Tab(
                                selected = selectedMode == LutCreatorMode.LOCAL,
                                onClick = { selectedMode = LutCreatorMode.LOCAL },
                                text = { Text(stringResource(R.string.lut_creator_tab_local)) }
                            )
                        }

                        Spacer(modifier = Modifier.height(16.dp))

                        Surface(
                            color = MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.4f),
                            shape = RoundedCornerShape(20.dp),
                            modifier = Modifier.fillMaxWidth()
                        ) {
                            Column(modifier = Modifier.padding(20.dp)) {
                                when (selectedMode) {
                                    LutCreatorMode.AI -> {
                                        Text(
                                            text = stringResource(R.string.lut_creator_tab_ai),
                                            style = MaterialTheme.typography.titleMedium,
                                            fontWeight = androidx.compose.ui.text.font.FontWeight.SemiBold
                                        )
                                        Spacer(modifier = Modifier.height(6.dp))
                                        Text(
                                            text = stringResource(R.string.lut_creator_ai_mode_desc),
                                            style = MaterialTheme.typography.bodyMedium,
                                            color = MaterialTheme.colorScheme.onSurfaceVariant
                                        )
                                        Spacer(modifier = Modifier.height(16.dp))
                                        OutlinedTextField(
                                            value = customPrompt,
                                            onValueChange = { customPrompt = it },
                                            label = { Text(stringResource(R.string.lut_creator_custom_ai_instructions)) },
                                            placeholder = { Text(stringResource(R.string.lut_creator_custom_ai_hint)) },
                                            modifier = Modifier.fillMaxWidth(),
                                            shape = RoundedCornerShape(12.dp),
                                            colors = OutlinedTextFieldDefaults.colors(
                                                unfocusedBorderColor = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.2f),
                                                focusedBorderColor = Color(0xFFE5A324)
                                            )
                                        )
                                        Spacer(modifier = Modifier.height(12.dp))
                                        Text(
                                            text = stringResource(R.string.lut_creator_use_ai),
                                            style = MaterialTheme.typography.bodySmall,
                                            color = MaterialTheme.colorScheme.onSurfaceVariant
                                        )
                                    }

                                    LutCreatorMode.LOCAL -> {
                                        val isSelectingTarget = pendingSourceUri != null

                                        Text(
                                            text = stringResource(R.string.lut_creator_tab_local),
                                            style = MaterialTheme.typography.titleMedium,
                                            fontWeight = androidx.compose.ui.text.font.FontWeight.SemiBold
                                        )
                                        Spacer(modifier = Modifier.height(6.dp))
                                        Text(
                                            text = stringResource(R.string.lut_creator_local_mode_desc),
                                            style = MaterialTheme.typography.bodyMedium,
                                            color = MaterialTheme.colorScheme.onSurfaceVariant
                                        )
                                        Spacer(modifier = Modifier.height(16.dp))
                                        HorizontalDivider(color = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.1f))
                                        Spacer(modifier = Modifier.height(16.dp))
                                        Text(
                                            text = stringResource(R.string.lut_creator_local_pairs_hint),
                                            style = MaterialTheme.typography.bodyMedium,
                                            color = MaterialTheme.colorScheme.onSurfaceVariant
                                        )
                                        Spacer(modifier = Modifier.height(16.dp))
                                        Surface(
                                            modifier = Modifier.fillMaxWidth(),
                                            shape = RoundedCornerShape(14.dp),
                                            color = MaterialTheme.colorScheme.surface.copy(alpha = 0.55f)
                                        ) {
                                            Column(modifier = Modifier.padding(14.dp)) {
                                                Text(
                                                    text = if (isSelectingTarget) {
                                                        stringResource(R.string.lut_creator_local_step_select_target)
                                                    } else {
                                                        stringResource(R.string.lut_creator_local_step_select_source)
                                                    },
                                                    style = MaterialTheme.typography.titleSmall,
                                                    fontWeight = androidx.compose.ui.text.font.FontWeight.SemiBold
                                                )
                                                Spacer(modifier = Modifier.height(4.dp))
                                                Text(
                                                    text = if (isSelectingTarget) {
                                                        stringResource(R.string.lut_creator_local_step_select_target_desc)
                                                    } else {
                                                        stringResource(R.string.lut_creator_local_step_select_source_desc)
                                                    },
                                                    style = MaterialTheme.typography.bodySmall,
                                                    color = MaterialTheme.colorScheme.onSurfaceVariant
                                                )
                                            }
                                        }
                                        Spacer(modifier = Modifier.height(14.dp))
                                        Button(
                                            onClick = {
                                                if (isSelectingTarget) {
                                                    localTargetLauncher.launch("image/*")
                                                } else {
                                                    localSourceLauncher.launch("image/*")
                                                }
                                            },
                                            modifier = Modifier.fillMaxWidth(),
                                            shape = RoundedCornerShape(12.dp)
                                        ) {
                                            Text(
                                                if (isSelectingTarget) {
                                                    stringResource(R.string.lut_creator_select_effect_image)
                                                } else {
                                                    stringResource(R.string.lut_creator_select_source_image)
                                                }
                                            )
                                        }
                                        Spacer(modifier = Modifier.height(12.dp))
                                        OutlinedButton(
                                            onClick = {
                                                pendingSourceUri = null
                                                localPairs = emptyList()
                                            },
                                            enabled = isSelectingTarget || localPairs.isNotEmpty(),
                                            modifier = Modifier.fillMaxWidth(),
                                            shape = RoundedCornerShape(12.dp)
                                        ) {
                                            Text(stringResource(R.string.lut_creator_reset_local_selection))
                                        }
                                        Spacer(modifier = Modifier.height(16.dp))
                                        Surface(
                                            modifier = Modifier.fillMaxWidth(),
                                            shape = RoundedCornerShape(14.dp),
                                            color = MaterialTheme.colorScheme.surface.copy(alpha = 0.55f)
                                        ) {
                                            Row(
                                                modifier = Modifier
                                                    .fillMaxWidth()
                                                    .padding(horizontal = 14.dp, vertical = 12.dp),
                                                verticalAlignment = Alignment.CenterVertically
                                            ) {
                                                Icon(
                                                    imageVector = Icons.Default.CheckCircle,
                                                    contentDescription = null,
                                                    tint = Color(0xFFE5A324),
                                                    modifier = Modifier.size(20.dp)
                                                )
                                                Spacer(modifier = Modifier.width(10.dp))
                                                Column(modifier = Modifier.weight(1f)) {
                                                    Text(
                                                        text = stringResource(
                                                            R.string.lut_creator_local_pairs_count,
                                                            localPairs.size
                                                        ),
                                                        style = MaterialTheme.typography.titleSmall
                                                    )
                                                    Spacer(modifier = Modifier.height(2.dp))
                                                    Text(
                                                        text = if (isSelectingTarget) {
                                                            stringResource(R.string.lut_creator_local_pending_target)
                                                        } else {
                                                            stringResource(R.string.lut_creator_local_ready_status)
                                                        },
                                                        style = MaterialTheme.typography.bodySmall,
                                                        color = MaterialTheme.colorScheme.onSurfaceVariant
                                                    )
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        Spacer(modifier = Modifier.height(20.dp))
                        Button(
                            onClick = {
                                if (selectedMode == LutCreatorMode.AI) {
                                    aiImageLauncher.launch("image/*")
                                } else {
                                    viewModel.analyzeLocalImagePairs(
                                        localPairs.map { LocalImagePairInput(it.sourceUri, it.targetUri) }
                                    )
                                }
                            },
                            enabled = selectedMode == LutCreatorMode.AI || localPairs.isNotEmpty(),
                            modifier = Modifier
                                .fillMaxWidth()
                                .height(60.dp),
                            shape = RoundedCornerShape(16.dp),
                            colors = ButtonDefaults.buttonColors(
                                containerColor = Color(0xFFE5A324),
                                contentColor = Color.White
                            )
                        ) {
                            Text(
                                if (selectedMode == LutCreatorMode.AI) {
                                    stringResource(R.string.lut_creator_select_images)
                                } else {
                                    stringResource(R.string.lut_creator_start_local_analysis)
                                },
                                style = MaterialTheme.typography.titleLarge,
                                fontWeight = androidx.compose.ui.text.font.FontWeight.Medium
                            )
                        }
                        Spacer(modifier = Modifier.height(24.dp))
                    }
                }

                is LutCreatorUiState.Analyzing -> {
                    Column(
                        modifier = Modifier.fillMaxWidth().weight(1f),
                        horizontalAlignment = Alignment.CenterHorizontally,
                        verticalArrangement = Arrangement.Center
                    ) {
                        CircularProgressIndicator(color = Color(0xFFE5A324))
                        Spacer(modifier = Modifier.height(24.dp))
                        Text(
                            stringResource(R.string.lut_creator_analyzing),
                            style = MaterialTheme.typography.titleMedium,
                            color = MaterialTheme.colorScheme.onSurfaceVariant
                        )
                    }
                }

                is LutCreatorUiState.AnalysisComplete -> {
                    Column(
                        modifier = Modifier
                            .fillMaxWidth()
                            .weight(1f)
                            .verticalScroll(rememberScrollState()),
                        horizontalAlignment = Alignment.CenterHorizontally,
                        verticalArrangement = Arrangement.Top
                    ) {
                        Spacer(modifier = Modifier.height(16.dp))
                        Icon(
                            imageVector = Icons.Default.AutoAwesome,
                            contentDescription = null,
                            modifier = Modifier.size(48.dp),
                            tint = Color(0xFFE5A324)
                        )
                        Spacer(modifier = Modifier.height(16.dp))
                        Text(
                            stringResource(R.string.lut_creator_analysis_complete),
                            style = MaterialTheme.typography.headlineSmall,
                            fontWeight = androidx.compose.ui.text.font.FontWeight.Bold
                        )
                        
                        state.generatedSourceBitmap?.let { bitmap ->
                            Spacer(modifier = Modifier.height(24.dp))
                            Text(
                                text = "AI 还原的原图预览",
                                style = MaterialTheme.typography.titleSmall,
                                color = MaterialTheme.colorScheme.onSurfaceVariant
                            )
                            Spacer(modifier = Modifier.height(12.dp))
                            Surface(
                                shape = RoundedCornerShape(16.dp),
                                shadowElevation = 4.dp,
                                modifier = Modifier.sizeIn(maxHeight = 300.dp)
                            ) {
                                androidx.compose.foundation.Image(
                                    bitmap = bitmap.asImageBitmap(),
                                    contentDescription = "AI Generated Original",
                                    modifier = Modifier.fillMaxWidth(),
                                    contentScale = androidx.compose.ui.layout.ContentScale.Fit
                                )
                            }
                        }

                        Spacer(modifier = Modifier.height(32.dp))
                        OutlinedTextField(
                            value = lutName,
                            onValueChange = { lutName = it },
                            label = { Text(stringResource(R.string.lut_creator_lut_name_hint)) },
                            singleLine = true,
                            modifier = Modifier.fillMaxWidth(),
                            shape = RoundedCornerShape(12.dp),
                            colors = OutlinedTextFieldDefaults.colors(
                                focusedBorderColor = Color(0xFFE5A324)
                            )
                        )
                        Spacer(modifier = Modifier.height(24.dp))
                    }
                    Button(
                        onClick = { viewModel.generateAndImportLut(lutName, state.recipe) },
                        modifier = Modifier
                            .fillMaxWidth()
                            .padding(bottom = 24.dp)
                            .height(60.dp),
                        shape = RoundedCornerShape(16.dp),
                        colors = ButtonDefaults.buttonColors(
                            containerColor = Color(0xFFE5A324),
                            contentColor = Color.White
                        )
                    ) {
                        Text(
                            stringResource(R.string.lut_creator_generate_save),
                            style = MaterialTheme.typography.titleLarge
                        )
                    }
                }

                is LutCreatorUiState.Generating -> {
                    Column(
                        modifier = Modifier.fillMaxWidth().weight(1f),
                        horizontalAlignment = Alignment.CenterHorizontally,
                        verticalArrangement = Arrangement.Center
                    ) {
                        CircularProgressIndicator(color = Color(0xFFE5A324))
                        Spacer(modifier = Modifier.height(24.dp))
                        Text(
                            stringResource(R.string.lut_creator_generating),
                            style = MaterialTheme.typography.titleMedium,
                            color = MaterialTheme.colorScheme.onSurfaceVariant
                        )
                    }
                }

                is LutCreatorUiState.Success -> {
                    Column(
                        modifier = Modifier.fillMaxWidth().weight(1f),
                        horizontalAlignment = Alignment.CenterHorizontally,
                        verticalArrangement = Arrangement.Center
                    ) {
                        Text(
                            stringResource(R.string.lut_creator_success),
                            style = MaterialTheme.typography.headlineMedium,
                            color = Color(0xFFE5A324)
                        )
                    }
                    Button(
                        onClick = { onSuccess(state.lutId) },
                        modifier = Modifier
                            .fillMaxWidth()
                            .padding(bottom = 24.dp)
                            .height(60.dp),
                        shape = RoundedCornerShape(16.dp),
                        colors = ButtonDefaults.buttonColors(
                            containerColor = Color(0xFFE5A324),
                            contentColor = Color.White
                        )
                    ) {
                        Text(stringResource(R.string.lut_creator_finish), style = MaterialTheme.typography.titleLarge)
                    }
                }

                is LutCreatorUiState.Error -> {
                    Column(
                        modifier = Modifier.fillMaxWidth().weight(1f),
                        horizontalAlignment = Alignment.CenterHorizontally,
                        verticalArrangement = Arrangement.Center
                    ) {
                        Text(
                            stringResource(R.string.lut_creator_error, state.message),
                            color = MaterialTheme.colorScheme.error
                        )
                    }
                    Button(
                        onClick = { viewModel.resetToIdle() },
                        modifier = Modifier
                            .fillMaxWidth()
                            .padding(bottom = 24.dp)
                            .height(60.dp),
                        shape = RoundedCornerShape(16.dp)
                    ) {
                        Text(
                            stringResource(R.string.lut_creator_try_again),
                            style = MaterialTheme.typography.titleLarge
                        )
                    }
                }
            }
        }
    }
}
