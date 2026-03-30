.class public final Lpbd;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpci;


# instance fields
.field private final A:Ljava/util/ArrayDeque;

.field private final B:Lpat;

.field private C:Landroid/media/MediaCodec$Callback;

.field private D:J

.field private volatile E:J

.field private final F:Ljava/util/concurrent/atomic/AtomicLong;

.field private final G:Ljava/util/concurrent/atomic/AtomicLong;

.field private final H:Ljava/util/concurrent/atomic/AtomicLong;

.field private final I:Ljava/util/concurrent/atomic/AtomicLong;

.field private volatile J:Z

.field private volatile K:Z

.field private volatile L:Z

.field private final M:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/Object;

.field public final c:Landroid/media/MediaCodec;

.field public final d:Landroid/view/Surface;

.field public final e:Lpau;

.field public final f:I

.field public final g:Landroid/util/Range;

.field public final h:Lsuu;

.field public final i:Landroid/os/HandlerThread;

.field public final j:Z

.field public volatile k:Z

.field public l:I

.field private final m:Ljava/lang/Object;

.field private final n:Z

.field private final o:Lpag;

.field private final p:Lpdf;

.field private final q:D

.field private final r:Loyn;

.field private final s:Loyn;

.field private final t:Landroid/os/Handler;

.field private final u:Z

.field private v:Z

.field private final w:Lozm;

.field private final x:Lpaq;

.field private final y:Ljava/util/ArrayDeque;

.field private final z:Ljava/util/ArrayDeque;


# direct methods
.method private final 1a36313b7ed15ba14e0acb4da569b8b7m()V
    .locals 7

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    :goto_2
    const v1, 0x6

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    :goto_4
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit v1

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    throw p0

    nop

    nop

    nop

    nop

    nop

    :cond_1
    monitor-exit v0

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_0

    nop

    nop

    :goto_9
    monitor-enter v0

    nop

    :goto_a
    :try_start_2
    iget-object v1, p0, Lpbd;->y:Ljava/util/ArrayDeque;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    nop

    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lpbd;->z:Ljava/util/ArrayDeque;

    nop

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    nop

    nop

    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    iget-boolean v1, p0, Lpbd;->v:Z

    nop

    nop

    if-nez v1, :cond_1

    nop

    iget-object v1, p0, Lpbd;->b:Ljava/lang/Object;

    nop

    nop

    monitor-enter v1

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget v2, p0, Lpbd;->l:I

    nop

    nop

    nop

    const/4 v3, 0x6

    nop

    nop

    nop

    nop

    if-eq v2, v3, :cond_6

    nop

    nop

    const/4 v3, 0x5

    nop

    nop

    nop

    nop

    nop

    if-ne v2, v3, :cond_2

    nop

    nop

    nop

    goto/16 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_2
    iget-object v2, p0, Lpbd;->y:Ljava/util/ArrayDeque;

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    nop

    check-cast v2, Ljava/lang/Integer;

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    nop

    nop

    iget-object v3, p0, Lpbd;->z:Ljava/util/ArrayDeque;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    check-cast v3, Lpbc;

    nop

    nop

    nop

    nop

    iget-object v4, v3, Lpbc;->a:Landroid/hardware/HardwareBuffer;

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_5

    nop

    nop

    iget v4, v3, Lpbc;->c:I

    nop

    nop

    nop

    iget-boolean v5, p0, Lpbd;->J:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz v5, :cond_3

    nop

    or-int/lit8 v4, v4, 0x4

    nop

    nop

    nop

    :cond_3
    and-int/lit8 v5, v4, 0x4

    nop

    if-eqz v5, :cond_4

    nop

    const/4 v5, 0x1

    nop

    nop

    nop

    nop

    goto :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_4
    const/4 v5, 0x0

    nop

    :goto_b
    iput-boolean v5, p0, Lpbd;->v:Z

    nop

    nop

    nop

    iget-object v5, p0, Lpbd;->c:Landroid/media/MediaCodec;

    nop

    nop

    nop

    invoke-virtual {v5, v2}, Landroid/media/MediaCodec;->getQueueRequest(I)Landroid/media/MediaCodec$QueueRequest;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    iget-object v5, v3, Lpbc;->a:Landroid/hardware/HardwareBuffer;

    nop

    nop

    invoke-virtual {v2, v5}, Landroid/media/MediaCodec$QueueRequest;->setHardwareBuffer(Landroid/hardware/HardwareBuffer;)Landroid/media/MediaCodec$QueueRequest;

    iget-wide v5, v3, Lpbc;->b:J

    nop

    nop

    invoke-virtual {v2, v5, v6}, Landroid/media/MediaCodec$QueueRequest;->setPresentationTimeUs(J)Landroid/media/MediaCodec$QueueRequest;

    invoke-virtual {v2, v4}, Landroid/media/MediaCodec$QueueRequest;->setFlags(I)Landroid/media/MediaCodec$QueueRequest;

    invoke-virtual {v2}, Landroid/media/MediaCodec$QueueRequest;->queue()V

    :cond_5
    iget-object v2, p0, Lpbd;->A:Ljava/util/ArrayDeque;

    nop

    nop

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    monitor-exit v1

    nop

    nop

    nop

    goto/16 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_6
    :goto_c
    monitor-exit v1

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lpbd;->m:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x7

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

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method public constructor <init>(Lozm;Lozz;IIILpag;Lrss;Lrss;Lpau;Lpdf;Loyn;Loyn;ZLpaq;Lrss;)V
    .locals 15

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v5, Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_d5

    nop

    nop

    :goto_3
    goto/32 :goto_db

    nop

    nop

    nop

    :goto_4
    const-string v3, "NGtfZml4"

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object v7, v0, Lpbd;->c:Landroid/media/MediaCodec;

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    goto/32 :goto_111

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v11, v12, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :goto_8
    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual/range {p7 .. p7}, Lrss;->c()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_b
    const/16 v2, 0x1e00

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_c
    iput-boolean v9, v0, Lpbd;->j:Z

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    :goto_d
    check-cast v6, Landroid/media/MediaCodec$Callback;

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget v7, v1, Lozm;->e:I

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-eqz v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    :goto_10
    new-instance v12, Landroid/os/Handler;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    :goto_11
    const-string v13, "operating-rate"

    nop

    nop

    nop

    nop

    goto/32 :goto_122

    nop

    nop

    nop

    :goto_12
    iput-object v5, v0, Lpbd;->H:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v10, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput-object v6, v0, Lpbd;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {v5, p0}, Lpbb;-><init>(Lpbd;)V

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_16
    new-instance v5, Ljava/util/ArrayDeque;

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    :goto_17
    const-string v12, "color-transfer"

    nop

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    :goto_18
    new-instance v5, Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    goto/32 :goto_10c

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v10, v7, Lozq;->f:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    :goto_1a
    iget v12, v1, Lozm;->f:I

    nop

    nop

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    :goto_1b
    invoke-virtual {v11, v13, v12}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :goto_1c
    goto/32 :goto_10b

    nop

    nop

    nop

    nop

    :goto_1d
    if-nez v13, :cond_1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_1
    goto/32 :goto_10d

    nop

    nop

    nop

    :goto_1e
    move-object/from16 v1, p1

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    sget-object v13, Lcom/google/android/apps/camera/filmstrip/transition/KkW/xCXUu;->iIJUXsgJ:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const v12, 0x100

    nop

    nop

    :goto_21
    goto/32 :goto_cc

    nop

    nop

    nop

    :goto_22
    iget-object v1, v1, Lozm;->b:Lozg;

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    :goto_23
    iput-object v7, v0, Lpbd;->s:Loyn;

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual/range {v1 .. v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget v11, v11, Lpck;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const v1, 0x1a

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iput-object v5, v0, Lpbd;->A:Ljava/util/ArrayDeque;

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    :goto_28
    invoke-virtual {v12}, Lrss;->h()Z

    move-result v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_29
    move-object/from16 v2, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    :goto_2a
    iput-wide v7, v0, Lpbd;->q:D

    nop

    goto/32 :goto_107

    nop

    nop

    nop

    :goto_2b
    iput-boolean v8, v0, Lpbd;->n:Z

    nop

    goto/32 :goto_10f

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_2e
    goto/16 :goto_95

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_94

    nop

    nop

    nop

    :goto_30
    iput-object v3, v0, Lpbd;->p:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    :goto_31
    const-string v13, "frame-rate"

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_32
    iput-boolean v5, v0, Lpbd;->L:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    :goto_33
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_34
    check-cast v2, Landroid/view/Surface;

    nop

    nop

    nop

    goto/32 :goto_11d

    nop

    nop

    nop

    nop

    nop

    :goto_35
    sget v13, Lcom/a;->aa:I

    nop

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    :goto_36
    if-nez v6, :cond_2

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_61

    nop

    nop

    nop

    :goto_37
    iput v9, v0, Lpbd;->l:I

    nop

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    :goto_38
    const/4 v10, 0x2

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iget v12, v12, Loze;->k:I

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/16 :goto_ca

    nop

    nop

    :goto_3b
    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual/range {p8 .. p8}, Lrss;->h()Z

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_3d
    iput-object v5, v0, Lpbd;->I:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    :goto_3e
    invoke-direct {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual/range {p1 .. p1}, Lozm;->b()I

    move-result v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {v11}, Lozg;->b()Lpck;

    move-result-object v12

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    :goto_41
    iget v1, v1, Lpck;->a:I

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_42
    const-wide v5, 0x7fffffffffffffffL

    nop

    nop

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    nop

    :goto_43
    if-nez v4, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    :cond_3
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_44
    iput-object v6, v0, Lpbd;->C:Landroid/media/MediaCodec$Callback;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    new-instance v5, Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    :goto_47
    const-string v2, "RES_2160P"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_48
    move-object/from16 v7, p15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_49
    iget-object v12, v1, Lozm;->j:Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    new-instance v5, Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    iput-object v2, v0, Lpbd;->o:Lpag;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_4c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    new-instance v5, Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_4e
    sget-object v7, Lozq;->e:Lozq;

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_4f
    iget v12, v1, Lozm;->h:F

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    :goto_50
    if-ne v7, v8, :cond_4

    nop

    goto/32 :goto_aa

    nop

    nop

    :cond_4
    goto/32 :goto_13

    nop

    nop

    :goto_51
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_52
    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_53
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/32 :goto_58

    nop

    nop

    :goto_54
    iput-object v5, v0, Lpbd;->m:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    :goto_55
    iput-object v5, v0, Lpbd;->h:Lsuu;

    nop

    nop

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    :goto_56
    invoke-virtual {v11, v13, v12}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_57
    move-object/from16 v7, p12

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_58
    invoke-static {}, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->a()V

    goto/32 :goto_109

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    const-string v13, "capture-rate"

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_5a
    if-eq v1, v2, :cond_5

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_47

    nop

    nop

    nop

    :goto_5b
    invoke-static {v1, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_5c
    const-string v1, "cHJlZl92aWRlb19yZXNvbHV0aW9u"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {v11, v12, v13}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    if-nez v13, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    iput-object v5, v0, Lpbd;->C:Landroid/media/MediaCodec$Callback;

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_60
    invoke-direct {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_61
    invoke-virtual/range {p8 .. p8}, Lrss;->c()Ljava/lang/Object;

    move-result-object v6

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_62
    invoke-virtual/range {p1 .. p1}, Lozm;->a()I

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    :goto_63
    iget-object v2, v0, Lpbd;->d:Landroid/view/Surface;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_64
    invoke-virtual {v7, v6}, Lrss;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    nop

    :goto_65
    if-lez v0, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    :cond_7
    goto/32 :goto_73

    nop

    :goto_66
    invoke-interface/range {p10 .. p10}, Lpdf;->g()V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_67
    const/4 v12, 0x0

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    invoke-virtual {v12}, Lrss;->c()Ljava/lang/Object;

    move-result-object v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_102

    nop

    nop

    :goto_69
    const-string v12, "video-qp-min"

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_6a
    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_6b
    move/from16 v13, p4

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    const-string v3, "OGtfZml4"

    nop

    nop

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    iput-boolean v5, v0, Lpbd;->j:Z

    nop

    nop

    nop

    :goto_6e
    goto/32 :goto_d3

    nop

    nop

    nop

    :goto_6f
    const/16 v13, 0x16

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    :goto_70
    sget-object v12, Lcom/google/android/apps/camera/logging/PTc/RjdpW;->SfM:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    :goto_71
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_124

    nop

    nop

    :goto_72
    invoke-virtual {v11, v13, v12}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_73
    goto/32 :goto_10a

    nop

    nop

    :goto_74
    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    invoke-virtual {v12}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_76
    goto/16 :goto_121

    nop

    nop

    nop

    nop

    nop

    :goto_77
    goto/32 :goto_120

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_78
    if-eqz v4, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    :cond_8
    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    invoke-virtual {v7}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_11e

    nop

    nop

    nop

    nop

    :goto_7a
    move/from16 v4, p13

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    :goto_7b
    sget-object v7, Lozq;->d:Lozq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    invoke-virtual {v11, v12, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :goto_7d
    goto/32 :goto_cf

    nop

    nop

    :goto_7e
    invoke-virtual {v11, v14, v12}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :goto_7f
    goto/32 :goto_80

    nop

    nop

    nop

    :goto_80
    iget v12, v1, Lozm;->g:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    new-instance v5, Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    :goto_82
    const/4 v13, 0x0

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_83
    invoke-static {v7}, Lolx;->aX(Lozp;)Landroid/media/MediaCodec;

    move-result-object v7

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_84
    new-instance v5, Lpbb;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    invoke-direct {v5}, Ljava/util/ArrayDeque;-><init>()V

    goto/32 :goto_b8

    nop

    nop

    :goto_86
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_87
    const/4 v6, 0x0

    nop

    nop

    :try_start_0
    invoke-virtual {v7, v11, v6, v6, v8}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    :goto_88
    const-string v2, "1"

    nop

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    :goto_89
    if-nez v4, :cond_9

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_63

    nop

    nop

    :goto_8a
    iput-object v7, v0, Lpbd;->x:Lpaq;

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    :goto_8b
    if-eq v7, v10, :cond_a

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :cond_a
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    iput-object v12, v0, Lpbd;->i:Landroid/os/HandlerThread;

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    :goto_8e
    invoke-virtual/range {p1 .. p1}, Lozm;->a()I

    move-result v12

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    invoke-static {v5, v2}, Lrrf;->y(ZLjava/lang/Object;)V

    :goto_90
    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    if-eq v2, v8, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    :cond_b
    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_92
    const-string v13, "i-frame-interval"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_126

    nop

    nop

    :goto_93
    move-object v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_94
    move v8, v9

    nop

    nop

    :goto_95
    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_96
    if-ne v7, v10, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_97
    iput-boolean v5, v0, Lpbd;->J:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_127

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_98
    iget-object v1, v0, Lpbd;->w:Lozm;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_99
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_fe

    nop

    nop

    :goto_9a
    invoke-direct {v7}, Lpat;-><init>()V

    goto/32 :goto_112

    nop

    nop

    nop

    nop

    :goto_9b
    sget-object v7, Lozq;->b:Lozq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    iput-object v6, v0, Lpbd;->M:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    goto/32 :goto_113

    nop

    nop

    nop

    :goto_9d
    iput-object v5, v0, Lpbd;->z:Ljava/util/ArrayDeque;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_9e
    invoke-interface {v3, v12}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    iput-object v12, v0, Lpbd;->t:Landroid/os/Handler;

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_a0
    move v5, v9

    nop

    nop

    nop

    nop

    :goto_a1
    goto/32 :goto_128

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    const/4 v8, 0x3

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    iput-object v5, v0, Lpbd;->G:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_a5
    new-instance v12, Landroid/os/HandlerThread;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    :goto_a6
    check-cast v12, Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    iput-boolean v5, v0, Lpbd;->k:Z

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_a8
    invoke-virtual/range {p1 .. p1}, Lozm;->b()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    :goto_a9
    goto/16 :goto_ca

    nop

    nop

    :goto_aa
    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    iget-object v11, v1, Lozm;->b:Lozg;

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_ac
    const-string v2, "Unsupported video codec type: "

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    invoke-virtual {v7, v6, v12}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_ae
    invoke-direct {v5}, Lsuu;-><init>()V

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_af
    const-wide/16 v6, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_b0
    if-ne v7, v9, :cond_d

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_b1
    iget v12, v12, Lpck;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    nop

    :goto_b2
    goto/16 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    goto/32 :goto_6d

    nop

    nop

    :goto_b4
    const-string v7, "VideoEncoder"

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_b5
    new-instance v5, Ljava/util/ArrayDeque;

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    :goto_b6
    invoke-virtual/range {p1 .. p1}, Lozm;->c()I

    move-result v9

    nop

    goto/32 :goto_11c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    invoke-virtual/range {p7 .. p7}, Lrss;->h()Z

    move-result v8

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_b8
    iput-object v5, v0, Lpbd;->y:Ljava/util/ArrayDeque;

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    invoke-virtual/range {p1 .. p1}, Lozm;->c()I

    move-result v12

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    sget-object v7, Lozq;->c:Lozq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    :goto_bb
    goto/16 :goto_121

    nop

    nop

    nop

    :goto_bc
    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_be
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_bf
    invoke-direct {v12, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto/32 :goto_9f

    nop

    nop

    :goto_c0
    invoke-virtual {v12}, Loze;->g()Z

    move-result v13

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_c1
    const v0, 0x1e

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    invoke-virtual {v11, v12, v13}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :goto_c3
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c4
    move-object/from16 v2, p6

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_125

    nop

    nop

    :goto_c6
    iput-object v1, v0, Lpbd;->w:Lozm;

    nop

    nop

    nop

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    if-ne v7, v10, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_117

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    invoke-virtual {v11, v13, v12}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_c9
    sget-object v7, Lozq;->a:Lozq;

    nop

    nop

    nop

    nop

    :goto_ca
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_cb
    invoke-virtual {v11, v13, v12}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto/32 :goto_b9

    nop

    nop

    nop

    :goto_cc
    const-string v13, "level"

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_cd
    move-object/from16 v7, p14

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_ce
    invoke-virtual {v1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBitrateRange()Landroid/util/Range;

    move-result-object v1

    nop

    nop

    goto/32 :goto_118

    nop

    nop

    :goto_cf
    iget-object v12, v1, Lozm;->i:Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    nop

    nop

    nop

    :goto_d0
    new-instance v5, Lsuu;

    nop

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    const-string v13, "bitrate"

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    :goto_d2
    invoke-virtual {v11, v12, v13}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d3
    iget-object v6, v0, Lpbd;->C:Landroid/media/MediaCodec$Callback;

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    :goto_d4
    const-string v4, "2160P is not supported!"

    nop

    nop

    nop

    :goto_d5
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d6
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    :goto_d7
    move/from16 v13, p3

    nop

    goto/32 :goto_129

    nop

    nop

    nop

    nop

    nop

    :goto_d8
    invoke-direct {v12, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    goto/32 :goto_8c

    nop

    nop

    :goto_d9
    invoke-static {v1, v2}, Lcom/a;->ab(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :goto_da
    iput v1, v0, Lpbd;->f:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_db
    const-string v2, "RES_1080P"

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_dc
    invoke-virtual {v7}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object v1

    nop

    nop

    goto/32 :goto_106

    nop

    nop

    nop

    nop

    :goto_dd
    invoke-virtual {v12}, Landroid/os/HandlerThread;->start()V

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_de
    const-string v14, "profile"

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_df
    invoke-virtual {v1}, Lozg;->b()Lpck;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_e0
    move-object/from16 v3, p10

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e1
    invoke-virtual {v11, v12, v9}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto/32 :goto_1a

    nop

    nop

    :goto_e2
    invoke-static {v3}, Lcom/a;->VariableKeyActiveLens(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    nop

    :goto_e3
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_e4
    if-eqz v13, :cond_f

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_e5
    goto/16 :goto_ca

    nop

    :goto_e6
    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    nop

    :goto_e7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2c

    nop

    nop

    :goto_e8
    sget-object v8, Lozz;->a:Lozz;

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_e9
    invoke-direct {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ea
    iput-object v5, v0, Lpbd;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_eb
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :goto_ec
    check-cast v6, Ljava/lang/String;

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    :goto_ed
    goto/16 :goto_ca

    nop

    :goto_ee
    goto/32 :goto_9b

    nop

    nop

    :goto_ef
    int-to-double v7, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    :goto_f0
    invoke-static {v3, v2}, Lcom/a;->aa(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_0

    nop

    nop

    :goto_f1
    const-string v4, "8KUHD is not supported!"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_f2
    if-ne v12, v13, :cond_10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_f3
    iput-object v5, v0, Lpbd;->F:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_f4
    const/4 v13, -0x1

    nop

    nop

    nop

    goto/32 :goto_10e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f5
    iput-wide v5, v0, Lpbd;->E:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    :goto_f6
    const/4 v5, 0x0

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    :goto_f7
    invoke-direct {v5}, Ljava/util/ArrayDeque;-><init>()V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_f8
    iput-boolean v4, v0, Lpbd;->u:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_f9
    move-object/from16 v7, p11

    nop

    nop

    goto/32 :goto_116

    nop

    nop

    nop

    nop

    :goto_fa
    invoke-direct {v5}, Ljava/util/ArrayDeque;-><init>()V

    goto/32 :goto_9d

    nop

    nop

    :goto_fb
    const-string v12, "color-range"

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_fc
    new-instance v5, Ljava/util/ArrayDeque;

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    :goto_fd
    iget v12, v2, Lozz;->d:I

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_fe
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    :goto_ff
    if-nez v8, :cond_11

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    :cond_11
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_100
    invoke-static {v10, v12, v11}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_101
    invoke-virtual {v12}, Lrss;->h()Z

    move-result v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    nop

    nop

    :goto_102
    check-cast v12, Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_119

    nop

    nop

    :goto_103
    const-string v12, "priority"

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_104
    move/from16 v13, p5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    :goto_105
    move-object/from16 v7, p9

    nop

    goto/32 :goto_11f

    nop

    nop

    nop

    :goto_106
    invoke-virtual {v1, v10}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11a

    nop

    nop

    nop

    nop

    nop

    :goto_107
    new-instance v7, Lpat;

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    :goto_108
    invoke-virtual {v7, v2}, Landroid/media/MediaCodec;->setInputSurface(Landroid/view/Surface;)V

    goto/32 :goto_bb

    nop

    nop

    :goto_109
    return-void

    nop

    nop

    nop

    nop

    :goto_10a
    goto/32 :goto_52

    nop

    nop

    nop

    :goto_10b
    iget-object v12, v1, Lozm;->d:Loze;

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    :goto_10c
    invoke-direct {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    goto/32 :goto_a4

    nop

    nop

    :goto_10d
    invoke-virtual {v12}, Lrss;->c()Ljava/lang/Object;

    move-result-object v12

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10e
    if-ne v12, v13, :cond_12

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_de

    nop

    nop

    nop

    nop

    nop

    :goto_10f
    invoke-virtual/range {p7 .. p7}, Lrss;->h()Z

    move-result v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_110
    const-string v12, "video-qp-max"

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_111
    div-double/2addr v7, v9

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_112
    iput-object v7, v0, Lpbd;->B:Lpat;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_113
    const-string v6, ""

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_114
    invoke-virtual {v11}, Lozg;->b()Lpck;

    move-result-object v11

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_115
    if-nez v13, :cond_13

    nop

    goto/32 :goto_c3

    nop

    nop

    :cond_13
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_116
    iput-object v7, v0, Lpbd;->r:Loyn;

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_117
    const/16 v10, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_118
    iput-object v1, v0, Lpbd;->g:Landroid/util/Range;

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_119
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    goto/32 :goto_110

    nop

    nop

    nop

    :goto_11a
    invoke-virtual {v1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v1

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    :goto_11b
    const/4 v9, 0x1

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    :goto_11c
    int-to-double v9, v9

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11d
    iput-object v2, v0, Lpbd;->d:Landroid/view/Surface;

    nop

    goto/32 :goto_108

    nop

    nop

    nop

    nop

    nop

    :goto_11e
    iput-object v2, v0, Lpbd;->d:Landroid/view/Surface;

    nop

    goto/32 :goto_76

    nop

    nop

    :goto_11f
    iput-object v7, v0, Lpbd;->e:Lpau;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_120
    iput-object v6, v0, Lpbd;->d:Landroid/view/Surface;

    nop

    nop

    nop

    nop

    :goto_121
    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_122
    invoke-virtual {v11, v13, v12}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto/32 :goto_103

    nop

    nop

    :goto_123
    const-string v12, "color-standard"

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    :goto_124
    invoke-direct {v6, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_125
    const-string v12, "VideoEncoder#createAndConfig"

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    :goto_126
    invoke-virtual {v11, v13, v12}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    goto/32 :goto_123

    nop

    nop

    :goto_127
    iput-boolean v5, v0, Lpbd;->K:Z

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_128
    const-string v2, "Surface can\'t be used in block model."

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_129
    invoke-virtual {v11, v12, v13}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto/32 :goto_fb

    nop

    nop
.end method

.method private final b1051a9d8893542362ad09051775f8f6m(J)J
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    div-double/2addr p1, v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_2
    goto/32 :goto_4

    nop

    :goto_3
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    double-to-long p0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    long-to-double p1, p1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_a
    iget-wide v0, p0, Lpbd;->q:D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x12

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_c
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_d
    return-wide p0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method private final ccb4c19b7dbd16be9d2a43125797659dm()V
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_1
    goto/32 :goto_4

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    const v1, 0x16

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :try_start_0
    iget-object p0, p0, Lpbd;->i:Landroid/os/HandlerThread;

    nop

    nop

    invoke-virtual {p0}, Landroid/os/HandlerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0, p0, v1}, Lpam;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/16 v1, 0xc

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_c
    new-instance v0, Lpam;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_d
    iget-object v1, p0, Lpbd;->t:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()J
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x18

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lpbd;->F:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    goto/32 :goto_a

    nop

    :goto_4
    return-wide v0

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_9
    goto/32 :goto_5

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    const v0, 0x15

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final b()Lrss;
    .locals 5

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_1
    const v1, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v2, p0, Lpbd;->I:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lpbd;->a:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-gtz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    nop

    :goto_5
    const v0, 0x1c

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6
    cmp-long v0, v0, v2

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p0

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_8
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v1, p0, Lpbd;->I:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_1

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_24

    nop

    :goto_b
    sub-long/2addr v3, v0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sget-object p0, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1e

    nop

    nop

    :goto_f
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_10
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_11
    sget-object v1, Lcom/google/android/apps/camera/logging/PTc/RjdpW;->gBHFbOtk:Ljava/lang/String;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_12
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_13
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_17
    iget-object v1, p0, Lpbd;->I:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v0, p0, Lpbd;->G:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-direct {p0, v3, v4}, Lpbd;->b1051a9d8893542362ad09051775f8f6m(J)J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v0, p0, Lpbd;->G:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1e
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_21
    return-object p0

    nop

    :goto_22
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object p0, p0, Lpbd;->G:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_19

    nop

    nop

    :goto_26
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_27
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    nop

    goto/32 :goto_f

    nop

    nop
.end method

.method public final c(J)V
    .locals 3

    goto/32 :goto_2

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    throw p0

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    monitor-enter v0

    nop

    nop

    nop

    :goto_9
    :try_start_0
    iget-object v1, p0, Lpbd;->A:Ljava/util/ArrayDeque;

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    nop

    nop

    if-nez v1, :cond_1

    nop

    iget-object v1, p0, Lpbd;->A:Ljava/util/ArrayDeque;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    check-cast v1, Lpbc;

    nop

    nop

    iget-wide v1, v1, Lpbc;->b:J

    nop

    nop

    cmp-long v1, v1, p1

    nop

    nop

    nop

    nop

    if-gtz v1, :cond_1

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lpbd;->A:Ljava/util/ArrayDeque;

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    nop

    check-cast v1, Lpbc;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lpbc;->a()V

    goto :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_1
    monitor-exit v0

    nop

    nop

    nop

    return-void

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    monitor-exit v0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Lpbd;->m:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final close()V
    .locals 4

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-wide v0, 0x7fffffffffffffffL

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lpbd;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    monitor-enter v1

    nop

    :goto_6
    :try_start_0
    iget-object v0, p0, Lpbd;->z:Ljava/util/ArrayDeque;

    nop

    nop

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    nop

    nop

    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lpbd;->z:Ljava/util/ArrayDeque;

    nop

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Lpbc;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lpbc;->a()V

    goto :goto_6

    nop

    nop

    nop

    :cond_1
    monitor-exit v1

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    :goto_7
    const-wide/16 v2, 0x3e8

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    :try_start_1
    monitor-exit v1

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_9
    throw p0

    nop

    nop

    nop

    nop

    nop

    :cond_2
    :try_start_2
    monitor-exit v0

    nop

    nop

    return-void

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_16

    nop

    nop

    :goto_a
    monitor-enter v0

    nop

    :try_start_3
    iget v1, p0, Lpbd;->l:I

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x6

    nop

    nop

    nop

    nop

    if-eq v1, v2, :cond_2

    nop

    nop

    nop

    iput v2, p0, Lpbd;->l:I

    nop

    monitor-exit v0

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-eqz p0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_c

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :goto_d
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_17

    nop

    nop

    :goto_f
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_11
    invoke-virtual {p0, v0, v1}, Lpbd;->j(J)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Lpbd;->i:Landroid/os/HandlerThread;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v1, 0x7

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_15
    mul-long/2addr v0, v2

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v1, p0, Lpbd;->m:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_e

    nop

    :goto_1a
    iget-object v0, p0, Lpbd;->c:Landroid/media/MediaCodec;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-boolean p0, p0, Lpbd;->n:Z

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-nez v0, :cond_5

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_5
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v0, p0, Lpbd;->d:Landroid/view/Surface;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-direct {p0}, Lpbd;->ccb4c19b7dbd16be9d2a43125797659dm()V

    :goto_20
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const v0, 0x1a

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_23
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p0, v0, v1}, Lpbd;->c(J)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d(Lprw;JZ)V
    .locals 4

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    :try_start_0
    monitor-exit v0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    :goto_2
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3
    const v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lpbd;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_8
    monitor-enter v0

    nop

    nop

    nop

    :try_start_1
    iget v1, p0, Lpbd;->l:I

    nop

    const/4 v2, 0x6

    nop

    nop

    nop

    nop

    nop

    if-ne v1, v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    return-void

    nop

    nop

    nop

    nop

    :cond_0
    monitor-exit v0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v1, p0, Lpbd;->m:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x10

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_b
    monitor-enter v1

    nop

    nop

    nop

    :try_start_2
    iget-object v0, p0, Lpbd;->B:Lpat;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, p2, p3}, Lpat;->d(J)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Lprw;->close()V

    monitor-exit v1

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    :cond_1
    iget-object v0, p0, Lpbd;->z:Ljava/util/ArrayDeque;

    nop

    new-instance v2, Lpbc;

    nop

    nop

    nop

    iget-object v3, p0, Lpbd;->B:Lpat;

    nop

    nop

    nop

    invoke-virtual {v3, p2, p3}, Lpat;->a(J)J

    move-result-wide p2

    nop

    nop

    nop

    const/4 v3, 0x1

    nop

    nop

    if-eq v3, p4, :cond_2

    nop

    const/4 p4, 0x0

    nop

    nop

    goto :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_2
    const/4 p4, 0x4

    nop

    nop

    nop

    :goto_c
    invoke-direct {v2, p1, p2, p3, p4}, Lpbc;-><init>(Lprw;JI)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    invoke-direct {p0}, Lpbd;->1a36313b7ed15ba14e0acb4da569b8b7m()V

    monitor-exit v1

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    monitor-exit v1

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_0

    nop

    nop

    :goto_d
    goto/32 :goto_6

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_3

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_5

    nop
.end method

.method public final e(I)V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_e

    nop

    :goto_1
    const v0, 0x5

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_0

    nop

    nop

    :goto_4
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lpbd;->y:Ljava/util/ArrayDeque;

    nop

    nop

    nop

    nop

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    nop

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_7

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

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_7
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    :goto_9
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {p0}, Lpbd;->1a36313b7ed15ba14e0acb4da569b8b7m()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    :goto_c
    iget-object v0, p0, Lpbd;->m:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_3

    nop

    nop

    :goto_e
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_11
    iget-boolean v0, p0, Lpbd;->u:Z

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop
.end method

.method public final f(Landroid/media/MediaFormat;)V
    .locals 3

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {v0, p1}, Lpag;->f(Landroid/media/MediaFormat;)V

    goto/32 :goto_1b

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    :goto_3
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_8

    nop

    nop

    :goto_4
    iget-object v0, p0, Lpbd;->M:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1d

    nop

    :goto_b
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-string p1, "format changed twice"

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p1, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto/32 :goto_e

    nop

    nop

    :goto_e
    iget-object v0, p0, Lpbd;->w:Lozm;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1, v2, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_11
    invoke-interface {p0}, Lpag;->l()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_12
    const-string v2, "time-lapse-fps"

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_13
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v1, 0xe

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0}, Lozm;->a()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v0, p0, Lpbd;->o:Lpag;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_19
    const v0, 0x1b

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1a
    const-string v0, "time-lapse-enable"

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object p0, p0, Lpbd;->o:Lpag;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_1a

    nop

    nop
.end method

.method public final g(J)V
    .locals 4

    goto/32 :goto_1

    nop

    nop

    :goto_0
    monitor-enter v0

    nop

    nop

    nop

    :try_start_0
    iget v1, p0, Lpbd;->l:I

    nop

    nop

    nop

    nop

    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    if-eq v1, v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lpbd;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    const-string p1, "VideoEncoder is not recording now"

    nop

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    nop

    nop

    return-void

    nop

    :cond_0
    const-string v1, "Paused recording at %d "

    nop

    nop

    nop

    nop

    nop

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    nop

    nop

    nop

    nop

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    iget-object v1, p0, Lpbd;->B:Lpat;

    nop

    nop

    nop

    nop

    invoke-virtual {v1, p1, p2}, Lpat;->c(J)V

    iget-object v1, p0, Lpbd;->d:Landroid/view/Surface;

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    iget-boolean v1, p0, Lpbd;->j:Z

    nop

    nop

    nop

    nop

    nop

    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    new-instance v1, Landroid/os/Bundle;

    nop

    nop

    nop

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "drop-input-frames"

    nop

    nop

    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "drop-start-time-us"

    nop

    nop

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object p1, p0, Lpbd;->c:Landroid/media/MediaCodec;

    nop

    invoke-virtual {p1, v1}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    :cond_1
    const/4 p1, 0x3

    nop

    nop

    nop

    nop

    iput p1, p0, Lpbd;->l:I

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
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

    :goto_7
    iget-object v0, p0, Lpbd;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    throw p0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final h(J)V
    .locals 4

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    const v0, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lpbd;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    throw p0

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    monitor-enter v0

    nop

    nop

    :try_start_0
    iget v1, p0, Lpbd;->l:I

    nop

    const/4 v2, 0x3

    nop

    if-eq v1, v2, :cond_1

    nop

    iget-object p0, p0, Lpbd;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    const-string p1, "It is not recording now"

    nop

    nop

    nop

    nop

    nop

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    :cond_1
    const-string v1, "Resumed recording at %d"

    nop

    nop

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    nop

    nop

    nop

    nop

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    iget-object v1, p0, Lpbd;->B:Lpat;

    nop

    nop

    invoke-virtual {v1, p1, p2}, Lpat;->b(J)V

    iget-object v1, p0, Lpbd;->d:Landroid/view/Surface;

    nop

    nop

    if-eqz v1, :cond_2

    nop

    nop

    iget-boolean v1, p0, Lpbd;->j:Z

    nop

    nop

    nop

    if-nez v1, :cond_2

    nop

    nop

    nop

    new-instance v1, Landroid/os/Bundle;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "drop-input-frames"

    nop

    nop

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "drop-start-time-us"

    nop

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "time-offset-us"

    nop

    nop

    nop

    iget-object p2, p0, Lpbd;->B:Lpat;

    nop

    nop

    nop

    nop

    nop

    iget-wide v2, p2, Lpat;->a:J

    nop

    nop

    nop

    nop

    neg-long v2, v2

    nop

    nop

    nop

    nop

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object p1, p0, Lpbd;->c:Landroid/media/MediaCodec;

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v1}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    :cond_2
    const/4 p1, 0x2

    nop

    nop

    nop

    nop

    nop

    iput p1, p0, Lpbd;->l:I

    nop

    monitor-exit v0

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop
.end method

.method public final i()V
    .locals 4

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_2
    goto/32 :goto_5

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    :goto_6
    monitor-enter v1

    nop

    nop

    nop

    :try_start_0
    iget v2, p0, Lpbd;->l:I

    nop

    const/4 v3, 0x1

    nop

    nop

    nop

    if-eq v2, v3, :cond_1

    nop

    nop

    const/4 v3, 0x3

    nop

    nop

    nop

    nop

    nop

    if-eq v2, v3, :cond_1

    nop

    nop

    nop

    iget-object p0, p0, Lpbd;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    invoke-static {v2}, Lolx;->aO(I)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    new-instance v3, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    nop

    nop

    nop

    nop

    return-void

    nop

    :cond_1
    iget-boolean v0, p0, Lpbd;->k:Z

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lpbd;->close()V

    iget-object p0, p0, Lpbd;->e:Lpau;

    nop

    nop

    nop

    sget-object v0, Lpar;->j:Lpar;

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v0}, Lpau;->a(Lpar;)V

    monitor-exit v1

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    :cond_2
    iget-object v0, p0, Lpbd;->c:Landroid/media/MediaCodec;

    nop

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    new-instance v0, Landroid/os/Bundle;

    nop

    nop

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "drop-input-frames"

    nop

    nop

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lpbd;->c:Landroid/media/MediaCodec;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v0}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    const/4 v0, 0x2

    nop

    nop

    iput v0, p0, Lpbd;->l:I

    nop

    nop

    nop

    nop

    monitor-exit v1

    nop

    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    monitor-exit v1

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    :goto_7
    const v0, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const-string v0, "illegal state as "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v1, p0, Lpbd;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public final j(J)V
    .locals 11

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_1
    const/16 v0, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_3
    iget-object v5, p0, Lpbd;->h:Lsuu;

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-eqz p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_23

    nop

    nop

    :goto_5
    throw p0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lpbd;->a()J

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p1, p0, Lpbd;->t:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_9
    iget-object v1, p0, Lpbd;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_a
    invoke-interface {v1, v5}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_29

    nop

    nop

    :goto_b
    invoke-virtual {p1}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    :goto_c
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-eqz p1, :cond_1

    nop

    goto/32 :goto_36

    nop

    nop

    :cond_1
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v1, p0, Lpbd;->p:Lpdf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_10
    iget-wide v2, p0, Lpbd;->E:J

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-eqz p1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0x1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_13
    long-to-double v5, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object p1, p0, Lpbd;->d:Landroid/view/Surface;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_15
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_16
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-wide v5, v1, Lpat;->a:J

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_19
    iget-object p1, p0, Lpbd;->h:Lsuu;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v5, p0, Lpbd;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1b
    const/4 p2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_1c
    const v1, 0x18

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_1d
    iget-object v1, p0, Lpbd;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1e
    iget-boolean p1, p0, Lpbd;->j:Z

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1f
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-eqz v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_3
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_21
    monitor-enter v1

    nop

    nop

    :try_start_0
    iget v2, p0, Lpbd;->l:I

    nop

    nop

    nop

    const/4 v3, 0x3

    nop

    nop

    const/4 v4, 0x2

    nop

    if-eq v2, v4, :cond_5

    nop

    nop

    nop

    nop

    nop

    if-ne v2, v3, :cond_4

    nop

    nop

    nop

    nop

    iget-object v2, p0, Lpbd;->B:Lpat;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, p1, p2}, Lpat;->b(J)V

    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto :goto_22

    nop

    nop

    nop

    nop

    nop

    :cond_4
    monitor-exit v1

    nop

    return-void

    nop

    nop

    nop

    :cond_5
    const/4 v2, 0x0

    nop

    nop

    :goto_22
    const/4 v5, 0x4

    nop

    nop

    nop

    iput v5, p0, Lpbd;->l:I

    nop

    nop

    nop

    nop

    nop

    monitor-exit v1

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object p1, p0, Lpbd;->c:Landroid/media/MediaCodec;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v1, p0, Lpbd;->B:Lpat;

    nop

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

    :goto_25
    monitor-enter v1

    nop

    :try_start_1
    iget v2, p0, Lpbd;->l:I

    nop

    nop

    if-ne v2, v3, :cond_6

    nop

    goto :goto_26

    nop

    nop

    nop

    nop

    :cond_6
    if-ne v2, v4, :cond_9

    nop

    nop

    :goto_26
    iget-object v2, p0, Lpbd;->d:Landroid/view/Surface;

    nop

    nop

    nop

    nop

    nop

    if-nez v2, :cond_8

    nop

    iget-object v0, p0, Lpbd;->c:Landroid/media/MediaCodec;

    nop

    nop

    nop

    const-wide/16 v2, 0x2710

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    nop

    nop

    nop

    if-gez v5, :cond_7

    nop

    nop

    nop

    monitor-exit v1

    nop

    nop

    nop

    nop

    goto/16 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_7
    iget-object v0, p0, Lpbd;->c:Landroid/media/MediaCodec;

    nop

    nop

    invoke-virtual {v0, v5}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v4, p0, Lpbd;->c:Landroid/media/MediaCodec;

    nop

    nop

    nop

    nop

    nop

    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    const/4 v10, 0x4

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    move-wide v8, p1

    nop

    nop

    nop

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    monitor-exit v1

    nop

    nop

    nop

    nop

    goto/16 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    sget-object p1, Lozz;->a:Lozz;

    nop

    nop

    nop

    nop

    nop

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    new-instance p2, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "is used as color format, you are not allowed to add data here"

    nop

    nop

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    nop

    nop

    nop

    nop

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    const-string p1, "encoding is not yet started."

    nop

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    monitor-exit v1

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_5

    nop

    nop

    :goto_27
    iget-object v4, p0, Lpbd;->G:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    mul-double/2addr v5, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v1, p0, Lpbd;->d:Landroid/view/Surface;

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/16 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_2c
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_2d
    double-to-long v5, v5

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v0, p0, Lpbd;->x:Lpaq;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result p1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_30
    sub-long v5, p1, v5

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_31
    iget-wide v7, p0, Lpbd;->q:D

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget-object p0, p0, Lpbd;->p:Lpdf;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    new-instance p2, Lpam;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_34
    invoke-direct {p2, p0, v0}, Lpam;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual/range {v0 .. v5}, Lpaq;->a(IJLjava/util/concurrent/atomic/AtomicLong;Lsui;)V

    :goto_36
    goto/32 :goto_7

    nop

    nop

    :goto_37
    iget-boolean v1, p0, Lpbd;->u:Z

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_38
    const-string v6, "#stop"

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    throw p0

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_40

    nop

    nop

    :goto_3c
    invoke-virtual {p1, p2}, Lsuu;->e(Ljava/lang/Object;)Z

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_3d
    const-string v0, "As "

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3e
    return-void

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    :try_start_2
    monitor-exit v1

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_3f
    invoke-direct {p0}, Lpbd;->ccb4c19b7dbd16be9d2a43125797659dm()V

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_41
    iput-wide v5, p0, Lpbd;->E:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_42
    if-nez v2, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_a
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_43
    if-lez v0, :cond_b

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_b
    goto/32 :goto_16

    nop

    :goto_44
    iget-boolean p1, p0, Lpbd;->J:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_45
    if-nez v1, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    :cond_c
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop
.end method

.method public final k()V
    .locals 4

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x5

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_c

    nop

    nop

    :goto_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    mul-long/2addr v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget v1, p0, Lpbd;->l:I

    nop

    const/4 v2, 0x2

    nop

    nop

    if-eq v1, v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x3

    nop

    nop

    nop

    nop

    nop

    if-ne v1, v2, :cond_1

    nop

    nop

    :cond_0
    iget-boolean v1, p0, Lpbd;->K:Z

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    iget-object v1, p0, Lpbd;->d:Landroid/view/Surface;

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lpbd;->c:Landroid/media/MediaCodec;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    :cond_1
    monitor-exit v0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_9

    nop

    nop

    :goto_7
    invoke-virtual {p0, v0, v1}, Lpbd;->j(J)V

    goto/32 :goto_e

    nop

    nop

    :goto_8
    iput-boolean v0, p0, Lpbd;->J:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    throw p0

    nop

    :goto_c
    goto/32 :goto_4

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_b

    nop

    nop

    :goto_f
    iget-object v0, p0, Lpbd;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_10
    const-wide/16 v2, 0x3e8

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_11
    const v0, 0x17

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_12
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop
.end method

.method public final l(ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 19

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_2
    move-object/from16 v1, p0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_3
    monitor-enter v4

    nop

    nop

    nop

    nop

    :try_start_0
    iget v0, v1, Lpbd;->l:I

    nop

    nop

    nop

    const/4 v5, 0x5

    nop

    nop

    nop

    nop

    if-eq v0, v5, :cond_10

    nop

    nop

    const/4 v5, 0x6

    nop

    nop

    nop

    nop

    nop

    if-ne v0, v5, :cond_0

    nop

    nop

    goto/16 :goto_12

    nop

    nop

    nop

    nop

    :cond_0
    if-gez v2, :cond_1

    nop

    nop

    nop

    nop

    iget-object v0, v1, Lpbd;->a:Ljava/lang/String;

    nop

    const-string v3, "unexpected result from encoder.dequeueOutputBuffer: "

    nop

    nop

    nop

    nop

    invoke-static {v2, v3}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    nop

    :cond_1
    iget-boolean v0, v1, Lpbd;->u:Z

    nop

    nop

    nop

    nop

    nop

    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_3

    nop

    nop

    iget-object v0, v1, Lpbd;->c:Landroid/media/MediaCodec;

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v2}, Landroid/media/MediaCodec;->getOutputFrame(I)Landroid/media/MediaCodec$OutputFrame;

    move-result-object v0

    nop

    invoke-virtual {v0}, Landroid/media/MediaCodec$OutputFrame;->getLinearBlock()Landroid/media/MediaCodec$LinearBlock;

    move-result-object v0

    nop

    nop

    if-eqz v0, :cond_2

    nop

    invoke-virtual {v0}, Landroid/media/MediaCodec$LinearBlock;->map()Ljava/nio/ByteBuffer;

    move-result-object v6

    nop

    nop

    move-object/from16 v18, v6

    nop

    nop

    nop

    nop

    nop

    move-object v6, v0

    nop

    nop

    move-object/from16 v0, v18

    nop

    goto :goto_4

    nop

    :cond_2
    move-object v6, v0

    nop

    move-object v0, v5

    nop

    nop

    nop

    nop

    goto :goto_4

    nop

    :cond_3
    iget-object v0, v1, Lpbd;->c:Landroid/media/MediaCodec;

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    move-object v0, v6

    nop

    move-object v6, v5

    nop

    nop

    nop

    :goto_4
    iget v7, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    nop

    nop

    nop

    and-int/lit8 v7, v7, 0x2

    nop

    nop

    const/4 v8, 0x0

    nop

    if-nez v7, :cond_4

    nop

    nop

    if-nez v0, :cond_5

    nop

    :cond_4
    iput v8, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    nop

    nop

    nop

    :cond_5
    iget-wide v9, v1, Lpbd;->q:D

    nop

    nop

    nop

    nop

    nop

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    nop

    cmpl-double v7, v9, v11

    nop

    if-nez v7, :cond_6

    nop

    nop

    iget-wide v9, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    nop

    long-to-double v9, v9

    nop

    nop

    nop

    nop

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    iget-wide v11, v1, Lpbd;->q:D

    nop

    nop

    nop

    nop

    mul-double/2addr v9, v11

    nop

    nop

    nop

    double-to-long v9, v9

    nop

    nop

    iput-wide v9, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    nop

    nop

    nop

    nop

    nop

    :cond_6
    iget v7, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    nop

    if-eqz v7, :cond_b

    nop

    nop

    nop

    iget-object v7, v1, Lpbd;->h:Lsuu;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v7}, Lsuu;->isDone()Z

    move-result v7

    nop

    nop

    nop

    nop

    if-nez v7, :cond_b

    nop

    nop

    nop

    nop

    iget-wide v9, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    nop

    iget-wide v11, v1, Lpbd;->E:J

    nop

    nop

    nop

    nop

    cmp-long v7, v9, v11

    nop

    if-gtz v7, :cond_b

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v1, Lpbd;->o:Lpag;

    nop

    invoke-interface {v7}, Lpag;->p()Z

    move-result v7

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    if-eqz v7, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_7
    :try_start_1
    iget-object v7, v1, Lpbd;->o:Lpag;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v7, v10, v11}, Lpag;->k(J)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v9, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    const-wide/16 v10, 0x3e8

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_8
    iget-object v4, v1, Lpbd;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    const v1, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x11

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_14

    nop

    nop

    :goto_d
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_e
    goto :goto_f

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_2
    iget-object v7, v1, Lpbd;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    const-string v10, "Could not start all required tracks."

    nop

    nop

    invoke-static {v7, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-boolean v9, v1, Lpbd;->L:Z

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v1, Lpbd;->e:Lpau;

    nop

    nop

    nop

    nop

    sget-object v7, Lpar;->m:Lpar;

    nop

    invoke-virtual {v0, v7}, Lpau;->a(Lpar;)V

    goto/16 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-wide v12, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    nop

    nop

    nop

    nop

    iget-object v7, v1, Lpbd;->r:Loyn;

    nop

    nop

    check-cast v7, Loxv;

    nop

    nop

    nop

    iget-object v7, v7, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v7, Ljava/lang/Long;

    nop

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    nop

    nop

    const-wide/16 v16, 0x0

    nop

    nop

    cmp-long v7, v14, v16

    nop

    nop

    nop

    if-nez v7, :cond_8

    nop

    nop

    iget-object v7, v1, Lpbd;->r:Loyn;

    nop

    nop

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v7, v14}, Loyn;->a(Ljava/lang/Object;)V

    iget-object v7, v1, Lpbd;->I:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    invoke-virtual {v7, v12, v13}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :cond_8
    iget-object v7, v1, Lpbd;->s:Loyn;

    nop

    nop

    nop

    nop

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    nop

    nop

    nop

    invoke-interface {v7, v14}, Loyn;->a(Ljava/lang/Object;)V

    iget-object v7, v1, Lpbd;->G:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v7, v12, v13}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v7, v1, Lpbd;->H:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    invoke-direct {v1, v12, v13}, Lpbd;->b1051a9d8893542362ad09051775f8f6m(J)J

    move-result-wide v14

    nop

    nop

    nop

    invoke-virtual {v7, v14, v15}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v7, v1, Lpbd;->e:Lpau;

    nop

    sget-object v14, Lpaj;->b:Lpaj;

    nop

    nop

    nop

    invoke-virtual {v7, v14}, Lpau;->g(Lpaj;)Z

    move-result v7

    nop

    nop

    nop

    if-nez v7, :cond_9

    nop

    iget-boolean v7, v1, Lpbd;->j:Z

    nop

    nop

    nop

    if-nez v7, :cond_9

    nop

    nop

    iget-object v7, v1, Lpbd;->e:Lpau;

    nop

    nop

    nop

    sget-object v14, Lpaj;->b:Lpaj;

    nop

    nop

    nop

    nop

    nop

    iget-object v15, v1, Lpbd;->H:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    invoke-virtual {v7, v14, v15}, Lpau;->e(Lpaj;Ljava/util/concurrent/atomic/AtomicLong;)V

    :cond_9
    iget v7, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v7, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    nop

    nop

    nop

    nop

    nop

    iget v14, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    nop

    add-int/2addr v7, v14

    nop

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v7, v1, Lpbd;->o:Lpag;

    nop

    nop

    nop

    nop

    invoke-interface {v7, v0, v3}, Lpag;->o(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    iput-boolean v9, v1, Lpbd;->K:Z

    nop

    nop

    nop

    iget-wide v14, v1, Lpbd;->D:J

    nop

    nop

    nop

    nop

    cmp-long v0, v14, v16

    nop

    nop

    if-lez v0, :cond_a

    nop

    nop

    nop

    nop

    nop

    cmp-long v0, v12, v14

    nop

    nop

    nop

    nop

    if-lez v0, :cond_a

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v1, Lpbd;->o:Lpag;

    nop

    nop

    nop

    nop

    nop

    sub-long v14, v12, v14

    nop

    nop

    nop

    nop

    div-long/2addr v14, v10

    nop

    nop

    nop

    nop

    invoke-interface {v0, v14, v15}, Lpag;->e(J)V

    :cond_a
    iput-wide v12, v1, Lpbd;->D:J

    nop

    nop

    nop

    nop

    iget-object v0, v1, Lpbd;->F:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    :cond_b
    :goto_10
    if-eqz v6, :cond_c

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Landroid/media/MediaCodec$LinearBlock;->recycle()V

    :cond_c
    iget-object v0, v1, Lpbd;->c:Landroid/media/MediaCodec;

    nop

    nop

    nop

    invoke-virtual {v0, v2, v8}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    iget-wide v6, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    nop

    nop

    iget-wide v8, v1, Lpbd;->E:J

    nop

    cmp-long v0, v6, v8

    nop

    nop

    nop

    nop

    nop

    if-ltz v0, :cond_d

    nop

    nop

    iget v0, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    nop

    and-int/lit8 v0, v0, 0x2

    nop

    nop

    nop

    if-eqz v0, :cond_e

    nop

    nop

    :cond_d
    iget v0, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    nop

    nop

    nop

    and-int/lit8 v0, v0, 0x4

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_e

    nop

    nop

    nop

    nop

    iget-boolean v0, v1, Lpbd;->L:Z

    nop

    nop

    nop

    nop

    if-nez v0, :cond_e

    nop

    nop

    nop

    nop

    iget-boolean v0, v1, Lpbd;->k:Z

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_f

    nop

    :cond_e
    iget-object v0, v1, Lpbd;->h:Lsuu;

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v5}, Lsuu;->e(Ljava/lang/Object;)Z

    :cond_f
    :goto_11
    iget-object v0, v1, Lpbd;->h:Lsuu;

    nop

    nop

    nop

    invoke-virtual {v0}, Lsuu;->isDone()Z

    monitor-exit v4

    nop

    return-void

    nop

    :cond_10
    :goto_12
    monitor-exit v4

    nop

    nop

    nop

    nop

    return-void

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    monitor-exit v4

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_13
    throw v0

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_15
    move-object/from16 v3, p2

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_16
    move/from16 v2, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_11

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_c

    nop
.end method
