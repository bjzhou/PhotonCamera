package com.google.android.apps.camera.ui.shutterbutton

import android.content.Context
import android.util.AttributeSet
import com.hinnka.mycamera.layoutpreview.stub.PreviewButton
import com.hinnka.mycamera.layoutpreview.stub.PreviewFrameLayout

class ShutterButton @JvmOverloads constructor(context: Context, attrs: AttributeSet? = null, defStyleAttr: Int = 0) :
    PreviewButton(context, attrs, defStyleAttr)

class ShutterButtonProgressOverlay @JvmOverloads constructor(context: Context, attrs: AttributeSet? = null, defStyleAttr: Int = 0) :
    PreviewFrameLayout(context, attrs, defStyleAttr)
