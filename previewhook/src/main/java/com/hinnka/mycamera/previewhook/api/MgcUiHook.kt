package com.hinnka.mycamera.previewhook.api

import android.app.Activity
import android.app.Application
import android.content.res.ColorStateList
import android.graphics.Color
import android.graphics.Rect
import android.graphics.drawable.GradientDrawable
import android.graphics.drawable.RippleDrawable
import android.hardware.display.DisplayManager
import android.os.Bundle
import android.view.Display
import android.view.View
import android.view.ViewGroup
import android.widget.FrameLayout
import android.widget.ImageView
import com.hinnka.mycamera.previewhook.filters.MgcFilterManagementDialog

object MgcUiHook {
    /**
     * Called from CameraActivity.onCreate() smali hook.
     */
    @JvmStatic
    fun onActivityCreate(activity: Activity) {
        val display = activity.getSystemService(DisplayManager::class.java)
            ?.getDisplay(Display.DEFAULT_DISPLAY)
        MgcSurfaceProxyPreviewRenderer.recordDisplay(display)
        val appContext = activity.applicationContext
        MgcJpegPipelineRuntime.configure(appContext)
        PhotonLookClient.syncAsync(appContext, force = true)
        registerLookRefreshOnResume(activity)

        // CameraActivity inflates its content during onCreate. Posting through the decor view
        // guarantees that activity_root_view and viewfinder_frame are available before attaching
        // the injected control.
        activity.window.decorView.post {
            attachFilterButton(activity)
        }
    }

    private fun registerLookRefreshOnResume(activity: Activity) {
        val application = activity.application
        val callback = object : Application.ActivityLifecycleCallbacks {
            override fun onActivityResumed(resumedActivity: Activity) {
                if (resumedActivity === activity) {
                    PhotonLookClient.syncAsync(activity.applicationContext, force = true)
                }
            }

            override fun onActivityDestroyed(destroyedActivity: Activity) {
                if (destroyedActivity === activity) {
                    application.unregisterActivityLifecycleCallbacks(this)
                }
            }

            override fun onActivityCreated(createdActivity: Activity, savedInstanceState: Bundle?) = Unit
            override fun onActivityStarted(startedActivity: Activity) = Unit
            override fun onActivityPaused(pausedActivity: Activity) = Unit
            override fun onActivityStopped(stoppedActivity: Activity) = Unit
            override fun onActivitySaveInstanceState(activity: Activity, outState: Bundle) = Unit
        }
        application.registerActivityLifecycleCallbacks(callback)
    }

    private fun attachFilterButton(activity: Activity) {
        if (activity.isFinishing || activity.isDestroyed) return

        val resources = activity.resources
        val rootId = resources.getIdentifier(ROOT_VIEW_ID_NAME, "id", activity.packageName)
        val rootView = activity.findViewById<ViewGroup>(rootId)
            ?: activity.findViewById(android.R.id.content)
            ?: return
        if (rootView.findViewWithTag<View>(FILTER_BUTTON_CONTAINER_TAG) != null) return

        val density = resources.displayMetrics.density
        val iconSize = (FILTER_BUTTON_SIZE_DP * density).toInt()
        val iconPadding = (FILTER_BUTTON_PADDING_DP * density).toInt()
        val edgeMargin = (FILTER_BUTTON_EDGE_MARGIN_DP * density).toInt()
        val fallbackBottomInset = (FILTER_BUTTON_FALLBACK_BOTTOM_INSET_DP * density).toInt()

        val icon = ImageView(activity).apply {
            id = View.generateViewId()
            val drawableId = resources.getIdentifier(
                FILTER_BUTTON_DRAWABLE_NAME,
                "drawable",
                activity.packageName,
            )
            setImageResource(
                drawableId.takeIf { it != 0 } ?: android.R.drawable.ic_menu_edit,
            )
            setPadding(iconPadding, iconPadding, iconPadding, iconPadding)
            imageTintList = ColorStateList.valueOf(Color.WHITE)
            background = RippleDrawable(
                ColorStateList.valueOf(Color.parseColor("#40FFFFFF")),
                GradientDrawable().apply {
                    shape = GradientDrawable.OVAL
                    setColor(Color.parseColor("#66000000"))
                    setStroke((density).toInt().coerceAtLeast(1), Color.parseColor("#66FFFFFF"))
                },
                null,
            )
            isClickable = true
            isFocusable = true
            contentDescription = resolveFilterButtonDescription(activity)
            setOnClickListener {
                MgcFilterManagementDialog.show(activity)
            }
        }

        val container = FrameLayout(activity).apply {
            id = View.generateViewId()
            tag = FILTER_BUTTON_CONTAINER_TAG
            importantForAccessibility = View.IMPORTANT_FOR_ACCESSIBILITY_NO
            addView(icon, FrameLayout.LayoutParams(iconSize, iconSize))
        }
        rootView.addView(
            container,
            ViewGroup.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.MATCH_PARENT,
            ),
        )

        val viewfinderId = resources.getIdentifier(
            VIEWFINDER_ID_NAME,
            "id",
            activity.packageName,
        )
        val viewfinder: View? = if (viewfinderId != 0) {
            activity.findViewById<View>(viewfinderId)
        } else {
            null
        }
        rootView.viewTreeObserver.addOnGlobalLayoutListener {
            if (!icon.isAttachedToWindow) return@addOnGlobalLayoutListener

            val rootBounds = Rect()
            if (!rootView.getGlobalVisibleRect(rootBounds)) return@addOnGlobalLayoutListener

            val targetBounds = Rect()
            val hasVisibleViewfinder = viewfinder?.let {
                it.visibility == View.VISIBLE &&
                    it.width > 0 &&
                    it.height > 0 &&
                    it.getGlobalVisibleRect(targetBounds)
            } == true
            if (!hasVisibleViewfinder) {
                targetBounds.set(rootBounds)
                targetBounds.bottom -= fallbackBottomInset
            }

            icon.translationX = (
                targetBounds.right -
                    rootBounds.left -
                    iconSize -
                    edgeMargin
                ).toFloat()
            icon.translationY = (
                targetBounds.bottom -
                    rootBounds.top -
                    iconSize -
                    edgeMargin
                ).toFloat()
        }
    }

    private fun resolveFilterButtonDescription(activity: Activity): String {
        val stringId = activity.resources.getIdentifier(
            FILTER_BUTTON_DESCRIPTION_NAME,
            "string",
            activity.packageName,
        )
        return stringId.takeIf { it != 0 }?.let(activity::getString) ?: "LUT"
    }

    private const val ROOT_VIEW_ID_NAME = "activity_root_view"
    private const val VIEWFINDER_ID_NAME = "viewfinder_frame"
    private const val FILTER_BUTTON_DRAWABLE_NAME = "auto_awesome"
    private const val FILTER_BUTTON_DESCRIPTION_NAME = "mgc_filter_management_title"
    private const val FILTER_BUTTON_CONTAINER_TAG = "PhotonMgcFilterButtonContainer"
    private const val FILTER_BUTTON_SIZE_DP = 36
    private const val FILTER_BUTTON_PADDING_DP = 8
    private const val FILTER_BUTTON_EDGE_MARGIN_DP = 16
    private const val FILTER_BUTTON_FALLBACK_BOTTOM_INSET_DP = 120
}
