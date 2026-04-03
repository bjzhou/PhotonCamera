package com.google.android.apps.camera.ui.widget

import android.content.Context
import android.util.AttributeSet
import com.hinnka.mycamera.layoutpreview.stub.PreviewFrameLayout
import com.hinnka.mycamera.layoutpreview.stub.PreviewImageView

class ReviewImageView @JvmOverloads constructor(context: Context, attrs: AttributeSet? = null, defStyleAttr: Int = 0) :
    PreviewImageView(context, attrs, defStyleAttr)

class TracedFrameLayout @JvmOverloads constructor(context: Context, attrs: AttributeSet? = null, defStyleAttr: Int = 0) :
    PreviewFrameLayout(context, attrs, defStyleAttr)
