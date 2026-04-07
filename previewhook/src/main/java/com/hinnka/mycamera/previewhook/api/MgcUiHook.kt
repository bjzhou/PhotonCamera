package com.hinnka.mycamera.previewhook.api

import android.app.Activity
import android.graphics.Color
import android.view.Gravity
import android.view.View
import android.view.ViewGroup
import android.widget.FrameLayout
import android.widget.ImageView
import com.hinnka.mycamera.previewhook.filters.MgcFilterController
import com.hinnka.mycamera.previewhook.filters.MgcLutSelectorSheet

object MgcUiHook {
    /**
     * Called from CameraActivity.onCreate() smali hook.
     */
    @JvmStatic
    fun onActivityCreate(activity: Activity) {
        val rootId = activity.resources.getIdentifier("activity_root_view", "id", activity.packageName)
        val rootView = activity.findViewById<ViewGroup>(rootId) ?: return

        // We use a small delay to ensure other UI elements are inflated if they are in stubs
        rootView.post {
            addLutEditIcon(activity, rootView)
        }
    }

    private fun addLutEditIcon(activity: Activity, rootView: ViewGroup) {
        // Avoid duplicate icons
        if (rootView.findViewWithTag<View>("MgcLutEditIcon") != null) return

        val density = activity.resources.displayMetrics.density
        val iconSize = (32 * density).toInt()
        val rightMarginPx = (16 * density).toInt()

        val editIcon = ImageView(activity).apply {
            id = View.generateViewId()
            tag = "MgcLutEditIcon"
            // Use auto_awesome or fallback
            val drawableId = activity.resources.getIdentifier("auto_awesome", "drawable", activity.packageName)
            if (drawableId != 0) {
                setImageResource(drawableId)
            } else {
                setImageResource(android.R.drawable.ic_menu_edit)
            }

            // Adjust padding to 8dp
            val p = (8 * density).toInt()
            setPadding(p, p, p, p)

            setColorFilter(Color.YELLOW)

            // Semi-transparent dark circle background (alpha 0.3 ~ 4D)
            val bg = android.graphics.drawable.GradientDrawable().apply {
                shape = android.graphics.drawable.GradientDrawable.OVAL
                setColor(Color.parseColor("#4D000000"))
            }
            // Add a Ripple click effect
            val rippleColor = android.content.res.ColorStateList.valueOf(Color.parseColor("#40FFFFFF")) // 25% white ripple
            background = android.graphics.drawable.RippleDrawable(rippleColor, bg, bg)

            setOnClickListener {
                showLutSelectorSheet(activity)
            }

            // Accessibility
            val stringId = activity.resources.getIdentifier("filters_panel", "string", activity.packageName)
            contentDescription = if (stringId != 0) activity.getString(stringId) else "Filters Panel"
        }

        // Add to a match_parent wrapper attached to rootView (so it's on top and clickable)
        val wrapper = FrameLayout(activity).apply {
            id = View.generateViewId() // Required by ConstraintLayout (MainActivityLayout)
            addView(editIcon, FrameLayout.LayoutParams(iconSize, iconSize))
        }
        rootView.addView(wrapper, ViewGroup.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT))

        // Find the viewfinder_frame to track its dynamic size
        val viewfinderId = activity.resources.getIdentifier("viewfinder_frame", "id", activity.packageName)
        val viewfinderFrame = if (viewfinderId != 0) activity.findViewById<View>(viewfinderId) else null

        // If no viewfinder, we fallback to 120dp bottom margin. If viewfinder exists, we stick to its bounds.
        val fallbackBottomMargin = (120 * density).toInt()
        val standardBottomMargin = (16 * density).toInt()

        rootView.viewTreeObserver.addOnGlobalLayoutListener {
            val targetBounds = android.graphics.Rect()
            if (viewfinderFrame != null && viewfinderFrame.visibility == View.VISIBLE && viewfinderFrame.width > 0) {
                viewfinderFrame.getGlobalVisibleRect(targetBounds)
            } else {
                rootView.getGlobalVisibleRect(targetBounds)
                targetBounds.bottom -= fallbackBottomMargin // fallback shift
            }

            // Adjust coordinates relative to rootView
            val rootBounds = android.graphics.Rect()
            rootView.getGlobalVisibleRect(rootBounds)

            val actualBottom = targetBounds.bottom - rootBounds.top
            val actualRight = targetBounds.right - rootBounds.left

            // Translate the editIcon to the target position
            editIcon.translationX = (actualRight - iconSize - rightMarginPx).toFloat()
            editIcon.translationY = (actualBottom - iconSize - standardBottomMargin).toFloat()
        }
    }

    @JvmStatic
    fun showLutSelectorSheet(activity: Activity) {
        val controller = MgcFilterController(activity.applicationContext)

        MgcLutSelectorSheet(
            activity = activity,
            controller = controller,
            onDismiss = {}
        ).show()
    }
}
