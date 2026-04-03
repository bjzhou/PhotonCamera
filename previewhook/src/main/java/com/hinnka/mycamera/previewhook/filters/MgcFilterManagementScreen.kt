package com.hinnka.mycamera.previewhook.filters

import android.annotation.SuppressLint
import android.app.Activity
import android.app.AlertDialog
import android.content.Intent
import android.content.res.ColorStateList
import android.graphics.*
import android.graphics.drawable.Drawable
import android.graphics.drawable.GradientDrawable
import android.net.Uri
import android.util.TypedValue
import android.view.*
import android.view.ViewGroup.LayoutParams.MATCH_PARENT
import android.view.ViewGroup.LayoutParams.WRAP_CONTENT
import android.widget.*
import android.widget.LinearLayout.HORIZONTAL
import android.widget.LinearLayout.VERTICAL
import androidx.core.content.res.ResourcesCompat
import com.hinnka.mycamera.lut.LutInfo
import com.hinnka.mycamera.lut.LutCurve
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

    private lateinit var toolbar: LinearLayout
    private lateinit var tabLayout: LinearLayout
    private lateinit var listContainer: LinearLayout
    private lateinit var listScrollView: ScrollView

    private var isImporting = false
    private var importJob: Job? = null

    init {
        setBackgroundColor(Color.parseColor("#151515"))
        setupView()
        setupStateObserver()
    }

    private fun setupStateObserver() {
        scope.launch {
            controller.currentLutId.collect { rebuildList() }
        }
        scope.launch {
            controller.categoryOrder.collect { refreshCategories() }
        }
        scope.launch {
            controller.availableLutList.collect { list ->
                localLutList = list
                refreshCategories()
            }
        }
    }

    private fun refreshCategories() {
        val dynamicCategories = localLutList.map { it.category }
            .distinct()
            .filter { it.isNotEmpty() && it != strings.categoryAll && it != strings.custom }

        val categoryOrder = controller.categoryOrder.value
        val allUnique = (categoryOrder + dynamicCategories).distinct()
        val sortedDynamic = allUnique.sortedWith(compareBy<String> { cat ->
            val index = categoryOrder.indexOf(cat)
            if (index == -1) Int.MAX_VALUE else index
        }.thenBy { it })

        categories = listOf(strings.categoryAll, strings.custom) + sortedDynamic

        if (selectedTabIndex >= categories.size) {
            selectedTabIndex = 0
        }

        rebuildTabs()
        rebuildList()
    }

    private fun rebuildTabs() {
        tabLayout.removeAllViews()
        categories.forEachIndexed { index, category ->
            val tab = TextView(context).apply {
                text = category
                setTextColor(if (index == selectedTabIndex) Color.WHITE else Color.argb(178, 255, 255, 255))
                textSize = 14f
                typeface = if (index == selectedTabIndex)
                    Typeface.create("sans-serif-medium", Typeface.NORMAL)
                else Typeface.DEFAULT
                gravity = Gravity.CENTER
                setPadding(dp(16), dp(12), dp(16), dp(12))
                isClickable = true
                isFocusable = true
                background = createSelectorBackground()
                setOnClickListener {
                    selectedTabIndex = index
                    selectedIds.clear()
                    rebuildTabs()
                    rebuildList()
                }
            }
            tabLayout.addView(tab, LinearLayout.LayoutParams(WRAP_CONTENT, WRAP_CONTENT).apply {
                marginEnd = dp(8)
            })
        }
    }

    private fun createSelectorBackground(): GradientDrawable? {
        val states = arrayOf(intArrayOf(android.R.attr.state_pressed), intArrayOf())
        val colors = intArrayOf(Color.argb(38, 255, 255, 255), Color.TRANSPARENT)
        return GradientDrawable()
    }

    private fun getFilteredLutList(): List<LutInfo> {
        if (selectedTabIndex >= categories.size) return localLutList
        return when (selectedTabIndex) {
            0 -> localLutList
            1 -> localLutList.filter { !it.isBuiltIn }
            else -> localLutList.filter { it.category == categories[selectedTabIndex] }
        }
    }

    private fun rebuildList() {
        listContainer.removeAllViews()
        val currentDefaultId = controller.currentLutId.value
        val filteredList = getFilteredLutList()
        val isSelectionMode = selectedIds.isNotEmpty()
        val itemSpacing = dp(8)

        filteredList.forEach { lut ->
            val card = createCard(lut, currentDefaultId, isSelectionMode, selectedIds.contains(lut.id))
            listContainer.addView(card)
            listContainer.addView(View(context).apply {
                layoutParams = LinearLayout.LayoutParams(MATCH_PARENT, itemSpacing)
            })
        }
    }

    private fun createCard(
        lut: LutInfo,
        currentDefaultId: String,
        isSelectionMode: Boolean,
        isSelected: Boolean
    ): View {
        val card = FrameLayout(context).apply {
            background = createRippleBackground()
            layoutParams = FrameLayout.LayoutParams(MATCH_PARENT, WRAP_CONTENT)
        }

        val content = LinearLayout(context).apply {
            orientation = VERTICAL
            setPadding(dp(12), dp(8), dp(12), dp(8))
        }

        val topRow = LinearLayout(context).apply {
            orientation = HORIZONTAL
            gravity = Gravity.CENTER_VERTICAL
        }

        val nameText = TextView(context).apply {
            text = lut.getName()
            setTextColor(Color.WHITE)
            textSize = 14f
        }
        topRow.addView(nameText, LinearLayout.LayoutParams(0, WRAP_CONTENT, 1f))

        // Default badge
        if (currentDefaultId == lut.id) {
            topRow.addView(TextView(context).apply {
                text = strings.currentDefault
                setTextColor(Color.parseColor("#FFFF6B35"))
                textSize = 11f
                setPadding(dp(8), 0, 0, 0)
            })
        }

        // Selection checkbox
        if (isSelectionMode) {
            topRow.addView(View(context).apply {
                background = GradientDrawable().apply {
                    shape = GradientDrawable.RECTANGLE
                    cornerRadius = dpFloat(2f)
                    if (isSelected) {
                        setColor(Color.WHITE)
                    } else {
                        setStroke(dp(2), Color.argb(128, 255, 255, 255))
                    }
                }
            }.apply { layoutParams = LinearLayout.LayoutParams(dp(18), dp(18)).apply { marginStart = dp(8) } })
        }

        content.addView(topRow, LinearLayout.LayoutParams(MATCH_PARENT, WRAP_CONTENT))

        // Category text
        if (lut.category.isNotEmpty()) {
            content.addView(TextView(context).apply {
                text = lut.category
                setTextColor(Color.argb(128, 255, 255, 255))
                textSize = 11f
                setPadding(0, dp(2), 0, 0)
            })
        }

        card.addView(content)

        card.setOnClickListener {
            if (isSelectionMode) {
                if (isSelected) selectedIds.remove(lut.id) else selectedIds.add(lut.id)
                rebuildList()
            } else {
                scope.launch(Dispatchers.IO) { controller.selectLut(lut.id) }
            }
        }
        card.setOnLongClickListener {
            if (!lut.isBuiltIn && !isSelectionMode) {
                showItemLongPressMenu(lut, card)
                true
            } else {
                false
            }
        }

        return card
    }

    private fun showItemLongPressMenu(lut: LutInfo, anchor: View) {
        val popup = PopupMenu(context, anchor)
        popup.menu.add(0, 1, 0, strings.rename)
        popup.menu.add(0, 2, 1, strings.copy)
        popup.menu.add(0, 3, 2, strings.colorRecipe)
        popup.menu.add(0, 4, 3, strings.editCategory)
        if (!lut.isBuiltIn) {
            popup.menu.add(0, 5, 4, strings.delete)
        }
        popup.menu.add(0, 6, 5, strings.exportLutCube)

        popup.setOnMenuItemClickListener { item ->
            when (item.itemId) {
                1 -> showRenameDialog(lut)
                2 -> showCopyDialog(lut)
                3 -> showEditRecipeDialog(lut)
                4 -> showEditCategoryDialog(lut)
                5 -> showDeleteDialog(lut)
            }
            true
        }
        popup.show()
    }

    private fun showRenameDialog(lut: LutInfo) {
        val edit = EditText(context).apply {
            setText(lut.getName())
            setTextColor(Color.WHITE)
            maxLines = 1
        }
        val container = FrameLayout(context).apply {
            setPadding(dp(24), dp(16), dp(24), dp(16))
            addView(edit, FrameLayout.LayoutParams(MATCH_PARENT, WRAP_CONTENT))
        }
        AlertDialog.Builder(context).apply {
            setTitle(strings.renameDialogTitle)
            setView(container)
            setPositiveButton(strings.confirm) { _, _ ->
                scope.launch { withContext(Dispatchers.IO) { controller.renameLut(lut.id, edit.text.toString()) } }
            }
            setNegativeButton(strings.cancel, null)
            show()
        }
    }

    private fun showCopyDialog(lut: LutInfo) {
        val edit = EditText(context).apply {
            setText(lut.getName() + strings.copySuffix)
            setTextColor(Color.WHITE)
            maxLines = 1
        }
        val container = FrameLayout(context).apply {
            setPadding(dp(24), dp(16), dp(24), dp(16))
            addView(edit, FrameLayout.LayoutParams(MATCH_PARENT, WRAP_CONTENT))
        }
        AlertDialog.Builder(context).apply {
            setTitle(strings.copyLutDialogTitle)
            setView(container)
            setPositiveButton(strings.confirm) { _, _ ->
                scope.launch(Dispatchers.IO) { controller.copyLut(lut, edit.text.toString()) }
            }
            setNegativeButton(strings.cancel, null)
            show()
        }
    }

    private fun showDeleteDialog(lut: LutInfo) {
        AlertDialog.Builder(context).apply {
            setTitle(strings.deleteConfirmTitle)
            setMessage(strings.deleteConfirmMessage(lut.getName()))
            setPositiveButton(strings.delete) { _, _ ->
                scope.launch { withContext(Dispatchers.IO) { controller.deleteLut(lut.id) } }
            }
            setNegativeButton(strings.cancel, null)
            show()
        }
    }

    private fun showEditCategoryDialog(lut: LutInfo) {
        val edit = EditText(context).apply {
            setText(lut.category)
            setTextColor(Color.WHITE)
        }
        val container = FrameLayout(context).apply {
            setPadding(dp(24), dp(16), dp(24), dp(16))
            addView(edit, FrameLayout.LayoutParams(MATCH_PARENT, WRAP_CONTENT))
        }
        AlertDialog.Builder(context).apply {
            setTitle(strings.editCategory)
            setView(container)
            setPositiveButton(strings.confirm) { _, _ ->
                scope.launch { withContext(Dispatchers.IO) { controller.updateCategory(lut.id, edit.text.toString()) } }
            }
            setNegativeButton(strings.cancel, null)
            show()
        }
    }

    private fun showEditRecipeDialog(lut: LutInfo) {
        Toast.makeText(context, strings.colorRecipe, Toast.LENGTH_SHORT).show()
    }

    private fun showCategoryManagementDialog() {
        val cats = localLutList.map { it.category }.distinct().filter { it.isNotEmpty() }
        val items = cats.toTypedArray()
        if (items.isEmpty()) {
            Toast.makeText(context, strings.none, Toast.LENGTH_SHORT).show()
            return
        }
        AlertDialog.Builder(context).apply {
            setTitle(strings.categoryManagementTitle)
            setItems(items) { _, which ->
                val cat = items[which]
                AlertDialog.Builder(context).apply {
                    setTitle(strings.deleteCategoryTitle)
                    setMessage(strings.deleteCategoryMessage(cat))
                    setPositiveButton(strings.delete) { _, _ ->
                        scope.launch {
                            withContext(Dispatchers.IO) {
                                controller.store.loadItems().forEach { item ->
                                    if (item.info.category == cat) {
                                        controller.updateCategory(item.info.id, "")
                                    }
                                }
                                val newOrder = controller.categoryOrder.value.filter { it != cat }
                                controller.store.saveCategoryOrder(newOrder)
                            }
                            controller.refreshAll()
                        }
                    }
                    setNegativeButton(strings.cancel, null)
                    show()
                }
            }
            setNegativeButton(strings.cancel, null)
            show()
        }
    }

    private fun createRippleBackground(): Drawable? {
        val tv = TypedValue()
        if (context.theme.resolveAttribute(android.R.attr.selectableItemBackground, tv, true)) {
            return ResourcesCompat.getDrawable(context.resources, tv.resourceId, context.theme)
        }
        return null
    }

    fun handleImportResult(uris: List<Uri>, category: String, curve: LutCurve, colorSpace: ColorSpace) {
        isImporting = true
        importJob = scope.launch {
            var successCount = 0
            var failCount = 0
            uris.forEach { uri ->
                val result = withContext(Dispatchers.IO) {
                    controller.store.importLut(uri, category = category, colorSpace = colorSpace, curve = curve)
                }
                if (result != null) successCount++ else failCount++
            }
            controller.refreshAll()
            isImporting = false
            if (failCount == 0) {
                Toast.makeText(context, strings.importSuccess.format(successCount), Toast.LENGTH_SHORT).show()
            } else if (successCount == 0) {
                Toast.makeText(context, strings.importFailed.format(failCount), Toast.LENGTH_SHORT).show()
            } else {
                val msg = "${strings.importSuccess.format(successCount)}, ${strings.importFailed.format(failCount)}"
                Toast.makeText(context, msg, Toast.LENGTH_LONG).show()
            }
        }
    }

    private fun launchImportPicker() {
        val intent = Intent(Intent.ACTION_OPEN_DOCUMENT).apply {
            addCategory(Intent.CATEGORY_OPENABLE)
            type = "*/*"
            putExtra(Intent.EXTRA_ALLOW_MULTIPLE, true)
        }
        activity.startActivityForResult(intent, REQUEST_IMPORT_LUT)
    }

    private fun setupView() {
        val root = LinearLayout(context).apply {
            orientation = VERTICAL
            setBackgroundColor(Color.parseColor("#151515"))
        }

        // ===== Top App Bar =====
        toolbar = LinearLayout(context).apply {
            orientation = HORIZONTAL
            gravity = Gravity.CENTER_VERTICAL
            setPadding(dp(16), dp(40), dp(16), dp(8))
        }

        val navBtn = ImageButton(context).apply {
            contentDescription = strings.backContentDescription
            setImageResource(android.R.drawable.ic_menu_close_clear_cancel)
            setColorFilter(Color.WHITE)
            background = createRippleBackground()
            setOnClickListener {
                controller.store.saveFilterOrder(localLutList.map { it.id })
                onClose()
            }
        }
        toolbar.addView(navBtn, LinearLayout.LayoutParams(WRAP_CONTENT, WRAP_CONTENT))

        val titleText = TextView(context).apply {
            text = strings.filterManagementTitle
            setTextColor(Color.WHITE)
            textSize = 20f
            typeface = Typeface.create("sans-serif-medium", Typeface.NORMAL)
            setPadding(dp(8), 0, 0, 0)
        }
        toolbar.addView(titleText, LinearLayout.LayoutParams(0, WRAP_CONTENT, 1f))

        val actionsLayout = LinearLayout(context).apply { orientation = HORIZONTAL }

        val settingsBtn = ImageButton(context).apply {
            setImageResource(android.R.drawable.ic_menu_manage)
            setColorFilter(Color.WHITE)
            background = createRippleBackground()
            setOnClickListener { showCategoryManagementDialog() }
        }
        actionsLayout.addView(settingsBtn, LinearLayout.LayoutParams(WRAP_CONTENT, WRAP_CONTENT))

        val importBtn = ImageButton(context).apply {
            setImageResource(android.R.drawable.ic_menu_add)
            setColorFilter(Color.WHITE)
            background = createRippleBackground()
            setOnClickListener { launchImportPicker() }
        }
        actionsLayout.addView(importBtn, LinearLayout.LayoutParams(WRAP_CONTENT, WRAP_CONTENT))

        toolbar.addView(actionsLayout, LinearLayout.LayoutParams(WRAP_CONTENT, WRAP_CONTENT))
        root.addView(toolbar, LinearLayout.LayoutParams(MATCH_PARENT, WRAP_CONTENT))

        // ===== Tab Strip =====
        val tabStrip = HorizontalScrollView(context).apply { isFillViewport = false }
        tabLayout = LinearLayout(context).apply {
            orientation = HORIZONTAL
            setPadding(dp(8), 0, dp(8), 0)
        }
        tabStrip.addView(tabLayout, LinearLayout.LayoutParams(WRAP_CONTENT, WRAP_CONTENT))
        root.addView(tabStrip, LinearLayout.LayoutParams(MATCH_PARENT, WRAP_CONTENT))

        // Divider
        root.addView(View(context).apply {
            setBackgroundColor(Color.argb(51, 255, 255, 255))
        }, LinearLayout.LayoutParams(MATCH_PARENT, dp(1)))

        // ===== Scrollable List (no RecyclerView) =====
        listScrollView = ScrollView(context)
        listContainer = LinearLayout(context).apply {
            orientation = VERTICAL
            setPadding(dp(16), dp(8), dp(16), dp(16))
        }
        listScrollView.addView(listContainer, LinearLayout.LayoutParams(MATCH_PARENT, WRAP_CONTENT))
        root.addView(listScrollView, LinearLayout.LayoutParams(MATCH_PARENT, 0, 1f))

        addView(root, FrameLayout.LayoutParams(MATCH_PARENT, MATCH_PARENT))
    }

    companion object {
        const val REQUEST_IMPORT_LUT = 1001
    }

    private fun dp(value: Int): Int = (value * resources.displayMetrics.density).toInt()
    private fun dpFloat(value: Float): Float = value * resources.displayMetrics.density
}
