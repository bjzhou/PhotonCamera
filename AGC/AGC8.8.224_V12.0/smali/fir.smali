.class public final synthetic Lfir;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lkbc;

.field public final synthetic b:Loiw;

.field public final synthetic c:Loiw;

.field public final synthetic d:Loiw;

.field public final synthetic e:Lfgg;

.field public final synthetic f:Loiw;

.field public final synthetic g:Ljava/util/concurrent/Executor;

.field public final synthetic h:Loiw;

.field public final synthetic i:Loiw;

.field public final synthetic j:Loiw;

.field public final synthetic k:Loiw;


# direct methods
.method public synthetic constructor <init>(Lkbc;Loiw;Loiw;Loiw;Lfgg;Loiw;Ljava/util/concurrent/Executor;Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfir;->a:Lkbc;

    iput-object p2, p0, Lfir;->b:Loiw;

    iput-object p3, p0, Lfir;->c:Loiw;

    iput-object p4, p0, Lfir;->d:Loiw;

    iput-object p5, p0, Lfir;->e:Lfgg;

    iput-object p6, p0, Lfir;->f:Loiw;

    iput-object p7, p0, Lfir;->g:Ljava/util/concurrent/Executor;

    iput-object p8, p0, Lfir;->h:Loiw;

    iput-object p9, p0, Lfir;->i:Loiw;

    iput-object p10, p0, Lfir;->j:Loiw;

    iput-object p11, p0, Lfir;->k:Loiw;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 22

    move-object/from16 v1, p0

    iget-object v0, v1, Lfir;->a:Lkbc;

    const-string v2, "MICRO_EncoderModule#runEncoderStartupTask"

    iget-object v3, v1, Lfir;->b:Loiw;

    iget-object v5, v1, Lfir;->c:Loiw;

    iget-object v11, v1, Lfir;->d:Loiw;

    iget-object v12, v1, Lfir;->e:Lfgg;

    iget-object v13, v1, Lfir;->f:Loiw;

    iget-object v14, v1, Lfir;->g:Ljava/util/concurrent/Executor;

    iget-object v15, v1, Lfir;->h:Loiw;

    iget-object v10, v1, Lfir;->i:Loiw;

    iget-object v9, v1, Lfir;->j:Loiw;

    iget-object v8, v1, Lfir;->k:Loiw;

    invoke-interface {v0, v2}, Lkbc;->e(Ljava/lang/String;)V

    invoke-interface {v3}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lgkr;

    invoke-interface {v5}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfey;

    iget-object v3, v2, Lfey;->d:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, v2, Lfey;->b:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, v2, Lfey;->d:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v7, Ljava/util/ArrayList;

    iget-object v1, v2, Lfey;->c:Ljava/util/List;

    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, v2, Lfey;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Runnable;

    invoke-interface/range {v16 .. v16}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-interface {v11}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljuf;

    new-instance v3, Leid;

    const/16 v7, 0xa

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v4, v3

    move-object/from16 v19, v8

    move-object/from16 v8, v16

    move-object/from16 v20, v9

    move-object/from16 v9, v17

    move-object/from16 v21, v10

    move-object/from16 v10, v18

    invoke-direct/range {v4 .. v10}, Leid;-><init>(Loiw;Lgkr;I[B[B[B)V

    invoke-virtual {v1, v3}, Ljuf;->d(Lkad;)V

    new-instance v1, Lfis;

    invoke-direct {v1, v13, v2}, Lfis;-><init>(Loiw;I)V

    invoke-interface {v12, v1, v14}, Lfgg;->g(Lfgf;Ljava/util/concurrent/Executor;)V

    invoke-interface {v15}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfex;

    iget-object v3, v1, Lfex;->b:Ljuf;

    iget-object v4, v1, Lfex;->a:Lhnb;

    invoke-interface {v4, v1}, Lhnb;->f(Lhmz;)Lkad;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljuf;->d(Lkad;)V

    invoke-interface {v11}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljuf;

    invoke-interface {v15}, Loiw;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfex;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Leym;

    const/4 v5, 0x5

    invoke-direct {v4, v3, v5}, Leym;-><init>(Lfex;I)V

    invoke-virtual {v1, v4}, Ljuf;->d(Lkad;)V

    new-instance v1, Lfib;

    const/4 v3, 0x4

    move-object/from16 v4, v21

    invoke-direct {v1, v4, v3}, Lfib;-><init>(Loiw;I)V

    invoke-interface {v14, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-interface {v11}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljuf;

    new-instance v3, Lfit;

    move-object/from16 v5, v19

    move-object/from16 v4, v20

    invoke-direct {v3, v0, v4, v5, v2}, Lfit;-><init>(Lkbc;Loiw;Loiw;I)V

    invoke-virtual {v1, v3}, Ljuf;->d(Lkad;)V

    invoke-interface {v0}, Lkbc;->f()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method
