.class public final Lqld;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lqlb;


# instance fields
.field public final a:Lsui;

.field public final b:Lsui;

.field public final c:Lsui;

.field public final d:Lsui;

.field public final e:Lsuu;

.field public final f:Lsuu;

.field public final g:Lsuu;

.field public final h:Ljava/util/List;

.field public i:Z

.field private final j:Lqlh;

.field private final k:Z

.field private l:Z


# direct methods
.method public constructor <init>(Lsui;Lsui;Lsui;Lsui;ZLjava/util/concurrent/Executor;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p1}, Lsuu;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Ljava/util/ArrayList;

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
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_15

    nop

    nop

    :goto_4
    invoke-direct {p1}, Lsuu;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Lqld;->e:Lsuu;

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

    :goto_6
    invoke-direct {p1, p6}, Lqlh;-><init>(Ljava/util/concurrent/Executor;)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    iput-object p1, p0, Lqld;->j:Lqlh;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8
    iput-object p1, p0, Lqld;->g:Lsuu;

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

    nop

    :goto_9
    iput-object p4, p0, Lqld;->d:Lsui;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_a
    new-instance p1, Lsuu;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    new-instance p1, Lsuu;

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

    :goto_c
    iput-object p1, p0, Lqld;->a:Lsui;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_d
    invoke-direct {p1}, Lsuu;-><init>()V

    goto/32 :goto_12

    nop

    nop

    :goto_e
    new-instance p1, Lqlh;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput-object p3, p0, Lqld;->c:Lsui;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    nop

    :goto_11
    iput-object p2, p0, Lqld;->b:Lsui;

    nop

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

    nop

    :goto_12
    iput-object p1, p0, Lqld;->f:Lsuu;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_13
    new-instance p1, Lsuu;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_14
    iput-boolean p5, p0, Lqld;->k:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_15
    iput-object v0, p0, Lqld;->h:Ljava/util/List;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Lsui;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lqld;->g:Lsuu;

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
    return-object p0

    nop

    nop

    nop
.end method

.method public final declared-synchronized b()V
    .locals 6

    goto/32 :goto_4

    nop

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

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-boolean v0, p0, Lqld;->l:Z

    nop

    nop

    nop

    nop

    if-nez v0, :cond_3

    nop

    nop

    const/4 v0, 0x1

    nop

    nop

    iput-boolean v0, p0, Lqld;->l:Z

    nop

    nop

    iget-object v1, p0, Lqld;->g:Lsuu;

    nop

    new-instance v2, Lqlc;

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2, p0, v3}, Lqlc;-><init>(Ljava/lang/Object;I)V

    iget-object v4, p0, Lqld;->j:Lqlh;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2, v4}, Lsuu;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object v1, p0, Lqld;->e:Lsuu;

    nop

    iget-object v2, p0, Lqld;->a:Lsui;

    nop

    const/4 v4, 0x4

    nop

    new-array v5, v4, [Lsui;

    nop

    nop

    nop

    nop

    aput-object v2, v5, v3

    nop

    nop

    nop

    nop

    iget-object v2, p0, Lqld;->b:Lsui;

    nop

    aput-object v2, v5, v0

    nop

    iget-object v0, p0, Lqld;->c:Lsui;

    nop

    nop

    nop

    const/4 v2, 0x2

    nop

    nop

    nop

    aput-object v0, v5, v2

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lqld;->d:Lsui;

    nop

    nop

    const/4 v3, 0x3

    nop

    nop

    nop

    aput-object v0, v5, v3

    nop

    nop

    nop

    invoke-static {v5}, Lsgj;->L([Lsui;)Lsui;

    move-result-object v0

    nop

    nop

    nop

    nop

    new-instance v5, Lqbj;

    nop

    nop

    nop

    nop

    invoke-direct {v5, p0, v4}, Lqbj;-><init>(Ljava/lang/Object;I)V

    iget-object v4, p0, Lqld;->j:Lqlh;

    nop

    invoke-static {v0, v5, v4}, Lsso;->j(Lsui;Lssx;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object v0

    nop

    invoke-virtual {v1, v0}, Lsuu;->f(Lsui;)Z

    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lqld;->e:Lsuu;

    nop

    nop

    nop

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lqld;->h:Ljava/util/List;

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

    nop

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_0

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    nop

    check-cast v4, Lqlf;

    nop

    nop

    nop

    nop

    nop

    iget-object v4, v4, Lqlf;->b:Lsuu;

    nop

    nop

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    nop

    nop

    :cond_0
    invoke-static {v0}, Lsgj;->K(Ljava/lang/Iterable;)Lsui;

    move-result-object v0

    nop

    nop

    nop

    nop

    new-instance v1, Lqlc;

    nop

    nop

    nop

    invoke-direct {v1, p0, v2}, Lqlc;-><init>(Ljava/lang/Object;I)V

    iget-object v2, p0, Lqld;->j:Lqlh;

    nop

    nop

    nop

    invoke-interface {v0, v1, v2}, Lsui;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lqld;->h:Ljava/util/List;

    nop

    nop

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_1

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    check-cast v2, Lqlf;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v2, Lqlf;->e:Lsuu;

    nop

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    nop

    nop

    :cond_1
    invoke-static {v0}, Lsgj;->K(Ljava/lang/Iterable;)Lsui;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    new-instance v1, Lqlc;

    nop

    nop

    nop

    invoke-direct {v1, p0, v3}, Lqlc;-><init>(Ljava/lang/Object;I)V

    iget-object v2, p0, Lqld;->j:Lqlh;

    nop

    nop

    nop

    invoke-interface {v0, v1, v2}, Lsui;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_6

    nop

    nop

    :goto_4
    const v0, 0x12

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

    :goto_5
    if-lez v0, :cond_2

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_2
    goto/32 :goto_9

    nop

    :goto_6
    monitor-exit p0

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

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    const-string v1, "Muxer already started. Cannot call start twice."

    nop

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :catchall_0
    move-exception v0

    nop

    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_a

    nop

    :goto_9
    goto/32 :goto_d

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_c
    throw v0

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
    const v1, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop
.end method

.method public final declared-synchronized c(Lqar;)Lqle;
    .locals 3

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_1
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-boolean v0, p0, Lqld;->l:Z

    nop

    nop

    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lqld;->j:Lqlh;

    nop

    iget-object p1, p1, Lqar;->a:Ljava/lang/Object;

    nop

    nop

    nop

    new-instance v1, Lqlf;

    nop

    nop

    nop

    nop

    nop

    new-instance v2, Lqlh;

    nop

    invoke-direct {v2, v0}, Lqlh;-><init>(Ljava/util/concurrent/Executor;)V

    invoke-direct {v1, p1, v2}, Lqlf;-><init>(Lsui;Lqlh;)V

    iget-object p1, p0, Lqld;->h:Ljava/util/List;

    nop

    nop

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Lqld;->k:Z

    nop

    nop

    nop

    if-eqz p1, :cond_2

    nop

    nop

    nop

    nop

    nop

    new-instance p1, Lqla;

    nop

    nop

    nop

    invoke-direct {p1, v1}, Lqla;-><init>(Lqle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_6

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

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_5
    const v0, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    monitor-exit p0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-object v1

    nop

    nop

    nop

    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    const-string v0, "Muxer already started. No tracks can be added now."

    nop

    nop

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    :goto_b
    const v1, 0x1c

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_e
    return-object p1

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    nop
.end method
