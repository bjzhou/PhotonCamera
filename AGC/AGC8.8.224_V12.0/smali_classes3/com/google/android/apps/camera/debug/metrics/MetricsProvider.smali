.class public Lcom/google/android/apps/camera/debug/metrics/MetricsProvider;
.super Lkav;


# instance fields
.field public a:Lkgd;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkav;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/PrintWriter;)V
    .locals 18

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/google/android/apps/camera/debug/metrics/MetricsProvider;->a:Lkgd;

    if-nez v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/debug/metrics/MetricsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lemj;

    const-class v2, Ldku;

    invoke-interface {v0, v2}, Lemj;->e(Ljava/lang/Class;)Leml;

    move-result-object v0

    check-cast v0, Ldku;

    invoke-interface {v0, v1}, Ldku;->bR(Lcom/google/android/apps/camera/debug/metrics/MetricsProvider;)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    new-instance v0, Landroid/util/PrintWriterPrinter;

    move-object/from16 v4, p1

    invoke-direct {v0, v4}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    iget-object v4, v1, Lcom/google/android/apps/camera/debug/metrics/MetricsProvider;->a:Lkgd;

    invoke-static {v4}, Llkj;->C(Ljava/lang/Object;)V

    iget-object v4, v4, Lkgd;->a:Ljava/lang/Object;

    move-object v5, v4

    check-cast v5, Lknt;

    iget-object v5, v5, Lknt;->a:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    check-cast v4, Lknt;

    iget-object v4, v4, Lknt;->b:Lkns;

    iget-object v4, v4, Lkns;->a:Ljava/lang/Object;

    new-instance v6, Lkgd;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v7}, Lkgd;-><init>([B[C)V

    check-cast v4, Lkgd;

    iget-object v4, v4, Lkgd;->a:Ljava/lang/Object;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    iget-object v9, v6, Lkgd;->a:Ljava/lang/Object;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lloi;

    new-instance v11, Lloi;

    iget-object v12, v8, Lloi;->c:Ljava/lang/Object;

    check-cast v12, Lkte;

    invoke-direct {v11, v12, v7}, Lloi;-><init>(Lkte;[B)V

    iget-object v8, v8, Lloi;->b:Ljava/lang/Object;

    check-cast v8, Ljava/util/TreeMap;

    invoke-virtual {v8}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    iget-object v13, v11, Lloi;->b:Ljava/lang/Object;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lkni;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lknw;

    invoke-virtual {v12}, Lknw;->a()Lknw;

    move-result-object v12

    check-cast v13, Ljava/util/TreeMap;

    invoke-virtual {v13, v14, v12}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v4, v6, Lkgd;->a:Ljava/lang/Object;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v8, 0x1

    if-eqz v5, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lloi;

    if-nez v5, :cond_3

    const-string v5, ""

    goto/16 :goto_a

    :cond_3
    invoke-virtual {v5}, Lloi;->m()[Lknh;

    move-result-object v9

    array-length v9, v9

    if-nez v9, :cond_8

    invoke-virtual {v5}, Lloi;->l()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lkni;->a:Lkni;

    iget-object v9, v9, Lkni;->b:[Ljava/lang/Object;

    iget-object v5, v5, Lloi;->b:Ljava/lang/Object;

    check-cast v5, Ljava/util/TreeMap;

    invoke-virtual {v5}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    const/4 v11, 0x0

    :goto_3
    array-length v12, v9

    if-ge v11, v12, :cond_6

    aget-object v12, v9, v11

    if-eqz v12, :cond_5

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lkni;

    iget-object v12, v12, Lkni;->b:[Ljava/lang/Object;

    aget-object v12, v12, v11

    aget-object v13, v9, v11

    if-ne v12, v13, :cond_4

    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_6
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lknw;

    goto :goto_4

    :cond_7
    move-object v5, v7

    :goto_4
    invoke-static {v5}, Lkof;->c(Lknw;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_a

    :cond_8
    invoke-virtual {v5}, Lloi;->m()[Lknh;

    move-result-object v9

    iget-object v10, v5, Lloi;->b:Ljava/lang/Object;

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    array-length v11, v9

    add-int/lit8 v12, v11, 0x1

    new-array v13, v12, [I

    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v14

    add-int/2addr v14, v8

    filled-new-array {v14, v12}, [I

    move-result-object v12

    const-class v14, Ljava/lang/String;

    invoke-static {v14, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[Ljava/lang/String;

    const/4 v14, 0x0

    :goto_5
    if-ge v14, v11, :cond_9

    aget-object v15, v12, v6

    aget-object v7, v9, v14

    iget-object v7, v7, Lknh;->a:Ljava/lang/String;

    aput-object v7, v15, v14

    aget-object v7, v9, v14

    iget-object v7, v7, Lknh;->a:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    aput v7, v13, v14

    add-int/lit8 v14, v14, 0x1

    const/4 v7, 0x0

    goto :goto_5

    :cond_9
    aget-object v7, v12, v6

    const-string v9, ""

    aput-object v9, v7, v11

    aput v8, v13, v11

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v9, 0x1

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    const/4 v14, 0x0

    :goto_7
    if-ge v14, v11, :cond_a

    sget-object v15, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v6, v8, [Ljava/lang/Object;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v8, v17

    check-cast v8, Lkni;

    iget-object v8, v8, Lkni;->b:[Ljava/lang/Object;

    aget-object v8, v8, v14

    const/16 v16, 0x0

    aput-object v8, v6, v16

    const-string v8, "%s"

    invoke-static {v15, v8, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aget v8, v13, v14

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v15

    invoke-static {v8, v15}, Ljava/lang/Math;->max(II)I

    move-result v8

    aput v8, v13, v14

    aget-object v8, v12, v9

    aput-object v6, v8, v14

    add-int/lit8 v14, v14, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x1

    goto :goto_7

    :cond_a
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lknw;

    invoke-static {v6}, Lkof;->c(Lknw;)Ljava/lang/String;

    move-result-object v6

    aget v8, v13, v11

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    aput v8, v13, v11

    aget-object v8, v12, v9

    aput-object v6, v8, v11

    add-int/lit8 v9, v9, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x1

    goto :goto_6

    :cond_b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    :goto_8
    add-int/lit8 v8, v11, -0x1

    if-ge v7, v8, :cond_c

    const-string v8, "%-"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v13, v7

    const/4 v9, 0x1

    add-int/2addr v8, v9

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "s"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_c
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "%s"

    invoke-virtual {v7, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "%-"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v13, v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "s:%"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v13, v11

    const/4 v9, 0x1

    add-int/2addr v8, v9

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "s"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lloi;->l()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v9, 0x0

    aget-object v9, v12, v9

    invoke-static {v5, v7, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    :goto_9
    array-length v7, v12

    if-ge v5, v7, :cond_d

    const-string v7, "\n"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    aget-object v9, v12, v5

    invoke-static {v7, v6, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_d
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_a
    invoke-interface {v0, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    const/4 v7, 0x0

    goto/16 :goto_2

    :cond_e
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    long-to-double v2, v4

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const-wide v6, 0x412e848000000000L    # 1000000.0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v5, v3

    const-string v2, "\n\nMetrics dumped in %.6f ms"

    invoke-static {v4, v2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_c

    :goto_b
    throw v0

    :goto_c
    goto :goto_b
.end method
