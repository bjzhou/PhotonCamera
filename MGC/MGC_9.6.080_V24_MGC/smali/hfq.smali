.class public final Lhfq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lhfw;
.implements Lhfu;


# instance fields
.field public final a:Lrss;

.field public b:Lj$/util/Optional;

.field public c:Lj$/util/Optional;

.field public d:Lj$/util/Optional;

.field public e:J

.field public final f:Loxv;

.field private final g:Lhhb;

.field private final h:Ljava/util/concurrent/Executor;

.field private final i:Lhfk;

.field private final j:Lhfv;

.field private final k:Ljava/util/List;

.field private l:Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;

.field private m:Z


# direct methods
.method private final declared-synchronized 33b3102b6558811a7b7629a1e8e59bd2m(Lryb;)V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    :try_start_0
    iget-object v0, p0, Lhfq;->k:Ljava/util/List;

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p1

    nop

    new-instance v0, Lgdm;

    nop

    nop

    const/16 v1, 0xc

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0, v1}, Lgdm;-><init>(I)V

    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p1

    nop

    nop

    nop

    sget v0, Lryb;->d:I

    nop

    nop

    nop

    nop

    nop

    sget-object v0, Lrvj;->a:Lj$/util/stream/Collector;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    check-cast p1, Ljava/util/Collection;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lhfq;->k:Ljava/util/List;

    nop

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    const v1, 0xa

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_4
    const v0, 0xc

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

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

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop
.end method

.method private final declared-synchronized 3fd9578e124c68aa49885b22b61b4ec8m()V
    .locals 3

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    const v1, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    const v0, 0x1e

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

    :goto_4
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

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

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_8
    monitor-exit p0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_a
    throw v0

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

    nop

    :goto_c
    const-wide/16 v0, 0x0

    nop

    nop

    nop

    :try_start_1
    iput-wide v0, p0, Lhfq;->e:J

    nop

    nop

    iget-object v0, p0, Lhfq;->k:Ljava/util/List;

    nop

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lhfq;->c:Lj$/util/Optional;

    nop

    nop

    nop

    new-instance v1, Lgfl;

    nop

    nop

    const/16 v2, 0x12

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, v2}, Lgfl;-><init>(I)V

    invoke-virtual {v0, v1}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v0

    nop

    iput-object v0, p0, Lhfq;->c:Lj$/util/Optional;

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop
.end method

.method public constructor <init>(Lrss;Lhhb;Ljava/util/concurrent/Executor;Lhfk;Lhfv;)V
    .locals 1

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p3, p0, Lhfq;->h:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1
    invoke-direct {p1, p2}, Loxv;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p5, p0, Lhfq;->j:Lhfv;

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

    :goto_3
    iput-object v0, p0, Lhfq;->c:Lj$/util/Optional;

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

    :goto_4
    invoke-static {p2}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    iput-object v0, p0, Lhfq;->d:Lj$/util/Optional;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_6
    new-instance v0, Ljava/util/ArrayList;

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

    :goto_7
    iput-object p4, p0, Lhfq;->i:Lhfk;

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

    :goto_8
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p1, p0, Lhfq;->f:Loxv;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    new-instance p1, Loxv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_d
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_e
    iput-object p2, p0, Lhfq;->g:Lhhb;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_f
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    nop

    nop

    :goto_11
    new-instance p2, Landroid/graphics/RectF;

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

    :goto_12
    iput-object v0, p0, Lhfq;->k:Ljava/util/List;

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
    iput-object p1, p0, Lhfq;->a:Lrss;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_14
    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput-object v0, p0, Lhfq;->b:Lj$/util/Optional;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 4

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_0
    new-instance p1, Lows;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-direct {p1}, Lows;-><init>()V

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_3
    if-eqz v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    :cond_1
    goto/32 :goto_71

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_74

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0, v2}, Lows;->d(Lpci;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0, v0}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :goto_8
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_9
    iput-wide v0, p0, Lhfq;->e:J

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {p1, v0}, Lgfl;-><init>(I)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0, p1}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v2, p0, Lhfq;->i:Lhfk;

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    :goto_e
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {p1}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_11
    goto/16 :goto_4a

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-nez v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_14
    if-nez v1, :cond_3

    nop

    nop

    goto/32 :goto_39

    nop

    :cond_3
    goto/32 :goto_38

    nop

    nop

    :goto_15
    sget-object v1, Lrvj;->a:Lj$/util/stream/Collector;

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_16
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-static {p1}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    iput-object p1, p0, Lhfq;->b:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object p1

    nop

    nop

    nop

    nop

    iput-object p1, p0, Lhfq;->c:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p1, v0}, Lows;->d(Lpci;)V

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_18
    sget-object v0, Lmra;->c:Lmra;

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_19
    invoke-direct {v1, v0, v2}, Lgju;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_1a
    goto/16 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v1, v2, v3}, Loxv;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v1

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_1d
    iget-object p0, p0, Lhfq;->d:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_1e
    monitor-enter p0

    nop

    nop

    :try_start_2
    iget-object p1, p0, Lhfq;->c:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lj$/util/Optional;->isPresent()Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    if-eqz p1, :cond_4

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    :cond_4
    monitor-exit p0

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

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

    :goto_20
    new-instance v1, Lgbf;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    throw p1

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_66

    nop

    nop

    nop

    :goto_23
    const/16 v2, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object p1, p0, Lhfq;->a:Lrss;

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_25
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_26
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_27
    const/16 v2, 0x12

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_28
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    new-instance v0, Lows;

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-direct {v1, p0, v2}, Lgmp;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_2b
    const/16 v1, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_2c
    invoke-virtual {v0, p1}, Loxv;->a(Ljava/lang/Object;)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object p1, p1, Lhel;->a:Landroid/graphics/RectF;

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

    :goto_2e
    invoke-direct {v1, p1, v2}, Lgbf;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_5
    goto/32 :goto_4

    nop

    :goto_30
    invoke-virtual {v0, v1}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_31
    invoke-interface {p1}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object p1

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_33
    iget-object p1, p0, Lhfq;->j:Lhfv;

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    new-instance v1, Lgdm;

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_35
    iget-object p0, p0, Lhfq;->d:Lj$/util/Optional;

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_36
    const/16 v3, 0x14

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_37
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_38
    invoke-direct {p0}, Lhfq;->3fd9578e124c68aa49885b22b61b4ec8m()V

    :goto_39
    goto/32 :goto_67

    nop

    nop

    :goto_3a
    iget-object p1, p1, Lheo;->h:Lrss;

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_3b
    new-instance v2, Lfyz;

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    const v0, 0xc

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_3e
    sget v1, Lryb;->d:I

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_3f
    check-cast v0, Lryb;

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_40
    invoke-virtual {p1}, Lj$/util/Optional;->isEmpty()Z

    move-result v1

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_41
    const/4 v2, 0x2

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

    :goto_42
    const/16 v0, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_43
    check-cast p1, Lhel;

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_44
    if-nez p1, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_6
    :goto_45
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_46
    new-instance p1, Lgfl;

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    iget-boolean v0, p1, Lheo;->i:Z

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {v0}, Lj$/util/Optional;->isEmpty()Z

    move-result v0

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {v0, v2}, Lryb;->get(I)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    if-nez v0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :cond_7
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_4d
    const/16 v2, 0xb

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    goto/16 :goto_22

    nop

    nop

    nop

    nop

    :goto_4f
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-interface {p1, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_51
    if-nez v0, :cond_8

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_52
    iget-wide v0, p1, Lheo;->a:J

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_53
    iget-object v0, p0, Lhfq;->d:Lj$/util/Optional;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    check-cast p1, Lmrb;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_55
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    throw p1

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    :try_start_3
    monitor-exit p0

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p1

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    invoke-virtual {p1, v0}, Lmrb;->n(Lmra;)Z

    move-result p1

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_59
    invoke-direct {p0, v0}, Lhfq;->33b3102b6558811a7b7629a1e8e59bd2m(Lryb;)V

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-direct {v0, p1, v1}, Lgbf;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_7

    nop

    nop

    :goto_5b
    invoke-direct {v1, v2}, Lgdm;-><init>(I)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    check-cast p1, Lheo;

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_5d
    new-instance v0, Lgbf;

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-direct {v0, p0, v1}, Lgnw;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    if-nez v1, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_60
    new-instance v0, Lgnw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_61
    iget-object v0, p1, Lheo;->h:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    const v1, 0x16

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_63
    iget-object v3, p0, Lhfq;->h:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_64
    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_65
    invoke-virtual {p1, v1}, Lj$/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    invoke-virtual {v0}, Lryb;->isEmpty()Z

    move-result v1

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_67
    new-instance v1, Lgju;

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_68
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_69
    invoke-direct {v0}, Lows;-><init>()V

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    invoke-direct {v2, p0, v1, v3}, Lfyz;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_6

    nop

    nop

    :goto_6c
    if-eqz v0, :cond_a

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

    :cond_a
    goto/32 :goto_64

    nop

    nop

    :goto_6d
    const/16 v1, 0x11

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    if-nez v0, :cond_b

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_b
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_6f
    invoke-virtual {v0}, Lryb;->isEmpty()Z

    move-result v1

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

    :goto_70
    iget-object v1, p0, Lhfq;->f:Loxv;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_71
    iget-boolean v1, p0, Lhfq;->m:Z

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_72
    iget-object v0, p0, Lhfq;->f:Loxv;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_73
    new-instance v1, Lgmp;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    iget-object v0, p0, Lhfq;->d:Lj$/util/Optional;

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    check-cast p1, Lheo;

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_76
    invoke-virtual {p1}, Lhfv;->b()V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_77
    invoke-virtual {p1}, Lrss;->h()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop
.end method

.method public final b()V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, p0, v1}, Lhbp;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_9

    nop

    nop

    :goto_1
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_a

    nop

    nop

    :goto_2
    const v1, 0x1c

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_d

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_c

    nop

    :goto_5
    const/16 v1, 0xc

    nop

    nop

    goto/32 :goto_0

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

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_7
    const v0, 0x15

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v0, Lhbp;

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

    nop

    :goto_9
    iget-object p0, p0, Lhfq;->h:Ljava/util/concurrent/Executor;

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
    return-void

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_8

    nop

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

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final d(Lmra;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lhfq;->d:Lj$/util/Optional;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/16 v0, 0x11

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

    :goto_2
    invoke-virtual {p0, p1}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/32 :goto_3

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

    :goto_4
    invoke-direct {p1, v0}, Lgfl;-><init>(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance p1, Lgfl;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e()V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-virtual {v0, v1}, Lmrb;->l(Lmra;)V

    :goto_1
    goto/32 :goto_5

    nop

    nop

    :goto_2
    const v0, 0xb

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

    :goto_3
    const v1, 0x4

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_17

    nop

    :goto_5
    iget-object p0, p0, Lhfq;->g:Lhhb;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_7
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_10

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

    :goto_9
    goto/32 :goto_4

    nop

    nop

    :goto_a
    sget-object v1, Lmra;->c:Lmra;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_b
    iput-object v0, p0, Lhhb;->a:Lhhd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Lhfq;->a:Lrss;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_e
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_11
    iput-boolean v0, p0, Lhfq;->m:Z

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

    :goto_12
    invoke-direct {p0}, Lhfq;->3fd9578e124c68aa49885b22b61b4ec8m()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_16

    nop

    :goto_15
    check-cast v0, Lmrb;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_16
    goto/32 :goto_9

    nop

    :goto_17
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final f()V
    .locals 2

    goto/32 :goto_6

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
    goto/32 :goto_14

    nop

    nop

    :goto_2
    iget-object v0, p0, Lhfq;->g:Lhhb;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3
    iput-boolean v0, p0, Lhfq;->m:Z

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_6
    const v0, 0x2

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

    :goto_7
    invoke-virtual {v0, v1, p0}, Lmrb;->j(Lmra;Lmqz;)V

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    sget-object v1, Lmra;->c:Lmra;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_b
    if-nez v1, :cond_0

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

    :cond_0
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput-object p0, v0, Lhhb;->a:Lhhd;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_d
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

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

    nop

    :goto_f
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_12
    check-cast v0, Lmrb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_13
    iget-object v0, p0, Lhfq;->a:Lrss;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop
.end method

.method public final g(Landroid/view/View;)V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_1
    check-cast p1, Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    new-instance v0, Lgle;

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
    const v1, 0x11

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lhfk;->b:Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;

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

    :goto_5
    const/4 v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p1, p0, Lhfq;->l:Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x19

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_9
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_b
    iget-object p1, p0, Lhfk;->b:Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_d
    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {v0, p0, v1}, Lgle;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_12
    iget-object p0, p0, Lhfq;->i:Lhfk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public final h(Landroid/graphics/PointF;)Z
    .locals 13

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v9, v9, Lhel;->a:Landroid/graphics/RectF;

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

    nop

    :goto_1
    goto/16 :goto_31

    nop

    :goto_2
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-ltz v0, :cond_0

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

    :cond_0
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_4
    if-ltz v7, :cond_1

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_55

    nop

    nop

    :goto_5
    invoke-virtual {p1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_6
    iget v9, v8, Landroid/graphics/RectF;->left:F

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

    nop

    :goto_7
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1}, Lj$/util/Optional;->isPresent()Z

    move-result v0

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_a
    mul-float/2addr v9, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v7}, Lrss;->h()Z

    move-result v7

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_c
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v12, v12, Lhel;->a:Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Lhfq;->l:Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_11
    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_12
    if-lt v5, v4, :cond_3

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    :cond_3
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget v12, v12, Landroid/graphics/RectF;->right:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-gtz v7, :cond_4

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

    :cond_4
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Lhfq;->h:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget v7, p1, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_17
    cmp-long v0, v3, v5

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_18
    add-int/lit8 v5, v5, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_19
    cmpl-float v7, v7, v9

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

    :goto_1a
    goto/32 :goto_8

    nop

    nop

    :goto_1b
    if-nez v0, :cond_5

    nop

    goto/32 :goto_45

    nop

    nop

    :cond_5
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget v7, p1, Landroid/graphics/PointF;->x:F

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

    :goto_1d
    iget-wide v5, v0, Lheo;->j:J

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_1e
    if-ltz v7, :cond_6

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v10, v10, Lhel;->a:Landroid/graphics/RectF;

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_21
    iget v7, p1, Landroid/graphics/PointF;->y:F

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_22
    if-gtz v7, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_23
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

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

    :goto_24
    invoke-virtual {v7}, Lrss;->c()Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_25
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_26
    mul-float/2addr v7, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_27
    cmpg-float v7, v7, v9

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_28
    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_29
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_2a
    check-cast v7, Lhel;

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_2b
    iget v9, v8, Landroid/graphics/RectF;->right:F

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_2c
    mul-float/2addr v10, v11

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_2d
    return v1

    nop

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

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget v7, v7, Landroid/graphics/RectF;->left:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_2f
    cmpl-float v7, v7, v9

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/16 :goto_69

    nop

    :goto_31
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v2}, Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;->getHeight()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_33
    move v5, v1

    nop

    nop

    :goto_34
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_35
    iget-wide v3, p0, Lhfq;->e:J

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

    :goto_36
    iget v7, p1, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_37
    int-to-float v9, v0

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {p1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_39
    check-cast v9, Lhel;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3a
    const v1, 0x1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_3b
    if-nez v0, :cond_8

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_15

    nop

    nop

    :goto_3c
    check-cast v0, Lheo;

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_3d
    check-cast v12, Lhel;

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

    :goto_3e
    sub-long/2addr v3, v5

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    if-lez v0, :cond_9

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_7

    nop

    :goto_40
    iget-object v10, v6, Lheo;->h:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-direct {v3, p0, p1, v2}, Lhfx;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    check-cast v6, Lheo;

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_44
    move v1, v2

    nop

    :goto_45
    goto/32 :goto_11

    nop

    nop

    :goto_46
    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    const/4 v1, 0x0

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

    nop

    :goto_48
    invoke-virtual {v9}, Lrss;->c()Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_49
    invoke-virtual {v12}, Lrss;->c()Ljava/lang/Object;

    move-result-object v12

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

    nop

    :goto_4a
    if-eqz v0, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_a
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_4b
    iget-object v2, p0, Lhfq;->l:Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_4c
    iget-object v7, v6, Lheo;->h:Lrss;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-static {}, Lowu;->a()V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    iget-wide v5, v0, Lheo;->a:J

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_50
    cmp-long v0, v3, v5

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_51
    iget-object v7, v6, Lheo;->h:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_52
    iget v9, v8, Landroid/graphics/RectF;->top:F

    nop

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

    :goto_53
    check-cast v0, Lheo;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_54
    const v0, 0x15

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-static {v6}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object p1

    nop

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

    :goto_56
    invoke-virtual {p1}, Lj$/util/Optional;->isPresent()Z

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_57
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_58
    const-wide/16 v5, 0x1f4

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_59
    iget-object v7, v7, Lhel;->a:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_5a
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    goto/32 :goto_1a

    nop

    nop

    :goto_5c
    monitor-enter p0

    nop

    nop

    :try_start_1
    iget-object v3, p0, Lhfq;->k:Ljava/util/List;

    nop

    nop

    invoke-static {v3}, Lryb;->j(Ljava/util/Collection;)Lryb;

    move-result-object v3

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    int-to-float v11, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_5e
    invoke-direct {v8, v7, v10, v12, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_5f
    goto/16 :goto_34

    nop

    nop

    nop

    :goto_60
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_61
    invoke-virtual {v10}, Lrss;->c()Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_62
    new-instance v3, Lhfx;

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

    :goto_63
    if-eqz v7, :cond_b

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_64
    iget v10, v10, Landroid/graphics/RectF;->top:F

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_65
    mul-float/2addr v12, v9

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_66
    check-cast v10, Lhel;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_67
    new-instance v8, Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_68
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    :goto_69
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-virtual {v0}, Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;->getWidth()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_6b
    cmpg-float v7, v7, v8

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6c
    iget-object v9, v6, Lheo;->h:Lrss;

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    iget-object v12, v6, Lheo;->h:Lrss;

    nop

    goto/32 :goto_49

    nop

    nop
.end method

.method public final i(Lhhi;)Lpci;
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lhfq;->d:Lj$/util/Optional;

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
    new-instance p1, Lgnw;

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

    :goto_2
    const/16 v0, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    return-object p1

    nop

    nop

    :goto_4
    invoke-direct {p1, p0, v0}, Lgnw;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p1}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object p1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final j()V
    .locals 2

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Lgfl;

    nop

    nop

    nop

    goto/32 :goto_d

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

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_a
    iget-object p0, p0, Lhfq;->d:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_b
    invoke-direct {v0, v1}, Lgfl;-><init>(I)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0, v0}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/32 :goto_0

    nop

    nop

    :goto_d
    const/16 v1, 0x11

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

    :goto_e
    const v0, 0xe

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method
