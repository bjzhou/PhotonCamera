.class public Liyn;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Liym;


# static fields
.field private static final a:Lsdb;

.field private static final b:[F

.field private static final c:[I

.field private static final d:[I


# instance fields
.field private final e:J

.field private final f:Ljava/lang/Object;

.field private g:Z

.field private h:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    goto/32 :goto_e

    nop

    nop

    :goto_0
    sput-object v0, Liyn;->b:[F

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_12

    nop

    nop

    :goto_4
    filled-new-array {v2, v2, v2}, [I

    move-result-object v0

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

    :goto_5
    const-string v0, "iyn"

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {}, Lhhg;->B()[F

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    sput-object v0, Liyn;->d:[I

    nop

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

    :goto_8
    sput-object v0, Liyn;->a:Lsdb;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    goto/32 :goto_12

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_b
    const/4 v1, 0x2

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v0, 0x0

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_d
    sput-object v0, Liyn;->c:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_e
    const v0, 0x15

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

    :goto_f
    add-int v0, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_10
    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_2

    nop

    :goto_12
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0x1c

    nop

    nop

    goto/32 :goto_f

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 2

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1
    const-wide/16 v0, 0x0

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

    nop

    nop

    :goto_2
    new-instance v0, Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    iput-wide v0, p0, Liyn;->h:J

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    invoke-static {v0, v1}, Lcom/google/android/apps/camera/jni/gyro/GyroQueueNative;->createHandle([I[I)J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object v0, p0, Liyn;->f:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_8
    sget-object v1, Liyn;->d:[I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_9
    return-void

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

    nop

    :goto_b
    sget-object v0, Liyn;->c:[I

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x19

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_10
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_11
    iput-boolean v0, p0, Liyn;->g:Z

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_13
    iput-wide v0, p0, Liyn;->e:J

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

    :goto_14
    const v1, 0x1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_15
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
.end method


# virtual methods
.method public final a()J
    .locals 3

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-wide v1, p0, Liyn;->h:J

    nop

    monitor-exit v0

    nop

    return-wide v1

    nop

    nop

    :catchall_0
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

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_9

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Liyn;->f:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    const v1, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    const v0, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    :goto_9
    throw p0

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop
.end method

.method public final b(FFFJ)V
    .locals 9

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-boolean v1, p0, Liyn;->g:Z

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto :goto_1

    nop

    :cond_0
    iget-wide v1, p0, Liyn;->h:J

    nop

    nop

    nop

    nop

    nop

    cmp-long v1, v1, p4

    nop

    nop

    nop

    if-gez v1, :cond_1

    nop

    nop

    nop

    iput-wide p4, p0, Liyn;->h:J

    nop

    nop

    nop

    nop

    nop

    iget-wide v2, p0, Liyn;->e:J

    nop

    nop

    move v4, p1

    nop

    nop

    nop

    nop

    nop

    move v5, p2

    nop

    nop

    nop

    move v6, p3

    nop

    nop

    nop

    nop

    nop

    move-wide v7, p4

    nop

    nop

    nop

    invoke-static/range {v2 .. v8}, Lcom/google/android/apps/camera/jni/gyro/GyroQueueNative;->processAndEnqueueGyro(JFFFJ)Z

    :cond_1
    :goto_1
    monitor-exit v0

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

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_8

    nop

    nop

    :goto_2
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3
    const v1, 0x2

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

    :goto_4
    rem-int v0, v0, v1

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

    :goto_5
    add-int v0, v0, v1

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

    :goto_6
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_b

    nop

    :goto_7
    iget-object v0, p0, Liyn;->f:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    throw p0

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x8

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c(JFFF[F)Z
    .locals 14

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2
    monitor-enter v1

    nop

    nop

    nop

    nop

    :try_start_0
    iget-boolean v2, v0, Liyn;->g:Z

    nop

    nop

    nop

    if-eqz v2, :cond_0

    nop

    nop

    monitor-exit v1

    nop

    nop

    return v3

    nop

    nop

    nop

    nop

    :cond_0
    iget-wide v4, v0, Liyn;->e:J

    nop

    nop

    nop

    nop

    const-wide/16 v11, 0x0

    nop

    nop

    nop

    move-wide v6, p1

    nop

    nop

    nop

    nop

    move/from16 v8, p3

    nop

    nop

    move/from16 v9, p4

    nop

    nop

    move/from16 v10, p5

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v13, p6

    nop

    nop

    nop

    nop

    invoke-static/range {v4 .. v13}, Lcom/google/android/apps/camera/jni/gyro/GyroQueueNative;->getProjectionMatrix(JJFFFJ[F)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_1

    nop

    nop

    nop

    sget-object v0, Liyn;->a:Lsdb;

    nop

    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    const/16 v2, 0x7de

    nop

    nop

    nop

    invoke-interface {v0, v2}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    const-string v2, "Projection matrix could not be computed for timestamp = %d"

    nop

    move-wide v4, p1

    nop

    nop

    nop

    invoke-interface {v0, v2, v4, v5}, Lscz;->u(Ljava/lang/String;J)V

    monitor-exit v1

    nop

    nop

    nop

    return v3

    nop

    nop

    :cond_1
    monitor-exit v1

    nop

    nop

    nop

    nop

    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    return v0

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

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

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_6
    sget-object v1, Liyn;->b:[F

    nop

    nop

    nop

    goto/32 :goto_8

    nop

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
    const/16 v2, 0x9

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    const v1, 0x14

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a
    move-object v0, p0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x12

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_c
    throw v0

    nop

    nop

    :goto_d
    goto/32 :goto_7

    nop

    nop

    :goto_e
    move-object/from16 v13, p6

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

    :goto_f
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_2
    goto/32 :goto_0

    nop

    :goto_10
    iget-object v1, v0, Liyn;->f:Ljava/lang/Object;

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

    :goto_11
    invoke-static {v1, v3, v13, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final close()V
    .locals 3

    goto/32 :goto_1

    nop

    nop

    :goto_0
    monitor-enter v0

    nop

    :try_start_0
    iget-boolean v1, p0, Liyn;->g:Z

    nop

    if-eqz v1, :cond_0

    nop

    nop

    nop

    monitor-exit v0

    nop

    return-void

    nop

    nop

    :cond_0
    const/4 v1, 0x1

    nop

    nop

    iput-boolean v1, p0, Liyn;->g:Z

    nop

    nop

    nop

    nop

    nop

    iget-wide v1, p0, Liyn;->e:J

    nop

    nop

    invoke-static {v1, v2}, Lcom/google/android/apps/camera/jni/gyro/GyroQueueNative;->releaseHandle(J)V

    monitor-exit v0

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    monitor-exit v0

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

    nop

    :goto_1
    const v0, 0x18

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_5
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_1
    goto/32 :goto_6

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

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

    :goto_9
    throw p0

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Liyn;->f:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d(JFFFJFFF)[F
    .locals 17

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter v14

    nop

    nop

    nop

    :try_start_0
    iget-boolean v1, v0, Liyn;->g:Z

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    monitor-exit v14

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_d

    nop

    nop

    :cond_0
    iget-wide v0, v0, Liyn;->e:J

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1
    move-wide/from16 v7, p6

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    :goto_3
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_4
    move-object/from16 v16, v14

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5
    iget-object v14, v0, Liyn;->f:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    move/from16 v10, p9

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
    move/from16 v6, p5

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_8
    throw v0

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_9
    move/from16 v4, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_a
    const v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_b
    move/from16 v11, p10

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_c
    move-object v14, v15

    nop

    nop

    :try_start_1
    invoke-static/range {v0 .. v14}, Lcom/google/android/apps/camera/jni/gyro/GyroQueueNative;->getTransformBetweenTime(JJFFFJFFFJ[F)Z

    move-result v0

    nop

    nop

    if-nez v0, :cond_2

    nop

    nop

    nop

    sget-object v0, Liyn;->a:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    const/16 v1, 0x7e0

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    move-object v1, v0

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Lscz;

    nop

    nop

    const-string v2, "Transformation matrix could not be computed for timestamps %d - %d"

    nop

    nop

    nop

    nop

    move-wide/from16 v3, p1

    nop

    nop

    nop

    nop

    move-wide/from16 v5, p6

    nop

    nop

    nop

    nop

    invoke-interface/range {v1 .. v6}, Lscz;->A(Ljava/lang/String;JJ)V

    :cond_2
    monitor-exit v16

    nop

    nop

    nop

    :goto_d
    return-object v15

    nop

    :catchall_1
    move-exception v0

    nop

    move-object/from16 v16, v14

    nop

    nop

    :goto_e
    monitor-exit v16

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_f
    goto :goto_e

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    move-object/from16 v0, p0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_12
    move/from16 v9, p8

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {}, Lhhg;->B()[F

    move-result-object v15

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_14
    move/from16 v5, p4

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v0, 0x12

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const-wide/16 v12, 0x0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_10

    nop

    :goto_19
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1a
    move-wide/from16 v2, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method
