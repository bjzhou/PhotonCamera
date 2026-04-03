package com.google.android.apps.camera.filmstrip.transition

import android.content.Context
import android.util.AttributeSet
import com.hinnka.mycamera.layoutpreview.stub.PreviewFrameLayout
import com.hinnka.mycamera.layoutpreview.stub.PreviewImageView

class FilmstripTransitionLayout @JvmOverloads constructor(context: Context, attrs: AttributeSet? = null, defStyleAttr: Int = 0) :
    PreviewFrameLayout(context, attrs, defStyleAttr)

class FilmstripTransitionThumbnailView @JvmOverloads constructor(context: Context, attrs: AttributeSet? = null, defStyleAttr: Int = 0) :
    PreviewImageView(context, attrs, defStyleAttr)
