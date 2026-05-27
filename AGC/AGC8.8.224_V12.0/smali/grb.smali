.class public final Lgrb;
.super Lgra;


# instance fields
.field private final a:Lgqs;

.field private final b:Lfcd;

.field private final i:Lkbc;

.field private final j:Lgqt;


# direct methods
.method public constructor <init>(Lgqr;Ljava/util/concurrent/Executor;Lgqp;Lgqs;Lgxl;Lgqt;Lfcd;Lkbc;)V
    .locals 6

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lgra;-><init>(Lgqr;Ljava/util/concurrent/Executor;Lgqp;ILgxl;)V

    iput-object p4, p0, Lgrb;->a:Lgqs;

    iput-object p6, p0, Lgrb;->j:Lgqt;

    iput-object p7, p0, Lgrb;->b:Lfcd;

    iput-object p8, p0, Lgrb;->i:Lkbc;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v1, p0

    iget-object v0, v1, Lgrb;->i:Lkbc;

    const-string v2, "LuckyShot"

    invoke-interface {v0, v2}, Lkbc;->e(Ljava/lang/String;)V

    sget-object v0, Lnjl;->d:Lnjl;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    iget-object v4, v0, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v4, v0, Lnwn;->b:Lnws;

    check-cast v4, Lnjl;

    iget v5, v4, Lnjl;->a:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v4, Lnjl;->a:I

    iput-wide v2, v4, Lnjl;->b:J

    iget-object v2, v1, Lgrb;->j:Lgqt;

    iget-object v3, v1, Lgrb;->f:Lgqr;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    iget-object v6, v2, Lgqt;->b:Lkbc;

    const-string v7, "LuckyShotScore"

    invoke-interface {v6, v7}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v6, v3, Lgqr;->a:Lkpb;

    invoke-interface {v6}, Lkpb;->g()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkpa;

    invoke-interface {v6}, Lkpb;->c()I

    move-result v8

    invoke-interface {v6}, Lkpb;->b()I

    move-result v9

    invoke-interface {v7}, Lkpa;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-interface {v7}, Lkpa;->getPixelStride()I

    move-result v11

    invoke-interface {v7}, Lkpa;->getRowStride()I

    move-result v12

    iget-object v6, v3, Lgqr;->e:Landroid/graphics/Rect;

    iget v13, v6, Landroid/graphics/Rect;->left:I

    iget-object v6, v3, Lgqr;->e:Landroid/graphics/Rect;

    iget v14, v6, Landroid/graphics/Rect;->top:I

    iget-object v6, v3, Lgqr;->e:Landroid/graphics/Rect;

    iget v15, v6, Landroid/graphics/Rect;->right:I

    iget-object v3, v3, Lgqr;->e:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v3

    invoke-static/range {v8 .. v16}, Lcom/google/android/apps/camera/processing/imagebackend/ImgUtilNative;->measureSharpnessOnEdgeGivenCropNative(IILjava/lang/Object;IIIIII)F

    move-result v3

    float-to-double v6, v3

    iget-object v2, v2, Lgqt;->b:Lkbc;

    invoke-interface {v2}, Lkbc;->f()V

    const-wide/16 v2, 0x0

    cmpg-double v8, v6, v2

    if-gtz v8, :cond_1

    sget-object v2, Lgqt;->a:Lnak;

    invoke-virtual {v2}, Lnaf;->c()Lnaz;

    move-result-object v2

    const-string v3, "invalid metric value from LS metric calculation."

    const/16 v8, 0xc83

    invoke-static {v2, v3, v8}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    sub-long/2addr v2, v4

    double-to-float v4, v6

    new-instance v5, Lfcb;

    sget-object v8, Lfcc;->c:Lfcc;

    invoke-direct {v5, v8, v4, v2, v3}, Lfcb;-><init>(Lfcc;FJ)V

    invoke-static {v5}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    iget-object v5, v0, Lnwn;->b:Lnws;

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_2
    iget-object v5, v0, Lnwn;->b:Lnws;

    check-cast v5, Lnjl;

    iget v8, v5, Lnjl;->a:I

    or-int/lit8 v8, v8, 0x2

    iput v8, v5, Lnjl;->a:I

    iput-wide v3, v5, Lnjl;->c:J

    iget-object v3, v1, Lgrb;->b:Lfcd;

    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Lnjl;

    iget-object v4, v3, Lfcd;->a:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v5, v3, Lfcd;->f:Ljava/util/List;

    if-nez v5, :cond_3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v3, Lfcd;->f:Ljava/util/List;

    :cond_3
    iget-object v3, v3, Lfcd;->f:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, v1, Lgrb;->a:Lgqs;

    iget-object v3, v1, Lgrb;->f:Lgqr;

    invoke-virtual {v0, v3, v6, v7}, Lgqs;->d(Lgqr;D)Lgqr;

    move-result-object v0

    iget-object v3, v1, Lgrb;->b:Lfcd;

    check-cast v2, Lmqt;

    iget-object v2, v2, Lmqt;->a:Ljava/lang/Object;

    check-cast v2, Lfcb;

    sget-object v4, Lnjj;->g:Lnjj;

    invoke-virtual {v4}, Lnws;->O()Lnwn;

    move-result-object v4

    iget-object v5, v4, Lnwn;->b:Lnws;

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v4}, Lnwn;->p()V

    :cond_4
    iget-object v5, v4, Lnwn;->b:Lnws;

    move-object v6, v5

    check-cast v6, Lnjj;

    iget v7, v6, Lnjj;->a:I

    or-int/lit8 v7, v7, 0x1

    iput v7, v6, Lnjj;->a:I

    const/4 v7, -0x1

    iput v7, v6, Lnjj;->b:I

    iget v6, v2, Lfcb;->b:F

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v4}, Lnwn;->p()V

    :cond_5
    iget-object v5, v4, Lnwn;->b:Lnws;

    move-object v7, v5

    check-cast v7, Lnjj;

    iget v8, v7, Lnjj;->a:I

    or-int/lit8 v8, v8, 0x2

    iput v8, v7, Lnjj;->a:I

    iput v6, v7, Lnjj;->c:F

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v4}, Lnwn;->p()V

    :cond_6
    iget-object v5, v4, Lnwn;->b:Lnws;

    move-object v6, v5

    check-cast v6, Lnjj;

    iget v7, v6, Lnjj;->a:I

    or-int/lit8 v7, v7, 0x4

    iput v7, v6, Lnjj;->a:I

    const/4 v7, 0x0

    iput v7, v6, Lnjj;->d:F

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v4}, Lnwn;->p()V

    :cond_7
    iget-object v5, v4, Lnwn;->b:Lnws;

    move-object v6, v5

    check-cast v6, Lnjj;

    iget v8, v6, Lnjj;->a:I

    or-int/lit8 v8, v8, 0x8

    iput v8, v6, Lnjj;->a:I

    iput v7, v6, Lnjj;->e:F

    iget-wide v6, v2, Lfcb;->c:J

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {v4}, Lnwn;->p()V

    :cond_8
    iget-object v5, v4, Lnwn;->b:Lnws;

    check-cast v5, Lnjj;

    iget v8, v5, Lnjj;->a:I

    or-int/lit8 v8, v8, 0x10

    iput v8, v5, Lnjj;->a:I

    iput-wide v6, v5, Lnjj;->f:J

    invoke-virtual {v4}, Lnwn;->i()Lnws;

    move-result-object v4

    check-cast v4, Lnjj;

    iget-object v2, v2, Lfcb;->a:Lfcc;

    iget-object v5, v3, Lfcd;->a:Ljava/lang/Object;

    monitor-enter v5

    :try_start_1
    iget-object v6, v3, Lfcd;->b:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v3, Lfcd;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_9

    iget-object v2, v1, Lgrb;->c:Lgqp;

    iget-object v0, v0, Lgqr;->a:Lkpb;

    iget-object v3, v1, Lgrb;->d:Ljava/util/concurrent/Executor;

    invoke-interface {v2, v0, v3}, Lgqp;->b(Lkpb;Ljava/util/concurrent/Executor;)V

    :cond_9
    iget-object v0, v1, Lgrb;->i:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
