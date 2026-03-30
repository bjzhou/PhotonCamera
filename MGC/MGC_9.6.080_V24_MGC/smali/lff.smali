.class public Llff;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpgh;


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field public final c:Ljava/util/List;

.field public d:Ljava/lang/String;

.field public e:Lpgh;

.field public f:Z

.field public final g:Lpgg;

.field public h:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

.field private final i:Ljava/util/concurrent/ScheduledExecutorService;

.field private final j:Lpik;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

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
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    const-string v0, "lff"

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sput-object v0, Llff;->a:Lsdb;

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

.method public constructor <init>(Lpik;Loyd;Lows;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/Map;ILjava/lang/String;)V
    .locals 9

    goto/32 :goto_33

    nop

    nop

    :goto_0
    invoke-interface {v1, v2, v0}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_17

    nop

    nop

    :goto_1
    invoke-interface {v1, v7}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_3
    invoke-interface {p6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_4
    invoke-interface {v1, v7}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x9

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_6
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object v5, v0, Llff;->i:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_8
    move-object v6, p6

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_36

    nop

    nop

    :goto_b
    invoke-virtual {p1, v7, v1}, Lpik;->c(Lpgo;I)Lpgh;

    move-result-object v1

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

    :goto_c
    invoke-virtual {v1}, Lscs;->c()Lsdo;

    move-result-object v1

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

    nop

    :goto_d
    invoke-virtual {v0}, Ljava/util/concurrent/RejectedExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v0

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

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_f
    invoke-direct {v2, v3, v1}, Llfb;-><init>(Lpgo;I)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const-string v3, ""

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_11
    invoke-direct {v7, v8}, Lkoz;-><init>(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_12
    move-object/from16 v2, p8

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-nez v2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    move/from16 v1, p7

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_16
    iput-object v3, v0, Llff;->g:Lpgg;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    return-void

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_19
    return-void

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_1a
    iput-object v1, v0, Llff;->e:Lpgh;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const/16 v2, 0xdfe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_1c
    new-instance v3, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {v5}, La;->au(Z)V

    goto/32 :goto_2b

    nop

    nop

    :goto_1e
    sget-object v7, Lrvj;->a:Lj$/util/stream/Collector;

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

    :goto_1f
    xor-int/2addr v5, v6

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

    :goto_20
    const/16 v8, 0xe

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_21
    rem-int v0, v0, v1

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

    :goto_22
    iput-object v3, v0, Llff;->d:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_24
    invoke-direct {v3, v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_25
    iput-object v2, v0, Llff;->e:Lpgh;

    nop

    :goto_26
    :try_start_0
    invoke-virtual {p3}, Lows;->b()Z

    new-instance v8, Ljqe;

    nop

    nop

    nop

    nop

    nop

    const/4 v7, 0x2

    nop

    nop

    move-object v1, v8

    nop

    nop

    nop

    move-object v2, p0

    nop

    nop

    move-object v3, p6

    nop

    move-object v4, p1

    nop

    nop

    nop

    nop

    nop

    move-object v5, p5

    nop

    nop

    nop

    nop

    nop

    move-object v6, p4

    nop

    nop

    nop

    invoke-direct/range {v1 .. v7}, Ljqe;-><init>(Llff;Ljava/util/Map;Lpik;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;I)V

    move-object v0, p2

    nop

    nop

    nop

    move-object v1, p4

    nop

    nop

    nop

    nop

    invoke-interface {p2, v8, p4}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v0

    nop

    nop

    nop

    move-object v1, p3

    nop

    nop

    nop

    nop

    invoke-virtual {p3, v0}, Lows;->d(Lpci;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    sget-object v1, Llff;->a:Lsdb;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_28
    check-cast v3, Lpgo;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_29
    const-string v2, "Error attaching active camera monitor: %s"

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2a
    iput-object v3, v0, Llff;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iput-object v4, v0, Llff;->j:Lpik;

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

    :goto_2c
    invoke-interface {v7}, Lpgo;->d()Ljava/util/Set;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    check-cast v1, Lscz;

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

    :goto_2e
    new-instance v2, Llfb;

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    new-instance v7, Lkoz;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_30
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_31
    iput-object v2, v0, Llff;->d:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_32
    const/4 v5, 0x1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const v0, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_34
    invoke-static {v1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v1

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

    :goto_35
    invoke-interface {p6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_36
    move-object v0, p0

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

    nop

    nop

    :goto_37
    move-object v6, p6

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_38
    invoke-direct {v3, p0, v6}, Lhxm;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3a
    move-object v5, p5

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    new-instance v3, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_3c
    invoke-interface {v1, v2}, Lscz;->M(I)Lsdo;

    move-result-object v1

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_3d
    sget v7, Lryb;->d:I

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_3e
    goto/16 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_40
    invoke-interface {v1, v3}, Lpgh;->l(Lpgg;)V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    move-object v4, p1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-interface {p6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_43
    check-cast v7, Lpgo;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    new-instance v3, Lhxm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_45
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_46
    iput-object v3, v0, Llff;->c:Ljava/util/List;

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_47
    iget-object v1, v0, Llff;->e:Lpgh;

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_48
    const/4 v6, 0x4

    nop

    goto/32 :goto_38

    nop

    nop
.end method

.method private final e94656b6137dd01f26085f984afe853em(Lpik;Lpgh;Ljava/util/concurrent/ScheduledExecutorService;Z)V
    .locals 7

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Lscs;->c()Lsdo;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0xe

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    const v1, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_8
    invoke-static {p2, p3, p1, p0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    :goto_9
    goto/32 :goto_5

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

    nop

    :goto_b
    goto/32 :goto_11

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {p2}, Lpgh;->close()V

    :try_start_0
    new-instance v6, Lhwe;

    nop

    const/4 v5, 0x2

    nop

    nop

    nop

    nop

    nop

    move-object v0, v6

    nop

    nop

    nop

    move-object v1, p0

    nop

    nop

    nop

    nop

    nop

    move v2, p4

    nop

    nop

    nop

    move-object v3, p2

    nop

    move-object v4, p1

    nop

    nop

    nop

    nop

    invoke-direct/range {v0 .. v5}, Lhwe;-><init>(Ljava/lang/Object;ZLjava/lang/Object;Ljava/lang/Object;I)V

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    const-wide/16 p1, 0xd2

    nop

    nop

    invoke-interface {p3, v6, p1, p2, p0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/16 p3, 0xe02

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_f
    const-string p2, "Error scheduling stream drain."

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_10
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_11
    if-nez p2, :cond_1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_12
    sget-object p1, Llff;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final a()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Llff;->e:Lpgh;

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

    :goto_1
    invoke-interface {p0}, Lpgh;->a()I

    move-result p0

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

    :goto_2
    return p0

    nop

    nop
.end method

.method public final b()I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    iget-object p0, p0, Llff;->e:Lpgh;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0}, Lpgh;->b()I

    move-result p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c()Lpge;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Llff;->e:Lpgh;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-object p0

    nop

    :goto_2
    invoke-interface {p0}, Lpgh;->c()Lpge;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final close()V
    .locals 5

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x2

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

    :goto_1
    goto/32 :goto_b

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    :try_start_0
    invoke-interface {v0}, Lpci;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_4
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    :goto_5
    throw v0

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, v0}, Llff;->r(Ljava/util/concurrent/locks/Lock;)Lpci;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_14

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
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    throw p0

    nop

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_5

    nop

    nop

    :goto_f
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_10
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto :goto_10

    nop

    nop

    :catchall_2
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_12
    invoke-interface {v0}, Lpci;->close()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Llff;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-boolean v0, p0, Llff;->f:Z

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    :try_start_2
    iput-boolean v1, p0, Llff;->f:Z

    nop

    nop

    nop

    nop

    nop

    iget-object v2, p0, Llff;->e:Lpgh;

    nop

    nop

    nop

    nop

    nop

    iget-object v3, p0, Llff;->g:Lpgg;

    nop

    nop

    nop

    invoke-interface {v2, v3}, Lpgh;->m(Lpgg;)V

    iget-object v2, p0, Llff;->j:Lpik;

    nop

    nop

    nop

    nop

    iget-object v3, p0, Llff;->e:Lpgh;

    nop

    nop

    iget-object v4, p0, Llff;->i:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0, v2, v3, v4, v1}, Llff;->e94656b6137dd01f26085f984afe853em(Lpik;Lpgh;Ljava/util/concurrent/ScheduledExecutorService;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_12

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    monitor-enter p0

    nop

    nop

    :try_start_3
    iget-object v0, p0, Llff;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit p0

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_18
    const v0, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final d(Lrsv;)Lpge;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0, p1}, Lpgh;->d(Lrsv;)Lpge;

    move-result-object p0

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

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Llff;->e:Lpgh;

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
.end method

.method public final e()Lpge;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Lpgh;->e()Lpge;

    move-result-object p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iget-object p0, p0, Llff;->e:Lpgh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop
.end method

.method public final f(Lrsv;)Lpge;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Llff;->e:Lpgh;

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
    invoke-interface {p0, p1}, Lpgh;->f(Lrsv;)Lpge;

    move-result-object p0

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
.end method

.method public final g()Lpge;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Lpgh;->g()Lpge;

    move-result-object p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Llff;->e:Lpgh;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop
.end method

.method public final h()Lpge;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Lpgh;->h()Lpge;

    move-result-object p0

    nop

    goto/32 :goto_1

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
    iget-object p0, p0, Llff;->e:Lpgh;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final i()Lpgo;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Llff;->e:Lpgh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    :goto_2
    invoke-interface {p0}, Lpgh;->i()Lpgo;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final j()Ljava/util/List;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Llff;->e:Lpgh;

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

    :goto_1
    invoke-interface {p0}, Lpgh;->j()Ljava/util/List;

    move-result-object p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final k()Ljava/util/List;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0}, Lpgh;->k()Ljava/util/List;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Llff;->e:Lpgh;

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final declared-synchronized l(Lpgg;)V
    .locals 1

    goto/32 :goto_3

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

    :catchall_0
    move-exception p1

    nop

    :try_start_0
    monitor-exit p0

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

    nop

    nop

    :goto_1
    throw p1

    nop

    nop

    nop

    nop

    :goto_2
    monitor-exit p0

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

    :goto_3
    monitor-enter p0

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Llff;->c:Ljava/util/List;

    nop

    nop

    nop

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized m(Lpgg;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    throw p1

    nop

    :goto_2
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Llff;->c:Ljava/util/List;

    nop

    nop

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final n(I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Llff;->e:Lpgh;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0, p1}, Lpgh;->n(I)V

    goto/32 :goto_2

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
.end method

.method public final o(Lpgi;)Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Llff;->e:Lpgh;

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

    :goto_1
    return p0

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0, p1}, Lpgh;->o(Lpgi;)Z

    move-result p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final p()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final q(Landroidx/wear/ambient/AmbientModeSupport$AmbientController;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Llff;->h:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

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

    :goto_1
    invoke-interface {p0, p1}, Lpgh;->q(Landroidx/wear/ambient/AmbientModeSupport$AmbientController;)V

    goto/32 :goto_2

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

    :goto_3
    iget-object p0, p0, Llff;->e:Lpgh;

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
.end method

.method public final r(Ljava/util/concurrent/locks/Lock;)Lpci;
    .locals 7

    goto/32 :goto_14

    nop

    nop

    :goto_0
    goto/32 :goto_a

    nop

    nop

    :goto_1
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2
    const/4 v4, 0x6

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

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

    :goto_5
    invoke-direct/range {v0 .. v5}, Lhkf;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I[C)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_7
    const v1, 0xd

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v5, 0x0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-object v6

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    move-object v3, p1

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

    :goto_c
    goto/32 :goto_1

    nop

    nop

    :goto_d
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_e
    move-object v1, p0

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

    :goto_f
    new-instance v6, Lhkf;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_10
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_13
    move-object v0, v6

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0x9

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
.end method

.method public final synthetic s(Ljava/util/Map;Lpik;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;Ljava/lang/String;)V
    .locals 8

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Llff;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

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

    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_2
    iget-object v0, p0, Llff;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

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

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :cond_0
    :goto_4
    goto/32 :goto_19

    nop

    nop

    :goto_5
    iget-object p0, p0, Llff;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    nop

    :goto_6
    goto/32 :goto_1a

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_0
    iget-boolean v0, p0, Llff;->f:Z

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_0

    nop

    invoke-interface {p1, p5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    nop

    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    iget-object v0, p0, Llff;->d:Ljava/lang/String;

    nop

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    goto :goto_4

    nop

    nop

    nop

    :cond_1
    iget-object v0, p0, Llff;->e:Lpgh;

    nop

    invoke-interface {v0}, Lpgh;->a()I

    move-result v6

    nop

    nop

    iget-object v0, p0, Llff;->e:Lpgh;

    nop

    nop

    nop

    nop

    iget-object v1, p0, Llff;->g:Lpgg;

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lpgh;->m(Lpgg;)V

    iget-object v0, p0, Llff;->e:Lpgh;

    nop

    nop

    nop

    invoke-interface {v0}, Lpgh;->i()Lpgo;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Lpgo;->d()Ljava/util/Set;

    move-result-object v1

    nop

    nop

    invoke-static {v1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v1

    nop

    new-instance v2, Lkoz;

    nop

    nop

    const/16 v3, 0xe

    nop

    nop

    nop

    invoke-direct {v2, v3}, Lkoz;-><init>(I)V

    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    sget v2, Lryb;->d:I

    nop

    nop

    sget-object v2, Lrvj;->a:Lj$/util/stream/Collector;

    nop

    nop

    nop

    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0, p2, v0, p3, v1}, Llff;->e94656b6137dd01f26085f984afe853em(Lpik;Lpgh;Ljava/util/concurrent/ScheduledExecutorService;Z)V

    new-instance p3, Llfe;

    nop

    nop

    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    nop

    move-object v1, p3

    nop

    nop

    nop

    nop

    move-object v2, p0

    nop

    nop

    nop

    nop

    move-object v3, p5

    nop

    move-object v4, p1

    nop

    nop

    nop

    nop

    move-object v5, p2

    nop

    nop

    invoke-direct/range {v1 .. v7}, Llfe;-><init>(Llff;Ljava/lang/String;Ljava/util/Map;Lpik;II)V

    invoke-interface {p3}, Ljava/lang/Runnable;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {p4, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p5, p0, Llff;->d:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_14

    nop

    nop

    :goto_a
    throw p1

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
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_2
    goto/32 :goto_13

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_e
    goto/16 :goto_6

    nop

    nop

    :catchall_0
    move-exception p1

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

    :goto_f
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto/32 :goto_a

    nop

    nop

    :goto_12
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_15
    return-void

    nop

    nop

    :catch_0
    move-exception p1

    nop

    :try_start_2
    sget-object p2, Llff;->a:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {p2}, Lscs;->c()Lsdo;

    move-result-object p2

    nop

    nop

    nop

    nop

    invoke-interface {p2, p1}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object p1

    nop

    nop

    check-cast p1, Lscz;

    nop

    nop

    nop

    const/16 p2, 0xe0b

    nop

    nop

    nop

    invoke-interface {p1, p2}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    nop

    nop

    check-cast p1, Lscz;

    nop

    const-string p2, "Error attaching FrameBuffer for camera %s"

    nop

    invoke-interface {p1, p2, p5}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_5

    nop

    nop

    :goto_16
    const v1, 0x18

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

    :goto_17
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object p0, p0, Llff;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

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

    nop

    :goto_1a
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method
