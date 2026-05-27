.class public final Legh;
.super Ljava/lang/Object;

# interfaces
.implements Lefy;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Ljvk;

.field public final c:Lnrm;

.field public final d:Lkbc;

.field public final e:Ldhi;

.field public final f:Lgpc;

.field public final g:Ljava/lang/Object;

.field public final h:Landroid/content/Context;

.field public final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public j:Z

.field private final k:Lmqp;

.field private final l:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/hdrplus/fusion/zoom/FusionZoomController"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Legh;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lgpc;Ljava/util/concurrent/Executor;Ljvk;Lkbc;Lmqp;Ldhi;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Legh;->g:Ljava/lang/Object;

    iput-object p1, p0, Legh;->f:Lgpc;

    iput-object p2, p0, Legh;->l:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Legh;->b:Ljvk;

    iput-object p4, p0, Legh;->d:Lkbc;

    iput-object p5, p0, Legh;->k:Lmqp;

    new-instance p1, Lnrm;

    invoke-direct {p1}, Lnrm;-><init>()V

    iput-object p1, p0, Legh;->c:Lnrm;

    iput-object p6, p0, Legh;->e:Ldhi;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Legh;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean p2, p0, Legh;->j:Z

    iput-object p7, p0, Legh;->h:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Legh;->k:Lmqp;

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
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Legh;->l:Ljava/util/concurrent/Executor;

    new-instance v1, Leer;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2}, Leer;-><init>(Legh;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d(JJLcom/google/android/apps/camera/hdrplus/fusion/api/FusionProgressCallback;Lcom/google/googlex/gcam/ShotMetadata;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Legh;->d:Lkbc;

    const-string v1, "retrieveImage"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    cmp-long v2, p3, v0

    if-nez v2, :cond_0

    iget-object p3, p0, Legh;->d:Lkbc;

    invoke-interface {p3}, Lkbc;->f()V

    sget-object p3, Legh;->a:Lnak;

    invoke-virtual {p3}, Lnaf;->c()Lnaz;

    move-result-object p3

    check-cast p3, Lnah;

    const/16 p4, 0x5a8

    invoke-interface {p3, p4}, Lnah;->G(I)Lnaz;

    move-result-object p3

    check-cast p3, Lnah;

    const-string p4, "Does not save debug image due to fallback %s for shot %s"

    invoke-interface {p3, p4, p7, p1, p2}, Lnah;->y(Ljava/lang/String;Ljava/lang/Object;J)V

    return-void

    :cond_0
    iget-object v0, p0, Legh;->c:Lnrm;

    invoke-virtual {v0, p3, p4}, Lnrm;->a(J)Lmqp;

    move-result-object p3

    invoke-virtual {p3}, Lmqp;->g()Z

    move-result p4

    if-nez p4, :cond_1

    iget-object p3, p0, Legh;->d:Lkbc;

    invoke-interface {p3}, Lkbc;->f()V

    sget-object p3, Legh;->a:Lnak;

    invoke-virtual {p3}, Lnaf;->c()Lnaz;

    move-result-object p3

    check-cast p3, Lnah;

    const/16 p4, 0x5a7

    invoke-interface {p3, p4}, Lnah;->G(I)Lnaz;

    move-result-object p3

    check-cast p3, Lnah;

    const-string p4, "Error retrieving debug image %s for shot %s"

    invoke-interface {p3, p4, p7, p1, p2}, Lnah;->y(Ljava/lang/String;Ljava/lang/Object;J)V

    return-void

    :cond_1
    invoke-virtual {p3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/googlex/gcam/InterleavedImageU8;

    new-instance p2, Lcom/google/googlex/gcam/ShotMetadata;

    invoke-direct {p2, p6}, Lcom/google/googlex/gcam/ShotMetadata;-><init>(Lcom/google/googlex/gcam/ShotMetadata;)V

    invoke-interface {p5, p1, p2, p7}, Lcom/google/android/apps/camera/hdrplus/fusion/api/FusionProgressCallback;->c(Lcom/google/googlex/gcam/InterleavedImageU8;Lcom/google/googlex/gcam/ShotMetadata;Ljava/lang/String;)V

    iget-object p1, p0, Legh;->d:Lkbc;

    invoke-interface {p1}, Lkbc;->f()V

    return-void
.end method

.method public final e(JLfuz;Lefx;Lefx;Lcom/google/android/apps/camera/hdrplus/fusion/api/FusionProgressCallback;Lkaf;)Lnou;
    .locals 13

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    iget-object v0, v6, Lefx;->b:Lj$/util/Optional;

    sget-object v1, Lefv;->d:Lefv;

    invoke-virtual {v0, v1}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v0

    sget-object v1, Lmpx;->a:Lmpx;

    invoke-virtual {v0, v1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lmqp;

    invoke-virtual {v4}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v4}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/gcam/InterleavedImageU8;

    invoke-virtual {v0}, Lcom/google/googlex/gcam/InterleavedImageU8;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v10, p0

    goto/16 :goto_1

    :cond_0
    iget-object v0, v7, Lefx;->b:Lj$/util/Optional;

    invoke-virtual {v0}, Lj$/util/Optional;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v7, Lefx;->b:Lj$/util/Optional;

    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/gcam/InterleavedImageU8;

    invoke-virtual {v0}, Lcom/google/googlex/gcam/InterleavedImageU8;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, v7, Lefx;->c:Lj$/util/Optional;

    invoke-virtual {v0}, Lj$/util/Optional;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v7, Lefx;->c:Lj$/util/Optional;

    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/gcam/GrayImageS16;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->GrayImageS16_empty(JLcom/google/googlex/gcam/GrayImageS16;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v10, p0

    goto :goto_0

    :cond_2
    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v9

    move-object v10, p0

    iget-object v11, v10, Legh;->l:Ljava/util/concurrent/Executor;

    new-instance v12, Legg;

    move-object v0, v12

    move-object v1, p0

    move-wide v2, p1

    move-object/from16 v5, p6

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object v8, v9

    invoke-direct/range {v0 .. v8}, Legg;-><init>(Legh;JLmqp;Lcom/google/android/apps/camera/hdrplus/fusion/api/FusionProgressCallback;Lefx;Lefx;Lnph;)V

    invoke-interface {v11, v12}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v9

    :cond_3
    move-object v10, p0

    :goto_0
    sget-object v0, Legh;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Missing secondary image, effect not applied."

    const/16 v2, 0x5a2

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    invoke-virtual {v4}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/gcam/InterleavedImageU8;

    invoke-static {v0}, Ligo;->i(Ljava/lang/Object;)Ligo;

    move-result-object v0

    iget-object v1, v6, Lefx;->d:Lcom/google/googlex/gcam/ShotMetadata;

    move-wide v2, p1

    move-object/from16 v4, p6

    invoke-interface {v4, p1, p2, v0, v1}, Lcom/google/android/apps/camera/hdrplus/fusion/api/FusionProgressCallback;->d(JLigo;Lcom/google/googlex/gcam/ShotMetadata;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v0

    return-object v0

    :cond_4
    move-object v10, p0

    :goto_1
    sget-object v0, Legh;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v1, "Missing primary image, releasing secondary images."

    const/16 v2, 0x5a1

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    iget-object v0, v7, Lefx;->b:Lj$/util/Optional;

    sget-object v1, Lcot;->i:Lcot;

    invoke-virtual {v0, v1}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, v7, Lefx;->a:Lj$/util/Optional;

    sget-object v1, Lcot;->j:Lcot;

    invoke-virtual {v0, v1}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, v7, Lefx;->c:Lj$/util/Optional;

    sget-object v1, Lcot;->k:Lcot;

    invoke-virtual {v0, v1}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Primary image unavailable."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lnsy;->A(Ljava/lang/Throwable;)Lnou;

    move-result-object v0

    return-object v0
.end method

.method public final g(I)I
    .locals 2

    if-eqz p1, :cond_0

    sget-object v0, Legh;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v1, 0x59f

    invoke-interface {v0, v1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v1, "Unexpected fusion type for Fusion Zoom : %d"

    invoke-interface {v0, v1, p1}, Lnah;->p(Ljava/lang/String;I)V

    :cond_0
    const/4 p1, 0x3

    return p1
.end method

.method public final h(I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x4

    return p1

    :pswitch_0
    const/16 p1, 0xd2

    return p1

    :pswitch_1
    const/16 p1, 0xd1

    return p1

    :pswitch_2
    const/16 p1, 0xd0

    return p1

    :pswitch_3
    const/16 p1, 0xcf

    return p1

    :pswitch_4
    const/16 p1, 0xce

    return p1

    :pswitch_5
    const/16 p1, 0xcd

    return p1

    :pswitch_6
    const/16 p1, 0xcc

    return p1

    :pswitch_7
    const/16 p1, 0xcb

    return p1

    :pswitch_8
    const/16 p1, 0xca

    return p1

    :pswitch_9
    const/16 p1, 0xc9

    return p1

    :pswitch_a
    const/4 p1, 0x2

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
