package com.google.android.apps.camera.ui.views

import android.content.Context
import android.util.AttributeSet
import com.hinnka.mycamera.layoutpreview.stub.PreviewFrameLayout
import com.hinnka.mycamera.layoutpreview.stub.PreviewLinearLayout

class CameraAppRootLayout @JvmOverloads constructor(context: Context, attrs: AttributeSet? = null, defStyleAttr: Int = 0) :
    PreviewFrameLayout(context, attrs, defStyleAttr)

class CaptureAnimationOverlay @JvmOverloads constructor(context: Context, attrs: AttributeSet? = null, defStyleAttr: Int = 0) :
    PreviewFrameLayout(context, attrs, defStyleAttr)

class CountdownSnapSlider @JvmOverloads constructor(context: Context, attrs: AttributeSet? = null, defStyleAttr: Int = 0) :
    PreviewFrameLayout(context, attrs, defStyleAttr)

class CutoutBar @JvmOverloads constructor(context: Context, attrs: AttributeSet? = null, defStyleAttr: Int = 0) :
    PreviewFrameLayout(context, attrs, defStyleAttr)

class FadingEdgeLayout @JvmOverloads constructor(context: Context, attrs: AttributeSet? = null, defStyleAttr: Int = 0) :
    PreviewLinearLayout(context, attrs, defStyleAttr)

class FrontLensIndicatorOverlay @JvmOverloads constructor(context: Context, attrs: AttributeSet? = null, defStyleAttr: Int = 0) :
    PreviewFrameLayout(context, attrs, defStyleAttr)

class GradientBar @JvmOverloads constructor(context: Context, attrs: AttributeSet? = null, defStyleAttr: Int = 0) :
    PreviewFrameLayout(context, attrs, defStyleAttr)

class ToggleUi @JvmOverloads constructor(context: Context, attrs: AttributeSet? = null, defStyleAttr: Int = 0) :
    PreviewFrameLayout(context, attrs, defStyleAttr)

class TouchInterceptingLayout @JvmOverloads constructor(context: Context, attrs: AttributeSet? = null, defStyleAttr: Int = 0) :
    PreviewFrameLayout(context, attrs, defStyleAttr)

class ViewfinderCover @JvmOverloads constructor(context: Context, attrs: AttributeSet? = null, defStyleAttr: Int = 0) :
    PreviewFrameLayout(context, attrs, defStyleAttr)
