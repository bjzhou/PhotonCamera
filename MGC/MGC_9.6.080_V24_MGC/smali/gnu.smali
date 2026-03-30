.class public final Lgnu;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lgob;


# instance fields
.field public final a:Lgqc;

.field public final b:Lfvp;

.field public final c:Ljava/lang/Runnable;

.field public d:Lsuu;

.field public final e:Ljava/lang/Object;

.field public final f:Lpik;

.field private final g:Loxh;

.field private final h:Lhwy;

.field private final i:Lhwy;


# direct methods
.method private final 33f5b80483094659737b73d90f80a8a4m()V
    .locals 3

    goto/32 :goto_2

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

    :goto_1
    goto/32 :goto_7

    nop

    nop

    :goto_2
    const v0, 0x1a

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    :goto_4
    :try_start_0
    iget-object v0, p0, Lgnu;->g:Loxh;

    nop

    nop

    nop

    new-instance v1, Lgmu;

    nop

    nop

    nop

    const/16 v2, 0xb

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, p0, v2}, Lgmu;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Loxh;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

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

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_4

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

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_9
    const v1, 0xd

    nop

    goto/32 :goto_6

    nop

    nop
.end method

.method public constructor <init>(Lgqf;Lkav;Lfvp;Lhwy;Lhoh;Loyd;Lpik;Lgqg;)V
    .locals 6

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-wide/16 v2, 0x4

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_1
    move-object v2, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    iput-object p3, p0, Lgnu;->h:Lhwy;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lgnu;->a:Lgqc;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    iput-object p7, p0, Lgnu;->f:Lpik;

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_5
    iget-object p1, p8, Lgqg;->W:Liof;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p1, p1, Liof;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0, p0, v1, v2}, Lgmu;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_9
    move-object v4, p6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_a
    iput-object v0, p0, Lgnu;->g:Loxh;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_b
    new-instance p3, Lhwy;

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

    :goto_c
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    :goto_f
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_11
    check-cast v3, Lkog;

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

    nop

    :goto_12
    invoke-virtual {p1}, Lgqf;->a()Lgqc;

    move-result-object p1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0xf

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_14
    iput-object p3, p0, Lgnu;->b:Lfvp;

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

    :goto_15
    new-instance v0, Loxh;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_29

    nop

    nop

    :goto_17
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_18
    move-object v0, p3

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_19
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1a
    iget-object v1, p1, Lgqc;->z:Lkxq;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1b
    move-object v5, p5

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1c
    new-instance v0, Ljava/lang/Object;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-direct {v0, v1, v2, v3, v4}, Loxh;-><init>(Ljava/util/concurrent/ScheduledExecutorService;JLjava/util/concurrent/TimeUnit;)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1e
    invoke-static {v2, v1}, Lolx;->be(Ljava/lang/String;I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1f
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_20
    add-int v0, v0, v1

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

    :goto_21
    const-string v2, "CdrSCFocus"

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_22
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_23
    const/16 v1, 0xc

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_24
    new-instance v0, Lgmu;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const/4 v2, 0x0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_26
    invoke-direct/range {v0 .. v5}, Lhwy;-><init>(Lkxq;Lkav;Lkog;Loyd;Lhoh;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_27
    iput-object p4, p0, Lgnu;->i:Lhwy;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iput-object v0, p0, Lgnu;->e:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iput-object v0, p0, Lgnu;->c:Ljava/lang/Runnable;

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

    :goto_2b
    move-object v3, p1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lfdn;)Lfwg;
    .locals 6

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lgnu;->g:Loxh;

    nop

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

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    goto/32 :goto_c

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_4
    monitor-enter v0

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lgnu;->d:Lsuu;

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_1

    nop

    nop

    invoke-virtual {v1, v2}, Lsuu;->cancel(Z)Z

    :cond_1
    iget-object v1, p0, Lgnu;->b:Lfvp;

    nop

    nop

    nop

    iget-object v3, p0, Lgnu;->c:Ljava/lang/Runnable;

    nop

    nop

    invoke-virtual {v1, v3}, Lfvp;->c(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lgnu;->f:Lpik;

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    invoke-virtual {v1, v2, v3, v3}, Lpik;->q(ZZZ)V

    invoke-static {}, Lpik;->v()Lpgc;

    move-result-object v1

    nop

    iget-object v4, p0, Lgnu;->i:Lhwy;

    nop

    iget-object v4, v4, Lhwy;->e:Ljava/lang/Object;

    nop

    check-cast v4, Loxv;

    nop

    nop

    nop

    nop

    iget-object v4, v4, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v4, Ljava/lang/Boolean;

    nop

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    move-object v5, v1

    nop

    check-cast v5, Lphr;

    nop

    nop

    nop

    nop

    iput-object v2, v5, Lphr;->d:Ljava/lang/Integer;

    nop

    nop

    nop

    iget-object v2, p0, Lgnu;->h:Lhwy;

    nop

    nop

    nop

    iget-object v5, p1, Lfdn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast v5, Landroid/graphics/PointF;

    nop

    invoke-virtual {v2, v5}, Lhwy;->c(Landroid/graphics/PointF;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    move-object v5, v1

    nop

    nop

    nop

    nop

    nop

    check-cast v5, Lphr;

    nop

    nop

    nop

    nop

    nop

    iput-object v2, v5, Lphr;->h:[Landroid/hardware/camera2/params/MeteringRectangle;

    nop

    if-nez v4, :cond_2

    nop

    nop

    nop

    iget-object v2, p0, Lgnu;->h:Lhwy;

    nop

    nop

    nop

    nop

    iget-object v4, p1, Lfdn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v4, Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v4}, Lhwy;->c(Landroid/graphics/PointF;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    move-object v4, v1

    nop

    nop

    nop

    check-cast v4, Lphr;

    nop

    nop

    iput-object v2, v4, Lphr;->i:[Landroid/hardware/camera2/params/MeteringRectangle;

    nop

    :cond_2
    new-instance v2, Lphq;

    nop

    nop

    nop

    nop

    check-cast v1, Lphr;

    nop

    invoke-direct {v2, v1}, Lphq;-><init>(Lphr;)V

    iget-object v1, p0, Lgnu;->f:Lpik;

    nop

    nop

    invoke-static {}, Lfsh;->l()Lphf;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2, v4}, Lpik;->p(Lpgd;Lphf;)V

    iget-object v1, p0, Lgnu;->a:Lgqc;

    nop

    nop

    iget-object v1, v1, Lgqc;->h:Loyn;

    nop

    nop

    nop

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    nop

    nop

    invoke-interface {v1, v2}, Loyn;->a(Ljava/lang/Object;)V

    new-instance v1, Lsuu;

    nop

    invoke-direct {v1}, Lsuu;-><init>()V

    iput-object v1, p0, Lgnu;->d:Lsuu;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0}, Lgnu;->33f5b80483094659737b73d90f80a8a4m()V

    new-instance v2, Lgnt;

    nop

    nop

    nop

    invoke-direct {v2, p0, v1, p1}, Lgnt;-><init>(Lgnu;Lsuu;Lfdn;)V

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return-object v2

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

    :goto_5
    iget-object v0, p0, Lgnu;->e:Ljava/lang/Object;

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

    :goto_6
    invoke-virtual {v0}, Loxh;->b()V

    goto/32 :goto_5

    nop

    nop

    :goto_7
    const v1, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

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

    :goto_a
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_a

    nop

    :goto_c
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0xa

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(ZZ)V
    .locals 3

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Lhwy;->b()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    move-object p2, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_f

    nop

    nop

    :goto_4
    iget-object v1, v1, Lgqc;->e:Loyn;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    invoke-interface {v1, v2}, Loyn;->a(Ljava/lang/Object;)V

    :goto_6
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v1, p0, Lgnu;->b:Lfvp;

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

    nop

    :goto_8
    iget-object p1, p0, Lgnu;->h:Lhwy;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_9
    if-nez p2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_0
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0, p1}, Lpik;->r(Lpgd;)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_c
    if-nez p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {}, Lpik;->v()Lpgc;

    move-result-object v0

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

    :goto_e
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v1, p0, Lgnu;->i:Lhwy;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iput-object p1, v1, Lphr;->h:[Landroid/hardware/camera2/params/MeteringRectangle;

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_13
    const v1, 0x1c

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_14
    invoke-virtual {v1, p1, p2, v0}, Lpik;->q(ZZZ)V

    goto/32 :goto_d

    nop

    nop

    :goto_15
    goto/32 :goto_3

    nop

    :goto_16
    new-instance p1, Lphq;

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

    nop

    nop

    :goto_17
    check-cast v1, Lphr;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_18
    iget-object v1, p0, Lgnu;->f:Lpik;

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

    :goto_19
    iget-object v1, p0, Lgnu;->a:Lgqc;

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

    nop

    :goto_1a
    iput-object p1, p2, Lphr;->i:[Landroid/hardware/camera2/params/MeteringRectangle;

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p1}, Lhwy;->b()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1d
    check-cast v0, Lphr;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_1e
    if-nez p2, :cond_2

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iput-object p1, v0, Lphr;->j:[Landroid/hardware/camera2/params/MeteringRectangle;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_20
    const v0, 0x16

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

    :goto_21
    iget-object p1, p0, Lgnu;->h:Lhwy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_22
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_23
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_24
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v1, v1, Lgqc;->h:Loyn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_26
    invoke-virtual {p1}, Lhwy;->b()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_27
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v1}, Lhwy;->r()V

    :goto_2a
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object p0, p0, Lgnu;->f:Lpik;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-interface {v1, v2}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_19

    nop

    nop

    :goto_2d
    iget-object v1, p0, Lgnu;->a:Lgqc;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    move-object v1, v0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2f
    iget-object v2, p0, Lgnu;->c:Ljava/lang/Runnable;

    nop

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

    :goto_30
    check-cast p2, Lphr;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_31
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_3
    goto/32 :goto_2

    nop

    :goto_32
    if-nez p1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v1, v2}, Lfvp;->c(Ljava/lang/Runnable;)V

    goto/32 :goto_2d

    nop

    nop

    :goto_34
    invoke-direct {p1, v0}, Lphq;-><init>(Lphr;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget-object p1, p0, Lgnu;->h:Lhwy;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop
.end method

.method public final close()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object v0, p0, Lgnu;->e:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    :goto_2
    monitor-enter v0

    nop

    nop

    :try_start_0
    iget-object p0, p0, Lgnu;->g:Loxh;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Loxh;->close()V

    monitor-exit v0

    nop

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

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method
