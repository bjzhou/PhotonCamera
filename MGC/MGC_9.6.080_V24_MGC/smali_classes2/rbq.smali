.class final Lrbq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lssw;


# instance fields
.field public a:Ljava/util/List;

.field final synthetic b:Lrbs;


# direct methods
.method public constructor <init>(Lrbs;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lrbq;->b:Lrbs;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Lsui;
    .locals 5

    goto/32 :goto_7

    nop

    nop

    :goto_0
    invoke-static {v0}, Lrkm;->g(Ljava/lang/String;)Lrow;

    move-result-object v0

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lrbq;->b:Lrbs;

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lrbs;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    monitor-enter v1

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v2, p0, Lrbq;->a:Ljava/util/List;

    nop

    nop

    if-nez v2, :cond_0

    nop

    nop

    nop

    iget-object v2, p0, Lrbq;->b:Lrbs;

    nop

    nop

    iget-object v3, v2, Lrbs;->d:Ljava/util/List;

    nop

    iput-object v3, p0, Lrbq;->a:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    nop

    nop

    iput-object v3, v2, Lrbs;->d:Ljava/util/List;

    nop

    nop

    nop

    nop

    :cond_0
    monitor-exit v1

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v1, Ljava/util/ArrayList;

    nop

    nop

    iget-object v2, p0, Lrbq;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    nop

    nop

    nop

    nop

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    iget-object v3, p0, Lrbq;->b:Lrbs;

    nop

    nop

    nop

    invoke-direct {v2, v3}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Ljava/lang/Object;)V

    iget-object v3, p0, Lrbq;->a:Ljava/util/List;

    nop

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    nop

    nop

    nop

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_1

    nop

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    nop

    check-cast v4, Lssx;

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-interface {v4, v2}, Lssx;->a(Ljava/lang/Object;)Lsui;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/32 :goto_f

    nop

    nop

    :goto_2
    goto/16 :goto_14

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_3
    return-object p0

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

    :try_start_4
    monitor-exit v1

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw p0

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p0

    nop

    nop

    :try_start_6
    invoke-virtual {v0}, Lrow;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/32 :goto_2

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_5
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x6

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    const v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_6

    nop

    :goto_b
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Lrow;->close()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

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
    iget-object v0, p0, Lrbq;->b:Lrbs;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_f
    goto/16 :goto_1

    nop

    nop

    nop

    :catch_0
    move-exception v2

    nop

    nop

    nop

    nop

    nop

    :try_start_7
    invoke-static {v2}, Lsgj;->N(Ljava/lang/Throwable;)Lsui;

    move-result-object v2

    nop

    nop

    nop

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {v1}, Lsgj;->ad(Ljava/lang/Iterable;)Lkjj;

    move-result-object v1

    nop

    nop

    nop

    new-instance v2, Lrbi;

    nop

    nop

    nop

    nop

    const/4 v3, 0x2

    nop

    invoke-direct {v2, p0, v3}, Lrbi;-><init>(Ljava/lang/Object;I)V

    sget-object p0, Lstd;->a:Lstd;

    nop

    nop

    nop

    invoke-virtual {v1, v2, p0}, Lkjj;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p0

    nop

    invoke-virtual {v0, p0}, Lrow;->a(Lsui;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const-string v1, "Initialize "

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_12
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_13
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_14
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_a

    nop

    :goto_16
    iget-object v0, v0, Lrbs;->a:Ljava/lang/String;

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
.end method
