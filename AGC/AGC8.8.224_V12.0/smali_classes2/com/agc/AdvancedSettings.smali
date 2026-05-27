.class public Lcom/agc/AdvancedSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get48m()I
    .locals 1

    const-string v0, "pref_48m_key"

    invoke-static {v0}, Lcom/Utils/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static get4KTimelapse()I
    .locals 1

    const-string v0, "pref_4k_timelapse_key"

    invoke-static {v0}, Lcom/Utils/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getAperture()F
    .locals 2

    invoke-static {}, Lagc/Agc;->isXiaomi13Ultra()Z

    move-result v0

    const-string v1, "pref_aperture_key"

    if-eqz v0, :cond_1

    invoke-static {v1}, Lcom/Utils/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x40800000    # 4.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-static {v1}, Lcom/Utils/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x4019999a    # 2.4f

    goto :goto_1

    :cond_2
    const/high16 v0, 0x3fc00000    # 1.5f

    :goto_1
    return v0
.end method

.method public static getAutoNightSight()Z
    .locals 1

    invoke-static {}, Lagc/Agc;->isGoogleDevice()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/agc/LensSettings;->isSupportLEVEL3()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/agc/AdvancedSettings;->getTrackFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static getAutoNs()I
    .locals 2

    const-string v0, "pref_auto_ns_key"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/Utils/Pref;->MenuValue(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getAutoNs(Z)Z
    .locals 3

    const-string v0, "pref_auto_ns_key"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/Utils/Pref;->MenuValue(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_1

    move p0, v2

    :cond_1
    :goto_0
    return p0
.end method

.method public static getColorTheme(I)I
    .locals 2

    const-string v0, "pref_color_theme_key"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/Utils/Pref;->MenuValue(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    return p0
.end method

.method public static getCompressMergedDNG(Z)Z
    .locals 3

    const-string v0, "pref_disabled_compress_merged_dng_key"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/Utils/Pref;->MenuValue(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move p0, v1

    :cond_0
    return p0
.end method

.method public static getFixShastaZSL(Z)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static getFocusLockTime(I)I
    .locals 2

    const-string v0, "pref_focus_lock_time_key"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/Utils/Pref;->MenuValue(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    return p0
.end method

.method public static getGallery()Ljava/lang/String;
    .locals 1

    const-string v0, "gallery_selection_key"

    invoke-static {v0}, Lcom/Utils/Pref;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getGeometricCalibrationQualityFix(I)I
    .locals 2

    const-string v0, "pref_camera_lightroom_key"

    invoke-static {v0}, Lcom/Utils/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move p0, v1

    :cond_0
    return p0
.end method

.method public static getHdrNet()I
    .locals 3

    const-string v0, "lib_override_hdrnet_key"

    invoke-static {v0}, Lcom/Utils/Pref;->getAuxProfilePrefIntValue(Ljava/lang/String;)I

    move-result v0

    const-string v1, "pref_hdrnet_key"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const-string v0, "lib_pref_hdrnet_key"

    invoke-static {v0}, Lcom/Utils/Pref;->getAuxProfilePrefIntValue(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v0}, Lcom/Utils/Pref;->setMenuValue(Ljava/lang/String;I)V

    :cond_0
    invoke-static {v1}, Lcom/Utils/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getHexagonDSP(Z)Z
    .locals 0

    invoke-static {}, Lagc/Agc;->isGoogleDevice()Z

    return p0
.end method

.method public static getHighlightFix(I)I
    .locals 1

    const-string v0, "pref_highlight_key"

    invoke-static {v0}, Lcom/Utils/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x79

    if-le v0, p0, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x64

    :cond_1
    :goto_0
    return p0
.end method

.method public static getJPGQuality(Ljava/lang/String;)I
    .locals 1

    const-string p0, "pref_qjpg_key"

    const/16 v0, 0x61

    invoke-static {p0, v0}, Lcom/Utils/Pref;->MenuValue(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getMaxBrigtness()Z
    .locals 3

    const-string v0, "pref_max_brigtness_key"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/Utils/Pref;->MenuValue(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public static getMaxZoom(F)F
    .locals 2

    const-string v0, "pref_max_zoom_key"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/Utils/Pref;->getFloatValue(Ljava/lang/String;F)F

    move-result v0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    return p0
.end method

.method public static getMeteringMode()I
    .locals 1

    const-string v0, "lib_pref_metering_mode_key"

    invoke-static {v0}, Lcom/Utils/Pref;->getAuxProfilePrefIntValue(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_metering_mode_key"

    invoke-static {v0}, Lcom/Utils/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public static getMotion()I
    .locals 1

    const-string v0, "pref_motion_key"

    invoke-static {v0}, Lcom/Utils/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getPhotoPrefix()Ljava/lang/String;
    .locals 2

    const-string v0, "pref_prefix_key"

    const-string v1, "AGC_"

    invoke-static {v0, v1}, Lcom/Utils/Pref;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPhotoSuffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "pref_date_key"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/Utils/Pref;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object p0, v0

    :cond_0
    const-string v0, "pref_suffix_key"

    invoke-static {v0, v1}, Lcom/Utils/Pref;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\'"

    const-string v3, "\'."

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    const-string v0, "pref_profile_prefix_key"

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/Utils/Pref;->MenuValue(Ljava/lang/String;I)I

    move-result v0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_6

    const-string v0, "lib_patch_profile_key"

    invoke-static {v0, v4}, Lcom/Utils/Pref;->MenuValue(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    if-eq v0, v5, :cond_3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    const-string v5, "lib_profile_title_key"

    invoke-static {v5}, Lcom/Utils/Pref;->getAuxProfilePrefStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sub-int/2addr v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Profile"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_2
    const-string v5, "KaDay"

    goto :goto_0

    :cond_3
    const-string v5, "KaNight"

    goto :goto_0

    :cond_4
    const-string v5, "Default"

    :cond_5
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_6
    return-object p0
.end method

.method public static getPhotosGallery()Z
    .locals 2

    const-string v0, "pref_gallery_key"

    invoke-static {v0}, Lcom/Utils/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static getPortraitZoomValue(F)F
    .locals 0

    return p0
.end method

.method public static getShading()I
    .locals 3

    const-string v0, "pref_photo_grayscale_key"

    invoke-static {v0}, Lcom/Utils/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    if-nez v0, :cond_1

    move v1, v2

    :cond_1
    sput-boolean v1, Lcom/agc/LogData$Device;->leica:Z

    invoke-static {}, Lcom/agc/LogData$Device;->log()V

    return v0
.end method

.method public static getSunlightFix()Z
    .locals 3

    const-string v0, "pref_sunlight_key"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/Utils/Pref;->MenuValue(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public static getTheme()I
    .locals 1

    const-string v0, "theme_select_key"

    invoke-static {v0}, Lcom/Utils/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getTrackFocus()Z
    .locals 3

    const-string v0, "pref_track_focus_key"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/Utils/Pref;->MenuValue(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public static getVibro()I
    .locals 2

    const-string v0, "pref_vibro_key"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/Utils/Pref;->MenuValue(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getVideoBrightnessFix()Z
    .locals 3

    const-string v0, "pref_fix_video_brightness_key"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/Utils/Pref;->MenuValue(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public static getVideoPrefix()Ljava/lang/String;
    .locals 2

    const-string v0, "pref_vid_prefix_key"

    const-string v1, "VID_"

    invoke-static {v0, v1}, Lcom/Utils/Pref;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isAnalysisYuvSupported()Z
    .locals 5

    const-string v0, "pck_analysis_yuv"

    invoke-static {v0}, Lcom/Utils/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    const-string v4, "isOpenGLPreviewSupported:"

    invoke-static {v4, v3}, Lcom/agc/Log;->d(Ljava/lang/Object;Z)I

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public static isOpenGLPreviewSupported()Z
    .locals 5

    const-string v0, "pref_glpreview_key"

    invoke-static {v0}, Lcom/Utils/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    const-string v4, "isOpenGLPreviewSupported:"

    invoke-static {v4, v3}, Lcom/agc/Log;->d(Ljava/lang/Object;Z)I

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public static isShowAFData()Z
    .locals 3

    const-string v0, "pref_show_af_data_key"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/Utils/Pref;->MenuValue(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public static isShowDebugData()Z
    .locals 3

    const-string v0, "pref_show_debug_data_key"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/Utils/Pref;->MenuValue(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public static updateColorsOnline()I
    .locals 2

    const-string v0, "pref_update_color_online_key"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/Utils/Pref;->MenuValue(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
