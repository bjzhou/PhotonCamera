.class final Lapg;
.super Loln;

# interfaces
.implements Lomo;


# annotations
.annotation runtime Lolj;
    b = "androidx.room.CoroutinesRoom$Companion$createFlow$1$1$1"
    c = "CoroutinesRoom.kt"
    d = "invokeSuspend"
    e = {
        0x81,
        0x83
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:I

.field final synthetic c:Lapt;

.field final synthetic d:Loss;

.field final synthetic e:Ljava/util/concurrent/Callable;

.field final synthetic f:Loss;

.field final synthetic g:Lapp;


# direct methods
.method public constructor <init>(Lapt;Lapp;Loss;Ljava/util/concurrent/Callable;Loss;Loku;)V
    .locals 0

    iput-object p1, p0, Lapg;->c:Lapt;

    iput-object p2, p0, Lapg;->g:Lapp;

    iput-object p3, p0, Lapg;->d:Loss;

    iput-object p4, p0, Lapg;->e:Ljava/util/concurrent/Callable;

    iput-object p5, p0, Lapg;->f:Loss;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Loln;-><init>(ILoku;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lopu;

    check-cast p2, Loku;

    invoke-virtual {p0, p1, p2}, Lolf;->c(Ljava/lang/Object;Loku;)Loku;

    move-result-object p1

    sget-object p2, Lojk;->a:Lojk;

    check-cast p1, Lapg;

    invoke-virtual {p1, p2}, Lapg;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v1, p0

    sget-object v0, Lolc;->a:Lolc;

    iget v2, v1, Lapg;->b:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_0

    iget-object v2, v1, Lapg;->a:Ljava/lang/Object;

    goto/16 :goto_6

    :pswitch_0
    iget-object v2, v1, Lapg;->a:Ljava/lang/Object;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lljr;->aO(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v6, p1

    move-object v5, v1

    goto/16 :goto_a

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    :pswitch_1
    invoke-static/range {p1 .. p1}, Lljr;->aO(Ljava/lang/Object;)V

    iget-object v2, v1, Lapg;->c:Lapt;

    iget-object v2, v2, Lapt;->e:Lapr;

    iget-object v5, v1, Lapg;->g:Lapp;

    iget-object v6, v5, Lapp;->a:Ljava/lang/Object;

    invoke-static {}, Lljr;->R()Ljava/util/Set;

    move-result-object v7

    const/4 v8, 0x0

    :goto_0
    if-gtz v8, :cond_1

    move-object v9, v6

    check-cast v9, [Ljava/lang/String;

    aget-object v9, v9, v8

    iget-object v10, v2, Lapr;->b:Ljava/util/Map;

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v10, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, v2, Lapr;->b:Ljava/util/Map;

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v7, v9}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_0
    invoke-interface {v7, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v7}, Lljr;->U(Ljava/util/Set;)V

    new-array v6, v3, [Ljava/lang/String;

    invoke-interface {v7, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    new-instance v7, Ljava/util/ArrayList;

    array-length v8, v6

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v8, :cond_3

    aget-object v10, v6, v9

    iget-object v11, v2, Lapr;->c:Ljava/util/Map;

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    if-eqz v11, :cond_2

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_2
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "There is no table with name "

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v8

    new-array v9, v8, [I

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v10, 0x0

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    add-int/lit8 v12, v10, 0x1

    aput v11, v9, v10

    move v10, v12

    goto :goto_3

    :cond_4
    new-instance v7, Lbbc;

    invoke-direct {v7, v5, v9, v6}, Lbbc;-><init>(Lapp;[I[Ljava/lang/String;)V

    iget-object v6, v2, Lapr;->f:Lqu;

    monitor-enter v6

    :try_start_1
    iget-object v10, v2, Lapr;->f:Lqu;

    invoke-virtual {v10, v5, v7}, Lqu;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbbc;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    monitor-exit v6

    if-nez v5, :cond_7

    iget-object v5, v2, Lapr;->l:Ljvq;

    invoke-static {v9, v8}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-enter v5

    :try_start_2
    array-length v7, v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_4
    if-ge v8, v7, :cond_6

    aget v10, v6, v8

    iget-object v11, v5, Ljvq;->c:Ljava/lang/Object;

    move-object v12, v11

    check-cast v12, [J

    aget-wide v13, v12, v10

    const-wide/16 v15, 0x1

    add-long/2addr v15, v13

    check-cast v11, [J

    aput-wide v15, v11, v10

    const-wide/16 v10, 0x0

    cmp-long v12, v13, v10

    if-nez v12, :cond_5

    iput-boolean v4, v5, Ljvq;->a:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v9, 0x1

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_6
    monitor-exit v5

    if-eqz v9, :cond_7

    invoke-virtual {v2}, Lapr;->b()V

    goto :goto_5

    :catchall_1
    move-exception v0

    monitor-exit v5

    throw v0

    :cond_7
    :goto_5
    :try_start_3
    iget-object v2, v1, Lapg;->d:Loss;

    invoke-interface {v2}, Loss;->m()Losg;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v5, v1

    goto :goto_7

    :catchall_2
    move-exception v0

    monitor-exit v6

    throw v0

    :goto_6
    :try_start_4
    invoke-static/range {p1 .. p1}, Lljr;->aO(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v5, v1

    :cond_8
    :goto_7
    :try_start_5
    iput-object v2, v5, Lapg;->a:Ljava/lang/Object;

    iput v4, v5, Lapg;->b:I

    move-object v6, v2

    check-cast v6, Losg;

    iget-object v6, v6, Losg;->a:Ljava/lang/Object;

    sget-object v7, Losn;->d:Loxb;

    if-eq v6, v7, :cond_9

    invoke-static {v6}, Losg;->a(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto/16 :goto_9

    :cond_9
    move-object v6, v2

    check-cast v6, Losg;

    iget-object v6, v6, Losg;->b:Ljava/lang/Object;

    check-cast v6, Losm;

    invoke-virtual {v6}, Losm;->a()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v2

    check-cast v7, Losg;

    iput-object v6, v7, Losg;->a:Ljava/lang/Object;

    move-object v6, v2

    check-cast v6, Losg;

    iget-object v6, v6, Losg;->a:Ljava/lang/Object;

    sget-object v7, Losn;->d:Loxb;

    if-eq v6, v7, :cond_a

    invoke-static {v6}, Losg;->a(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_9

    :cond_a
    invoke-static {v5}, Lolp;->g(Loku;)Loku;

    move-result-object v6

    invoke-static {v6}, Lonm;->n(Loku;)Lopa;

    move-result-object v6

    new-instance v7, Losi;

    move-object v8, v2

    check-cast v8, Losg;

    invoke-direct {v7, v8, v6}, Losi;-><init>(Losg;Looz;)V

    :cond_b
    move-object v8, v2

    check-cast v8, Losg;

    iget-object v8, v8, Losg;->b:Ljava/lang/Object;

    check-cast v8, Losm;

    invoke-virtual {v8, v7}, Losm;->f(Lote;)Z

    move-result v8

    if-eqz v8, :cond_c

    move-object v8, v2

    check-cast v8, Losg;

    iget-object v8, v8, Losg;->b:Ljava/lang/Object;

    invoke-static {v6, v7}, Losm;->n(Looz;Lote;)V

    goto :goto_8

    :cond_c
    move-object v8, v2

    check-cast v8, Losg;

    iget-object v8, v8, Losg;->b:Ljava/lang/Object;

    check-cast v8, Losm;

    invoke-virtual {v8}, Losm;->a()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v2

    check-cast v9, Losg;

    iput-object v8, v9, Losg;->a:Ljava/lang/Object;

    instance-of v9, v8, Losy;

    if-eqz v9, :cond_e

    check-cast v8, Losy;

    iget-object v7, v8, Losy;->a:Ljava/lang/Throwable;

    if-nez v7, :cond_d

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v6, v7}, Loku;->e(Ljava/lang/Object;)V

    goto :goto_8

    :cond_d
    invoke-virtual {v8}, Losy;->e()Ljava/lang/Throwable;

    move-result-object v7

    invoke-static {v7}, Lljr;->aN(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Loku;->e(Ljava/lang/Object;)V

    goto :goto_8

    :cond_e
    sget-object v9, Losn;->d:Loxb;

    if-eq v8, v9, :cond_b

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Looz;->b(Ljava/lang/Object;Lomk;)V

    :goto_8
    invoke-virtual {v6}, Lopa;->m()Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Lolc;->a:Lolc;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :goto_9
    if-eq v6, v0, :cond_12

    :goto_a
    :try_start_6
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_11

    move-object v6, v2

    check-cast v6, Losg;

    iget-object v6, v6, Losg;->a:Ljava/lang/Object;

    instance-of v7, v6, Losy;

    if-nez v7, :cond_10

    sget-object v7, Losn;->d:Loxb;

    if-eq v6, v7, :cond_f

    move-object v6, v2

    check-cast v6, Losg;

    iput-object v7, v6, Losg;->a:Ljava/lang/Object;

    iget-object v6, v5, Lapg;->e:Ljava/util/concurrent/Callable;

    check-cast v6, Llye;

    invoke-virtual {v6}, Llye;->a()Ljava/util/List;

    move-result-object v6

    iget-object v7, v5, Lapg;->f:Loss;

    iput-object v2, v5, Lapg;->a:Ljava/lang/Object;

    const/4 v8, 0x2

    iput v8, v5, Lapg;->b:I

    invoke-interface {v7, v6, v5}, Loss;->q(Ljava/lang/Object;Loku;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_8

    return-object v0

    :cond_f
    const-string v0, "\'hasNext\' should be called prior to \'next\' invocation"

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_10
    check-cast v6, Losy;

    invoke-virtual {v6}, Losy;->e()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Loxa;->b(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :cond_11
    iget-object v0, v5, Lapg;->c:Lapt;

    iget-object v0, v0, Lapt;->e:Lapr;

    iget-object v2, v5, Lapg;->g:Lapp;

    invoke-virtual {v0, v2}, Lapr;->a(Lapp;)V

    sget-object v0, Lojk;->a:Lojk;

    return-object v0

    :catchall_3
    move-exception v0

    goto :goto_c

    :cond_12
    return-object v0

    :catchall_4
    move-exception v0

    goto :goto_c

    :goto_b
    move-object v5, v1

    :goto_c
    iget-object v2, v5, Lapg;->c:Lapt;

    iget-object v2, v2, Lapt;->e:Lapr;

    iget-object v3, v5, Lapg;->g:Lapp;

    invoke-virtual {v2, v3}, Lapr;->a(Lapp;)V

    goto :goto_e

    :goto_d
    throw v0

    :goto_e
    goto :goto_d

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/lang/Object;Loku;)Loku;
    .locals 7

    new-instance p1, Lapg;

    iget-object v1, p0, Lapg;->c:Lapt;

    iget-object v2, p0, Lapg;->g:Lapp;

    iget-object v3, p0, Lapg;->d:Loss;

    iget-object v4, p0, Lapg;->e:Ljava/util/concurrent/Callable;

    iget-object v5, p0, Lapg;->f:Loss;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lapg;-><init>(Lapt;Lapp;Loss;Ljava/util/concurrent/Callable;Loss;Loku;)V

    return-object p1
.end method
