.class public Lgth;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpak;


# static fields
.field private static final o:Lsdb;


# instance fields
.field public final a:Lpag;

.field public final b:Lpag;

.field public final c:Lpau;

.field public final d:Lpau;

.field public final e:Lrss;

.field public final f:Lryh;

.field public final g:Lryh;

.field public h:Lpah;

.field public final i:Lppp;

.field public final j:Ljava/lang/Object;

.field public k:Lgtg;

.field public final l:Lpbd;

.field public final m:Lpbd;

.field public final n:Lgtu;

.field private final p:Lsuk;

.field private final q:I

.field private final r:Lsui;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "gth"

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

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

    :goto_2
    sput-object v0, Lgth;->o:Lsdb;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop
.end method

.method public constructor <init>(Lgti;)V
    .locals 2

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_0
    iput-object v1, p0, Lgth;->p:Lsuk;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    iget v1, v0, Lpbf;->l:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_2
    new-instance v0, Ljava/lang/Object;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_28

    nop

    nop

    :goto_5
    iget-object v0, v0, Lpbf;->x:Lgtu;

    nop

    nop

    goto/32 :goto_11

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

    goto/32 :goto_8

    nop

    nop

    :goto_7
    iput-object v0, p0, Lgth;->f:Lryh;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p1, Lgti;->n:Lpbd;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p1, Lgti;->a:Lpbf;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_c
    iget-object v1, v0, Lpbf;->a:Lsuk;

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

    :goto_d
    iget-object v0, p1, Lgti;->h:Ljava/util/Map;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_e
    iput-object v0, p0, Lgth;->b:Lpag;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_f
    const/4 v0, 0x0

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput-object v0, p0, Lgth;->l:Lpbd;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iput-object v0, p0, Lgth;->n:Lgtu;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_12
    iput-object v0, p0, Lgth;->m:Lpbd;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    :goto_14
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v0, p1, Lgti;->c:Lpag;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iput-object v0, p0, Lgth;->a:Lpag;

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {p1}, Lryh;->m(Ljava/util/Map;)Lryh;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iput v1, p0, Lgth;->q:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_1c
    iput-object p1, p0, Lgth;->k:Lgtg;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1d
    iput-object v0, p0, Lgth;->h:Lpah;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1e
    iget-object v0, p1, Lgti;->m:Lpbd;

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1f
    iput-object v0, p0, Lgth;->i:Lppp;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {v0}, Lryh;->m(Ljava/util/Map;)Lryh;

    move-result-object v0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_21
    iput-object v1, p0, Lgth;->r:Lsui;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2a

    nop

    nop

    :goto_23
    const v1, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_24
    const v0, 0xd

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

    :goto_25
    iget-object p1, p1, Lgti;->i:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_26
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_31

    nop

    nop

    :goto_27
    goto/32 :goto_14

    nop

    nop

    :goto_28
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_29
    iget-object v0, p1, Lgti;->e:Lpau;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_2a
    iput-object v0, p0, Lgth;->c:Lpau;

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

    :goto_2b
    sget-object p1, Lgtg;->a:Lgtg;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v0, p1, Lgti;->j:Lppp;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v1, v0, Lpbf;->s:Lsui;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_2f
    iput-object v0, p0, Lgth;->e:Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_30
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_27

    nop

    :goto_31
    iput-object v0, p0, Lgth;->j:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_33
    iget-object v0, p1, Lgti;->d:Lpag;

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iput-object v0, p0, Lgth;->d:Lpau;

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_35
    iget-object v0, p1, Lgti;->f:Lpau;

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

    :goto_36
    iget-object v0, p1, Lgti;->g:Lrss;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_37
    iput-object p1, p0, Lgth;->g:Lryh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop
.end method

.method private final e94656b6137dd01f26085f984afe853em(Z)Lsui;
    .locals 13

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter v0

    nop

    nop

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    nop

    nop

    const-wide/16 v3, 0x3e8

    nop

    nop

    nop

    mul-long/2addr v1, v3

    nop

    nop

    nop

    nop

    nop

    iget-object v3, p0, Lgth;->c:Lpau;

    nop

    nop

    nop

    invoke-virtual {v3}, Lpau;->close()V

    iget-object v3, p0, Lgth;->d:Lpau;

    nop

    nop

    nop

    invoke-virtual {v3}, Lpau;->close()V

    iget-object v3, p0, Lgth;->p:Lsuk;

    nop

    nop

    nop

    nop

    new-instance v4, Lgtc;

    nop

    nop

    nop

    nop

    nop

    const/4 v10, 0x1

    nop

    nop

    move-object v5, v4

    nop

    nop

    nop

    move-object v6, p0

    nop

    move v7, p1

    nop

    nop

    nop

    nop

    move-wide v8, v1

    nop

    nop

    invoke-direct/range {v5 .. v10}, Lgtc;-><init>(Ljava/lang/Object;ZJI)V

    invoke-interface {v3, v4}, Lsuk;->b(Ljava/util/concurrent/Callable;)Lsui;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    iget-object v4, p0, Lgth;->p:Lsuk;

    nop

    new-instance v11, Lgtc;

    nop

    const/4 v10, 0x0

    nop

    move-object v5, v11

    nop

    nop

    move-object v6, p0

    nop

    move v7, p1

    nop

    move-wide v8, v1

    nop

    invoke-direct/range {v5 .. v10}, Lgtc;-><init>(Ljava/lang/Object;ZJI)V

    invoke-interface {v4, v11}, Lsuk;->b(Ljava/util/concurrent/Callable;)Lsui;

    move-result-object v4

    nop

    nop

    nop

    iget-object v11, p0, Lgth;->p:Lsuk;

    nop

    nop

    nop

    new-instance v12, Lgtc;

    nop

    nop

    nop

    nop

    nop

    const/4 v10, 0x2

    nop

    nop

    nop

    move-object v5, v12

    nop

    move-object v6, p0

    nop

    move v7, p1

    nop

    nop

    nop

    nop

    move-wide v8, v1

    nop

    nop

    invoke-direct/range {v5 .. v10}, Lgtc;-><init>(Ljava/lang/Object;ZJI)V

    invoke-interface {v11, v12}, Lsuk;->b(Ljava/util/concurrent/Callable;)Lsui;

    move-result-object p1

    nop

    nop

    iget-object v5, p0, Lgth;->p:Lsuk;

    nop

    nop

    new-instance v6, Lgtd;

    nop

    nop

    nop

    nop

    const/4 v7, 0x1

    nop

    nop

    nop

    nop

    invoke-direct {v6, p0, v1, v2, v7}, Lgtd;-><init>(Ljava/lang/Object;JI)V

    invoke-interface {v5, v6}, Lsuk;->b(Ljava/util/concurrent/Callable;)Lsui;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    iget-object v6, p0, Lgth;->p:Lsuk;

    nop

    nop

    nop

    nop

    nop

    new-instance v8, Lgtd;

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

    nop

    invoke-direct {v8, p0, v1, v2, v9}, Lgtd;-><init>(Ljava/lang/Object;JI)V

    invoke-interface {v6, v8}, Lsuk;->b(Ljava/util/concurrent/Callable;)Lsui;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x5

    nop

    nop

    new-array v2, v2, [Lsui;

    nop

    nop

    nop

    nop

    nop

    aput-object v3, v2, v9

    nop

    nop

    aput-object v4, v2, v7

    nop

    nop

    nop

    const/4 v3, 0x2

    nop

    aput-object p1, v2, v3

    nop

    nop

    nop

    const/4 p1, 0x3

    nop

    nop

    nop

    nop

    nop

    aput-object v5, v2, p1

    nop

    nop

    nop

    nop

    const/4 p1, 0x4

    nop

    nop

    aput-object v1, v2, p1

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2}, Lsgj;->ae([Lsui;)Lkjj;

    move-result-object p1

    nop

    nop

    nop

    nop

    new-instance v1, Lgte;

    nop

    nop

    nop

    nop

    invoke-direct {v1, p0, v9}, Lgte;-><init>(Ljava/lang/Object;I)V

    iget-object p0, p0, Lgth;->p:Lsuk;

    nop

    nop

    invoke-virtual {p1, v1, p0}, Lkjj;->b(Lssw;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    invoke-static {p0}, Lsgj;->P(Lsui;)Lsui;

    move-result-object p0

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    return-object p0

    nop

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

    goto/32 :goto_9

    nop

    nop

    :goto_1
    const v0, 0xf

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    :goto_3
    iget-object v0, p0, Lgth;->j:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    const v1, 0xe

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

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_9
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    :goto_1
    iget p0, p0, Lgth;->q:I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final b()Lrss;
    .locals 3

    goto/32 :goto_8

    nop

    nop

    :goto_0
    const v1, 0xa

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

    :goto_1
    add-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    monitor-enter v0

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lgth;->k:Lgtg;

    nop

    nop

    nop

    nop

    sget-object v2, Lgtg;->d:Lgtg;

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

    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto :goto_6

    nop

    nop

    :cond_0
    const/4 v1, 0x0

    nop

    nop

    :goto_6
    invoke-static {v1}, Lrrf;->x(Z)V

    iget-object p0, p0, Lgth;->m:Lpbd;

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lpbd;->d:Landroid/view/Surface;

    nop

    nop

    nop

    nop

    invoke-static {p0}, Lrss;->i(Ljava/lang/Object;)Lrss;

    move-result-object p0

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

    return-object p0

    nop

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

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    :goto_8
    const v0, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_4

    nop

    :goto_a
    iget-object v0, p0, Lgth;->j:Ljava/lang/Object;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    throw p0

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_9

    nop

    nop

    nop
.end method

.method public final c()Lrss;
    .locals 3

    goto/32 :goto_9

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

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_2
    :try_start_0
    iget-object p0, p0, Lgth;->r:Lsui;

    nop

    nop

    nop

    invoke-interface {p0}, Lsui;->get()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    check-cast p0, Lrss;

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v1, v2, v0, p0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    :catch_0
    move-exception p0

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

    nop

    :goto_5
    sget-object v0, Lgth;->o:Lsdb;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_7
    const-string v1, "Failed to retrieve the location. Ignore."

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

    :goto_8
    const v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_9
    const v0, 0x14

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

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

    :goto_b
    const/16 v2, 0x2f4

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    sget-object p0, Lrsa;->a:Lrsa;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_2

    nop

    nop

    :goto_e
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_d

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop
.end method

.method public final close()V
    .locals 3

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_d

    nop

    nop

    :goto_2
    :try_start_0
    invoke-virtual {p0}, Lgth;->i()Lsui;

    move-result-object p0

    nop

    nop

    nop

    invoke-interface {p0}, Lsui;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_3
    sget-object v0, Lgth;->o:Lsdb;

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

    :goto_4
    invoke-static {v1, v2, v0, p0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5
    const-string v1, "Failed to stop the video recorder at close"

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_8
    const/16 v2, 0x2fa

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
    goto/32 :goto_2

    nop

    :goto_a
    const v0, 0x14

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x1d

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method

.method public final d(Ljava/lang/String;)Lrss;
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Lrss;->i(Ljava/lang/Object;)Lrss;

    move-result-object p0

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
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Lryh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lgth;->g:Lryh;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    check-cast p0, Lpaf;

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
.end method

.method public final e()Lrss;
    .locals 2

    goto/32 :goto_b

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

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

    :goto_1
    return-object p0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lpbd;->a()J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_8
    const v1, 0x1

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

    :goto_9
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {p0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_b
    const v0, 0x1a

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_c
    iget-object p0, p0, Lgth;->l:Lpbd;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop
.end method

.method public final f()Lrss;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    invoke-virtual {p0}, Lpbd;->b()Lrss;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lgth;->l:Lpbd;

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
.end method

.method public final g()Lsui;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, v0}, Lgth;->e94656b6137dd01f26085f984afe853em(Z)Lsui;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final h(Lpah;)Lsui;
    .locals 7

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    :goto_2
    goto/32 :goto_b

    nop

    nop

    :goto_3
    goto/32 :goto_2

    nop

    :goto_4
    throw p0

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
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_7
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

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_9
    const v1, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_a
    monitor-enter v0

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lgth;->k:Lgtg;

    nop

    nop

    nop

    nop

    sget-object v2, Lgtg;->a:Lgtg;

    nop

    nop

    nop

    nop

    nop

    if-eq v1, v2, :cond_1

    nop

    nop

    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    const-string p1, "Trying to start with state: "

    nop

    invoke-static {v1, p1}, Lfey;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lsgj;->N(Ljava/lang/Throwable;)Lsui;

    move-result-object p0

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return-object p0

    nop

    nop

    nop

    :cond_1
    iput-object p1, p0, Lgth;->h:Lpah;

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lgth;->b:Lpag;

    nop

    nop

    nop

    nop

    invoke-interface {v1, p1}, Lpag;->d(Lpah;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lgth;->d:Lpau;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, p1}, Lpau;->d(Lpas;)V

    iget-object p1, p0, Lgth;->p:Lsuk;

    nop

    new-instance v1, Lesh;

    nop

    nop

    nop

    nop

    const/4 v2, 0x6

    nop

    nop

    invoke-direct {v1, p0, v2}, Lesh;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p1, v1}, Lsuk;->b(Ljava/util/concurrent/Callable;)Lsui;

    move-result-object p1

    nop

    nop

    nop

    iget-object v1, p0, Lgth;->p:Lsuk;

    nop

    nop

    nop

    new-instance v2, Lesh;

    nop

    const/4 v3, 0x7

    nop

    nop

    nop

    nop

    invoke-direct {v2, p0, v3}, Lesh;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v1, v2}, Lsuk;->b(Ljava/util/concurrent/Callable;)Lsui;

    move-result-object v1

    nop

    nop

    nop

    nop

    iget-object v2, p0, Lgth;->p:Lsuk;

    nop

    nop

    nop

    nop

    nop

    new-instance v3, Lesh;

    nop

    nop

    nop

    nop

    const/16 v4, 0x8

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v3, p0, v4}, Lesh;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v2, v3}, Lsuk;->b(Ljava/util/concurrent/Callable;)Lsui;

    move-result-object v2

    nop

    nop

    nop

    iget-object v3, p0, Lgth;->p:Lsuk;

    nop

    nop

    nop

    nop

    nop

    new-instance v4, Lesh;

    nop

    nop

    nop

    nop

    nop

    const/16 v5, 0x9

    nop

    nop

    nop

    invoke-direct {v4, p0, v5}, Lesh;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v3, v4}, Lsuk;->b(Ljava/util/concurrent/Callable;)Lsui;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    iget-object v4, p0, Lgth;->p:Lsuk;

    nop

    nop

    new-instance v5, Lesh;

    nop

    const/16 v6, 0xa

    nop

    nop

    nop

    nop

    invoke-direct {v5, p0, v6}, Lesh;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v4, v5}, Lsuk;->b(Ljava/util/concurrent/Callable;)Lsui;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    const/4 v5, 0x5

    nop

    nop

    nop

    nop

    new-array v5, v5, [Lsui;

    nop

    nop

    nop

    const/4 v6, 0x0

    nop

    aput-object p1, v5, v6

    nop

    nop

    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    nop

    aput-object v1, v5, p1

    nop

    nop

    nop

    const/4 p1, 0x2

    nop

    nop

    nop

    aput-object v2, v5, p1

    nop

    const/4 v1, 0x3

    nop

    nop

    nop

    aput-object v3, v5, v1

    nop

    nop

    const/4 v1, 0x4

    nop

    nop

    nop

    nop

    aput-object v4, v5, v1

    nop

    nop

    nop

    invoke-static {v5}, Lsgj;->ae([Lsui;)Lkjj;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    new-instance v2, Lgte;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2, p0, p1}, Lgte;-><init>(Ljava/lang/Object;I)V

    iget-object p0, p0, Lgth;->p:Lsuk;

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2, p0}, Lkjj;->b(Lssw;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return-object p0

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    nop

    invoke-static {p0}, Lsgj;->N(Ljava/lang/Throwable;)Lsui;

    move-result-object p0

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

    return-object p0

    nop

    :catchall_0
    move-exception p0

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lgth;->j:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop
.end method

.method public final i()Lsui;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-direct {p0, v0}, Lgth;->e94656b6137dd01f26085f984afe853em(Z)Lsui;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final j(J)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    const-string p1, "notifyCloseImagesBeforePts is not supported."

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    throw p0

    nop

    nop

    nop

    nop

    :goto_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final k(I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string p1, "notifyInputBufferAvailable is not supported."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    throw p0

    nop

    nop

    :goto_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final l(Landroid/media/MediaFormat;)V
    .locals 0

    goto/32 :goto_2

    nop

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
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    const-string p1, "notifyMediaFormatChanged is not supported."

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final m(Ljava/io/FileDescriptor;)V
    .locals 3

    goto/32 :goto_2

    nop

    nop

    :goto_0
    const v1, 0x4

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
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lgth;->k:Lgtg;

    nop

    nop

    nop

    sget-object v2, Lgtg;->b:Lgtg;

    nop

    nop

    nop

    if-eq v1, v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    sget-object p1, Lgth;->o:Lsdb;

    nop

    nop

    invoke-virtual {p1}, Lscs;->c()Lsdo;

    move-result-object p1

    nop

    nop

    nop

    const/16 v1, 0x2fb

    nop

    nop

    invoke-interface {p1, v1}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    nop

    nop

    check-cast p1, Lscz;

    nop

    nop

    nop

    nop

    nop

    const-string v1, "STARTED is expected but we got %s"

    nop

    nop

    iget-object p0, p0, Lgth;->k:Lgtg;

    nop

    nop

    nop

    nop

    invoke-interface {p1, v1, p0}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    monitor-exit v0

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    :cond_0
    iget-object p0, p0, Lgth;->a:Lpag;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0, p1}, Lpag;->i(Ljava/io/FileDescriptor;)V

    monitor-exit v0

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

    nop

    :catchall_0
    move-exception p0

    nop

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

    :goto_2
    const v0, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    :goto_9
    iget-object v0, p0, Lgth;->j:Ljava/lang/Object;

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

    nop

    :goto_a
    throw p0

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop
.end method

.method public final n(ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    const-string p1, "writeEncodedVideoData is not supported."

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    :goto_2
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final o(Lprw;JZ)V
    .locals 3

    goto/32 :goto_6

    nop

    nop

    :goto_0
    throw p0

    nop

    :goto_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lgth;->k:Lgtg;

    nop

    sget-object v2, Lgtg;->b:Lgtg;

    nop

    nop

    nop

    if-eq v1, v2, :cond_0

    nop

    sget-object p2, Lgth;->o:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {p2}, Lscs;->c()Lsdo;

    move-result-object p2

    nop

    nop

    nop

    const/16 p3, 0x2fc

    nop

    nop

    nop

    invoke-interface {p2, p3}, Lscz;->M(I)Lsdo;

    move-result-object p2

    nop

    check-cast p2, Lscz;

    nop

    const-string p3, "STARTED is expected but we got %s"

    nop

    nop

    iget-object p0, p0, Lgth;->k:Lgtg;

    nop

    nop

    invoke-interface {p2, p3, p0}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1}, Lprw;->close()V

    monitor-exit v0

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

    nop

    :cond_0
    iget-object p0, p0, Lgth;->l:Lpbd;

    nop

    nop

    nop

    invoke-virtual {p0, p1, p2, p3, p4}, Lpbd;->d(Lprw;JZ)V

    monitor-exit v0

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

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x8

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

    :goto_4
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

    nop

    nop

    :goto_5
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    :goto_6
    const v0, 0x1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    :goto_8
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

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

    nop

    :goto_a
    iget-object v0, p0, Lgth;->j:Ljava/lang/Object;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    nop
.end method

.method public final p(Ljava/lang/Object;)V
    .locals 3

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lgth;->j:Ljava/lang/Object;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0xd

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    throw p0

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_5

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x18

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_9
    add-int v0, v0, v1

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

    :goto_a
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lgth;->k:Lgtg;

    nop

    nop

    nop

    sget-object v2, Lgtg;->b:Lgtg;

    nop

    nop

    nop

    if-eq v1, v2, :cond_0

    nop

    nop

    nop

    nop

    sget-object v2, Lgtg;->c:Lgtg;

    nop

    nop

    nop

    nop

    nop

    if-eq v1, v2, :cond_0

    nop

    nop

    sget-object p1, Lgth;->o:Lsdb;

    nop

    nop

    invoke-virtual {p1}, Lscs;->c()Lsdo;

    move-result-object p1

    nop

    nop

    nop

    nop

    const/16 v1, 0x2f9

    nop

    nop

    nop

    nop

    invoke-interface {p1, v1}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    nop

    check-cast p1, Lscz;

    nop

    nop

    nop

    const-string v1, "Trying to add metadata but state is %s"

    nop

    iget-object p0, p0, Lgth;->k:Lgtg;

    nop

    nop

    nop

    invoke-interface {p1, v1, p0}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    monitor-exit v0

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    :cond_0
    iget-object v1, p0, Lgth;->b:Lpag;

    nop

    nop

    nop

    invoke-interface {v1, p1}, Lpag;->q(Ljava/lang/Object;)V

    iget-object p0, p0, Lgth;->a:Lpag;

    nop

    nop

    nop

    invoke-interface {p0, p1}, Lpag;->q(Ljava/lang/Object;)V

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

    monitor-exit v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    :goto_b
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop
.end method

.method public final q()V
    .locals 7

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    throw p0

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lgth;->j:Ljava/lang/Object;

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

    :goto_6
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lgth;->k:Lgtg;

    nop

    sget-object v2, Lgtg;->b:Lgtg;

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    if-eq v1, v2, :cond_0

    nop

    nop

    nop

    nop

    invoke-static {v3}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    monitor-exit v0

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    nop

    nop

    nop

    nop

    nop

    const-wide/16 v4, 0x3e8

    nop

    nop

    mul-long/2addr v1, v4

    nop

    nop

    nop

    nop

    nop

    iget-object v4, p0, Lgth;->c:Lpau;

    nop

    nop

    invoke-virtual {v4, v1, v2}, Lpau;->b(J)V

    iget-object v4, p0, Lgth;->d:Lpau;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v1, v2}, Lpau;->b(J)V

    iget-object v4, p0, Lgth;->l:Lpbd;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v1, v2}, Lpbd;->g(J)V

    iget-object v4, p0, Lgth;->m:Lpbd;

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v1, v2}, Lpbd;->g(J)V

    iget-object v4, p0, Lgth;->e:Lrss;

    nop

    nop

    invoke-virtual {v4}, Lrss;->h()Z

    move-result v5

    nop

    nop

    nop

    if-eqz v5, :cond_1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Lrss;->c()Ljava/lang/Object;

    move-result-object v4

    nop

    check-cast v4, Lpap;

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v1, v2}, Lpap;->b(J)V

    :cond_1
    iget-object v4, p0, Lgth;->f:Lryh;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Lryh;->h()Lrxq;

    move-result-object v4

    nop

    nop

    invoke-static {v4}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v4

    nop

    nop

    nop

    new-instance v5, Lgtf;

    nop

    nop

    const/4 v6, 0x0

    nop

    invoke-direct {v5, v1, v2, v6}, Lgtf;-><init>(JI)V

    invoke-interface {v4, v5}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    iget-object v4, p0, Lgth;->g:Lryh;

    nop

    nop

    invoke-virtual {v4}, Lryh;->h()Lrxq;

    move-result-object v4

    nop

    invoke-static {v4}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v4

    nop

    new-instance v5, Lgtf;

    nop

    nop

    const/4 v6, 0x2

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v5, v1, v2, v6}, Lgtf;-><init>(JI)V

    invoke-interface {v4, v5}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    sget-object v1, Lgtg;->c:Lgtg;

    nop

    nop

    nop

    nop

    iput-object v1, p0, Lgth;->k:Lgtg;

    nop

    nop

    nop

    invoke-static {v3}, Lsgj;->O(Ljava/lang/Object;)Lsui;

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x8

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_2

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    :goto_9
    const v1, 0xb

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

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_b
    goto/32 :goto_2

    nop

    nop
.end method

.method public final r()V
    .locals 7

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    :goto_2
    const v0, 0xb

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    monitor-enter v0

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lgth;->k:Lgtg;

    nop

    sget-object v2, Lgtg;->c:Lgtg;

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    if-eq v1, v2, :cond_0

    nop

    nop

    invoke-static {v3}, Lsgj;->O(Ljava/lang/Object;)Lsui;

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

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    nop

    nop

    nop

    const-wide/16 v4, 0x3e8

    nop

    nop

    nop

    mul-long/2addr v1, v4

    nop

    nop

    nop

    nop

    nop

    iget-object v4, p0, Lgth;->l:Lpbd;

    nop

    invoke-virtual {v4, v1, v2}, Lpbd;->h(J)V

    iget-object v4, p0, Lgth;->m:Lpbd;

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v1, v2}, Lpbd;->h(J)V

    iget-object v4, p0, Lgth;->e:Lrss;

    nop

    nop

    nop

    invoke-virtual {v4}, Lrss;->h()Z

    move-result v5

    nop

    nop

    nop

    nop

    if-eqz v5, :cond_1

    nop

    nop

    nop

    invoke-virtual {v4}, Lrss;->c()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    check-cast v4, Lpap;

    nop

    nop

    invoke-virtual {v4, v1, v2}, Lpap;->d(J)V

    :cond_1
    iget-object v4, p0, Lgth;->f:Lryh;

    nop

    nop

    invoke-virtual {v4}, Lryh;->h()Lrxq;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    invoke-static {v4}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v4

    nop

    nop

    nop

    nop

    new-instance v5, Lgtf;

    nop

    nop

    nop

    nop

    const/4 v6, 0x4

    nop

    invoke-direct {v5, v1, v2, v6}, Lgtf;-><init>(JI)V

    invoke-interface {v4, v5}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    iget-object v4, p0, Lgth;->g:Lryh;

    nop

    nop

    nop

    invoke-virtual {v4}, Lryh;->h()Lrxq;

    move-result-object v4

    nop

    nop

    invoke-static {v4}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v4

    nop

    nop

    nop

    nop

    new-instance v5, Lgtf;

    nop

    nop

    nop

    nop

    nop

    const/4 v6, 0x5

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v5, v1, v2, v6}, Lgtf;-><init>(JI)V

    invoke-interface {v4, v5}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    iget-object v4, p0, Lgth;->c:Lpau;

    nop

    invoke-virtual {v4, v1, v2}, Lpau;->c(J)V

    iget-object v4, p0, Lgth;->d:Lpau;

    nop

    nop

    nop

    invoke-virtual {v4, v1, v2}, Lpau;->c(J)V

    sget-object v1, Lgtg;->b:Lgtg;

    nop

    nop

    nop

    nop

    iput-object v1, p0, Lgth;->k:Lgtg;

    nop

    nop

    invoke-static {v3}, Lsgj;->O(Ljava/lang/Object;)Lsui;

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

    monitor-exit v0

    nop

    nop

    nop

    nop

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

    :goto_4
    iget-object v0, p0, Lgth;->j:Ljava/lang/Object;

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

    :goto_5
    throw p0

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_9
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

    :goto_a
    const v1, 0x14

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_2
    goto/32 :goto_7

    nop
.end method

.method public final s(F)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    const-string p1, "changeBitrate not supported."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop
.end method
