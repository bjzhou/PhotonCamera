.class public Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionControllerImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lefy;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Lgpc;

.field public final c:Lkbc;

.field public final d:Lnrm;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final g:Ljvk;

.field public final h:Ldhi;

.field public final i:Landroid/content/Context;

.field private final j:Ljava/util/concurrent/Executor;

.field private final k:Loiw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionControllerImpl"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionControllerImpl;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lgpc;Ljava/util/concurrent/Executor;Ljvk;Lkbc;Loiw;Ldhi;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionControllerImpl;->e:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionControllerImpl;->b:Lgpc;

    iput-object p2, p0, Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionControllerImpl;->j:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionControllerImpl;->g:Ljvk;

    iput-object p4, p0, Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionControllerImpl;->c:Lkbc;

    new-instance p1, Lnrm;

    invoke-direct {p1}, Lnrm;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionControllerImpl;->d:Lnrm;

    iput-object p5, p0, Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionControllerImpl;->k:Loiw;

    iput-object p6, p0, Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionControllerImpl;->h:Ldhi;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionControllerImpl;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p7, p0, Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionControllerImpl;->i:Landroid/content/Context;

    return-void
.end method

.method public static native deblurFaceImpl(JJJJJJJLcom/google/googlex/gcam/clientallocator/InterleavedU8ClientAllocator;Lcom/google/googlex/gcam/clientallocator/InterleavedU8ClientAllocator;ZZZZ[Z[J[J[JJLjava/lang/String;ZZZIILcom/google/android/apps/camera/hdrplus/fusion/api/FusionProgressCallback;)J
.end method

.method public static native initialize(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static native loadModelIntoCache(IJJ)Z
.end method

.method public static native retrieveFusionType(J)I
.end method

.method public static native retrieveReferenceDebugImage(J)J
.end method

.method public static native retrieveResultImage(J)J
.end method

.method public static native retrieveResultStatus(J)I
.end method

.method public static native retrieveSourceDebugImage(J)J
.end method

.method public static native retrieveWarpedReferenceDebugImage(J)J
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionControllerImpl;->k:Loiw;

    check-cast v0, Lfix;

    invoke-virtual {v0}, Lfix;->b()Lmqp;

    move-result-object v0

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final b(Ldzf;Lgxl;)V
    .locals 2

    invoke-interface {p2}, Lgxl;->f()Lgxn;

    move-result-object v0

    iget-object v0, v0, Lgxn;->a:Lkph;

    sget-object v1, Ldyy;->j:Ldyy;

    invoke-interface {p1, v0, v1}, Ldzf;->c(Lkph;Ldyy;)V

    invoke-interface {p2}, Lgxl;->k()Lhjc;

    move-result-object p1

    invoke-interface {p1}, Lhjc;->b()V

    return-void
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionControllerImpl;->j:Ljava/util/concurrent/Executor;

    new-instance v1, Leer;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Leer;-><init>(Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionControllerImpl;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d(JJILcom/google/android/apps/camera/hdrplus/fusion/api/FusionProgressCallback;Lcom/google/googlex/gcam/ShotMetadata;Ljava/lang/String;ZZ)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionControllerImpl;->c:Lkbc;

    const-string v1, "retrieveImage"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    const-string v2, "FalconController"

    cmp-long v3, p3, v0

    if-nez v3, :cond_0

    iget-object p1, p0, Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionControllerImpl;->c:Lkbc;

    invoke-interface {p1}, Lkbc;->f()V

    sget-object p1, Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionControllerImpl;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    sget-object p2, Lnbk;->a:Lnbc;

    invoke-interface {p1, p2, v2}, Lnaz;->g(Lnbc;Ljava/lang/Object;)Lnaz;

    move-result-object p1

    const-string p2, "Does not save debug image due to fallback %s"

    const/16 p3, 0x55b

    invoke-static {p1, p2, p8, p3}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionControllerImpl;->d:Lnrm;

    invoke-virtual {v0, p3, p4}, Lnrm;->a(J)Lmqp;

    move-result-object p3

    invoke-virtual {p3}, Lmqp;->g()Z

    move-result p4

    if-nez p4, :cond_1

    iget-object p1, p0, Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionControllerImpl;->c:Lkbc;

    invoke-interface {p1}, Lkbc;->f()V

    sget-object p1, Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionControllerImpl;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    sget-object p2, Lnbk;->a:Lnbc;

    invoke-interface {p1, p2, v2}, Lnaz;->g(Lnbc;Ljava/lang/Object;)Lnaz;

    move-result-object p1

    const-string p2, "Error retrieving debug image %s"

    const/16 p3, 0x55a

    invoke-static {p1, p2, p8, p3}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    return-void

    :cond_1
    if-eqz p5, :cond_3

    if-eqz p10, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/googlex/gcam/InterleavedImageU8;

    invoke-virtual {p1}, Lcom/google/googlex/gcam/InterleavedImageU8;->g()V

    goto :goto_1

    :cond_3
    :goto_0
    if-eqz p9, :cond_4

    iget-object p4, p0, Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionControllerImpl;->c:Lkbc;

    const-string p5, "onOriginalImage"

    invoke-interface {p4, p5}, Lkbc;->g(Ljava/lang/String;)V

    invoke-virtual {p3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/googlex/gcam/InterleavedImageU8;

    new-instance p4, Lcom/google/googlex/gcam/ShotMetadata;

    invoke-direct {p4, p7}, Lcom/google/googlex/gcam/ShotMetadata;-><init>(Lcom/google/googlex/gcam/ShotMetadata;)V

    invoke-interface {p6, p1, p2, p3, p4}, Lcom/google/android/apps/camera/hdrplus/fusion/api/FusionProgressCallback;->b(JLcom/google/googlex/gcam/InterleavedImageU8;Lcom/google/googlex/gcam/ShotMetadata;)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionControllerImpl;->c:Lkbc;

    const-string p2, "onDebugImage"

    invoke-interface {p1, p2}, Lkbc;->g(Ljava/lang/String;)V

    invoke-virtual {p3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/googlex/gcam/InterleavedImageU8;

    new-instance p2, Lcom/google/googlex/gcam/ShotMetadata;

    invoke-direct {p2, p7}, Lcom/google/googlex/gcam/ShotMetadata;-><init>(Lcom/google/googlex/gcam/ShotMetadata;)V

    invoke-interface {p6, p1, p2, p8}, Lcom/google/android/apps/camera/hdrplus/fusion/api/FusionProgressCallback;->c(Lcom/google/googlex/gcam/InterleavedImageU8;Lcom/google/googlex/gcam/ShotMetadata;Ljava/lang/String;)V

    :goto_1
    iget-object p1, p0, Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionControllerImpl;->c:Lkbc;

    invoke-interface {p1}, Lkbc;->f()V

    return-void
.end method

.method public final e(JLfuz;Lefx;Lefx;Lcom/google/android/apps/camera/hdrplus/fusion/api/FusionProgressCallback;Lkaf;)Lnou;
    .locals 14

    move-object v10, p0

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual {p0}, Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionControllerImpl;->f()V

    iget-object v0, v4, Lefx;->a:Lj$/util/Optional;

    invoke-virtual {v0}, Lj$/util/Optional;->isEmpty()Z

    move-result v0

    const-string v1, "FalconController"

    if-nez v0, :cond_0

    iget-object v0, v4, Lefx;->a:Lj$/util/Optional;

    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/gcam/RawReadView;

    invoke-virtual {v0}, Lcom/google/googlex/gcam/RawReadView;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionControllerImpl;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    sget-object v2, Lnbk;->a:Lnbc;

    invoke-interface {v0, v2, v1}, Lnaz;->g(Lnbc;Ljava/lang/Object;)Lnaz;

    move-result-object v0

    const-string v2, "Empty primary raw image."

    const/16 v3, 0x552

    invoke-static {v0, v2, v3}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    :cond_1
    iget-object v0, v5, Lefx;->a:Lj$/util/Optional;

    invoke-virtual {v0}, Lj$/util/Optional;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v5, Lefx;->a:Lj$/util/Optional;

    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/gcam/RawReadView;

    invoke-virtual {v0}, Lcom/google/googlex/gcam/RawReadView;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    sget-object v0, Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionControllerImpl;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    sget-object v2, Lnbk;->a:Lnbc;

    invoke-interface {v0, v2, v1}, Lnaz;->g(Lnbc;Ljava/lang/Object;)Lnaz;

    move-result-object v0

    const-string v1, "Empty secondary raw image."

    const/16 v2, 0x553

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    :cond_3
    sget-object v0, Lnbk;->a:Lnbc;

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v11

    iget-object v12, v10, Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionControllerImpl;->j:Ljava/util/concurrent/Executor;

    new-instance v13, Leeu;

    move-object v0, v13

    move-object v1, p0

    move-wide v2, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p3

    move-object/from16 v7, p7

    move-object/from16 v8, p6

    move-object v9, v11

    invoke-direct/range {v0 .. v9}, Leeu;-><init>(Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionControllerImpl;JLefx;Lefx;Lfuz;Lkaf;Lcom/google/android/apps/camera/hdrplus/fusion/api/FusionProgressCallback;Lnph;)V

    invoke-interface {v12, v13}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    new-instance v0, Leer;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Leer;-><init>(Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionControllerImpl;I)V

    sget-object v1, Lnnv;->a:Lnnv;

    invoke-virtual {v11, v0, v1}, Lnph;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v11
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionControllerImpl;->h:Ldhi;

    sget-object v1, Ldhg;->a:Ljava/lang/String;

    invoke-interface {v0}, Ldhi;->e()V

    return-void
.end method

.method public final g(I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x1

    return p1

    :pswitch_0
    const/4 p1, 0x4

    return p1

    :pswitch_1
    const/4 p1, 0x2

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final h(I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x4

    return p1

    :pswitch_0
    const/16 p1, 0x14

    return p1

    :pswitch_1
    const/16 p1, 0x13

    return p1

    :pswitch_2
    const/16 p1, 0x12

    return p1

    :pswitch_3
    const/16 p1, 0x11

    return p1

    :pswitch_4
    const/16 p1, 0x10

    return p1

    :pswitch_5
    const/16 p1, 0xf

    return p1

    :pswitch_6
    const/16 p1, 0xe

    return p1

    :pswitch_7
    const/16 p1, 0xd

    return p1

    :pswitch_8
    const/16 p1, 0xc

    return p1

    :pswitch_9
    const/16 p1, 0xb

    return p1

    :pswitch_a
    const/16 p1, 0xa

    return p1

    :pswitch_b
    const/16 p1, 0x9

    return p1

    :pswitch_c
    const/16 p1, 0x8

    return p1

    :pswitch_d
    const/4 p1, 0x7

    return p1

    :pswitch_e
    const/4 p1, 0x6

    return p1

    :pswitch_f
    const/4 p1, 0x5

    return p1

    :pswitch_10
    const/4 p1, 0x3

    return p1

    :pswitch_11
    const/4 p1, 0x2

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
