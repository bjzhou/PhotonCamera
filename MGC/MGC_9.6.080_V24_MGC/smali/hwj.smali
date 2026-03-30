.class public final Lhwj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lhws;


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field private final b:Lpcu;

.field private c:J

.field private final d:Lkqj;

.field private final e:Lhoh;


# direct methods
.method public constructor <init>(Lkqj;Ljava/util/concurrent/Executor;Lhoh;Lpcu;)V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5
    const-string p1, "GpuFBCtrl"

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

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    const-wide/16 v0, 0x0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {p4, p1}, Lpcu;->a(Ljava/lang/String;)Lpcu;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0xc

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-object p3, p0, Lhwj;->e:Lhoh;

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

    :goto_e
    iput-wide v0, p0, Lhwj;->c:J

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput-object p1, p0, Lhwj;->d:Lkqj;

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

    :goto_10
    iput-object p2, p0, Lhwj;->a:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_11
    iput-object p1, p0, Lhwj;->b:Lpcu;

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

    :goto_12
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop
.end method


# virtual methods
.method public final a(Lhwy;)Lsui;
    .locals 3

    goto/32 :goto_18

    nop

    nop

    :goto_0
    invoke-direct {v1, p0, p1, v2}, Lhxa;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-virtual {v0, v1}, Lkqj;->a(Lkqg;)Lsui;

    move-result-object p0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_2
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p1, Lhwy;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Llyd;->b()Z

    move-result v0

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

    :goto_7
    rem-int v0, v0, v1

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

    :goto_8
    new-instance p1, Lhwh;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_a
    const v1, 0x5

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_b
    if-eqz v0, :cond_1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {p1}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

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
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_5

    nop

    nop

    :goto_10
    add-int v0, v0, v1

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

    :goto_11
    iget-object v0, p0, Lhwj;->d:Lkqj;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object p0, p1, Lhwy;->a:Ljava/lang/Object;

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

    :goto_13
    invoke-direct {p1, p0}, Lhwh;-><init>(Lprw;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_14
    new-instance v1, Lhxa;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_15
    return-object p0

    nop

    nop

    :goto_16
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    check-cast v0, Llyd;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_18
    const v0, 0x1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop
.end method

.method public final declared-synchronized b()V
    .locals 5

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_4

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_3
    throw v0

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iget-wide v0, p0, Lhwj;->c:J

    nop

    nop

    nop

    const-wide/16 v2, 0x0

    nop

    nop

    nop

    nop

    cmp-long v4, v0, v2

    nop

    nop

    nop

    if-eqz v4, :cond_1

    nop

    nop

    invoke-static {v0, v1}, Lcom/google/android/apps/camera/jni/facebeautification/GpuRetoucherNative;->releaseRetoucher(J)V

    iput-wide v2, p0, Lhwj;->c:J

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_8

    nop

    nop

    :goto_7
    const v1, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_b
    monitor-exit p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x5

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1

    nop
.end method

.method public final declared-synchronized c(Lhwy;)Lhwr;
    .locals 20

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eq v4, v9, :cond_0

    nop

    nop

    goto/32 :goto_20

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    move-object v3, v0

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v2

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_3
    move-object/from16 v1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_5
    move-object v3, v0

    nop

    nop

    nop

    :try_start_1
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw v2

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

    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_1
    goto/32 :goto_d

    nop

    :goto_8
    const-string v2, "Running GPU face retouch on an image of size "

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    monitor-exit p0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v3, :cond_2

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_2
    :try_start_2
    invoke-virtual {v3}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_b
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_c
    if-nez v5, :cond_3

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_3
    :try_start_3
    invoke-virtual {v5}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_f
    return-object v3

    nop

    nop

    nop

    :catchall_2
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x20

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_11
    throw v0

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_13
    move v4, v8

    nop

    nop

    nop

    nop

    nop

    :goto_14
    :try_start_4
    invoke-virtual {v3}, Landroid/hardware/HardwareBuffer;->close()V

    iget-object v3, v0, Lhwy;->b:Ljava/lang/Object;

    nop

    invoke-static {v3}, Lhst;->c(Lpro;)Lryb;

    move-result-object v3

    nop

    nop

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    nop

    if-eqz v5, :cond_4

    nop

    iget-object v0, v0, Lhwy;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    new-instance v2, Lhwh;

    nop

    nop

    invoke-direct {v2, v0}, Lhwh;-><init>(Lprw;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/32 :goto_b

    nop

    nop

    :goto_15
    move-object v2, v0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

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

    :goto_17
    const v0, 0x17

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_18
    return-object v2

    nop

    nop

    nop

    :cond_4
    :try_start_5
    iget-object v5, v0, Lhwy;->a:Ljava/lang/Object;

    nop

    invoke-interface {v5}, Lprw;->f()Landroid/hardware/HardwareBuffer;

    move-result-object v5

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v1, Lhwj;->b:Lpcu;

    nop

    nop

    nop

    nop

    nop

    iget-object v7, v0, Lhwy;->a:Ljava/lang/Object;

    nop

    nop

    invoke-interface {v7}, Lprw;->c()I

    move-result v7

    nop

    iget-object v10, v0, Lhwy;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v10}, Lprw;->b()I

    move-result v10

    nop

    nop

    nop

    nop

    nop

    new-instance v11, Ljava/lang/StringBuilder;

    nop

    invoke-direct {v11, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " x "

    nop

    nop

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    invoke-interface {v6, v2}, Lpcu;->g(Ljava/lang/String;)V

    iget-wide v10, v1, Lhwj;->c:J

    nop

    xor-int/lit8 v15, v4, 0x1

    nop

    iget-object v2, v0, Lhwy;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Lprw;->c()I

    move-result v16

    nop

    iget-object v2, v0, Lhwy;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Lprw;->b()I

    move-result v17

    nop

    nop

    new-array v2, v8, [Lcom/google/android/apps/camera/facemetadata/conversions/FaceToBeautify2;

    nop

    nop

    nop

    invoke-interface {v3, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v18, v2

    nop

    check-cast v18, [Lcom/google/android/apps/camera/facemetadata/conversions/FaceToBeautify2;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v0, Lhwy;->e:Ljava/lang/Object;

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Llyd;

    nop

    nop

    nop

    iget v2, v2, Llyd;->f:I

    nop

    nop

    nop

    nop

    nop

    move-object v12, v5

    nop

    nop

    nop

    move v13, v15

    nop

    nop

    nop

    nop

    move-object v14, v5

    nop

    nop

    nop

    nop

    nop

    move/from16 v19, v2

    nop

    nop

    invoke-static/range {v10 .. v19}, Lcom/google/android/apps/camera/jni/facebeautification/GpuRetoucherNative;->process(JLandroid/hardware/HardwareBuffer;ZLandroid/hardware/HardwareBuffer;ZII[Lcom/google/android/apps/camera/facemetadata/conversions/FaceToBeautify2;I)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-virtual {v5}, Landroid/hardware/HardwareBuffer;->close()V

    iget-object v2, v0, Lhwy;->a:Ljava/lang/Object;

    nop

    iget-object v0, v0, Lhwy;->e:Ljava/lang/Object;

    nop

    new-instance v3, Lhwg;

    nop

    check-cast v0, Llyd;

    nop

    nop

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    invoke-direct {v3, v2, v4, v0}, Lhwg;-><init>(Lprw;[BLlyd;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_19
    move-object v2, v0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    move v4, v9

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/16 :goto_6

    nop

    :catchall_3
    move-exception v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_8
    iget-wide v3, v1, Lhwj;->c:J

    nop

    nop

    nop

    const-wide/16 v5, 0x0

    nop

    nop

    cmp-long v7, v3, v5

    nop

    nop

    const/4 v8, 0x0

    nop

    nop

    const/4 v9, 0x1

    nop

    nop

    nop

    if-nez v7, :cond_6

    nop

    iget-object v3, v0, Lhwy;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    sget-object v4, Lhmg;->a:Lhmo;

    nop

    nop

    nop

    nop

    check-cast v3, Llyd;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Llyd;->ordinal()I

    move-result v3

    nop

    nop

    if-eq v3, v9, :cond_5

    nop

    nop

    nop

    nop

    const/4 v4, 0x2

    nop

    nop

    nop

    if-eq v3, v4, :cond_5

    nop

    nop

    nop

    nop

    const/4 v4, 0x3

    nop

    if-eq v3, v4, :cond_5

    nop

    nop

    nop

    nop

    nop

    move v3, v8

    nop

    nop

    nop

    goto :goto_1d

    nop

    nop

    nop

    nop

    nop

    :cond_5
    move v3, v9

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {v9, v3}, Lcom/google/android/apps/camera/jni/facebeautification/GpuRetoucherNative;->createRetoucher(ZI)J

    move-result-wide v3

    nop

    nop

    nop

    nop

    iput-wide v3, v1, Lhwj;->c:J

    nop

    nop

    nop

    nop

    :cond_6
    cmp-long v3, v3, v5

    nop

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_7

    nop

    nop

    nop

    nop

    move v3, v9

    nop

    goto :goto_1e

    nop

    nop

    nop

    :cond_7
    move v3, v8

    nop

    :goto_1e
    invoke-static {v3}, Lrrf;->x(Z)V

    iget-object v3, v0, Lhwy;->a:Ljava/lang/Object;

    nop

    invoke-interface {v3}, Lprw;->f()Landroid/hardware/HardwareBuffer;

    move-result-object v3

    nop

    nop

    nop

    nop
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Landroid/hardware/HardwareBuffer;->getFormat()I

    move-result v4

    nop

    nop
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/16 :goto_14

    nop

    :goto_20
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_2

    nop

    nop

    :catchall_4
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    move-object/from16 v0, p1

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_23
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop
.end method

.method public final close()V
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1
    iget-object p0, p0, Lhwj;->a:Ljava/util/concurrent/Executor;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x8

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x15

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0, p0, v1}, Lhsx;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_8
    new-instance v0, Lhsx;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v1, 0x5

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_e

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

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

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_4

    nop

    nop
.end method
