.class public final Lhok;
.super Lkfg;


# instance fields
.field final synthetic a:Lkeb;

.field final synthetic b:Lhol;


# direct methods
.method public constructor <init>(Lhol;Lkeb;)V
    .locals 0

    iput-object p1, p0, Lhok;->b:Lhol;

    iput-object p2, p0, Lhok;->a:Lkeb;

    invoke-direct {p0}, Lkfg;-><init>()V

    return-void
.end method


# virtual methods
.method public final bk()V
    .locals 24

    move-object/from16 v1, p0

    iget-object v0, v1, Lhok;->a:Lkeb;

    invoke-interface {v0}, Lkeb;->c()Lkou;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, v1, Lhok;->a:Lkeb;

    invoke-interface {v0}, Lkeb;->close()V

    return-void

    :cond_0
    iget-object v0, v1, Lhok;->b:Lhol;

    iget-object v0, v0, Lhol;->d:Ldhi;

    sget-object v2, Ldil;->d:Ldhj;

    invoke-interface {v0, v2}, Ldhi;->l(Ldhj;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget-object v0, v1, Lhok;->b:Lhol;

    iget-object v0, v0, Lhol;->am:Ldja;

    invoke-virtual {v0}, Ldja;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v1, Lhok;->a:Lkeb;

    invoke-interface {v0}, Lkeb;->c()Lkou;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, Lhok;->b:Lhol;

    iget-object v2, v0, Lhol;->I:Lkli;

    iget-object v0, v0, Lhol;->d:Ldhi;

    sget-object v4, Ldho;->p:Ldhk;

    invoke-interface {v0, v4}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v0, v1, Lhok;->b:Lhol;

    iget-object v0, v0, Lhol;->d:Ldhi;

    sget-object v4, Ldho;->aP:Ldhj;

    invoke-interface {v0, v4}, Ldhi;->l(Ldhj;)Z

    move-result v6

    invoke-interface {v2}, Lkli;->h()Landroid/graphics/Rect;

    move-result-object v4

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PHYSICAL_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {v2, v0}, Lkli;->n(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/util/SizeF;

    iget-object v0, v1, Lhok;->b:Lhol;

    iget-object v0, v0, Lhol;->q:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iget-object v0, v1, Lhok;->b:Lhol;

    iget-object v0, v0, Lhol;->P:Lgdk;

    invoke-virtual {v0}, Ljwh;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgdj;

    iget-object v9, v0, Lgdj;->a:Landroid/graphics/Rect;

    if-eqz v9, :cond_1

    new-instance v0, Lhqc;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lhqc;-><init>(Lkoq;Landroid/graphics/Rect;Landroid/util/SizeF;ZIFLandroid/graphics/Rect;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "Null cropRegion"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    iget-object v0, v1, Lhok;->b:Lhol;

    iget-object v3, v0, Lhol;->m:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v0, v1, Lhok;->b:Lhol;

    iget-object v0, v0, Lhol;->e:Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lhol;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v2, 0xee6

    invoke-interface {v0, v2}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v2, "Frame server is not ready for recording"

    invoke-interface {v0, v2}, Lnah;->o(Ljava/lang/String;)V

    iget-object v0, v1, Lhok;->a:Lkeb;

    invoke-interface {v0}, Lkeb;->close()V

    monitor-exit v3

    return-void

    :cond_3
    iget-object v0, v1, Lhok;->a:Lkeb;

    invoke-interface {v0}, Lkeb;->j()Lkgq;

    move-result-object v0

    iget-object v0, v0, Lkgq;->c:Lmwn;

    iget-object v4, v1, Lhok;->b:Lhol;

    iget-object v4, v4, Lhol;->V:Lkfj;

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lhol;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v2, 0xee5

    invoke-interface {v0, v2}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v2, "The source of the frame is incorrect"

    invoke-interface {v0, v2}, Lnah;->o(Ljava/lang/String;)V

    iget-object v0, v1, Lhok;->a:Lkeb;

    invoke-interface {v0}, Lkeb;->close()V

    monitor-exit v3

    return-void

    :cond_4
    iget-object v0, v1, Lhok;->b:Lhol;

    iget-object v0, v0, Lhol;->t:Lhny;

    iget-object v4, v1, Lhok;->a:Lkeb;

    invoke-interface {v4}, Lkeb;->c()Lkou;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lhny;->g:Ldhi;

    invoke-interface {v0}, Ldhi;->c()V

    iget-object v0, v1, Lhok;->b:Lhol;

    iget-object v0, v0, Lhol;->d:Ldhi;

    sget-object v4, Ldil;->d:Ldhj;

    invoke-interface {v0, v4}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v1, Lhok;->b:Lhol;

    iget-object v2, v0, Lhol;->u:Lhof;

    iget-object v4, v1, Lhok;->a:Lkeb;

    iget-object v0, v0, Lhol;->V:Lkfj;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v2, Lhof;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Lkeb;->close()V

    goto/16 :goto_7

    :cond_5
    iget-object v5, v2, Lhof;->t:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    iget-object v6, v2, Lhof;->B:Lklb;

    if-nez v6, :cond_6

    sget-object v0, Lhof;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v2, 0xede

    invoke-interface {v0, v2}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v2, "onImageAvailable() No ImageWriter available"

    invoke-interface {v0, v2}, Lnah;->o(Ljava/lang/String;)V

    invoke-interface {v4}, Lkeb;->close()V

    monitor-exit v5

    goto/16 :goto_7

    :cond_6
    iget-object v6, v2, Lhof;->C:Ljwo;

    if-nez v6, :cond_7

    sget-object v0, Lhof;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v2, 0xedd

    invoke-interface {v0, v2}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v2, "onImageAvailable() No Camcorder available"

    invoke-interface {v0, v2}, Lnah;->o(Ljava/lang/String;)V

    invoke-interface {v4}, Lkeb;->close()V

    monitor-exit v5

    goto/16 :goto_7

    :cond_7
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-interface {v4, v0}, Lkeb;->d(Lkfj;)Lkpb;

    move-result-object v5

    if-nez v5, :cond_8

    sget-object v0, Lhof;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v2, "onImageAvailable() ImageProxy is null"

    const/16 v5, 0xedc

    invoke-static {v0, v2, v5}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    invoke-interface {v4}, Lkeb;->close()V

    goto/16 :goto_7

    :cond_8
    iget-object v0, v2, Lhof;->r:Ldhi;

    invoke-interface {v0}, Ldhi;->c()V

    iget-object v0, v2, Lhof;->l:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    iget-object v8, v2, Lhof;->t:Ljava/lang/Object;

    monitor-enter v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    iget-object v0, v2, Lhof;->w:Lhps;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v2, Lhof;->A:Lhpt;

    invoke-virtual {v0, v9}, Lhps;->b(Lhpt;)V

    iget-object v9, v2, Lhof;->z:Lhpu;

    iget v9, v9, Lhpu;->g:I

    iget-object v10, v2, Lhof;->e:Lnnp;

    invoke-virtual {v10}, Lnnp;->a()D

    move-result-wide v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    int-to-double v12, v9

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v12, v10

    double-to-int v9, v12

    int-to-long v9, v9

    :try_start_4
    rem-long/2addr v6, v9

    const-wide/16 v9, 0x0

    cmp-long v11, v6, v9

    if-nez v11, :cond_9

    iget-object v6, v2, Lhof;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-eqz v6, :cond_a

    :cond_9
    iget-object v6, v2, Lhof;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-eqz v6, :cond_c

    :cond_a
    iget-object v6, v2, Lhof;->m:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    iget-object v11, v2, Lhof;->z:Lhpu;

    iget v11, v11, Lhpu;->h:I

    iget-object v12, v2, Lhof;->j:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v12

    cmp-long v14, v12, v9

    if-nez v14, :cond_b

    iget-object v6, v2, Lhof;->j:Ljava/util/concurrent/atomic/AtomicLong;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v9

    invoke-virtual {v6, v9, v10}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v6, v2, Lhof;->j:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    goto :goto_1

    :cond_b
    iget-object v9, v2, Lhof;->j:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v9

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v12, v6, v7}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    int-to-long v11, v11

    div-long/2addr v6, v11

    add-long/2addr v6, v9

    :goto_1
    iget-object v9, v2, Lhof;->r:Ldhi;

    invoke-interface {v9}, Ldhi;->c()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-object v9, v2, Lhof;->B:Lklb;

    iget-object v10, v9, Lklb;->a:Ljava/lang/Object;

    monitor-enter v10
    :try_end_5
    .catch Lkdf; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-static {v5}, Lklg;->d(Lkoi;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/media/Image;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-virtual {v11, v6, v7}, Landroid/media/Image;->setTimestamp(J)V

    iget-object v6, v9, Lklb;->b:Landroid/media/ImageWriter;

    invoke-virtual {v6, v11}, Landroid/media/ImageWriter;->queueInputImage(Landroid/media/Image;)V
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    monitor-exit v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    invoke-interface {v5}, Lkpb;->close()V

    iget-object v6, v2, Lhof;->m:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    iget-object v6, v2, Lhof;->A:Lhpt;

    invoke-virtual {v0, v6}, Lhps;->c(Lhpt;)V

    iget-object v0, v2, Lhof;->E:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    if-eqz v0, :cond_c

    iget-object v6, v2, Lhof;->m:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    invoke-virtual {v2}, Lhof;->h()J

    move-result-wide v9

    div-long/2addr v6, v9

    iget-object v9, v2, Lhof;->z:Lhpu;

    iget v9, v9, Lhpu;->h:I

    int-to-float v9, v9

    invoke-virtual {v0, v6, v7, v9}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->g(JF)V
    :try_end_9
    .catch Lkdf; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_a
    new-instance v6, Lkdf;

    invoke-direct {v6, v0}, Lkdf;-><init>(Ljava/lang/Throwable;)V

    throw v6

    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    throw v0
    :try_end_b
    .catch Lkdf; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :catch_1
    move-exception v0

    :try_start_c
    invoke-virtual {v0}, Lkdf;->printStackTrace()V

    :cond_c
    :goto_2
    monitor-exit v8
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    iget-object v0, v2, Lhof;->l:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    iget-object v0, v2, Lhof;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    invoke-interface {v5}, Lkpb;->close()V

    invoke-interface {v4}, Lkeb;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    goto/16 :goto_7

    :catchall_1
    move-exception v0

    :try_start_e
    monitor-exit v8
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :try_start_f
    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :catchall_2
    move-exception v0

    :try_start_10
    monitor-exit v5
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    :try_start_11
    throw v0

    :cond_d
    iget-object v0, v1, Lhok;->b:Lhol;

    iget-object v12, v0, Lhol;->j:Lhno;

    iget-object v13, v1, Lhok;->a:Lkeb;

    iget-object v0, v0, Lhol;->V:Lkfj;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object v2

    iget-object v4, v12, Lhno;->v:Ldhi;

    invoke-interface {v4}, Ldhi;->c()V

    invoke-interface {v13, v0}, Lkeb;->d(Lkfj;)Lkpb;

    move-result-object v0

    if-nez v0, :cond_e

    sget-object v0, Lhno;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v2, "onImageAvailable() imageProxy is null"

    const/16 v4, 0xebf

    invoke-static {v0, v2, v4}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    invoke-interface {v13}, Lkeb;->close()V

    goto/16 :goto_7

    :cond_e
    iget-object v4, v12, Lhno;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v11

    invoke-virtual {v2}, Lmqp;->g()Z

    move-result v4

    const/4 v14, 0x0

    if-eqz v4, :cond_11

    iget-object v15, v12, Lhno;->C:Lhpy;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v4, v15

    check-cast v4, Lhpz;

    iget-object v4, v4, Lhpz;->a:Lhqe;

    iget-object v4, v4, Lhqe;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    const/16 v16, 0x1

    if-gtz v4, :cond_f

    const/4 v4, 0x1

    goto :goto_3

    :cond_f
    const/4 v4, 0x0

    :goto_3
    and-int v17, v4, v11

    iget-object v4, v12, Lhno;->r:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    iget-object v4, v12, Lhno;->H:Lhpu;

    iget v7, v4, Lhpu;->g:I

    iget-object v4, v12, Lhno;->f:Lnnp;

    invoke-virtual {v4}, Lnnp;->a()D

    move-result-wide v8

    sget-object v11, Lmpx;->a:Lmpx;

    const/4 v10, 0x0

    move-object v4, v12

    invoke-virtual/range {v4 .. v11}, Lhno;->g(JIDZLmqp;)Z

    move-result v4

    if-eqz v4, :cond_10

    if-eqz v17, :cond_10

    const/4 v10, 0x1

    goto :goto_4

    :cond_10
    const/4 v10, 0x0

    :goto_4
    iget-object v4, v12, Lhno;->r:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    invoke-virtual {v2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lhqc;

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v11

    move-object v4, v15

    move-object v7, v13

    move-object v8, v0

    invoke-interface/range {v4 .. v11}, Lhpy;->a(JLkeb;Lkpb;Lhqc;ZLmqp;)V

    move/from16 v11, v17

    goto/16 :goto_5

    :cond_11
    invoke-interface {v0}, Lkpb;->c()I

    move-result v22

    invoke-interface {v0}, Lkpb;->b()I

    move-result v23

    invoke-interface {v0}, Lkpb;->g()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkpa;

    invoke-interface {v2}, Lkpa;->getRowStride()I

    move-result v19

    invoke-interface {v0}, Lkpb;->g()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkpa;

    invoke-interface {v2}, Lkpa;->getRowStride()I

    move-result v21

    invoke-interface {v0}, Lkpb;->g()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkpa;

    invoke-interface {v2}, Lkpa;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-interface {v0}, Lkpb;->g()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkpa;

    invoke-interface {v2}, Lkpa;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v2, v12, Lhno;->K:Lemq;

    invoke-interface {v0}, Lkpb;->g()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkpa;

    invoke-interface {v2}, Lkpa;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v18

    invoke-interface {v0}, Lkpb;->g()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkpa;

    invoke-interface {v2}, Lkpa;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v20

    invoke-static/range {v18 .. v23}, Lcom/google/android/apps/camera/jni/eisutil/FrameUtilNative;->convertNV21ToNV12(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;III)V

    iget-object v2, v12, Lhno;->r:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    sget-object v10, Lmpx;->a:Lmpx;

    move-object v4, v12

    move-object v7, v13

    move-object v8, v0

    move-object v9, v10

    invoke-virtual/range {v4 .. v10}, Lhno;->f(JLkeb;Lkpb;Lmqp;Lmqp;)V

    :goto_5
    if-eqz v11, :cond_13

    iget-object v0, v12, Lhno;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, v12, Lhno;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_6

    :cond_12
    iget-object v0, v12, Lhno;->r:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    :cond_13
    :goto_6
    iget-object v0, v12, Lhno;->p:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    :goto_7
    monitor-exit v3

    return-void

    :catchall_3
    move-exception v0

    monitor-exit v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    throw v0
.end method

.method public final bw(Lkou;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lhok;->b:Lhol;

    iget-object v0, v0, Lhol;->s:Lcfp;

    invoke-virtual {v0, p1}, Lcfp;->a(Lkou;)V

    return-void
.end method
