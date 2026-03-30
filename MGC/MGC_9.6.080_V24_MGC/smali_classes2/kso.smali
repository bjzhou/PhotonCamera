.class public final Lkso;
.super Lksn;
.source "PG"


# instance fields
.field public final d:Lsuu;

.field private final e:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/Set;Lsuu;Ljava/util/concurrent/Executor;Lpdf;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    const-string p2, "CameraStarter"

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iput-object p1, p0, Lkso;->e:Ljava/util/concurrent/Executor;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p1, p3, p4, p2}, Lpdk;-><init>(Ljava/util/concurrent/Executor;Lpdf;Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    :goto_3
    invoke-direct {p0, p1, p4}, Lksn;-><init>(Ljava/util/Set;Lpdf;)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    iput-object p2, p0, Lkso;->d:Lsuu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_5
    return-void

    nop

    :goto_6
    new-instance p1, Lpdk;

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


# virtual methods
.method public final a()Lsui;
    .locals 12

    goto/32 :goto_32

    nop

    nop

    :goto_0
    iget-object v0, p0, Lksn;->c:Lpdf;

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v1, v2}, Lkoz;-><init>(I)V

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v6, 0x0

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

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    goto/32 :goto_3e

    nop

    nop

    :cond_0
    goto/32 :goto_3d

    nop

    :goto_4
    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v1, v3, v0}, Lsso;->i(Lsui;Lrsk;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object v0

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-object v0

    nop

    :goto_8
    goto/32 :goto_11

    nop

    nop

    :goto_9
    iget-object v3, p0, Lksn;->c:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_a
    invoke-interface {v0}, Lj$/util/stream/Stream;->count()J

    move-result-wide v5

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

    nop

    :goto_b
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_c
    invoke-static {v1}, Lj$/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Lj$/util/stream/Collector;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v1, p0, Lksn;->b:Ljava/util/Set;

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_f
    const v1, 0x8

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_10
    invoke-direct {v3, v5}, Lkoz;-><init>(I)V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Lksn;->c:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_13
    if-lt v4, v3, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_14
    new-instance v1, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_15
    const/4 v5, 0x5

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {v1, p0, v4}, Lghf;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_17
    const/4 v5, 0x4

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

    :goto_18
    invoke-interface {v0, v3}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_19
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {v0, v1}, Lj$/util/List$-EL;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto/32 :goto_14

    nop

    nop

    :goto_1b
    invoke-static {v5}, Lsgj;->N(Ljava/lang/Throwable;)Lsui;

    move-result-object v5

    nop

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

    :goto_1c
    const-string v7, "Failed to run task"

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/16 :goto_45

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    new-instance v1, Lkoz;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {v1}, Lsgj;->K(Ljava/lang/Iterable;)Lsui;

    move-result-object v1

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_21
    const-string v1, ","

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-direct {v1, v2}, Lkoz;-><init>(I)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_23
    invoke-static {v7, v8, v6, v5}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_24
    const-string v4, "CameraStarter.start"

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

    :goto_25
    invoke-direct {v3, v4}, Ljbc;-><init>(I)V

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_26
    invoke-direct {v3, v2, v0, v5, v6}, Ligz;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_27
    const/4 v2, 0x3

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

    :goto_28
    sget-object v0, Lstd;->a:Lstd;

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

    :goto_29
    const/16 v4, 0x13

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

    :goto_2a
    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_2b
    const/4 v2, 0x2

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-interface {v3, v4}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_2e
    new-instance v3, Ljava/lang/StringBuilder;

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

    :goto_2f
    sget-object v6, Lksn;->a:Lsdb;

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v6}, Lscs;->b()Lsdo;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_32
    const v0, 0x2

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

    :goto_33
    new-instance v3, Ligz;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v0, p0, Lksn;->b:Ljava/util/Set;

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_35
    const/16 v8, 0xc04

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_36
    invoke-static {v0, v1, p0}, Lolx;->bn(Lsui;Lpbz;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    new-instance v3, Lkoz;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_38
    invoke-interface {v0, v3}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_39
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-interface {v0}, Lpdf;->g()V

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_3b
    iget-object v0, p0, Lksn;->b:Ljava/util/Set;

    nop

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

    :goto_3c
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-static {v1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_40
    check-cast v6, Lghk;

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-interface {v6}, Lghk;->c()Ljava/lang/String;

    move-result-object v7

    nop

    nop

    invoke-interface {v6}, Lghk;->a()I

    move-result v8

    nop

    nop

    nop

    const-string v9, "!"

    nop

    const-string v10, ""

    nop

    nop

    const/4 v11, -0x1

    nop

    if-ne v8, v11, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto :goto_41

    nop

    nop

    nop

    :cond_2
    move-object v9, v10

    nop

    nop

    nop

    nop

    :goto_41
    new-instance v8, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "task:"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    nop

    nop

    iget-object v8, p0, Lksn;->c:Lpdf;

    nop

    nop

    nop

    nop

    invoke-interface {v8, v7}, Lpdf;->f(Ljava/lang/String;)V

    invoke-interface {v6}, Lghk;->b()Lsui;

    move-result-object v8

    nop

    nop

    iget-object v9, p0, Lksn;->c:Lpdf;

    nop

    nop

    invoke-interface {v9}, Lpdf;->g()V

    invoke-interface {v8}, Lsui;->isDone()Z

    move-result v9

    nop

    nop

    nop

    nop

    nop

    if-nez v9, :cond_3

    nop

    nop

    nop

    nop

    nop

    iget-object v9, p0, Lksn;->c:Lpdf;

    nop

    nop

    nop

    invoke-interface {v9, v7}, Lpdf;->a(Ljava/lang/String;)Lpdh;

    move-result-object v7

    nop

    nop

    nop

    nop

    new-instance v9, Lkli;

    nop

    const/4 v10, 0x7

    nop

    nop

    invoke-direct {v9, v7, v10}, Lkli;-><init>(Ljava/lang/Object;I)V

    sget-object v7, Lstd;->a:Lstd;

    nop

    nop

    nop

    invoke-interface {v8, v9, v7}, Lsui;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_3
    new-instance v7, Ligz;

    nop

    invoke-direct {v7, v6, v2, v5}, Ligz;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    sget-object v5, Lstd;->a:Lstd;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v8, v7, v5}, Lsso;->i(Lsui;Lrsk;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_49

    nop

    nop

    :goto_42
    invoke-interface {v0}, Ljava/util/Set;->size()I

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_43
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    const/4 v4, 0x0

    nop

    :goto_45
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_47
    goto/32 :goto_54

    nop

    nop

    nop

    :goto_48
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_49
    goto :goto_47

    nop

    nop

    :catchall_0
    move-exception v5

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    new-instance v2, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    new-instance v1, Lkoz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_4c
    invoke-interface {v0, v3}, Lpdf;->a(Ljava/lang/String;)Lpdh;

    move-result-object v0

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_4e
    sget-object v7, Lcom/google/android/build/data/ERtJ/cVlffQDuQRSSY;->WLMPMtWCaf:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_4f
    new-instance v3, Ljbc;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_50
    iget-object p0, p0, Lkso;->e:Ljava/util/concurrent/Executor;

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_51
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_e

    nop

    nop

    :goto_52
    invoke-static {v1}, Lj$/util/Comparator$-CC;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

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

    :goto_53
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_54
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_55
    new-instance v1, Lghf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop
.end method
