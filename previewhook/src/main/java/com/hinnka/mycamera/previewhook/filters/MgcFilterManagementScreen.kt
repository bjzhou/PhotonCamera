package com.hinnka.mycamera.previewhook.filters

import android.annotation.SuppressLint
import android.app.Activity
import android.app.AlertDialog
import android.content.Intent
import android.content.res.ColorStateList
import android.graphics.Color
import android.graphics.Typeface
import android.graphics.drawable.GradientDrawable
import android.graphics.drawable.RippleDrawable
import android.net.Uri
import android.view.*
import android.view.ViewGroup.LayoutParams.MATCH_PARENT
import android.view.ViewGroup.LayoutParams.WRAP_CONTENT
import android.widget.*
import android.widget.LinearLayout.HORIZONTAL
import com.hinnka.mycamera.lut.LutCurve
import com.hinnka.mycamera.lut.LutInfo
import com.hinnka.mycamera.raw.ColorSpace
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.Job
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

@SuppressLint("ViewConstructor")
class MgcFilterManagementScreen(
    private val activity: Activity,
    private val controller: MgcFilterController,
    private val strings: HostStrings,
    private val onClose: () -> Unit,
) : FrameLayout(activity) {

    private val scope = CoroutineScope(Dispatchers.Main)
    private var selectedIds = mutableSetOf<String>()
    private var selectedTabIndex = 0
    private var categories = listOf<String>()
    private var localLutList = listOf<LutInfo>()
    private var pendingExportContent: String? = null

    // Views from layout
    private lateinit var navBtn: ImageButton
    private lateinit var titleText: TextView
    private lateinit var normalActions: LinearLayout
    private lateinit var selectionActions: LinearLayout
    private lateinit var selectAllBtn: ImageButton
    private lateinit var batchCategoryBtn: ImageButton
    private lateinit var batchDeleteBtn: ImageButton
    private lateinit var settingsBtn: ImageButton
    private lateinit var importBtn: ImageButton
    private lateinit var importProgress: ProgressBar
    private lateinit var tabLayout: LinearLayout
    private lateinit var listContainer: LinearLayout

    private var isImporting = false
    private var importJob: Job? = null

    // ──────────────────────── Colors (match Compose reference) ────────────────────────
    private val orange = Color.parseColor("#FFFF6B35")
    private val darkBg = Color.parseColor("#151515")

    init {
        setBackgroundColor(darkBg)
        LayoutInflater.from(context).inflate(res("mgc_filter_management_screen", "layout"), this, true)
        bindViews()
        setupListeners()
        setupStateObserver()
    }

    // ──────────────────────── Resource helpers (no R dependency) ────────────────────────
    private fun res(name: String, type: String): Int =
        context.resources.getIdentifier(name, type, context.packageName)

    private fun id(name: String): Int = res(name, "id")

    // ──────────────────────── View binding ────────────────────────
    private fun bindViews() {
        navBtn = findViewById(id("mgc_nav_btn"))
        titleText = findViewById(id("mgc_title_text"))
        normalActions = findViewById(id("mgc_normal_actions"))
        selectionActions = findViewById(id("mgc_selection_actions"))
        selectAllBtn = findViewById(id("mgc_select_all_btn"))
        batchCategoryBtn = findViewById(id("mgc_batch_category_btn"))
        batchDeleteBtn = findViewById(id("mgc_batch_delete_btn"))
        settingsBtn = findViewById(id("mgc_settings_btn"))
        importBtn = findViewById(id("mgc_import_btn"))
        importProgress = findViewById(id("mgc_import_progress"))
        tabLayout = findViewById(id("mgc_tab_layout"))
        listContainer = findViewById(id("mgc_list_container"))

        navBtn.setColorFilter(Color.WHITE)
        settingsBtn.setColorFilter(Color.WHITE)
        importBtn.setColorFilter(Color.WHITE)
        selectAllBtn.setColorFilter(Color.WHITE)
        batchCategoryBtn.setColorFilter(Color.WHITE)
        batchDeleteBtn.setColorFilter(Color.WHITE)

        titleText.text = strings.filterManagementTitle
    }

    // ──────────────────────── Listeners ────────────────────────
    private fun setupListeners() {
        navBtn.setOnClickListener {
            if (selectedIds.isNotEmpty()) {
                selectedIds.clear()
                updateSelectionMode()
            } else {
                controller.store.saveFilterOrder(localLutList.map { it.id })
                onClose()
            }
        }
        settingsBtn.setOnClickListener { showCategoryManagementDialog() }
        importBtn.setOnClickListener { launchImportPicker() }

        selectAllBtn.setOnClickListener {
            val filtered = getFilteredLutList()
            if (selectedIds.size == filtered.size) selectedIds.clear()
            else selectedIds.addAll(filtered.map { it.id })
            updateSelectionMode()
            rebuildList()
        }
        batchCategoryBtn.setOnClickListener {
            showBatchEditCategoryDialog(selectedIds.toList())
        }
        batchDeleteBtn.setOnClickListener {
            val toDelete = localLutList.filter { it.id in selectedIds && !it.isBuiltIn }
            if (toDelete.isNotEmpty()) {
                scope.launch {
                    withContext(Dispatchers.IO) { controller.batchDelete(toDelete.map { it.id }) }
                    selectedIds.clear()
                    updateSelectionMode()
                }
            }
        }
    }

    // ──────────────────────── Selection mode ────────────────────────
    private fun updateSelectionMode() {
        val isSelectionMode = selectedIds.isNotEmpty()
        if (isSelectionMode) {
            normalActions.visibility = GONE
            selectionActions.visibility = VISIBLE
            titleText.text = strings.selectedCount(selectedIds.size)
            val allSelected = selectedIds.size == getFilteredLutList().size
            selectAllBtn.setImageResource(
                if (allSelected) android.R.drawable.checkbox_on_background
                else android.R.drawable.checkbox_off_background
            )
        } else {
            normalActions.visibility = VISIBLE
            selectionActions.visibility = GONE
            titleText.text = strings.filterManagementTitle
        }
        rebuildList()
    }

    // ──────────────────────── State observation ────────────────────────
    private fun setupStateObserver() {
        scope.launch { controller.currentLutId.collect { rebuildList() } }
        scope.launch { controller.categoryOrder.collect { refreshCategories() } }
        scope.launch {
            controller.availableLutList.collect { list ->
                localLutList = list
                refreshCategories()
            }
        }
    }

    // ──────────────────────── Categories ────────────────────────
    private fun refreshCategories() {
        val dynamicCategories = localLutList.map { it.category }
            .distinct().filter { it.isNotEmpty() && it != strings.categoryAll && it != strings.custom }

        val order = controller.categoryOrder.value
        val sorted = (order + dynamicCategories).distinct().sortedWith(
            compareBy<String> { cat -> val i = order.indexOf(cat); if (i == -1) Int.MAX_VALUE else i }.thenBy { it }
        )
        categories = listOf(strings.categoryAll, strings.custom) + sorted
        if (selectedTabIndex >= categories.size) selectedTabIndex = 0
        rebuildTabs()
        rebuildList()
    }

    // ──────────────────────── Tabs (with orange bottom indicator) ────────────────────────
    private fun rebuildTabs() {
        tabLayout.removeAllViews()
        categories.forEachIndexed { index, category ->
            val isSelected = index == selectedTabIndex

            // Each tab: vertical LinearLayout = label + indicator line
            val tab = LinearLayout(context).apply {
                orientation = LinearLayout.VERTICAL
                gravity = Gravity.CENTER_HORIZONTAL
                isClickable = true
                isFocusable = true
                background = buildRippleOrSelector()
                setOnClickListener {
                    selectedTabIndex = index
                    selectedIds.clear()
                    updateSelectionMode()
                    rebuildTabs()
                    rebuildList()
                }
            }

            val label = TextView(context).apply {
                text = category
                setTextColor(if (isSelected) Color.WHITE else Color.argb(178, 255, 255, 255))
                textSize = 14f
                typeface = if (isSelected)
                    Typeface.create("sans-serif-medium", Typeface.NORMAL)
                else Typeface.DEFAULT
                gravity = Gravity.CENTER
                setPadding(dp(16), dp(10), dp(16), dp(6))
            }
            tab.addView(label, LinearLayout.LayoutParams(WRAP_CONTENT, WRAP_CONTENT))

            // Orange indicator line at bottom
            val indicator = View(context).apply {
                setBackgroundColor(if (isSelected) orange else Color.TRANSPARENT)
            }
            tab.addView(indicator, LinearLayout.LayoutParams(MATCH_PARENT, dp(2)))

            tabLayout.addView(tab, LinearLayout.LayoutParams(WRAP_CONTENT, WRAP_CONTENT).apply {
                marginEnd = dp(4)
            })
        }
    }

    /** 构造一个简单的 ripple/selector，用于 tab 点击反馈 */
    private fun buildRippleOrSelector(): android.graphics.drawable.Drawable? {
        return try {
            val mask = GradientDrawable().apply { setColor(Color.WHITE) }
            RippleDrawable(
                ColorStateList.valueOf(Color.argb(40, 255, 255, 255)),
                null, mask
            )
        } catch (_: Exception) {
            null
        }
    }

    // ──────────────────────── Filtering ────────────────────────
    private fun getFilteredLutList(): List<LutInfo> {
        if (selectedTabIndex >= categories.size) return localLutList
        return when (selectedTabIndex) {
            0 -> localLutList
            1 -> localLutList.filter { !it.isBuiltIn }
            else -> localLutList.filter { it.category == categories[selectedTabIndex] }
        }
    }

    // ──────────────────────── List ────────────────────────
    private fun rebuildList() {
        listContainer.removeAllViews()
        val defaultId = controller.currentLutId.value
        val filteredList = getFilteredLutList()
        val isSelectionMode = selectedIds.isNotEmpty()
        val showCategory = selectedTabIndex <= 1

        filteredList.forEach { lut ->
            val itemView = inflateItem(lut, defaultId, isSelectionMode, showCategory)
            listContainer.addView(itemView, LinearLayout.LayoutParams(MATCH_PARENT, WRAP_CONTENT).apply {
                bottomMargin = dp(8)
            })
        }
    }

    // ──────────────────────── Item inflation ────────────────────────
    private fun inflateItem(
        lut: LutInfo,
        defaultId: String,
        isSelectionMode: Boolean,
        showCategory: Boolean,
    ): View {
        val itemView = LayoutInflater.from(context)
            .inflate(res("mgc_filter_management_item", "layout"), this, false)
        val isSelected = selectedIds.contains(lut.id)
        val isDefault = defaultId == lut.id

        // ── Card background + border based on state (matches Compose reference) ──
        val bgColor = when {
            isSelected -> Color.argb(51, 255, 107, 53)     // orange 20%
            isDefault  -> Color.argb(26, 255, 255, 255)    // white 10%
            else       -> Color.argb(13, 255, 255, 255)    // white 5%
        }
        val borderColor = when {
            isSelected -> orange
            isDefault  -> Color.argb(128, 255, 107, 53)   // orange 50%
            else       -> Color.argb(51, 255, 255, 255)   // white 20%
        }
        val borderWidth = if (isSelected || isDefault) dp(2) else dp(1)

        itemView.background = GradientDrawable().apply {
            shape = GradientDrawable.RECTANGLE
            cornerRadius = dpFloat(12f)
            setColor(bgColor)
            setStroke(borderWidth, borderColor)
        }

        // ── Left area (checkbox in selection mode) ──
        val leftArea = itemView.findViewById<FrameLayout>(id("mgc_item_left_area"))
        val checkbox = itemView.findViewById<CheckBox>(id("mgc_item_checkbox"))
        if (isSelectionMode) {
            leftArea.visibility = VISIBLE
            checkbox.isChecked = isSelected
            val states = arrayOf(intArrayOf(android.R.attr.state_checked), intArrayOf())
            val colors = intArrayOf(orange, Color.argb(128, 255, 255, 255))
            checkbox.buttonTintList = ColorStateList(states, colors)
        } else {
            leftArea.visibility = GONE
        }

        // ── Name ──
        val nameText = itemView.findViewById<TextView>(id("mgc_item_name"))
        nameText.text = lut.getName()

        // ── Tags ──
        val tagsRow = itemView.findViewById<LinearLayout>(id("mgc_item_tags"))
        tagsRow.removeAllViews()
        addTypeTag(tagsRow, lut)
//        if (lut.isVip) addTag(tagsRow, strings.billingVipTag, Color.parseColor("#FFFFD700"), Color.argb(51, 255, 215, 0))
        if (showCategory && lut.category.isNotEmpty()) addTag(tagsRow, lut.category, Color.argb(178, 255, 255, 255), Color.argb(38, 255, 255, 255))

        // ── Default badge ──
        val defaultBadge = itemView.findViewById<TextView>(id("mgc_item_default_badge"))
        if (isDefault) {
            defaultBadge.text = strings.currentDefault
            defaultBadge.visibility = VISIBLE
        } else {
            defaultBadge.visibility = GONE
        }

        // ── Tune button ──
        val tuneBtn = itemView.findViewById<ImageButton>(id("mgc_item_tune_btn"))
        tuneBtn.setColorFilter(Color.argb(204, 255, 255, 255))
        tuneBtn.setOnClickListener { showEditRecipeDialog(lut) }

        // ── More button ──
        val moreBtn = itemView.findViewById<ImageButton>(id("mgc_item_more_btn"))
        moreBtn.setColorFilter(Color.argb(153, 255, 255, 255))
        moreBtn.setOnClickListener { showItemMoreMenu(lut, moreBtn) }

        // ── Item click ──
        val contentArea = itemView.findViewById<LinearLayout>(id("mgc_item_content"))
        contentArea.setOnClickListener {
            if (isSelectionMode) {
                if (isSelected) selectedIds.remove(lut.id) else selectedIds.add(lut.id)
                updateSelectionMode()
            } else {
                scope.launch(Dispatchers.IO) { controller.selectLut(lut.id) }
            }
        }
        contentArea.setOnLongClickListener {
            if (!isSelectionMode) {
                selectedIds.add(lut.id)
                updateSelectionMode()
                true
            } else false
        }

        // In selection mode, also tap tune/more to toggle
        if (isSelectionMode) {
            tuneBtn.setOnClickListener {
                if (isSelected) selectedIds.remove(lut.id) else selectedIds.add(lut.id)
                updateSelectionMode()
            }
            moreBtn.setOnClickListener {
                if (isSelected) selectedIds.remove(lut.id) else selectedIds.add(lut.id)
                updateSelectionMode()
            }
        }

        return itemView
    }

    /** 添加 Built-in / Custom 类型标签 */
    private fun addTypeTag(parent: LinearLayout, lut: LutInfo) {
        val isBuiltIn = lut.isBuiltIn
        val text = if (isBuiltIn) strings.builtIn else strings.custom
        val textColor = if (isBuiltIn) Color.argb(128, 255, 255, 255) else orange
        val bgColor = if (isBuiltIn) Color.argb(26, 255, 255, 255) else Color.argb(51, 255, 107, 53)
        addTag(parent, text, textColor, bgColor)
    }

    /** 创建并添加一个圆角小标签 */
    private fun addTag(parent: LinearLayout, text: String, textColor: Int, bgColor: Int) {
        val tag = TextView(context).apply {
            this.text = text
            setTextColor(textColor)
            textSize = 10f
            background = GradientDrawable().apply {
                shape = GradientDrawable.RECTANGLE
                cornerRadius = dpFloat(4f)
                setColor(bgColor)
            }
            setPadding(dp(4), dp(1), dp(4), dp(1))
        }
        parent.addView(tag, LinearLayout.LayoutParams(WRAP_CONTENT, WRAP_CONTENT).apply {
            marginStart = dp(4)
        })
    }

    // ──────────────────────── More menu (in item) ────────────────────────
    private fun showItemMoreMenu(lut: LutInfo, anchor: View) {
        val popup = PopupMenu(context, anchor)
        popup.menu.add(0, 1, 0, strings.editCategory)
        if (!lut.isBuiltIn) popup.menu.add(0, 2, 1, strings.rename)
        popup.menu.add(0, 3, 2, strings.copy)
        popup.menu.add(0, 4, 3, strings.exportLutCube)
        if (!lut.isBuiltIn) popup.menu.add(0, 5, 4, strings.delete)

        popup.setOnMenuItemClickListener { item ->
            when (item.itemId) {
                1 -> showEditCategoryDialog(lut)
                2 -> showRenameDialog(lut)
                3 -> showCopyDialog(lut)
                4 -> exportLut(lut)
                5 -> showDeleteDialog(lut)
            }
            true
        }
        popup.show()
    }

    // ──────────────────────── Color Recipe ────────────────────────
    private fun showEditRecipeDialog(lut: LutInfo) {
        MgcLutEditSheet(
            activity = activity,
            lutId = lut.id,
            controller = controller,
            onDismiss = {},
        ).show()
    }

    // ──────────────────────── Dialogs ────────────────────────
    private fun showRenameDialog(lut: LutInfo) {
        val edit = EditText(context).apply {
            setText(lut.getName()); setTextColor(Color.WHITE); maxLines = 1
        }
        AlertDialog.Builder(context)
            .setTitle(strings.renameDialogTitle)
            .setView(wrapInPadding(edit))
            .setPositiveButton(strings.confirm) { _, _ ->
                scope.launch { withContext(Dispatchers.IO) { controller.renameLut(lut.id, edit.text.toString()) } }
            }
            .setNegativeButton(strings.cancel, null)
            .show()
    }

    private fun showCopyDialog(lut: LutInfo) {
        val edit = EditText(context).apply {
            setText(lut.getName() + strings.copySuffix); setTextColor(Color.WHITE); maxLines = 1
        }
        AlertDialog.Builder(context)
            .setTitle(strings.copyLutDialogTitle)
            .setView(wrapInPadding(edit))
            .setPositiveButton(strings.confirm) { _, _ ->
                scope.launch(Dispatchers.IO) { controller.copyLut(lut, edit.text.toString()) }
            }
            .setNegativeButton(strings.cancel, null)
            .show()
    }

    private fun showDeleteDialog(lut: LutInfo) {
        AlertDialog.Builder(context)
            .setTitle(strings.deleteConfirmTitle)
            .setMessage(strings.deleteConfirmMessage(lut.getName()))
            .setPositiveButton(strings.delete) { _, _ ->
                scope.launch { withContext(Dispatchers.IO) { controller.deleteLut(lut.id) } }
            }
            .setNegativeButton(strings.cancel, null)
            .show()
    }

    private fun showEditCategoryDialog(lut: LutInfo) {
        showCategoryInputDialog(strings.editCategory, lut.category) { newCat ->
            scope.launch { withContext(Dispatchers.IO) { controller.updateCategory(lut.id, newCat) } }
        }
    }

    private fun showBatchEditCategoryDialog(lutIds: List<String>) {
        if (lutIds.isEmpty()) return
        val title = if (lutIds.size > 1) strings.batchEditCategory else strings.editCategory
        showCategoryInputDialog(title, "") { newCat ->
            scope.launch {
                withContext(Dispatchers.IO) { controller.batchUpdateCategory(lutIds, newCat) }
                selectedIds.clear()
                updateSelectionMode()
            }
        }
    }

    private fun showCategoryInputDialog(title: String, initialValue: String, onConfirm: (String) -> Unit) {
        val existingCats = localLutList.map { it.category }.distinct().filter { it.isNotEmpty() }
        val root = LinearLayout(context).apply {
            orientation = LinearLayout.VERTICAL; setPadding(dp(24), dp(8), dp(24), dp(8))
        }
        val edit = EditText(context).apply {
            setText(initialValue); setTextColor(Color.WHITE)
            hint = strings.category; setHintTextColor(Color.argb(128, 255, 255, 255)); maxLines = 1
        }
        root.addView(edit, LinearLayout.LayoutParams(MATCH_PARENT, WRAP_CONTENT))

        if (existingCats.isNotEmpty()) {
            root.addView(TextView(context).apply {
                text = strings.commonCategories
                setTextColor(Color.argb(128, 255, 255, 255)); textSize = 12f
                setPadding(0, dp(8), 0, dp(4))
            })
            val chipScroll = HorizontalScrollView(context).apply { isHorizontalScrollBarEnabled = false }
            val chipRow = LinearLayout(context).apply { orientation = HORIZONTAL }
            existingCats.forEach { cat ->
                chipRow.addView(TextView(context).apply {
                    text = cat; setTextColor(Color.WHITE); textSize = 12f
                    setPadding(dp(12), dp(6), dp(12), dp(6))
                    background = GradientDrawable().apply {
                        shape = GradientDrawable.RECTANGLE; cornerRadius = dpFloat(16f)
                        setStroke(dp(1), Color.argb(128, 255, 255, 255)); setColor(Color.TRANSPARENT)
                    }
                    isClickable = true; isFocusable = true
                    setOnClickListener { edit.setText(cat) }
                }, LinearLayout.LayoutParams(WRAP_CONTENT, WRAP_CONTENT).apply { marginEnd = dp(8) })
            }
            chipScroll.addView(chipRow)
            root.addView(chipScroll, LinearLayout.LayoutParams(MATCH_PARENT, WRAP_CONTENT))
        }

        AlertDialog.Builder(context)
            .setTitle(title).setView(root)
            .setPositiveButton(strings.confirm) { _, _ -> onConfirm(edit.text.toString()) }
            .setNegativeButton(strings.cancel, null)
            .show()
    }

    private fun showCategoryManagementDialog() {
        val cats = localLutList.map { it.category }.distinct().filter { it.isNotEmpty() }
        if (cats.isEmpty()) { Toast.makeText(context, strings.none, Toast.LENGTH_SHORT).show(); return }
        AlertDialog.Builder(context)
            .setTitle(strings.categoryManagementTitle)
            .setItems(cats.toTypedArray()) { _, which ->
                val cat = cats[which]
                AlertDialog.Builder(context)
                    .setTitle(strings.deleteCategoryTitle)
                    .setMessage(strings.deleteCategoryMessage(cat))
                    .setPositiveButton(strings.delete) { _, _ ->
                        scope.launch {
                            withContext(Dispatchers.IO) {
                                controller.store.loadItems().forEach { item ->
                                    if (item.info.category == cat) controller.updateCategory(item.info.id, "")
                                }
                                controller.store.saveCategoryOrder(
                                    controller.categoryOrder.value.filter { it != cat }
                                )
                            }
                            controller.refreshAll()
                        }
                    }
                    .setNegativeButton(strings.cancel, null).show()
            }
            .setNegativeButton(strings.cancel, null).show()
    }

    // ──────────────────────── Import ────────────────────────
    fun handleImportResult(uris: List<Uri>) {
        if (uris.isEmpty()) return
        showImportCategoryDialog(uris)
    }

    private fun showImportCategoryDialog(uris: List<Uri>) {
        val curves = LutCurve.entries.toTypedArray()
        val colorSpaces = ColorSpace.entries.toTypedArray()
        val root = LinearLayout(context).apply {
            orientation = LinearLayout.VERTICAL; setPadding(dp(24), dp(8), dp(24), dp(8))
        }

        root.addView(TextView(context).apply {
            text = strings.importToCategory; setTextColor(Color.WHITE); textSize = 14f; setPadding(0, 0, 0, dp(4))
        })
        val categoryEdit = EditText(context).apply {
            hint = strings.category; setTextColor(Color.WHITE)
            setHintTextColor(Color.argb(128, 255, 255, 255)); maxLines = 1
        }
        root.addView(categoryEdit, LinearLayout.LayoutParams(MATCH_PARENT, WRAP_CONTENT))
        root.addView(View(context).apply { layoutParams = LinearLayout.LayoutParams(MATCH_PARENT, dp(8)) })

        root.addView(TextView(context).apply { text = strings.inputCurve; setTextColor(Color.argb(178, 255, 255, 255)); textSize = 12f })
        val curveSpinner = Spinner(context).apply {
            adapter = ArrayAdapter(context, android.R.layout.simple_spinner_dropdown_item, curves.map { it.name })
        }
        root.addView(curveSpinner, LinearLayout.LayoutParams(MATCH_PARENT, WRAP_CONTENT))
        root.addView(View(context).apply { layoutParams = LinearLayout.LayoutParams(MATCH_PARENT, dp(8)) })

        root.addView(TextView(context).apply { text = strings.colorSpace; setTextColor(Color.argb(178, 255, 255, 255)); textSize = 12f })
        val colorSpaceSpinner = Spinner(context).apply {
            adapter = ArrayAdapter(context, android.R.layout.simple_spinner_dropdown_item, colorSpaces.map { it.name })
        }
        root.addView(colorSpaceSpinner, LinearLayout.LayoutParams(MATCH_PARENT, WRAP_CONTENT))

        AlertDialog.Builder(context)
            .setTitle(strings.importToCategory).setView(root)
            .setPositiveButton(strings.confirm) { _, _ ->
                doImport(uris, categoryEdit.text.toString(), curves[curveSpinner.selectedItemPosition], colorSpaces[colorSpaceSpinner.selectedItemPosition])
            }
            .setNegativeButton(strings.cancel, null).show()
    }

    private fun doImport(uris: List<Uri>, category: String, curve: LutCurve, colorSpace: ColorSpace) {
        isImporting = true
        importProgress.visibility = VISIBLE
        importBtn.isEnabled = false
        importJob = scope.launch {
            var success = 0; var fail = 0
            uris.forEach { uri ->
                val ok = withContext(Dispatchers.IO) {
                    controller.store.importLut(uri, category = category, colorSpace = colorSpace, curve = curve)
                }
                if (ok != null) success++ else fail++
            }
            controller.refreshAll()
            isImporting = false; importProgress.visibility = GONE; importBtn.isEnabled = true
            val msg = when {
                fail == 0 -> strings.importSuccess.format(success)
                success == 0 -> strings.importFailed.format(fail)
                else -> "${strings.importSuccess.format(success)}, ${strings.importFailed.format(fail)}"
            }
            Toast.makeText(context, msg, Toast.LENGTH_SHORT).show()
        }
    }

    // ──────────────────────── Export ────────────────────────
    private fun exportLut(lut: LutInfo) {
        scope.launch {
            val content = withContext(Dispatchers.IO) { controller.getLutCubeString(lut.id) }
            if (content != null) {
                pendingExportContent = content
                activity.startActivityForResult(
                    Intent(Intent.ACTION_CREATE_DOCUMENT).apply {
                        addCategory(Intent.CATEGORY_OPENABLE)
                        type = "text/plain"
                        putExtra(Intent.EXTRA_TITLE, "${lut.getName()}.cube")
                    },
                    REQUEST_EXPORT_LUT
                )
            } else {
                Toast.makeText(context, strings.exportLutCube, Toast.LENGTH_SHORT).show()
            }
        }
    }

    fun handleExportResult(uri: Uri) {
        val content = pendingExportContent ?: return
        pendingExportContent = null
        scope.launch(Dispatchers.IO) {
            try {
                context.contentResolver.openOutputStream(uri)?.use { it.write(content.toByteArray()) }
                withContext(Dispatchers.Main) {
                    Toast.makeText(context, strings.exportSuccess, Toast.LENGTH_SHORT).show()
                }
            } catch (_: Exception) {
                withContext(Dispatchers.Main) {
                    Toast.makeText(context, "Export failed", Toast.LENGTH_SHORT).show()
                }
            }
        }
    }

    // ──────────────────────── Import picker ────────────────────────
    private fun launchImportPicker() {
        activity.startActivityForResult(
            Intent(Intent.ACTION_OPEN_DOCUMENT).apply {
                addCategory(Intent.CATEGORY_OPENABLE)
                type = "*/*"
                putExtra(Intent.EXTRA_ALLOW_MULTIPLE, true)
            },
            REQUEST_IMPORT_LUT
        )
    }

    // ──────────────────────── Helpers ────────────────────────
    private fun wrapInPadding(view: View): FrameLayout = FrameLayout(context).apply {
        setPadding(dp(24), dp(16), dp(24), dp(16))
        addView(view, FrameLayout.LayoutParams(MATCH_PARENT, WRAP_CONTENT))
    }

    companion object {
        const val REQUEST_IMPORT_LUT = 1001
        const val REQUEST_EXPORT_LUT = 1002
    }

    private fun dp(value: Int): Int = (value * resources.displayMetrics.density).toInt()
    private fun dpFloat(value: Float): Float = value * resources.displayMetrics.density
}
