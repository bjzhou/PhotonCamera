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
        // Avoid duplicate icons if onCreate is called multiple times (though unlikely for singleTask)
        if (rootView.findViewWithTag<View>("MgcLutEditIcon") != null) return

        val density = activity.resources.displayMetrics.density
        val iconSize = (44 * density).toInt()
        val margin = (12 * density).toInt()

        val editIcon = ImageView(activity).apply {
            id = View.generateViewId()
            tag = "MgcLutEditIcon"
            val drawableId = activity.resources.getIdentifier("gs_tune_vd_theme_48", "drawable", activity.packageName)
            if (drawableId != 0) {
                setImageResource(drawableId)
            } else {
                setImageResource(android.R.drawable.ic_menu_edit)
            }
            
            // Adjust padding to make the icon look balanced
            val p = (10 * density).toInt()
            setPadding(p, p, p, p)
            
            setColorFilter(Color.WHITE)
            
            // Semi-transparent dark circle background
            val bg = android.graphics.drawable.GradientDrawable().apply {
                shape = android.graphics.drawable.GradientDrawable.OVAL
                setColor(Color.parseColor("#40000000"))
            }
            background = bg
            
            setOnClickListener {
                showLutSelectorSheet(activity)
            }
            
            // Accessibility
            contentDescription = "Select LUT"
        }

        val lp = FrameLayout.LayoutParams(iconSize, iconSize).apply {
            gravity = Gravity.TOP or Gravity.START
            topMargin = (100 * density).toInt() // Position it below the top bar/options
            leftMargin = margin
        }
        
        rootView.addView(editIcon, lp)
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
