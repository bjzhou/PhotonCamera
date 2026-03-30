.class public final Lgnv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lgob;


# instance fields
.field public final a:Lgqc;

.field public b:Lsuu;

.field public final c:Lpik;

.field private final d:Loxh;

.field private e:Z

.field private final f:Lgvg;

.field private final g:Lhwy;

.field private final h:Lhwy;


# direct methods
.method public constructor <init>(Lgqf;Lkav;Lgvg;Lhoh;Lhwy;Loyd;Lpik;Lgqg;)V
    .locals 6

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lgnv;->a:Lgqc;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p3, p0, Lgnv;->f:Lgvg;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1e

    nop

    nop

    :goto_3
    move-object v4, p6

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0, v1, v2, v3, v4}, Loxh;-><init>(Ljava/util/concurrent/ScheduledExecutorService;JLjava/util/concurrent/TimeUnit;)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_5
    check-cast v3, Lkog;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

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

    :goto_7
    invoke-virtual {p1}, Lgqf;->a()Lgqc;

    move-result-object p1

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

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_9
    iput-object p3, p0, Lgnv;->g:Lhwy;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct/range {v0 .. v5}, Lhwy;-><init>(Lkxq;Lkav;Lkog;Loyd;Lhoh;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_b
    const-wide/16 v2, 0x8

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_c
    new-instance p3, Lhwy;

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_d
    goto/32 :goto_1b

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

    :goto_f
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

    :goto_10
    iget-object v1, p1, Lgqc;->z:Lkxq;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_12
    const v1, 0x11

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iput-object p5, p0, Lgnv;->h:Lhwy;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_14
    move-object v5, p4

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput-object p7, p0, Lgnv;->c:Lpik;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_16
    move-object v0, p3

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const-string v2, "CdrStdFocus"

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_18
    move-object v2, p2

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

    :goto_19
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1a
    return-void

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_1c
    move-object v3, p1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1d
    invoke-static {v2, v1}, Lolx;->be(Ljava/lang/String;I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1e
    new-instance v0, Loxh;

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

    :goto_1f
    const v0, 0x8

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object p1, p1, Liof;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iput-object v0, p0, Lgnv;->d:Loxh;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_22
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

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

    :goto_23
    iget-object p1, p8, Lgqg;->W:Liof;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lfdn;)Lfwg;
    .locals 5

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x12

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_1
    sget-object v2, Lgst;->e:Lgst;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_5
    iget-boolean v0, p0, Lgnv;->e:Z

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    invoke-direct {v0, p0, p1, v1}, Lmnr;-><init>(Ljava/lang/Object;Lfdn;I)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

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

    nop

    nop

    :goto_8
    return-object v0

    nop

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
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_1
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_b
    iget-object v2, v2, Lgqc;->a:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_c
    iput-boolean v1, p0, Lgnv;->e:Z

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/16 v4, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_f
    iget-object v0, p0, Lgnv;->h:Lhwy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_10
    goto/32 :goto_9

    nop

    nop

    :goto_11
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_12
    new-instance v0, Lmnr;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, v0, Lhwy;->e:Ljava/lang/Object;

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_14
    iput-object v0, v2, Lphr;->i:[Landroid/hardware/camera2/params/MeteringRectangle;

    nop

    :goto_15
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_16
    if-eqz v0, :cond_2

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v0, p0, Lgnv;->f:Lgvg;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    check-cast v0, Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    check-cast v0, Loxv;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    check-cast v2, Lphr;

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v2, p0, Lgnv;->c:Lpik;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_1c
    new-instance v0, Lphq;

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_1d
    iget-object v4, p1, Lfdn;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-interface {v0, v2}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1f
    const/4 v2, 0x0

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_20
    invoke-static {}, Lpik;->v()Lpgc;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v0, v2}, Lgvg;->k(Lgst;)Lows;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v0, v2}, Lows;->d(Lpci;)V

    :goto_23
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v0, p0, Lgnv;->a:Lgqc;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p0}, Lgnv;->c()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v0, v0, Loxv;->d:Ljava/lang/Object;

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

    :goto_27
    invoke-direct {v0, v2}, Lphq;-><init>(Lphr;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_28
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_29
    iget-object v0, v0, Lgqc;->h:Loyn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v2, v0, v3}, Lpik;->p(Lpgd;Lphf;)V

    goto/32 :goto_24

    nop

    nop

    :goto_2c
    invoke-direct {v3, p0, v4}, Lgfs;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v3, v4}, Lhwy;->c(Landroid/graphics/PointF;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v3

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

    :goto_2e
    iput-object v3, v2, Lphr;->h:[Landroid/hardware/camera2/params/MeteringRectangle;

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

    :goto_2f
    iget-object v2, p0, Lgnv;->a:Lgqc;

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v0, v3}, Lhwy;->c(Landroid/graphics/PointF;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_31
    invoke-static {}, Lfsh;->l()Lphf;

    move-result-object v3

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_32
    check-cast v4, Landroid/graphics/PointF;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {p0}, Lgnv;->b()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_34
    check-cast v3, Landroid/graphics/PointF;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_35
    new-instance v3, Lgfs;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_36
    iget-object v3, p0, Lgnv;->g:Lhwy;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_37
    add-int v0, v0, v1

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

    :goto_38
    iget-object v3, p1, Lfdn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_39
    invoke-interface {v2, v3, v4}, Loyn;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v2

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_3a
    sget-object v4, Lstd;->a:Lstd;

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_3b
    iget-object v0, p0, Lgnv;->g:Lhwy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    const v1, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_3d
    iput-object v3, v2, Lphr;->d:Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_6

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    const v1, 0x13

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    :goto_4
    monitor-enter p0

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lgnv;->b:Lsuu;

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_0

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Lsuu;->cancel(Z)Z

    :cond_0
    new-instance v0, Lsuu;

    nop

    nop

    invoke-direct {v0}, Lsuu;-><init>()V

    iput-object v0, p0, Lgnv;->b:Lsuu;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lgnv;->d:Loxh;

    nop

    nop

    nop

    invoke-virtual {v0}, Loxh;->b()V

    monitor-exit p0

    nop

    nop

    nop

    nop

    return-void

    nop

    :catchall_0
    move-exception v0

    nop

    monitor-exit p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    throw v0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    :goto_7
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    :goto_8
    const v0, 0x1f

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

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
.end method

.method public final c()V
    .locals 3

    goto/32 :goto_3

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    :try_start_0
    iget-object v0, p0, Lgnv;->d:Loxh;

    nop

    nop

    nop

    nop

    nop

    new-instance v1, Lgmu;

    nop

    nop

    nop

    nop

    const/16 v2, 0xd

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, p0, v2}, Lgmu;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Loxh;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    const v0, 0x1c

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_c

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    goto :goto_8

    nop

    nop

    :catch_0
    :goto_7
    :try_start_1
    monitor-exit p0

    nop

    return-void

    nop

    nop

    nop

    :goto_8
    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_a
    goto :goto_7

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_b
    throw v0

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_e

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method public final close()V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v1, Lgst;->e:Lgst;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x6

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

    nop

    :goto_2
    iget-object v0, p0, Lgnv;->f:Lgvg;

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

    :goto_3
    goto/32 :goto_a

    nop

    :goto_4
    const v1, 0x16

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_5
    iget-object p0, p0, Lgnv;->d:Loxh;

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

    :goto_6
    return-void

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Lgnv;->b()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0, v1}, Lgvg;->l(Lgst;)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Loxh;->close()V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

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
.end method

.method public final d(ZZ)V
    .locals 4

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v1, p0, Lgnv;->g:Lhwy;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0xa

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez p2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_4
    move-object v1, v0

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1e

    nop

    nop

    :goto_6
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v1}, Lhwy;->b()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p2, p0, Lgnv;->c:Lpik;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_b
    invoke-interface {v2, v1}, Loyn;->a(Ljava/lang/Object;)V

    :goto_c
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v2, v2, Lgqc;->d:Loyn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_e
    move-object v2, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {p0, p1}, Loyn;->a(Ljava/lang/Object;)V

    :goto_10
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_12
    const v1, 0x16

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v2, p0, Lgnv;->a:Lgqc;

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_15
    if-nez p1, :cond_1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_1
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v1, p1, p2, v0}, Lpik;->q(ZZZ)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v2, v2, Lgqc;->a:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_18
    invoke-static {}, Lpik;->v()Lpgc;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-interface {v2, v1}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p2}, Lhwy;->b()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_1b
    iget-object p2, p0, Lgnv;->g:Lhwy;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1c
    if-nez p2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_1d
    return-void

    nop

    :goto_1e
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-interface {v2, v3}, Loyn;->a(Ljava/lang/Object;)V

    :goto_20
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v2, v2, Lgqc;->e:Loyn;

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

    :goto_22
    iget-object v1, p0, Lgnv;->c:Lpik;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_23
    check-cast v1, Lphr;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-nez p1, :cond_3

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p2, v1}, Lpik;->r(Lpgd;)V

    goto/32 :goto_15

    nop

    nop

    :goto_26
    new-instance v1, Lphq;

    nop

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

    nop

    :goto_27
    iget-object v2, p0, Lgnv;->a:Lgqc;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-object p0, p0, Lgnv;->a:Lgqc;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_29
    check-cast v2, Lphr;

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object p2, p0, Lgnv;->g:Lhwy;

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_2b
    iput-object p2, v1, Lphr;->i:[Landroid/hardware/camera2/params/MeteringRectangle;

    nop

    nop

    :goto_2c
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    check-cast v0, Lphr;

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_2f
    if-nez p1, :cond_4

    nop

    goto/32 :goto_32

    nop

    nop

    :cond_4
    goto/32 :goto_0

    nop

    nop

    :goto_30
    if-lez v0, :cond_5

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_5
    goto/32 :goto_5

    nop

    :goto_31
    iput-object v1, v2, Lphr;->h:[Landroid/hardware/camera2/params/MeteringRectangle;

    nop

    nop

    :goto_32
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_33
    iput-object p2, v0, Lphr;->j:[Landroid/hardware/camera2/params/MeteringRectangle;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_34
    iget-object p0, p0, Lgqc;->h:Loyn;

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-direct {v1, v0}, Lphq;-><init>(Lphr;)V

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p2}, Lhwy;->b()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_37
    iget-object v2, p0, Lgnv;->a:Lgqc;

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_38
    const/4 p1, 0x1

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    nop

    goto/32 :goto_17

    nop

    nop

    nop
.end method
