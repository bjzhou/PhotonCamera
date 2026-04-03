package com.google.android.apps.camera.bottombar

import android.content.Context
import android.util.AttributeSet
import com.hinnka.mycamera.layoutpreview.stub.PreviewButton
import com.hinnka.mycamera.layoutpreview.stub.PreviewFrameLayout
import com.hinnka.mycamera.layoutpreview.stub.PreviewImageView
import com.hinnka.mycamera.layoutpreview.stub.PreviewLinearLayout

class BottomBar @JvmOverloads constructor(context: Context, attrs: AttributeSet? = null, defStyleAttr: Int = 0) :
    PreviewFrameLayout(context, attrs, defStyleAttr)

class CameraSwitchButton @JvmOverloads constructor(context: Context, attrs: AttributeSet? = null, defStyleAttr: Int = 0) :
    PreviewButton(context, attrs, defStyleAttr)

class PauseResumeButton @JvmOverloads constructor(context: Context, attrs: AttributeSet? = null, defStyleAttr: Int = 0) :
    PreviewButton(context, attrs, defStyleAttr)

class RoundedStateView @JvmOverloads constructor(context: Context, attrs: AttributeSet? = null, defStyleAttr: Int = 0) :
    PreviewFrameLayout(context, attrs, defStyleAttr)

class RoundedThumbnailView @JvmOverloads constructor(context: Context, attrs: AttributeSet? = null, defStyleAttr: Int = 0) :
    PreviewImageView(context, attrs, defStyleAttr)

class SideButtonContainer @JvmOverloads constructor(context: Context, attrs: AttributeSet? = null, defStyleAttr: Int = 0) :
    PreviewLinearLayout(context, attrs, defStyleAttr)

class SnapshotButton @JvmOverloads constructor(context: Context, attrs: AttributeSet? = null, defStyleAttr: Int = 0) :
    PreviewButton(context, attrs, defStyleAttr)
