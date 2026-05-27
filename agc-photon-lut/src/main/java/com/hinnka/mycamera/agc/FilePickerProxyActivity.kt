package com.hinnka.mycamera.agc

import android.app.Activity
import android.content.Context
import android.content.Intent
import android.net.Uri
import android.os.Bundle
import kotlinx.coroutines.flow.MutableStateFlow

/**
 * 透明的中继 Activity，用于在宿主环境中安全地弹出系统文件选择器并回传结果。
 *
 * 因为插件的 Dialog 依附在宿主 Window 树中，宿主 Activity 的 ActivityResultRegistry
 * 经混淆后无法直接被 rememberLauncherForActivityResult 使用，所以改为启动这个
 * 轻量透明的中继 Activity 来接管文件选择。
 */
class FilePickerProxyActivity : Activity() {

    companion object {
        private const val REQUEST_PICK_FILES = 1001
        private const val REQUEST_CREATE_DOCUMENT = 1002

        const val ACTION_PICK = "com.hinnka.mycamera.agc.ACTION_PICK"
        const val ACTION_CREATE = "com.hinnka.mycamera.agc.ACTION_CREATE"
        const val EXTRA_MIME_TYPES = "mime_types"
        const val EXTRA_CREATE_FILENAME = "create_filename"

        /**
         * 文件选择结果（导入）：null 代表未完成或已取消，非 null 代表已选择的 URI 列表
         */
        val importResult: MutableStateFlow<List<Uri>?> = MutableStateFlow(null)

        /**
         * 文件创建结果（导出）：null 代表未完成或已取消，非 null 代表目标 URI
         */
        val exportResult: MutableStateFlow<Uri?> = MutableStateFlow(null)

        fun launchPicker(context: Context, mimeTypes: Array<String> = arrayOf("*/*")) {
            importResult.value = null
            val intent = Intent(context, FilePickerProxyActivity::class.java).apply {
                action = ACTION_PICK
                putExtra(EXTRA_MIME_TYPES, mimeTypes)
                addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
            }
            context.startActivity(intent)
        }

        fun launchCreateDocument(context: Context, filename: String) {
            exportResult.value = null
            val intent = Intent(context, FilePickerProxyActivity::class.java).apply {
                action = ACTION_CREATE
                putExtra(EXTRA_CREATE_FILENAME, filename)
                addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
            }
            context.startActivity(intent)
        }
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        // 设置透明主题（无窗口装饰）
        window.setBackgroundDrawableResource(android.R.color.transparent)

        when (intent?.action) {
            ACTION_PICK -> {
                val mimeTypes = intent.getStringArrayExtra(EXTRA_MIME_TYPES) ?: arrayOf("*/*")
                val pickIntent = Intent(Intent.ACTION_OPEN_DOCUMENT).apply {
                    addCategory(Intent.CATEGORY_OPENABLE)
                    type = "*/*"
                    putExtra(Intent.EXTRA_MIME_TYPES, mimeTypes)
                    putExtra(Intent.EXTRA_ALLOW_MULTIPLE, true)
                }
                startActivityForResult(pickIntent, REQUEST_PICK_FILES)
            }
            ACTION_CREATE -> {
                val filename = intent.getStringExtra(EXTRA_CREATE_FILENAME) ?: "export.cube"
                val createIntent = Intent(Intent.ACTION_CREATE_DOCUMENT).apply {
                    addCategory(Intent.CATEGORY_OPENABLE)
                    type = "application/octet-stream"
                    putExtra(Intent.EXTRA_TITLE, filename)
                }
                startActivityForResult(createIntent, REQUEST_CREATE_DOCUMENT)
            }
            else -> finish()
        }
    }

    override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?) {
        super.onActivityResult(requestCode, resultCode, data)

        when (requestCode) {
            REQUEST_PICK_FILES -> {
                if (resultCode == RESULT_OK && data != null) {
                    val uris = mutableListOf<Uri>()
                    val clipData = data.clipData
                    if (clipData != null) {
                        for (i in 0 until clipData.itemCount) {
                            uris.add(clipData.getItemAt(i).uri)
                        }
                    } else {
                        data.data?.let { uris.add(it) }
                    }
                    if (uris.isNotEmpty()) {
                        // 持久化读取权限
                        uris.forEach { uri ->
                            try {
                                contentResolver.takePersistableUriPermission(
                                    uri,
                                    Intent.FLAG_GRANT_READ_URI_PERMISSION
                                )
                            } catch (e: Exception) {
                                // ignore
                            }
                        }
                        importResult.value = uris
                    } else {
                        importResult.value = emptyList()
                    }
                } else {
                    importResult.value = emptyList()
                }
                finish()
            }
            REQUEST_CREATE_DOCUMENT -> {
                if (resultCode == RESULT_OK) {
                    exportResult.value = data?.data
                } else {
                    exportResult.value = null
                }
                finish()
            }
        }
    }
}
