.class public LHdrPlusSessionImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lkaf;

.field public static final c:Lkaf;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x780

    const/16 v1, 0x438

    invoke-static {v0, v1}, Lkaf;->h(II)Lkaf;

    move-result-object v1

    sput-object v1, LHdrPlusSessionImpl;->b:Lkaf;

    const/16 v1, 0x5a0

    invoke-static {v0, v1}, Lkaf;->h(II)Lkaf;

    move-result-object v0

    sput-object v0, LHdrPlusSessionImpl;->c:Lkaf;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static startShotCaptureInternal(Lech;FILgcc;IZZZLmqp;ZZZIJLega;Lkou;)Lcom/google/googlex/gcam/ShotParams;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p4

    move-wide/from16 v2, p13

    move-object/from16 v4, p15

    iget-object v5, v0, Lech;->d:Lkbc;

    const-string v6, "createShotParams"

    invoke-interface {v5, v6}, Lkbc;->e(Ljava/lang/String;)V

    new-instance v5, Lcom/google/googlex/gcam/ShotParams;

    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_ShotParams__SWIG_0()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Lcom/google/googlex/gcam/ShotParams;-><init>(J)V

    iget-object v6, v0, Lech;->d:Lkbc;

    const-string v7, "setup"

    invoke-interface {v6, v7}, Lkbc;->e(Ljava/lang/String;)V

    iget-wide v6, v5, Lcom/google/googlex/gcam/ShotParams;->a:J

    move/from16 v8, p5

    invoke-static {v6, v7, v5, v8}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_zsl_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    iget-wide v6, v5, Lcom/google/googlex/gcam/ShotParams;->a:J

    move/from16 v8, p6

    invoke-static {v6, v7, v5, v8}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_save_merged_dng_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    iget-wide v6, v5, Lcom/google/googlex/gcam/ShotParams;->a:J

    const/4 v13, 0x1

    invoke-static {v13}, Lcom/agc/AdvancedSettings;->getCompressMergedDNG(Z)Z

    move-result v8

    invoke-static {v6, v7, v5, v8}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_compress_merged_dng_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    iget-wide v6, v5, Lcom/google/googlex/gcam/ShotParams;->a:J

    move/from16 v8, p7

    invoke-static {v6, v7, v5, v8}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_allow_base_frame_reuse_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    iget-wide v6, v5, Lcom/google/googlex/gcam/ShotParams;->a:J

    invoke-static/range {p2 .. p2}, Lnsy;->i(I)Lnqp;

    move-result-object v8

    iget v8, v8, Lnqp;->j:I

    invoke-static {v6, v7, v5, v8}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_image_rotation_set(JLcom/google/googlex/gcam/ShotParams;I)V

    iget-object v6, v0, Lech;->s:Lkli;

    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_TIMESTAMP_SOURCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v6, v7, v15}, Lkli;->m(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-wide/16 v7, 0x0

    if-ne v6, v13, :cond_0

    invoke-virtual/range {p8 .. p8}, Lmqp;->g()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual/range {p8 .. p8}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lhke;

    invoke-virtual {v6}, Lhke;->c()J

    move-result-wide v9

    cmp-long v6, v9, v7

    if-lez v6, :cond_0

    invoke-virtual/range {p8 .. p8}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lhke;

    invoke-virtual {v6}, Lhke;->d()J

    move-result-wide v9

    cmp-long v6, v9, v7

    if-lez v6, :cond_0

    iget-wide v9, v5, Lcom/google/googlex/gcam/ShotParams;->a:J

    invoke-virtual/range {p8 .. p8}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lhke;

    invoke-virtual {v6}, Lhke;->c()J

    move-result-wide v11

    invoke-static {v9, v10, v5, v11, v12}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_shutter_press_down_timestamp_ns_set(JLcom/google/googlex/gcam/ShotParams;J)V

    iget-wide v9, v5, Lcom/google/googlex/gcam/ShotParams;->a:J

    invoke-virtual/range {p8 .. p8}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lhke;

    invoke-virtual {v6}, Lhke;->d()J

    move-result-wide v11

    invoke-static {v9, v10, v5, v11, v12}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_shutter_press_up_timestamp_ns_set(JLcom/google/googlex/gcam/ShotParams;J)V

    :cond_0
    cmp-long v6, v2, v7

    if-lez v6, :cond_1

    iget-wide v6, v5, Lcom/google/googlex/gcam/ShotParams;->a:J

    invoke-static {v6, v7, v5, v2, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_metering_frame_timestamp_ns_set(JLcom/google/googlex/gcam/ShotParams;J)V

    :cond_1
    iget-object v2, v0, Lech;->d:Lkbc;

    const-string v3, "createAeShotParams"

    invoke-interface {v2, v3}, Lkbc;->g(Ljava/lang/String;)V

    move/from16 v2, p1

    move/from16 v3, p9

    invoke-virtual {v0, v2, v3}, Lech;->J(FZ)Lcom/google/googlex/gcam/AeShotParams;

    move-result-object v12

    iget-wide v7, v5, Lcom/google/googlex/gcam/ShotParams;->a:J

    iget-wide v10, v12, Lcom/google/googlex/gcam/AeShotParams;->a:J

    move-object v9, v5

    invoke-static/range {v7 .. v12}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_ae_set(JLcom/google/googlex/gcam/ShotParams;JLcom/google/googlex/gcam/AeShotParams;)V

    iget-object v2, v0, Lech;->d:Lkbc;

    const-string v6, "portraitRelighting"

    invoke-interface {v2, v6}, Lkbc;->g(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/google/googlex/gcam/ShotParams;->a()Lcom/google/googlex/gcam/AeShotParams;

    move-result-object v2

    iget-object v6, v0, Lech;->K:Lgpb;

    iget-object v7, v0, Lech;->o:Lecy;

    sget-object v8, Lecy;->b:Lecy;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-interface {v6, v7}, Lgpb;->e(Z)Z

    move-result v6

    invoke-virtual {v2, v6}, Lcom/google/googlex/gcam/AeShotParams;->h(Z)V

    iget-object v2, v0, Lech;->d:Lkbc;

    const-string v6, "profile"

    invoke-interface {v2, v6}, Lkbc;->g(Ljava/lang/String;)V

    iget-object v2, v0, Lech;->l:Ldhi;

    iget-object v6, v0, Lech;->d:Lkbc;

    const-string v7, "flash"

    invoke-interface {v6, v7}, Lkbc;->g(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/4 v7, 0x2

    if-eqz v6, :cond_3

    if-eq v6, v7, :cond_2

    sget-object v6, Lnqm;->c:Lnqm;

    goto :goto_0

    :cond_2
    sget-object v6, Lnqm;->b:Lnqm;

    goto :goto_0

    :cond_3
    sget-object v6, Lnqm;->a:Lnqm;

    :goto_0
    iget-wide v8, v5, Lcom/google/googlex/gcam/ShotParams;->a:J

    iget v6, v6, Lnqm;->d:I

    invoke-static {v8, v9, v5, v6}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_flash_mode_set(JLcom/google/googlex/gcam/ShotParams;I)V

    iget-object v6, v0, Lech;->d:Lkbc;

    const-string v8, "wbSource"

    invoke-interface {v6, v8}, Lkbc;->g(Ljava/lang/String;)V

    iget-object v6, v0, Lech;->o:Lecy;

    sget-object v8, Lecy;->c:Lecy;

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    move v3, v13

    :goto_1
    const/4 v6, 0x4

    new-array v6, v6, [I

    fill-array-data v6, :array_0

    sget-object v8, Ldhq;->b:Ldhk;

    invoke-interface {v2, v8}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget v6, v6, v8

    if-eqz v6, :cond_9

    sub-int/2addr v6, v13

    if-eqz v6, :cond_7

    if-eq v6, v13, :cond_6

    if-eq v6, v7, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v5, v14}, Lcom/google/googlex/gcam/ShotParams;->d(Z)V

    goto :goto_3

    :cond_6
    invoke-virtual {v5, v13}, Lcom/google/googlex/gcam/ShotParams;->d(Z)V

    goto :goto_3

    :cond_7
    if-eqz v3, :cond_8

    if-nez p11, :cond_8

    move v6, v13

    goto :goto_2

    :cond_8
    move v6, v14

    :goto_2
    invoke-virtual {v5, v6}, Lcom/google/googlex/gcam/ShotParams;->d(Z)V

    :cond_9
    :goto_3
    iget-wide v6, v5, Lcom/google/googlex/gcam/ShotParams;->a:J

    const-string v8, "pref_awb_switch_key"

    invoke-static {v8, v14}, Lcom/Utils/Pref;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v8

    invoke-static {v6, v7, v5, v8}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_recompute_wb_on_base_frame_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    iget-object v6, v0, Lech;->i:Lcom/google/googlex/gcam/Gcam;

    invoke-virtual {v6, v1}, Lcom/google/googlex/gcam/Gcam;->b(I)Lcom/google/googlex/gcam/StaticMetadata;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/googlex/gcam/StaticMetadata;->d()Lnrg;

    move-result-object v7

    sget-object v8, Lhna;->d:Lhna;

    invoke-virtual {v0, v8, v4}, Lech;->O(Lhna;Lega;)Z

    move-result v8

    if-eqz v8, :cond_a

    sget-object v8, Lnrg;->d:Lnrg;

    if-ne v7, v8, :cond_a

    sget-object v8, Lnre;->b:Lnre;

    goto :goto_4

    :cond_a
    iget-object v8, v0, Lech;->l:Ldhi;

    sget-object v9, Ldhq;->O:Ldhj;

    invoke-interface {v8, v9}, Ldhi;->l(Ldhj;)Z

    move-result v8

    if-eqz v8, :cond_b

    sget-object v8, Lnre;->c:Lnre;

    :goto_4
    invoke-virtual {v5, v8}, Lcom/google/googlex/gcam/ShotParams;->e(Lnre;)V

    :cond_b
    sget-object v8, Ldhq;->u:Ldhk;

    invoke-interface {v2, v8}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v8

    new-instance v9, Ldcc;

    const/4 v10, 0x6

    invoke-direct {v9, v5, v10}, Ldcc;-><init>(Lcom/google/googlex/gcam/ShotParams;I)V

    invoke-virtual {v8, v9}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v8, v0, Lech;->d:Lkbc;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sabre use cam:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1}, Lkbc;->g(Ljava/lang/String;)V

    iget-object v1, v0, Lech;->E:Ljvs;

    invoke-interface {v1}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v8, v0, Lech;->l:Ldhi;

    sget-object v9, Ldhq;->R:Ldhj;

    invoke-interface {v8, v9}, Ldhi;->l(Ldhj;)Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-virtual {v6}, Lcom/google/googlex/gcam/StaticMetadata;->c()Lcom/google/googlex/gcam/PixelRect;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/googlex/gcam/PixelRect;->d()I

    move-result v9

    invoke-virtual {v6}, Lcom/google/googlex/gcam/StaticMetadata;->c()Lcom/google/googlex/gcam/PixelRect;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/googlex/gcam/PixelRect;->c()I

    move-result v6

    mul-int/2addr v9, v6

    int-to-float v6, v9

    move/from16 v9, p12

    int-to-float v9, v9

    div-float/2addr v6, v9

    const/high16 v9, 0x40100000    # 2.25f

    cmpl-float v6, v6, v9

    if-ltz v6, :cond_c

    move v6, v13

    goto :goto_5

    :cond_c
    move v6, v14

    :goto_5
    iget-object v9, v0, Lech;->l:Ldhi;

    sget-object v10, Ldhq;->T:Ldhj;

    invoke-interface {v9, v10}, Ldhi;->l(Ldhj;)Z

    move-result v9

    sget-object v10, Lnrg;->e:Lnrg;

    if-ne v7, v10, :cond_d

    move v7, v13

    goto :goto_6

    :cond_d
    move v7, v14

    :goto_6
    iget-object v10, v0, Lech;->l:Ldhi;

    sget-object v11, Ldhq;->Q:Ldhj;

    invoke-interface {v10, v11}, Ldhi;->l(Ldhj;)Z

    move-result v10

    if-eqz v10, :cond_f

    iget-object v10, v0, Lech;->o:Lecy;

    sget-object v11, Lecy;->b:Lecy;

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_f

    const v10, 0x3f99999a    # 1.2f

    cmpl-float v1, v1, v10

    if-gez v1, :cond_e

    if-eqz v7, :cond_f

    if-eqz v9, :cond_f

    :cond_e
    if-nez v8, :cond_f

    move v1, v13

    goto :goto_7

    :cond_f
    move v1, v14

    :goto_7
    iget-object v7, v0, Lech;->l:Ldhi;

    sget-object v8, Ldhq;->S:Ldhj;

    invoke-interface {v7, v8}, Ldhi;->l(Ldhj;)Z

    move-result v7

    if-eqz v7, :cond_10

    iget-wide v7, v5, Lcom/google/googlex/gcam/ShotParams;->a:J

    sget-object v9, Lnqw;->a:Lnqw;

    iget v9, v9, Lnqw;->b:I

    invoke-static {v7, v8, v5, v9}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_merge_method_override_set(JLcom/google/googlex/gcam/ShotParams;I)V

    :cond_10
    iget-wide v7, v5, Lcom/google/googlex/gcam/ShotParams;->a:J

    invoke-static {v7, v8, v5, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_allow_sabre_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    iget-wide v7, v5, Lcom/google/googlex/gcam/ShotParams;->a:J

    invoke-static {v7, v8, v5, v6}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_allow_spatial_rgb_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    invoke-static {v5}, LAGC;->mergeSetting(Lcom/google/googlex/gcam/ShotParams;)V

    iget-object v1, v0, Lech;->d:Lkbc;

    const-string v6, "shasta"

    invoke-interface {v1, v6}, Lkbc;->g(Ljava/lang/String;)V

    iget-object v1, v0, Lech;->o:Lecy;

    sget-object v6, Lecy;->a:Lecy;

    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, v0, Lech;->l:Ldhi;

    sget-object v6, Ldhq;->L:Ldhj;

    :goto_8
    invoke-interface {v1, v6}, Ldhi;->l(Ldhj;)Z

    move-result v1

    goto :goto_9

    :cond_11
    if-eqz v3, :cond_12

    iget-object v1, v0, Lech;->l:Ldhi;

    sget-object v6, Ldhq;->K:Ldhj;

    goto :goto_8

    :cond_12
    iget-object v1, v0, Lech;->o:Lecy;

    sget-object v6, Lecy;->b:Lecy;

    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, v0, Lech;->l:Ldhi;

    sget-object v6, Ldib;->F:Ldhj;

    goto :goto_8

    :cond_13
    move v1, v14

    :goto_9
    invoke-virtual {v5, v1}, Lcom/google/googlex/gcam/ShotParams;->f(Z)V

    sget-object v6, Ldhq;->M:Ldhj;

    invoke-interface {v2, v6}, Ldhi;->h(Ldhj;)Lj$/util/Optional;

    move-result-object v6

    new-instance v7, Ldcc;

    const/4 v8, 0x7

    invoke-direct {v7, v5, v8}, Ldcc;-><init>(Lcom/google/googlex/gcam/ShotParams;I)V

    invoke-virtual {v6, v7}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-wide v6, v5, Lcom/google/googlex/gcam/ShotParams;->a:J

    invoke-static {v6, v7, v5, v14}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_shasta_force_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    if-eqz v3, :cond_17

    iget-object v3, v0, Lech;->d:Lkbc;

    const-string v6, "nightSight"

    invoke-interface {v3, v6}, Lkbc;->g(Ljava/lang/String;)V

    iget-wide v6, v5, Lcom/google/googlex/gcam/ShotParams;->a:J

    invoke-static {v6, v7, v5, v13}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_motion_ef_enabled_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    iget-object v3, v0, Lech;->k:Lebi;

    iget-boolean v3, v3, Lebi;->f:Z

    if-eqz v3, :cond_16

    iget-object v3, v0, Lech;->C:Lebl;

    invoke-virtual {v3}, Lebl;->k()Z

    move-result v3

    if-eqz v3, :cond_16

    iget-object v3, v0, Lech;->s:Lkli;

    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {v3, v6}, Lkli;->l(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v13, :cond_16

    iget-wide v6, v5, Lcom/google/googlex/gcam/ShotParams;->a:J

    invoke-static {v6, v7, v5, v13}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_device_is_on_tripod_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    if-eqz p10, :cond_15

    iget-wide v6, v5, Lcom/google/googlex/gcam/ShotParams;->a:J

    invoke-static {v6, v7, v5, v13}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_downsample_by_2_before_merge_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    sget-object v3, Ljzr;->b:Ljzr;

    iget-object v6, v0, Lech;->t:Lkaf;

    invoke-static {v6}, Ljzr;->j(Lkaf;)Ljzr;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljzr;->m(Ljzr;)Z

    move-result v3

    if-eqz v3, :cond_14

    sget-object v3, LHdrPlusSessionImpl;->b:Lkaf;

    goto :goto_a

    :cond_14
    sget-object v3, LHdrPlusSessionImpl;->c:Lkaf;

    :goto_a
    invoke-virtual {v5}, Lcom/google/googlex/gcam/ShotParams;->a()Lcom/google/googlex/gcam/AeShotParams;

    move-result-object v6

    iget v7, v3, Lkaf;->a:I

    invoke-virtual {v6, v7}, Lcom/google/googlex/gcam/AeShotParams;->j(I)V

    invoke-virtual {v5}, Lcom/google/googlex/gcam/ShotParams;->a()Lcom/google/googlex/gcam/AeShotParams;

    move-result-object v6

    iget v3, v3, Lkaf;->b:I

    invoke-virtual {v6, v3}, Lcom/google/googlex/gcam/AeShotParams;->i(I)V

    :cond_15
    iget-wide v6, v5, Lcom/google/googlex/gcam/ShotParams;->a:J

    invoke-static {v6, v7, v5, v14}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_shasta_enabled_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    :cond_16
    sget-object v3, Ldhq;->c:Ldhk;

    invoke-interface {v2, v3}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v3

    invoke-virtual {v3}, Lj$/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_17

    sget-object v3, Ldhq;->c:Ldhk;

    invoke-interface {v2, v3}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v3

    invoke-virtual {v3}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_17

    iget-object v3, v0, Lech;->d:Lkbc;

    const-string v6, "psaf"

    invoke-interface {v3, v6}, Lkbc;->g(Ljava/lang/String;)V

    iget-wide v6, v5, Lcom/google/googlex/gcam/ShotParams;->a:J

    sget-object v3, Ldhq;->c:Ldhk;

    invoke-interface {v2, v3}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v3

    invoke-virtual {v3, v15}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v6, v7, v5, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_psaf_frame_count_set(JLcom/google/googlex/gcam/ShotParams;I)V

    sget-object v3, Ldhq;->E:Ldhj;

    invoke-interface {v2, v3}, Ldhi;->h(Ldhj;)Lj$/util/Optional;

    move-result-object v3

    new-instance v6, Ldcc;

    const/16 v7, 0x8

    invoke-direct {v6, v5, v7}, Ldcc;-><init>(Lcom/google/googlex/gcam/ShotParams;I)V

    invoke-virtual {v3, v6}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    sget-object v3, Ldhq;->F:Ldhj;

    invoke-interface {v2, v3}, Ldhi;->h(Ldhj;)Lj$/util/Optional;

    move-result-object v3

    new-instance v6, Ldcc;

    const/16 v7, 0x9

    invoke-direct {v6, v5, v7}, Ldcc;-><init>(Lcom/google/googlex/gcam/ShotParams;I)V

    invoke-virtual {v3, v6}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_17
    move-object/from16 v3, p16

    invoke-static {v3, v5, v1}, LAGC;->setShasta(Lkou;Lcom/google/googlex/gcam/ShotParams;Z)V

    iget-object v1, v0, Lech;->l:Ldhi;

    sget-object v3, Ldhg;->n:Ldhj;

    invoke-interface {v1, v3}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_18

    sget-object v1, Lhna;->c:Lhna;

    invoke-virtual {v0, v1, v4}, Lech;->O(Lhna;Lega;)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-wide v3, v5, Lcom/google/googlex/gcam/ShotParams;->a:J

    invoke-static {v3, v4, v5, v14}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_gpu_power_boost_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    sget-object v1, Ldhq;->ax:Ldhj;

    invoke-interface {v2, v1}, Ldhi;->h(Ldhj;)Lj$/util/Optional;

    move-result-object v1

    new-instance v3, Ldcc;

    const/16 v4, 0xa

    invoke-direct {v3, v5, v4}, Ldcc;-><init>(Lcom/google/googlex/gcam/ShotParams;I)V

    invoke-virtual {v1, v3}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    sget-object v1, Ldhq;->ay:Ldhj;

    invoke-interface {v2, v1}, Ldhi;->h(Ldhj;)Lj$/util/Optional;

    move-result-object v1

    new-instance v3, Ldcc;

    const/16 v4, 0xb

    invoke-direct {v3, v5, v4}, Ldcc;-><init>(Lcom/google/googlex/gcam/ShotParams;I)V

    invoke-virtual {v1, v3}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    sget-object v1, Ldhq;->az:Ldhj;

    invoke-interface {v2, v1}, Ldhi;->h(Ldhj;)Lj$/util/Optional;

    move-result-object v1

    new-instance v3, Ldcc;

    const/16 v4, 0xc

    invoke-direct {v3, v5, v4}, Ldcc;-><init>(Lcom/google/googlex/gcam/ShotParams;I)V

    invoke-virtual {v1, v3}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_18
    iget-object v1, v0, Lech;->d:Lkbc;

    const-string v3, "finalize"

    invoke-interface {v1, v3}, Lkbc;->g(Ljava/lang/String;)V

    iget-wide v3, v5, Lcom/google/googlex/gcam/ShotParams;->a:J

    sget-object v1, Ldhq;->A:Ldhj;

    invoke-interface {v2, v1}, Ldhi;->l(Ldhj;)Z

    move-result v1

    invoke-static {v3, v4, v5, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_optimize_sky_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    iget-wide v3, v5, Lcom/google/googlex/gcam/ShotParams;->a:J

    sget-object v1, Ldhq;->aa:Ldhj;

    invoke-interface {v2, v1}, Ldhi;->l(Ldhj;)Z

    move-result v1

    invoke-static {v3, v4, v5, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_nonzsl_extended_base_frame_selection_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    iget-wide v1, v5, Lcom/google/googlex/gcam/ShotParams;->a:J

    iget-object v3, v0, Lech;->l:Ldhi;

    sget-object v4, Ldhq;->C:Ldhj;

    invoke-interface {v3, v4}, Ldhi;->l(Ldhj;)Z

    move-result v3

    invoke-static {v1, v2, v5, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_rerun_face_detection_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    iget-wide v1, v5, Lcom/google/googlex/gcam/ShotParams;->a:J

    iget-object v0, v0, Lech;->l:Ldhi;

    sget-object v3, Ldhq;->aD:Ldhj;

    invoke-interface {v0, v3}, Ldhi;->l(Ldhj;)Z

    move-result v0

    invoke-static {v1, v2, v5, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_walnut_enabled_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    return-object v5

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
    .end array-data
.end method
