.class public final Lfox;
.super Ljava/lang/Object;

# interfaces
.implements Lfqj;


# instance fields
.field private final a:Lfsr;

.field private final b:Logd;

.field private final c:Lgsm;

.field private final d:Lfpn;

.field private final e:Ljava/util/List;


# direct methods
.method public constructor <init>(Lgsm;Logd;Lfsr;Lfpn;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfox;->e:Ljava/util/List;

    iput-object p3, p0, Lfox;->a:Lfsr;

    iput-object p2, p0, Lfox;->b:Logd;

    iput-object p1, p0, Lfox;->c:Lgsm;

    iput-object p4, p0, Lfox;->d:Lfpn;

    return-void
.end method

.method private final d(J)Lfow;
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lfox;->c:Lgsm;

    move-wide/from16 v3, p1

    invoke-interface {v1, v3, v4}, Lgsm;->c(J)Lgsl;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lgsl;

    move-object v2, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    sget-object v19, Lmpx;->a:Lmpx;

    move-object/from16 v20, v19

    move-object/from16 v21, v19

    move-wide/from16 v3, p1

    invoke-direct/range {v2 .. v21}, Lgsl;-><init>(JFFFFFFFFFFFFZZLmqp;Lmqp;Lmqp;)V

    :cond_0
    new-instance v2, Lfow;

    invoke-direct {v2, v1}, Lfow;-><init>(Lgsl;)V

    return-object v2
.end method

.method private static final e(Lfow;)Lfpc;
    .locals 2

    new-instance v0, Lfov;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfov;-><init>(Lfow;I)V

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/util/List;)I
    .locals 14

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfox;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object p1, Lamx;->h:Lamx;

    invoke-static {v0, p1}, Lj$/util/List$-EL;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {v0}, Lmvv;->j(Ljava/util/Collection;)Lmvv;

    move-result-object p1

    invoke-virtual {p1}, Lmvv;->size()I

    move-result v0

    iget-object v1, p0, Lfox;->d:Lfpn;

    invoke-interface {v1}, Lfpn;->b()I

    move-result v1

    iget-object v2, p0, Lfox;->d:Lfpn;

    invoke-interface {v2}, Lfpn;->a()I

    move-result v2

    const/4 v3, 0x1

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, -0x2

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lfox;->a:Lfsr;

    invoke-interface {v0}, Lfsr;->a()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-ne v0, v3, :cond_1

    monitor-exit p0

    return v1

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lmvv;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lmvv;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkhr;

    invoke-virtual {v0}, Lkhr;->b()Lkeg;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v4, v0, Lkeg;->b:J

    invoke-virtual {p1}, Lmvv;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p1, v0}, Lmvv;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkhr;

    invoke-virtual {v2}, Lkhr;->b()Lkeg;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v6, v2, Lkeg;->b:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v4}, Lmym;->e(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lmym;

    move-result-object v2

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {p1}, Lmvv;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    invoke-virtual {p1, v5}, Lmvv;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkhr;

    invoke-virtual {v6}, Lkhr;->b()Lkeg;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v6, v6, Lkeg;->b:J

    invoke-direct {p0, v6, v7}, Lfox;->d(J)Lfow;

    move-result-object v6

    invoke-virtual {p1, v5}, Lmvv;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkhr;

    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Lfox;->e:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lfox;->e:Ljava/util/List;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lfow;

    iget-object v10, v8, Lfow;->c:Ljava/lang/Object;

    check-cast v10, Lgsl;

    iget-wide v10, v10, Lgsl;->a:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v2, v10}, Lmym;->k(Ljava/lang/Comparable;)Z

    move-result v10

    if-nez v10, :cond_3

    iget-object v8, v8, Lfow;->c:Ljava/lang/Object;

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgsl;

    invoke-static {v8, v6}, Lgtl;->c(Lgsl;Ljava/util/Collection;)F

    move-result v10

    const v11, 0x3a03126f    # 5.0E-4f

    mul-float v10, v10, v11

    new-instance v11, Lgsk;

    iget-wide v12, v8, Lgsl;->a:J

    invoke-direct {v11, v10, v10}, Lgsk;-><init>(FF)V

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgsk;

    iget v6, v6, Lgsk;->b:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    invoke-interface {v5, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v2, 0x0

    :goto_5
    iget-object v6, p0, Lfox;->e:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_9

    iget-object v6, p0, Lfox;->e:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lfow;

    iget-object v7, p0, Lfox;->b:Logd;

    invoke-interface {v7}, Logd;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lfgi;

    iget-object v8, v6, Lfow;->c:Ljava/lang/Object;

    check-cast v8, Lgsl;

    iget-wide v10, v8, Lgsl;->a:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v8, v8}, Lmym;->e(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lmym;

    move-result-object v8

    invoke-interface {v7, v8}, Lfgi;->b(Lmym;)Z

    move-result v7

    const/high16 v8, -0x3b860000    # -1000.0f

    if-eq v3, v7, :cond_7

    const/4 v7, 0x0

    goto :goto_6

    :cond_7
    const/high16 v7, -0x3b860000    # -1000.0f

    :goto_6
    iget-object v10, p0, Lfox;->b:Logd;

    invoke-interface {v10}, Logd;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lfgi;

    iget-object v11, v6, Lfow;->c:Ljava/lang/Object;

    check-cast v11, Lgsl;

    iget-wide v11, v11, Lgsl;->a:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static {v11, v11}, Lmym;->e(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lmym;

    move-result-object v11

    invoke-interface {v10, v11}, Lfgi;->a(Lmym;)Z

    move-result v10

    if-nez v10, :cond_8

    add-float/2addr v7, v8

    :cond_8
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iget v10, v6, Lfow;->a:F

    add-float/2addr v8, v7

    add-float/2addr v10, v8

    iput v10, v6, Lfow;->a:F

    iget v8, v6, Lfow;->b:F

    add-float/2addr v8, v7

    iput v8, v6, Lfow;->b:F

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_9
    :goto_7
    invoke-virtual {p1}, Lmvv;->size()I

    move-result v2

    if-ge v0, v2, :cond_b

    invoke-virtual {p1, v0}, Lmvv;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkhr;

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfow;

    iget v3, v2, Lfow;->a:F

    const v5, 0x461c4000    # 10000.0f

    add-float/2addr v3, v5

    iput v3, v2, Lfow;->a:F

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_b
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v2, 0x0

    :goto_8
    invoke-virtual {p1}, Lmvv;->size()I

    move-result v3

    if-ge v1, v3, :cond_e

    invoke-virtual {p1, v1}, Lmvv;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfow;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v3, Lfow;->a:F

    cmpg-float v5, v3, v0

    if-gez v5, :cond_c

    move v2, v1

    :cond_c
    cmpg-float v5, v3, v0

    if-gez v5, :cond_d

    move v0, v3

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_e
    iget-object p1, p0, Lfox;->e:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_a

    :goto_9
    throw p1

    :goto_a
    goto :goto_9
.end method

.method public final b(J)Lfpc;
    .locals 0

    invoke-direct {p0, p1, p2}, Lfox;->d(J)Lfow;

    move-result-object p1

    invoke-static {p1}, Lfox;->e(Lfow;)Lfpc;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized c()Ljava/util/List;
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lfox;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfow;

    invoke-static {v2}, Lfox;->e(Lfow;)Lfpc;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method
