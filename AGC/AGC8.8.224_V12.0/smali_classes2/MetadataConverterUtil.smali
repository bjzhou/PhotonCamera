.class public LMetadataConverterUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToFloatArray(Landroid/hardware/camera2/params/ColorSpaceTransform;)Lcom/google/googlex/gcam/FloatArray9;
    .locals 4

    const/16 v0, 0x9

    new-array v1, v0, [Landroid/util/Rational;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/hardware/camera2/params/ColorSpaceTransform;->copyElements([Landroid/util/Rational;I)V

    new-instance p0, Lcom/google/googlex/gcam/FloatArray9;

    invoke-direct {p0}, Lcom/google/googlex/gcam/FloatArray9;-><init>()V

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/util/Rational;->floatValue()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/google/googlex/gcam/FloatArray9;->b(IF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static convertToGcamStaticMetadata(Lkli;)Lcom/google/googlex/gcam/StaticMetadata;
    .locals 15

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PHYSICAL_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p0, v0}, Lkli;->n(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SizeF;

    invoke-virtual {v0}, Landroid/util/SizeF;->getWidth()F

    move-result v1

    invoke-virtual {v0}, Landroid/util/SizeF;->getHeight()F

    move-result v2

    invoke-static {v1, v2}, Lagc/Agc;->getCameraIdBySensorSize(FF)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MetadataConverter CameraId:"

    invoke-static {v2, v1}, Lcom/agc/Log;->w(Ljava/lang/Object;Ljava/lang/Object;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SENSOR_INFO_PHYSICAL_SIZE >= width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/util/SizeF;->getWidth()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/util/SizeF;->getHeight()F

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/agc/Log;->w(Ljava/lang/Object;)I

    new-instance v0, Lcom/google/googlex/gcam/StaticMetadata;

    invoke-direct {v0}, Lcom/google/googlex/gcam/StaticMetadata;-><init>()V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iget-wide v1, v0, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    const-string v3, "Google"

    invoke-static {v1, v2, v0, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_make_set(JLcom/google/googlex/gcam/StaticMetadata;Ljava/lang/String;)V

    iget-wide v1, v0, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v1, v2, v0, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_model_set(JLcom/google/googlex/gcam/StaticMetadata;Ljava/lang/String;)V

    iget-wide v1, v0, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v3}, Lcom/agc/LensSettings;->getHdrModel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_device_set(JLcom/google/googlex/gcam/StaticMetadata;Ljava/lang/String;)V

    sget-object v1, Lkoh;->a:Lkgd;

    const-string v2, "ro.revision"

    invoke-virtual {v1, v2}, Lkgd;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-wide v2, v0, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    invoke-static {v2, v3, v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_hardware_revision_set(JLcom/google/googlex/gcam/StaticMetadata;Ljava/lang/String;)V

    :cond_0
    iget-wide v1, v0, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->GetVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "HDR+ "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_software_set(JLcom/google/googlex/gcam/StaticMetadata;Ljava/lang/String;)V

    iget-wide v1, v0, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    sget-object v3, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-static {v1, v2, v0, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_device_os_version_set(JLcom/google/googlex/gcam/StaticMetadata;Ljava/lang/String;)V

    iget-wide v1, v0, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    sget-wide v3, Landroid/os/Build;->TIME:J

    invoke-static {v1, v2, v0, v3, v4}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_device_os_unix_ms_set(JLcom/google/googlex/gcam/StaticMetadata;J)V

    invoke-static {p0}, Lnsc;->m(Lkli;)Lnrg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/gcam/StaticMetadata;->g(Lnrg;)V

    iget-wide v1, v0, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    invoke-interface {p0}, Lkli;->I()Z

    move-result v3

    invoke-static {v1, v2, v0, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_has_flash_set(JLcom/google/googlex/gcam/StaticMetadata;Z)V

    invoke-interface {p0}, Lkli;->k()Lklv;

    move-result-object v1

    sget-object v2, Lnqr;->a:Lnqr;

    sget-object v3, Lklv;->a:Lklv;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v8, :cond_2

    if-eq v1, v7, :cond_1

    goto :goto_0

    :cond_1
    sget-object v2, Lnqr;->d:Lnqr;

    goto :goto_0

    :cond_2
    sget-object v2, Lnqr;->c:Lnqr;

    goto :goto_0

    :cond_3
    sget-object v2, Lnqr;->b:Lnqr;

    :goto_0
    iget-wide v3, v0, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    iget v1, v2, Lnqr;->f:I

    invoke-static {v3, v4, v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_lens_facing_set(JLcom/google/googlex/gcam/StaticMetadata;I)V

    invoke-interface {p0}, Lkli;->r()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v8

    const-string v3, "Cameras must have at least one focal length."

    invoke-static {v2, v3}, Lmoz;->f(ZLjava/lang/Object;)V

    new-instance v6, Lcom/google/googlex/gcam/FloatVector;

    invoke-direct {v6}, Lcom/google/googlex/gcam/FloatVector;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v6, v2}, Lcom/google/googlex/gcam/FloatVector;->b(F)V

    goto :goto_1

    :cond_4
    iget-wide v1, v0, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    iget-wide v4, v6, Lcom/google/googlex/gcam/FloatVector;->a:J

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_available_focal_lengths_mm_set(JLcom/google/googlex/gcam/StaticMetadata;JLcom/google/googlex/gcam/FloatVector;)V

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_APERTURES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p0, v1}, Lkli;->n(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    array-length v2, v1

    const/4 v9, 0x0

    if-lez v2, :cond_5

    move v2, v8

    goto :goto_2

    :cond_5
    move v2, v9

    :goto_2
    const-string v3, "Cameras must have at least one f-number (aperture size)."

    invoke-static {v2, v3}, Lmoz;->f(ZLjava/lang/Object;)V

    invoke-static {v1}, Lnsc;->A([F)Lcom/google/googlex/gcam/FloatVector;

    move-result-object v6

    iget-wide v1, v0, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    iget-wide v4, v6, Lcom/google/googlex/gcam/FloatVector;->a:J

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_available_f_numbers_set(JLcom/google/googlex/gcam/StaticMetadata;JLcom/google/googlex/gcam/FloatVector;)V

    iget-wide v1, v0, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_WHITE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p0, v3}, Lkli;->l(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/agc/LensSettings;->getWhiteLevel(I)I

    move-result v3

    invoke-static {v1, v2, v0, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_white_level_set(JLcom/google/googlex/gcam/StaticMetadata;I)V

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_OPTICAL_BLACK_REGIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p0, v1}, Lkli;->l(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/graphics/Rect;

    if-eqz v1, :cond_7

    new-instance v6, Lcom/google/googlex/gcam/PixelRectVector;

    invoke-direct {v6}, Lcom/google/googlex/gcam/PixelRectVector;-><init>()V

    array-length v2, v1

    move v3, v9

    :goto_3
    if-ge v3, v2, :cond_6

    aget-object v4, v1, v3

    new-instance v5, Lcom/google/googlex/gcam/PixelRect;

    invoke-direct {v5}, Lcom/google/googlex/gcam/PixelRect;-><init>()V

    iget v10, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5, v10}, Lcom/google/googlex/gcam/PixelRect;->f(I)V

    iget v10, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {v5, v10}, Lcom/google/googlex/gcam/PixelRect;->g(I)V

    iget v10, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5, v10}, Lcom/google/googlex/gcam/PixelRect;->h(I)V

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v4}, Lcom/google/googlex/gcam/PixelRect;->i(I)V

    invoke-virtual {v6, v5}, Lcom/google/googlex/gcam/PixelRectVector;->a(Lcom/google/googlex/gcam/PixelRect;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    iget-wide v1, v0, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    iget-wide v4, v6, Lcom/google/googlex/gcam/PixelRectVector;->a:J

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_optically_black_regions_set(JLcom/google/googlex/gcam/StaticMetadata;JLcom/google/googlex/gcam/PixelRectVector;)V

    :cond_7
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_COLOR_FILTER_ARRANGEMENT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p0, v1}, Lkli;->n(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/agc/LensSettings;->getSensorInfoColorFilter(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertToBayerPattern: unsupported color filter arrangement: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", returning kInvalid."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/agc/Log;->w(Ljava/lang/Object;)I

    sget-object v1, Lnqf;->a:Lnqf;

    goto :goto_4

    :pswitch_0
    sget-object v1, Lnqf;->c:Lnqf;

    goto :goto_4

    :pswitch_1
    sget-object v1, Lnqf;->e:Lnqf;

    goto :goto_4

    :pswitch_2
    sget-object v1, Lnqf;->d:Lnqf;

    goto :goto_4

    :pswitch_3
    sget-object v1, Lnqf;->b:Lnqf;

    :goto_4
    iget-wide v2, v0, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    iget v1, v1, Lnqf;->f:I

    invoke-static {v2, v3, v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_bayer_pattern_set(JLcom/google/googlex/gcam/StaticMetadata;I)V

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_EXPOSURE_TIME_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p0, v1}, Lkli;->n(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    new-array v3, v7, [F

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_EXPOSURE_TIME_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p0, v4}, Lkli;->n(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Range;

    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lnsc;->x(J)F

    move-result v4

    aput v4, v3, v9

    invoke-static {v1, v2}, Lnsc;->x(J)F

    move-result v1

    aput v1, v3, v8

    invoke-interface {p0}, Lkli;->k()Lklv;

    move-result-object v1

    sget-object v2, Lklv;->b:Lklv;

    const/4 v7, 0x0

    if-ne v1, v2, :cond_e

    sget-object v1, Lnsc;->b:Lkog;

    iget-boolean v2, v1, Lkog;->c:Z

    const/high16 v4, 0x46fa0000    # 32000.0f

    if-nez v2, :cond_9

    invoke-virtual {v1}, Lkog;->h()Z

    move-result v2

    if-nez v2, :cond_9

    iget-boolean v2, v1, Lkog;->f:Z

    if-nez v2, :cond_9

    invoke-virtual {v1}, Lkog;->i()Z

    move-result v2

    if-nez v2, :cond_9

    iget-boolean v2, v1, Lkog;->j:Z

    if-nez v2, :cond_9

    invoke-virtual {v1}, Lkog;->b()Z

    move-result v2

    if-nez v2, :cond_9

    iget-boolean v2, v1, Lkog;->n:Z

    if-nez v2, :cond_9

    iget-boolean v2, v1, Lkog;->o:Z

    if-nez v2, :cond_9

    invoke-virtual {v1}, Lkog;->k()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_5

    :cond_8
    const-string v1, "lower interface"

    invoke-static {v1}, Lcom/agc/Log;->e(Ljava/lang/Object;)I

    goto :goto_6

    :cond_9
    :goto_5
    invoke-static {p0}, Lnsc;->m(Lkli;)Lnrg;

    move-result-object v1

    sget-object v2, Lnrg;->b:Lnrg;

    if-eq v1, v2, :cond_d

    sget-object v2, Lnrg;->d:Lnrg;

    if-ne v1, v2, :cond_a

    goto :goto_8

    :cond_a
    sget-object v2, Lnrg;->e:Lnrg;

    if-eq v1, v2, :cond_c

    sget-object v2, Lnrg;->g:Lnrg;

    if-eq v1, v2, :cond_c

    sget-object v2, Lnrg;->j:Lnrg;

    if-eq v1, v2, :cond_c

    sget-object v2, Lnrg;->h:Lnrg;

    if-ne v1, v2, :cond_b

    goto :goto_7

    :cond_b
    :goto_6
    move-object v1, v7

    goto :goto_a

    :cond_c
    :goto_7
    const v1, 0x46bb8000    # 24000.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_9

    :cond_d
    :goto_8
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :goto_9
    invoke-static {v1}, Lcom/agc/LensSettings;->getExpastro(Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :goto_a
    if-nez v1, :cond_f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Lcom/agc/LensSettings;->getExpastro(Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_b

    :cond_e
    move-object v1, v7

    :cond_f
    :goto_b
    if-eqz v1, :cond_10

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    aget v2, v3, v9

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    aput v1, v3, v8

    :cond_10
    iget-wide v1, v0, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    invoke-static {v1, v2, v0, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_exposure_time_range_ms_set(JLcom/google/googlex/gcam/StaticMetadata;[F)V

    invoke-static {p0}, Lnsc;->r(Lkli;)[F

    move-result-object v1

    invoke-static {p0}, Lnsc;->w(Lkli;)F

    move-result v2

    iget-wide v3, v0, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    invoke-static {v3, v4, v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_iso_range_set(JLcom/google/googlex/gcam/StaticMetadata;[F)V

    iget-wide v3, v0, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    invoke-static {v3, v4, v0, v2}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_max_analog_iso_set(JLcom/google/googlex/gcam/StaticMetadata;F)V

    new-instance v6, Lcom/google/googlex/gcam/DngColorCalibrationVector;

    invoke-direct {v6}, Lcom/google/googlex/gcam/DngColorCalibrationVector;-><init>()V

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_REFERENCE_ILLUMINANT1:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p0, v1}, Lkli;->l(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_11

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_COLOR_TRANSFORM1:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p0, v2}, Lkli;->n(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/ColorSpaceTransform;

    invoke-static {v2}, Lnsc;->z(Landroid/hardware/camera2/params/ColorSpaceTransform;)Lcom/google/googlex/gcam/FloatArray9;

    move-result-object v2

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_CALIBRATION_TRANSFORM1:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p0, v3}, Lkli;->n(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/params/ColorSpaceTransform;

    invoke-static {v3}, Lnsc;->z(Landroid/hardware/camera2/params/ColorSpaceTransform;)Lcom/google/googlex/gcam/FloatArray9;

    move-result-object v3

    new-instance v4, Lcom/google/googlex/gcam/DngColorCalibration;

    invoke-direct {v4}, Lcom/google/googlex/gcam/DngColorCalibration;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lnqj;->a(I)Lnqj;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/google/googlex/gcam/DngColorCalibration;->b(Lnqj;)V

    invoke-virtual {v4, v2}, Lcom/google/googlex/gcam/DngColorCalibration;->d(Lcom/google/googlex/gcam/FloatArray9;)V

    invoke-virtual {v4, v3}, Lcom/google/googlex/gcam/DngColorCalibration;->c(Lcom/google/googlex/gcam/FloatArray9;)V

    invoke-virtual {v6, v4}, Lcom/google/googlex/gcam/DngColorCalibrationVector;->a(Lcom/google/googlex/gcam/DngColorCalibration;)V

    :cond_11
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_REFERENCE_ILLUMINANT2:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p0, v1}, Lkli;->l(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    if-eqz v1, :cond_12

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_COLOR_TRANSFORM2:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p0, v2}, Lkli;->n(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/ColorSpaceTransform;

    invoke-static {v2}, Lnsc;->z(Landroid/hardware/camera2/params/ColorSpaceTransform;)Lcom/google/googlex/gcam/FloatArray9;

    move-result-object v2

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_CALIBRATION_TRANSFORM2:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p0, v3}, Lkli;->n(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/params/ColorSpaceTransform;

    invoke-static {v3}, Lnsc;->z(Landroid/hardware/camera2/params/ColorSpaceTransform;)Lcom/google/googlex/gcam/FloatArray9;

    move-result-object v3

    new-instance v4, Lcom/google/googlex/gcam/DngColorCalibration;

    invoke-direct {v4}, Lcom/google/googlex/gcam/DngColorCalibration;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    invoke-static {v1}, Lnqj;->a(I)Lnqj;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/google/googlex/gcam/DngColorCalibration;->b(Lnqj;)V

    invoke-virtual {v4, v2}, Lcom/google/googlex/gcam/DngColorCalibration;->d(Lcom/google/googlex/gcam/FloatArray9;)V

    invoke-virtual {v4, v3}, Lcom/google/googlex/gcam/DngColorCalibration;->c(Lcom/google/googlex/gcam/FloatArray9;)V

    invoke-virtual {v6, v4}, Lcom/google/googlex/gcam/DngColorCalibrationVector;->a(Lcom/google/googlex/gcam/DngColorCalibration;)V

    :cond_12
    iget-wide v1, v0, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    iget-wide v4, v6, Lcom/google/googlex/gcam/DngColorCalibrationVector;->a:J

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_dng_color_calibration_set(JLcom/google/googlex/gcam/StaticMetadata;JLcom/google/googlex/gcam/DngColorCalibrationVector;)V

    invoke-static {v0}, LAwb;->getQcColorCalibration(Lcom/google/googlex/gcam/StaticMetadata;)V

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PHYSICAL_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p0, v1}, Lkli;->n(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SizeF;

    iget-wide v2, v0, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    invoke-virtual {v1}, Landroid/util/SizeF;->getWidth()F

    move-result v4

    invoke-static {v2, v3, v0, v4}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_sensor_physical_width_mm_set(JLcom/google/googlex/gcam/StaticMetadata;F)V

    iget-wide v2, v0, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    invoke-virtual {v1}, Landroid/util/SizeF;->getHeight()F

    move-result v1

    invoke-static {v2, v3, v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_sensor_physical_height_mm_set(JLcom/google/googlex/gcam/StaticMetadata;F)V

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PIXEL_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p0, v1}, Lkli;->n(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    iget-wide v2, v0, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-static {v2, v3, v0, v4}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_pixel_array_width_set(JLcom/google/googlex/gcam/StaticMetadata;I)V

    iget-wide v2, v0, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-static {v2, v3, v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_pixel_array_height_set(JLcom/google/googlex/gcam/StaticMetadata;I)V

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PRE_CORRECTION_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p0, v1}, Lkli;->n(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    new-instance v6, Lcom/google/googlex/gcam/PixelRect;

    invoke-direct {v6}, Lcom/google/googlex/gcam/PixelRect;-><init>()V

    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v6, v2}, Lcom/google/googlex/gcam/PixelRect;->f(I)V

    iget v2, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v6, v2}, Lcom/google/googlex/gcam/PixelRect;->g(I)V

    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6, v2}, Lcom/google/googlex/gcam/PixelRect;->h(I)V

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v6, v1}, Lcom/google/googlex/gcam/PixelRect;->i(I)V

    iget-wide v1, v0, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    iget-wide v4, v6, Lcom/google/googlex/gcam/PixelRect;->a:J

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_active_area_set(JLcom/google/googlex/gcam/StaticMetadata;JLcom/google/googlex/gcam/PixelRect;)V

    invoke-static {p0}, Lnsc;->g(Lkli;)Lkmf;

    move-result-object v1

    iget-wide v2, v0, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    iget-object v4, v1, Lkmf;->b:Lkaf;

    iget v4, v4, Lkaf;->a:I

    invoke-static {v2, v3, v0, v4}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_frame_raw_max_width_set(JLcom/google/googlex/gcam/StaticMetadata;I)V

    iget-object v2, v1, Lkmf;->b:Lkaf;

    iget v2, v2, Lkaf;->b:I

    invoke-virtual {v0, v2}, Lcom/google/googlex/gcam/StaticMetadata;->f(I)V

    iget-wide v2, v0, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    iget v1, v1, Lkmf;->a:I

    invoke-static {v1}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v1

    invoke-static {v2, v3, v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_raw_bits_per_pixel_set(JLcom/google/googlex/gcam/StaticMetadata;I)V

    iget-wide v1, v0, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    invoke-static {p0}, Lnsc;->c(Lkli;)J

    move-result-wide v3

    invoke-static {v3, v4}, Lnsc;->x(J)F

    move-result v3

    invoke-static {v1, v2, v0, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_frame_readout_time_ms_set(JLcom/google/googlex/gcam/StaticMetadata;F)V

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_OPTICAL_STABILIZATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p0, v1}, Lkli;->n(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    array-length v2, v1

    :goto_c
    if-ge v9, v2, :cond_14

    aget v3, v1, v9

    if-ne v3, v8, :cond_13

    iget-wide v3, v0, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    invoke-static {v3, v4, v0, v8}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_has_ois_set(JLcom/google/googlex/gcam/StaticMetadata;Z)V

    :cond_13
    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    :cond_14
    sget-object v1, Liva;->l:Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-eqz v1, :cond_15

    invoke-interface {p0, v1}, Lkli;->l(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    goto :goto_d

    :cond_15
    move-object p0, v7

    :goto_d
    if-eqz p0, :cond_17

    iget-wide v1, v0, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    invoke-static {v1, v2, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_dark_shading_data_get(JLcom/google/googlex/gcam/StaticMetadata;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_16

    goto :goto_e

    :cond_16
    new-instance v7, Lcom/google/googlex/gcam/DarkShadingData;

    invoke-direct {v7, v1, v2}, Lcom/google/googlex/gcam/DarkShadingData;-><init>(J)V

    :goto_e
    move-object v10, v7

    array-length v1, p0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-wide v8, v10, Lcom/google/googlex/gcam/DarkShadingData;->a:J

    new-instance p0, Lnrf;

    invoke-static {v1}, Lcom/google/googlex/gcam/BufferUtils;->a(Ljava/nio/Buffer;)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lnrf;-><init>(J)V

    invoke-static {p0}, Lnrf;->a(Lnrf;)J

    move-result-wide v11

    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    move-result p0

    int-to-long v13, p0

    invoke-static/range {v8 .. v14}, Lcom/google/googlex/gcam/GcamModuleJNI;->DarkShadingData_SetDarkShadingDataFromBytes(JLcom/google/googlex/gcam/DarkShadingData;JJ)Z

    move-result p0

    if-nez p0, :cond_17

    const-string p0, "2D BLC data size does not meet expected length or it is empty."

    invoke-static {p0}, Lcom/agc/Log;->w(Ljava/lang/Object;)I

    :cond_17
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getAnalogAndDigitalGain(Lkli;Lkou;)[F
    .locals 3

    sget-object v0, Liuy;->s:Landroid/hardware/camera2/CaptureResult$Key;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_1

    :cond_1
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v0}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    :goto_1
    const-string v0, "analogAndDigitalGain isoValue"

    invoke-static {v0, p1}, Lcom/agc/Log;->e(Ljava/lang/Object;F)I

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_SENSITIVITY_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p0, v0}, Lkli;->n(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const-string v2, "analogAndDigitalGain isoLowerValue"

    invoke-static {v2, v0}, Lcom/agc/Log;->e(Ljava/lang/Object;F)I

    sget-object v2, Liuz;->m:Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-eqz v2, :cond_2

    invoke-interface {p0, v2}, Lkli;->n(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result p0

    goto :goto_2

    :cond_3
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_MAX_ANALOG_SENSITIVITY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p0, v1}, Lkli;->n(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    :goto_2
    const-string v1, "analogAndDigitalGain isoMaxAnalogValue"

    invoke-static {v1, p0}, Lcom/agc/Log;->e(Ljava/lang/Object;F)I

    invoke-static {}, Lcom/agc/AdvancedSettings;->getSunlightFix()Z

    move-result v1

    if-eqz v1, :cond_4

    const/high16 v1, 0x42cc0000    # 102.0f

    cmpl-float v1, p1, v1

    if-lez v1, :cond_4

    const/high16 v1, 0x42f20000    # 121.0f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_4

    const/high16 p1, 0x42c80000    # 100.0f

    :cond_4
    cmpl-float v1, p1, p0

    const/high16 v2, 0x3f800000    # 1.0f

    if-lez v1, :cond_5

    div-float v0, p0, v0

    div-float/2addr p1, p0

    invoke-static {p1, v2}, Ljava/lang/Math;->max(FF)F

    move-result p0

    goto :goto_3

    :cond_5
    div-float v0, p1, v0

    move p0, v2

    :goto_3
    cmpg-float p1, v0, v2

    if-gez p1, :cond_6

    goto :goto_4

    :cond_6
    move v2, v0

    :goto_4
    const/4 p1, 0x2

    new-array p1, p1, [F

    const/4 v0, 0x0

    aput v2, p1, v0

    const/4 v0, 0x1

    aput p0, p1, v0

    const-string p0, "analogAndDigitalGain"

    invoke-static {p0, p1}, Lcom/agc/Log;->e(Ljava/lang/Object;[F)I

    return-object p1
.end method

.method public static getAnalogAndDigitalGain([F)[F
    .locals 3

    const/4 v0, 0x0

    aget v1, p0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const-string v1, "analogAndDigitalGain"

    invoke-static {v1, p0}, Lcom/agc/Log;->e(Ljava/lang/Object;[F)I

    aput v2, p0, v0

    :cond_0
    return-object p0
.end method

.method public static final getAwbInfoCaptured(Lkou;Lkli;)Lcom/google/googlex/gcam/AwbInfo;
    .locals 13

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_NEUTRAL_COLOR_POINT:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p0, v0}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Rational;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Landroid/util/Rational;->floatValue()F

    move-result v2

    sput v2, Lcom/ColorTune;->WB1:F

    const/4 v2, 0x1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/util/Rational;->floatValue()F

    move-result v3

    sput v3, Lcom/ColorTune;->WB2:F

    const/4 v3, 0x2

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/util/Rational;->floatValue()F

    move-result v0

    sput v0, Lcom/ColorTune;->WB3:F

    new-instance v0, Lcom/google/googlex/gcam/AwbInfo;

    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_AwbInfo__SWIG_0()J

    move-result-wide v4

    invoke-direct {v0, v4, v5, v2}, Lcom/google/googlex/gcam/AwbInfo;-><init>(JZ)V

    new-instance v9, Lcom/google/googlex/gcam/FloatArray4;

    invoke-direct {v9}, Lcom/google/googlex/gcam/FloatArray4;-><init>()V

    invoke-static {}, Lcom/agc/LensSettings;->needFixAWBGains()Z

    move-result v4

    const/4 v10, 0x3

    const/4 v11, 0x4

    const/high16 v12, 0x3f800000    # 1.0f

    if-eqz v4, :cond_1

    sget-object p1, Landroid/hardware/camera2/CaptureResult;->SENSOR_NEUTRAL_COLOR_POINT:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p0, p1}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/util/Rational;

    if-nez p1, :cond_0

    const-string p1, "CaptureResult missing COLOR_CORRECTION_GAINS FIX."

    invoke-static {p1}, Lcom/agc/Log;->w(Ljava/lang/Object;)I

    move p1, v1

    :goto_0
    if-ge p1, v11, :cond_3

    invoke-virtual {v9, p1, v12}, Lcom/google/googlex/gcam/FloatArray4;->d(IF)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    aget-object v4, p1, v1

    invoke-virtual {v4}, Landroid/util/Rational;->floatValue()F

    move-result v4

    div-float v4, v12, v4

    invoke-virtual {v9, v1, v4}, Lcom/google/googlex/gcam/FloatArray4;->d(IF)V

    invoke-virtual {v9, v2, v12}, Lcom/google/googlex/gcam/FloatArray4;->d(IF)V

    invoke-virtual {v9, v3, v12}, Lcom/google/googlex/gcam/FloatArray4;->d(IF)V

    aget-object p1, p1, v3

    invoke-virtual {p1}, Landroid/util/Rational;->floatValue()F

    move-result p1

    div-float p1, v12, p1

    invoke-virtual {v9, v10, p1}, Lcom/google/googlex/gcam/FloatArray4;->d(IF)V

    goto :goto_3

    :cond_1
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->COLOR_CORRECTION_GAINS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p0, v4}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/params/RggbChannelVector;

    if-nez v4, :cond_2

    const-string p1, "CaptureResult missing COLOR_CORRECTION_GAINS."

    invoke-static {p1}, Lcom/agc/Log;->w(Ljava/lang/Object;)I

    move p1, v1

    :goto_1
    if-ge p1, v11, :cond_3

    invoke-virtual {v9, p1, v12}, Lcom/google/googlex/gcam/FloatArray4;->d(IF)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_COLOR_FILTER_ARRANGEMENT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p1, v5}, Lkli;->n(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, LMetadataConverterUtil;->getEvenOddSourceIndicesForCfa(I)[I

    move-result-object p1

    move v5, v1

    :goto_2
    if-ge v5, v11, :cond_3

    aget v6, p1, v5

    invoke-virtual {v4, v6}, Landroid/hardware/camera2/params/RggbChannelVector;->getComponent(I)F

    move-result v6

    invoke-virtual {v9, v5, v6}, Lcom/google/googlex/gcam/FloatArray4;->d(IF)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    iget-wide v4, v0, Lcom/google/googlex/gcam/AwbInfo;->a:J

    iget-wide v7, v9, Lcom/google/googlex/gcam/FloatArray4;->a:J

    move-object v6, v0

    invoke-static/range {v4 .. v9}, Lcom/google/googlex/gcam/GcamModuleJNI;->AwbInfo_rggb_gains_set(JLcom/google/googlex/gcam/AwbInfo;JLcom/google/googlex/gcam/FloatArray4;)V

    sget-object p1, Landroid/hardware/camera2/CaptureResult;->COLOR_CORRECTION_TRANSFORM:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p0, p1}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/params/ColorSpaceTransform;

    if-nez p1, :cond_4

    const-string p1, "CaptureResult missing COLOR_CORRECTION_TRANSFORM."

    invoke-static {p1}, Lcom/agc/Log;->w(Ljava/lang/Object;)I

    new-instance p1, Lcom/google/googlex/gcam/FloatArray9;

    invoke-direct {p1}, Lcom/google/googlex/gcam/FloatArray9;-><init>()V

    invoke-virtual {p1, v1, v12}, Lcom/google/googlex/gcam/FloatArray9;->b(IF)V

    const/4 v1, 0x0

    invoke-virtual {p1, v2, v1}, Lcom/google/googlex/gcam/FloatArray9;->b(IF)V

    invoke-virtual {p1, v3, v1}, Lcom/google/googlex/gcam/FloatArray9;->b(IF)V

    invoke-virtual {p1, v10, v1}, Lcom/google/googlex/gcam/FloatArray9;->b(IF)V

    invoke-virtual {p1, v11, v12}, Lcom/google/googlex/gcam/FloatArray9;->b(IF)V

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v1}, Lcom/google/googlex/gcam/FloatArray9;->b(IF)V

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v1}, Lcom/google/googlex/gcam/FloatArray9;->b(IF)V

    const/4 v2, 0x7

    invoke-virtual {p1, v2, v1}, Lcom/google/googlex/gcam/FloatArray9;->b(IF)V

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v12}, Lcom/google/googlex/gcam/FloatArray9;->b(IF)V

    goto :goto_4

    :cond_4
    invoke-static {p1}, LMetadataConverterUtil;->convertToFloatArray(Landroid/hardware/camera2/params/ColorSpaceTransform;)Lcom/google/googlex/gcam/FloatArray9;

    move-result-object p1

    :goto_4
    invoke-static {p1, p0}, LMetadataConverterUtil;->getPseudoCT(Lcom/google/googlex/gcam/FloatArray9;Lkou;)Lcom/google/googlex/gcam/FloatArray9;

    move-result-object v9

    iget-wide v4, v0, Lcom/google/googlex/gcam/AwbInfo;->a:J

    iget-wide v7, v9, Lcom/google/googlex/gcam/FloatArray9;->a:J

    move-object v6, v0

    invoke-static/range {v4 .. v9}, Lcom/google/googlex/gcam/GcamModuleJNI;->AwbInfo_rgb2rgb_set(JLcom/google/googlex/gcam/AwbInfo;JLcom/google/googlex/gcam/FloatArray9;)V

    return-object v0
.end method

.method public static getEvenOddSourceIndicesForCfa(I)[I
    .locals 2

    const/4 v0, 0x4

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    const/4 v1, 0x3

    if-eq p0, v1, :cond_2

    if-eq p0, v0, :cond_2

    const/4 v1, 0x5

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "CameraCharacteristics: unsupported colorFilterArrangment"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    new-array p0, v0, [I

    fill-array-data p0, :array_0

    return-object p0

    :cond_3
    :goto_1
    new-array p0, v0, [I

    fill-array-data p0, :array_1

    return-object p0

    nop

    :array_0
    .array-data 4
        0x0
        0x2
        0x1
        0x3
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data
.end method

.method public static getGcamRawFormat(Lkli;)Lkmf;
    .locals 7

    invoke-static {}, Lagc/Agc;->isSamsungFix()Z

    move-result v0

    const/16 v1, 0x20

    if-eqz v0, :cond_0

    const/16 v0, 0x23

    move v6, v1

    move v1, v0

    move v0, v6

    goto :goto_0

    :cond_0
    const/16 v0, 0x26

    :goto_0
    const/16 v2, 0x25

    invoke-interface {p0, v2}, Lkli;->x(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {p0, v0}, Lkli;->x(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {p0, v1}, Lkli;->x(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    new-instance p0, Lkmf;

    invoke-static {v3}, Lkba;->f(Ljava/util/List;)Lkaf;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lkmf;-><init>(ILkaf;)V

    return-object p0

    :cond_1
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance p0, Lkmf;

    invoke-static {v4}, Lkba;->f(Ljava/util/List;)Lkaf;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lkmf;-><init>(ILkaf;)V

    return-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lkmf;

    invoke-static {p0}, Lkba;->f(Ljava/util/List;)Lkaf;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lkmf;-><init>(ILkaf;)V

    return-object v0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "No HDR+ compatible raw format supported."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getPhysicalCharacteristics(Lkli;Lklj;Lkou;Lkll;)Lkli;
    .locals 5

    invoke-interface {p0}, Lkli;->B()Ljava/util/Set;

    move-result-object v0

    if-eqz p3, :cond_0

    invoke-interface {v0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, p3}, Lklj;->a(Lkll;)Lkli;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lkli;->M()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {p0}, Lkli;->D()Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_5

    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_2

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkll;

    :goto_0
    invoke-interface {p1, p0}, Lklj;->a(Lkll;)Lkli;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-interface {p2}, Lkou;->g()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_4

    move-object p2, p0

    check-cast p2, Lmyz;

    iget p2, p2, Lmyz;->c:I

    if-ne p2, v1, :cond_3

    move-object p2, p0

    check-cast p2, Lmwa;

    invoke-virtual {p2}, Lmwa;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-static {p2}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p2

    invoke-interface {p2}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object p2

    invoke-virtual {p2}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkoq;

    invoke-interface {p2}, Lkoq;->e()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_3
    move-object p2, v3

    goto :goto_1

    :cond_4
    invoke-interface {p2}, Lkou;->e()Ljava/lang/String;

    move-result-object p2

    :goto_1
    if-eqz p2, :cond_6

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkll;

    iget-object p3, p0, Lkll;->a:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p1, p0}, Lklj;->a(Lkll;)Lkli;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-interface {p1, p2}, Lklj;->d(Ljava/lang/String;)Lkll;

    move-result-object p0

    goto :goto_0

    :cond_6
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_9

    if-eqz p3, :cond_8

    iget-object p2, p3, Lkll;->a:Ljava/lang/String;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkoq;

    if-nez p2, :cond_7

    goto :goto_2

    :cond_7
    sget-object p0, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p2, p0}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_3

    :cond_8
    :goto_2
    move-object p2, p0

    check-cast p2, Lmyz;

    iget p2, p2, Lmyz;->c:I

    if-ne p2, v1, :cond_9

    check-cast p0, Lmwa;

    invoke-virtual {p0}, Lmwa;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-static {p0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkoq;

    sget-object p2, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p0, p2}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    :goto_3
    move-object v3, p0

    check-cast v3, Ljava/lang/Float;

    :cond_9
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkll;

    invoke-interface {p1, p2}, Lklj;->a(Lkll;)Lkli;

    move-result-object p2

    invoke-interface {p2}, Lkli;->r()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    move v0, v2

    :goto_4
    const-string v4, "Physical cameras must have single focal length."

    invoke-static {v0, v4}, Lmoz;->f(ZLjava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    cmpl-float p3, v0, p3

    if-nez p3, :cond_a

    return-object p2

    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Physical camera with matching focal length not found."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    :goto_5
    return-object p0
.end method

.method public static getPseudoCT(Lcom/google/googlex/gcam/FloatArray9;Lkou;)Lcom/google/googlex/gcam/FloatArray9;
    .locals 6

    const/16 v0, 0x9

    new-array v1, v0, [F

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    iget-wide v4, p0, Lcom/google/googlex/gcam/FloatArray9;->a:J

    invoke-static {v4, v5, p0, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->FloatArray9_get(JLcom/google/googlex/gcam/FloatArray9;I)F

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    sget-object v3, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v3}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v1, p1}, Lcom/agc/ColorTransform;->ColorTransformSelector([FI)V

    move p1, v2

    :goto_1
    if-ge p1, v0, :cond_1

    invoke-static {p1}, Lagc/Agc;->computeColorTransformEntryVal(I)F

    move-result v3

    aput v3, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lcom/ColorTune;->AutoCT([F)[F

    move-result-object p1

    :goto_2
    if-ge v2, v0, :cond_2

    aget v1, p1, v2

    invoke-virtual {p0, v2, v1}, Lcom/google/googlex/gcam/FloatArray9;->b(IF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-object p0
.end method
