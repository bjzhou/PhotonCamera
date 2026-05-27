.class public final Lgop;
.super Ljava/lang/Object;

# interfaces
.implements Lgoy;


# static fields
.field public static final a:Lnak;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;


# instance fields
.field public final e:Ljava/util/concurrent/Executor;

.field public final f:Ldhi;

.field public final g:Ljava/lang/Object;

.field public final h:Ljava/lang/Object;

.field public final i:Ljava/util/HashMap;

.field public final j:Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitOutputsInterface;

.field public k:Z

.field public final l:Lgpc;

.field public final m:Lgpb;

.field private final n:Lfwx;

.field private final o:Lebi;

.field private final p:Z

.field private final q:Lgvb;

.field private final r:Loiw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/portrait/PortraitControllerImpl"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lgop;->a:Lnak;

    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->kRequestCameraPrimary_get()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgop;->b:Ljava/lang/String;

    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->kRequestCameraSecondaryTele_get()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgop;->c:Ljava/lang/String;

    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->kRequestCameraSecondaryWide_get()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgop;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lgpc;Lgpb;Lfwx;Ljava/util/concurrent/Executor;Ldhi;Lebi;Lgvb;Loiw;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lgop;->g:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lgop;->h:Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lgop;->i:Ljava/util/HashMap;

    new-instance v1, Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitOutputsInterface;

    invoke-direct {v1}, Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitOutputsInterface;-><init>()V

    iput-object v1, p0, Lgop;->j:Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitOutputsInterface;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lgop;->k:Z

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lgop;->l:Lgpc;

    iput-object p2, p0, Lgop;->m:Lgpb;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object p3, p0, Lgop;->n:Lfwx;

    iput-object p4, p0, Lgop;->e:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Lgop;->f:Ldhi;

    iput-object p6, p0, Lgop;->o:Lebi;

    sget-object p1, Ldib;->e:Ldhj;

    invoke-interface {p5, p1}, Ldhi;->l(Ldhj;)Z

    move-result p1

    iput-boolean p1, p0, Lgop;->p:Z

    iput-object p7, p0, Lgop;->q:Lgvb;

    iput-object p8, p0, Lgop;->r:Loiw;

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lgpa;
    .locals 1

    sget-object v0, Lmpx;->a:Lmpx;

    invoke-static {p0}, Lgop;->b(Ljava/lang/String;)Lmqp;

    move-result-object p0

    invoke-static {p1}, Lgop;->b(Ljava/lang/String;)Lmqp;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lgoz;->a(Lmqp;Lmqp;Lmqp;)Lgpa;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Lmqp;
    .locals 2

    invoke-static {p0}, Lmqr;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lmpx;->a:Lmpx;

    return-object p0

    :cond_0
    :try_start_0
    sget-object v0, Lbet;->a:Lcvm;

    invoke-static {p0}, Lbfg;->a(Ljava/lang/Object;)Lber;

    move-result-object p0

    invoke-static {p0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p0
    :try_end_0
    .catch Lbeq; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p0, Lgop;->a:Lnak;

    invoke-virtual {p0}, Lnaf;->b()Lnaz;

    move-result-object p0

    const-string v0, "String was not a serialized XMPMeta."

    const/16 v1, 0xc3e

    invoke-static {p0, v0, v1}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    sget-object p0, Lmpx;->a:Lmpx;

    return-object p0
.end method

.method public static f(Ligo;)Z
    .locals 4

    iget-object v0, p0, Ligo;->b:Ljava/lang/Object;

    check-cast v0, Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v1

    iget-object p0, p0, Ligo;->a:Ljava/lang/Object;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/gcam/InterleavedImageU8;

    invoke-virtual {v0}, Lcom/google/googlex/gcam/InterleavedImageU8;->h()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    check-cast p0, Lmqp;

    invoke-virtual {p0}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/HardwareBuffer;

    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/HardwareBuffer;

    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result p0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    if-nez v0, :cond_2

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v3
.end method


# virtual methods
.method public final c()V
    .locals 3

    iget-object v0, p0, Lgop;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Lghc;

    const/16 v2, 0xb

    invoke-direct {v1, p0, v2}, Lghc;-><init>(Lgop;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d()V
    .locals 0

    return-void
.end method

.method public final e(JLcom/google/googlex/gcam/InterleavedImageU8;Lcom/google/googlex/gcam/InterleavedImageU16;Lfuz;Lcom/google/googlex/gcam/PortraitRequest;Lcom/google/googlex/gcam/RawReadView;Lcom/google/googlex/gcam/ShotMetadata;Lcom/google/googlex/gcam/RawReadView;Lcom/google/googlex/gcam/ShotMetadata;Lehb;)Lnou;
    .locals 16

    move-object/from16 v13, p0

    move-object/from16 v6, p6

    iget-object v0, v13, Lgop;->n:Lfwx;

    iget-object v0, v0, Lfwx;->a:Lgda;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    iget-boolean v0, v13, Lgop;->p:Z

    iget-wide v1, v6, Lcom/google/googlex/gcam/PortraitRequest;->a:J

    invoke-static {v1, v2, v6, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->PortraitRequest_embed_gdepth_metadata_set(JLcom/google/googlex/gcam/PortraitRequest;Z)V

    invoke-virtual/range {p5 .. p5}, Lklw;->k()Lklv;

    move-result-object v0

    sget-object v1, Lklv;->a:Lklv;

    invoke-virtual {v0, v1}, Lklv;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v13, Lgop;->f:Ldhi;

    sget-object v1, Ldib;->z:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lnqi;->c:Lnqi;

    invoke-virtual {v6, v0}, Lcom/google/googlex/gcam/PortraitRequest;->c(Lnqi;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lnqi;->a:Lnqi;

    invoke-virtual {v6, v0}, Lcom/google/googlex/gcam/PortraitRequest;->c(Lnqi;)V

    goto :goto_0

    :cond_1
    iget-object v0, v13, Lgop;->f:Ldhi;

    sget-object v1, Ldib;->y:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lnqi;->b:Lnqi;

    invoke-virtual {v6, v0}, Lcom/google/googlex/gcam/PortraitRequest;->c(Lnqi;)V

    :cond_2
    :goto_0
    iget-object v0, v13, Lgop;->f:Ldhi;

    sget-object v1, Ldib;->C:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    iget-wide v1, v6, Lcom/google/googlex/gcam/PortraitRequest;->a:J

    invoke-static {v1, v2, v6, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->PortraitRequest_allow_raw_blur_rear_set(JLcom/google/googlex/gcam/PortraitRequest;Z)V

    iget-object v0, v13, Lgop;->f:Ldhi;

    sget-object v1, Ldib;->B:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    iget-wide v1, v6, Lcom/google/googlex/gcam/PortraitRequest;->a:J

    invoke-static {v1, v2, v6, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->PortraitRequest_allow_raw_blur_front_set(JLcom/google/googlex/gcam/PortraitRequest;Z)V

    iget-object v0, v13, Lgop;->f:Ldhi;

    sget-object v1, Ldib;->x:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    iget-wide v1, v6, Lcom/google/googlex/gcam/PortraitRequest;->a:J

    invoke-static {v1, v2, v6, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->PortraitRequest_use_opencl_depth_set(JLcom/google/googlex/gcam/PortraitRequest;Z)V

    iget-object v0, v13, Lgop;->f:Ldhi;

    sget-object v1, Ldib;->E:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    invoke-static {v1}, Lgoz;->b(I)I

    move-result v0

    goto :goto_1

    :cond_3
    invoke-static {v2}, Lgoz;->b(I)I

    move-result v0

    :goto_1
    sget-object v3, Lnrd;->d:[Lnrd;

    aget-object v3, v3, v0

    iget v4, v3, Lnrd;->e:I

    const/4 v5, 0x0

    if-ne v4, v0, :cond_4

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_2
    sget-object v4, Lnrd;->d:[Lnrd;

    if-ge v3, v1, :cond_9

    aget-object v4, v4, v3

    iget v7, v4, Lnrd;->e:I

    if-ne v7, v0, :cond_8

    move-object v3, v4

    :goto_3
    iget-wide v0, v6, Lcom/google/googlex/gcam/PortraitRequest;->a:J

    iget v3, v3, Lnrd;->e:I

    invoke-static {v0, v1, v6, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->PortraitRequest_relighting_option_set(JLcom/google/googlex/gcam/PortraitRequest;I)V

    iget-object v0, v13, Lgop;->q:Lgvb;

    invoke-virtual/range {p5 .. p5}, Lklw;->k()Lklv;

    move-result-object v1

    invoke-interface {v0, v1}, Lgvb;->h(Lklv;)Z

    move-result v0

    iget-wide v3, v6, Lcom/google/googlex/gcam/PortraitRequest;->a:J

    invoke-static {v3, v4, v6, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->PortraitRequest_horizontal_flip_set(JLcom/google/googlex/gcam/PortraitRequest;Z)V

    iget-object v0, v13, Lgop;->f:Ldhi;

    sget-object v1, Ldib;->G:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    iget-wide v3, v6, Lcom/google/googlex/gcam/PortraitRequest;->a:J

    invoke-static {v3, v4, v6, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->PortraitRequest_use_spotlight_enhance_set(JLcom/google/googlex/gcam/PortraitRequest;Z)V

    iget-object v0, v13, Lgop;->f:Ldhi;

    sget-object v1, Ldib;->H:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    iget-wide v3, v6, Lcom/google/googlex/gcam/PortraitRequest;->a:J

    invoke-static {v3, v4, v6, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->PortraitRequest_use_spotlight_enhance_v2_set(JLcom/google/googlex/gcam/PortraitRequest;Z)V

    iget-object v0, v13, Lgop;->f:Ldhi;

    sget-object v1, Ldib;->s:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual/range {p5 .. p5}, Lklw;->k()Lklv;

    move-result-object v0

    sget-object v1, Lklv;->a:Lklv;

    invoke-virtual {v0, v1}, Lklv;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_4
    iget-wide v0, v6, Lcom/google/googlex/gcam/PortraitRequest;->a:J

    invoke-static {v0, v1, v6, v2}, Lcom/google/googlex/gcam/GcamModuleJNI;->PortraitRequest_apply_portrait_matting_set(JLcom/google/googlex/gcam/PortraitRequest;Z)V

    iget-object v0, v13, Lgop;->f:Ldhi;

    invoke-interface {v0}, Ldhi;->e()V

    iget-wide v0, v6, Lcom/google/googlex/gcam/PortraitRequest;->a:J

    invoke-static {v0, v1, v6, v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->PortraitRequest_use_gpu_resample_set(JLcom/google/googlex/gcam/PortraitRequest;Z)V

    iget-object v0, v13, Lgop;->f:Ldhi;

    sget-object v1, Ldib;->K:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    iget-wide v1, v6, Lcom/google/googlex/gcam/PortraitRequest;->a:J

    invoke-static {v1, v2, v6, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->PortraitRequest_enable_gpu_boost_set(JLcom/google/googlex/gcam/PortraitRequest;Z)V

    iget-object v0, v13, Lgop;->r:Loiw;

    check-cast v0, Lfix;

    invoke-virtual {v0}, Lfix;->b()Lmqp;

    move-result-object v0

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, v6, Lcom/google/googlex/gcam/PortraitRequest;->a:J

    invoke-static {v1, v2, v6, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->PortraitRequest_cache_directory_set(JLcom/google/googlex/gcam/PortraitRequest;Ljava/lang/String;)V

    :cond_6
    iget-object v0, v13, Lgop;->o:Lebi;

    invoke-virtual {v0}, Lebi;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lnqk;->c:Lnqk;

    iget-wide v1, v6, Lcom/google/googlex/gcam/PortraitRequest;->a:J

    iget v0, v0, Lnqk;->f:I

    invoke-static {v1, v2, v6, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->PortraitRequest_execute_finish_on_set(JLcom/google/googlex/gcam/PortraitRequest;I)V

    :cond_7
    iget-object v0, v13, Lgop;->f:Ldhi;

    sget-object v1, Ldib;->I:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v5

    iget-object v14, v13, Lgop;->n:Lfwx;

    new-instance v15, Lgom;

    move-object v0, v15

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v4, p11

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p4

    move-object/from16 v12, p3

    invoke-direct/range {v0 .. v12}, Lgom;-><init>(Lgop;JLehb;ZLcom/google/googlex/gcam/PortraitRequest;Lcom/google/googlex/gcam/RawReadView;Lcom/google/googlex/gcam/ShotMetadata;Lcom/google/googlex/gcam/RawReadView;Lcom/google/googlex/gcam/ShotMetadata;Lcom/google/googlex/gcam/InterleavedImageU16;Lcom/google/googlex/gcam/InterleavedImageU8;)V

    invoke-virtual {v14, v15}, Lfwx;->a(Lfwu;)Lnou;

    move-result-object v0

    return-object v0

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_9
    const-class v1, Lnrd;

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No enum "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with value "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw v2

    :goto_6
    goto :goto_5
.end method
