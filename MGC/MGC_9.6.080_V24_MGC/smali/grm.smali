.class public final synthetic Lgrm;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpgv;


# instance fields
.field public final synthetic a:Lgrr;

.field public final synthetic b:Lphh;


# direct methods
.method public synthetic constructor <init>(Lgrr;Lphh;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iput-object p1, p0, Lgrm;->a:Lgrr;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lgrm;->b:Lphh;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lpge;)V
    .locals 24

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_16

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_3
    goto/32 :goto_1

    nop

    :goto_4
    iget-object v0, v0, Lgrm;->a:Lgrr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_5
    move-object/from16 v0, p0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_7
    monitor-enter v3

    nop

    :try_start_0
    invoke-interface {v1, v2}, Lpge;->e(Lphh;)Lprw;

    move-result-object v2

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_11

    nop

    nop

    nop

    iget-object v0, v0, Lgrr;->K:Lgoi;

    nop

    invoke-interface/range {p1 .. p1}, Lpge;->d()Lpro;

    move-result-object v4

    nop

    nop

    nop

    nop

    iget-object v5, v0, Lgoi;->g:Lgqc;

    nop

    nop

    nop

    nop

    iget-object v5, v5, Lgqc;->g:Loyn;

    nop

    nop

    nop

    check-cast v5, Loxv;

    nop

    nop

    iget-object v5, v5, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast v5, Lgqa;

    nop

    nop

    nop

    nop

    nop

    sget-object v6, Lgqa;->c:Lgqa;

    nop

    nop

    nop

    invoke-virtual {v5, v6}, Lgqa;->equals(Ljava/lang/Object;)Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    const/4 v6, 0x0

    nop

    const/4 v7, 0x1

    nop

    nop

    nop

    if-eqz v5, :cond_6

    nop

    nop

    nop

    nop

    nop

    iget-object v5, v0, Lgoi;->d:Lrss;

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Lrss;->h()Z

    move-result v8

    nop

    nop

    nop

    if-eqz v8, :cond_6

    nop

    invoke-virtual {v5}, Lrss;->c()Ljava/lang/Object;

    move-result-object v5

    nop

    check-cast v5, Lfdo;

    nop

    nop

    nop

    nop

    iget-object v5, v5, Lfdo;->a:Ljava/lang/Object;

    nop

    nop

    nop

    invoke-interface {v5}, Lmip;->i()Z

    move-result v5

    nop

    nop

    nop

    if-eqz v5, :cond_6

    nop

    nop

    nop

    nop

    nop

    iget-object v5, v0, Lgoi;->f:Lmit;

    nop

    nop

    nop

    nop

    if-nez v4, :cond_1

    nop

    nop

    nop

    goto/16 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_1
    iget-object v8, v5, Lmit;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    nop

    nop

    nop

    if-nez v8, :cond_6

    nop

    nop

    iget v8, v5, Lmit;->c:I

    nop

    nop

    add-int/2addr v8, v7

    nop

    nop

    nop

    nop

    nop

    iput v8, v5, Lmit;->c:I

    nop

    nop

    const/16 v9, 0x1e

    nop

    nop

    nop

    if-lt v8, v9, :cond_6

    nop

    iput v6, v5, Lmit;->c:I

    nop

    nop

    nop

    nop

    nop

    sget-object v8, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    invoke-interface {v4, v8}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    check-cast v8, [Landroid/hardware/camera2/params/Face;

    nop

    nop

    nop

    nop

    nop

    sget-object v9, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    invoke-interface {v4, v9}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    check-cast v4, Landroid/graphics/Rect;

    nop

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v8, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_a

    nop

    nop

    :cond_2
    move v9, v6

    nop

    :goto_8
    array-length v10, v8

    nop

    nop

    if-ge v9, v10, :cond_5

    nop

    nop

    nop

    nop

    nop

    aget-object v10, v8, v9

    nop

    nop

    nop

    nop

    invoke-virtual {v10}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    nop

    nop

    nop

    nop

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v11

    nop

    nop

    nop

    nop

    nop

    int-to-float v11, v11

    nop

    nop

    nop

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v12

    nop

    int-to-float v12, v12

    nop

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    nop

    nop

    nop

    nop

    int-to-float v10, v10

    nop

    nop

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v13

    nop

    nop

    nop

    nop

    nop

    int-to-float v13, v13

    nop

    nop

    const v14, 0x3fd55555

    nop

    nop

    nop

    nop

    nop

    mul-float/2addr v10, v14

    nop

    div-float/2addr v10, v13

    nop

    nop

    mul-float/2addr v11, v14

    nop

    nop

    nop

    nop

    nop

    div-float/2addr v11, v12

    nop

    nop

    nop

    nop

    nop

    mul-float/2addr v11, v10

    nop

    nop

    nop

    const v10, 0x3d4ccccd    # 0.05f

    nop

    nop

    nop

    nop

    nop

    cmpl-float v10, v11, v10

    nop

    nop

    nop

    nop

    nop

    if-lez v10, :cond_4

    nop

    nop

    nop

    iget v4, v5, Lmit;->b:I

    nop

    nop

    add-int/2addr v4, v7

    nop

    nop

    nop

    const/4 v8, 0x3

    nop

    nop

    nop

    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    nop

    nop

    nop

    iput v4, v5, Lmit;->b:I

    nop

    nop

    nop

    if-ne v4, v8, :cond_6

    nop

    nop

    nop

    nop

    nop

    iget-object v4, v5, Lmit;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    :cond_3
    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    nop

    nop

    if-eqz v5, :cond_6

    nop

    nop

    nop

    nop

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    check-cast v5, Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    nop

    nop

    nop

    iget-object v5, v5, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    check-cast v5, Lgoi;

    nop

    nop

    nop

    nop

    iget-object v5, v5, Lgoi;->d:Lrss;

    nop

    nop

    invoke-virtual {v5}, Lrss;->c()Ljava/lang/Object;

    move-result-object v5

    nop

    check-cast v5, Lfdo;

    nop

    nop

    iget-object v8, v5, Lfdo;->a:Ljava/lang/Object;

    nop

    invoke-interface {v8}, Lmip;->k()I

    move-result v8

    nop

    nop

    nop

    nop

    nop

    const/4 v9, 0x2

    nop

    nop

    nop

    nop

    nop

    if-ne v8, v9, :cond_3

    nop

    nop

    nop

    iget-object v5, v5, Lfdo;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    invoke-interface {v5}, Lmip;->f()V

    goto :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_4
    add-int/lit8 v9, v9, 0x1

    nop

    nop

    goto/16 :goto_8

    nop

    nop

    nop

    :cond_5
    :goto_a
    iput v6, v5, Lmit;->b:I

    nop

    nop

    nop

    nop

    nop

    :cond_6
    :goto_b
    iget-object v4, v0, Lgoi;->b:Ljava/lang/Object;

    nop

    monitor-enter v4

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v0}, Lgoi;->e()Z

    move-result v5

    nop

    if-eqz v5, :cond_10

    nop

    nop

    nop

    iget-object v5, v0, Lgoi;->h:Lgoh;

    nop

    nop

    nop

    nop

    nop

    sget-object v8, Lgoh;->c:Lgoh;

    nop

    nop

    nop

    invoke-virtual {v5, v8}, Lgoh;->equals(Ljava/lang/Object;)Z

    move-result v5

    nop

    nop

    if-eqz v5, :cond_10

    nop

    nop

    nop

    iget-object v5, v0, Lgoi;->i:Lrss;

    nop

    nop

    invoke-virtual {v5}, Lrss;->h()Z

    move-result v5

    nop

    nop

    nop

    nop

    if-eqz v5, :cond_10

    nop

    iget-object v5, v0, Lgoi;->i:Lrss;

    nop

    nop

    invoke-virtual {v5}, Lrss;->c()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    check-cast v5, Lmif;

    nop

    nop

    nop

    nop

    nop

    iget v5, v5, Lmif;->d:I

    nop

    nop

    nop

    nop

    nop

    if-eqz v5, :cond_f

    nop

    nop

    nop

    nop

    if-ne v5, v7, :cond_10

    nop

    nop

    nop

    iget-object v0, v0, Lgoi;->e:Lrss;

    nop

    invoke-virtual {v0}, Lrss;->h()Z

    move-result v5

    nop

    nop

    nop

    nop

    if-eqz v5, :cond_10

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    check-cast v0, Lmic;

    nop

    nop

    nop

    iget-object v5, v0, Lmic;->b:Lrss;

    nop

    invoke-virtual {v5}, Lrss;->h()Z

    move-result v5

    nop

    if-nez v5, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_7
    iget-object v5, v0, Lmic;->f:Lqei;

    nop

    invoke-interface {v2}, Lprw;->d()J

    move-result-wide v9

    nop

    nop

    iget-object v7, v5, Lqei;->b:Ljava/lang/Object;

    nop

    nop

    check-cast v7, Lj$/util/concurrent/ConcurrentLinkedQueue;

    nop

    nop

    nop

    nop

    invoke-virtual {v7}, Lj$/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v7

    nop

    nop

    nop

    nop

    nop

    if-nez v7, :cond_9

    nop

    nop

    iget-object v7, v5, Lqei;->b:Ljava/lang/Object;

    nop

    nop

    check-cast v7, Lj$/util/concurrent/ConcurrentLinkedQueue;

    nop

    invoke-virtual {v7}, Lj$/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v7

    nop

    if-eqz v7, :cond_8

    nop

    nop

    goto/16 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_8
    iget-object v7, v5, Lqei;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast v7, Lj$/util/concurrent/ConcurrentLinkedQueue;

    nop

    invoke-virtual {v7}, Lj$/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v7

    nop

    int-to-double v11, v7

    nop

    iget-object v7, v5, Lqei;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v7, Lj$/util/concurrent/ConcurrentLinkedQueue;

    nop

    nop

    nop

    invoke-virtual {v7}, Lj$/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    check-cast v7, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    nop

    nop

    nop

    nop

    sub-long v13, v9, v13

    nop

    nop

    nop

    nop

    invoke-static {v13, v14}, Lj$/time/Duration;->ofNanos(J)Lj$/time/Duration;

    move-result-object v7

    nop

    nop

    nop

    sget-object v13, Lsrp;->a:Lj$/time/Duration;

    nop

    nop

    nop

    invoke-virtual {v7}, Lj$/time/Duration;->getSeconds()J

    move-result-wide v13

    nop

    nop

    long-to-double v13, v13

    nop

    nop

    nop

    invoke-virtual {v7}, Lj$/time/Duration;->getNano()I

    move-result v7

    nop

    nop

    int-to-double v6, v7

    nop

    nop

    nop

    iget v15, v5, Lqei;->a:I

    nop

    move-wide/from16 v16, v9

    nop

    int-to-double v8, v15

    nop

    nop

    const-wide v18, 0x41cdcd6500000000L    # 1.0E9

    nop

    div-double v6, v6, v18

    nop

    nop

    nop

    add-double/2addr v13, v6

    nop

    nop

    nop

    div-double/2addr v11, v13

    nop

    nop

    nop

    cmpl-double v6, v11, v8

    nop

    if-lez v6, :cond_a

    nop

    goto/16 :goto_10

    nop

    nop

    :cond_9
    :goto_c
    move-wide/from16 v16, v9

    nop

    nop

    nop

    :cond_a
    iget-object v6, v5, Lqei;->b:Ljava/lang/Object;

    nop

    nop

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    nop

    nop

    nop

    nop

    check-cast v6, Lj$/util/concurrent/ConcurrentLinkedQueue;

    nop

    nop

    invoke-virtual {v6, v7}, Lj$/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    iget-object v6, v5, Lqei;->b:Ljava/lang/Object;

    nop

    nop

    check-cast v6, Lj$/util/concurrent/ConcurrentLinkedQueue;

    nop

    nop

    nop

    invoke-virtual {v6}, Lj$/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    iget v7, v5, Lqei;->a:I

    nop

    nop

    if-le v6, v7, :cond_b

    nop

    nop

    iget-object v5, v5, Lqei;->b:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast v5, Lj$/util/concurrent/ConcurrentLinkedQueue;

    nop

    nop

    invoke-virtual {v5}, Lj$/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    :cond_b
    iget-boolean v5, v0, Lmic;->d:Z

    nop

    nop

    nop

    nop

    nop

    if-nez v5, :cond_10

    nop

    nop

    invoke-interface {v2}, Lprw;->c()I

    move-result v5

    nop

    nop

    nop

    invoke-interface {v2}, Lprw;->b()I

    move-result v6

    nop

    nop

    nop

    new-instance v7, Lpck;

    nop

    nop

    nop

    nop

    invoke-direct {v7, v5, v6}, Lpck;-><init>(II)V

    iget-object v5, v0, Lmic;->c:Lgqh;

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Lgqh;->a()Loyd;

    move-result-object v5

    nop

    nop

    nop

    nop

    check-cast v5, Loxv;

    nop

    nop

    nop

    nop

    iget-object v5, v5, Loxv;->d:Ljava/lang/Object;

    nop

    check-cast v5, Lpcg;

    nop

    nop

    invoke-interface {v2}, Lprw;->g()Ljava/util/List;

    move-result-object v6

    nop

    nop

    nop

    const/4 v8, 0x0

    nop

    nop

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    check-cast v6, Lprv;

    nop

    nop

    invoke-interface {v6}, Lprv;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    nop

    nop

    invoke-interface {v2}, Lprw;->a()I

    move-result v9

    nop

    nop

    const/16 v10, 0x36

    nop

    nop

    if-ne v9, v10, :cond_d

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Lprw;->c()I

    move-result v9

    nop

    nop

    nop

    invoke-interface {v2}, Lprw;->b()I

    move-result v10

    nop

    nop

    nop

    mul-int/2addr v9, v10

    nop

    nop

    nop

    nop

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    nop

    nop

    nop

    :goto_d
    if-ge v8, v9, :cond_c

    nop

    nop

    add-int v11, v8, v8

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v11}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v11

    nop

    shr-int/lit8 v11, v11, 0x8

    nop

    nop

    nop

    nop

    nop

    and-int/lit16 v11, v11, 0xff

    nop

    nop

    nop

    nop

    nop

    int-to-byte v11, v11

    nop

    nop

    nop

    invoke-virtual {v10, v8, v11}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v8, v8, 0x1

    nop

    nop

    goto :goto_d

    nop

    :cond_c
    iget v6, v7, Lpck;->a:I

    nop

    nop

    iget v8, v7, Lpck;->b:I

    nop

    nop

    nop

    nop

    nop

    iget v9, v5, Lpcg;->e:I

    nop

    nop

    invoke-static {v10, v6, v8, v9}, Llto;->v(Ljava/nio/ByteBuffer;III)Ljava/nio/ByteBuffer;

    move-result-object v8

    nop

    goto :goto_e

    nop

    :cond_d
    invoke-interface {v2}, Lprw;->a()I

    move-result v8

    nop

    nop

    nop

    const/16 v9, 0x23

    nop

    nop

    if-ne v8, v9, :cond_e

    nop

    nop

    nop

    nop

    iget v8, v7, Lpck;->a:I

    nop

    nop

    iget v9, v7, Lpck;->b:I

    nop

    nop

    nop

    nop

    nop

    iget v10, v5, Lpcg;->e:I

    nop

    nop

    nop

    nop

    nop

    invoke-static {v6, v8, v9, v10}, Llto;->v(Ljava/nio/ByteBuffer;III)Ljava/nio/ByteBuffer;

    move-result-object v8

    nop

    nop

    nop

    nop

    :goto_e
    move-object/from16 v17, v8

    nop

    nop

    nop

    nop

    goto :goto_f

    nop

    nop

    :cond_e
    sget-object v6, Lmic;->a:Lsdb;

    nop

    nop

    invoke-virtual {v6}, Lscs;->c()Lsdo;

    move-result-object v6

    nop

    nop

    nop

    nop

    const/16 v8, 0x1134

    nop

    nop

    invoke-interface {v6, v8}, Lscz;->M(I)Lsdo;

    move-result-object v6

    nop

    check-cast v6, Lscz;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Lprw;->a()I

    move-result v8

    nop

    nop

    const-string v9, "Unsupported Image Format: %d."

    nop

    nop

    nop

    invoke-interface {v6, v9, v8}, Lscz;->t(Ljava/lang/String;I)V

    const/16 v17, 0x0

    nop

    nop

    nop

    :goto_f
    if-eqz v17, :cond_10

    nop

    nop

    nop

    nop

    nop

    sget-object v6, Lhno;->a:Lhmn;

    nop

    nop

    nop

    nop

    nop

    sget-object v23, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lmic;->b:Lrss;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    move-object/from16 v16, v0

    nop

    nop

    check-cast v16, Lmih;

    nop

    nop

    iget v0, v7, Lpck;->a:I

    nop

    nop

    nop

    nop

    iget v6, v7, Lpck;->b:I

    nop

    iget v5, v5, Lpcg;->e:I

    nop

    nop

    nop

    invoke-interface {v2}, Lprw;->d()J

    move-result-wide v21

    nop

    nop

    nop

    move/from16 v18, v0

    nop

    nop

    nop

    move/from16 v19, v6

    nop

    nop

    move/from16 v20, v5

    nop

    nop

    nop

    nop

    nop

    invoke-interface/range {v16 .. v23}, Lmih;->f(Ljava/nio/ByteBuffer;IIIJLrss;)V

    goto :goto_10

    nop

    :cond_f
    const/4 v0, 0x0

    nop

    throw v0

    nop

    nop

    nop

    nop

    :cond_10
    :goto_10
    invoke-interface {v2}, Lprw;->close()V

    monitor-exit v4

    nop

    nop

    nop

    nop

    nop

    goto :goto_11

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    monitor-exit v4

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    nop

    nop

    nop

    nop

    :cond_11
    sget-object v0, Lgrr;->a:Lsdb;

    nop

    nop

    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    const/16 v2, 0x2b4

    nop

    nop

    nop

    invoke-interface {v0, v2}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    nop

    const-string v2, "No image available from %s."

    nop

    invoke-interface {v0, v2, v1}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_11
    invoke-interface/range {p1 .. p1}, Lpge;->close()V

    monitor-exit v3

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    monitor-exit v3

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_15

    nop

    nop

    :goto_12
    const v0, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_13
    iget-object v3, v0, Lgrr;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_17
    iget-object v2, v0, Lgrm;->b:Lphh;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_18
    move-object/from16 v1, p1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v1, 0x1f

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method
