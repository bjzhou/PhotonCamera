package com.google.android.apps.camera.optionsbar.view

import android.content.Context
import android.util.AttributeSet
import com.hinnka.mycamera.layoutpreview.stub.PreviewFrameLayout
import com.hinnka.mycamera.layoutpreview.stub.PreviewLinearLayout

class AutobahnViewPager @JvmOverloads constructor(context: Context, attrs: AttributeSet? = null, defStyleAttr: Int = 0) :
    PreviewFrameLayout(context, attrs, defStyleAttr)

class HighlightBarIndicator @JvmOverloads constructor(context: Context, attrs: AttributeSet? = null, defStyleAttr: Int = 0) :
    PreviewFrameLayout(context, attrs, defStyleAttr)

class LinearMinibarImpl @JvmOverloads constructor(context: Context, attrs: AttributeSet? = null, defStyleAttr: Int = 0) :
    PreviewLinearLayout(context, attrs, defStyleAttr)

class OptionsMenuContainer @JvmOverloads constructor(context: Context, attrs: AttributeSet? = null, defStyleAttr: Int = 0) :
    PreviewFrameLayout(context, attrs, defStyleAttr)

class OptionsMenuView @JvmOverloads constructor(context: Context, attrs: AttributeSet? = null, defStyleAttr: Int = 0) :
    PreviewFrameLayout(context, attrs, defStyleAttr)

class OptionsPanelContent @JvmOverloads constructor(context: Context, attrs: AttributeSet? = null, defStyleAttr: Int = 0) :
    PreviewLinearLayout(context, attrs, defStyleAttr)

class OptionsPanelCoordinator @JvmOverloads constructor(context: Context, attrs: AttributeSet? = null, defStyleAttr: Int = 0) :
    PreviewFrameLayout(context, attrs, defStyleAttr)

class TimerWidget @JvmOverloads constructor(context: Context, attrs: AttributeSet? = null, defStyleAttr: Int = 0) :
    PreviewFrameLayout(context, attrs, defStyleAttr)
