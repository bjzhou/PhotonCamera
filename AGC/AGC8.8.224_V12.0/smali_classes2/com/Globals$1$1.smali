.class Lcom/Globals$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/Globals$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/Globals$1;


# direct methods
.method public constructor <init>(Lcom/Globals$1;)V
    .locals 0

    iput-object p1, p0, Lcom/Globals$1$1;->this$0:Lcom/Globals$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const-string v0, "lib_patch_profile_key"

    const-string v1, "lib_lut_key"

    const-string v2, ""

    :try_start_0
    new-instance v3, Landroid/media/ExifInterface;

    iget-object v4, p0, Lcom/Globals$1$1;->this$0:Lcom/Globals$1;

    iget-object v4, v4, Lcom/Globals$1;->val$absolutePath:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/Globals$1$1;->this$0:Lcom/Globals$1;

    iget-object v4, v4, Lcom/Globals$1;->val$absolutePath:Ljava/lang/String;

    invoke-static {v4, v2, v2, v2, v2}, Lagc/Agc;->getImageExif(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v5, "pref_dotfix_key"

    invoke-static {v5}, Lcom/Utils/Pref;->getAuxPrefIntValue(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v4, v5}, Lagc/Agc;->medianFilter(Ljava/lang/String;I)V

    :cond_0
    new-instance v5, Lcom/agc/util/ImageProcessing;

    const-string v6, "ImageProcessing"

    invoke-static {v6}, Lcom/agc/AdvancedSettings;->getJPGQuality(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v5, v4, v6}, Lcom/agc/util/ImageProcessing;-><init>(Ljava/lang/String;I)V

    invoke-static {v1}, Lcom/Utils/Pref;->getAuxProfilePrefStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v4, :cond_1

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "0"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    new-instance v7, Ljava/io/File;

    sget-object v8, Lcom/Globals;->lutFolder:Ljava/io/File;

    invoke-direct {v7, v8, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "lib_lut_intensity_key"

    invoke-static {v4, v6}, Lcom/Utils/Pref;->getAuxProfilePrefFloatValue(Ljava/lang/String;F)F

    move-result v4

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v4}, Lcom/agc/util/ImageProcessing;->setLutParamters(Ljava/lang/String;F)V

    :cond_1
    const-string v4, "lib_gpu_sharpness_key"

    const/4 v7, 0x0

    invoke-static {v4, v7}, Lcom/Utils/Pref;->getAuxProfilePrefFloatValue(Ljava/lang/String;F)F

    move-result v4

    invoke-virtual {v5, v4}, Lcom/agc/util/ImageProcessing;->setSharpness(F)V

    const-string v4, "lib_gpu_brightness_key"

    invoke-static {v4, v7}, Lcom/Utils/Pref;->getAuxProfilePrefFloatValue(Ljava/lang/String;F)F

    move-result v4

    invoke-virtual {v5, v4}, Lcom/agc/util/ImageProcessing;->setBrightness(F)V

    const-string v4, "lib_gpu_luminance_threshold_key"

    invoke-static {v4, v7}, Lcom/Utils/Pref;->getAuxProfilePrefFloatValue(Ljava/lang/String;F)F

    move-result v4

    invoke-virtual {v5, v4}, Lcom/agc/util/ImageProcessing;->setLuminanceThreshold(F)V

    const-string v4, "lib_gpu_exposure_key"

    invoke-static {v4, v7}, Lcom/Utils/Pref;->getAuxProfilePrefFloatValue(Ljava/lang/String;F)F

    move-result v4

    invoke-virtual {v5, v4}, Lcom/agc/util/ImageProcessing;->setExposure(F)V

    const-string v4, "lib_gpu_contrast_key"

    invoke-static {v4, v6}, Lcom/Utils/Pref;->getAuxProfilePrefFloatValue(Ljava/lang/String;F)F

    move-result v4

    invoke-virtual {v5, v4}, Lcom/agc/util/ImageProcessing;->setContrast(F)V

    const-string v4, "lib_gpu_gamma_key"

    invoke-static {v4, v6}, Lcom/Utils/Pref;->getAuxProfilePrefFloatValue(Ljava/lang/String;F)F

    move-result v4

    invoke-virtual {v5, v4}, Lcom/agc/util/ImageProcessing;->setGamma(F)V

    const-string v4, "lib_gpu_saturation_key"

    invoke-static {v4, v6}, Lcom/Utils/Pref;->getAuxProfilePrefFloatValue(Ljava/lang/String;F)F

    move-result v4

    invoke-virtual {v5, v4}, Lcom/agc/util/ImageProcessing;->setSaturation(F)V

    sget-object v4, Lcom/Globals;->GcamVersion:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    float-to-double v8, v4

    const-wide v10, 0x4022333333333333L    # 9.1

    cmpl-double v4, v8, v10

    if-ltz v4, :cond_3

    invoke-static {v0}, Lcom/Utils/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v4

    const/4 v8, 0x1

    if-ne v4, v8, :cond_2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {v5, v0}, Lcom/agc/util/ImageProcessing;->setSaturation(F)V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/Utils/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    const/high16 v0, 0x3fa00000    # 1.25f

    invoke-virtual {v5, v0}, Lcom/agc/util/ImageProcessing;->setSaturation(F)V

    :cond_3
    :goto_0
    const-string v0, "lib_gpu_vibrance_key"

    const v4, 0x3f99999a    # 1.2f

    invoke-static {v0, v4}, Lcom/Utils/Pref;->getAuxProfilePrefFloatValue(Ljava/lang/String;F)F

    move-result v0

    invoke-virtual {v5, v0}, Lcom/agc/util/ImageProcessing;->setVibrance(F)V

    const-string v0, "lib_gpu_wb_temperature_key"

    const v4, 0x459c4000    # 5000.0f

    invoke-static {v0, v4}, Lcom/Utils/Pref;->getAuxProfilePrefFloatValue(Ljava/lang/String;F)F

    move-result v0

    invoke-virtual {v5, v0}, Lcom/agc/util/ImageProcessing;->setWbTemperature(F)V

    const-string v0, "lib_gpu_wb_tint_key"

    invoke-static {v0, v7}, Lcom/Utils/Pref;->getAuxProfilePrefFloatValue(Ljava/lang/String;F)F

    move-result v0

    invoke-virtual {v5, v0}, Lcom/agc/util/ImageProcessing;->setWbTint(F)V

    const-string v0, "lib_gpu_rgb_red_key"

    invoke-static {v0, v7}, Lcom/Utils/Pref;->getAuxProfilePrefFloatValue(Ljava/lang/String;F)F

    move-result v0

    invoke-virtual {v5, v0}, Lcom/agc/util/ImageProcessing;->setRgbRed(F)V

    const-string v0, "lib_gpu_rgb_green_key"

    invoke-static {v0, v7}, Lcom/Utils/Pref;->getAuxProfilePrefFloatValue(Ljava/lang/String;F)F

    move-result v0

    invoke-virtual {v5, v0}, Lcom/agc/util/ImageProcessing;->setRgbGreen(F)V

    const-string v0, "lib_gpu_rgb_blue_key"

    invoke-static {v0, v7}, Lcom/Utils/Pref;->getAuxProfilePrefFloatValue(Ljava/lang/String;F)F

    move-result v0

    invoke-virtual {v5, v0}, Lcom/agc/util/ImageProcessing;->setRgbBlue(F)V

    const-string v0, "lib_gpu_hue_key"

    const/high16 v4, 0x42b40000    # 90.0f

    invoke-static {v0, v4}, Lcom/Utils/Pref;->getAuxProfilePrefFloatValue(Ljava/lang/String;F)F

    move-result v0

    invoke-virtual {v5, v0}, Lcom/agc/util/ImageProcessing;->setHue(F)V

    const-string v0, "lib_gpu_highlights_key"

    invoke-static {v0, v6}, Lcom/Utils/Pref;->getAuxProfilePrefFloatValue(Ljava/lang/String;F)F

    move-result v0

    invoke-virtual {v5, v0}, Lcom/agc/util/ImageProcessing;->setHighlights(F)V

    const-string v0, "lib_gpu_shadows_key"

    invoke-static {v0, v7}, Lcom/Utils/Pref;->getAuxProfilePrefFloatValue(Ljava/lang/String;F)F

    move-result v0

    invoke-virtual {v5, v0}, Lcom/agc/util/ImageProcessing;->setShadows(F)V

    const-string v0, "lib_gpu_vignette_start_key"

    invoke-static {v0, v7}, Lcom/Utils/Pref;->getAuxProfilePrefFloatValue(Ljava/lang/String;F)F

    move-result v0

    invoke-virtual {v5, v0}, Lcom/agc/util/ImageProcessing;->setVignetteStart(F)V

    const-string v0, "lib_gpu_vignette_end_key"

    invoke-static {v0, v7}, Lcom/Utils/Pref;->getAuxProfilePrefFloatValue(Ljava/lang/String;F)F

    move-result v0

    invoke-virtual {v5, v0}, Lcom/agc/util/ImageProcessing;->setVignetteEnd(F)V

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Lcom/agc/util/ImageProcessing;->saveImageByLUT(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/Globals;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/hinnka/mycamera/agc/PhotonAgcBridge;->postProcessJpeg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    iget-object v4, p0, Lcom/Globals$1$1;->this$0:Lcom/Globals$1;

    iget-object v4, v4, Lcom/Globals$1;->val$absolutePath:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lcom/Globals;->mParameters:Lcom/Parameters;

    const-string v5, "lib_lut_id_key"

    invoke-static {v5, v2}, Lcom/Utils/Pref;->getAuxProfilePrefStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/Parameters;->lutID:Ljava/lang/String;

    sget-object v4, Lcom/Globals;->mParameters:Lcom/Parameters;

    invoke-static {v1, v2}, Lcom/Utils/Pref;->getAuxProfilePrefStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/Parameters;->lutFilename:Ljava/lang/String;

    sget-object v1, Lcom/Globals;->mParameters:Lcom/Parameters;

    invoke-virtual {v1}, Lcom/Parameters;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcom/agc/util/ExifInterfaceUtil;->copyExifInterface(Ljava/lang/String;Landroid/media/ExifInterface;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExifInterface Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/agc/Log;->e(Ljava/lang/Object;)I

    :cond_4
    :goto_1
    return-void
.end method
