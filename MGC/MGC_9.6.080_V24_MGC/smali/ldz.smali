.class public final Lldz;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;

.field public final g:Ljava/lang/Object;

.field public final h:Ljava/lang/Object;


# direct methods
.method private final declared-synchronized 3fd9578e124c68aa49885b22b61b4ec8m(Ljava/util/List;)Lrss;
    .locals 5

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p1

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

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_d

    nop

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int/lit8 v2, v2, 0x1

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

    nop

    :goto_5
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Lldz;->e:Ljava/lang/Object;

    nop

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    nop

    nop

    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lldz;->e:Ljava/lang/Object;

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Ljava/lang/Long;

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    nop

    nop

    nop

    if-ge v2, v3, :cond_3

    nop

    nop

    nop

    nop

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    check-cast v3, Lpjo;

    nop

    invoke-virtual {v3}, Lpjo;->b()Lpgi;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_2

    nop

    nop

    nop

    nop

    nop

    iget-wide v3, v3, Lpgi;->b:J

    nop

    cmp-long v3, v3, v0

    nop

    if-eqz v3, :cond_0

    nop

    goto :goto_a

    nop

    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    invoke-static {p1}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p1

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    :goto_8
    rem-int v0, v0, v1

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
    return-object p1

    nop

    nop

    nop

    :cond_2
    :goto_a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x14

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_c
    throw p1

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
    monitor-exit p0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_10
    monitor-exit p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_11
    goto/16 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_3
    :try_start_2
    sget-object p1, Lrsa;->a:Lrsa;

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method

.method private final declared-synchronized 51550bab6b6440a4fd45f825c221b363m(Ljava/util/List;)I
    .locals 14

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_0
    sub-int/2addr v0, v1

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
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_2
    monitor-exit p0

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_3
    const/4 v1, 0x0

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
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    monitor-exit p0

    nop

    nop

    goto/32 :goto_13

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

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_18

    nop

    :goto_8
    throw p1

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/16 :goto_15

    nop

    nop

    nop

    :cond_1
    :try_start_0
    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    nop

    new-instance v2, Ljsv;

    nop

    nop

    nop

    nop

    nop

    const/16 v3, 0x11

    nop

    nop

    invoke-direct {v2, v3}, Ljsv;-><init>(I)V

    invoke-interface {v0, v2}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

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

    nop

    invoke-interface {v0, v2}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, p0, Lldz;->d:Ljava/lang/Object;

    nop

    nop

    nop

    new-instance v3, Ljava/util/ArrayList;

    nop

    nop

    nop

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v2

    nop

    nop

    check-cast v4, Lmhz;

    nop

    iget-object v4, v4, Lmhz;->b:Ljava/lang/Object;

    nop

    nop

    nop

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    nop

    nop

    nop

    nop

    if-nez v4, :cond_2

    nop

    move-object v4, v2

    nop

    nop

    nop

    nop

    check-cast v4, Lmhz;

    nop

    iget-object v4, v4, Lmhz;->b:Ljava/lang/Object;

    nop

    nop

    nop

    invoke-static {v4}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    new-instance v5, Llsw;

    nop

    nop

    invoke-direct {v5, v1}, Llsw;-><init>(I)V

    invoke-interface {v4, v5}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v4

    nop

    nop

    sget-object v5, Lrvj;->a:Lj$/util/stream/Collector;

    nop

    nop

    nop

    nop

    invoke-interface {v4, v5}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    check-cast v4, Lryb;

    nop

    nop

    nop

    nop

    nop

    move-object v4, v2

    nop

    nop

    check-cast v4, Lmhz;

    nop

    iget-object v4, v4, Lmhz;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    new-instance v5, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_b

    nop

    nop

    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    nop

    nop

    nop

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :goto_b
    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v5}, Lmhz;->h(Ljava/util/List;)Ljava/util/Map;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    nop

    nop

    :goto_c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    nop

    nop

    if-eqz v7, :cond_4

    nop

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    check-cast v7, Llso;

    nop

    nop

    nop

    invoke-static {v5}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v8

    nop

    nop

    new-instance v9, Lkzs;

    nop

    nop

    nop

    nop

    const/16 v10, 0xb

    nop

    nop

    nop

    invoke-direct {v9, v7, v10}, Lkzs;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v8, v9}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    sget-object v8, Lrvj;->a:Lj$/util/stream/Collector;

    nop

    nop

    invoke-interface {v7, v8}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    check-cast v7, Lryb;

    nop

    nop

    invoke-static {v7}, Lmhz;->h(Ljava/util/List;)Ljava/util/Map;

    move-result-object v7

    nop

    nop

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    nop

    nop

    nop

    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    nop

    move v11, v1

    nop

    nop

    nop

    move v10, v9

    nop

    :goto_d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    nop

    nop

    nop

    nop

    if-eqz v12, :cond_3

    nop

    nop

    nop

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    nop

    nop

    nop

    nop

    nop

    check-cast v12, Ljava/lang/Long;

    nop

    nop

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    nop

    nop

    nop

    nop

    invoke-static {v7, v12, v13}, Lj$/util/Map$-EL;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    nop

    nop

    check-cast v13, Ljava/lang/Float;

    nop

    nop

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    nop

    nop

    invoke-interface {v4, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    nop

    check-cast v12, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    nop

    nop

    nop

    nop

    sub-float/2addr v12, v13

    nop

    nop

    add-int/lit8 v11, v11, 0x1

    nop

    nop

    nop

    add-float/2addr v10, v12

    nop

    nop

    goto :goto_d

    nop

    nop

    nop

    nop

    :cond_3
    int-to-float v7, v11

    nop

    div-float/2addr v10, v7

    nop

    nop

    nop

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    nop

    nop

    nop

    nop

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_4
    invoke-static {v3}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    invoke-interface {v3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    nop

    nop

    move-object v5, v2

    nop

    check-cast v5, Lmhz;

    nop

    iget-object v5, v5, Lmhz;->a:Ljava/lang/Object;

    nop

    nop

    check-cast v5, Lj$/util/Optional;

    nop

    nop

    nop

    invoke-virtual {v5}, Lj$/util/Optional;->isEmpty()Z

    move-result v5

    nop

    nop

    nop

    nop

    if-eqz v5, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_11

    nop

    :cond_5
    new-instance v5, Ljava/util/HashSet;

    nop

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    move v6, v1

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    nop

    nop

    if-ge v6, v7, :cond_9

    nop

    nop

    nop

    if-ne v6, v4, :cond_6

    nop

    goto :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_6
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    nop

    check-cast v7, Llso;

    nop

    nop

    nop

    nop

    nop

    iget-object v7, v7, Llso;->p:Lrss;

    nop

    nop

    nop

    invoke-virtual {v7}, Lrss;->h()Z

    move-result v8

    nop

    nop

    if-eqz v8, :cond_8

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v7}, Lrss;->c()Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    check-cast v7, Llsy;

    nop

    nop

    nop

    invoke-virtual {v7}, Llsy;->a()Lryb;

    move-result-object v7

    nop

    nop

    move-object v8, v7

    nop

    check-cast v8, Lsbh;

    nop

    nop

    iget v8, v8, Lsbh;->c:I

    nop

    nop

    move v9, v1

    nop

    :goto_f
    if-ge v9, v8, :cond_8

    nop

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    check-cast v10, Llsx;

    nop

    nop

    nop

    invoke-virtual {v10}, Llsx;->a()F

    move-result v11

    nop

    nop

    nop

    nop

    nop

    const v12, 0x3e99999a    # 0.3f

    nop

    nop

    nop

    nop

    cmpl-float v11, v11, v12

    nop

    nop

    nop

    nop

    if-lez v11, :cond_7

    nop

    iget-wide v10, v10, Llsx;->a:J

    nop

    nop

    nop

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    nop

    nop

    nop

    invoke-interface {v5, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v9, v9, 0x1

    nop

    nop

    nop

    nop

    goto :goto_f

    nop

    :cond_8
    :goto_10
    add-int/lit8 v6, v6, 0x1

    nop

    nop

    nop

    nop

    goto/16 :goto_e

    nop

    nop

    nop

    nop

    :cond_9
    check-cast v2, Lmhz;

    nop

    nop

    nop

    iget-object v0, v2, Lmhz;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v0, Lj$/util/Optional;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    check-cast v0, Loyn;

    nop

    nop

    nop

    invoke-interface {v0, v5}, Loyn;->a(Ljava/lang/Object;)V

    :goto_11
    invoke-static {v3}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    nop

    invoke-interface {v3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    nop

    nop

    invoke-interface {v3}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lldz;->a:Ljava/lang/Object;

    nop

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_a

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_a
    goto/32 :goto_17

    nop

    :goto_13
    return v1

    nop

    nop

    nop

    :goto_14
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    nop

    nop

    invoke-interface {p1, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    nop

    nop

    nop

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p1

    nop

    nop

    new-instance v0, Ljlz;

    nop

    nop

    nop

    nop

    const/4 v3, 0x3

    nop

    invoke-direct {v0, p0, v3}, Ljlz;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p1

    nop

    nop

    nop

    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v0

    nop

    nop

    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    check-cast p1, Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lldz;->h:Ljava/lang/Object;

    nop

    nop

    invoke-interface {v0}, Ltud;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    nop

    nop

    nop

    move v3, v1

    nop

    nop

    nop

    :goto_15
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    if-ge v3, v4, :cond_1

    nop

    nop

    nop

    nop

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    check-cast v4, Lpjo;

    nop

    nop

    nop

    invoke-virtual {v4}, Lpjo;->b()Lpgi;

    move-result-object v4

    nop

    nop

    nop

    if-eqz v4, :cond_c

    nop

    nop

    iget-wide v5, v4, Lpgi;->b:J

    nop

    nop

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    nop

    nop

    nop

    invoke-static {v5, v5}, Lsay;->e(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lsay;

    move-result-object v5

    nop

    nop

    nop

    invoke-virtual {v0, v5}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->l(Lsay;)Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    if-eqz v5, :cond_d

    nop

    nop

    nop

    nop

    iget-wide v4, v4, Lpgi;->b:J

    nop

    nop

    nop

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    nop

    nop

    nop

    nop

    invoke-static {v4, v4}, Lsay;->e(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lsay;

    move-result-object v4

    nop

    nop

    nop

    invoke-virtual {v0, v4}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->m(Lsay;)Z

    move-result v4

    nop

    nop

    if-nez v4, :cond_b

    nop

    nop

    goto :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_b
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lldz;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_2

    nop

    nop

    :goto_16
    monitor-enter p0

    nop

    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    nop

    nop

    nop

    iget-object v1, p0, Lldz;->f:Ljava/lang/Object;

    nop

    nop

    check-cast v1, Lkgz;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lkgz;->b()I

    move-result v1

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_0

    nop

    nop

    :goto_17
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_16

    nop

    nop

    :goto_19
    return v3

    nop

    nop

    nop

    :cond_c
    :goto_1a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1b
    return v0

    nop

    nop

    :catchall_0
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
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_8

    nop

    nop

    :goto_1c
    return v3

    nop

    nop

    nop

    nop

    :cond_d
    :try_start_4
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lldz;->a:Ljava/lang/Object;

    nop

    nop

    nop

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const v1, 0x9

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1f
    rem-int v0, v0, v1

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

    :goto_20
    const v0, 0x19

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

    :goto_21
    add-int v0, v0, v1

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
.end method

.method public constructor <init>(Landroid/content/ContentProvider;Landroid/content/Context;Lhwy;Lgvg;Lidn;Landroid/content/UriMatcher;Lpdf;Lhoh;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    iput-object p5, p0, Lldz;->e:Ljava/lang/Object;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iput-object p4, p0, Lldz;->a:Ljava/lang/Object;

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

    :goto_2
    iput-object p6, p0, Lldz;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lldz;->g:Ljava/lang/Object;

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    :goto_6
    iput-object p7, p0, Lldz;->h:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    iput-object p8, p0, Lldz;->f:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p3, p0, Lldz;->d:Ljava/lang/Object;

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

    :goto_9
    iput-object p2, p0, Lldz;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lkog;Ltud;Ltud;Ltud;Ljava/util/concurrent/Executor;Lpct;Lpdf;Lnpq;Lhoh;Loyd;)V
    .locals 7

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_0
    iput-object v1, v0, Lldz;->g:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    const v1, 0x20

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_3
    iput-object v4, v0, Lldz;->e:Ljava/lang/Object;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_4
    move-object v3, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct/range {v0 .. v5}, Leqn;-><init>(Lpdf;Ltud;Ltud;Ltud;I)V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_8
    move-object v0, p0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    move-object v0, v6

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

    nop

    :goto_a
    goto/32 :goto_18

    nop

    :goto_b
    new-instance v6, Leqn;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_c
    move-object/from16 v2, p9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_d
    iput-object v1, v0, Lldz;->b:Ljava/lang/Object;

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

    :goto_e
    iput-object v1, v0, Lldz;->h:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_f
    move-object v0, p5

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_10
    move-object v1, p1

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

    :goto_11
    const v0, 0x10

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_12
    move-object/from16 v2, p10

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

    :goto_13
    iput-object v2, v0, Lldz;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_14
    move-object v4, p4

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_15
    move-object v1, p6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iput-object v3, v0, Lldz;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1a
    move-object v2, p8

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1b
    move-object v1, p7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1c
    iput-object v2, v0, Lldz;->f:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1d
    move-object v2, p2

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

    :goto_1e
    iput-object v2, v0, Lldz;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1f
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_0
    goto/32 :goto_17

    nop

    :goto_20
    const/16 v5, 0xb

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-interface {p5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_22
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Llsp;Lpdf;Ltud;Lkhw;Lkgz;Lmhz;)V
    .locals 1

    goto/32 :goto_a

    nop

    nop

    :goto_0
    iput-object p5, p0, Lldz;->f:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Ljava/util/ArrayDeque;

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
    iput-object p1, p0, Lldz;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sget-object p1, Lhms;->a:Lhmo;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p6, p0, Lldz;->d:Ljava/lang/Object;

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

    :goto_7
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_8
    iput-object p4, p0, Lldz;->g:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_7

    nop

    nop

    :goto_b
    iput-object v0, p0, Lldz;->e:Ljava/lang/Object;

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

    :goto_c
    iput-object p2, p0, Lldz;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_d
    iput-object v0, p0, Lldz;->a:Ljava/lang/Object;

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

    :goto_e
    iput-object p3, p0, Lldz;->h:Ljava/lang/Object;

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

.method public constructor <init>(Ltxm;Ltxm;Ltxm;Ltxm;Ltxm;Ltxm;Ltxm;Ltxm;)V
    .locals 0

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lldz;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_0

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

    :goto_4
    iput-object p3, p0, Lldz;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p4, p0, Lldz;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p8, p0, Lldz;->h:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_7
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_10

    nop

    nop

    :goto_9
    iput-object p1, p0, Lldz;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_a
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_d
    iput-object p5, p0, Lldz;->e:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput-object p7, p0, Lldz;->g:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_10
    iput-object p6, p0, Lldz;->f:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ltxm;Ltxm;Ltxm;Ltxm;Ltxm;Ltxm;Ltxm;Ltxm;[B)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    iput-object p7, p0, Lldz;->a:Ljava/lang/Object;

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

    :goto_2
    iput-object p1, p0, Lldz;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    iput-object p4, p0, Lldz;->h:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p8, p0, Lldz;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    :goto_9
    iput-object p6, p0, Lldz;->g:Ljava/lang/Object;

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
    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput-object p5, p0, Lldz;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1

    nop

    nop

    :goto_e
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput-object p3, p0, Lldz;->f:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_11
    iput-object p2, p0, Lldz;->b:Ljava/lang/Object;

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
.end method


# virtual methods
.method public final a(Lkuc;)Lktu;
    .locals 16

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_2
    move-object v13, v1

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

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_4
    iget-object v10, v0, Lldz;->b:Ljava/lang/Object;

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

    :goto_5
    iget-object v1, v0, Lldz;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_6
    move-object/from16 v3, p1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_7
    move-object v2, v15

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    move-object v12, v1

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

    :goto_a
    iget-object v14, v0, Lldz;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_b
    const v1, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    iget-object v1, v0, Lldz;->g:Ljava/lang/Object;

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

    :goto_d
    invoke-direct/range {v2 .. v14}, Lktu;-><init>(Lkuc;Lrss;Lkog;Ltud;Ltud;ZZLpct;Lpdf;Lnpq;Lhoh;Loyd;)V

    goto/32 :goto_f

    nop

    nop

    :goto_e
    const/4 v8, 0x0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-object v15

    nop

    nop

    :goto_10
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v7, v0, Lldz;->e:Ljava/lang/Object;

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

    :goto_12
    check-cast v12, Lnpq;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_13
    const/4 v9, 0x0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_14
    check-cast v5, Lkog;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_15
    check-cast v13, Lhoh;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_16
    sget-object v4, Lrsa;->a:Lrsa;

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

    :goto_17
    move-object v5, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_18
    new-instance v15, Lktu;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_19
    move-object/from16 v0, p0

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

    :goto_1a
    iget-object v11, v0, Lldz;->h:Ljava/lang/Object;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v1, v0, Lldz;->f:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1c
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_1d
    const v0, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1e
    iget-object v6, v0, Lldz;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop
.end method

.method public final b(Lkuc;Lkuc;)Lktu;
    .locals 14

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v8, v0, Lldz;->b:Ljava/lang/Object;

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

    :goto_2
    iget-object v1, v0, Lldz;->f:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v9, v0, Lldz;->h:Ljava/lang/Object;

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

    nop

    :goto_4
    move-object v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_5
    invoke-static/range {p2 .. p2}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v2

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_6
    check-cast v3, Lkog;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_7
    iget-object v12, v0, Lldz;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v7, 0x0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_9
    invoke-direct/range {v0 .. v12}, Lktu;-><init>(Lkuc;Lrss;Lkog;Ltud;Ltud;ZZLpct;Lpdf;Lnpq;Lhoh;Loyd;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v5, v0, Lldz;->e:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_b
    return-object v13

    nop

    nop

    :goto_c
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    move-object v1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_e
    move-object v3, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_f
    new-instance v13, Lktu;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_11
    move-object v10, v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

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

    :goto_15
    check-cast v10, Lnpq;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_17
    const/4 v6, 0x1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_18
    move-object v0, v13

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_19
    const v0, 0x15

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1a
    const v1, 0x16

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1b
    check-cast v11, Lhoh;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v1, v0, Lldz;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1d
    move-object v11, v1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1e
    iget-object v4, v0, Lldz;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1f
    iget-object v1, v0, Lldz;->g:Ljava/lang/Object;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop
.end method

.method public final c(Lkuc;Lkuc;)Lktu;
    .locals 14

    goto/32 :goto_17

    nop

    nop

    :goto_0
    move-object v11, v1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1
    move-object v0, p0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v6, 0x1

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
    iget-object v5, v0, Lldz;->e:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v7, 0x1

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

    :goto_5
    move-object v3, v1

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_6
    return-object v13

    nop

    nop

    :goto_7
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v13, Lktu;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    move-object v1, p1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_a
    iget-object v4, v0, Lldz;->a:Ljava/lang/Object;

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

    :goto_b
    add-int v0, v0, v1

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

    :goto_c
    invoke-direct/range {v0 .. v12}, Lktu;-><init>(Lkuc;Lrss;Lkog;Ltud;Ltud;ZZLpct;Lpdf;Lnpq;Lhoh;Loyd;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v1, v0, Lldz;->g:Ljava/lang/Object;

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

    :goto_10
    iget-object v12, v0, Lldz;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_12
    move-object v0, v13

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_13
    check-cast v3, Lkog;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_14
    invoke-static/range {p2 .. p2}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v2

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_15
    const v1, 0x20

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_16
    check-cast v10, Lnpq;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v0, 0x19

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v8, v0, Lldz;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1a
    iget-object v1, v0, Lldz;->f:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    check-cast v11, Lhoh;

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

    :goto_1c
    move-object v10, v1

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

    :goto_1d
    iget-object v9, v0, Lldz;->h:Ljava/lang/Object;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_e

    nop

    nop

    :goto_1f
    iget-object v1, v0, Lldz;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop
.end method

.method public final declared-synchronized d(Ljava/util/List;)I
    .locals 3

    goto/32 :goto_4

    nop

    nop

    :goto_0
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

    :goto_1
    throw p1

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    :goto_3
    return p1

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

    nop

    :try_start_0
    invoke-virtual {v0}, Lpde;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0xc

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

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
    goto/32 :goto_7

    nop

    :goto_7
    goto/32 :goto_2

    nop

    :goto_8
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto :goto_a

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

    :try_start_1
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_a
    throw p1

    nop

    :catchall_2
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

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

    :goto_c
    monitor-exit p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0xc

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_e
    monitor-enter p0

    nop

    :try_start_2
    new-instance v0, Lpde;

    nop

    nop

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    const-string v2, "#select"

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    iget-object v2, p0, Lldz;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    invoke-direct {v0, v2, v1}, Lpde;-><init>(Lpdf;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {p0, p1}, Lldz;->e(Ljava/util/List;)I

    move-result p1

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v0}, Lpde;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto/32 :goto_c

    nop

    nop
.end method

.method public final declared-synchronized e(Ljava/util/List;)I
    .locals 14

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1
    if-eq v1, v3, :cond_0

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

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    monitor-exit p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_4
    return p1

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return v2

    nop

    :goto_6
    :try_start_0
    invoke-virtual {v0}, Lryb;->size()I

    move-result v1

    nop

    nop

    nop

    iget-object v4, p0, Lldz;->f:Ljava/lang/Object;

    nop

    nop

    nop

    move-object v5, v4

    nop

    check-cast v5, Lkgz;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Lkgz;->b()I

    move-result v5

    nop

    nop

    check-cast v4, Lkgz;

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Lkgz;->a()I

    move-result v4

    nop

    nop

    nop

    nop

    add-int/2addr v5, v4

    nop

    nop

    iget-object v4, p0, Lldz;->f:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    move-object v6, v4

    nop

    nop

    nop

    nop

    nop

    check-cast v6, Lkgz;

    nop

    nop

    iget-object v6, v6, Lkgz;->a:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    check-cast v4, Lkgz;

    nop

    invoke-virtual {v4}, Lkgz;->b()I

    move-result v4

    nop

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    nop

    check-cast v6, Lkiw;

    nop

    nop

    sget-object v7, Lkiw;->c:Lkiw;

    nop

    nop

    nop

    nop

    nop

    if-ne v6, v7, :cond_1

    nop

    nop

    nop

    iget-object v0, p0, Lldz;->b:Ljava/lang/Object;

    nop

    const-string v1, "selectToFLush#forGroupPhotoMode"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lpdf;->f(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lldz;->51550bab6b6440a4fd45f825c221b363m(Ljava/util/List;)I

    move-result p1

    nop

    nop

    iget-object v0, p0, Lldz;->b:Ljava/lang/Object;

    nop

    invoke-interface {v0}, Lpdf;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    :goto_7
    monitor-enter p0

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Lldz;->b:Ljava/lang/Object;

    nop

    nop

    const-string v1, "selectToFlush#selectForceFlush"

    nop

    invoke-interface {v0, v1}, Lpdf;->f(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lldz;->3fd9578e124c68aa49885b22b61b4ec8m(Ljava/util/List;)Lrss;

    move-result-object v0

    nop

    nop

    iget-object v1, p0, Lldz;->b:Ljava/lang/Object;

    nop

    nop

    nop

    invoke-interface {v1}, Lpdf;->g()V

    invoke-virtual {v0}, Lrss;->h()Z

    move-result v1

    nop

    nop

    if-eqz v1, :cond_10

    nop

    nop

    nop

    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    check-cast p1, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

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

    nop

    nop

    :goto_8
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1c

    nop

    nop

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

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_c
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x20

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_e
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return v1

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    :try_start_2
    monitor-exit p0

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_10
    if-lt v1, v5, :cond_2

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_2
    :try_start_3
    iget-object p1, p0, Lldz;->f:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast p1, Lkgz;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lkgz;->a()I

    move-result p1

    nop

    sub-int/2addr v1, p1

    nop

    nop

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0}, Lryb;->size()I

    move-result p1

    nop

    nop

    add-int/lit8 p1, p1, -0x1

    nop

    nop

    invoke-virtual {v0, p1}, Lryb;->get(I)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    check-cast p1, Lpjo;

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lpjo;->b()Lpgi;

    move-result-object p1

    nop

    nop

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lryb;->size()I

    move-result v1

    nop

    sub-int/2addr v1, v4

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Lryb;->get(I)Ljava/lang/Object;

    move-result-object v4

    nop

    check-cast v4, Lpjo;

    nop

    nop

    invoke-virtual {v4}, Lpjo;->b()Lpgi;

    move-result-object v4

    nop

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v5, p1, Lpgi;->b:J

    nop

    nop

    nop

    nop

    nop

    iget-wide v7, v4, Lpgi;->b:J

    nop

    nop

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    nop

    nop

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    invoke-static {p1, v4}, Lsay;->e(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lsay;

    move-result-object p1

    nop

    nop

    new-instance v4, Ljava/util/HashMap;

    nop

    nop

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iget-object v5, p0, Lldz;->b:Ljava/lang/Object;

    nop

    nop

    nop

    const-string v6, "selectToFlush#qualityScores"

    nop

    invoke-interface {v5, v6}, Lpdf;->f(Ljava/lang/String;)V

    move v5, v2

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0}, Lryb;->size()I

    move-result v6

    nop

    nop

    nop

    nop

    if-ge v5, v6, :cond_3

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v5}, Lryb;->get(I)Ljava/lang/Object;

    move-result-object v6

    nop

    check-cast v6, Lpjo;

    nop

    nop

    nop

    invoke-virtual {v6}, Lpjo;->b()Lpgi;

    move-result-object v6

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v6, v6, Lpgi;->b:J

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v6, v7}, Lldz;->f(J)Lkfn;

    move-result-object v6

    nop

    invoke-virtual {v0, v5}, Lryb;->get(I)Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    nop

    check-cast v7, Lpjo;

    nop

    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Lldz;->a:Ljava/lang/Object;

    nop

    nop

    nop

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    nop

    nop

    nop

    goto :goto_12

    nop

    nop

    :cond_3
    iget-object v5, p0, Lldz;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    const-string v6, "selectToFlush#diversityScores"

    nop

    nop

    nop

    invoke-interface {v5, v6}, Lpdf;->h(Ljava/lang/String;)V

    iget-object v5, p0, Lldz;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    new-instance v6, Ljava/util/ArrayList;

    nop

    nop

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    nop

    nop

    :goto_13
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    nop

    const/4 v9, 0x0

    nop

    nop

    nop

    if-eqz v8, :cond_5

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    check-cast v8, Lkfn;

    nop

    nop

    nop

    iget-object v10, v8, Lkfn;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v10, Llso;

    nop

    nop

    nop

    iget-wide v10, v10, Llso;->a:J

    nop

    nop

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    nop

    invoke-virtual {p1, v10}, Lsay;->j(Ljava/lang/Comparable;)Z

    move-result v10

    nop

    nop

    nop

    nop

    if-nez v10, :cond_4

    nop

    iget-object v8, v8, Lkfn;->c:Ljava/lang/Object;

    nop

    nop

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_4
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    nop

    nop

    nop

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    nop

    nop

    nop

    :cond_5
    new-instance p1, Ljava/util/ArrayList;

    nop

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    nop

    nop

    nop

    :goto_14
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    nop

    if-eqz v8, :cond_6

    nop

    nop

    nop

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    check-cast v8, Llso;

    nop

    invoke-static {v8, v6}, Llto;->b(Llso;Ljava/util/Collection;)F

    move-result v10

    nop

    nop

    nop

    nop

    const v11, 0x3a03126f    # 5.0E-4f

    nop

    nop

    nop

    mul-float/2addr v10, v11

    nop

    nop

    nop

    nop

    nop

    new-instance v11, Llsn;

    nop

    nop

    nop

    nop

    iget-wide v12, v8, Llso;->a:J

    nop

    nop

    invoke-direct {v11, v10, v10}, Llsn;-><init>(FF)V

    invoke-interface {p1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    nop

    nop

    :cond_6
    new-instance v5, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    nop

    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    nop

    nop

    if-eqz v6, :cond_7

    nop

    nop

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    check-cast v6, Llsn;

    nop

    nop

    nop

    iget v6, v6, Llsn;->b:F

    nop

    nop

    nop

    nop

    nop

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    nop

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    nop

    :cond_7
    invoke-interface {v5, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lldz;->b:Ljava/lang/Object;

    nop

    const-string v6, "selectToFlush#getMomentsProcessingStatus"

    nop

    nop

    nop

    nop

    invoke-interface {p1, v6}, Lpdf;->h(Ljava/lang/String;)V

    iget-object p1, p0, Lldz;->h:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Ltud;->a()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    check-cast p1, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    nop

    nop

    nop

    nop

    nop

    iget-object v6, p0, Lldz;->b:Ljava/lang/Object;

    nop

    nop

    nop

    const-string v7, "selectToFlush#keepAroundScoring"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v6, v7}, Lpdf;->h(Ljava/lang/String;)V

    move v6, v2

    nop

    nop

    nop

    :goto_16
    iget-object v7, p0, Lldz;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    nop

    nop

    nop

    if-ge v6, v7, :cond_a

    nop

    nop

    nop

    nop

    nop

    iget-object v7, p0, Lldz;->a:Ljava/lang/Object;

    nop

    nop

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    check-cast v7, Lkfn;

    nop

    iget-object v8, v7, Lkfn;->c:Ljava/lang/Object;

    nop

    check-cast v8, Llso;

    nop

    nop

    iget-wide v10, v8, Llso;->a:J

    nop

    nop

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    nop

    nop

    nop

    invoke-static {v8, v8}, Lsay;->e(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lsay;

    move-result-object v8

    nop

    invoke-virtual {p1, v8}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->m(Lsay;)Z

    move-result v8

    nop

    nop

    nop

    const/high16 v10, -0x3b860000    # -1000.0f

    nop

    if-eq v3, v8, :cond_8

    nop

    nop

    nop

    nop

    nop

    move v8, v9

    nop

    nop

    nop

    nop

    goto :goto_17

    nop

    nop

    nop

    :cond_8
    move v8, v10

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v11, v7, Lkfn;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v11, Llso;

    nop

    nop

    nop

    nop

    iget-wide v11, v11, Llso;->a:J

    nop

    nop

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    nop

    invoke-static {v11, v11}, Lsay;->e(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lsay;

    move-result-object v11

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v11}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->l(Lsay;)Z

    move-result v11

    nop

    nop

    if-nez v11, :cond_9

    nop

    nop

    nop

    nop

    nop

    add-float/2addr v8, v10

    nop

    nop

    nop

    nop

    nop

    :cond_9
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    check-cast v10, Ljava/lang/Float;

    nop

    nop

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    nop

    nop

    nop

    nop

    nop

    iget v11, v7, Lkfn;->a:F

    nop

    nop

    nop

    add-float/2addr v10, v8

    nop

    add-float/2addr v11, v10

    nop

    nop

    nop

    iput v11, v7, Lkfn;->a:F

    nop

    nop

    nop

    iget v10, v7, Lkfn;->b:F

    nop

    add-float/2addr v10, v8

    nop

    nop

    nop

    iput v10, v7, Lkfn;->b:F

    nop

    nop

    add-int/lit8 v6, v6, 0x1

    nop

    nop

    nop

    nop

    goto/16 :goto_16

    nop

    nop

    nop

    nop

    :cond_a
    iget-object p1, p0, Lldz;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    const-string v3, "selectToFlush#hdrPlusPriorityScore"

    nop

    nop

    nop

    nop

    invoke-interface {p1, v3}, Lpdf;->h(Ljava/lang/String;)V

    :goto_18
    invoke-virtual {v0}, Lryb;->size()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    if-ge v1, p1, :cond_c

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Lryb;->get(I)Ljava/lang/Object;

    move-result-object p1

    nop

    check-cast p1, Lpjo;

    nop

    nop

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_b

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    check-cast p1, Lkfn;

    nop

    nop

    nop

    iget v3, p1, Lkfn;->a:F

    nop

    nop

    const v5, 0x461c4000    # 10000.0f

    nop

    nop

    add-float/2addr v3, v5

    nop

    nop

    nop

    iput v3, p1, Lkfn;->a:F

    nop

    nop

    nop

    nop

    nop

    :cond_b
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto :goto_18

    nop

    :cond_c
    iget-object p1, p0, Lldz;->b:Ljava/lang/Object;

    nop

    nop

    invoke-interface {p1}, Lpdf;->g()V

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    nop

    nop

    move v1, v2

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0}, Lryb;->size()I

    move-result v3

    nop

    if-ge v2, v3, :cond_f

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v2}, Lryb;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    check-cast v3, Lkfn;

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v3, Lkfn;->a:F

    nop

    nop

    nop

    nop

    nop

    cmpg-float v5, v3, p1

    nop

    nop

    nop

    nop

    if-gez v5, :cond_d

    nop

    nop

    move v1, v2

    nop

    nop

    nop

    :cond_d
    if-gez v5, :cond_e

    nop

    nop

    nop

    nop

    move p1, v3

    nop

    nop

    :cond_e
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    goto :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_f
    iget-object p1, p0, Lldz;->a:Ljava/lang/Object;

    nop

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1a
    return p1

    nop

    nop

    nop

    :cond_10
    :try_start_4
    iget-object v0, p0, Lldz;->a:Ljava/lang/Object;

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Lkfl;

    nop

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    invoke-direct {v1, v2}, Lkfl;-><init>(I)V

    invoke-static {v1}, Lj$/util/Comparator$-CC;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0, v1}, Lj$/util/List$-EL;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {v0}, Lryb;->j(Ljava/util/Collection;)Lryb;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lldz;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    const-string v3, "selectToFlush#statusCheck"

    nop

    nop

    nop

    nop

    invoke-interface {v1, v3}, Lpdf;->f(Ljava/lang/String;)V

    iget-object v1, p0, Lldz;->g:Ljava/lang/Object;

    nop

    nop

    nop

    iget-object v3, p0, Lldz;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v1, Lkhw;

    nop

    nop

    nop

    invoke-virtual {v1}, Lkhw;->a()I

    move-result v1

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Lpdf;->g()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1b
    throw p1

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_a

    nop

    nop

    :goto_1e
    if-lez v0, :cond_11

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_9

    nop

    :goto_1f
    const v1, 0x8

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final f(J)Lkfn;
    .locals 21

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    move-wide/from16 v2, p1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0xd

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

    :goto_3
    sget-object v20, Lrsa;->a:Lrsa;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    move-object/from16 v18, v20

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_5
    iget-object v0, v0, Lldz;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_13

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

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v1, Lkfn;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-object v1

    nop

    :goto_9
    goto/32 :goto_e

    nop

    nop

    :goto_a
    const/4 v15, 0x0

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

    :goto_b
    const/16 v16, 0x0

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

    :goto_c
    goto/32 :goto_9

    nop

    :goto_d
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_d

    nop

    nop

    :goto_f
    const/4 v13, 0x0

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_11
    const/4 v12, 0x0

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
    const/4 v10, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_13
    move-wide/from16 v2, p1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v9, 0x0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_15
    move-object/from16 v0, p0

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

    :goto_16
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_17
    const/4 v11, 0x0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v7, 0x0

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :cond_0
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v4, 0x0

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

    :goto_1b
    const/16 v17, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1c
    invoke-interface {v0, v2, v3}, Llsp;->a(J)Llso;

    move-result-object v0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const v1, 0xf

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-direct {v1, v0}, Lkfn;-><init>(Llso;)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1f
    const/4 v8, 0x0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_20
    new-instance v0, Llso;

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

    :goto_21
    const/4 v14, 0x0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-direct/range {v1 .. v20}, Llso;-><init>(JFFFFFFFFFFFFZZLrss;Lrss;Lrss;)V

    :goto_23
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_24
    move-object v1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_25
    move-object/from16 v19, v20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_26
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop
.end method

.method public final declared-synchronized g()Ljava/util/List;
    .locals 5

    goto/32 :goto_5

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    nop

    nop

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lldz;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    if-eqz v2, :cond_1

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    check-cast v2, Lkfn;

    nop

    nop

    nop

    nop

    new-instance v3, Lkfm;

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    invoke-direct {v3, v2, v4}, Lkfm;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_b

    nop

    nop

    :goto_3
    goto/32 :goto_0

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

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_5
    const v0, 0xa

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_6
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

    :goto_7
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_a
    throw v0

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    :goto_c
    goto/16 :goto_1

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d
    return-object v0

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized h(J)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    throw p1

    nop

    nop

    nop

    :goto_1
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    :try_start_0
    iget-object v0, p0, Lldz;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    nop

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

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
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final i(Landroid/net/Uri;I)Landroid/os/ParcelFileDescriptor;
    .locals 7

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_7

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

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_2
    if-nez v2, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_1
    :goto_3
    goto/32 :goto_65

    nop

    nop

    nop

    :goto_4
    const/16 v2, 0x64

    nop

    nop

    nop

    :try_start_1
    invoke-virtual {p0, p1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    nop

    :try_start_3
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object p2

    nop

    nop

    aget-object v1, p2, v3

    nop

    nop

    aget-object p2, p2, v0

    nop

    nop

    nop
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    new-instance v0, Ljava/io/BufferedOutputStream;

    nop

    nop

    nop

    nop

    new-instance v3, Ljava/io/FileOutputStream;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    nop

    nop

    nop

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    move-object p2, v2

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    :goto_8
    invoke-direct {p1, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_16

    nop

    nop

    :goto_9
    invoke-static {p1, p2}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_a
    invoke-direct {v5, p1}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    goto/32 :goto_47

    nop

    nop

    :goto_b
    if-nez p0, :cond_1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_c
    if-nez p0, :cond_2

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :cond_2
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Lgvg;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {p1, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-nez p1, :cond_3

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

    nop

    :cond_3
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v1, p0, Lldz;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_11
    throw p0

    nop

    nop

    nop

    nop

    :catch_3
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v1, p0, p1, p1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_14
    new-instance p0, Ljava/io/FileNotFoundException;

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_15
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

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

    :goto_16
    throw p1

    nop

    nop

    :goto_17
    goto/32 :goto_64

    nop

    nop

    nop

    :goto_18
    if-nez p2, :cond_4

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_4
    :try_start_5
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    :goto_19
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_1a
    const p1, 0x7f0706d8

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_1b
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p0, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p0, p1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_20
    new-instance v4, Landroid/graphics/Paint;

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

    nop

    :goto_21
    check-cast p0, Lgvg;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_23
    new-instance v4, Landroid/graphics/Canvas;

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_24
    add-int v0, v0, v1

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_25
    goto :goto_26

    nop

    :catch_5
    move-exception p0

    nop

    nop

    :goto_26
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_27
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    throw p0

    nop

    nop

    :goto_2a
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_2c
    const/4 v2, 0x0

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

    nop

    :goto_2d
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    new-array p1, p1, [F

    nop

    nop

    nop

    fill-array-data p1, :array_0

    goto/32 :goto_2b

    nop

    nop

    :goto_2f
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_30
    move-object p0, p1

    nop

    :goto_31
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_32
    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_33
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

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

    :goto_34
    const/4 v0, 0x1

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_35
    move-object p2, v2

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_37
    new-instance p1, Ljava/io/FileNotFoundException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_38
    goto/16 :goto_7

    nop

    nop

    nop

    nop

    nop

    :catch_6
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_39
    if-lez v0, :cond_5

    nop

    nop

    goto/32 :goto_43

    nop

    :cond_5
    goto/32 :goto_42

    nop

    :goto_3a
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_3b
    const v1, 0x9

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_3c
    invoke-static {p2, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_3e
    if-nez p2, :cond_6

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :cond_6
    :try_start_6
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_3f
    const-string p2, "resource is not found for "

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

    :goto_40
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_41
    instance-of p1, p0, Landroid/graphics/drawable/BitmapDrawable;

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

    :goto_42
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_44
    iget-object p0, p0, Lldz;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_46
    check-cast p0, Landroid/content/Context;

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

    nop

    nop

    :goto_47
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto/32 :goto_27

    nop

    nop

    :goto_48
    move-object p0, p2

    nop

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_4d
    move-object v2, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4e
    const/16 p1, 0x14

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_4f
    if-nez v2, :cond_7

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :cond_7
    :try_start_7
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_50
    throw p0

    nop

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :goto_51
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_52
    invoke-virtual {p0, v3, v3, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_53
    check-cast v1, Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_54
    new-instance v1, Landroid/graphics/Canvas;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_55
    invoke-direct {p0}, Ljava/io/FileNotFoundException;-><init>()V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_56
    goto :goto_57

    nop

    nop

    nop

    :catch_7
    move-exception p0

    nop

    nop

    nop

    :goto_57
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_58
    if-eq p2, p1, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_59
    invoke-virtual {v4}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {v4}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_5c
    return-object v1

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

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-static {p0, v1, v1, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_5f
    goto/16 :goto_36

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

    goto/32 :goto_6

    nop

    nop

    :goto_60
    const v0, 0xa

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_61
    goto/16 :goto_31

    nop

    :goto_62
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    check-cast p1, Ljava/lang/String;

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_64
    new-instance p0, Ljava/io/FileNotFoundException;

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    if-nez p2, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    :cond_9
    :try_start_8
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :goto_66
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_67
    move-object v2, v0

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_68
    new-instance v5, Landroid/graphics/ColorMatrixColorFilter;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_69
    invoke-direct {v4, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_6a
    goto/16 :goto_36

    nop

    nop

    :catchall_2
    move-exception p0

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
.end method
