.class public final Lech;
.super Ljava/lang/Object;
.source "HdrPlusSessionImpl.java"

# interfaces
.implements Lecd;


# static fields
.field public static final b:Lkaf;

.field public static final c:Lkaf;

.field private static final e:Lnak;


# instance fields
.field private final A:Lebj;

.field private final B:Lebe;

.field public final C:Lebl;

.field private final D:Lecb;

.field public final E:Ljvs;

.field private final F:Lfue;

.field private final G:Lebv;

.field private final H:Ljava/util/concurrent/Executor;

.field private final I:Lgsp;

.field private final J:Leeh;

.field public final K:Lgpb;

.field private final L:Lkog;

.field private final M:Limq;

.field private final N:Ljvs;

.field public final O:Lklj;

.field private final P:Lgcb;

.field private final Q:Leao;

.field private final R:Lhnb;

.field private final S:Ldne;

.field private final T:Ligo;

.field private final U:Lbkc;

.field private final V:Lcvr;

.field private final W:Lcvr;

.field public final d:Lkbc;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Lmwa;

.field public final i:Lcom/google/googlex/gcam/Gcam;

.field private final j:Lnrz;

.field public final k:Lebi;

.field public final l:Ldhi;

.field private final m:Loiw;

.field private final n:Ljvs;

.field public final o:Lecy;

.field private final p:Landroid/util/DisplayMetrics;

.field private final q:Lnsc;

.field private final r:Lnsb;

.field public final s:Lkli;

.field public final t:Lkaf;

.field private final u:Loiw;

.field private final v:Ljuf;

.field private final w:Lfui;

.field private final x:Loiw;

.field private y:Ljava/lang/String;

.field private final z:Ldin;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "com/google/android/apps/camera/hdrplus/HdrPlusSessionImpl"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lech;->e:Lnak;

    const/16 v0, 0x438

    const/16 v1, 0x780

    invoke-static {v1, v0}, Lkaf;->h(II)Lkaf;

    move-result-object v0

    sput-object v0, Lech;->b:Lkaf;

    const/16 v0, 0x5a0

    invoke-static {v1, v0}, Lkaf;->h(II)Lkaf;

    move-result-object v0

    sput-object v0, Lech;->c:Lkaf;

    return-void
.end method

.method public constructor <init>(Landroid/util/DisplayMetrics;Lebi;Lbkc;Lnsc;Lnsb;Lkli;Ldqx;Lgdd;Lcom/google/googlex/gcam/Gcam;Lnrz;Leeh;Loiw;Ldhi;Loiw;Ljuf;Lfui;Lecy;Loiw;Ligo;Ldin;Ldne;Lebj;Lebe;Lebl;Lecb;Ljvs;Lkbc;Lfue;Lcvr;Lebv;Ljava/util/concurrent/Executor;Lgsp;Lgpb;Lkog;Lcvr;Limq;Ljvs;Lklj;Lgcb;Leao;Ljvs;Lhnb;[B[B[B[B[B)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p9

    move-object/from16 v3, p11

    move-object/from16 v4, p13

    move-object/from16 v5, p15

    move-object/from16 v6, p17

    move-object/from16 v7, p24

    move-object/from16 v8, p31

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v9, p1

    iput-object v9, v0, Lech;->p:Landroid/util/DisplayMetrics;

    iput-object v1, v0, Lech;->k:Lebi;

    move-object/from16 v9, p3

    iput-object v9, v0, Lech;->U:Lbkc;

    move-object/from16 v9, p4

    iput-object v9, v0, Lech;->q:Lnsc;

    move-object/from16 v9, p5

    iput-object v9, v0, Lech;->r:Lnsb;

    move-object/from16 v9, p6

    iput-object v9, v0, Lech;->s:Lkli;

    iput-object v2, v0, Lech;->i:Lcom/google/googlex/gcam/Gcam;

    move-object/from16 v9, p10

    iput-object v9, v0, Lech;->j:Lnrz;

    move-object/from16 v9, p7

    iget-object v9, v9, Ldqx;->c:Ljava/lang/Object;

    iput-object v9, v0, Lech;->n:Ljvs;

    iput-object v4, v0, Lech;->l:Ldhi;

    move-object/from16 v9, p14

    iput-object v9, v0, Lech;->m:Loiw;

    iput-object v5, v0, Lech;->v:Ljuf;

    move-object/from16 v9, p16

    iput-object v9, v0, Lech;->w:Lfui;

    iput-object v6, v0, Lech;->o:Lecy;

    move-object/from16 v9, p18

    iput-object v9, v0, Lech;->x:Loiw;

    move-object/from16 v9, p19

    iput-object v9, v0, Lech;->T:Ligo;

    move-object/from16 v9, p20

    iput-object v9, v0, Lech;->z:Ldin;

    move-object/from16 v9, p21

    iput-object v9, v0, Lech;->S:Ldne;

    move-object/from16 v9, p22

    iput-object v9, v0, Lech;->A:Lebj;

    move-object/from16 v9, p23

    iput-object v9, v0, Lech;->B:Lebe;

    move-object/from16 v9, p26

    iput-object v9, v0, Lech;->E:Ljvs;

    iput-object v7, v0, Lech;->C:Lebl;

    move-object/from16 v9, p25

    iput-object v9, v0, Lech;->D:Lecb;

    move-object/from16 v9, p28

    iput-object v9, v0, Lech;->F:Lfue;

    move-object/from16 v9, p29

    iput-object v9, v0, Lech;->W:Lcvr;

    move-object/from16 v9, p30

    iput-object v9, v0, Lech;->G:Lebv;

    iput-object v8, v0, Lech;->H:Ljava/util/concurrent/Executor;

    move-object/from16 v9, p32

    iput-object v9, v0, Lech;->I:Lgsp;

    move-object/from16 v9, p33

    iput-object v9, v0, Lech;->K:Lgpb;

    move-object/from16 v9, p34

    iput-object v9, v0, Lech;->L:Lkog;

    move-object/from16 v9, p36

    iput-object v9, v0, Lech;->M:Limq;

    move-object/from16 v9, p37

    iput-object v9, v0, Lech;->N:Ljvs;

    move-object/from16 v9, p38

    iput-object v9, v0, Lech;->O:Lklj;

    iput-object v3, v0, Lech;->J:Leeh;

    move-object/from16 v9, p8

    iget-object v9, v9, Lgdd;->b:Lkaf;

    iput-object v9, v0, Lech;->t:Lkaf;

    move-object/from16 v9, p12

    iput-object v9, v0, Lech;->u:Loiw;

    const/4 v9, 0x0

    iput-object v9, v0, Lech;->y:Ljava/lang/String;

    move-object/from16 v10, p27

    iput-object v10, v0, Lech;->d:Lkbc;

    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->kRequestCameraSecondaryTele_get()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lech;->f:Ljava/lang/String;

    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->kRequestCameraSecondaryWide_get()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lech;->g:Ljava/lang/String;

    move-object/from16 v10, p35

    iput-object v10, v0, Lech;->V:Lcvr;

    move-object/from16 v10, p39

    iput-object v10, v0, Lech;->P:Lgcb;

    move-object/from16 v10, p40

    iput-object v10, v0, Lech;->Q:Leao;

    move-object/from16 v10, p42

    iput-object v10, v0, Lech;->R:Lhnb;

    invoke-virtual/range {p11 .. p11}, Leeh;->b()Lcom/google/googlex/gcam/ViewfinderProcessingOptions;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/google/googlex/gcam/Gcam;->d(Lcom/google/googlex/gcam/ViewfinderProcessingOptions;)V

    new-instance v10, Lmvw;

    invoke-direct {v10}, Lmvw;-><init>()V

    const/4 v12, 0x0

    :goto_0
    iget-wide v13, v2, Lcom/google/googlex/gcam/Gcam;->a:J

    invoke-static {v13, v14, v2}, Lcom/google/googlex/gcam/GcamModuleJNI;->Gcam_GetNumCameras(JLcom/google/googlex/gcam/Gcam;)I

    move-result v13

    if-ge v12, v13, :cond_2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v2, v12}, Lcom/google/googlex/gcam/Gcam;->c(I)Lcom/google/googlex/gcam/Tuning;

    move-result-object v14

    move-object/from16 p3, v10

    iget-wide v9, v14, Lcom/google/googlex/gcam/Tuning;->a:J

    invoke-static {v9, v10, v14}, Lcom/google/googlex/gcam/GcamModuleJNI;->Tuning_physical_stability_params_get(JLcom/google/googlex/gcam/Tuning;)J

    move-result-wide v9

    const-wide/16 v14, 0x0

    cmp-long v16, v9, v14

    if-nez v16, :cond_0

    const/4 v11, 0x0

    goto :goto_1

    :cond_0
    new-instance v11, Lcom/google/googlex/gcam/PhysicalStabilityParams;

    invoke-direct {v11, v9, v10}, Lcom/google/googlex/gcam/PhysicalStabilityParams;-><init>(J)V

    :goto_1
    invoke-virtual {v2, v12}, Lcom/google/googlex/gcam/Gcam;->c(I)Lcom/google/googlex/gcam/Tuning;

    move-result-object v9

    iget-wide v14, v9, Lcom/google/googlex/gcam/Tuning;->a:J

    invoke-static {v14, v15, v9}, Lcom/google/googlex/gcam/GcamModuleJNI;->Tuning_post_shutter_af_params_get(JLcom/google/googlex/gcam/Tuning;)J

    move-result-wide v9

    const-wide/16 v14, 0x0

    cmp-long v16, v9, v14

    if-nez v16, :cond_1

    const/4 v14, 0x0

    goto :goto_2

    :cond_1
    new-instance v14, Lcom/google/googlex/gcam/PostShutterAfParams;

    invoke-direct {v14, v9, v10}, Lcom/google/googlex/gcam/PostShutterAfParams;-><init>(J)V

    :goto_2
    new-instance v9, Lecg;

    invoke-direct {v9, v11, v14}, Lecg;-><init>(Lcom/google/googlex/gcam/PhysicalStabilityParams;Lcom/google/googlex/gcam/PostShutterAfParams;)V

    move-object/from16 v10, p3

    invoke-virtual {v10, v13, v9}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v12, v12, 0x1

    const/4 v9, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v10}, Lmvw;->b()Lmwa;

    move-result-object v9

    iput-object v9, v0, Lech;->h:Lmwa;

    sget-object v9, Ldhq;->ac:Ldhj;

    invoke-interface {v4, v9}, Ldhi;->l(Ldhj;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lecy;->c:Lecy;

    invoke-virtual {v6, v4}, Lecy;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v7, Lebl;->b:Ljvs;

    new-instance v6, Lecf;

    const/4 v7, 0x0

    invoke-direct {v6, v2, v3, v7}, Lecf;-><init>(Lcom/google/googlex/gcam/Gcam;Leeh;I)V

    invoke-interface {v4, v6, v8}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljuf;->d(Lkad;)V

    :cond_3
    iget-boolean v1, v1, Lebi;->h:Z

    if-eqz v1, :cond_4

    new-instance v1, Lecf;

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lecf;-><init>(Lcom/google/googlex/gcam/Gcam;Leeh;I)V

    move-object/from16 v2, p41

    invoke-interface {v2, v1, v8}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljuf;->d(Lkad;)V

    :cond_4
    return-void
.end method

.method private final I(Lkou;Lkll;)I
    .locals 1

    iget-object v0, p0, Lech;->q:Lnsc;

    invoke-virtual {v0, p1, p2}, Lnsc;->f(Lkou;Lkll;)Lkli;

    move-result-object p2

    invoke-interface {p2}, Lkli;->i()Lkll;

    move-result-object p2

    iget-object p2, p2, Lkll;->a:Ljava/lang/String;

    invoke-static {p1, p2}, Lnsc;->h(Lkou;Ljava/lang/String;)Lkou;

    move-result-object p1

    sget-object p2, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, p2}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    const-string v0, "Invalid scaler crop region: %s"

    invoke-static {p2, v0, p1}, Lmoz;->j(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    mul-int p2, p2, p1

    return p2
.end method

.method private final K(FILgcc;IZZZLmqp;ZZZIJLega;Lkou;)Lcom/google/googlex/gcam/ShotParams;
    .locals 16
    .param p1, "exposureCompensation"    # F
    .param p2, "imageRotation"    # I
    .param p3, "flash"    # Lgcc;
    .param p4, "gcamCameraId"    # I
    .param p5, "allowZSL"    # Z
    .param p6, "saveMergedDng"    # Z
    .param p7, "allowBaseFrameReuse"    # Z
    .param p9, "isAutoNightSight"    # Z
    .param p10, "downsampleBy2BeforeMerge"    # Z
    .param p11, "recomputeWbOnBaseFrame"    # Z
    .param p12, "zoomedAreaPixelRect"    # I
    .param p13, "meteringFrameTS"    # J
    .param p15, "fusionZoom"    # Lega;
    .param p16, "totalCaptureResultProxy"    # Lkou;

    invoke-static/range {p0 .. p16}, LHdrPlusSessionImpl;->startShotCaptureInternal(Lech;FILgcc;IZZZLmqp;ZZZIJLega;Lkou;)Lcom/google/googlex/gcam/ShotParams;

    move-result-object v0

    return-object v0

    move-object/from16 v0, p0

    move/from16 v1, p9

    move-wide/from16 v2, p13

    move-object/from16 v4, p15

    iget-object v5, v0, Lech;->d:Lkbc;

    const-string v6, "new"

    invoke-interface {v5, v6}, Lkbc;->e(Ljava/lang/String;)V

    new-instance v5, Lcom/google/googlex/gcam/ShotParams;

    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_ShotParams__SWIG_0()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Lcom/google/googlex/gcam/ShotParams;-><init>(J)V

    iget-object v6, v0, Lech;->d:Lkbc;

    const-string v7, "setup"

    invoke-interface {v6, v7}, Lkbc;->g(Ljava/lang/String;)V

    iget-wide v6, v5, Lcom/google/googlex/gcam/ShotParams;->a:J

    move/from16 v8, p5

    invoke-static {v6, v7, v5, v8}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_zsl_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    iget-wide v6, v5, Lcom/google/googlex/gcam/ShotParams;->a:J

    move/from16 v8, p6

    invoke-static {v6, v7, v5, v8}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_save_merged_dng_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    iget-wide v6, v5, Lcom/google/googlex/gcam/ShotParams;->a:J

    const/4 v13, 0x1

    invoke-static {v13}, Lcom/agc/AdvancedSettings;->getCompressMergedDNG(Z)Z

    move-result v13

    invoke-static {v6, v7, v5, v13}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_compress_merged_dng_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    iget-wide v6, v5, Lcom/google/googlex/gcam/ShotParams;->a:J

    move/from16 v8, p7

    invoke-static {v6, v7, v5, v8}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_allow_base_frame_reuse_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    invoke-static/range {p2 .. p2}, Lnsy;->i(I)Lnqp;

    move-result-object v6

    iget-wide v7, v5, Lcom/google/googlex/gcam/ShotParams;->a:J

    iget v6, v6, Lnqp;->j:I

    invoke-static {v7, v8, v5, v6}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_image_rotation_set(JLcom/google/googlex/gcam/ShotParams;I)V

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

    invoke-virtual/range {p8 .. p8}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lhke;

    invoke-virtual {v6}, Lhke;->c()J

    move-result-wide v9

    iget-wide v11, v5, Lcom/google/googlex/gcam/ShotParams;->a:J

    invoke-static {v11, v12, v5, v9, v10}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_shutter_press_down_timestamp_ns_set(JLcom/google/googlex/gcam/ShotParams;J)V

    invoke-virtual/range {p8 .. p8}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lhke;

    invoke-virtual {v6}, Lhke;->d()J

    move-result-wide v9

    iget-wide v11, v5, Lcom/google/googlex/gcam/ShotParams;->a:J

    invoke-static {v11, v12, v5, v9, v10}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_shutter_press_up_timestamp_ns_set(JLcom/google/googlex/gcam/ShotParams;J)V

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

    invoke-virtual {v0, v2, v1}, Lech;->J(FZ)Lcom/google/googlex/gcam/AeShotParams;

    move-result-object v12

    iget-wide v7, v5, Lcom/google/googlex/gcam/ShotParams;->a:J

    iget-wide v10, v12, Lcom/google/googlex/gcam/AeShotParams;->a:J

    move-object v9, v5

    invoke-static/range {v7 .. v12}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_ae_set(JLcom/google/googlex/gcam/ShotParams;JLcom/google/googlex/gcam/AeShotParams;)V

    iget-object v2, v0, Lech;->d:Lkbc;

    const-string v3, "portraitRelighting"

    invoke-interface {v2, v3}, Lkbc;->g(Ljava/lang/String;)V

    iget-object v2, v0, Lech;->o:Lecy;

    sget-object v3, Lecy;->b:Lecy;

    invoke-virtual {v2, v3}, Lecy;->equals(Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, v0, Lech;->K:Lgpb;

    invoke-interface {v3, v2}, Lgpb;->e(Z)Z

    move-result v2

    invoke-virtual {v5}, Lcom/google/googlex/gcam/ShotParams;->a()Lcom/google/googlex/gcam/AeShotParams;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/googlex/gcam/AeShotParams;->h(Z)V

    iget-object v2, v0, Lech;->d:Lkbc;

    const-string v3, "profile"

    invoke-interface {v2, v3}, Lkbc;->g(Ljava/lang/String;)V

    iget-object v2, v0, Lech;->l:Ldhi;

    sget-object v3, Ldhq;->a:Ldhk;

    invoke-interface {v2}, Ldhi;->d()V

    iget-object v2, v0, Lech;->l:Ldhi;

    invoke-interface {v2}, Ldhi;->c()V

    iget-object v2, v0, Lech;->d:Lkbc;

    const-string v3, "flash"

    invoke-interface {v2, v3}, Lkbc;->g(Ljava/lang/String;)V

    sget-object v2, Lgcc;->a:Lgcc;

    invoke-virtual/range {p3 .. p3}, Lgcc;->ordinal()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    sget-object v2, Lnqm;->c:Lnqm;

    goto :goto_0

    :pswitch_1
    sget-object v2, Lnqm;->b:Lnqm;

    goto :goto_0

    :pswitch_2
    sget-object v2, Lnqm;->a:Lnqm;

    :goto_0
    iget-wide v6, v5, Lcom/google/googlex/gcam/ShotParams;->a:J

    iget v2, v2, Lnqm;->d:I

    invoke-static {v6, v7, v5, v2}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_flash_mode_set(JLcom/google/googlex/gcam/ShotParams;I)V

    iget-object v2, v0, Lech;->o:Lecy;

    sget-object v3, Lecy;->c:Lecy;

    invoke-virtual {v2, v3}, Lecy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    :goto_1
    iget-object v2, v0, Lech;->d:Lkbc;

    const-string v3, "wbSource"

    invoke-interface {v2, v3}, Lkbc;->g(Ljava/lang/String;)V

    iget-object v2, v0, Lech;->l:Ldhi;

    sget-object v3, Ldhq;->b:Ldhk;

    invoke-interface {v2, v3}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v6, 0x3

    filled-new-array {v13, v3, v6}, [I

    move-result-object v3

    aget v2, v3, v2

    add-int/lit8 v3, v2, -0x1

    if-eqz v2, :cond_14

    packed-switch v3, :pswitch_data_1

    goto :goto_3

    :pswitch_3
    invoke-virtual {v5, v14}, Lcom/google/googlex/gcam/ShotParams;->d(Z)V

    goto :goto_3

    :pswitch_4
    invoke-virtual {v5, v13}, Lcom/google/googlex/gcam/ShotParams;->d(Z)V

    goto :goto_3

    :pswitch_5
    if-eqz v1, :cond_4

    if-nez p11, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v5, v2}, Lcom/google/googlex/gcam/ShotParams;->d(Z)V

    :goto_3
    iget-object v2, v0, Lech;->i:Lcom/google/googlex/gcam/Gcam;

    move/from16 v3, p4

    invoke-virtual {v2, v3}, Lcom/google/googlex/gcam/Gcam;->b(I)Lcom/google/googlex/gcam/StaticMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlex/gcam/StaticMetadata;->d()Lnrg;

    move-result-object v3

    sget-object v6, Lhna;->d:Lhna;

    invoke-direct {v0, v6, v4}, Lech;->O(Lhna;Lega;)Z

    move-result v6

    if-eqz v6, :cond_5

    sget-object v6, Lnrg;->d:Lnrg;

    if-ne v3, v6, :cond_5

    sget-object v6, Lnre;->b:Lnre;

    invoke-virtual {v5, v6}, Lcom/google/googlex/gcam/ShotParams;->e(Lnre;)V

    goto :goto_4

    :cond_5
    iget-object v6, v0, Lech;->l:Ldhi;

    sget-object v7, Ldhq;->O:Ldhj;

    invoke-interface {v6, v7}, Ldhi;->l(Ldhj;)Z

    move-result v6

    if-eqz v6, :cond_6

    sget-object v6, Lnre;->c:Lnre;

    invoke-virtual {v5, v6}, Lcom/google/googlex/gcam/ShotParams;->e(Lnre;)V

    :cond_6
    :goto_4
    iget-object v6, v0, Lech;->l:Ldhi;

    sget-object v7, Ldhq;->u:Ldhk;

    invoke-interface {v6, v7}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v6

    new-instance v7, Ldcc;

    const/4 v8, 0x6

    invoke-direct {v7, v5, v8}, Ldcc;-><init>(Lcom/google/googlex/gcam/ShotParams;I)V

    invoke-virtual {v6, v7}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v6, v0, Lech;->d:Lkbc;

    const-string v7, "sabre"

    invoke-interface {v6, v7}, Lkbc;->g(Ljava/lang/String;)V

    iget-object v6, v0, Lech;->E:Ljvs;

    invoke-interface {v6}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget-object v7, v0, Lech;->l:Ldhi;

    invoke-interface {v7}, Ldhi;->c()V

    iget-object v7, v0, Lech;->l:Ldhi;

    sget-object v8, Ldhq;->R:Ldhj;

    invoke-interface {v7, v8}, Ldhi;->l(Ldhj;)Z

    move-result v7

    invoke-virtual {v2}, Lcom/google/googlex/gcam/StaticMetadata;->c()Lcom/google/googlex/gcam/PixelRect;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/googlex/gcam/PixelRect;->d()I

    move-result v8

    invoke-virtual {v2}, Lcom/google/googlex/gcam/StaticMetadata;->c()Lcom/google/googlex/gcam/PixelRect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlex/gcam/PixelRect;->c()I

    move-result v2

    mul-int v8, v8, v2

    if-eqz v7, :cond_7

    int-to-float v2, v8

    move/from16 v8, p12

    int-to-float v8, v8

    div-float/2addr v2, v8

    const/high16 v8, 0x40100000    # 2.25f

    cmpl-float v2, v2, v8

    if-ltz v2, :cond_7

    const/4 v2, 0x1

    goto :goto_5

    :cond_7
    const/4 v2, 0x0

    :goto_5
    sget-object v8, Lnrg;->e:Lnrg;

    if-ne v3, v8, :cond_8

    iget-object v3, v0, Lech;->l:Ldhi;

    sget-object v8, Ldhq;->T:Ldhj;

    invoke-interface {v3, v8}, Ldhi;->l(Ldhj;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x1

    goto :goto_6

    :cond_8
    const/4 v3, 0x0

    :goto_6
    iget-object v8, v0, Lech;->l:Ldhi;

    sget-object v9, Ldhq;->Q:Ldhj;

    invoke-interface {v8, v9}, Ldhi;->l(Ldhj;)Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v8, v0, Lech;->o:Lecy;

    sget-object v9, Lecy;->b:Lecy;

    invoke-virtual {v8, v9}, Lecy;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    const v8, 0x3f99999a    # 1.2f

    cmpl-float v6, v6, v8

    if-gez v6, :cond_9

    if-eqz v3, :cond_a

    :cond_9
    if-nez v7, :cond_a

    const/4 v3, 0x1

    goto :goto_7

    :cond_a
    const/4 v3, 0x0

    :goto_7
    iget-object v6, v0, Lech;->l:Ldhi;

    invoke-interface {v6}, Ldhi;->c()V

    iget-object v6, v0, Lech;->l:Ldhi;

    sget-object v7, Ldhq;->S:Ldhj;

    invoke-interface {v6, v7}, Ldhi;->l(Ldhj;)Z

    move-result v6

    if-eqz v6, :cond_b

    sget-object v6, Lnqw;->a:Lnqw;

    iget-wide v7, v5, Lcom/google/googlex/gcam/ShotParams;->a:J

    iget v6, v6, Lnqw;->b:I

    invoke-static {v7, v8, v5, v6}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_merge_method_override_set(JLcom/google/googlex/gcam/ShotParams;I)V

    :cond_b
    iget-wide v6, v5, Lcom/google/googlex/gcam/ShotParams;->a:J

    invoke-static {v6, v7, v5, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_allow_sabre_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    iget-wide v6, v5, Lcom/google/googlex/gcam/ShotParams;->a:J

    invoke-static {v6, v7, v5, v2}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_allow_spatial_rgb_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    iget-object v2, v0, Lech;->d:Lkbc;

    const-string v3, "shasta"

    invoke-interface {v2, v3}, Lkbc;->g(Ljava/lang/String;)V

    iget-object v2, v0, Lech;->o:Lecy;

    sget-object v3, Lecy;->a:Lecy;

    invoke-virtual {v2, v3}, Lecy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, v0, Lech;->l:Ldhi;

    sget-object v3, Ldhq;->L:Ldhj;

    invoke-interface {v2, v3}, Ldhi;->l(Ldhj;)Z

    move-result v2

    goto :goto_8

    :cond_c
    if-eqz v1, :cond_d

    iget-object v2, v0, Lech;->l:Ldhi;

    sget-object v3, Ldhq;->K:Ldhj;

    invoke-interface {v2, v3}, Ldhi;->l(Ldhj;)Z

    move-result v2

    goto :goto_8

    :cond_d
    iget-object v2, v0, Lech;->o:Lecy;

    sget-object v3, Lecy;->b:Lecy;

    invoke-virtual {v2, v3}, Lecy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, v0, Lech;->l:Ldhi;

    sget-object v3, Ldib;->F:Ldhj;

    invoke-interface {v2, v3}, Ldhi;->l(Ldhj;)Z

    move-result v2

    goto :goto_8

    :cond_e
    const/4 v2, 0x0

    :goto_8
    invoke-virtual {v5, v2}, Lcom/google/googlex/gcam/ShotParams;->f(Z)V

    iget-object v2, v0, Lech;->l:Ldhi;

    sget-object v3, Ldhq;->M:Ldhj;

    invoke-interface {v2, v3}, Ldhi;->h(Ldhj;)Lj$/util/Optional;

    move-result-object v2

    new-instance v3, Ldcc;

    const/4 v6, 0x7

    invoke-direct {v3, v5, v6}, Ldcc;-><init>(Lcom/google/googlex/gcam/ShotParams;I)V

    invoke-virtual {v2, v3}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v2, v0, Lech;->l:Ldhi;

    invoke-interface {v2}, Ldhi;->e()V

    iget-wide v2, v5, Lcom/google/googlex/gcam/ShotParams;->a:J

    invoke-static {v2, v3, v5, v14}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_shasta_force_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    if-eqz v1, :cond_12

    iget-object v1, v0, Lech;->d:Lkbc;

    const-string v2, "nightSight"

    invoke-interface {v1, v2}, Lkbc;->g(Ljava/lang/String;)V

    iget-wide v1, v5, Lcom/google/googlex/gcam/ShotParams;->a:J

    invoke-static {v1, v2, v5, v13}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_motion_ef_enabled_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    iget-object v1, v0, Lech;->k:Lebi;

    iget-boolean v1, v1, Lebi;->f:Z

    if-eqz v1, :cond_11

    iget-object v1, v0, Lech;->C:Lebl;

    invoke-virtual {v1}, Lebl;->k()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, v0, Lech;->s:Lkli;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {v1, v2}, Lkli;->l(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v13, :cond_11

    iget-wide v1, v5, Lcom/google/googlex/gcam/ShotParams;->a:J

    invoke-static {v1, v2, v5, v13}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_device_is_on_tripod_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    if-eqz p10, :cond_10

    iget-wide v1, v5, Lcom/google/googlex/gcam/ShotParams;->a:J

    invoke-static {v1, v2, v5, v13}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_downsample_by_2_before_merge_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    sget-object v1, Ljzr;->b:Ljzr;

    iget-object v2, v0, Lech;->t:Lkaf;

    invoke-static {v2}, Ljzr;->j(Lkaf;)Ljzr;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljzr;->m(Ljzr;)Z

    move-result v1

    if-eqz v1, :cond_f

    sget-object v1, Lech;->b:Lkaf;

    goto :goto_9

    :cond_f
    sget-object v1, Lech;->c:Lkaf;

    :goto_9
    invoke-virtual {v5}, Lcom/google/googlex/gcam/ShotParams;->a()Lcom/google/googlex/gcam/AeShotParams;

    move-result-object v2

    iget v3, v1, Lkaf;->a:I

    invoke-virtual {v2, v3}, Lcom/google/googlex/gcam/AeShotParams;->j(I)V

    invoke-virtual {v5}, Lcom/google/googlex/gcam/ShotParams;->a()Lcom/google/googlex/gcam/AeShotParams;

    move-result-object v2

    iget v1, v1, Lkaf;->b:I

    invoke-virtual {v2, v1}, Lcom/google/googlex/gcam/AeShotParams;->i(I)V

    :cond_10
    invoke-virtual {v5, v14}, Lcom/google/googlex/gcam/ShotParams;->f(Z)V

    :cond_11
    iget-object v1, v0, Lech;->k:Lebi;

    iget-object v2, v1, Lebi;->a:Ldhi;

    sget-object v3, Ldhq;->c:Ldhk;

    invoke-interface {v2, v3}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Lj$/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v1, v1, Lebi;->a:Ldhi;

    sget-object v2, Ldhq;->c:Ldhk;

    invoke-interface {v1, v2}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_12

    iget-object v1, v0, Lech;->d:Lkbc;

    const-string v2, "psaf"

    invoke-interface {v1, v2}, Lkbc;->g(Ljava/lang/String;)V

    iget-object v1, v0, Lech;->l:Ldhi;

    sget-object v2, Ldhq;->c:Ldhk;

    invoke-interface {v1, v2}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v1

    invoke-virtual {v1, v15}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-wide v2, v5, Lcom/google/googlex/gcam/ShotParams;->a:J

    invoke-static {v2, v3, v5, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_psaf_frame_count_set(JLcom/google/googlex/gcam/ShotParams;I)V

    iget-object v1, v0, Lech;->l:Ldhi;

    sget-object v2, Ldhq;->E:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->h(Ldhj;)Lj$/util/Optional;

    move-result-object v1

    new-instance v2, Ldcc;

    const/16 v3, 0x8

    invoke-direct {v2, v5, v3}, Ldcc;-><init>(Lcom/google/googlex/gcam/ShotParams;I)V

    invoke-virtual {v1, v2}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v1, v0, Lech;->l:Ldhi;

    sget-object v2, Ldhq;->F:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->h(Ldhj;)Lj$/util/Optional;

    move-result-object v1

    new-instance v2, Ldcc;

    const/16 v3, 0x9

    invoke-direct {v2, v5, v3}, Ldcc;-><init>(Lcom/google/googlex/gcam/ShotParams;I)V

    invoke-virtual {v1, v2}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_12
    iget-object v1, v0, Lech;->l:Ldhi;

    sget-object v2, Ldhg;->n:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_13

    sget-object v1, Lhna;->c:Lhna;

    invoke-direct {v0, v1, v4}, Lech;->O(Lhna;Lega;)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, v0, Lech;->l:Ldhi;

    invoke-interface {v1}, Ldhi;->e()V

    iget-wide v1, v5, Lcom/google/googlex/gcam/ShotParams;->a:J

    invoke-static {v1, v2, v5, v14}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_gpu_power_boost_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    iget-object v1, v0, Lech;->l:Ldhi;

    sget-object v2, Ldhq;->ax:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->h(Ldhj;)Lj$/util/Optional;

    move-result-object v1

    new-instance v2, Ldcc;

    const/16 v3, 0xa

    invoke-direct {v2, v5, v3}, Ldcc;-><init>(Lcom/google/googlex/gcam/ShotParams;I)V

    invoke-virtual {v1, v2}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v1, v0, Lech;->l:Ldhi;

    sget-object v2, Ldhq;->ay:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->h(Ldhj;)Lj$/util/Optional;

    move-result-object v1

    new-instance v2, Ldcc;

    const/16 v3, 0xb

    invoke-direct {v2, v5, v3}, Ldcc;-><init>(Lcom/google/googlex/gcam/ShotParams;I)V

    invoke-virtual {v1, v2}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v1, v0, Lech;->l:Ldhi;

    sget-object v2, Ldhq;->az:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->h(Ldhj;)Lj$/util/Optional;

    move-result-object v1

    new-instance v2, Ldcc;

    const/16 v3, 0xc

    invoke-direct {v2, v5, v3}, Ldcc;-><init>(Lcom/google/googlex/gcam/ShotParams;I)V

    invoke-virtual {v1, v2}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_13
    iget-object v1, v0, Lech;->d:Lkbc;

    const-string v2, "finalize"

    invoke-interface {v1, v2}, Lkbc;->g(Ljava/lang/String;)V

    iget-object v1, v0, Lech;->l:Ldhi;

    sget-object v2, Ldhq;->A:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->l(Ldhj;)Z

    move-result v1

    iget-wide v2, v5, Lcom/google/googlex/gcam/ShotParams;->a:J

    invoke-static {v2, v3, v5, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_optimize_sky_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    iget-object v1, v0, Lech;->l:Ldhi;

    invoke-interface {v1}, Ldhi;->d()V

    iget-wide v1, v5, Lcom/google/googlex/gcam/ShotParams;->a:J

    invoke-static {v1, v2, v5, v13}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_nonzsl_extended_base_frame_selection_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    iget-object v1, v0, Lech;->l:Ldhi;

    sget-object v2, Ldhq;->C:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->l(Ldhj;)Z

    move-result v1

    iget-wide v2, v5, Lcom/google/googlex/gcam/ShotParams;->a:J

    invoke-static {v2, v3, v5, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_rerun_face_detection_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    iget-object v1, v0, Lech;->l:Ldhi;

    sget-object v2, Ldhq;->aD:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->l(Ldhj;)Z

    move-result v1

    iget-wide v2, v5, Lcom/google/googlex/gcam/ShotParams;->a:J

    invoke-static {v2, v3, v5, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_walnut_enabled_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    iget-object v1, v0, Lech;->d:Lkbc;

    invoke-interface {v1}, Lkbc;->f()V

    return-object v5

    :cond_14
    const/4 v1, 0x0

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private final L()V
    .locals 2

    iget-object v0, p0, Lech;->v:Ljuf;

    invoke-virtual {v0}, Ljuf;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lkdf;

    const-string v1, "Camera already closed"

    invoke-direct {v0, v1}, Lkdf;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final M()Z
    .locals 2

    iget-object v0, p0, Lech;->B:Lebe;

    iget-object v1, p0, Lech;->o:Lecy;

    invoke-virtual {v0, v1}, Lebe;->f(Lecy;)Z

    move-result v0

    return v0
.end method

.method private final N()Z
    .locals 1

    iget-object v0, p0, Lech;->C:Lebl;

    iget-object v0, v0, Lebl;->b:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private final P(Lkll;Lgxy;Lgkr;Lcom/google/googlex/gcam/PostviewParams;Lgcc;Lkou;ZIIZIZLmqp;Lega;)Leea;
    .locals 39

    move-object/from16 v14, p0

    move-object/from16 v0, p1

    move-object/from16 v15, p3

    move-object/from16 v13, p6

    move/from16 v12, p7

    move/from16 v11, p9

    move-object/from16 v10, p14

    iget-object v1, v14, Lech;->W:Lcvr;

    move-object/from16 v2, p2

    invoke-virtual {v1, v2}, Lcvr;->L(Lgxy;)Leec;

    move-result-object v21

    iget-object v1, v14, Lech;->q:Lnsc;

    iget-object v2, v14, Lech;->n:Ljvs;

    check-cast v2, Ljvk;

    iget-object v2, v2, Ljvk;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lnsc;->a(I)F

    move-result v2

    iget-object v1, v15, Lgkr;->d:Ljava/lang/Object;

    check-cast v1, Lfte;

    iget v1, v1, Lfte;->a:I

    iget-object v3, v14, Lech;->M:Limq;

    iget-object v4, v14, Lech;->s:Lkli;

    iget-object v5, v14, Lech;->N:Ljvs;

    iget-object v6, v14, Lech;->l:Ldhi;

    invoke-static {v1, v3, v4, v5, v6}, Lcea;->b(ILimq;Lkli;Ljvs;Ldhi;)I

    move-result v3

    iget-object v1, v15, Lgkr;->c:Ljava/lang/Object;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lgxl;->n()Lmqp;

    move-result-object v1

    move-object v9, v1

    goto :goto_0

    :cond_0
    sget-object v1, Lmpx;->a:Lmpx;

    move-object v9, v1

    :goto_0
    invoke-virtual/range {v21 .. v21}, Leec;->c()Lmqp;

    move-result-object v1

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v7

    invoke-direct/range {p0 .. p0}, Lech;->N()Z

    move-result v22

    iget-object v1, v14, Lech;->d:Lkbc;

    const-string v4, "shotParams"

    invoke-interface {v1, v4}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v1, v14, Lech;->d:Lkbc;

    const-string v4, "create"

    invoke-interface {v1, v4}, Lkbc;->e(Ljava/lang/String;)V

    invoke-virtual {v14, v13, v0}, Lech;->l(Lkou;Lkll;)Lnrg;

    move-result-object v1

    invoke-virtual {v14, v1}, Lech;->b(Lnrg;)I

    move-result v8

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v13, v1}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual/range {p13 .. p13}, Lmqp;->g()Z

    move-result v16

    invoke-direct {v14, v13, v0}, Lech;->I(Lkou;Lkll;)I

    move-result v17

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-wide/from16 v18, v4

    goto :goto_1

    :cond_1
    const-wide/16 v4, -0x1

    move-wide/from16 v18, v4

    :goto_1
    move-object/from16 v1, p0

    move-object/from16 v4, p5

    move v5, v8

    move/from16 v6, p7

    move/from16 v36, v8

    move/from16 v8, p12

    move/from16 v10, v22

    move v0, v11

    move/from16 v11, p10

    move v0, v12

    move/from16 v12, v16

    move/from16 v13, v17

    move-wide/from16 v14, v18

    move-object/from16 v16, p14

    move-object/from16 v17, p6

    invoke-direct/range {v1 .. v17}, Lech;->K(FILgcc;IZZZLmqp;ZZZIJLega;Lkou;)Lcom/google/googlex/gcam/ShotParams;

    move-result-object v15

    move-object/from16 v14, p0

    iget-object v1, v14, Lech;->d:Lkbc;

    const-string v2, "setWb"

    invoke-interface {v1, v2}, Lkbc;->g(Ljava/lang/String;)V

    iget-object v1, v14, Lech;->w:Lfui;

    invoke-virtual {v1}, Ljwi;->bm()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lfuh;->a:Lfuh;

    if-ne v1, v2, :cond_2

    sget-object v1, Lnri;->a:Lnri;

    goto :goto_2

    :cond_2
    sget-object v1, Lnri;->b:Lnri;

    :goto_2
    iget-wide v2, v15, Lcom/google/googlex/gcam/ShotParams;->a:J

    iget v1, v1, Lnri;->c:I

    invoke-static {v2, v3, v15, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_wb_mode_set(JLcom/google/googlex/gcam/ShotParams;I)V

    iget-object v1, v14, Lech;->d:Lkbc;

    const-string v2, "setSuffix"

    invoke-interface {v1, v2}, Lkbc;->g(Ljava/lang/String;)V

    const/4 v13, 0x1

    if-eq v13, v0, :cond_3

    const-string v1, "n"

    goto :goto_3

    :cond_3
    const-string v1, "z"

    :goto_3
    sget-object v2, Lecy;->a:Lecy;

    sget-object v2, Lgcc;->a:Lgcc;

    iget-object v2, v14, Lech;->o:Lecy;

    invoke-virtual {v2}, Lecy;->ordinal()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_5

    :pswitch_0
    const-string v2, "m"

    goto :goto_4

    :pswitch_1
    const-string v2, "l"

    goto :goto_4

    :pswitch_2
    const-string v2, "p"

    goto :goto_4

    :pswitch_3
    const-string v2, "d"

    :goto_4
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_5
    iget-wide v2, v15, Lcom/google/googlex/gcam/ShotParams;->a:J

    invoke-static {v2, v3, v15, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_software_suffix_set(JLcom/google/googlex/gcam/ShotParams;Ljava/lang/String;)V

    iget-object v1, v14, Lech;->d:Lkbc;

    const-string v2, "setBfIndex"

    invoke-interface {v1, v2}, Lkbc;->g(Ljava/lang/String;)V

    const/4 v1, -0x1

    const/4 v12, 0x0

    move/from16 v0, p9

    if-lt v0, v1, :cond_4

    const/4 v1, 0x1

    goto :goto_6

    :cond_4
    const/4 v1, 0x0

    :goto_6
    const-string v2, "Incorrect base frame override."

    invoke-static {v1, v2}, Lmoz;->f(ZLjava/lang/Object;)V

    iget-wide v1, v15, Lcom/google/googlex/gcam/ShotParams;->a:J

    invoke-static {v1, v2, v15, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_base_frame_override_index_set(JLcom/google/googlex/gcam/ShotParams;I)V

    if-eqz p7, :cond_5

    const-string v0, "Incorrect base frame hint."

    invoke-static {v13, v0}, Lmoz;->f(ZLjava/lang/Object;)V

    iget-wide v0, v15, Lcom/google/googlex/gcam/ShotParams;->a:J

    move/from16 v2, p8

    invoke-static {v0, v1, v15, v2}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_zsl_base_frame_index_hint_set(JLcom/google/googlex/gcam/ShotParams;I)V

    :cond_5
    iget-object v0, v14, Lech;->d:Lkbc;

    const-string v1, "AwbInfo"

    invoke-interface {v0, v1}, Lkbc;->g(Ljava/lang/String;)V

    iget-object v0, v14, Lech;->q:Lnsc;

    move-object/from16 v10, p1

    move-object/from16 v11, p6

    invoke-virtual {v0, v11, v10}, Lnsc;->f(Lkou;Lkll;)Lkli;

    move-result-object v0

    invoke-static {v11, v0}, Lnsc;->i(Lkou;Lkli;)Lcom/google/googlex/gcam/AwbInfo;

    move-result-object v0

    iget-object v1, v14, Lech;->d:Lkbc;

    const-string v2, "wb"

    invoke-interface {v1, v2}, Lkbc;->g(Ljava/lang/String;)V

    iget-object v1, v14, Lech;->l:Ldhi;

    sget-object v2, Ldhq;->b:Ldhk;

    invoke-interface {v1, v2}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez p7, :cond_6

    iget-wide v3, v15, Lcom/google/googlex/gcam/ShotParams;->a:J

    invoke-static {v3, v4, v15}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_GcamAwbDesired(JLcom/google/googlex/gcam/ShotParams;)Z

    move-result v3

    if-nez v3, :cond_6

    if-eq v1, v2, :cond_6

    const/4 v1, 0x1

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    invoke-virtual/range {p13 .. p13}, Lmqp;->g()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual/range {p13 .. p13}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/gcam/AwbInfo;

    invoke-virtual {v15, v0}, Lcom/google/googlex/gcam/ShotParams;->c(Lcom/google/googlex/gcam/AwbInfo;)V

    goto :goto_8

    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual {v15, v0}, Lcom/google/googlex/gcam/ShotParams;->c(Lcom/google/googlex/gcam/AwbInfo;)V

    :cond_8
    :goto_8
    iget-object v0, v14, Lech;->t:Lkaf;

    iget-object v1, v14, Lech;->i:Lcom/google/googlex/gcam/Gcam;

    move/from16 v9, v36

    invoke-virtual {v1, v9}, Lcom/google/googlex/gcam/Gcam;->b(I)Lcom/google/googlex/gcam/StaticMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlex/gcam/StaticMetadata;->d()Lnrg;

    move-result-object v3

    iget-object v4, v14, Lech;->o:Lecy;

    sget-object v5, Lecy;->b:Lecy;

    invoke-virtual {v4, v5}, Lecy;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v1, v14, Lech;->d:Lkbc;

    const-string v2, "updateAndGetPhotoSize"

    invoke-interface {v1, v2}, Lkbc;->g(Ljava/lang/String;)V

    sget-object v1, Lnre;->a:Lnre;

    invoke-virtual {v15, v1}, Lcom/google/googlex/gcam/ShotParams;->e(Lnre;)V

    invoke-virtual {v15}, Lcom/google/googlex/gcam/ShotParams;->a()Lcom/google/googlex/gcam/AeShotParams;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/google/googlex/gcam/AeShotParams;->j(I)V

    invoke-virtual {v15}, Lcom/google/googlex/gcam/ShotParams;->a()Lcom/google/googlex/gcam/AeShotParams;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/google/googlex/gcam/AeShotParams;->i(I)V

    sget-object v1, Lnrg;->b:Lnrg;

    if-ne v3, v1, :cond_d

    iget-object v1, v14, Lech;->l:Ldhi;

    sget-object v2, Ldib;->f:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->h(Ldhj;)Lj$/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Lj$/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    const v2, 0x3fc2339c    # 1.5172f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v15}, Lcom/google/googlex/gcam/ShotParams;->a()Lcom/google/googlex/gcam/AeShotParams;

    move-result-object v1

    sget-object v2, Lgox;->b:Lcom/google/googlex/gcam/NormalizedRect;

    invoke-virtual {v1, v2}, Lcom/google/googlex/gcam/AeShotParams;->g(Lcom/google/googlex/gcam/NormalizedRect;)V

    sget-object v1, Ljzr;->b:Ljzr;

    invoke-static {v0}, Ljzr;->j(Lkaf;)Ljzr;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljzr;->m(Ljzr;)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v0, Lgox;->f:Lkaf;

    goto/16 :goto_b

    :cond_9
    goto/16 :goto_b

    :cond_a
    iget-object v1, v14, Lech;->L:Lkog;

    iget-boolean v2, v1, Lkog;->n:Z

    if-eqz v2, :cond_b

    invoke-virtual {v15}, Lcom/google/googlex/gcam/ShotParams;->a()Lcom/google/googlex/gcam/AeShotParams;

    move-result-object v1

    sget-object v2, Lgox;->d:Lcom/google/googlex/gcam/NormalizedRect;

    invoke-virtual {v1, v2}, Lcom/google/googlex/gcam/AeShotParams;->g(Lcom/google/googlex/gcam/NormalizedRect;)V

    goto/16 :goto_b

    :cond_b
    iget-boolean v1, v1, Lkog;->o:Z

    if-eqz v1, :cond_c

    invoke-virtual {v15}, Lcom/google/googlex/gcam/ShotParams;->a()Lcom/google/googlex/gcam/AeShotParams;

    move-result-object v1

    sget-object v2, Lgox;->e:Lcom/google/googlex/gcam/NormalizedRect;

    invoke-virtual {v1, v2}, Lcom/google/googlex/gcam/AeShotParams;->g(Lcom/google/googlex/gcam/NormalizedRect;)V

    goto/16 :goto_b

    :cond_c
    invoke-virtual {v15}, Lcom/google/googlex/gcam/ShotParams;->a()Lcom/google/googlex/gcam/AeShotParams;

    move-result-object v1

    sget-object v2, Lgox;->a:Lcom/google/googlex/gcam/NormalizedRect;

    invoke-virtual {v1, v2}, Lcom/google/googlex/gcam/AeShotParams;->g(Lcom/google/googlex/gcam/NormalizedRect;)V

    goto/16 :goto_b

    :cond_d
    sget-object v1, Lnrg;->l:Lnrg;

    if-ne v3, v1, :cond_e

    invoke-virtual {v15}, Lcom/google/googlex/gcam/ShotParams;->a()Lcom/google/googlex/gcam/AeShotParams;

    move-result-object v1

    sget-object v2, Lgox;->c:Lcom/google/googlex/gcam/NormalizedRect;

    invoke-virtual {v1, v2}, Lcom/google/googlex/gcam/AeShotParams;->g(Lcom/google/googlex/gcam/NormalizedRect;)V

    sget-object v1, Ljzr;->b:Ljzr;

    invoke-static {v0}, Ljzr;->j(Lkaf;)Ljzr;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljzr;->m(Ljzr;)Z

    move-result v1

    if-eqz v1, :cond_e

    sget-object v0, Lgox;->g:Lkaf;

    move-object v6, v0

    goto/16 :goto_c

    :cond_e
    goto/16 :goto_b

    :cond_f
    sget-object v4, Lnrg;->e:Lnrg;

    if-eq v3, v4, :cond_11

    sget-object v4, Lnrg;->g:Lnrg;

    if-ne v3, v4, :cond_10

    const/4 v3, 0x1

    goto :goto_9

    :cond_10
    const/4 v3, 0x0

    goto :goto_9

    :cond_11
    const/4 v3, 0x1

    :goto_9
    if-eqz p10, :cond_13

    if-eqz v3, :cond_13

    iget-object v3, v14, Lech;->o:Lecy;

    sget-object v4, Lecy;->a:Lecy;

    invoke-virtual {v3, v4}, Lecy;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    new-instance v3, Lkaf;

    iget-wide v4, v1, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    invoke-static {v4, v5, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_pixel_array_width_get(JLcom/google/googlex/gcam/StaticMetadata;)I

    move-result v4

    iget-wide v5, v1, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    invoke-static {v5, v6, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_pixel_array_height_get(JLcom/google/googlex/gcam/StaticMetadata;)I

    move-result v1

    invoke-direct {v3, v4, v1}, Lkaf;-><init>(II)V

    invoke-static {v0}, Ljzr;->j(Lkaf;)Ljzr;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljzr;->e(Lkaf;)Landroid/graphics/Rect;

    move-result-object v0

    new-instance v1, Lkaf;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-direct {v1, v3, v0}, Lkaf;-><init>(II)V

    iget-object v0, v14, Lech;->E:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v3, v14, Lech;->l:Ldhi;

    sget-object v4, Ldhg;->C:Ldhj;

    invoke-interface {v3, v4}, Ldhi;->h(Ldhj;)Lj$/util/Optional;

    move-result-object v3

    iget-object v4, v14, Lech;->l:Ldhi;

    sget-object v5, Ldhg;->n:Ldhj;

    invoke-interface {v4, v5}, Ldhi;->l(Ldhj;)Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-virtual {v3}, Lj$/util/Optional;->isPresent()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-virtual {v3}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_12

    invoke-virtual {v3}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_12

    invoke-virtual {v15}, Lcom/google/googlex/gcam/ShotParams;->a()Lcom/google/googlex/gcam/AeShotParams;

    move-result-object v0

    iget v3, v1, Lkaf;->a:I

    div-int/2addr v3, v2

    invoke-virtual {v0, v3}, Lcom/google/googlex/gcam/AeShotParams;->j(I)V

    invoke-virtual {v15}, Lcom/google/googlex/gcam/ShotParams;->a()Lcom/google/googlex/gcam/AeShotParams;

    move-result-object v0

    iget v3, v1, Lkaf;->b:I

    div-int/2addr v3, v2

    invoke-virtual {v0, v3}, Lcom/google/googlex/gcam/AeShotParams;->i(I)V

    goto :goto_a

    :cond_12
    invoke-virtual {v15}, Lcom/google/googlex/gcam/ShotParams;->a()Lcom/google/googlex/gcam/AeShotParams;

    move-result-object v0

    iget v2, v1, Lkaf;->a:I

    invoke-virtual {v0, v2}, Lcom/google/googlex/gcam/AeShotParams;->j(I)V

    invoke-virtual {v15}, Lcom/google/googlex/gcam/ShotParams;->a()Lcom/google/googlex/gcam/AeShotParams;

    move-result-object v0

    iget v2, v1, Lkaf;->b:I

    invoke-virtual {v0, v2}, Lcom/google/googlex/gcam/AeShotParams;->i(I)V

    :goto_a
    move-object v6, v1

    goto :goto_c

    :cond_13
    :goto_b
    move-object v6, v0

    :goto_c
    iget-object v0, v14, Lech;->d:Lkbc;

    const-string v1, "updateAe"

    invoke-interface {v0, v1}, Lkbc;->g(Ljava/lang/String;)V

    iget-object v1, v14, Lech;->q:Lnsc;

    invoke-virtual {v15}, Lcom/google/googlex/gcam/ShotParams;->a()Lcom/google/googlex/gcam/AeShotParams;

    move-result-object v3

    iget-object v0, v14, Lech;->k:Lebi;

    iget v5, v0, Lebi;->g:F

    move-object/from16 v2, p1

    move-object/from16 v4, p6

    invoke-virtual/range {v1 .. v6}, Lnsc;->u(Lkll;Lcom/google/googlex/gcam/AeShotParams;Lkou;FLkaf;)V

    if-eqz p10, :cond_17

    iget-object v0, v14, Lech;->o:Lecy;

    sget-object v1, Lecy;->b:Lecy;

    if-eq v0, v1, :cond_16

    sget-object v1, Lecy;->a:Lecy;

    if-ne v0, v1, :cond_15

    iget-object v0, v14, Lech;->l:Ldhi;

    sget-object v1, Ldhg;->d:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_d

    :cond_14
    move-object/from16 v0, p14

    goto :goto_e

    :cond_15
    move-object/from16 v0, p14

    goto :goto_e

    :cond_16
    :goto_d
    move-object/from16 v0, p14

    iget-object v1, v0, Lega;->b:Lefz;

    sget-object v2, Lefz;->c:Lefz;

    if-eq v1, v2, :cond_18

    iget-object v1, v14, Lech;->d:Lkbc;

    const-string v2, "disableCrop"

    invoke-interface {v1, v2}, Lkbc;->g(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/google/googlex/gcam/ShotParams;->a()Lcom/google/googlex/gcam/AeShotParams;

    move-result-object v1

    new-instance v2, Lcom/google/googlex/gcam/NormalizedRect;

    invoke-direct {v2}, Lcom/google/googlex/gcam/NormalizedRect;-><init>()V

    invoke-virtual {v1, v2}, Lcom/google/googlex/gcam/AeShotParams;->e(Lcom/google/googlex/gcam/NormalizedRect;)V

    goto :goto_e

    :cond_17
    move-object/from16 v0, p14

    :cond_18
    :goto_e
    move-object/from16 v6, p3

    iget-object v1, v6, Lgkr;->d:Ljava/lang/Object;

    check-cast v1, Lfte;

    iget-object v1, v1, Lfte;->j:Lmqp;

    invoke-virtual {v1}, Lmqp;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    if-eqz v1, :cond_19

    iget-object v2, v14, Lech;->d:Lkbc;

    const-string v3, "overrideMergedCrop"

    invoke-interface {v2, v3}, Lkbc;->g(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/google/googlex/gcam/ShotParams;->a()Lcom/google/googlex/gcam/AeShotParams;

    move-result-object v2

    new-instance v3, Lcom/google/googlex/gcam/NormalizedRect;

    invoke-direct {v3}, Lcom/google/googlex/gcam/NormalizedRect;-><init>()V

    iget v4, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v3, v4}, Lcom/google/googlex/gcam/NormalizedRect;->c(F)V

    iget v4, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v4}, Lcom/google/googlex/gcam/NormalizedRect;->e(F)V

    iget v4, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v3, v4}, Lcom/google/googlex/gcam/NormalizedRect;->d(F)V

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v1}, Lcom/google/googlex/gcam/NormalizedRect;->f(F)V

    invoke-virtual {v2, v3}, Lcom/google/googlex/gcam/AeShotParams;->e(Lcom/google/googlex/gcam/NormalizedRect;)V

    invoke-virtual {v2, v3}, Lcom/google/googlex/gcam/AeShotParams;->g(Lcom/google/googlex/gcam/NormalizedRect;)V

    :cond_19
    iget-object v1, v14, Lech;->o:Lecy;

    sget-object v2, Lecy;->b:Lecy;

    invoke-virtual {v1, v2}, Lecy;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, v14, Lech;->d:Lkbc;

    const-string v2, "expandMergedCrop"

    invoke-interface {v1, v2}, Lkbc;->g(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/google/googlex/gcam/ShotParams;->a()Lcom/google/googlex/gcam/AeShotParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlex/gcam/AeShotParams;->b()Lcom/google/googlex/gcam/NormalizedRect;

    move-result-object v2

    iget-wide v3, v2, Lcom/google/googlex/gcam/NormalizedRect;->a:J

    invoke-static {v3, v4, v2}, Lcom/google/googlex/gcam/GcamModuleJNI;->NormalizedRect_IsEmpty(JLcom/google/googlex/gcam/NormalizedRect;)Z

    move-result v2

    if-nez v2, :cond_1a

    invoke-virtual {v1}, Lcom/google/googlex/gcam/AeShotParams;->b()Lcom/google/googlex/gcam/NormalizedRect;

    move-result-object v25

    invoke-virtual {v1}, Lcom/google/googlex/gcam/AeShotParams;->a()Lcom/google/googlex/gcam/NormalizedRect;

    move-result-object v28

    new-instance v2, Lcom/google/googlex/gcam/NormalizedRect;

    invoke-static/range {v25 .. v25}, Lcom/google/googlex/gcam/NormalizedRect;->a(Lcom/google/googlex/gcam/NormalizedRect;)J

    move-result-wide v23

    invoke-static/range {v28 .. v28}, Lcom/google/googlex/gcam/NormalizedRect;->a(Lcom/google/googlex/gcam/NormalizedRect;)J

    move-result-wide v26

    invoke-static/range {v23 .. v28}, Lcom/google/googlex/gcam/GcamModuleJNI;->Union(JLcom/google/googlex/gcam/NormalizedRect;JLcom/google/googlex/gcam/NormalizedRect;)J

    move-result-wide v3

    invoke-direct {v2, v3, v4, v13}, Lcom/google/googlex/gcam/NormalizedRect;-><init>(JZ)V

    invoke-virtual {v1, v2}, Lcom/google/googlex/gcam/AeShotParams;->g(Lcom/google/googlex/gcam/NormalizedRect;)V

    :cond_1a
    iget-object v1, v14, Lech;->d:Lkbc;

    invoke-interface {v1}, Lkbc;->f()V

    iget-object v1, v14, Lech;->d:Lkbc;

    const-string v2, "createShot"

    invoke-interface {v1, v2}, Lkbc;->g(Ljava/lang/String;)V

    iget-object v1, v14, Lech;->U:Lbkc;

    iget-object v1, v1, Lbkc;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/googlex/gcam/InitParams;

    invoke-virtual {v1}, Lcom/google/googlex/gcam/InitParams;->a()Lnqk;

    move-result-object v1

    iget v1, v1, Lnqk;->f:I

    invoke-static {v1}, Lnsy;->c(I)I

    move-result v1

    if-nez v1, :cond_1b

    const/16 v23, 0x1

    goto :goto_f

    :cond_1b
    move/from16 v23, v1

    :goto_f
    new-instance v5, Leea;

    move-object v1, v5

    iget-object v2, v14, Lech;->j:Lnrz;

    iget-object v4, v14, Lech;->p:Landroid/util/DisplayMetrics;

    iget-object v7, v14, Lech;->T:Ligo;

    iget-object v8, v14, Lech;->z:Ldin;

    iget-object v3, v14, Lech;->S:Ldne;

    move/from16 v26, v9

    move-object v9, v3

    iget-object v3, v14, Lech;->o:Lecy;

    move-object v11, v3

    iget-object v3, v14, Lech;->R:Lhnb;

    invoke-interface {v3}, Lhnb;->e()Lhna;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v3, v21

    move-object/from16 v37, v5

    move-object/from16 v5, p3

    move/from16 v6, v23

    move-object v10, v15

    move/from16 v12, v22

    move-object/from16 v13, p6

    move-object/from16 v14, p14

    move-object/from16 v38, v15

    move-object/from16 v15, p1

    invoke-direct/range {v1 .. v20}, Leea;-><init>(Lnrz;Leec;Landroid/util/DisplayMetrics;Lgkr;ILigo;Ldin;Ldne;Lcom/google/googlex/gcam/ShotParams;Lecy;ZLkou;Lega;Lkll;Lhna;[B[B[B[B)V

    move-object/from16 v1, p0

    iget-object v2, v1, Lech;->d:Lkbc;

    const-string v3, "createShotCallbacks"

    invoke-interface {v2, v3}, Lkbc;->g(Ljava/lang/String;)V

    new-instance v2, Lcom/google/googlex/gcam/ShotCallbacks;

    invoke-direct {v2}, Lcom/google/googlex/gcam/ShotCallbacks;-><init>()V

    move-object/from16 v3, v37

    iget-object v4, v3, Leea;->l:Leec;

    invoke-virtual {v4}, Leec;->i()Lmqp;

    move-result-object v4

    invoke-virtual {v4}, Lmqp;->g()Z

    move-result v4

    if-eqz v4, :cond_1c

    iget-object v4, v3, Leea;->f:Lnrz;

    iget-wide v5, v2, Lcom/google/googlex/gcam/ShotCallbacks;->a:J

    new-instance v7, Ledv;

    invoke-direct {v7, v3}, Ledv;-><init>(Leea;)V

    check-cast v4, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;->nativeSetProgressCallback(JLcom/google/googlex/gcam/base/function/IntFloatConsumer;)V

    :cond_1c
    iget-object v4, v3, Leea;->u:Llzz;

    iget-object v5, v3, Leea;->t:Ledz;

    iget-object v4, v4, Llzz;->a:Ljava/lang/Object;

    iget-wide v7, v2, Lcom/google/googlex/gcam/ShotCallbacks;->a:J

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Lnsg;

    invoke-direct {v9, v5}, Lnsg;-><init>(Ledz;)V

    new-instance v10, Lnsh;

    invoke-direct {v10, v5}, Lnsh;-><init>(Ledz;)V

    new-instance v11, Lnsi;

    invoke-direct {v11, v5}, Lnsi;-><init>(Ledz;)V

    move-object v6, v4

    check-cast v6, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;

    invoke-virtual/range {v6 .. v11}, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;->nativeSetShotStatusCallbacks(JLcom/google/googlex/gcam/base/function/IntByteArrayConsumer;Lcom/google/googlex/gcam/base/function/IntStringConsumer;Lcom/google/googlex/gcam/base/function/IntConsumer;)V

    iget-object v4, v3, Leea;->l:Leec;

    invoke-virtual {v4}, Leec;->a()Lmqp;

    move-result-object v4

    invoke-virtual {v4}, Lmqp;->g()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1d

    iget-object v4, v3, Leea;->u:Llzz;

    new-instance v6, Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-direct {v6, v3}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Leea;)V

    iget-object v4, v4, Llzz;->a:Ljava/lang/Object;

    iget-wide v7, v2, Lcom/google/googlex/gcam/ShotCallbacks;->a:J

    new-instance v9, Lnsf;

    invoke-direct {v9, v6, v5, v5, v5}, Lnsf;-><init>(Landroidx/wear/ambient/AmbientMode$AmbientController;[B[B[B)V

    check-cast v4, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;

    invoke-virtual {v4, v7, v8, v9}, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;->nativeSetBaseFrameAeCallback(JLcom/google/googlex/gcam/hdrplus/BaseFrameAeCallback;)V

    :cond_1d
    iget-object v4, v3, Leea;->l:Leec;

    invoke-virtual {v4}, Leec;->b()Lmqp;

    move-result-object v4

    invoke-virtual {v4}, Lmqp;->g()Z

    move-result v4

    if-eqz v4, :cond_1e

    iget-object v4, v3, Leea;->f:Lnrz;

    iget-wide v6, v2, Lcom/google/googlex/gcam/ShotCallbacks;->a:J

    new-instance v8, Ledx;

    invoke-direct {v8, v3}, Ledx;-><init>(Leea;)V

    check-cast v4, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;

    invoke-virtual {v4, v6, v7, v8}, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;->nativeSetBaseFrameCallback(JLcom/google/googlex/gcam/hdrplus/BaseFrameCallback;)V

    :cond_1e
    iget-object v4, v3, Leea;->g:Lcom/google/googlex/gcam/clientallocator/InterleavedU8ClientAllocator;

    if-nez v4, :cond_20

    iget-object v6, v3, Leea;->h:Lnrs;

    if-eqz v6, :cond_1f

    goto :goto_10

    :cond_1f
    const/4 v7, 0x1

    goto :goto_12

    :cond_20
    :goto_10
    if-eqz v4, :cond_21

    iget-object v6, v3, Leea;->f:Lnrz;

    iget-wide v7, v2, Lcom/google/googlex/gcam/ShotCallbacks;->a:J

    check-cast v6, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;

    invoke-virtual {v6, v7, v8, v4}, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;->nativeSetPostviewRgbAllocator(JLcom/google/googlex/gcam/clientallocator/InterleavedU8ClientAllocator;)V

    goto :goto_11

    :cond_21
    iget-object v4, v3, Leea;->h:Lnrs;

    if-eqz v4, :cond_22

    iget-object v6, v3, Leea;->f:Lnrz;

    iget-wide v7, v2, Lcom/google/googlex/gcam/ShotCallbacks;->a:J

    check-cast v6, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;

    invoke-virtual {v6, v7, v8, v4}, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;->nativeSetPostviewYuvAllocator(JLcom/google/googlex/gcam/clientallocator/YuvClientAllocator;)V

    :cond_22
    :goto_11
    iget-object v4, v3, Leea;->u:Llzz;

    new-instance v6, Ledy;

    const/4 v7, 0x1

    invoke-direct {v6, v3, v7}, Ledy;-><init>(Leea;I)V

    iget-object v4, v4, Llzz;->a:Ljava/lang/Object;

    iget-wide v8, v2, Lcom/google/googlex/gcam/ShotCallbacks;->a:J

    invoke-static {v6}, Llzz;->z(Lnsl;)Lcom/google/googlex/gcam/hdrplus/ManagedImageCallback;

    move-result-object v6

    check-cast v4, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;

    invoke-virtual {v4, v8, v9, v6}, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;->nativeSetPostviewCallback(JLcom/google/googlex/gcam/hdrplus/ManagedImageCallback;)V

    :goto_12
    iget-object v4, v3, Leea;->i:Lcom/google/googlex/gcam/clientallocator/InterleavedU8ClientAllocator;

    if-nez v4, :cond_24

    iget-object v6, v3, Leea;->j:Lnrs;

    if-eqz v6, :cond_23

    goto :goto_13

    :cond_23
    const/4 v8, 0x0

    goto :goto_14

    :cond_24
    :goto_13
    if-eqz v4, :cond_25

    iget-object v6, v3, Leea;->f:Lnrz;

    iget-wide v8, v2, Lcom/google/googlex/gcam/ShotCallbacks;->a:J

    check-cast v6, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;

    invoke-virtual {v6, v8, v9, v4}, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;->nativeSetFinalImageRgbAllocator(JLcom/google/googlex/gcam/clientallocator/InterleavedU8ClientAllocator;)V

    :cond_25
    iget-object v4, v3, Leea;->j:Lnrs;

    if-eqz v4, :cond_26

    iget-object v6, v3, Leea;->f:Lnrz;

    iget-wide v8, v2, Lcom/google/googlex/gcam/ShotCallbacks;->a:J

    check-cast v6, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;

    invoke-virtual {v6, v8, v9, v4}, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;->nativeSetFinalImageYuvAllocator(JLcom/google/googlex/gcam/clientallocator/YuvClientAllocator;)V

    :cond_26
    iget-object v4, v3, Leea;->u:Llzz;

    new-instance v6, Ledy;

    const/4 v8, 0x0

    invoke-direct {v6, v3, v8}, Ledy;-><init>(Leea;I)V

    iget-object v4, v4, Llzz;->a:Ljava/lang/Object;

    iget-wide v9, v2, Lcom/google/googlex/gcam/ShotCallbacks;->a:J

    invoke-static {v6}, Llzz;->z(Lnsl;)Lcom/google/googlex/gcam/hdrplus/ManagedImageCallback;

    move-result-object v6

    check-cast v4, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;

    invoke-virtual {v4, v9, v10, v6}, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;->nativeSetFinalImageCallback(JLcom/google/googlex/gcam/hdrplus/ManagedImageCallback;)V

    :goto_14
    iget-object v4, v3, Leea;->l:Leec;

    invoke-virtual {v4}, Leec;->c()Lmqp;

    move-result-object v4

    invoke-virtual {v4}, Lmqp;->g()Z

    move-result v4

    if-eqz v4, :cond_27

    iget-object v4, v3, Leea;->f:Lnrz;

    iget-wide v9, v2, Lcom/google/googlex/gcam/ShotCallbacks;->a:J

    new-instance v6, Lnry;

    invoke-direct {v6, v3, v7}, Lnry;-><init>(Leea;I)V

    new-instance v11, Lnry;

    invoke-direct {v11, v6, v8}, Lnry;-><init>(Lcom/google/googlex/gcam/hdrplus/EncodedBlobCallback;I)V

    check-cast v4, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;

    invoke-virtual {v4, v9, v10, v11}, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;->nativeSetMergedDngCallback(JLcom/google/googlex/gcam/hdrplus/EncodedBlobCallback;)V

    :cond_27
    iget-object v4, v3, Leea;->l:Leec;

    invoke-virtual {v4}, Leec;->j()Lmqp;

    move-result-object v4

    invoke-virtual {v4}, Lmqp;->g()Z

    move-result v4

    if-eqz v4, :cond_28

    new-instance v4, Lnrr;

    invoke-direct {v4}, Lnrr;-><init>()V

    iget-object v6, v3, Leea;->f:Lnrz;

    iget-wide v9, v2, Lcom/google/googlex/gcam/ShotCallbacks;->a:J

    check-cast v6, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;

    invoke-virtual {v6, v9, v10, v4}, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;->nativeSetMergedRawImageAllocator(JLcom/google/googlex/gcam/clientallocator/RawClientAllocator;)V

    iget-object v6, v3, Leea;->u:Llzz;

    new-instance v9, Lfxf;

    invoke-direct {v9, v3, v4}, Lfxf;-><init>(Leea;Lnrr;)V

    iget-object v4, v6, Llzz;->a:Ljava/lang/Object;

    iget-wide v10, v2, Lcom/google/googlex/gcam/ShotCallbacks;->a:J

    new-instance v6, Lnsj;

    invoke-direct {v6, v9, v5, v5}, Lnsj;-><init>(Lfxf;[B[B)V

    check-cast v4, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;

    invoke-virtual {v4, v10, v11, v6}, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;->nativeSetMergedRawImageCallback(JLcom/google/googlex/gcam/hdrplus/MergedRawCallback;)V

    :cond_28
    iget-object v4, v3, Leea;->l:Leec;

    invoke-virtual {v4}, Leec;->d()Lmqp;

    move-result-object v4

    invoke-virtual {v4}, Lmqp;->g()Z

    move-result v4

    if-eqz v4, :cond_29

    iget-object v4, v3, Leea;->u:Llzz;

    new-instance v6, Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-direct {v6, v3}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Leea;)V

    iget-object v4, v4, Llzz;->a:Ljava/lang/Object;

    iget-wide v9, v2, Lcom/google/googlex/gcam/ShotCallbacks;->a:J

    new-instance v11, Lnse;

    invoke-direct {v11, v6, v5, v5, v5}, Lnse;-><init>(Landroidx/wear/ambient/AmbientMode$AmbientController;[B[B[B)V

    check-cast v4, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;

    invoke-virtual {v4, v9, v10, v11}, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;->nativeSetMutableMergedRawCallback(JLcom/google/googlex/gcam/hdrplus/MutableMergedRawCallback;)V

    :cond_29
    iget-object v4, v3, Leea;->l:Leec;

    invoke-virtual {v4}, Leec;->e()Lmqp;

    move-result-object v4

    invoke-virtual {v4}, Lmqp;->g()Z

    move-result v4

    if-eqz v4, :cond_2a

    iget-object v4, v3, Leea;->f:Lnrz;

    iget-wide v9, v2, Lcom/google/googlex/gcam/ShotCallbacks;->a:J

    iget-object v6, v3, Leea;->k:Lnrp;

    check-cast v4, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;

    invoke-virtual {v4, v9, v10, v6}, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;->nativeSetMergedPdAllocator(JLcom/google/googlex/gcam/clientallocator/InterleavedU16ClientAllocator;)V

    iget-object v4, v3, Leea;->f:Lnrz;

    iget-wide v9, v2, Lcom/google/googlex/gcam/ShotCallbacks;->a:J

    new-instance v6, Ledw;

    invoke-direct {v6, v3}, Ledw;-><init>(Leea;)V

    check-cast v4, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;

    invoke-virtual {v4, v9, v10, v6}, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;->nativeSetMergedPdCallback(JLcom/google/googlex/gcam/base/function/IntLongConsumer;)V

    :cond_2a
    iget-object v4, v1, Lech;->B:Lebe;

    iget-object v6, v1, Lech;->o:Lecy;

    invoke-virtual {v4, v6}, Lebe;->f(Lecy;)Z

    move-result v4

    if-eqz v4, :cond_35

    iget-object v4, v1, Lech;->d:Lkbc;

    const-string v6, "slowRawSetup"

    invoke-interface {v4, v6}, Lkbc;->g(Ljava/lang/String;)V

    iget-object v4, v1, Lech;->u:Loiw;

    check-cast v4, Lfix;

    invoke-virtual {v4}, Lfix;->b()Lmqp;

    move-result-object v4

    invoke-virtual {v4}, Lmqp;->g()Z

    move-result v6

    if-eqz v6, :cond_35

    move-object/from16 v6, p3

    iget-object v9, v6, Lgkr;->c:Ljava/lang/Object;

    if-eqz v9, :cond_2b

    invoke-interface {v9}, Lgxl;->d()J

    move-result-wide v9

    goto :goto_15

    :cond_2b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    :goto_15
    invoke-virtual {v4}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v11

    const-wide/32 v13, 0x40000000

    cmp-long v15, v11, v13

    if-gtz v15, :cond_2c

    iget-object v11, v1, Lech;->S:Ldne;

    const-string v12, "Cache has less than 1GB free. Slowraw data may be silently deleted."

    invoke-virtual {v11, v12}, Ldne;->f(Ljava/lang/String;)V

    :cond_2c
    if-eqz p10, :cond_31

    :try_start_0
    iget-object v11, v1, Lech;->o:Lecy;

    sget-object v12, Lecy;->b:Lecy;

    invoke-virtual {v11, v12}, Lecy;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2d

    iget-object v11, v1, Lech;->o:Lecy;

    sget-object v12, Lecy;->a:Lecy;

    invoke-virtual {v11, v12}, Lecy;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_31

    :cond_2d
    iget-object v11, v1, Lech;->o:Lecy;

    sget-object v12, Lecy;->b:Lecy;

    invoke-virtual {v11, v12}, Lecy;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2e

    iget-object v11, v1, Lech;->l:Ldhi;

    sget-object v12, Ldho;->ag:Ldhj;

    invoke-interface {v11, v12}, Ldhi;->l(Ldhj;)Z

    move-result v11

    if-nez v11, :cond_2f

    :cond_2e
    iget-object v0, v0, Lega;->b:Lefz;

    sget-object v11, Lefz;->b:Lefz;

    if-ne v0, v11, :cond_30

    :cond_2f
    iget-object v0, v1, Lech;->g:Ljava/lang/String;

    goto :goto_16

    :cond_30
    iget-object v0, v1, Lech;->f:Ljava/lang/String;

    :goto_16
    iget-object v11, v1, Lech;->B:Lebe;

    invoke-virtual {v4}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "camera_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v4, v9, v10, v0}, Lebe;->c(Ljava/io/File;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :catch_0
    move-exception v0

    goto :goto_19

    :cond_31
    if-eqz p10, :cond_32

    iget-object v0, v1, Lech;->o:Lecy;

    sget-object v11, Lecy;->c:Lecy;

    invoke-virtual {v0, v11}, Lecy;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, v1, Lech;->B:Lebe;

    invoke-virtual {v4}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "camera_kepler_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, p11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v4, v9, v10, v11}, Lebe;->c(Ljava/io/File;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :cond_32
    iget-object v0, v1, Lech;->B:Lebe;

    invoke-virtual {v4}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    const-string v11, ""

    invoke-virtual {v0, v4, v9, v10, v11}, Lebe;->c(Ljava/io/File;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_17
    iput-object v0, v1, Lech;->y:Ljava/lang/String;

    new-instance v4, Lcom/google/googlex/gcam/ImageSaverParams;

    invoke-direct {v4}, Lcom/google/googlex/gcam/ImageSaverParams;-><init>()V

    invoke-virtual {v4, v0}, Lcom/google/googlex/gcam/ImageSaverParams;->b(Ljava/lang/String;)V

    new-instance v9, Lcom/google/googlex/gcam/DebugParams;

    invoke-direct {v9}, Lcom/google/googlex/gcam/DebugParams;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-wide v10, Lebe;->e:J

    invoke-virtual {v9, v10, v11}, Lcom/google/googlex/gcam/DebugParams;->d(J)V

    invoke-virtual {v9, v4}, Lcom/google/googlex/gcam/DebugParams;->c(Lcom/google/googlex/gcam/ImageSaverParams;)V

    if-nez p10, :cond_33

    iget-object v4, v6, Lgkr;->c:Ljava/lang/Object;

    if-eqz v4, :cond_33

    new-instance v10, Lcvr;

    invoke-direct {v10, v0}, Lcvr;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v10}, Lgxl;->ac(Lcvr;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_18

    :cond_33
    :goto_18
    move-object/from16 v35, v9

    goto :goto_1c

    :catch_1
    move-exception v0

    goto :goto_1a

    :goto_19
    move-object v9, v5

    :goto_1a
    sget-object v4, Lech;->e:Lnak;

    invoke-virtual {v4}, Lnaf;->b()Lnaz;

    move-result-object v4

    const-string v10, "%s"

    const-string v11, "Failed to create Gcam debug data folder!"

    const/16 v12, 0x50d

    invoke-static {v4, v10, v11, v12, v0}, Ld;->i(Lnaz;Ljava/lang/String;Ljava/lang/Object;CLjava/lang/Throwable;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v4, v1, Lech;->S:Ldne;

    if-nez v0, :cond_34

    goto :goto_1b

    :cond_34
    move-object v11, v0

    :goto_1b
    invoke-virtual {v4, v11}, Ldne;->f(Ljava/lang/String;)V

    move-object/from16 v35, v9

    goto :goto_1c

    :cond_35
    move-object/from16 v6, p3

    move-object/from16 v35, v5

    :goto_1c
    iget-object v0, v1, Lech;->d:Lkbc;

    const-string v4, "getPrimaryOutputFormat"

    invoke-interface {v0, v4}, Lkbc;->g(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Leec;->k()Lmqp;

    move-result-object v0

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_36

    sget-object v0, Lebe;->b:Lnqz;

    goto :goto_1d

    :cond_36
    invoke-virtual/range {v21 .. v21}, Leec;->l()Lmqp;

    move-result-object v0

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_37

    sget-object v0, Lebe;->c:Lnqz;

    goto :goto_1d

    :cond_37
    invoke-virtual/range {v21 .. v21}, Leec;->n()Lmqp;

    move-result-object v0

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_38

    sget-object v0, Lebe;->d:Lnqz;

    goto :goto_1d

    :cond_38
    sget-object v0, Lnqz;->a:Lnqz;

    :goto_1d
    iget-object v4, v1, Lech;->d:Lkbc;

    const-string v9, "Gcam::StartShotCapture"

    invoke-interface {v4, v9}, Lkbc;->g(Ljava/lang/String;)V

    iget-wide v9, v2, Lcom/google/googlex/gcam/ShotCallbacks;->a:J

    iget v0, v0, Lnqz;->l:I

    invoke-static {v9, v10, v2, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotCallbacks_final_image_pixel_format_set(JLcom/google/googlex/gcam/ShotCallbacks;I)V

    iget-wide v9, v2, Lcom/google/googlex/gcam/ShotCallbacks;->a:J

    move-object/from16 v4, p4

    iget-wide v11, v4, Lcom/google/googlex/gcam/PostviewParams;->a:J

    move-wide/from16 p5, v9

    move-object/from16 p7, v2

    move-wide/from16 p8, v11

    move-object/from16 p10, p4

    invoke-static/range {p5 .. p10}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotCallbacks_postview_params_set(JLcom/google/googlex/gcam/ShotCallbacks;JLcom/google/googlex/gcam/PostviewParams;)V

    iget-object v0, v1, Lech;->i:Lcom/google/googlex/gcam/Gcam;

    iget-wide v9, v0, Lcom/google/googlex/gcam/Gcam;->a:J

    move-object/from16 v4, v38

    iget-wide v11, v4, Lcom/google/googlex/gcam/ShotParams;->a:J

    iget-wide v13, v2, Lcom/google/googlex/gcam/ShotCallbacks;->a:J

    invoke-static/range {v35 .. v35}, Lcom/google/googlex/gcam/DebugParams;->a(Lcom/google/googlex/gcam/DebugParams;)J

    move-result-wide v33

    move-wide/from16 v23, v9

    move-object/from16 v25, v0

    move-wide/from16 v27, v11

    move-object/from16 v29, v4

    move-wide/from16 v30, v13

    move-object/from16 v32, v2

    invoke-static/range {v23 .. v35}, Lcom/google/googlex/gcam/GcamModuleJNI;->Gcam_StartShotCapture(JLcom/google/googlex/gcam/Gcam;IJLcom/google/googlex/gcam/ShotParams;JLcom/google/googlex/gcam/ShotCallbacks;JLcom/google/googlex/gcam/DebugParams;)I

    move-result v0

    iget-object v2, v1, Lech;->d:Lkbc;

    invoke-interface {v2}, Lkbc;->f()V

    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->kInvalidShotId_get()I

    move-result v2

    if-ne v0, v2, :cond_3a

    iget-object v0, v1, Lech;->z:Ldin;

    const-string v2, "Gcam::StartShotCapture() returned an invalid shot id."

    sget-object v3, Ldin;->d:Ldin;

    if-ne v0, v3, :cond_39

    sget-object v0, Lech;->e:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v3, "%s"

    const/16 v4, 0x50c

    invoke-static {v0, v3, v2, v4}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    return-object v5

    :cond_39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3a
    iget-object v2, v6, Lgkr;->d:Ljava/lang/Object;

    check-cast v2, Lfte;

    iget-object v2, v2, Lfte;->f:Ljuf;

    iget-object v4, v1, Lech;->A:Lebj;

    new-instance v5, Loxq;

    invoke-direct {v5, v0}, Loxq;-><init>(I)V

    iget-object v6, v4, Lebj;->a:Ljava/lang/Object;

    monitor-enter v6

    :try_start_2
    iget-object v9, v4, Lebj;->b:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    new-instance v6, Lchq;

    const/16 v9, 0x14

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 p1, v6

    move-object/from16 p2, v4

    move-object/from16 p3, v5

    move/from16 p4, v9

    move-object/from16 p5, v10

    move-object/from16 p6, v11

    move-object/from16 p7, v12

    invoke-direct/range {p1 .. p7}, Lchq;-><init>(Lebj;Loxq;I[B[B[B)V

    invoke-virtual {v2, v6}, Ljuf;->d(Lkad;)V

    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->kInvalidShotId_get()I

    move-result v2

    if-eq v0, v2, :cond_3b

    const/4 v13, 0x1

    goto :goto_1e

    :cond_3b
    const/4 v13, 0x0

    :goto_1e
    invoke-static {v13}, Lmoz;->e(Z)V

    iget v2, v3, Leea;->c:I

    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->kInvalidShotId_get()I

    move-result v4

    if-ne v2, v4, :cond_3c

    const/4 v13, 0x1

    goto :goto_1f

    :cond_3c
    const/4 v13, 0x0

    :goto_1f
    invoke-static {v13}, Lmoz;->p(Z)V

    iput v0, v3, Leea;->c:I

    return-object v3

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final A(Lkll;Lkou;Lkpb;Lkpb;Lkll;Lkou;Lkpb;)Z
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    iget-object v6, v0, Lech;->d:Lkbc;

    const-string v7, "LiveTemporalBinning"

    invoke-interface {v6, v7}, Lkbc;->e(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lech;->i(Lkou;)Lcom/google/googlex/gcam/GyroSampleVector;

    move-result-object v6

    iget-object v7, v0, Lech;->d:Lkbc;

    const-string v8, "metadata"

    invoke-interface {v7, v8}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v7, v0, Lech;->q:Lnsc;

    const/4 v8, 0x0

    move-object/from16 v9, p1

    invoke-virtual {v7, v1, v6, v8, v9}, Lnsc;->j(Lkou;Lcom/google/googlex/gcam/GyroSampleVector;Ljava/util/Map;Lkll;)Lcom/google/googlex/gcam/FrameMetadata;

    move-result-object v1

    iget-object v7, v0, Lech;->d:Lkbc;

    invoke-interface {v7}, Lkbc;->f()V

    iget-object v7, v0, Lech;->r:Lnsb;

    invoke-virtual {v7, v2}, Lnsb;->b(Lkpb;)Lcom/google/googlex/gcam/RawWriteView;

    move-result-object v7

    if-nez v3, :cond_0

    new-instance v10, Lcom/google/googlex/gcam/RawWriteView;

    invoke-direct {v10}, Lcom/google/googlex/gcam/RawWriteView;-><init>()V

    goto :goto_0

    :cond_0
    iget-object v10, v0, Lech;->r:Lnsb;

    invoke-virtual {v10, v3}, Lnsb;->a(Lkpb;)Lmqp;

    move-result-object v10

    new-instance v11, Lcom/google/googlex/gcam/RawWriteView;

    invoke-direct {v11}, Lcom/google/googlex/gcam/RawWriteView;-><init>()V

    invoke-virtual {v10, v11}, Lmqp;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/googlex/gcam/RawWriteView;

    :goto_0
    const/16 v11, 0x14

    if-eqz v3, :cond_1

    new-instance v12, Ldrh;

    invoke-direct {v12, v3, v11}, Ldrh;-><init>(Lkpb;I)V

    move-object/from16 v24, v12

    goto :goto_1

    :cond_1
    move-object/from16 v24, v8

    :goto_1
    if-eqz v5, :cond_2

    if-eqz v4, :cond_2

    iget-object v3, v0, Lech;->q:Lnsc;

    move-object/from16 v12, p5

    invoke-virtual {v3, v4, v6, v8, v12}, Lnsc;->j(Lkou;Lcom/google/googlex/gcam/GyroSampleVector;Ljava/util/Map;Lkll;)Lcom/google/googlex/gcam/FrameMetadata;

    move-result-object v3

    goto :goto_2

    :cond_2
    new-instance v3, Lcom/google/googlex/gcam/FrameMetadata;

    invoke-direct {v3}, Lcom/google/googlex/gcam/FrameMetadata;-><init>()V

    :goto_2
    if-eqz v5, :cond_3

    iget-object v4, v0, Lech;->r:Lnsb;

    invoke-virtual {v4, v5}, Lnsb;->b(Lkpb;)Lcom/google/googlex/gcam/RawWriteView;

    move-result-object v4

    goto :goto_3

    :cond_3
    new-instance v4, Lcom/google/googlex/gcam/RawWriteView;

    invoke-direct {v4}, Lcom/google/googlex/gcam/RawWriteView;-><init>()V

    :goto_3
    if-eqz v5, :cond_4

    new-instance v8, Ldrh;

    invoke-direct {v8, v5, v11}, Ldrh;-><init>(Lkpb;I)V

    move-object/from16 v29, v8

    goto :goto_4

    :cond_4
    move-object/from16 v29, v8

    :goto_4
    iget-object v5, v0, Lech;->l:Ldhi;

    sget-object v6, Ldhq;->a:Ldhk;

    invoke-interface {v5}, Ldhi;->c()V

    invoke-virtual/range {p0 .. p1}, Lech;->a(Lkll;)I

    move-result v16

    iget-object v5, v0, Lech;->j:Lnrz;

    iget-object v6, v0, Lech;->i:Lcom/google/googlex/gcam/Gcam;

    invoke-static {v6}, Lcom/google/googlex/gcam/Gcam;->a(Lcom/google/googlex/gcam/Gcam;)J

    move-result-wide v14

    invoke-static {v1}, Lcom/google/googlex/gcam/FrameMetadata;->b(Lcom/google/googlex/gcam/FrameMetadata;)J

    move-result-wide v17

    invoke-static {v7}, Lcom/google/googlex/gcam/RawWriteView;->c(Lcom/google/googlex/gcam/RawWriteView;)J

    move-result-wide v19

    new-instance v6, Ldrh;

    invoke-direct {v6, v2, v11}, Ldrh;-><init>(Lkpb;I)V

    invoke-static {v10}, Lcom/google/googlex/gcam/RawWriteView;->c(Lcom/google/googlex/gcam/RawWriteView;)J

    move-result-wide v22

    invoke-static {v3}, Lcom/google/googlex/gcam/FrameMetadata;->b(Lcom/google/googlex/gcam/FrameMetadata;)J

    move-result-wide v25

    invoke-static {v4}, Lcom/google/googlex/gcam/RawWriteView;->c(Lcom/google/googlex/gcam/RawWriteView;)J

    move-result-wide v27

    iget-object v2, v0, Lech;->k:Lebi;

    iget-object v8, v2, Lebi;->a:Ldhi;

    sget-object v9, Ldhq;->m:Ldhk;

    invoke-interface {v8, v9}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v8

    invoke-virtual {v8}, Lj$/util/Optional;->isPresent()Z

    move-result v8

    if-nez v8, :cond_5

    const/4 v2, -0x1

    const/16 v31, -0x1

    goto :goto_5

    :cond_5
    iget-object v2, v2, Lebi;->a:Ldhi;

    sget-object v8, Ldhq;->m:Ldhk;

    invoke-interface {v2, v8}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v31, v2

    :goto_5
    move-object v13, v5

    check-cast v13, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;

    const/16 v30, 0x0

    move-object/from16 v21, v6

    invoke-virtual/range {v13 .. v31}, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;->nativeTemporallyBinViewfinderFrame(JIJJLjava/lang/Runnable;JLjava/lang/Runnable;JJLjava/lang/Runnable;ZI)Z

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    iget-object v1, v0, Lech;->d:Lkbc;

    invoke-interface {v1}, Lkbc;->f()V

    return v2
.end method

.method public final B(Leea;Lkpb;Lkou;ZLjava/lang/Boolean;Lebb;Lj$/util/Optional;)Lcom/google/googlex/gcam/BurstSpec;
    .locals 20

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lech;->L()V

    iget-object v1, v0, Lech;->d:Lkbc;

    const-string v2, "convertFrame"

    invoke-interface {v1, v2}, Lkbc;->e(Ljava/lang/String;)V

    move-object/from16 v1, p1

    iget-boolean v2, v1, Leea;->n:Z

    iget-object v3, v0, Lech;->t:Lkaf;

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-virtual {v0, v4, v5, v2, v3}, Lech;->e(Lkpb;Lkou;ZLkaf;)Lecz;

    move-result-object v2

    iget-object v3, v0, Lech;->d:Lkbc;

    const-string v4, "setOptions"

    invoke-interface {v3, v4}, Lkbc;->g(Ljava/lang/String;)V

    iget-object v3, v0, Lech;->Q:Leao;

    move/from16 v4, p4

    iput-boolean v4, v3, Leao;->a:Z

    move-object/from16 v4, p5

    iput-object v4, v3, Leao;->b:Ljava/lang/Boolean;

    invoke-virtual/range {p1 .. p1}, Leea;->c()Z

    move-result v4

    iput-boolean v4, v3, Leao;->c:Z

    invoke-virtual/range {p1 .. p1}, Leea;->b()Lcom/google/googlex/gcam/ShotParams;

    move-result-object v4

    iget-wide v5, v4, Lcom/google/googlex/gcam/ShotParams;->a:J

    invoke-static {v5, v6, v4}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_device_is_on_tripod_get(JLcom/google/googlex/gcam/ShotParams;)Z

    move-result v4

    iput-boolean v4, v3, Leao;->d:Z

    iget-object v4, v0, Lech;->D:Lecb;

    iget-object v4, v4, Lecb;->b:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sget-wide v7, Lecb;->a:J

    cmp-long v9, v5, v7

    if-ltz v9, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    iput-boolean v4, v3, Leao;->e:Z

    move-object/from16 v4, p6

    iget-boolean v4, v4, Lebb;->l:Z

    iput-boolean v4, v3, Leao;->f:Z

    move-object/from16 v4, p7

    iput-object v4, v3, Leao;->g:Lj$/util/Optional;

    invoke-virtual {v3}, Leao;->a()Lcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;

    move-result-object v3

    iget-object v4, v0, Lech;->d:Lkbc;

    const-string v5, "computeSpec"

    invoke-interface {v4, v5}, Lkbc;->g(Ljava/lang/String;)V

    iget-object v6, v0, Lech;->i:Lcom/google/googlex/gcam/Gcam;

    invoke-virtual/range {p1 .. p1}, Leea;->a()I

    move-result v7

    iget-object v10, v2, Lecz;->a:Lcom/google/googlex/gcam/RawWriteView;

    iget-object v13, v2, Lecz;->b:Lcom/google/googlex/gcam/FrameMetadata;

    iget-object v1, v2, Lecz;->c:Lcom/google/googlex/gcam/SpatialGainMap;

    new-instance v2, Lcom/google/googlex/gcam/BurstSpec;

    iget-wide v4, v6, Lcom/google/googlex/gcam/Gcam;->a:J

    iget-wide v8, v10, Lcom/google/googlex/gcam/RawReadView;->a:J

    invoke-static {v13}, Lcom/google/googlex/gcam/FrameMetadata;->b(Lcom/google/googlex/gcam/FrameMetadata;)J

    move-result-wide v11

    iget-wide v14, v1, Lcom/google/googlex/gcam/SpatialGainMap;->a:J

    move-object/from16 v16, v1

    iget-wide v0, v3, Lcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;->a:J

    move-wide/from16 v17, v0

    move-object/from16 v19, v3

    invoke-static/range {v4 .. v19}, Lcom/google/googlex/gcam/GcamModuleJNI;->Gcam_BuildPayloadBurstSpec__SWIG_0(JLcom/google/googlex/gcam/Gcam;IJLcom/google/googlex/gcam/RawReadView;JLcom/google/googlex/gcam/FrameMetadata;JLcom/google/googlex/gcam/SpatialGainMap;JLcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;)J

    move-result-wide v0

    invoke-direct {v2, v0, v1}, Lcom/google/googlex/gcam/BurstSpec;-><init>(J)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lech;->d:Lkbc;

    invoke-interface {v1}, Lkbc;->f()V

    return-object v2
.end method

.method public final C(Leea;Lkll;ILkou;Lnqg;Lkpb;)V
    .locals 9

    const/4 v7, 0x0

    sget-object v8, Lmpx;->a:Lmpx;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v8}, Lech;->o(Leea;Lkll;ILkou;Lnqg;Lkpb;Lkpb;Lmqp;)V

    return-void
.end method

.method public final D(Lkll;Lkpb;Lkou;Lgcc;ZLmqp;Lmqp;Lmqp;)Landroid/graphics/Bitmap;
    .locals 35

    move-object/from16 v15, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p3

    move-object/from16 v12, p6

    invoke-virtual {v15, v14, v13}, Lech;->c(Lkou;Lkll;)I

    move-result v4

    iget-object v0, v15, Lech;->i:Lcom/google/googlex/gcam/Gcam;

    invoke-virtual {v0, v4}, Lcom/google/googlex/gcam/Gcam;->b(I)Lcom/google/googlex/gcam/StaticMetadata;

    move-result-object v16

    move-object/from16 v18, v16

    iget-object v0, v15, Lech;->q:Lnsc;

    iget-object v1, v15, Lech;->n:Ljvs;

    check-cast v1, Ljvk;

    iget-object v1, v1, Ljvk;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lnsc;->a(I)F

    move-result v1

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v8, Lmpx;->a:Lmpx;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v15, v14, v13}, Lech;->I(Lkou;Lkll;)I

    move-result v17

    const-wide/16 v19, -0x1

    sget-object v21, Lega;->a:Lega;

    move-object/from16 v0, p0

    move-object/from16 v3, p4

    move/from16 v9, p5

    move/from16 v12, v17

    move-wide/from16 v13, v19

    move-object/from16 v15, v21

    move-object/from16 v20, v16

    move-object/from16 v16, p3

    invoke-direct/range {v0 .. v16}, Lech;->K(FILgcc;IZZZLmqp;ZZZIJLega;Lkou;)Lcom/google/googlex/gcam/ShotParams;

    move-result-object v6

    move-object/from16 v16, v20

    move-object/from16 v21, v6

    move-object/from16 v7, p0

    iget-object v0, v7, Lech;->t:Lkaf;

    move-object/from16 v8, p6

    invoke-virtual {v8, v0}, Lmqp;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lkaf;

    iget-object v0, v7, Lech;->q:Lnsc;

    invoke-virtual {v6}, Lcom/google/googlex/gcam/ShotParams;->a()Lcom/google/googlex/gcam/AeShotParams;

    move-result-object v2

    iget-object v1, v7, Lech;->k:Lebi;

    iget v4, v1, Lebi;->g:F

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-virtual/range {v0 .. v5}, Lnsc;->u(Lkll;Lcom/google/googlex/gcam/AeShotParams;Lkou;FLkaf;)V

    invoke-virtual {v6}, Lcom/google/googlex/gcam/ShotParams;->a()Lcom/google/googlex/gcam/AeShotParams;

    move-result-object v0

    move-object v1, v8

    check-cast v1, Lmqt;

    iget-object v2, v1, Lmqt;->a:Ljava/lang/Object;

    check-cast v2, Lkaf;

    iget v2, v2, Lkaf;->a:I

    invoke-virtual {v0, v2}, Lcom/google/googlex/gcam/AeShotParams;->j(I)V

    invoke-virtual {v6}, Lcom/google/googlex/gcam/ShotParams;->a()Lcom/google/googlex/gcam/AeShotParams;

    move-result-object v0

    iget-object v1, v1, Lmqt;->a:Ljava/lang/Object;

    check-cast v1, Lkaf;

    iget v1, v1, Lkaf;->b:I

    invoke-virtual {v0, v1}, Lcom/google/googlex/gcam/AeShotParams;->i(I)V

    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Lech;->i(Lkou;)Lcom/google/googlex/gcam/GyroSampleVector;

    move-result-object v1

    move-object/from16 v2, p1

    invoke-virtual {v7, v0, v1, v2}, Lech;->h(Lkou;Lcom/google/googlex/gcam/GyroSampleVector;Lkll;)Lcom/google/googlex/gcam/FrameMetadata;

    move-result-object v1

    move-object/from16 v24, v1

    iget-object v2, v7, Lech;->r:Lnsb;

    move-object/from16 v3, p2

    invoke-virtual {v2, v3}, Lnsb;->b(Lkpb;)Lcom/google/googlex/gcam/RawWriteView;

    move-result-object v2

    move-object/from16 v30, v2

    iget-object v3, v7, Lech;->q:Lnsc;

    invoke-virtual {v3, v0}, Lnsc;->o(Lkou;)Lcom/google/googlex/gcam/SpatialGainMap;

    move-result-object v0

    move-object/from16 v27, v0

    new-instance v3, Lcom/google/googlex/gcam/GenerateRgbImageOptions;

    move-object/from16 v34, v3

    invoke-direct {v3}, Lcom/google/googlex/gcam/GenerateRgbImageOptions;-><init>()V

    move-object/from16 v4, p7

    check-cast v4, Lmqt;

    iget-object v4, v4, Lmqt;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-wide v8, v3, Lcom/google/googlex/gcam/GenerateRgbImageOptions;->a:J

    invoke-static {v8, v9, v3, v4}, Lcom/google/googlex/gcam/GcamModuleJNI;->GenerateRgbImageOptions_expected_number_of_frames_set(JLcom/google/googlex/gcam/GenerateRgbImageOptions;I)V

    move-object/from16 v4, p8

    check-cast v4, Lmqt;

    iget-object v4, v4, Lmqt;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-wide v8, v3, Lcom/google/googlex/gcam/GenerateRgbImageOptions;->a:J

    invoke-static {v8, v9, v3, v4}, Lcom/google/googlex/gcam/GcamModuleJNI;->GenerateRgbImageOptions_actual_number_of_frames_set(JLcom/google/googlex/gcam/GenerateRgbImageOptions;I)V

    iget-object v4, v7, Lech;->l:Ldhi;

    sget-object v5, Ldhq;->a:Ldhk;

    invoke-interface {v4}, Ldhi;->c()V

    iget-wide v4, v3, Lcom/google/googlex/gcam/GenerateRgbImageOptions;->a:J

    const/4 v8, 0x0

    invoke-static {v4, v5, v3, v8}, Lcom/google/googlex/gcam/GcamModuleJNI;->GenerateRgbImageOptions_verbose_set(JLcom/google/googlex/gcam/GenerateRgbImageOptions;Z)V

    iget-object v4, v7, Lech;->U:Lbkc;

    iget-object v4, v4, Lbkc;->a:Ljava/lang/Object;

    check-cast v4, Lcom/google/googlex/gcam/InitParams;

    invoke-virtual {v4}, Lcom/google/googlex/gcam/InitParams;->a()Lnqk;

    move-result-object v4

    new-instance v5, Lcom/google/googlex/gcam/InterleavedImageU8;

    invoke-static/range {v16 .. v16}, Lcom/google/googlex/gcam/StaticMetadata;->a(Lcom/google/googlex/gcam/StaticMetadata;)J

    move-result-wide v16

    iget-wide v8, v6, Lcom/google/googlex/gcam/ShotParams;->a:J

    move-wide/from16 v19, v8

    invoke-static {v1}, Lcom/google/googlex/gcam/FrameMetadata;->b(Lcom/google/googlex/gcam/FrameMetadata;)J

    move-result-wide v22

    iget-wide v0, v0, Lcom/google/googlex/gcam/SpatialGainMap;->a:J

    move-wide/from16 v25, v0

    invoke-static {v2}, Lcom/google/googlex/gcam/RawWriteView;->c(Lcom/google/googlex/gcam/RawWriteView;)J

    move-result-wide v28

    iget v0, v4, Lnqk;->f:I

    move/from16 v31, v0

    iget-wide v0, v3, Lcom/google/googlex/gcam/GenerateRgbImageOptions;->a:J

    move-wide/from16 v32, v0

    invoke-static/range {v16 .. v34}, Lcom/google/googlex/gcam/GcamModuleJNI;->Gcam_GenerateRgbImage(JLcom/google/googlex/gcam/StaticMetadata;JLcom/google/googlex/gcam/ShotParams;JLcom/google/googlex/gcam/FrameMetadata;JLcom/google/googlex/gcam/SpatialGainMap;JLcom/google/googlex/gcam/RawWriteView;IJLcom/google/googlex/gcam/GenerateRgbImageOptions;)J

    move-result-wide v0

    invoke-direct {v5, v0, v1}, Lcom/google/googlex/gcam/InterleavedImageU8;-><init>(J)V

    invoke-virtual {v5}, Lcom/google/googlex/gcam/InterleavedImageU8;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v7, Lech;->V:Lcvr;

    invoke-virtual {v0, v5}, Lcvr;->J(Lcom/google/googlex/gcam/InterleavedImageU8;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final E(Lkll;Lgxy;Lgkr;Lcom/google/googlex/gcam/PostviewParams;Lgcc;Lkou;)Leea;
    .locals 16

    move-object/from16 v15, p0

    iget-object v0, v15, Lech;->d:Lkbc;

    const-string v1, "HdrPlus#StartMomentsShotCapture"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    :try_start_0
    sget-object v14, Lmpx;->a:Lmpx;

    const/4 v8, 0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x1

    sget-object v0, Lega;->a:Lega;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object v15, v0

    :try_start_1
    invoke-direct/range {v1 .. v15}, Lech;->P(Lkll;Lgxy;Lgkr;Lcom/google/googlex/gcam/PostviewParams;Lgcc;Lkou;ZIIZIZLmqp;Lega;)Leea;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v1, p0

    iget-object v2, v1, Lech;->d:Lkbc;

    invoke-interface {v2}, Lkbc;->f()V

    return-object v0

    :catchall_0
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v1, v15

    :goto_0
    iget-object v2, v1, Lech;->d:Lkbc;

    invoke-interface {v2}, Lkbc;->f()V

    throw v0
.end method

.method public final F(Lkll;Lgkr;Lcom/google/googlex/gcam/PostviewParams;Lgcc;Lkou;Lega;)Leea;
    .locals 11

    const/4 v6, -0x1

    invoke-static {v6}, Lcom/Globals;->getNonZslBaseFrameCount(I)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, -0x1

    sget-object v9, Lmpx;->a:Lmpx;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v10, p6

    invoke-virtual/range {v0 .. v10}, Lech;->G(Lkll;Lgkr;Lcom/google/googlex/gcam/PostviewParams;Lgcc;Lkou;IZILmqp;Lega;)Leea;

    move-result-object v0

    return-object v0
.end method

.method public final G(Lkll;Lgkr;Lcom/google/googlex/gcam/PostviewParams;Lgcc;Lkou;IZILmqp;Lega;)Leea;
    .locals 16

    move-object/from16 v15, p0

    iget-object v0, v15, Lech;->d:Lkbc;

    const-string v1, "HdrPlus#StartShotCapture"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    move-object/from16 v0, p2

    :try_start_0
    iget-object v1, v0, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {v1}, Lgxl;->h()Lgxy;

    move-result-object v3

    if-nez p7, :cond_0

    iget-object v1, v15, Lech;->G:Lebv;

    invoke-virtual {v1, v3}, Lebv;->g(Lgxy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v13, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move-object/from16 v14, p9

    move-object/from16 v15, p10

    :try_start_1
    invoke-direct/range {v1 .. v15}, Lech;->P(Lkll;Lgxy;Lgkr;Lcom/google/googlex/gcam/PostviewParams;Lgcc;Lkou;ZIIZIZLmqp;Lega;)Leea;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v1, p0

    iget-object v2, v1, Lech;->d:Lkbc;

    invoke-interface {v2}, Lkbc;->f()V

    return-object v0

    :catchall_0
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v1, v15

    :goto_0
    iget-object v2, v1, Lech;->d:Lkbc;

    invoke-interface {v2}, Lkbc;->f()V

    throw v0
.end method

.method public final H(Lkll;Lgkr;Lcom/google/googlex/gcam/PostviewParams;Lgcc;Lkou;IIZLega;)Leea;
    .locals 16

    move-object/from16 v15, p0

    move/from16 v0, p8

    iget-object v1, v15, Lech;->d:Lkbc;

    const-string v2, "HdrPlus#StartZslShotCapture"

    invoke-interface {v1, v2}, Lkbc;->e(Ljava/lang/String;)V

    move-object/from16 v4, p2

    :try_start_0
    iget-object v1, v4, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {v1}, Lgxl;->h()Lgxy;

    move-result-object v3

    if-nez v0, :cond_0

    iget-object v1, v15, Lech;->G:Lebv;

    invoke-virtual {v1, v3}, Lebv;->g(Lgxy;)V

    :cond_0
    const/4 v1, 0x1

    if-eq v1, v0, :cond_1

    const/4 v1, -0x1

    const/4 v12, -0x1

    goto :goto_0

    :cond_1
    const/4 v12, 0x1

    :goto_0
    sget-object v14, Lmpx;->a:Lmpx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v8, 0x1

    const/4 v13, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v15, p9

    :try_start_1
    invoke-direct/range {v1 .. v15}, Lech;->P(Lkll;Lgxy;Lgkr;Lcom/google/googlex/gcam/PostviewParams;Lgcc;Lkou;ZIIZIZLmqp;Lega;)Leea;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v1, p0

    iget-object v2, v1, Lech;->d:Lkbc;

    invoke-interface {v2}, Lkbc;->f()V

    return-object v0

    :catchall_0
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v1, v15

    :goto_1
    iget-object v2, v1, Lech;->d:Lkbc;

    invoke-interface {v2}, Lkbc;->f()V

    throw v0
.end method

.method public final J(FZ)Lcom/google/googlex/gcam/AeShotParams;
    .locals 3

    new-instance v0, Lcom/google/googlex/gcam/AeShotParams;

    invoke-direct {v0}, Lcom/google/googlex/gcam/AeShotParams;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/googlex/gcam/AeShotParams;->f(F)V

    iget-object p1, p0, Lech;->t:Lkaf;

    iget p1, p1, Lkaf;->a:I

    invoke-virtual {v0, p1}, Lcom/google/googlex/gcam/AeShotParams;->j(I)V

    iget-object p1, p0, Lech;->t:Lkaf;

    iget p1, p1, Lkaf;->b:I

    invoke-virtual {v0, p1}, Lcom/google/googlex/gcam/AeShotParams;->i(I)V

    sget-object p1, Lecy;->a:Lecy;

    sget-object p1, Lgcc;->a:Lgcc;

    iget-object p1, p0, Lech;->o:Lecy;

    invoke-virtual {p1}, Lecy;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object p1, Lnrh;->d:Lnrh;

    invoke-virtual {v0, p1}, Lcom/google/googlex/gcam/AeShotParams;->k(Lnrh;)V

    goto :goto_0

    :pswitch_1
    sget-object p1, Lnrh;->c:Lnrh;

    invoke-virtual {v0, p1}, Lcom/google/googlex/gcam/AeShotParams;->k(Lnrh;)V

    goto :goto_0

    :pswitch_2
    sget-object p1, Lnrh;->b:Lnrh;

    invoke-virtual {v0, p1}, Lcom/google/googlex/gcam/AeShotParams;->k(Lnrh;)V

    goto :goto_0

    :pswitch_3
    sget-object p1, Lnrh;->a:Lnrh;

    invoke-virtual {v0, p1}, Lcom/google/googlex/gcam/AeShotParams;->k(Lnrh;)V

    :goto_0
    if-eqz p2, :cond_0

    sget-object p1, Lnqe;->b:Lnqe;

    goto :goto_1

    :cond_0
    sget-object p1, Lnqe;->a:Lnqe;

    :goto_1
    iget-wide v1, v0, Lcom/google/googlex/gcam/AeShotParams;->a:J

    iget p1, p1, Lnqe;->c:I

    invoke-static {v1, v2, v0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->AeShotParams_auto_night_sight_set(JLcom/google/googlex/gcam/AeShotParams;I)V

    iget-object p1, p0, Lech;->F:Lfue;

    invoke-virtual {p1}, Lfue;->c()Z

    move-result p1

    iget-wide v1, v0, Lcom/google/googlex/gcam/AeShotParams;->a:J

    invoke-static {v1, v2, v0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->AeShotParams_spoofed_touch_rectangle_set(JLcom/google/googlex/gcam/AeShotParams;Z)V

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

.method public final O(Lhna;Lega;)Z
    .locals 1

    iget-object p2, p2, Lega;->b:Lefz;

    sget-object v0, Lefz;->c:Lefz;

    invoke-virtual {p2, v0}, Lefz;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lech;->R:Lhnb;

    invoke-interface {p2}, Lhnb;->e()Lhna;

    move-result-object p2

    invoke-virtual {p2, p1}, Lhna;->a(Lhna;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lkll;)I
    .locals 1

    iget-object v0, p0, Lech;->O:Lklj;

    invoke-interface {v0, p1}, Lklj;->a(Lkll;)Lkli;

    move-result-object p1

    invoke-static {p1}, Lnsc;->m(Lkli;)Lnrg;

    move-result-object p1

    invoke-virtual {p0, p1}, Lech;->b(Lnrg;)I

    move-result p1

    return p1
.end method

.method public final b(Lnrg;)I
    .locals 7

    invoke-static {}, Lagc/Agc;->isGoogleDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lech;->L:Lkog;

    iget-boolean v1, v0, Lkog;->i:Z

    if-nez v1, :cond_0

    iget-boolean v0, v0, Lkog;->o:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lech;->i:Lcom/google/googlex/gcam/Gcam;

    invoke-virtual {v0}, Lcom/google/googlex/gcam/Gcam;->g()Z

    move-result v0

    invoke-static {v0}, Lmoz;->e(Z)V

    :cond_0
    iget-object v0, p0, Lech;->i:Lcom/google/googlex/gcam/Gcam;

    iget-wide v1, v0, Lcom/google/googlex/gcam/Gcam;->a:J

    iget p1, p1, Lnrg;->q:I

    invoke-static {v1, v2, v0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->Gcam_FindFirstCamera(JLcom/google/googlex/gcam/Gcam;I)I

    move-result p1

    invoke-static {}, Lagc/Agc;->isGoogleDevice()Z

    move-result v4

    if-eqz v4, :cond_2

    if-ltz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lmoz;->e(Z)V

    :cond_2
    return p1
.end method

.method public final c(Lkou;Lkll;)I
    .locals 1

    iget-object v0, p0, Lech;->q:Lnsc;

    invoke-virtual {v0, p1, p2}, Lnsc;->n(Lkou;Lkll;)Lnrg;

    move-result-object p1

    invoke-virtual {p0, p1}, Lech;->b(Lnrg;)I

    move-result p1

    return p1
.end method

.method public final d()Lebi;
    .locals 1

    iget-object v0, p0, Lech;->k:Lebi;

    return-object v0
.end method

.method public final e(Lkpb;Lkou;ZLkaf;)Lecz;
    .locals 9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lech;->r:Lnsb;

    invoke-interface {p1}, Lkpb;->a()I

    move-result v1

    sput v1, LAGC;->rawFormat:I

    invoke-virtual {v0, v1}, Lnsb;->d(I)Z

    move-result v0

    invoke-static {v0}, Lmoz;->p(Z)V

    iget-object v0, p0, Lech;->r:Lnsb;

    invoke-virtual {v0, p1}, Lnsb;->b(Lkpb;)Lcom/google/googlex/gcam/RawWriteView;

    move-result-object v2

    invoke-virtual {p0, p2}, Lech;->i(Lkou;)Lcom/google/googlex/gcam/GyroSampleVector;

    move-result-object p1

    invoke-interface {p2}, Lkou;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkll;->b(Ljava/lang/String;)Lkll;

    move-result-object v0

    invoke-virtual {p0, p2, p1, v0}, Lech;->h(Lkou;Lcom/google/googlex/gcam/GyroSampleVector;Lkll;)Lcom/google/googlex/gcam/FrameMetadata;

    move-result-object v3

    iget-object p1, p0, Lech;->q:Lnsc;

    invoke-virtual {p1, p2}, Lnsc;->o(Lkou;)Lcom/google/googlex/gcam/SpatialGainMap;

    move-result-object v4

    iget-object p1, p0, Lech;->q:Lnsc;

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p2, v1}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lnsc;->a(I)F

    move-result p1

    invoke-virtual {p0, p1, p3}, Lech;->J(FZ)Lcom/google/googlex/gcam/AeShotParams;

    move-result-object v5

    new-instance p1, Lecz;

    invoke-virtual {v3}, Lcom/google/googlex/gcam/FrameMetadata;->a()F

    move-result p3

    iget-wide v6, v3, Lcom/google/googlex/gcam/FrameMetadata;->a:J

    invoke-static {v6, v7, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_actual_analog_gain_get(JLcom/google/googlex/gcam/FrameMetadata;)F

    move-result v1

    mul-float p3, p3, v1

    iget-wide v6, v3, Lcom/google/googlex/gcam/FrameMetadata;->a:J

    invoke-static {v6, v7, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_applied_digital_gain_get(JLcom/google/googlex/gcam/FrameMetadata;)F

    move-result v1

    mul-float p3, p3, v1

    iget-wide v6, v3, Lcom/google/googlex/gcam/FrameMetadata;->a:J

    invoke-static {v6, v7, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_post_raw_digital_gain_get(JLcom/google/googlex/gcam/FrameMetadata;)F

    move-result v1

    mul-float v6, p3, v1

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lecz;-><init>(Lcom/google/googlex/gcam/RawWriteView;Lcom/google/googlex/gcam/FrameMetadata;Lcom/google/googlex/gcam/SpatialGainMap;Lcom/google/googlex/gcam/AeShotParams;F)V

    iget-object v3, p0, Lech;->q:Lnsc;

    iget-object v5, p1, Lecz;->d:Lcom/google/googlex/gcam/AeShotParams;

    iget-object p3, p0, Lech;->k:Lebi;

    iget v7, p3, Lebi;->g:F

    move-object v4, v0

    move-object v6, p2

    move-object v8, p4

    invoke-virtual/range {v3 .. v8}, Lnsc;->u(Lkll;Lcom/google/googlex/gcam/AeShotParams;Lkou;FLkaf;)V

    return-object p1
.end method

.method public final f(Lecz;)Lcom/google/googlex/gcam/AeResults;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v8, v1, Lecz;->d:Lcom/google/googlex/gcam/AeShotParams;

    move-object v10, v8

    iget-object v11, v1, Lecz;->a:Lcom/google/googlex/gcam/RawWriteView;

    move-object v13, v11

    iget-object v14, v1, Lecz;->b:Lcom/google/googlex/gcam/FrameMetadata;

    move-object/from16 v16, v14

    iget-object v1, v1, Lecz;->c:Lcom/google/googlex/gcam/SpatialGainMap;

    move-object/from16 v19, v1

    invoke-virtual {v14}, Lcom/google/googlex/gcam/FrameMetadata;->j()Lnrg;

    move-result-object v2

    invoke-virtual {v0, v2}, Lech;->b(Lnrg;)I

    move-result v2

    iget-object v3, v0, Lech;->i:Lcom/google/googlex/gcam/Gcam;

    invoke-virtual {v3, v2}, Lcom/google/googlex/gcam/Gcam;->b(I)Lcom/google/googlex/gcam/StaticMetadata;

    move-result-object v3

    move-object v4, v3

    iget-object v5, v0, Lech;->i:Lcom/google/googlex/gcam/Gcam;

    invoke-virtual {v5, v2}, Lcom/google/googlex/gcam/Gcam;->c(I)Lcom/google/googlex/gcam/Tuning;

    move-result-object v5

    move-object v7, v5

    new-instance v15, Lcom/google/googlex/gcam/AeResults;

    invoke-static {v3}, Lcom/google/googlex/gcam/StaticMetadata;->a(Lcom/google/googlex/gcam/StaticMetadata;)J

    move-result-wide v2

    iget-wide v5, v5, Lcom/google/googlex/gcam/Tuning;->a:J

    iget-wide v8, v8, Lcom/google/googlex/gcam/AeShotParams;->a:J

    iget-wide v11, v11, Lcom/google/googlex/gcam/RawReadView;->a:J

    invoke-static {v14}, Lcom/google/googlex/gcam/FrameMetadata;->b(Lcom/google/googlex/gcam/FrameMetadata;)J

    move-result-wide v17

    move-object v0, v15

    move-wide/from16 v14, v17

    move-object/from16 p1, v0

    iget-wide v0, v1, Lcom/google/googlex/gcam/SpatialGainMap;->a:J

    move-wide/from16 v17, v0

    const/16 v20, 0x0

    invoke-static/range {v2 .. v20}, Lcom/google/googlex/gcam/GcamModuleJNI;->Gcam_ComputeAeResults(JLcom/google/googlex/gcam/StaticMetadata;JLcom/google/googlex/gcam/Tuning;JLcom/google/googlex/gcam/AeShotParams;JLcom/google/googlex/gcam/RawReadView;JLcom/google/googlex/gcam/FrameMetadata;JLcom/google/googlex/gcam/SpatialGainMap;Z)J

    move-result-wide v0

    const/4 v2, 0x1

    move-object/from16 v3, p1

    invoke-direct {v3, v0, v1, v2}, Lcom/google/googlex/gcam/AeResults;-><init>(JZ)V

    return-object v3
.end method

.method public final g(Leea;Lkpb;Lkou;Lmqp;)Lcom/google/googlex/gcam/BurstSpec;
    .locals 18

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lech;->L()V

    move-object/from16 v1, p1

    iget-boolean v2, v1, Leea;->n:Z

    iget-object v3, v0, Lech;->t:Lkaf;

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-virtual {v0, v4, v5, v2, v3}, Lech;->e(Lkpb;Lkou;ZLkaf;)Lecz;

    move-result-object v2

    iget-object v3, v2, Lecz;->b:Lcom/google/googlex/gcam/FrameMetadata;

    invoke-virtual {v3}, Lcom/google/googlex/gcam/FrameMetadata;->e()Lcom/google/googlex/gcam/AfMetadata;

    move-result-object v3

    invoke-virtual/range {p4 .. p4}, Lmqp;->g()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-wide v4, v3, Lcom/google/googlex/gcam/AfMetadata;->a:J

    invoke-static {v4, v5, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->AfMetadata_state_get(JLcom/google/googlex/gcam/AfMetadata;)I

    move-result v4

    invoke-static {v4}, Lnqd;->a(I)Lnqd;

    invoke-virtual/range {p4 .. p4}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkoq;

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v4, v5}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lnqc;->a(I)Lnqc;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/googlex/gcam/AfMetadata;->b(Lnqc;)V

    :cond_0
    sget-object v5, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v4, v5}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lnqd;->a(I)Lnqd;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/googlex/gcam/AfMetadata;->c(Lnqd;)V

    :cond_1
    sget-object v5, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v4, v5}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/googlex/gcam/AfMetadata;->d(I)V

    :cond_2
    iget-object v7, v0, Lech;->i:Lcom/google/googlex/gcam/Gcam;

    invoke-virtual/range {p1 .. p1}, Leea;->a()I

    move-result v8

    iget-object v11, v2, Lecz;->a:Lcom/google/googlex/gcam/RawWriteView;

    iget-object v14, v2, Lecz;->b:Lcom/google/googlex/gcam/FrameMetadata;

    iget-object v1, v2, Lecz;->c:Lcom/google/googlex/gcam/SpatialGainMap;

    new-instance v2, Lcom/google/googlex/gcam/BurstSpec;

    iget-wide v5, v7, Lcom/google/googlex/gcam/Gcam;->a:J

    iget-wide v9, v11, Lcom/google/googlex/gcam/RawReadView;->a:J

    invoke-static {v14}, Lcom/google/googlex/gcam/FrameMetadata;->b(Lcom/google/googlex/gcam/FrameMetadata;)J

    move-result-wide v12

    iget-wide v3, v1, Lcom/google/googlex/gcam/SpatialGainMap;->a:J

    move-wide v15, v3

    move-object/from16 v17, v1

    invoke-static/range {v5 .. v17}, Lcom/google/googlex/gcam/GcamModuleJNI;->Gcam_BuildAfBurstSpec(JLcom/google/googlex/gcam/Gcam;IJLcom/google/googlex/gcam/RawReadView;JLcom/google/googlex/gcam/FrameMetadata;JLcom/google/googlex/gcam/SpatialGainMap;)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lcom/google/googlex/gcam/BurstSpec;-><init>(J)V

    return-object v2
.end method

.method public final h(Lkou;Lcom/google/googlex/gcam/GyroSampleVector;Lkll;)Lcom/google/googlex/gcam/FrameMetadata;
    .locals 11

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v0}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lech;->I:Lgsp;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lgsp;->d(J)Lgsl;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, v0, Lgsl;->p:Lmqp;

    invoke-virtual {v2}, Lmqp;->g()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgsx;

    iget-object v2, v2, Lgsx;->a:[Lgsw;

    array-length v2, v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, v0, Lgsl;->p:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgsx;

    iget-object v0, v0, Lgsx;->a:[Lgsw;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    iget v5, v4, Lgsw;->c:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    iget-wide v5, v4, Lgsw;->a:J

    long-to-int v6, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v4, v4, Lgsw;->c:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lech;->l:Ldhi;

    sget-object v2, Ldhq;->X:Ldhj;

    invoke-interface {v0, v2}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lech;->q:Lnsc;

    invoke-virtual {v0, p1, p2, v1, p3}, Lnsc;->j(Lkou;Lcom/google/googlex/gcam/GyroSampleVector;Ljava/util/Map;Lkll;)Lcom/google/googlex/gcam/FrameMetadata;

    move-result-object p1

    return-object p1

    :cond_3
    iget-object v0, p0, Lech;->q:Lnsc;

    invoke-virtual {v0, p1, p3}, Lnsc;->k(Lkou;Lkll;)Lcom/google/googlex/gcam/FrameMetadataKey;

    move-result-object v7

    if-nez v7, :cond_4

    iget-object v0, p0, Lech;->q:Lnsc;

    invoke-virtual {v0, p1, p2, v1, p3}, Lnsc;->j(Lkou;Lcom/google/googlex/gcam/GyroSampleVector;Ljava/util/Map;Lkll;)Lcom/google/googlex/gcam/FrameMetadata;

    move-result-object p1

    return-object p1

    :cond_4
    new-instance v0, Lcom/google/googlex/gcam/FrameMetadata;

    invoke-direct {v0}, Lcom/google/googlex/gcam/FrameMetadata;-><init>()V

    iget-object v4, p0, Lech;->i:Lcom/google/googlex/gcam/Gcam;

    iget-wide v2, v4, Lcom/google/googlex/gcam/Gcam;->a:J

    iget-wide v5, v7, Lcom/google/googlex/gcam/FrameMetadataKey;->a:J

    invoke-static {v0}, Lcom/google/googlex/gcam/FrameMetadata;->b(Lcom/google/googlex/gcam/FrameMetadata;)J

    move-result-wide v8

    move-object v10, v0

    invoke-static/range {v2 .. v10}, Lcom/google/googlex/gcam/GcamModuleJNI;->Gcam_OverrideFrameMetadata(JLcom/google/googlex/gcam/Gcam;JLcom/google/googlex/gcam/FrameMetadataKey;JLcom/google/googlex/gcam/FrameMetadata;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v0, p0, Lech;->q:Lnsc;

    invoke-virtual {v0, p1, p2, v1, p3}, Lnsc;->j(Lkou;Lcom/google/googlex/gcam/GyroSampleVector;Ljava/util/Map;Lkll;)Lcom/google/googlex/gcam/FrameMetadata;

    move-result-object p1

    return-object p1

    :cond_5
    return-object v0
.end method

.method public final i(Lkou;)Lcom/google/googlex/gcam/GyroSampleVector;
    .locals 12

    :try_start_0
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v0}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lech;->q:Lnsc;

    invoke-virtual {v2, p1}, Lnsc;->d(Lkou;)J

    move-result-wide v2

    sget-object v4, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v4}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr v0, v4

    add-long/2addr v0, v2

    new-instance p1, Lcom/google/googlex/gcam/GyroSampleVector;

    invoke-direct {p1}, Lcom/google/googlex/gcam/GyroSampleVector;-><init>()V

    iget-object v2, p0, Lech;->x:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmqp;

    invoke-virtual {v2}, Lmqp;->g()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lkmm;

    iget-object v2, p0, Lech;->d:Lkbc;

    const-string v3, "gyro"

    invoke-interface {v2, v3}, Lkbc;->e(Ljava/lang/String;)V

    const-wide/32 v2, -0x4c4b40

    add-long v7, v4, v2

    const-wide/32 v2, 0x4c4b40

    add-long v9, v0, v2

    new-instance v11, Leai;

    const/4 v0, 0x2

    invoke-direct {v11, p1, v0}, Leai;-><init>(Lcom/google/googlex/gcam/GyroSampleVector;I)V

    invoke-interface/range {v6 .. v11}, Lkmm;->b(JJLkml;)V

    iget-object v0, p0, Lech;->d:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    :cond_0
    return-object p1

    :catch_0
    move-exception p1

    sget-object v0, Lech;->e:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    invoke-interface {v0, p1}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v1, 0x512

    invoke-interface {v0, v1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v1, "Unable to build GyroSampleVector %s"

    invoke-interface {v0, v1, p1}, Lnah;->r(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final j(I)Lcom/google/googlex/gcam/PhysicalStabilityParams;
    .locals 1

    iget-object v0, p0, Lech;->h:Lmwa;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmwa;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lecg;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lecg;->a:Lcom/google/googlex/gcam/PhysicalStabilityParams;

    return-object p1
.end method

.method public final k(I)Lcom/google/googlex/gcam/PostShutterAfParams;
    .locals 1

    iget-object v0, p0, Lech;->h:Lmwa;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmwa;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lecg;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lecg;->b:Lcom/google/googlex/gcam/PostShutterAfParams;

    return-object p1
.end method

.method public final l(Lkou;Lkll;)Lnrg;
    .locals 1

    iget-object v0, p0, Lech;->q:Lnsc;

    invoke-virtual {v0, p1, p2}, Lnsc;->n(Lkou;Lkll;)Lnrg;

    move-result-object p1

    return-object p1
.end method

.method public final m(I)Lcom/google/googlex/gcam/ViewfinderResults;
    .locals 4

    iget-object v0, p0, Lech;->i:Lcom/google/googlex/gcam/Gcam;

    new-instance v1, Lcom/google/googlex/gcam/ViewfinderResults;

    iget-wide v2, v0, Lcom/google/googlex/gcam/Gcam;->a:J

    invoke-static {v2, v3, v0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->Gcam_GetLatestViewfinderResults(JLcom/google/googlex/gcam/Gcam;I)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/google/googlex/gcam/ViewfinderResults;-><init>(J)V

    return-object v1
.end method

.method public final n(Leea;)V
    .locals 3

    invoke-virtual {p1}, Leea;->a()I

    move-result p1

    iget-object v0, p0, Lech;->d:Lkbc;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AbortShot-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lech;->i:Lcom/google/googlex/gcam/Gcam;

    iget-wide v1, v0, Lcom/google/googlex/gcam/Gcam;->a:J

    invoke-static {v1, v2, v0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->Gcam_AbortShot(JLcom/google/googlex/gcam/Gcam;I)V

    iget-object p1, p0, Lech;->d:Lkbc;

    invoke-interface {p1}, Lkbc;->f()V

    return-void
.end method

.method public final o(Leea;Lkll;ILkou;Lnqg;Lkpb;Lkpb;Lmqp;)V
    .locals 29

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    iget-object v6, v1, Lech;->d:Lkbc;

    const-string v7, "AddPayloadFrame"

    invoke-interface {v6, v7}, Lkbc;->e(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lech;->i(Lkou;)Lcom/google/googlex/gcam/GyroSampleVector;

    move-result-object v6

    iget-object v7, v1, Lech;->d:Lkbc;

    const-string v8, "metadata"

    invoke-interface {v7, v8}, Lkbc;->e(Ljava/lang/String;)V

    new-instance v7, Lcom/google/googlex/gcam/FrameMetadata;

    invoke-direct {v7}, Lcom/google/googlex/gcam/FrameMetadata;-><init>()V

    if-eqz v3, :cond_0

    move-object/from16 v7, p2

    invoke-virtual {v1, v3, v6, v7}, Lech;->h(Lkou;Lcom/google/googlex/gcam/GyroSampleVector;Lkll;)Lcom/google/googlex/gcam/FrameMetadata;

    move-result-object v7

    iget-wide v8, v7, Lcom/google/googlex/gcam/FrameMetadata;->a:J

    move-object/from16 v6, p5

    iget v6, v6, Lnqg;->j:I

    invoke-static {v8, v9, v7, v6}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_burst_frame_type_set(JLcom/google/googlex/gcam/FrameMetadata;I)V

    invoke-virtual/range {p8 .. p8}, Lmqp;->g()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v7}, Lcom/google/googlex/gcam/FrameMetadata;->i()Lcom/google/googlex/gcam/LiveHdrMetadata;

    move-result-object v6

    invoke-virtual/range {p8 .. p8}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lecc;

    iget v8, v8, Lecc;->a:F

    invoke-virtual {v6, v8}, Lcom/google/googlex/gcam/LiveHdrMetadata;->c(F)V

    invoke-virtual {v7}, Lcom/google/googlex/gcam/FrameMetadata;->i()Lcom/google/googlex/gcam/LiveHdrMetadata;

    move-result-object v6

    invoke-virtual/range {p8 .. p8}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lecc;

    iget v8, v8, Lecc;->b:F

    invoke-virtual {v6, v8}, Lcom/google/googlex/gcam/LiveHdrMetadata;->b(F)V

    invoke-virtual {v7}, Lcom/google/googlex/gcam/FrameMetadata;->i()Lcom/google/googlex/gcam/LiveHdrMetadata;

    move-result-object v6

    invoke-virtual/range {p8 .. p8}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lecc;

    iget v8, v8, Lecc;->a:F

    invoke-virtual {v6, v8}, Lcom/google/googlex/gcam/LiveHdrMetadata;->f(F)V

    invoke-virtual {v7}, Lcom/google/googlex/gcam/FrameMetadata;->i()Lcom/google/googlex/gcam/LiveHdrMetadata;

    move-result-object v6

    invoke-virtual/range {p8 .. p8}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lecc;

    iget v8, v8, Lecc;->b:F

    invoke-virtual {v6, v8}, Lcom/google/googlex/gcam/LiveHdrMetadata;->d(F)V

    goto :goto_0

    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    invoke-direct/range {p0 .. p0}, Lech;->M()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v1, Lech;->y:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Lnqq;->b:Lnqq;

    sget-object v9, Lebo;->b:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    sget-object v10, Lebo;->a:Ljava/util/List;

    new-instance v11, Lebn;

    invoke-direct {v11, v6, v8, v2, v3}, Lebn;-><init>(Ljava/lang/String;Lnqq;ILkoq;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v9

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_1
    iget-object v6, v0, Leea;->e:Ljava/util/List;

    sget-object v8, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v3, v8}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, v0, Leea;->d:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, v1, Lech;->q:Lnsc;

    invoke-virtual {v6, v3}, Lnsc;->o(Lkou;)Lcom/google/googlex/gcam/SpatialGainMap;

    move-result-object v3

    iget-object v6, v1, Lech;->d:Lkbc;

    const-string v8, "wrapImages"

    invoke-interface {v6, v8}, Lkbc;->g(Ljava/lang/String;)V

    const/16 v6, 0x14

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    if-eqz v4, :cond_3

    iget-object v11, v1, Lech;->r:Lnsb;

    invoke-virtual {v11, v4}, Lnsb;->b(Lkpb;)Lcom/google/googlex/gcam/RawWriteView;

    move-result-object v11

    invoke-interface/range {p6 .. p6}, Lkpb;->f()Landroid/hardware/HardwareBuffer;

    move-result-object v12

    if-eqz v12, :cond_2

    invoke-static {v12}, Lcom/google/googlex/gcam/AndroidJniUtils;->getAHardwareBufferPtr(Landroid/hardware/HardwareBuffer;)J

    move-result-wide v8

    new-instance v13, Lnsa;

    invoke-direct {v13, v4, v12}, Lnsa;-><init>(Lkpb;Landroid/hardware/HardwareBuffer;)V

    iget-object v12, v13, Lnsa;->e:Ljava/lang/Runnable;

    iget-object v13, v13, Lnsa;->f:Ljava/lang/Runnable;

    goto :goto_2

    :cond_2
    new-instance v12, Ldrh;

    invoke-direct {v12, v4, v6}, Ldrh;-><init>(Lkpb;I)V

    move-object v13, v10

    :goto_2
    move-wide/from16 v26, v8

    move-object/from16 v22, v12

    move-object/from16 v28, v13

    goto :goto_3

    :cond_3
    new-instance v11, Lcom/google/googlex/gcam/RawWriteView;

    invoke-direct {v11}, Lcom/google/googlex/gcam/RawWriteView;-><init>()V

    move-wide/from16 v26, v8

    move-object/from16 v22, v10

    move-object/from16 v28, v22

    :goto_3
    if-eqz v5, :cond_5

    iget-object v8, v1, Lech;->r:Lnsb;

    invoke-virtual {v8, v5}, Lnsb;->a(Lkpb;)Lmqp;

    move-result-object v8

    invoke-virtual {v8}, Lmqp;->g()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v8}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/googlex/gcam/RawWriteView;

    new-instance v10, Ldrh;

    invoke-direct {v10, v5, v6}, Ldrh;-><init>(Lkpb;I)V

    move-object/from16 v25, v10

    goto :goto_4

    :cond_4
    new-instance v8, Lcom/google/googlex/gcam/RawWriteView;

    invoke-direct {v8}, Lcom/google/googlex/gcam/RawWriteView;-><init>()V

    move-object/from16 v25, v10

    goto :goto_4

    :cond_5
    new-instance v8, Lcom/google/googlex/gcam/RawWriteView;

    invoke-direct {v8}, Lcom/google/googlex/gcam/RawWriteView;-><init>()V

    move-object/from16 v25, v10

    :goto_4
    iget-object v6, v1, Lech;->d:Lkbc;

    const-string v9, "addPayloadFrame()"

    invoke-interface {v6, v9}, Lkbc;->g(Ljava/lang/String;)V

    iget-object v6, v1, Lech;->j:Lnrz;

    iget-object v9, v1, Lech;->i:Lcom/google/googlex/gcam/Gcam;

    invoke-static {v9}, Lcom/google/googlex/gcam/Gcam;->a(Lcom/google/googlex/gcam/Gcam;)J

    move-result-wide v13

    invoke-virtual/range {p1 .. p1}, Leea;->a()I

    move-result v15

    invoke-static {v7}, Lcom/google/googlex/gcam/FrameMetadata;->b(Lcom/google/googlex/gcam/FrameMetadata;)J

    move-result-wide v16

    iget-wide v9, v3, Lcom/google/googlex/gcam/SpatialGainMap;->a:J

    move-wide/from16 v18, v9

    invoke-static {v11}, Lcom/google/googlex/gcam/RawWriteView;->c(Lcom/google/googlex/gcam/RawWriteView;)J

    move-result-wide v20

    invoke-static {v8}, Lcom/google/googlex/gcam/RawWriteView;->c(Lcom/google/googlex/gcam/RawWriteView;)J

    move-result-wide v23

    move-object v12, v6

    check-cast v12, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;

    invoke-virtual/range {v12 .. v28}, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;->nativeAddPayloadFrame(JIJJJLjava/lang/Runnable;JLjava/lang/Runnable;JLjava/lang/Runnable;)Z

    move-result v3

    if-nez v3, :cond_7

    sget-object v3, Lech;->e:Lnak;

    invoke-virtual {v3}, Lnaf;->b()Lnaz;

    move-result-object v3

    check-cast v3, Lnah;

    const/16 v6, 0x513

    invoke-interface {v3, v6}, Lnah;->G(I)Lnaz;

    move-result-object v3

    check-cast v3, Lnah;

    invoke-virtual/range {p1 .. p1}, Leea;->a()I

    move-result v0

    const-string v6, "addPayloadFrame for shot %d failed, closing input images at frame index %d."

    invoke-interface {v3, v6, v0, v2}, Lnah;->s(Ljava/lang/String;II)V

    if-eqz v4, :cond_6

    invoke-interface/range {p6 .. p6}, Lkpb;->close()V

    :cond_6
    if-eqz v5, :cond_7

    invoke-interface/range {p7 .. p7}, Lkpb;->close()V

    :cond_7
    iget-object v0, v1, Lech;->d:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    iget-object v0, v1, Lech;->d:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    return-void
.end method

.method public final p(Lkll;Lkpb;Lkou;)V
    .locals 26

    move-object/from16 v15, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v12, p3

    invoke-direct/range {p0 .. p0}, Lech;->N()Z

    move-result v9

    iget-object v0, v15, Lech;->t:Lkaf;

    invoke-virtual {v15, v14, v12, v9, v0}, Lech;->e(Lkpb;Lkou;ZLkaf;)Lecz;

    move-result-object v11

    invoke-virtual {v15, v12, v13}, Lech;->c(Lkou;Lkll;)I

    move-result v16

    iget-object v0, v15, Lech;->n:Ljvs;

    check-cast v0, Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v1, v0

    const/4 v2, 0x0

    iget-object v0, v15, Lech;->P:Lgcb;

    invoke-virtual {v0}, Ljwh;->bm()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lgcc;

    invoke-virtual {v15, v12, v13}, Lech;->c(Lkou;Lkll;)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v8, Lmpx;->a:Lmpx;

    const/4 v10, 0x0

    const/16 v17, 0x0

    invoke-direct {v15, v12, v13}, Lech;->I(Lkou;Lkll;)I

    move-result v18

    const-wide/16 v19, -0x1

    sget-object v21, Lega;->a:Lega;

    move-object/from16 v0, p0

    move-object/from16 v25, v11

    move/from16 v11, v17

    move/from16 v12, v18

    move-wide/from16 v13, v19

    move-object/from16 v15, v21

    move/from16 v22, v16

    move-object/from16 v16, p3

    invoke-direct/range {v0 .. v16}, Lech;->K(FILgcc;IZZZLmqp;ZZZIJLega;Lkou;)Lcom/google/googlex/gcam/ShotParams;

    move-result-object v6

    move/from16 v16, v22

    move-object/from16 v7, p0

    iget-object v0, v7, Lech;->q:Lnsc;

    invoke-virtual {v6}, Lcom/google/googlex/gcam/ShotParams;->a()Lcom/google/googlex/gcam/AeShotParams;

    move-result-object v2

    iget-object v1, v7, Lech;->k:Lebi;

    iget v4, v1, Lebi;->g:F

    iget-object v5, v7, Lech;->t:Lkaf;

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-virtual/range {v0 .. v5}, Lnsc;->u(Lkll;Lcom/google/googlex/gcam/AeShotParams;Lkou;FLkaf;)V

    iget-object v0, v7, Lech;->j:Lnrz;

    iget-object v1, v7, Lech;->i:Lcom/google/googlex/gcam/Gcam;

    invoke-static {v1}, Lcom/google/googlex/gcam/Gcam;->a(Lcom/google/googlex/gcam/Gcam;)J

    move-result-wide v13

    move-object/from16 v1, v25

    iget-object v2, v1, Lecz;->b:Lcom/google/googlex/gcam/FrameMetadata;

    invoke-static {v2}, Lcom/google/googlex/gcam/FrameMetadata;->b(Lcom/google/googlex/gcam/FrameMetadata;)J

    move-result-wide v2

    iget-object v4, v1, Lecz;->c:Lcom/google/googlex/gcam/SpatialGainMap;

    iget-wide v4, v4, Lcom/google/googlex/gcam/SpatialGainMap;->a:J

    iget-wide v8, v6, Lcom/google/googlex/gcam/ShotParams;->a:J

    iget-object v1, v1, Lecz;->a:Lcom/google/googlex/gcam/RawWriteView;

    invoke-static {v1}, Lcom/google/googlex/gcam/RawWriteView;->c(Lcom/google/googlex/gcam/RawWriteView;)J

    move-result-wide v22

    new-instance v1, Ldrh;

    const/16 v6, 0x14

    move-object/from16 v10, p2

    invoke-direct {v1, v10, v6}, Ldrh;-><init>(Lkpb;I)V

    move-object v12, v0

    check-cast v12, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;

    move/from16 v15, v16

    move-wide/from16 v16, v2

    move-wide/from16 v18, v4

    move-wide/from16 v20, v8

    move-object/from16 v24, v1

    invoke-virtual/range {v12 .. v24}, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;->nativeAddViewfinderFrame(JIJJJJLjava/lang/Runnable;)V

    return-void
.end method

.method public final q(Leea;)V
    .locals 1

    new-instance v0, Lcom/google/googlex/gcam/BurstSpec;

    invoke-direct {v0}, Lcom/google/googlex/gcam/BurstSpec;-><init>()V

    invoke-virtual {p0, p1, v0}, Lech;->r(Leea;Lcom/google/googlex/gcam/BurstSpec;)V

    return-void
.end method

.method public final r(Leea;Lcom/google/googlex/gcam/BurstSpec;)V
    .locals 9

    iget-object v0, p0, Lech;->d:Lkbc;

    invoke-virtual {p1}, Leea;->a()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BeginPayloadFrames-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v4, p0, Lech;->i:Lcom/google/googlex/gcam/Gcam;

    invoke-virtual {p1}, Leea;->a()I

    move-result v5

    iget-wide v2, v4, Lcom/google/googlex/gcam/Gcam;->a:J

    iget-wide v6, p2, Lcom/google/googlex/gcam/BurstSpec;->a:J

    move-object v8, p2

    invoke-static/range {v2 .. v8}, Lcom/google/googlex/gcam/GcamModuleJNI;->Gcam_BeginPayloadFrames(JLcom/google/googlex/gcam/Gcam;IJLcom/google/googlex/gcam/BurstSpec;)V

    iget-object p1, p0, Lech;->d:Lkbc;

    invoke-interface {p1}, Lkbc;->f()V

    return-void
.end method

.method public final s(Leea;)V
    .locals 3

    invoke-virtual {p1}, Leea;->a()I

    move-result p1

    iget-object v0, p0, Lech;->i:Lcom/google/googlex/gcam/Gcam;

    iget-wide v1, v0, Lcom/google/googlex/gcam/Gcam;->a:J

    invoke-static {v1, v2, v0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->Gcam_EndZslPayloadFrames(JLcom/google/googlex/gcam/Gcam;I)V

    return-void
.end method

.method public final t(I)V
    .locals 1

    iget-object v0, p0, Lech;->i:Lcom/google/googlex/gcam/Gcam;

    invoke-virtual {v0, p1}, Lcom/google/googlex/gcam/Gcam;->e(I)V

    return-void
.end method

.method public final u(Lkll;)V
    .locals 1

    iget-object v0, p0, Lech;->i:Lcom/google/googlex/gcam/Gcam;

    invoke-virtual {p0, p1}, Lech;->a(Lkll;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/googlex/gcam/Gcam;->e(I)V

    return-void
.end method

.method public final v(I)V
    .locals 3

    iget-object v0, p0, Lech;->i:Lcom/google/googlex/gcam/Gcam;

    iget-wide v1, v0, Lcom/google/googlex/gcam/Gcam;->a:J

    invoke-static {v1, v2, v0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->Gcam_FlushViewfinder(JLcom/google/googlex/gcam/Gcam;I)V

    return-void
.end method

.method public final w(Lkou;Lkll;)Z
    .locals 8

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v0, "Google"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    new-instance v0, Lkbb;

    iget-object v1, p0, Lech;->d:Lkbc;

    const-string v2, "HdrPlusSession#claimFrameForTemporalBinning"

    invoke-direct {v0, v1, v2}, Lkbb;-><init>(Lkbc;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lech;->q:Lnsc;

    invoke-virtual {v1, p1, p2}, Lnsc;->k(Lkou;Lkll;)Lcom/google/googlex/gcam/FrameMetadataKey;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_1

    invoke-virtual {v0}, Lkbb;->close()V

    const/4 p1, 0x0

    return p1

    :cond_1
    :try_start_1
    iget-object v4, p0, Lech;->i:Lcom/google/googlex/gcam/Gcam;

    iget-wide v2, v4, Lcom/google/googlex/gcam/Gcam;->a:J

    iget-wide v5, v7, Lcom/google/googlex/gcam/FrameMetadataKey;->a:J

    invoke-static/range {v2 .. v7}, Lcom/google/googlex/gcam/GcamModuleJNI;->Gcam_ClaimFrameForBinning(JLcom/google/googlex/gcam/Gcam;JLcom/google/googlex/gcam/FrameMetadataKey;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Lkbb;->close()V

    return p1

    :catchall_0
    move-exception p1

    :try_start_2
    invoke-virtual {v0}, Lkbb;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    invoke-static {p1, p2}, Lece;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method public final x(Leea;)Z
    .locals 7

    invoke-virtual {p1}, Leea;->a()I

    move-result v3

    iget-object v0, p0, Lech;->d:Lkbc;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EndPayloadFrames-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    iget-object p1, p1, Leea;->v:Lgkr;

    iget-object p1, p1, Lgkr;->d:Ljava/lang/Object;

    check-cast p1, Lfte;

    iget-boolean p1, p1, Lfte;->h:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lech;->d:Lkbc;

    const-string v1, "location"

    invoke-interface {p1, v1}, Lkbc;->e(Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lech;->m:Loiw;

    invoke-interface {p1}, Loiw;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfbk;

    invoke-interface {p1}, Lfbk;->e()Lmqp;

    move-result-object p1

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/Location;

    new-instance v0, Lcom/google/googlex/gcam/LocationData;

    invoke-direct {v0}, Lcom/google/googlex/gcam/LocationData;-><init>()V

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/googlex/gcam/LocationData;->b(D)V

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/google/googlex/gcam/LocationData;->c(D)V

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/googlex/gcam/LocationData;->d(D)V

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/googlex/gcam/LocationData;->e(D)V

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    const-wide/16 v4, 0x3e8

    div-long/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Lcom/google/googlex/gcam/LocationData;->g(J)V

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/googlex/gcam/LocationData;->f(Ljava/lang/String;)V

    :cond_0
    new-instance p1, Lcom/google/googlex/gcam/ClientShotMetadata;

    invoke-direct {p1}, Lcom/google/googlex/gcam/ClientShotMetadata;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/googlex/gcam/ClientShotMetadata;->c(Lcom/google/googlex/gcam/LocationData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p1

    goto :goto_0

    :cond_1
    :goto_0
    iget-object p1, p0, Lech;->d:Lkbc;

    invoke-interface {p1}, Lkbc;->f()V

    move-object v6, v0

    goto :goto_1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lech;->d:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    throw p1

    :cond_2
    move-object v6, v0

    :goto_1
    iget-object v2, p0, Lech;->i:Lcom/google/googlex/gcam/Gcam;

    iget-wide v0, v2, Lcom/google/googlex/gcam/Gcam;->a:J

    invoke-static {v6}, Lcom/google/googlex/gcam/ClientShotMetadata;->a(Lcom/google/googlex/gcam/ClientShotMetadata;)J

    move-result-wide v4

    invoke-static/range {v0 .. v6}, Lcom/google/googlex/gcam/GcamModuleJNI;->Gcam_EndPayloadFrames(JLcom/google/googlex/gcam/Gcam;IJLcom/google/googlex/gcam/ClientShotMetadata;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object v0, Lech;->e:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v1, "EndPayloadFrames() failed."

    const/16 v2, 0x519

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    :cond_3
    invoke-direct {p0}, Lech;->M()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lech;->H:Ljava/util/concurrent/Executor;

    new-instance v1, Leer;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Leer;-><init>(Lech;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_4
    iget-object v0, p0, Lech;->d:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    return p1
.end method

.method public final y(Leea;)Z
    .locals 3

    invoke-virtual {p1}, Leea;->a()I

    move-result p1

    iget-object v0, p0, Lech;->d:Lkbc;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EndShotCapture-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lech;->i:Lcom/google/googlex/gcam/Gcam;

    iget-wide v1, v0, Lcom/google/googlex/gcam/Gcam;->a:J

    invoke-static {v1, v2, v0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->Gcam_EndShotCapture(JLcom/google/googlex/gcam/Gcam;I)Z

    move-result p1

    iget-object v0, p0, Lech;->d:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    return p1
.end method

.method public final z(Lkou;Lkll;)Z
    .locals 8

    new-instance v0, Lkbb;

    iget-object v1, p0, Lech;->d:Lkbc;

    const-string v2, "HdrPlusSession#lockFrameFromFutureBinning"

    invoke-direct {v0, v1, v2}, Lkbb;-><init>(Lkbc;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lech;->q:Lnsc;

    invoke-virtual {v1, p1, p2}, Lnsc;->k(Lkou;Lkll;)Lcom/google/googlex/gcam/FrameMetadataKey;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_0

    invoke-virtual {v0}, Lkbb;->close()V

    const/4 p1, 0x0

    return p1

    :cond_0
    :try_start_1
    iget-object v4, p0, Lech;->i:Lcom/google/googlex/gcam/Gcam;

    iget-wide v2, v4, Lcom/google/googlex/gcam/Gcam;->a:J

    iget-wide v5, v7, Lcom/google/googlex/gcam/FrameMetadataKey;->a:J

    invoke-static/range {v2 .. v7}, Lcom/google/googlex/gcam/GcamModuleJNI;->Gcam_LockFrameFromFutureBinning(JLcom/google/googlex/gcam/Gcam;JLcom/google/googlex/gcam/FrameMetadataKey;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Lkbb;->close()V

    return p1

    :catchall_0
    move-exception p1

    :try_start_2
    invoke-virtual {v0}, Lkbb;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    invoke-static {p1, p2}, Lece;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method
