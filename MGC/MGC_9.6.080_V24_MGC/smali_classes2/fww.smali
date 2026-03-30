.class public final Lfww;
.super Lgli;
.source "PG"

# interfaces
.implements Ljpv;
.implements Ljpt;
.implements Ljpu;
.implements Llvm;


# static fields
.field private static volatile i:Ljava/lang/Boolean;


# instance fields
.field public a:Lsob;

.field public b:Z

.field public final c:Lrtm;

.field public final d:Lmjy;

.field public final e:Lmjv;

.field public final f:Lfdn;

.field public final g:Lfdn;

.field private final j:Loyn;

.field private final k:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

.field private final l:Ljava/util/concurrent/Executor;

.field private final m:Lpdf;

.field private final n:Landroid/content/Context;

.field private final o:Llvo;

.field private final p:Z

.field private final q:Ljea;

.field private r:J

.field private s:J

.field private t:Llvn;

.field private u:J

.field private final v:Lhql;

.field private final w:Lmji;

.field private final x:Lhdu;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lfdn;Lmjv;Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;Lfdn;Lmjy;Ljava/util/concurrent/Executor;Lpdf;Loyn;Lhql;Llad;Lhdu;Llvo;Ljea;Lmji;Lrtm;)V
    .locals 2

    goto/32 :goto_8

    nop

    nop

    :goto_0
    move-object v1, p9

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_1
    move-object v1, p5

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_3
    iget-boolean v1, v1, Llad;->a:Z

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_4
    move-object v1, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_5
    sget-object v1, Lsob;->a:Lsob;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_6
    move-object/from16 v1, p14

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_7
    sget-object v1, Lstd;->a:Lstd;

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

    :goto_8
    const v0, 0x13

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_9
    move-object v1, p6

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1

    nop

    nop

    :goto_b
    invoke-direct {p0, v1}, Lgli;-><init>(Ljava/util/concurrent/Executor;)V

    goto/32 :goto_5

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_d
    move-object v1, p7

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_e
    move-object v0, p0

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_f
    iput-object v1, v0, Lfww;->o:Llvo;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_10
    move-object v1, p8

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_31

    nop

    :goto_12
    move-object v1, p10

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput-boolean v1, v0, Lfww;->p:Z

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    move-object v1, p12

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_17
    move-object v1, p11

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_18
    move-object/from16 v1, p15

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_19
    const v1, 0x19

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iput-object v1, v0, Lfww;->f:Lfdn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iput-object v1, v0, Lfww;->d:Lmjy;

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1c
    iput-object v1, v0, Lfww;->m:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1d
    iput-object v1, v0, Lfww;->q:Ljea;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1e
    iput-object v1, v0, Lfww;->v:Lhql;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_1f
    iput-object v1, v0, Lfww;->j:Loyn;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_20
    iput-object v1, v0, Lfww;->x:Lhdu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_21
    iput-object v1, v0, Lfww;->a:Lsob;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    move-object v1, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_24
    move-object v1, p13

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_25
    iput-object v1, v0, Lfww;->e:Lmjv;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iput-object v1, v0, Lfww;->l:Ljava/util/concurrent/Executor;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iput-object v1, v0, Lfww;->g:Lfdn;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_28
    move-object v1, p4

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_29
    rem-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iput-object v1, v0, Lfww;->n:Landroid/content/Context;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_2b
    iput-object v1, v0, Lfww;->w:Lmji;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_2c
    iput-object v1, v0, Lfww;->c:Lrtm;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_2d
    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2e
    move-object v1, p1

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_2f
    move-object/from16 v1, p16

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_30
    iput-object v1, v0, Lfww;->k:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_31
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_e

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final dj()V
    .locals 6

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_1
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_2
    cmp-long v2, v2, v4

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3
    const/16 v3, 0x13

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_4
    iput-wide v1, v0, Lmjv;->e:J

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_5
    invoke-virtual {v1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v1

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    const v0, 0xb

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

    nop

    :goto_7
    invoke-direct {v1, v0, v2}, Llmx;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_15

    nop

    nop

    :goto_8
    new-instance v2, Lesy;

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

    :goto_9
    sub-long v2, v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_a
    invoke-interface {v1, v3, v2}, Lpdf;->c(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-gez v2, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-instance v1, Llmx;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_10
    const-string v3, "logForegroundStat"

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_11
    const-wide/16 v4, 0x7d0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_12
    iget-wide v2, p0, Lfww;->r:J

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {v2, p0, v3}, Lesy;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v1, p0, Lfww;->m:Lpdf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_15
    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_16
    goto/32 :goto_20

    nop

    nop

    :goto_17
    iput-wide v0, p0, Lfww;->r:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_18
    goto/32 :goto_e

    nop

    :goto_19
    iget-object v0, p0, Lfww;->e:Lmjv;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v1, v0, Llvo;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object p0, v0, Llvo;->b:Ljava/util/concurrent/Executor;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1d
    monitor-enter v1

    nop

    nop

    :try_start_0
    iget-object v2, v0, Llvo;->h:Ljava/util/Set;

    nop

    invoke-interface {v2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-boolean p0, v0, Llvo;->i:Z

    nop

    nop

    nop

    nop

    if-nez p0, :cond_1

    nop

    nop

    nop

    nop

    const/4 p0, 0x1

    nop

    nop

    iput-boolean p0, v0, Llvo;->i:Z

    nop

    nop

    nop

    nop

    nop

    goto :goto_1e

    nop

    :cond_1
    const/4 p0, 0x0

    nop

    :goto_1e
    monitor-exit v1

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/16 v2, 0xd

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
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
    monitor-exit v1

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v0, p0, Lfww;->l:Ljava/util/concurrent/Executor;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_22
    iget-object v0, p0, Lfww;->o:Llvo;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    throw p0

    nop

    nop

    :goto_24
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-nez p0, :cond_2

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_2
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

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

    :goto_27
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_d

    nop

    :goto_28
    const v1, 0xd

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_29
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop
.end method

.method public final dv()V
    .locals 25

    goto/32 :goto_1e4

    nop

    nop

    nop

    :goto_0
    if-nez v10, :cond_0

    nop

    nop

    goto/32 :goto_2b6

    nop

    nop

    :cond_0
    goto/32 :goto_21e

    nop

    nop

    nop

    nop

    nop

    :goto_1
    move v4, v5

    nop

    nop

    nop

    goto/32 :goto_300

    nop

    nop

    :goto_2
    invoke-interface {v4}, Ltkv;->c()Z

    move-result v5

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_3
    iput-object v0, v11, Lsnt;->d:Ljava/lang/String;

    nop

    goto/32 :goto_1b9

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_11c

    nop

    nop

    :goto_5
    goto/32 :goto_11b

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v2}, Ltkb;->o()V

    :goto_7
    goto/32 :goto_29d

    nop

    nop

    nop

    :goto_8
    iget-object v11, v9, Ltkb;->b:Ltkg;

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

    nop

    nop

    :goto_9
    or-int/2addr v15, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    :goto_a
    iput-boolean v5, v6, Lmji;->i:Z

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_b
    iget v2, v1, Lsjs;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2f6

    nop

    nop

    nop

    :goto_c
    check-cast v8, Lsnh;

    nop

    goto/32 :goto_199

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-eqz v7, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2bc

    nop

    :cond_1
    goto/32 :goto_2bb

    nop

    nop

    nop

    :goto_e
    move-object v13, v12

    nop

    goto/32 :goto_18d

    nop

    nop

    :goto_f
    iget v15, v11, Lsnt;->b:I

    nop

    goto/32 :goto_32f

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v3}, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->c()Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_18b

    nop

    nop

    :goto_11
    iget-object v8, v0, Lfww;->q:Ljea;

    nop

    nop

    goto/32 :goto_33c

    nop

    nop

    nop

    nop

    nop

    :goto_12
    move-object/from16 v22, v8

    nop

    goto/32 :goto_184

    nop

    nop

    nop

    nop

    nop

    :goto_13
    check-cast v11, Lsnt;

    nop

    nop

    nop

    nop

    goto/32 :goto_174

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v3, v3, Lsjs;->d:Ltkv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_329

    nop

    nop

    nop

    nop

    nop

    :goto_15
    check-cast v8, Lsnh;

    nop

    nop

    nop

    nop

    goto/32 :goto_1fd

    nop

    nop

    :goto_16
    check-cast v5, Lsnt;

    nop

    nop

    goto/32 :goto_1c6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    or-int/2addr v15, v14

    nop

    nop

    nop

    goto/32 :goto_1b4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    check-cast v8, Lsnh;

    nop

    goto/32 :goto_356

    nop

    nop

    nop

    :goto_19
    or-int v15, v15, v16

    nop

    nop

    goto/32 :goto_2ce

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v6}, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->c()Z

    move-result v8

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    or-int/2addr v15, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2ff

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    move-object/from16 v15, v19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iput-wide v12, v8, Lsnh;->c:J

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v8}, Ltkg;->C()Z

    move-result v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_344

    nop

    nop

    :goto_1f
    check-cast v12, Lski;

    nop

    goto/32 :goto_250

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v2}, Ltkb;->i()Ltkg;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    :goto_21
    invoke-virtual {v6, v1}, Lmjv;->J(Ltkb;)V

    goto/32 :goto_338

    nop

    nop

    nop

    nop

    :goto_22
    check-cast v8, Lsnh;

    nop

    nop

    nop

    nop

    goto/32 :goto_14b

    nop

    nop

    :goto_23
    iput v11, v9, Lskd;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27a

    nop

    nop

    :goto_24
    if-eqz v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32b

    nop

    :cond_2
    goto/32 :goto_32a

    nop

    nop

    nop

    nop

    :goto_25
    or-int/2addr v2, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_351

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    check-cast v2, Lski;

    nop

    nop

    goto/32 :goto_151

    nop

    nop

    nop

    nop

    nop

    :goto_27
    or-int/2addr v15, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2eb

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v2}, Ltkb;->o()V

    :goto_29
    goto/32 :goto_2c0

    nop

    nop

    :goto_2a
    iget-object v8, v0, Lfww;->k:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v8, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f5

    nop

    nop

    :goto_2d
    invoke-virtual {v3}, Ltkg;->C()Z

    move-result v3

    nop

    nop

    goto/32 :goto_169

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget v11, v11, Lskc;->aG:I

    nop

    nop

    nop

    nop

    goto/32 :goto_205

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    sget-object v2, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    goto/32 :goto_28d

    nop

    nop

    nop

    nop

    :goto_30
    iput v15, v8, Lsnh;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_292

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/16 :goto_35e

    nop

    :goto_32
    goto/32 :goto_231

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iput-object v8, v6, Lmji;->c:Lpdh;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    if-eqz v8, :cond_3

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_bf

    nop

    nop

    :goto_35
    invoke-virtual {v8}, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->getActivityInitializedNs()J

    move-result-wide v12

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_36
    check-cast v0, Lsnf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_352

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v8}, Ltkg;->C()Z

    move-result v8

    nop

    nop

    goto/32 :goto_2cc

    nop

    nop

    nop

    :goto_38
    check-cast v9, Lskd;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    check-cast v15, Lsnh;

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iput v5, v11, Lsnt;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e2

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iput v4, v8, Lsnh;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_19d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object v8, v2, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_360

    nop

    nop

    nop

    nop

    :goto_3d
    iget-object v11, v5, Ljro;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_307

    nop

    nop

    nop

    nop

    :goto_3e
    iget v2, v3, Lsjs;->b:I

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

    nop

    :goto_3f
    invoke-virtual {v2}, Ltkb;->o()V

    :goto_40
    goto/32 :goto_2f9

    nop

    nop

    :goto_41
    iget-object v4, v0, Lfww;->d:Lmjy;

    nop

    goto/32 :goto_19f

    nop

    nop

    nop

    nop

    nop

    :goto_42
    if-eqz v3, :cond_4

    nop

    nop

    goto/32 :goto_e1

    nop

    :cond_4
    goto/32 :goto_197

    nop

    nop

    nop

    nop

    :goto_43
    if-eqz v8, :cond_5

    nop

    goto/32 :goto_79

    nop

    nop

    :cond_5
    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_44
    goto/16 :goto_1c5

    nop

    nop

    :goto_45
    goto/32 :goto_212

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    const v3, 0x4e6e6b28    # 1.0E9f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_289

    nop

    nop

    nop

    nop

    nop

    :goto_47
    goto/16 :goto_1cf

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_64

    nop

    nop

    nop

    :goto_49
    const-wide/16 v5, 0x7d0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20b

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    or-int/2addr v12, v14

    nop

    nop

    nop

    goto/32 :goto_149

    nop

    nop

    nop

    nop

    :goto_4b
    check-cast v3, Lsjs;

    nop

    nop

    nop

    nop

    goto/32 :goto_265

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    sget-object v10, Lskd;->a:Lskd;

    nop

    nop

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

    :goto_4d
    const/high16 v16, 0x400000

    nop

    nop

    goto/32 :goto_16f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-interface {v0}, Ltkv;->size()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_147

    nop

    nop

    :goto_4f
    iget-object v8, v2, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_182

    nop

    nop

    nop

    nop

    nop

    :goto_50
    const/4 v15, 0x0

    nop

    nop

    nop

    goto/32 :goto_306

    nop

    nop

    :goto_51
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_240

    nop

    nop

    nop

    :goto_52
    invoke-interface {v2, v3}, Lscz;->M(I)Lsdo;

    move-result-object v2

    nop

    goto/32 :goto_26a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    or-int/lit16 v7, v7, 0x2000

    nop

    nop

    nop

    goto/32 :goto_195

    nop

    nop

    nop

    nop

    nop

    :goto_54
    iget v11, v5, Lsnt;->b:I

    nop

    goto/32 :goto_1b5

    nop

    nop

    nop

    :goto_55
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    nop

    goto/32 :goto_312

    nop

    nop

    nop

    :goto_56
    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_20c

    nop

    nop

    nop

    nop

    nop

    :goto_57
    iget-object v8, v0, Lfww;->k:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_58
    if-eqz v3, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_102

    nop

    :cond_6
    goto/32 :goto_101

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    check-cast v4, Lrsx;

    nop

    goto/32 :goto_243

    nop

    nop

    :goto_5a
    iput-object v0, v2, Lskd;->o:Lsjs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18f

    nop

    nop

    nop

    :goto_5b
    iget v3, v3, Llvn;->c:F

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    :goto_5c
    iput v6, v3, Lsnh;->o:I

    nop

    goto/32 :goto_168

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    iput v15, v8, Lsnh;->b:I

    nop

    nop

    nop

    goto/32 :goto_1e1

    nop

    nop

    nop

    nop

    :goto_5e
    iget v15, v8, Lsnh;->b:I

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5f
    if-eqz v8, :cond_7

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_60
    iput v2, v3, Lsjs;->b:I

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_61
    if-eqz v5, :cond_8

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    :cond_8
    goto/32 :goto_251

    nop

    nop

    nop

    nop

    nop

    :goto_62
    if-nez v3, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_271

    nop

    :cond_9
    goto/32 :goto_340

    nop

    nop

    :goto_63
    check-cast v2, Lsjs;

    nop

    nop

    nop

    nop

    goto/32 :goto_2af

    nop

    nop

    :goto_64
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_1b6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    move-object/from16 v22, v8

    nop

    nop

    nop

    goto/32 :goto_2da

    nop

    nop

    nop

    :goto_66
    iget v4, v15, Lsnh;->b:I

    nop

    goto/32 :goto_162

    nop

    nop

    nop

    nop

    :goto_67
    const/4 v11, -0x1

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    :goto_68
    sget-object v3, Lfww;->i:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    :goto_69
    or-int/2addr v11, v5

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_6a
    iget-object v12, v6, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_6b
    iput v11, v5, Lsnt;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    if-eqz v12, :cond_a

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_104

    nop

    nop

    :goto_6d
    if-eqz v2, :cond_b

    nop

    goto/32 :goto_194

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_193

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    iget-object v2, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a1

    nop

    nop

    :goto_6f
    invoke-virtual {v8}, Ltkg;->C()Z

    move-result v8

    nop

    nop

    nop

    nop

    goto/32 :goto_226

    nop

    nop

    nop

    nop

    nop

    :goto_70
    invoke-virtual {v8}, Ltkg;->C()Z

    move-result v8

    nop

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    const-wide/16 v13, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2ab

    nop

    nop

    nop

    :goto_72
    iput v6, v8, Lspc;->e:F

    nop

    nop

    goto/32 :goto_285

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    iput-boolean v8, v12, Lski;->c:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_74
    invoke-virtual/range {v22 .. v22}, Lrss;->h()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    :goto_75
    iget v6, v13, Lspc;->b:I

    nop

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    nop

    :goto_76
    iput-object v4, v3, Lsjs;->d:Ltkv;

    nop

    nop

    :goto_77
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_78
    invoke-virtual {v2}, Ltkb;->o()V

    :goto_79
    goto/32 :goto_219

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    cmp-long v4, v7, v12

    nop

    goto/32 :goto_1d1

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-virtual {v1}, Ltkb;->o()V

    :goto_7c
    goto/32 :goto_27b

    nop

    nop

    nop

    :goto_7d
    iget v8, v4, Lsnh;->b:I

    nop

    nop

    goto/32 :goto_320

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    invoke-virtual {v3}, Ltkg;->C()Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_7f
    iget-object v8, v4, Lhdu;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_106

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    iget-object v2, v1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_1cd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    iget-object v4, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_294

    nop

    nop

    nop

    :goto_82
    iget-object v3, v0, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_34f

    nop

    nop

    nop

    :goto_83
    iget-object v3, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b2

    nop

    nop

    nop

    :goto_84
    goto/16 :goto_1ff

    nop

    nop

    nop

    nop

    :goto_85
    goto/32 :goto_12

    nop

    nop

    :goto_86
    or-int v15, v15, v16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    :goto_87
    iget-object v5, v9, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_12a

    nop

    nop

    nop

    nop

    :goto_88
    invoke-virtual {v6}, Ltkb;->o()V

    :goto_89
    goto/32 :goto_2d5

    nop

    nop

    nop

    nop

    :goto_8a
    iput-boolean v5, v0, Lfww;->b:Z

    nop

    nop

    nop

    nop

    :goto_8b
    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    if-eqz v9, :cond_c

    nop

    goto/32 :goto_8f

    nop

    :cond_c
    goto/32 :goto_118

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    const/4 v5, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d0

    nop

    nop

    nop

    :goto_8e
    iput-object v8, v5, Lsjs;->f:Ltkv;

    nop

    nop

    :goto_8f
    goto/32 :goto_2b7

    nop

    nop

    :goto_90
    add-int/2addr v3, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_13c

    nop

    nop

    nop

    nop

    :goto_91
    iget-object v4, v0, Lfww;->x:Lhdu;

    nop

    nop

    goto/32 :goto_11d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_92
    iget-object v8, v0, Lfww;->k:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    nop

    nop

    nop

    goto/32 :goto_233

    nop

    nop

    nop

    nop

    nop

    :goto_93
    iget-wide v6, v2, Lmkp;->m:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_175

    nop

    nop

    nop

    nop

    :goto_94
    iput-wide v12, v8, Lsnh;->g:J

    nop

    nop

    goto/32 :goto_150

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_95
    iget-object v8, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_117

    nop

    nop

    nop

    :goto_96
    move-object v11, v5

    nop

    nop

    goto/32 :goto_255

    nop

    nop

    :goto_97
    goto/16 :goto_ec

    nop

    nop

    nop

    :goto_98
    goto/32 :goto_126

    nop

    nop

    nop

    nop

    nop

    :goto_99
    invoke-virtual {v12}, Ltkg;->C()Z

    move-result v12

    nop

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    :goto_9a
    iget-object v1, v0, Lfww;->j:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_198

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    goto/16 :goto_124

    nop

    nop

    nop

    nop

    :goto_9c
    goto/32 :goto_123

    nop

    nop

    nop

    nop

    :goto_9d
    const/4 v13, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    iget-object v4, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_34d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    iget v13, v1, Lsob;->T:I

    nop

    goto/32 :goto_203

    nop

    nop

    :goto_a0
    iget-boolean v4, v0, Lfww;->p:Z

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    sget-object v2, Lskc;->j:Lskc;

    nop

    nop

    goto/32 :goto_2dd

    nop

    nop

    nop

    nop

    :goto_a2
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    goto/32 :goto_21f

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    iget-object v12, v6, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_2ae

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    iget v0, v2, Lskd;->e:I

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    nop

    :goto_a5
    sget-object v8, Lpdh;->a:Lpdh;

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    iput-wide v12, v8, Lsnh;->r:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2ee

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    iget-object v8, v2, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_f1

    nop

    nop

    :goto_a8
    const/16 v9, 0x10

    nop

    nop

    goto/32 :goto_152

    nop

    nop

    nop

    nop

    :goto_a9
    iget v12, v8, Lspc;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    invoke-virtual {v9}, Ltkb;->i()Ltkg;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    iget-object v8, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_1bb

    nop

    nop

    :goto_ac
    if-eqz v4, :cond_d

    nop

    nop

    goto/32 :goto_347

    nop

    nop

    :cond_d
    goto/32 :goto_346

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    iput v15, v8, Lsnh;->b:I

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_ae
    iput v13, v12, Lski;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_af
    iget v6, v3, Llvn;->b:F

    nop

    goto/32 :goto_1f2

    nop

    nop

    nop

    nop

    :goto_b0
    const/4 v14, 0x2

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    :goto_b1
    invoke-static {v7, v5}, Ltir;->e(Ljava/lang/Iterable;Ljava/util/List;)V

    :goto_b2
    goto/32 :goto_249

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    invoke-virtual {v0}, Ltkb;->i()Ltkg;

    move-result-object v0

    nop

    goto/32 :goto_284

    nop

    nop

    nop

    :goto_b4
    or-int/2addr v8, v12

    nop

    nop

    nop

    goto/32 :goto_2c8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    iget-object v12, v4, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_b6
    iput-wide v1, v6, Lmjv;->l:J

    nop

    goto/32 :goto_1bd

    nop

    nop

    :goto_b7
    invoke-virtual {v4}, Ltkb;->o()V

    :goto_b8
    goto/32 :goto_cb

    nop

    nop

    nop

    :goto_b9
    if-eqz v12, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_34a

    nop

    nop

    :cond_e
    goto/32 :goto_349

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    iget-object v8, v5, Lsjs;->f:Ltkv;

    nop

    goto/32 :goto_15c

    nop

    nop

    nop

    :goto_bb
    sget-object v12, Lmkd;->g:Lmkd;

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    if-nez v8, :cond_f

    nop

    goto/32 :goto_161

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_333

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    iput v4, v8, Lsnh;->q:I

    nop

    goto/32 :goto_342

    nop

    nop

    :goto_be
    if-eqz v5, :cond_10

    nop

    goto/32 :goto_16d

    nop

    :cond_10
    goto/32 :goto_16c

    nop

    nop

    nop

    nop

    :goto_bf
    invoke-virtual {v2}, Ltkb;->o()V

    :goto_c0
    goto/32 :goto_15e

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    invoke-interface {v12}, Ljava/util/Iterator;->remove()V

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    iput-wide v13, v6, Lmji;->d:J

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    :goto_c3
    iput-wide v12, v8, Lsnh;->v:J

    nop

    nop

    nop

    nop

    goto/32 :goto_225

    nop

    nop

    nop

    nop

    :goto_c4
    if-eqz v6, :cond_11

    nop

    nop

    nop

    nop

    goto/32 :goto_35c

    nop

    :cond_11
    goto/32 :goto_35b

    nop

    nop

    nop

    nop

    :goto_c5
    iput v3, v6, Lspc;->f:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b0

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    if-ne v4, v14, :cond_12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_301

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_c7
    or-int/2addr v3, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_10a

    nop

    nop

    :goto_c8
    iput-object v5, v0, Lskd;->j:Lsnt;

    nop

    goto/32 :goto_2a6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c9
    sget-object v7, Lsbh;->a:Lryb;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_ca
    or-int/2addr v4, v12

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    iget-object v6, v4, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_1d4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cc
    check-cast v8, Llyv;

    nop

    goto/32 :goto_22e

    nop

    nop

    nop

    nop

    nop

    :goto_cd
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_2c3

    nop

    nop

    nop

    :goto_ce
    iput v5, v11, Lsnt;->c:I

    nop

    nop

    nop

    goto/32 :goto_17c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    check-cast v15, Ljava/lang/String;

    nop

    goto/32 :goto_2cd

    nop

    nop

    nop

    :goto_d0
    invoke-virtual {v1, v0}, Llvo;->a(Llvm;)V

    :goto_d1
    goto/32 :goto_1a6

    nop

    nop

    nop

    :goto_d2
    if-ne v3, v5, :cond_13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    :cond_13
    goto/32 :goto_114

    nop

    nop

    nop

    :goto_d3
    invoke-virtual {v8, v12}, Lmkp;->g(Ljava/lang/Enum;)J

    move-result-wide v12

    nop

    nop

    nop

    goto/32 :goto_282

    nop

    nop

    nop

    nop

    nop

    :goto_d4
    const/4 v4, 0x0

    nop

    goto/32 :goto_247

    nop

    nop

    nop

    :goto_d5
    iput-wide v6, v4, Lsnh;->h:J

    nop

    goto/32 :goto_a2

    nop

    nop

    :goto_d6
    iput-wide v13, v6, Lmji;->g:J

    nop

    goto/32 :goto_18a

    nop

    nop

    nop

    nop

    nop

    :goto_d7
    iput v15, v8, Lsnh;->b:I

    nop

    nop

    goto/32 :goto_17e

    nop

    nop

    nop

    nop

    nop

    :goto_d8
    if-gtz v10, :cond_14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b6

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    invoke-virtual {v8}, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->getPermissionStartupTaskTimeStartNs()J

    move-result-wide v12

    nop

    goto/32 :goto_25c

    nop

    nop

    nop

    nop

    nop

    :goto_da
    if-nez v0, :cond_15

    nop

    goto/32 :goto_1a3

    nop

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_2b9

    nop

    nop

    :goto_db
    invoke-interface {v8}, Lpdh;->a()V

    goto/32 :goto_a5

    nop

    nop

    nop

    :goto_dc
    iget-object v2, v6, Lmjv;->i:Ljava/util/List;

    nop

    nop

    goto/32 :goto_2ad

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_dd
    const/4 v11, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24f

    nop

    nop

    :goto_de
    iget-object v8, v0, Lfww;->k:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    :goto_df
    or-int/2addr v6, v5

    nop

    nop

    goto/32 :goto_33d

    nop

    nop

    nop

    :goto_e0
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_e1
    goto/32 :goto_180

    nop

    nop

    nop

    nop

    :goto_e2
    if-eq v1, v6, :cond_16

    nop

    nop

    goto/32 :goto_8b

    nop

    :cond_16
    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_e3
    iget v15, v8, Lsnh;->b:I

    nop

    nop

    nop

    goto/32 :goto_153

    nop

    nop

    nop

    nop

    nop

    :goto_e4
    iget-object v4, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_107

    nop

    nop

    nop

    nop

    :goto_e5
    iget-object v8, v0, Lfww;->k:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e6
    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    :goto_e7
    if-eqz v8, :cond_17

    nop

    goto/32 :goto_1bf

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_1be

    nop

    nop

    nop

    :goto_e8
    move v4, v14

    nop

    nop

    :goto_e9
    goto/32 :goto_2ba

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ea
    check-cast v0, Lskd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    :goto_eb
    move v6, v14

    nop

    :goto_ec
    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ed
    invoke-static {v3}, Lpcg;->b(I)Lpcg;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c3

    nop

    nop

    :goto_ee
    iget-object v8, v2, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ef
    iput-object v2, v0, Lfww;->a:Lsob;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_277

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f0
    const/4 v5, 0x2

    nop

    nop

    nop

    goto/32 :goto_35a

    nop

    nop

    nop

    nop

    :goto_f1
    invoke-virtual {v8}, Ltkg;->C()Z

    move-result v8

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f2
    check-cast v2, Lsnh;

    nop

    nop

    goto/32 :goto_26b

    nop

    nop

    nop

    nop

    :goto_f3
    iget-object v0, v9, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_34e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f4
    invoke-virtual {v8}, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->getActivityOnCreateStartNs()J

    move-result-wide v12

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    :goto_f5
    if-nez v5, :cond_18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_1ba

    nop

    nop

    nop

    :goto_f6
    check-cast v12, Lski;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_248

    nop

    nop

    :goto_f7
    float-to-int v3, v3

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    :goto_f8
    check-cast v5, Lsnt;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_f9
    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto/32 :goto_1ac

    nop

    nop

    nop

    :goto_fa
    invoke-virtual {v4}, Ltkg;->m()Ltkb;

    move-result-object v4

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fb
    invoke-virtual {v2}, Ltkb;->o()V

    :goto_fc
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fd
    invoke-virtual {v4}, Ltkb;->o()V

    :goto_fe
    goto/32 :goto_b5

    nop

    nop

    nop

    :goto_ff
    iget-object v12, v4, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14d

    nop

    nop

    :goto_100
    check-cast v8, Lsnh;

    nop

    nop

    nop

    goto/32 :goto_178

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_101
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_102
    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_103
    if-eqz v8, :cond_19

    nop

    nop

    goto/32 :goto_1d3

    nop

    nop

    :cond_19
    goto/32 :goto_1d2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_104
    invoke-virtual {v6}, Ltkb;->o()V

    :goto_105
    goto/32 :goto_19a

    nop

    nop

    :goto_106
    sget-object v12, Llyr;->L:Llze;

    nop

    nop

    goto/32 :goto_143

    nop

    nop

    nop

    nop

    nop

    :goto_107
    check-cast v4, Lsnh;

    nop

    nop

    goto/32 :goto_1d5

    nop

    nop

    nop

    :goto_108
    iput-object v8, v6, Lmji;->k:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_2fd

    nop

    nop

    nop

    nop

    nop

    :goto_109
    iget v3, v4, Lsnh;->b:I

    nop

    nop

    nop

    goto/32 :goto_156

    nop

    nop

    nop

    :goto_10a
    iput v3, v2, Lsjs;->b:I

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_10b
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_133

    nop

    nop

    :goto_10c
    add-int/2addr v4, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18e

    nop

    nop

    nop

    nop

    :goto_10d
    iget-object v8, v2, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_2b4

    nop

    nop

    :goto_10e
    invoke-virtual {v10}, Ltkg;->m()Ltkb;

    move-result-object v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_336

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10f
    const/16 v15, 0x10

    nop

    nop

    goto/32 :goto_32c

    nop

    nop

    nop

    nop

    :goto_110
    if-eqz v8, :cond_1a

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    :cond_1a
    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_111
    invoke-virtual {v2}, Ltkb;->o()V

    :goto_112
    goto/32 :goto_1a9

    nop

    nop

    nop

    :goto_113
    iget-object v8, v0, Lfww;->k:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    nop

    nop

    goto/32 :goto_2bd

    nop

    nop

    nop

    nop

    :goto_114
    if-ne v3, v14, :cond_1b

    nop

    goto/32 :goto_327

    nop

    :cond_1b
    goto/32 :goto_2ef

    nop

    nop

    nop

    nop

    :goto_115
    if-eqz v9, :cond_1c

    nop

    nop

    nop

    goto/32 :goto_359

    nop

    :cond_1c
    goto/32 :goto_358

    nop

    nop

    nop

    nop

    :goto_116
    iget-object v8, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_275

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_117
    invoke-virtual {v8}, Ltkg;->C()Z

    move-result v8

    nop

    nop

    nop

    nop

    goto/32 :goto_31e

    nop

    nop

    nop

    nop

    :goto_118
    invoke-static {v8}, Ltkg;->v(Ltkv;)Ltkv;

    move-result-object v8

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_119
    iget v11, v9, Lskd;->b:I

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11a
    or-int/lit8 v5, v5, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11b
    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_11c
    goto/32 :goto_2fb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11d
    sget-object v6, Lski;->a:Lski;

    nop

    goto/32 :goto_187

    nop

    nop

    :goto_11e
    invoke-virtual {v2}, Ltkb;->o()V

    :goto_11f
    goto/32 :goto_2cb

    nop

    nop

    nop

    nop

    :goto_120
    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_295

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_121
    iget-object v6, v0, Lfww;->w:Lmji;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_122
    sub-long/2addr v13, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    nop

    :goto_123
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_124
    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    :goto_125
    iput v7, v6, Lspc;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    :goto_126
    const/4 v6, 0x3

    nop

    goto/32 :goto_13f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_127
    iput v4, v15, Lsnh;->b:I

    nop

    nop

    goto/32 :goto_25f

    nop

    nop

    nop

    nop

    nop

    :goto_128
    iput-wide v12, v8, Lsnh;->j:J

    nop

    nop

    nop

    goto/32 :goto_13a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_129
    iget-object v8, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d9

    nop

    nop

    nop

    :goto_12a
    invoke-virtual {v5}, Ltkg;->C()Z

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_221

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12b
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_12c
    iget-object v3, v0, Lfww;->k:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

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

    :goto_12d
    invoke-virtual {v10}, Ltkb;->o()V

    :goto_12e
    goto/32 :goto_281

    nop

    nop

    nop

    nop

    nop

    :goto_12f
    iget-object v8, v0, Lfww;->k:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    nop

    nop

    nop

    goto/32 :goto_2a2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_130
    iget v7, v4, Lsnh;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_131
    iget-object v3, v0, Lfww;->t:Llvn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_132
    const v1, 0x3

    nop

    nop

    goto/32 :goto_2ca

    nop

    nop

    nop

    nop

    nop

    :goto_133
    or-int/2addr v0, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_1a2

    nop

    nop

    nop

    nop

    nop

    :goto_134
    iget-object v8, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    nop

    :goto_135
    iput v2, v4, Lskd;->f:I

    nop

    nop

    goto/32 :goto_17a

    nop

    nop

    nop

    nop

    nop

    :goto_136
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13e

    nop

    nop

    nop

    :goto_137
    invoke-virtual {v2}, Ltkb;->o()V

    :goto_138
    goto/32 :goto_267

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_139
    iget-object v3, v0, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_14e

    nop

    nop

    :goto_13a
    iget-object v8, v0, Lfww;->k:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    nop

    goto/32 :goto_17b

    nop

    nop

    :goto_13b
    invoke-virtual {v8}, Ltkg;->C()Z

    move-result v8

    nop

    nop

    nop

    goto/32 :goto_110

    nop

    nop

    nop

    nop

    :goto_13c
    if-nez v3, :cond_1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_140

    nop

    nop

    nop

    nop

    :cond_1d
    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13d
    const/4 v5, -0x1

    nop

    goto/32 :goto_1ec

    nop

    nop

    nop

    :goto_13e
    iget-object v8, v6, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_13b

    nop

    nop

    nop

    :goto_13f
    goto/16 :goto_ec

    nop

    nop

    :goto_140
    goto/32 :goto_eb

    nop

    nop

    :goto_141
    iput v15, v8, Lsnh;->b:I

    nop

    nop

    goto/32 :goto_229

    nop

    nop

    nop

    nop

    nop

    :goto_142
    const/16 v5, 0x10

    nop

    goto/32 :goto_335

    nop

    nop

    :goto_143
    iget-object v12, v12, Llze;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    :goto_144
    iget-wide v1, v6, Lmjv;->l:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_122

    nop

    nop

    nop

    :goto_145
    invoke-virtual {v9}, Ltkb;->o()V

    :goto_146
    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    nop

    :goto_147
    if-gtz v0, :cond_1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a3

    nop

    nop

    :cond_1e
    goto/32 :goto_287

    nop

    nop

    nop

    nop

    :goto_148
    or-int/2addr v3, v6

    nop

    nop

    nop

    goto/32 :goto_1c9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_149
    iput v12, v8, Lspc;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1a1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14a
    iget v15, v8, Lsnh;->b:I

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_14b
    iget v15, v8, Lsnh;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21d

    nop

    nop

    nop

    nop

    nop

    :goto_14c
    invoke-virtual {v0}, Ltkg;->C()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14d
    invoke-virtual {v12}, Ltkg;->C()Z

    move-result v12

    nop

    nop

    goto/32 :goto_348

    nop

    nop

    :goto_14e
    check-cast v3, Lsjs;

    nop

    nop

    goto/32 :goto_1ab

    nop

    nop

    :goto_14f
    const/high16 v12, 0x10000

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    :goto_150
    iget-object v8, v0, Lfww;->k:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    nop

    goto/32 :goto_15d

    nop

    nop

    nop

    nop

    nop

    :goto_151
    iput-object v2, v3, Lsjs;->g:Lski;

    nop

    goto/32 :goto_261

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_152
    const/4 v10, 0x4

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_153
    const/high16 v16, 0x200000

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_154
    or-int/lit8 v2, v2, 0x8

    nop

    nop

    goto/32 :goto_17d

    nop

    nop

    nop

    nop

    :goto_155
    const/16 v21, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_11a

    nop

    nop

    :goto_156
    const v6, 0x8000

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_148

    nop

    nop

    nop

    :goto_157
    or-int/lit16 v15, v15, 0x800

    nop

    nop

    goto/32 :goto_141

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_158
    iget-object v8, v6, Lmji;->c:Lpdh;

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    :goto_159
    invoke-virtual {v2}, Ltkb;->o()V

    :goto_15a
    goto/32 :goto_10d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15b
    const-wide/16 v12, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_15c
    invoke-interface {v8}, Ltkv;->c()Z

    move-result v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :goto_15d
    invoke-virtual {v8}, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->getShutterButtonFirstDrawnNs()J

    move-result-wide v12

    nop

    nop

    nop

    nop

    goto/32 :goto_244

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15e
    iget-object v8, v2, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_15f
    const/high16 v16, 0x100000

    nop

    nop

    nop

    nop

    goto/32 :goto_2c1

    nop

    nop

    nop

    :goto_160
    goto/16 :goto_9c

    nop

    nop

    nop

    :goto_161
    goto/32 :goto_12c

    nop

    nop

    nop

    nop

    nop

    :goto_162
    or-int/lit8 v4, v4, 0x8

    nop

    nop

    goto/32 :goto_127

    nop

    nop

    nop

    nop

    nop

    :goto_163
    iget-object v3, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_1f6

    nop

    nop

    nop

    :goto_164
    check-cast v3, Lsnh;

    nop

    nop

    goto/32 :goto_21c

    nop

    nop

    :goto_165
    monitor-enter v3

    nop

    nop

    :try_start_0
    sget-object v6, Lfww;->i:Ljava/lang/Boolean;

    nop

    if-nez v6, :cond_22

    nop

    nop

    nop

    iget-object v6, v0, Lfww;->n:Landroid/content/Context;

    nop

    nop

    nop

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    new-instance v8, Landroid/content/Intent;

    nop

    nop

    nop

    nop

    const-string v9, "android.media.action.STILL_IMAGE_CAMERA"

    nop

    nop

    nop

    nop

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v8, v4}, Lnzk;->O(Landroid/content/pm/PackageManager;Landroid/content/Intent;Z)Lrss;

    move-result-object v8

    nop

    nop

    invoke-virtual {v8}, Lrss;->h()Z

    move-result v9

    nop

    nop

    nop

    nop

    if-nez v9, :cond_1f

    nop

    new-instance v8, Landroid/content/Intent;

    nop

    const-string v9, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    nop

    nop

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v8, v4}, Lnzk;->O(Landroid/content/pm/PackageManager;Landroid/content/Intent;Z)Lrss;

    move-result-object v8

    nop

    nop

    nop

    nop

    :cond_1f
    invoke-virtual {v8}, Lrss;->h()Z

    move-result v9

    nop

    nop

    nop

    nop

    nop

    if-nez v9, :cond_20

    nop

    nop

    new-instance v8, Landroid/content/Intent;

    nop

    nop

    nop

    nop

    nop

    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    sget-object v9, Lcom/google/android/apps/camera/ui/eduimageview/JrT/cUhjhcVVea;->obY:Ljava/lang/String;

    nop

    nop

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v8, v5}, Lnzk;->O(Landroid/content/pm/PackageManager;Landroid/content/Intent;Z)Lrss;

    move-result-object v8

    nop

    :cond_20
    invoke-virtual {v8}, Lrss;->h()Z

    move-result v7

    nop

    nop

    nop

    nop

    if-eqz v7, :cond_21

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v8}, Lrss;->c()Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    nop

    check-cast v7, Landroid/content/pm/ApplicationInfo;

    nop

    nop

    nop

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    nop

    nop

    nop

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    nop

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    nop

    nop

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    nop

    nop

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    nop

    nop

    nop

    nop

    goto :goto_166

    nop

    nop

    nop

    nop

    nop

    :cond_21
    move v6, v4

    nop

    nop

    nop

    nop

    :goto_166
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    nop

    nop

    sput-object v6, Lfww;->i:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    :cond_22
    monitor-exit v3

    nop

    nop

    nop

    goto/16 :goto_e1

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    monitor-exit v3

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    nop

    :goto_167
    check-cast v4, Lsnh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_168
    iget v4, v3, Lsnh;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_334

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_169
    if-eqz v3, :cond_23

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    :cond_23
    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_16a
    invoke-virtual {v1}, Ltkg;->m()Ltkb;

    move-result-object v1

    nop

    goto/32 :goto_a1

    nop

    nop

    :goto_16b
    iget-object v6, v0, Lfww;->e:Lmjv;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_16c
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_16d
    goto/32 :goto_288

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16e
    invoke-virtual {v2}, Lscs;->c()Lsdo;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_214

    nop

    nop

    :goto_16f
    or-int v15, v15, v16

    nop

    nop

    nop

    nop

    goto/32 :goto_322

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_170
    move-object/from16 v8, v22

    nop

    goto/32 :goto_2e4

    nop

    nop

    nop

    nop

    :goto_171
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_172
    goto/32 :goto_305

    nop

    nop

    nop

    :goto_173
    iget-object v8, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f7

    nop

    nop

    nop

    :goto_174
    const/4 v5, 0x6

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_175
    goto/16 :goto_2d0

    nop

    :goto_176
    goto/32 :goto_2cf

    nop

    nop

    nop

    nop

    :goto_177
    iput v15, v8, Lsnh;->b:I

    nop

    goto/32 :goto_24e

    nop

    nop

    :goto_178
    iget v15, v8, Lsnh;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_200

    nop

    nop

    nop

    nop

    :goto_179
    invoke-virtual {v7}, Ltkg;->C()Z

    move-result v7

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_17a
    iget v2, v4, Lskd;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e6

    nop

    nop

    nop

    :goto_17b
    invoke-virtual {v8}, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->getPermissionStartupTaskTimeEndNs()J

    move-result-wide v12

    nop

    nop

    goto/32 :goto_2b0

    nop

    nop

    :goto_17c
    iget v5, v11, Lsnt;->b:I

    nop

    nop

    goto/32 :goto_155

    nop

    nop

    :goto_17d
    iput v2, v3, Lsjs;->b:I

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    :goto_17e
    iput-wide v12, v8, Lsnh;->w:J

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17f
    const/high16 v16, 0x20000

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_180
    sget-object v3, Lfww;->i:Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_181
    if-eqz v8, :cond_24

    nop

    nop

    nop

    goto/32 :goto_138

    nop

    :cond_24
    goto/32 :goto_137

    nop

    nop

    nop

    nop

    nop

    :goto_182
    move-object v15, v8

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_183
    or-int/lit8 v7, v7, 0x8

    nop

    nop

    nop

    goto/32 :goto_125

    nop

    nop

    nop

    :goto_184
    sget-object v0, Lsjs;->a:Lsjs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_223

    nop

    nop

    nop

    nop

    nop

    :goto_185
    invoke-virtual {v8}, Ltkg;->C()Z

    move-result v8

    nop

    nop

    nop

    nop

    goto/32 :goto_2d4

    nop

    nop

    :goto_186
    check-cast v8, Lsnh;

    nop

    nop

    goto/32 :goto_290

    nop

    nop

    nop

    nop

    nop

    :goto_187
    invoke-virtual {v6}, Ltkg;->m()Ltkb;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_313

    nop

    nop

    nop

    nop

    nop

    :goto_188
    invoke-virtual {v2}, Ltkb;->o()V

    :goto_189
    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    :goto_18a
    iput-wide v13, v6, Lmji;->f:J

    nop

    nop

    goto/32 :goto_16b

    nop

    nop

    :goto_18b
    if-eqz v3, :cond_25

    nop

    nop

    nop

    goto/32 :goto_209

    nop

    nop

    nop

    :cond_25
    goto/32 :goto_2de

    nop

    nop

    nop

    nop

    :goto_18c
    invoke-virtual {v8}, Ltkg;->C()Z

    move-result v8

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_18d
    check-cast v13, Lspc;

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_18e
    if-nez v4, :cond_26

    nop

    nop

    nop

    nop

    goto/32 :goto_2aa

    nop

    nop

    nop

    nop

    :cond_26
    goto/32 :goto_19e

    nop

    nop

    nop

    nop

    nop

    :goto_18f
    iget v0, v2, Lskd;->b:I

    nop

    nop

    goto/32 :goto_2e3

    nop

    nop

    nop

    :goto_190
    const-string v3, "dirtyLensEvents constains null object, skip."

    nop

    goto/32 :goto_35d

    nop

    nop

    nop

    :goto_191
    invoke-virtual {v10, v15}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    nop

    goto/32 :goto_2f0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_192
    invoke-virtual {v8}, Ltkg;->C()Z

    move-result v8

    nop

    nop

    goto/32 :goto_1de

    nop

    nop

    nop

    nop

    :goto_193
    invoke-virtual {v1}, Ltkb;->o()V

    :goto_194
    goto/32 :goto_1f1

    nop

    nop

    nop

    nop

    :goto_195
    iput v7, v4, Lsnh;->b:I

    nop

    nop

    nop

    goto/32 :goto_1b7

    nop

    nop

    nop

    nop

    :goto_196
    if-nez v8, :cond_27

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_27
    goto/32 :goto_2d3

    nop

    nop

    nop

    nop

    :goto_197
    const-class v3, Lfww;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_165

    nop

    nop

    :goto_198
    invoke-interface {v1}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_316

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_199
    iget v15, v8, Lsnh;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_19a
    iget-object v12, v6, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    :goto_19b
    iget-wide v3, v0, Lfww;->s:J

    nop

    nop

    nop

    goto/32 :goto_1e0

    nop

    nop

    nop

    nop

    :goto_19c
    const/4 v10, 0x4

    nop

    nop

    nop

    goto/32 :goto_2c6

    nop

    nop

    :goto_19d
    invoke-virtual {v7}, Ltkg;->C()Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c2

    nop

    nop

    nop

    nop

    :goto_19e
    if-ne v4, v5, :cond_28

    nop

    goto/32 :goto_259

    nop

    nop

    nop

    nop

    :cond_28
    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19f
    invoke-virtual {v4}, Lmjy;->b()I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_10c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a0
    iget-object v2, v1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_27d

    nop

    nop

    nop

    nop

    :goto_1a1
    iput v6, v8, Lspc;->d:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a2
    iput v0, v2, Lskd;->e:I

    nop

    nop

    nop

    :goto_1a3
    goto/32 :goto_21

    nop

    nop

    :goto_1a4
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_108

    nop

    nop

    nop

    nop

    nop

    :goto_1a5
    invoke-virtual {v8}, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->getUiWireEndNs()J

    move-result-wide v12

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_1a6
    return-void

    nop

    :goto_1a7
    goto/32 :goto_236

    nop

    nop

    nop

    :goto_1a8
    iput v3, v2, Lsjs;->h:I

    nop

    nop

    nop

    goto/32 :goto_2bf

    nop

    nop

    nop

    nop

    nop

    :goto_1a9
    iget-object v3, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_164

    nop

    nop

    nop

    nop

    nop

    :goto_1aa
    iget-object v3, v0, Ltkb;->b:Ltkg;

    nop

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

    nop

    :goto_1ab
    check-cast v2, Lsnh;

    nop

    nop

    goto/32 :goto_28b

    nop

    nop

    nop

    :goto_1ac
    sget-object v2, Lsob;->b:Lsob;

    nop

    nop

    nop

    nop

    goto/32 :goto_2d1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1ad
    iput v8, v4, Lsnh;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    :goto_1ae
    check-cast v0, Lsnt;

    nop

    goto/32 :goto_345

    nop

    nop

    nop

    :goto_1af
    iput v12, v8, Lspc;->b:I

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b0
    invoke-virtual {v4}, Ltkb;->i()Ltkg;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_234

    nop

    nop

    nop

    :goto_1b1
    invoke-virtual {v3}, Ltkg;->C()Z

    move-result v2

    nop

    goto/32 :goto_27f

    nop

    nop

    nop

    nop

    :goto_1b2
    invoke-virtual {v3}, Ltkg;->C()Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_269

    nop

    nop

    nop

    :goto_1b3
    iput-object v0, v2, Lskd;->aF:Lsnf;

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b4
    iput v15, v12, Lski;->b:I

    nop

    nop

    goto/32 :goto_28f

    nop

    nop

    nop

    nop

    nop

    :goto_1b5
    or-int/lit8 v11, v11, 0x20

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_1b6
    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    goto/32 :goto_321

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b7
    iput-boolean v3, v4, Lsnh;->n:Z

    nop

    goto/32 :goto_131

    nop

    nop

    nop

    nop

    nop

    :goto_1b8
    iget-object v7, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_202

    nop

    nop

    nop

    nop

    :goto_1b9
    invoke-virtual {v5}, Ltkg;->C()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_266

    nop

    nop

    :goto_1ba
    invoke-virtual {v2}, Lrss;->c()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_283

    nop

    nop

    nop

    :goto_1bb
    check-cast v8, Lsnh;

    nop

    nop

    nop

    nop

    goto/32 :goto_201

    nop

    nop

    :goto_1bc
    iget-object v2, v6, Lmjv;->i:Ljava/util/List;

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    :goto_1bd
    sget-object v1, Lskd;->a:Lskd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16a

    nop

    nop

    :goto_1be
    invoke-virtual {v2}, Ltkb;->o()V

    :goto_1bf
    goto/32 :goto_173

    nop

    nop

    nop

    nop

    nop

    :goto_1c0
    if-eqz v0, :cond_29

    nop

    nop

    nop

    goto/32 :goto_12e

    nop

    :cond_29
    goto/32 :goto_12d

    nop

    nop

    nop

    :goto_1c1
    invoke-static {v1}, Lnnb;->b(Lnne;)Lsob;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    :goto_1c2
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_1c3
    invoke-static {v3, v4}, Ljmo;->M(Lpcg;Z)I

    move-result v3

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c4
    iput v3, v2, Lsjs;->b:I

    nop

    nop

    nop

    nop

    nop

    :goto_1c5
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c6
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_c8

    nop

    nop

    :goto_1c7
    or-int/2addr v13, v5

    nop

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

    :goto_1c8
    move-object v4, v3

    nop

    goto/32 :goto_33e

    nop

    nop

    nop

    nop

    nop

    :goto_1c9
    iput v3, v4, Lsnh;->b:I

    nop

    goto/32 :goto_30b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1ca
    iget-object v4, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_167

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1cb
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v17

    nop

    nop

    goto/32 :goto_21a

    nop

    nop

    nop

    :goto_1cc
    iget-object v5, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_341

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1cd
    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_1ce
    iput v2, v1, Lsjs;->e:F

    nop

    :goto_1cf
    goto/32 :goto_210

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d0
    const/16 v9, 0x10

    nop

    goto/32 :goto_19c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d1
    if-nez v4, :cond_2a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_271

    nop

    nop

    nop

    :cond_2a
    goto/32 :goto_2d6

    nop

    nop

    nop

    :goto_1d2
    invoke-virtual {v2}, Ltkb;->o()V

    :goto_1d3
    goto/32 :goto_129

    nop

    nop

    nop

    nop

    nop

    :goto_1d4
    check-cast v6, Lspc;

    nop

    nop

    nop

    nop

    goto/32 :goto_218

    nop

    nop

    nop

    :goto_1d5
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1ee

    nop

    nop

    nop

    nop

    nop

    :goto_1d6
    iget-object v8, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_1d7
    if-eqz v3, :cond_2b

    nop

    nop

    nop

    goto/32 :goto_1dd

    nop

    nop

    nop

    :cond_2b
    goto/32 :goto_1dc

    nop

    nop

    nop

    :goto_1d8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19b

    nop

    nop

    :goto_1d9
    check-cast v8, Lsnh;

    nop

    nop

    nop

    goto/32 :goto_14a

    nop

    nop

    :goto_1da
    check-cast v8, Lsnh;

    nop

    nop

    nop

    nop

    goto/32 :goto_286

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1db
    if-eqz v2, :cond_2c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_172

    nop

    nop

    nop

    :cond_2c
    goto/32 :goto_171

    nop

    nop

    :goto_1dc
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_1dd
    goto/32 :goto_1aa

    nop

    nop

    nop

    :goto_1de
    if-eqz v8, :cond_2d

    nop

    nop

    nop

    goto/32 :goto_207

    nop

    nop

    nop

    :cond_2d
    goto/32 :goto_206

    nop

    nop

    :goto_1df
    iget-object v1, v0, Lfww;->a:Lsob;

    nop

    nop

    nop

    goto/32 :goto_272

    nop

    nop

    nop

    nop

    nop

    :goto_1e0
    sub-long v3, v1, v3

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_1e1
    iput-wide v12, v8, Lsnh;->m:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29f

    nop

    nop

    nop

    nop

    :goto_1e2
    iget-object v5, v6, Lmjv;->f:Ljro;

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_1e3
    iget-object v3, v0, Lfww;->v:Lhql;

    nop

    goto/32 :goto_253

    nop

    nop

    nop

    nop

    nop

    :goto_1e4
    const v0, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_132

    nop

    nop

    nop

    nop

    nop

    :goto_1e5
    invoke-virtual {v1}, Ltkb;->o()V

    :goto_1e6
    goto/32 :goto_1a0

    nop

    nop

    nop

    nop

    :goto_1e7
    iget-object v8, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_185

    nop

    nop

    nop

    nop

    :goto_1e8
    invoke-virtual {v2}, Ltkb;->o()V

    :goto_1e9
    goto/32 :goto_22c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1ea
    sget-object v12, Llyr;->ag:Llze;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    :goto_1eb
    const/4 v4, 0x4

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    :goto_1ec
    add-int/2addr v3, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_1a8

    nop

    nop

    nop

    :goto_1ed
    const/16 v5, 0xa

    nop

    goto/32 :goto_31f

    nop

    nop

    nop

    nop

    :goto_1ee
    iput-object v3, v4, Lsnh;->p:Lspc;

    nop

    nop

    nop

    goto/32 :goto_109

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1ef
    iget-object v9, v10, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_1f0
    invoke-virtual {v9}, Ltkg;->m()Ltkb;

    move-result-object v9

    nop

    nop

    goto/32 :goto_297

    nop

    nop

    nop

    :goto_1f1
    iget-object v2, v1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24b

    nop

    nop

    :goto_1f2
    invoke-virtual {v7}, Ltkg;->C()Z

    move-result v7

    nop

    nop

    goto/32 :goto_22b

    nop

    nop

    nop

    :goto_1f3
    invoke-virtual {v2}, Ltkg;->m()Ltkb;

    move-result-object v2

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_1f4
    or-int/lit8 v8, v8, 0x20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1ad

    nop

    nop

    nop

    :goto_1f5
    check-cast v5, Lsjs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f6
    invoke-virtual {v3}, Ltkg;->C()Z

    move-result v3

    nop

    goto/32 :goto_1d7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f7
    iput v12, v8, Lski;->b:I

    nop

    nop

    nop

    goto/32 :goto_318

    nop

    nop

    nop

    :goto_1f8
    iget-object v5, v9, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    :goto_1f9
    goto/32 :goto_1a7

    nop

    :goto_1fa
    goto/32 :goto_26f

    nop

    nop

    nop

    nop

    nop

    :goto_1fb
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_1fc
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_1fd
    iget v15, v8, Lsnh;->b:I

    nop

    nop

    goto/32 :goto_17f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1fe
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    nop

    :goto_1ff
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_200
    or-int/lit16 v15, v15, 0x80

    nop

    nop

    goto/32 :goto_31b

    nop

    nop

    nop

    :goto_201
    iget v15, v8, Lsnh;->b:I

    nop

    nop

    goto/32 :goto_2db

    nop

    nop

    nop

    nop

    :goto_202
    move-object v8, v7

    nop

    nop

    nop

    goto/32 :goto_357

    nop

    nop

    nop

    nop

    nop

    :goto_203
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1cb

    nop

    nop

    nop

    :goto_204
    if-eq v2, v5, :cond_2e

    nop

    nop

    nop

    nop

    goto/32 :goto_176

    nop

    nop

    :cond_2e
    goto/32 :goto_309

    nop

    nop

    nop

    nop

    nop

    :goto_205
    iput v11, v9, Lskd;->f:I

    nop

    nop

    nop

    goto/32 :goto_119

    nop

    nop

    :goto_206
    invoke-virtual {v2}, Ltkb;->o()V

    :goto_207
    goto/32 :goto_134

    nop

    nop

    nop

    nop

    nop

    :goto_208
    goto/16 :goto_124

    nop

    nop

    nop

    nop

    :goto_209
    goto/32 :goto_319

    nop

    nop

    nop

    :goto_20a
    check-cast v1, Lsjs;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_20b
    cmp-long v3, v3, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_30d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20c
    if-eqz v2, :cond_2f

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :cond_2f
    goto/32 :goto_2d8

    nop

    nop

    nop

    nop

    nop

    :goto_20d
    iget-object v8, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_323

    nop

    nop

    :goto_20e
    if-eqz v4, :cond_30

    nop

    goto/32 :goto_25b

    nop

    nop

    :cond_30
    goto/32 :goto_25a

    nop

    nop

    nop

    nop

    :goto_20f
    if-eqz v5, :cond_31

    nop

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    :cond_31
    goto/32 :goto_1cc

    nop

    nop

    nop

    nop

    nop

    :goto_210
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_239

    nop

    nop

    nop

    nop

    :goto_211
    iget v12, v8, Lski;->b:I

    nop

    goto/32 :goto_330

    nop

    nop

    nop

    :goto_212
    if-nez v3, :cond_32

    nop

    nop

    goto/32 :goto_1c5

    nop

    :cond_32
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_213
    invoke-virtual {v9}, Ltkg;->C()Z

    move-result v9

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

    :goto_214
    const/16 v3, 0x1176

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_215
    move v6, v10

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    :goto_216
    if-eqz v6, :cond_33

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    :cond_33
    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_217
    iget-boolean v1, v6, Lmjv;->k:Z

    nop

    nop

    goto/32 :goto_291

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_218
    iget v7, v6, Lspc;->b:I

    nop

    nop

    nop

    goto/32 :goto_183

    nop

    nop

    :goto_219
    iget-object v8, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_21a
    iget-object v12, v6, Lmjv;->o:Ljava/util/LinkedHashMap;

    nop

    nop

    goto/32 :goto_27e

    nop

    nop

    nop

    :goto_21b
    iput-wide v13, v6, Lmji;->m:J

    nop

    nop

    nop

    nop

    goto/32 :goto_279

    nop

    nop

    nop

    nop

    :goto_21c
    add-int/2addr v6, v11

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21d
    or-int/lit8 v15, v15, 0x40

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_177

    nop

    nop

    :goto_21e
    const-wide/16 v20, 0x7530

    nop

    nop

    nop

    goto/32 :goto_2e2

    nop

    nop

    nop

    :goto_21f
    invoke-static {}, Landroid/os/Process;->getStartElapsedRealtime()J

    move-result-wide v6

    nop

    nop

    nop

    nop

    goto/32 :goto_120

    nop

    nop

    nop

    nop

    :goto_220
    invoke-virtual {v12}, Ltkg;->C()Z

    move-result v6

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    :goto_221
    if-eqz v5, :cond_34

    nop

    nop

    nop

    goto/32 :goto_2f2

    nop

    nop

    nop

    nop

    :cond_34
    goto/32 :goto_2f1

    nop

    nop

    :goto_222
    invoke-virtual {v8}, Ltkg;->C()Z

    move-result v8

    nop

    nop

    nop

    goto/32 :goto_181

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_223
    invoke-virtual {v0}, Ltkg;->m()Ltkb;

    move-result-object v0

    nop

    goto/32 :goto_30c

    nop

    nop

    nop

    nop

    :goto_224
    iput v15, v8, Lsnh;->b:I

    nop

    nop

    goto/32 :goto_2c7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_225
    iget-object v8, v0, Lfww;->k:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    nop

    nop

    goto/32 :goto_1a5

    nop

    nop

    nop

    nop

    nop

    :goto_226
    if-eqz v8, :cond_35

    nop

    nop

    nop

    nop

    goto/32 :goto_2a5

    nop

    :cond_35
    goto/32 :goto_2a4

    nop

    nop

    :goto_227
    sget-object v2, Lsnh;->a:Lsnh;

    nop

    nop

    nop

    goto/32 :goto_1f3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_228
    if-nez v3, :cond_36

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :cond_36
    goto/32 :goto_9b

    nop

    nop

    :goto_229
    iput-wide v12, v8, Lsnh;->l:J

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

    :goto_22a
    check-cast v4, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_136

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22b
    if-eqz v7, :cond_37

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2ed

    nop

    nop

    nop

    :cond_37
    goto/32 :goto_2ec

    nop

    nop

    :goto_22c
    iget-object v8, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_1da

    nop

    nop

    :goto_22d
    if-eqz v0, :cond_38

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f4

    nop

    nop

    nop

    :cond_38
    goto/32 :goto_2f3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22e
    invoke-virtual {v8, v12}, Llyv;->b(Llyp;)Ljava/lang/Object;

    move-result-object v8

    nop

    goto/32 :goto_25d

    nop

    nop

    nop

    :goto_22f
    or-int v15, v15, v16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_230
    check-cast v8, Lsnh;

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_231
    sget-object v2, Lmjv;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_16e

    nop

    nop

    nop

    nop

    :goto_232
    iput v15, v8, Lsnh;->b:I

    nop

    nop

    nop

    goto/32 :goto_2fe

    nop

    nop

    :goto_233
    invoke-virtual {v8}, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->getWaitForCameraDevicesTaskTimeStartNs()J

    move-result-wide v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e7

    nop

    nop

    nop

    nop

    :goto_234
    check-cast v3, Lspc;

    nop

    nop

    nop

    nop

    goto/32 :goto_24a

    nop

    nop

    :goto_235
    if-eqz v4, :cond_39

    nop

    goto/32 :goto_34c

    nop

    nop

    nop

    nop

    :cond_39
    goto/32 :goto_34b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_236
    goto/32 :goto_1fa

    nop

    nop

    nop

    nop

    :goto_237
    invoke-virtual {v8}, Ltkg;->C()Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_235

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_238
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_170

    nop

    nop

    nop

    :goto_239
    iput-boolean v1, v6, Lmjv;->k:Z

    nop

    nop

    nop

    goto/32 :goto_273

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23a
    invoke-virtual {v9}, Ltkb;->o()V

    :goto_23b
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23c
    iget v12, v8, Lspc;->b:I

    nop

    nop

    nop

    goto/32 :goto_26e

    nop

    nop

    :goto_23d
    invoke-virtual {v8}, Ltkg;->C()Z

    move-result v8

    nop

    nop

    nop

    goto/32 :goto_27c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23e
    move v4, v10

    nop

    nop

    goto/32 :goto_258

    nop

    nop

    nop

    :goto_23f
    iput-wide v12, v8, Lsnh;->k:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :goto_240
    if-nez v19, :cond_3a

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    :cond_3a
    goto/32 :goto_353

    nop

    nop

    :goto_241
    iput-wide v12, v8, Lsnh;->e:J

    nop

    nop

    nop

    nop

    goto/32 :goto_12f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_242
    iput v15, v11, Lsnt;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_243
    iget-object v2, v4, Lrsx;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_31c

    nop

    nop

    nop

    :goto_244
    iget-object v8, v2, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_23d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_245
    iget v6, v3, Llvn;->a:F

    nop

    nop

    nop

    nop

    goto/32 :goto_296

    nop

    nop

    :goto_246
    invoke-virtual {v8}, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->getFirstVfePreviewFrameRenderedNs()J

    move-result-wide v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    :goto_247
    const/4 v5, 0x1

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_248
    iget v13, v12, Lski;->b:I

    nop

    nop

    nop

    goto/32 :goto_1c7

    nop

    nop

    nop

    nop

    nop

    :goto_249
    invoke-virtual {v2}, Lrss;->h()Z

    move-result v5

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    nop

    :goto_24a
    iget-object v4, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_2b8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24b
    check-cast v2, Lskd;

    nop

    goto/32 :goto_1b3

    nop

    nop

    :goto_24c
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v5

    nop

    goto/32 :goto_20f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24d
    if-eqz v8, :cond_3b

    nop

    goto/32 :goto_15a

    nop

    nop

    nop

    :cond_3b
    goto/32 :goto_159

    nop

    nop

    :goto_24e
    iput-wide v12, v8, Lsnh;->i:J

    nop

    nop

    goto/32 :goto_2d2

    nop

    nop

    nop

    :goto_24f
    iput v11, v5, Lsnt;->f:F

    nop

    nop

    nop

    goto/32 :goto_14c

    nop

    nop

    :goto_250
    iget v15, v12, Lski;->b:I

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_251
    invoke-static {v4}, Ltkg;->v(Ltkv;)Ltkv;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_252
    iget-object v8, v0, Lfww;->k:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    nop

    nop

    nop

    goto/32 :goto_260

    nop

    nop

    nop

    nop

    :goto_253
    invoke-virtual {v3}, Lhql;->a()Ljava/util/List;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_160

    nop

    nop

    :goto_254
    iget-object v7, v4, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_2fa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_255
    check-cast v11, Lsnt;

    nop

    nop

    goto/32 :goto_12b

    nop

    nop

    nop

    nop

    :goto_256
    invoke-virtual {v2}, Lmjy;->b()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_204

    nop

    nop

    :goto_257
    iget-object v8, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_317

    nop

    nop

    nop

    nop

    :goto_258
    goto/16 :goto_e9

    nop

    nop

    nop

    :goto_259
    goto/32 :goto_355

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25a
    invoke-virtual {v2}, Ltkb;->o()V

    :goto_25b
    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25c
    iget-object v8, v2, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_192

    nop

    nop

    :goto_25d
    check-cast v8, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_25e
    invoke-virtual {v7}, Ltkg;->C()Z

    move-result v6

    nop

    nop

    goto/32 :goto_216

    nop

    nop

    :goto_25f
    iput-wide v12, v15, Lsnh;->f:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_237

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_260
    invoke-virtual {v8}, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->getShutterButtonFirstEnabledNs()J

    move-result-wide v12

    nop

    nop

    nop

    nop

    goto/32 :goto_28e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_261
    iget v2, v3, Lsjs;->b:I

    nop

    nop

    goto/32 :goto_154

    nop

    nop

    nop

    nop

    :goto_262
    iget-object v8, v0, Lfww;->k:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    nop

    nop

    goto/32 :goto_33f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_263
    if-lez v0, :cond_3c

    nop

    nop

    nop

    nop

    goto/32 :goto_1fa

    nop

    nop

    nop

    nop

    :cond_3c
    goto/32 :goto_1f9

    nop

    :goto_264
    if-eqz v3, :cond_3d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e1

    nop

    :cond_3d
    goto/32 :goto_2e0

    nop

    nop

    nop

    :goto_265
    iget-object v4, v3, Lsjs;->d:Ltkv;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_266
    if-eqz v0, :cond_3e

    nop

    nop

    nop

    goto/32 :goto_146

    nop

    nop

    nop

    :cond_3e
    goto/32 :goto_145

    nop

    nop

    nop

    nop

    :goto_267
    iget-object v8, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_186

    nop

    nop

    :goto_268
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_20a

    nop

    nop

    nop

    nop

    nop

    :goto_269
    if-eqz v3, :cond_3f

    nop

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    nop

    nop

    :cond_3f
    goto/32 :goto_111

    nop

    nop

    nop

    nop

    :goto_26a
    check-cast v2, Lscz;

    nop

    goto/32 :goto_190

    nop

    nop

    :goto_26b
    invoke-static {v2}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26c
    iget-object v1, v0, Lfww;->o:Llvo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    :goto_26d
    iput-wide v7, v13, Lspc;->c:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_220

    nop

    nop

    nop

    nop

    :goto_26e
    or-int/2addr v12, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_1af

    nop

    nop

    nop

    nop

    :goto_26f
    move-object/from16 v0, p0

    nop

    nop

    nop

    goto/32 :goto_1d8

    nop

    nop

    nop

    nop

    :goto_270
    iput v4, v3, Lsnh;->b:I

    nop

    nop

    nop

    nop

    nop

    :goto_271
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_272
    sget-object v2, Lsob;->a:Lsob;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2be

    nop

    nop

    nop

    nop

    :goto_273
    const-wide/16 v1, 0x0

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    :goto_274
    check-cast v8, Lsnh;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a0

    nop

    nop

    nop

    nop

    nop

    :goto_275
    check-cast v8, Lsnh;

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    nop

    :goto_276
    add-int/2addr v4, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    :goto_277
    goto/16 :goto_1c2

    nop

    :goto_278
    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_279
    new-instance v8, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_1a4

    nop

    nop

    nop

    :goto_27a
    sget-object v9, Lsnt;->a:Lsnt;

    nop

    nop

    goto/32 :goto_1f0

    nop

    nop

    nop

    nop

    :goto_27b
    iget-object v3, v1, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_1c8

    nop

    nop

    nop

    nop

    :goto_27c
    if-eqz v8, :cond_40

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    :cond_40
    goto/32 :goto_fb

    nop

    nop

    nop

    nop

    nop

    :goto_27d
    check-cast v2, Lskd;

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    :goto_27e
    invoke-virtual {v12}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    nop

    nop

    nop

    goto/32 :goto_1fe

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27f
    if-eqz v2, :cond_41

    nop

    nop

    goto/32 :goto_1e6

    nop

    nop

    nop

    :cond_41
    goto/32 :goto_1e5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_280
    check-cast v8, Lski;

    nop

    goto/32 :goto_211

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_281
    iget-object v0, v10, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    :goto_282
    iget-object v8, v2, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_222

    nop

    nop

    :goto_283
    iget-object v3, v0, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_302

    nop

    nop

    nop

    :goto_284
    check-cast v0, Lsjs;

    nop

    nop

    nop

    nop

    goto/32 :goto_1fc

    nop

    nop

    nop

    nop

    :goto_285
    iget v3, v3, Llvn;->c:F

    nop

    goto/32 :goto_25e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_286
    iget v15, v8, Lsnh;->b:I

    nop

    goto/32 :goto_157

    nop

    nop

    nop

    nop

    nop

    :goto_287
    invoke-virtual/range {v22 .. v22}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_2e5

    nop

    nop

    nop

    nop

    nop

    :goto_288
    iget-object v5, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_1f5

    nop

    nop

    :goto_289
    div-float/2addr v1, v3

    nop

    nop

    goto/32 :goto_350

    nop

    nop

    :goto_28a
    iget-object v9, v10, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_213

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28b
    iput-object v2, v3, Lsjs;->c:Lsnh;

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_28c
    invoke-interface {v4}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_22a

    nop

    nop

    nop

    nop

    :goto_28d
    sget v6, Lryb;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_343

    nop

    nop

    nop

    nop

    nop

    :goto_28e
    iget-object v8, v2, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_18c

    nop

    nop

    nop

    nop

    :goto_28f
    iput-boolean v8, v12, Lski;->d:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_331

    nop

    nop

    nop

    nop

    nop

    :goto_290
    iget v15, v8, Lsnh;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15f

    nop

    nop

    nop

    nop

    nop

    :goto_291
    if-eqz v1, :cond_42

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :cond_42
    goto/32 :goto_144

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_292
    iput-wide v12, v8, Lsnh;->u:J

    nop

    nop

    nop

    goto/32 :goto_262

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_293
    invoke-virtual {v8}, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->getActivityInitializeStartNs()J

    move-result-wide v12

    nop

    nop

    goto/32 :goto_303

    nop

    nop

    nop

    :goto_294
    check-cast v4, Lsnh;

    nop

    nop

    nop

    goto/32 :goto_130

    nop

    nop

    nop

    nop

    :goto_295
    iget-object v4, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    :goto_296
    iget-object v7, v4, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_2df

    nop

    nop

    :goto_297
    iget-object v11, v9, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_325

    nop

    nop

    nop

    :goto_298
    invoke-static {v4}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v4

    nop

    nop

    goto/32 :goto_121

    nop

    nop

    nop

    nop

    :goto_299
    check-cast v8, Lspc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23c

    nop

    nop

    nop

    nop

    nop

    :goto_29a
    check-cast v4, Lski;

    nop

    goto/32 :goto_298

    nop

    nop

    nop

    nop

    :goto_29b
    if-eqz v8, :cond_43

    nop

    nop

    nop

    nop

    goto/32 :goto_189

    nop

    :cond_43
    goto/32 :goto_188

    nop

    nop

    :goto_29c
    iget-object v2, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_29d
    iget-object v8, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_230

    nop

    nop

    :goto_29e
    invoke-virtual {v8}, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->getWaitForCameraDevicesTaskTimeEndNs()J

    move-result-wide v12

    nop

    nop

    nop

    nop

    goto/32 :goto_1d6

    nop

    nop

    :goto_29f
    iget-object v8, v0, Lfww;->k:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_293

    nop

    nop

    nop

    :goto_2a0
    iget v15, v8, Lsnh;->b:I

    nop

    nop

    nop

    goto/32 :goto_2b3

    nop

    nop

    nop

    nop

    nop

    :goto_2a1
    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_1db

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a2
    invoke-virtual {v8}, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->getFirstPreviewFrameReceivedNs()J

    move-result-wide v12

    nop

    nop

    nop

    nop

    goto/32 :goto_20d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a3
    iget-object v2, v0, Lfww;->d:Lmjy;

    nop

    nop

    nop

    goto/32 :goto_256

    nop

    nop

    nop

    nop

    nop

    :goto_2a4
    invoke-virtual {v2}, Ltkb;->o()V

    :goto_2a5
    goto/32 :goto_116

    nop

    nop

    nop

    :goto_2a6
    iget v5, v0, Lskd;->b:I

    nop

    nop

    nop

    goto/32 :goto_30e

    nop

    nop

    :goto_2a7
    iput-wide v13, v6, Lmji;->e:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    :goto_2a8
    const/high16 v2, -0x40800000    # -1.0f

    nop

    goto/32 :goto_1ce

    nop

    nop

    :goto_2a9
    goto/16 :goto_e9

    nop

    nop

    nop

    :goto_2aa
    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    :goto_2ab
    iput-wide v13, v6, Lmji;->j:J

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_2ac
    iput v5, v0, Lskd;->b:I

    nop

    goto/32 :goto_33a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2ad
    const/4 v3, 0x0

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_2ae
    invoke-virtual {v12}, Ltkg;->C()Z

    move-result v12

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_2af
    iget v3, v2, Lsjs;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1eb

    nop

    nop

    nop

    nop

    nop

    :goto_2b0
    iget-object v8, v2, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b1
    iput v15, v6, Lmji;->h:I

    nop

    nop

    goto/32 :goto_2a7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b2
    check-cast v8, Lspc;

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    :goto_2b3
    or-int/lit16 v15, v15, 0x1000

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_2b4
    check-cast v8, Lsnh;

    nop

    goto/32 :goto_314

    nop

    nop

    nop

    :goto_2b5
    throw v0

    nop

    :goto_2b6
    goto/32 :goto_65

    nop

    nop

    nop

    :goto_2b7
    iget-object v5, v5, Lsjs;->f:Ltkv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    :goto_2b8
    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_20e

    nop

    nop

    nop

    nop

    nop

    :goto_2b9
    invoke-virtual/range {v22 .. v22}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_2ba
    iget-object v7, v2, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_179

    nop

    nop

    :goto_2bb
    invoke-virtual {v2}, Ltkb;->o()V

    :goto_2bc
    goto/32 :goto_1b8

    nop

    nop

    nop

    :goto_2bd
    invoke-virtual {v8}, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->getFirstPreviewFrameRenderedNs()J

    move-result-wide v12

    nop

    nop

    goto/32 :goto_257

    nop

    nop

    nop

    nop

    :goto_2be
    if-ne v1, v2, :cond_44

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_278

    nop

    nop

    :cond_44
    goto/32 :goto_328

    nop

    nop

    :goto_2bf
    iget v3, v2, Lsjs;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_142

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c0
    iget-object v8, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_2c1
    or-int v15, v15, v16

    nop

    nop

    nop

    goto/32 :goto_232

    nop

    nop

    nop

    :goto_2c2
    if-eqz v4, :cond_45

    nop

    nop

    goto/32 :goto_311

    nop

    nop

    nop

    nop

    nop

    :cond_45
    goto/32 :goto_310

    nop

    nop

    nop

    :goto_2c3
    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

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

    :goto_2c4
    long-to-float v1, v13

    nop

    nop

    goto/32 :goto_29c

    nop

    nop

    :goto_2c5
    if-eqz v6, :cond_46

    nop

    nop

    nop

    goto/32 :goto_161

    nop

    nop

    nop

    nop

    :cond_46
    goto/32 :goto_2a3

    nop

    nop

    nop

    nop

    nop

    :goto_2c6
    const/4 v11, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_238

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c7
    iput-wide v12, v8, Lsnh;->d:J

    nop

    goto/32 :goto_113

    nop

    nop

    nop

    :goto_2c8
    iput v8, v4, Lsnh;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2fc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c9
    check-cast v2, Lsjs;

    nop

    nop

    nop

    nop

    goto/32 :goto_13d

    nop

    nop

    nop

    nop

    :goto_2ca
    add-int v0, v0, v1

    nop

    goto/32 :goto_35f

    nop

    nop

    nop

    nop

    nop

    :goto_2cb
    iget-object v8, v2, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_274

    nop

    nop

    :goto_2cc
    if-eqz v8, :cond_47

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11f

    nop

    :cond_47
    goto/32 :goto_11e

    nop

    nop

    nop

    :goto_2cd
    iget-object v10, v6, Lmjv;->o:Ljava/util/LinkedHashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_191

    nop

    nop

    :goto_2ce
    iput v15, v8, Lsnh;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    :goto_2cf
    const-wide/16 v6, 0x0

    nop

    nop

    :goto_2d0
    goto/32 :goto_227

    nop

    nop

    nop

    nop

    nop

    :goto_2d1
    if-eq v1, v2, :cond_48

    nop

    nop

    nop

    nop

    goto/32 :goto_1cf

    nop

    nop

    nop

    nop

    :cond_48
    goto/32 :goto_217

    nop

    nop

    :goto_2d2
    iget-object v8, v0, Lfww;->k:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_246

    nop

    nop

    nop

    :goto_2d3
    move v8, v5

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

    :goto_2d4
    if-eqz v8, :cond_49

    nop

    goto/32 :goto_1e9

    nop

    nop

    nop

    :cond_49
    goto/32 :goto_1e8

    nop

    nop

    nop

    :goto_2d5
    iget-object v8, v6, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_280

    nop

    nop

    :goto_2d6
    sget-object v4, Lspc;->a:Lspc;

    nop

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    nop

    :goto_2d7
    iput v2, v1, Lsjs;->b:I

    nop

    goto/32 :goto_2a8

    nop

    nop

    nop

    :goto_2d8
    iget-object v2, v6, Lmjv;->i:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_163

    nop

    nop

    nop

    nop

    :goto_2d9
    or-int/lit16 v15, v15, 0x100

    nop

    nop

    nop

    goto/32 :goto_32d

    nop

    nop

    nop

    :goto_2da
    const/4 v10, 0x4

    nop

    nop

    nop

    goto/32 :goto_1fb

    nop

    nop

    nop

    nop

    :goto_2db
    const/high16 v16, 0x800000

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

    :goto_2dc
    or-int/2addr v2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_2d7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2dd
    iget-object v3, v1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_2de
    move v3, v14

    nop

    nop

    nop

    goto/32 :goto_208

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2df
    move-object v8, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_2b2

    nop

    nop

    nop

    nop

    nop

    :goto_2e0
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_2e1
    goto/32 :goto_139

    nop

    nop

    nop

    :goto_2e2
    cmp-long v10, v17, v20

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    :goto_2e3
    or-int/lit16 v0, v0, 0x2000

    nop

    nop

    nop

    goto/32 :goto_30f

    nop

    nop

    nop

    nop

    nop

    :goto_2e4
    goto/16 :goto_1ff

    nop

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    nop

    :try_start_1
    monitor-exit v11

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_2b5

    nop

    nop

    nop

    nop

    nop

    :goto_2e5
    check-cast v0, Lsnf;

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_2e6
    const/4 v5, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e7
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_2e8
    goto/32 :goto_268

    nop

    nop

    nop

    nop

    :goto_2e9
    iget-object v0, v9, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1ae

    nop

    nop

    nop

    nop

    :goto_2ea
    iget v3, v3, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->i:I

    nop

    goto/32 :goto_228

    nop

    nop

    nop

    nop

    :goto_2eb
    iput v15, v8, Lsnh;->b:I

    nop

    nop

    nop

    goto/32 :goto_241

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2ec
    invoke-virtual {v4}, Ltkb;->o()V

    :goto_2ed
    goto/32 :goto_254

    nop

    nop

    nop

    nop

    nop

    :goto_2ee
    iget-object v8, v0, Lfww;->k:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2ef
    const/4 v6, 0x5

    nop

    goto/32 :goto_326

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f0
    check-cast v10, Lnzk;

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

    :goto_2f1
    invoke-virtual {v9}, Ltkb;->o()V

    :goto_2f2
    goto/32 :goto_1f8

    nop

    nop

    nop

    :goto_2f3
    invoke-virtual {v9}, Ltkb;->o()V

    :goto_2f4
    goto/32 :goto_2e9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f5
    invoke-virtual {v8}, Ltkg;->C()Z

    move-result v8

    nop

    nop

    nop

    goto/32 :goto_103

    nop

    nop

    nop

    nop

    nop

    :goto_2f6
    const/4 v3, 0x4

    nop

    goto/32 :goto_2dc

    nop

    nop

    nop

    nop

    :goto_2f7
    check-cast v8, Lsnh;

    nop

    goto/32 :goto_31a

    nop

    nop

    :goto_2f8
    iget v8, v4, Lsnh;->b:I

    nop

    nop

    nop

    goto/32 :goto_1f4

    nop

    nop

    :goto_2f9
    iget-object v8, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_2fa
    move-object v8, v7

    nop

    nop

    nop

    goto/32 :goto_299

    nop

    nop

    nop

    nop

    nop

    :goto_2fb
    iget-object v12, v6, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    :goto_2fc
    iput-wide v6, v4, Lsnh;->s:J

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_2fd
    iput v11, v6, Lmji;->n:I

    nop

    goto/32 :goto_158

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2fe
    iput-wide v12, v8, Lsnh;->t:J

    nop

    goto/32 :goto_252

    nop

    nop

    nop

    nop

    :goto_2ff
    iput v15, v8, Lsnh;->b:I

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_300
    goto/16 :goto_e9

    nop

    nop

    nop

    :goto_301
    goto/32 :goto_23e

    nop

    nop

    nop

    :goto_302
    invoke-virtual {v3}, Ltkg;->C()Z

    move-result v3

    nop

    nop

    goto/32 :goto_264

    nop

    nop

    :goto_303
    iget-object v8, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_304
    iget-object v0, v10, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_30a

    nop

    nop

    :goto_305
    iget-object v2, v0, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_2c9

    nop

    nop

    nop

    nop

    :goto_306
    iput v15, v6, Lmji;->l:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_307
    monitor-enter v11

    nop

    nop

    nop

    nop

    :try_start_2
    iget-object v5, v5, Ljro;->b:Ljava/security/MessageDigest;

    nop

    nop

    sget-object v0, Ljro;->a:Ljava/nio/charset/Charset;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v15, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    nop

    nop

    nop

    invoke-virtual {v5, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    nop

    new-instance v5, Ljava/lang/StringBuilder;

    nop

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    array-length v15, v0

    nop

    nop

    move-object/from16 v22, v8

    nop

    nop

    nop

    nop

    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    :goto_308
    if-ge v8, v15, :cond_4a

    nop

    nop

    nop

    nop

    move/from16 v23, v15

    nop

    nop

    aget-byte v15, v0, v8

    nop

    nop

    and-int/lit16 v15, v15, 0xff

    nop

    nop

    nop

    nop

    nop

    add-int/lit16 v15, v15, 0x100

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v24, v0

    nop

    const/16 v0, 0x10

    nop

    nop

    nop

    nop

    invoke-static {v15, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v15

    nop

    nop

    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    nop

    nop

    nop

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    nop

    nop

    nop

    move/from16 v15, v23

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v0, v24

    nop

    nop

    nop

    nop

    goto :goto_308

    nop

    nop

    nop

    nop

    nop

    :cond_4a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    monitor-exit v11

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_1ed

    nop

    nop

    :goto_309
    iget-object v2, v0, Lfww;->k:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    :goto_30a
    invoke-virtual {v0}, Ltkg;->C()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1c0

    nop

    nop

    nop

    :goto_30b
    iget-object v3, v0, Lfww;->t:Llvn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    :goto_30c
    if-nez v7, :cond_4b

    nop

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    :cond_4b
    goto/32 :goto_24c

    nop

    nop

    nop

    :goto_30d
    if-gez v3, :cond_4c

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    :cond_4c
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30e
    or-int/lit8 v5, v5, 0x20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2ac

    nop

    nop

    :goto_30f
    iput v0, v2, Lskd;->b:I

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_310
    invoke-virtual {v2}, Ltkb;->o()V

    :goto_311
    goto/32 :goto_81

    nop

    nop

    nop

    :goto_312
    iput-wide v1, v0, Lfww;->s:J

    nop

    nop

    nop

    goto/32 :goto_1df

    nop

    nop

    nop

    :goto_313
    iget-object v8, v4, Lhdu;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_1ea

    nop

    nop

    :goto_314
    iget v15, v8, Lsnh;->b:I

    nop

    goto/32 :goto_339

    nop

    nop

    nop

    nop

    nop

    :goto_315
    iput v5, v0, Lsnt;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_332

    nop

    nop

    nop

    nop

    nop

    :goto_316
    check-cast v1, Lnne;

    nop

    nop

    goto/32 :goto_1c1

    nop

    nop

    nop

    nop

    :goto_317
    invoke-virtual {v8}, Ltkg;->C()Z

    move-result v8

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_318
    iput-boolean v4, v8, Lski;->e:Z

    nop

    nop

    nop

    goto/32 :goto_32e

    nop

    nop

    :goto_319
    iget-object v3, v0, Lfww;->k:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    nop

    nop

    nop

    nop

    goto/32 :goto_2ea

    nop

    nop

    nop

    nop

    nop

    :goto_31a
    iget v15, v8, Lsnh;->b:I

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_31b
    iput v15, v8, Lsnh;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_128

    nop

    nop

    nop

    :goto_31c
    iget-object v3, v0, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_31d
    invoke-interface {v8, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_196

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31e
    if-eqz v8, :cond_4d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :cond_4d
    goto/32 :goto_3f

    nop

    nop

    :goto_31f
    const/4 v8, 0x0

    nop

    goto/32 :goto_337

    nop

    nop

    nop

    nop

    nop

    :goto_320
    const/high16 v12, 0x40000

    nop

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    :goto_321
    if-eqz v1, :cond_4e

    nop

    nop

    nop

    nop

    goto/32 :goto_2e8

    nop

    nop

    nop

    nop

    nop

    :cond_4e
    goto/32 :goto_2e7

    nop

    nop

    :goto_322
    iput v15, v8, Lsnh;->b:I

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    :goto_323
    invoke-virtual {v8}, Ltkg;->C()Z

    move-result v8

    nop

    nop

    nop

    goto/32 :goto_24d

    nop

    nop

    :goto_324
    if-eqz v11, :cond_4f

    nop

    nop

    nop

    nop

    goto/32 :goto_23b

    nop

    nop

    nop

    nop

    :cond_4f
    goto/32 :goto_23a

    nop

    nop

    :goto_325
    invoke-virtual {v11}, Ltkg;->C()Z

    move-result v11

    nop

    goto/32 :goto_324

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_326
    goto/16 :goto_ec

    nop

    nop

    :goto_327
    goto/32 :goto_215

    nop

    nop

    nop

    :goto_328
    sget-object v6, Lsob;->c:Lsob;

    nop

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    :goto_329
    invoke-static {v2, v3}, Ltir;->e(Ljava/lang/Iterable;Ljava/util/List;)V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_32a
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_32b
    goto/32 :goto_2c4

    nop

    nop

    nop

    :goto_32c
    or-int/2addr v5, v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_315

    nop

    nop

    nop

    nop

    :goto_32d
    iput v15, v8, Lsnh;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23f

    nop

    nop

    nop

    nop

    nop

    :goto_32e
    invoke-virtual {v6}, Ltkb;->i()Ltkg;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32f
    or-int/lit8 v15, v15, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_242

    nop

    nop

    nop

    nop

    :goto_330
    or-int/2addr v12, v9

    nop

    goto/32 :goto_1f7

    nop

    nop

    nop

    nop

    nop

    :goto_331
    iget-object v4, v4, Lhdu;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_28c

    nop

    nop

    :goto_332
    iput v11, v0, Lsnt;->e:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_304

    nop

    nop

    nop

    :goto_333
    invoke-virtual {v6}, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->d()Z

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_2c5

    nop

    nop

    nop

    nop

    :goto_334
    or-int/lit16 v4, v4, 0x4000

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_270

    nop

    nop

    nop

    nop

    nop

    :goto_335
    or-int/2addr v3, v5

    nop

    goto/32 :goto_1c4

    nop

    nop

    nop

    :goto_336
    sget-object v11, Lskc;->e:Lskc;

    nop

    nop

    nop

    nop

    goto/32 :goto_28a

    nop

    nop

    nop

    nop

    :goto_337
    invoke-virtual {v0, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    :goto_338
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_26c

    nop

    nop

    :goto_339
    or-int/2addr v15, v14

    nop

    nop

    goto/32 :goto_224

    nop

    nop

    nop

    nop

    :goto_33a
    invoke-virtual {v6, v10}, Lmjv;->J(Ltkb;)V

    goto/32 :goto_c1

    nop

    nop

    nop

    :goto_33b
    invoke-static {v8}, Lrss;->i(Ljava/lang/Object;)Lrss;

    move-result-object v8

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    :goto_33c
    invoke-virtual {v8}, Ljea;->a()Lsnf;

    move-result-object v8

    nop

    nop

    nop

    goto/32 :goto_33b

    nop

    nop

    :goto_33d
    iput v6, v13, Lspc;->b:I

    nop

    goto/32 :goto_26d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33e
    check-cast v4, Lskd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_354

    nop

    nop

    nop

    nop

    :goto_33f
    invoke-virtual {v8}, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->getUiWireStartNs()J

    move-result-wide v12

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    :goto_340
    iget-wide v7, v0, Lfww;->u:J

    nop

    nop

    nop

    nop

    goto/32 :goto_15b

    nop

    nop

    nop

    nop

    :goto_341
    invoke-virtual {v5}, Ltkg;->C()Z

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    :goto_342
    iget v4, v8, Lsnh;->b:I

    nop

    nop

    nop

    goto/32 :goto_14f

    nop

    nop

    nop

    nop

    nop

    :goto_343
    iget-object v6, v0, Lfww;->k:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    nop

    :goto_344
    if-eqz v8, :cond_50

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :cond_50
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_345
    iget v5, v0, Lsnt;->b:I

    nop

    nop

    nop

    goto/32 :goto_10f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_346
    invoke-virtual {v2}, Ltkb;->o()V

    :goto_347
    goto/32 :goto_1ca

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_348
    if-eqz v12, :cond_51

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    nop

    :cond_51
    goto/32 :goto_fd

    nop

    nop

    nop

    :goto_349
    invoke-virtual {v6}, Ltkb;->o()V

    :goto_34a
    goto/32 :goto_6a

    nop

    nop

    :goto_34b
    invoke-virtual {v2}, Ltkb;->o()V

    :goto_34c
    goto/32 :goto_9e

    nop

    nop

    nop

    :goto_34d
    check-cast v4, Lsnh;

    nop

    nop

    nop

    goto/32 :goto_2f8

    nop

    nop

    nop

    :goto_34e
    move-object v5, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34f
    check-cast v3, Lsjs;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_350
    iput v1, v2, Lsjs;->e:F

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_351
    iput v2, v4, Lskd;->b:I

    nop

    nop

    goto/32 :goto_1b1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_352
    iget-object v0, v0, Lsnf;->d:Ltkv;

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_353
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_354
    iget v2, v2, Lskc;->aG:I

    nop

    nop

    nop

    goto/32 :goto_135

    nop

    nop

    :goto_355
    const/4 v4, 0x3

    nop

    nop

    goto/32 :goto_2a9

    nop

    nop

    nop

    nop

    nop

    :goto_356
    iget v15, v8, Lsnh;->b:I

    nop

    goto/32 :goto_2d9

    nop

    nop

    nop

    :goto_357
    check-cast v8, Lsnh;

    nop

    nop

    goto/32 :goto_276

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_358
    invoke-virtual {v10}, Ltkb;->o()V

    :goto_359
    goto/32 :goto_1ef

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35a
    or-int/2addr v2, v5

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_35b
    invoke-virtual {v4}, Ltkb;->o()V

    :goto_35c
    goto/32 :goto_245

    nop

    nop

    nop

    nop

    nop

    :goto_35d
    invoke-interface {v2, v3}, Lscz;->s(Ljava/lang/String;)V

    :goto_35e
    goto/32 :goto_1bc

    nop

    nop

    nop

    :goto_35f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_263

    nop

    nop

    nop

    nop

    nop

    :goto_360
    invoke-virtual {v8}, Ltkg;->C()Z

    move-result v8

    nop

    nop

    goto/32 :goto_29b

    nop

    nop

    nop

    nop

    nop
.end method

.method public final f()V
    .locals 0

    goto/32 :goto_0

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

    nop
.end method

.method public final g(Llvn;)V
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lfww;->t:Llvn;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
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

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_4
    iget-object p1, p0, Lfww;->o:Llvo;

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

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1, p0}, Llvo;->a(Llvm;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0xe

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-wide v0, p0, Lfww;->u:J

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    :goto_b
    goto/32 :goto_d

    nop

    nop

    :goto_c
    const v0, 0x5

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method
