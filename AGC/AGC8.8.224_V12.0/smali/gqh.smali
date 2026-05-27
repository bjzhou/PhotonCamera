.class public final Lgqh;
.super Ljava/lang/Object;

# interfaces
.implements Lgqj;
.implements Lgqp;


# static fields
.field private static final l:Lkaf;


# instance fields
.field protected final a:Ljava/util/concurrent/ExecutorService;

.field protected final b:Ljava/util/concurrent/ExecutorService;

.field protected final c:Ljava/util/concurrent/ExecutorService;

.field protected final d:Ljava/util/concurrent/ExecutorService;

.field public final e:Ljava/util/Map;

.field public final f:Ljava/util/Map;

.field public final g:Ljava/util/Set;

.field public h:I

.field public i:I

.field public j:I

.field public final k:Lgqn;

.field private final m:Lgrf;

.field private final n:Lkbc;

.field private final o:Lkaf;

.field private final p:Lgpv;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkaf;

    const/16 v1, 0x200

    const/16 v2, 0x180

    invoke-direct {v0, v1, v2}, Lkaf;-><init>(II)V

    sput-object v0, Lgqh;->l:Lkaf;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Lgrf;Lgpv;Lkbc;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lgqh;->h:I

    iput v0, p0, Lgqh;->i:I

    iput v0, p0, Lgqh;->j:I

    iput-object p1, p0, Lgqh;->a:Ljava/util/concurrent/ExecutorService;

    iput-object p2, p0, Lgqh;->b:Ljava/util/concurrent/ExecutorService;

    iput-object p3, p0, Lgqh;->c:Ljava/util/concurrent/ExecutorService;

    iput-object p4, p0, Lgqh;->d:Ljava/util/concurrent/ExecutorService;

    iput-object p5, p0, Lgqh;->m:Lgrf;

    new-instance p1, Lgqn;

    invoke-direct {p1}, Lgqn;-><init>()V

    iput-object p1, p0, Lgqh;->k:Lgqn;

    iput-object p6, p0, Lgqh;->p:Lgpv;

    iput-object p7, p0, Lgqh;->n:Lkbc;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lgqh;->e:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lgqh;->f:Ljava/util/Map;

    new-instance p1, Lkaf;

    invoke-direct {p1, p8, p8}, Lkaf;-><init>(II)V

    iput-object p1, p0, Lgqh;->o:Lkaf;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lgqh;->g:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a(Lgra;)V
    .locals 2

    iget-object v0, p0, Lgqh;->f:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lgqh;->f:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b(Lkpb;Ljava/util/concurrent/Executor;)V
    .locals 4

    iget-object v0, p0, Lgqh;->e:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lgqh;->e:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgqf;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lgpn;->b()I

    move-result v2

    if-lez v2, :cond_4

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lgpn;->a(I)I

    iget v3, p0, Lgqh;->h:I

    add-int/2addr v3, v2

    iput v3, p0, Lgqh;->h:I

    invoke-virtual {v1}, Lgpn;->b()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lgqh;->e:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lgqh;->g:Ljava/util/Set;

    iget-object v3, p0, Lgqh;->e:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    iget-boolean v2, v1, Lgqf;->b:Z

    if-eqz v2, :cond_1

    new-instance v2, Lgps;

    const/4 v3, 0x3

    invoke-direct {v2, p0, p1, v3}, Lgps;-><init>(Lgqh;Lkpb;I)V

    if-nez p2, :cond_0

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    iget-boolean p1, v1, Lgqf;->a:Z

    if-eqz p1, :cond_3

    invoke-virtual {v1}, Lgpn;->d()V

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lgqh;->e:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    monitor-exit v0

    return-void

    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "ERROR: Task implementation did NOT balance its release."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final c(Lgxl;Ljava/util/Set;ZZLmqp;)Z
    .locals 9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgra;

    iget-object v3, v3, Lgra;->f:Lgqr;

    iget-object v3, v3, Lgqr;->a:Lkpb;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-nez v5, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    new-instance v3, Lgpn;

    invoke-direct {v3}, Lgpn;-><init>()V

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Lgpn;->e(I)V

    new-instance v5, Lgqo;

    invoke-direct {v5, v3, p1, p5}, Lgqo;-><init>(Lgpn;Lgxl;Lmqp;)V

    iget-object p1, p0, Lgqh;->f:Ljava/util/Map;

    monitor-enter p1

    :try_start_0
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_1
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgra;

    iget-object v6, p0, Lgqh;->f:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgxb;

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    const-string v6, "Overlap of Shadow Task association.  You\'ve possibly submitted the same task twice?"

    invoke-static {v3, v6}, Lmoz;->q(ZLjava/lang/Object;)V

    goto :goto_1

    :cond_3
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    new-instance p1, Lgxb;

    invoke-direct {p1, v5, v2}, Lgxb;-><init>(Lgqo;Ljava/util/Set;)V

    new-instance p5, Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {p5, v2}, Ljava/util/HashSet;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkpb;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lgqh;->e:Ljava/util/Map;

    monitor-enter v6

    :try_start_1
    iget-object v7, p0, Lgqh;->e:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_4

    const/4 v7, 0x1

    goto :goto_4

    :cond_4
    const/4 v7, 0x0

    :goto_4
    const-string v8, "Image is already being processed by another task."

    invoke-static {v7, v8}, Lmoz;->q(ZLjava/lang/Object;)V

    new-instance v7, Lgqf;

    invoke-direct {v7, p3, p4}, Lgqf;-><init>(ZZ)V

    invoke-virtual {v7, v5}, Lgpn;->e(I)V

    iget-object v8, p0, Lgqh;->e:Ljava/util/Map;

    invoke-interface {v8, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, p0, Lgqh;->h:I

    add-int/2addr v3, v5

    iput v3, p0, Lgqh;->h:I

    iget v3, p0, Lgqh;->i:I

    add-int/2addr v3, v4

    iput v3, p0, Lgqh;->i:I

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {p5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_5
    iget-object p3, p0, Lgqh;->p:Lgpv;

    iget-object p4, p1, Lgxb;->b:Ljava/lang/Object;

    invoke-virtual {p3, p4}, Lgpv;->a(Lgpx;)V

    invoke-virtual {p0, p2, p1}, Lgqh;->e(Ljava/util/Set;Lgxb;)V

    invoke-interface {p5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lgqf;

    iget-boolean p3, p2, Lgqf;->a:Z

    if-eqz p3, :cond_6

    invoke-virtual {p2}, Lgpn;->c()V

    goto :goto_5

    :cond_7
    return v4

    :catchall_1
    move-exception p2

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p2

    :cond_8
    return v1
.end method

.method public final d(Lgqr;Ljava/util/concurrent/Executor;Ljava/util/Set;Lgxl;Lmqp;)V
    .locals 13

    move-object v10, p0

    move-object/from16 v0, p3

    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    sget-object v1, Lgqi;->b:Lgqi;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v7, Lgqw;

    iget-object v6, v10, Lgqh;->m:Lgrf;

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    move-object/from16 v5, p4

    invoke-direct/range {v1 .. v6}, Lgqw;-><init>(Lgqr;Ljava/util/concurrent/Executor;Lgqp;Lgxl;Lgrf;)V

    sget-object v1, Lgqi;->a:Lgqi;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v9, Lgrc;

    sget-object v6, Lgqh;->l:Lkaf;

    invoke-static {v7}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v7

    iget-object v8, v10, Lgqh;->n:Lkbc;

    move-object v1, v9

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    move-object/from16 v5, p4

    invoke-direct/range {v1 .. v8}, Lgrc;-><init>(Lgqr;Ljava/util/concurrent/Executor;Lgqp;Lgxl;Lkaf;Lmqp;Lkbc;)V

    invoke-interface {v11, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v11, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object v1, Lgqi;->a:Lgqi;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v9, Lgrc;

    sget-object v6, Lgqh;->l:Lkaf;

    sget-object v7, Lmpx;->a:Lmpx;

    iget-object v8, v10, Lgqh;->n:Lkbc;

    move-object v1, v9

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    move-object/from16 v5, p4

    invoke-direct/range {v1 .. v8}, Lgrc;-><init>(Lgqr;Ljava/util/concurrent/Executor;Lgqp;Lgxl;Lkaf;Lmqp;Lkbc;)V

    invoke-interface {v11, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    sget-object v1, Lgqi;->c:Lgqi;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v12, Lgqx;

    const/4 v5, 0x3

    iget-object v7, v10, Lgqh;->o:Lkaf;

    const/4 v8, 0x3

    iget-object v9, v10, Lgqh;->n:Lkbc;

    move-object v1, v12

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v9}, Lgqx;-><init>(Lgqr;Ljava/util/concurrent/Executor;Lgqp;ILgxl;Lkaf;ILkbc;)V

    invoke-interface {v11, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    move-object/from16 v7, p5

    check-cast v7, Lmqt;

    iget-object v1, v7, Lmqt;->a:Ljava/lang/Object;

    check-cast v1, Lgqm;

    new-instance v2, Lgps;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v1, v3}, Lgps;-><init>(Lgqh;Lgqm;I)V

    invoke-static {v2}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v6

    sget-object v1, Lgqi;->d:Lgqi;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    sget-object v1, Lgqi;->e:Lgqi;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    move-object v1, p0

    move-object/from16 v2, p4

    move-object v3, v11

    invoke-virtual/range {v1 .. v6}, Lgqh;->c(Lgxl;Ljava/util/Set;ZZLmqp;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v10, Lgqh;->k:Lgqn;

    iget-object v1, v7, Lmqt;->a:Ljava/lang/Object;

    check-cast v1, Lgqm;

    move-object v2, p1

    iget-object v2, v2, Lgqr;->a:Lkpb;

    iget-object v3, v0, Lgqn;->a:Ljava/util/List;

    monitor-enter v3

    :try_start_0
    iget-object v4, v0, Lgqn;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    iget-object v4, v0, Lgqn;->a:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, v0, Lgqn;->a:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    if-nez v2, :cond_5

    iget-object v2, v0, Lgqn;->b:Ljava/util/HashMap;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    iget-object v4, v0, Lgqn;->b:Ljava/util/HashMap;

    invoke-interface {v2}, Lkpb;->d()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object v0, v0, Lgqn;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_6
    return-void
.end method

.method public final e(Ljava/util/Set;Lgxb;)V
    .locals 9

    iget-object v0, p0, Lgqh;->f:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgra;

    iget-object v2, p0, Lgqh;->f:Ljava/util/Map;

    invoke-interface {v2, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lgqg;

    iget-object v6, p0, Lgqh;->n:Lkbc;

    const/4 v7, 0x0

    move-object v2, v8

    move-object v3, p0

    move-object v4, p2

    move-object v5, v1

    invoke-direct/range {v2 .. v7}, Lgqg;-><init>(Lgqh;Lgxb;Lgra;Lkbc;[B)V

    iget v1, v1, Lgra;->h:I

    add-int/lit8 v1, v1, -0x1

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lgqh;->d:Ljava/util/concurrent/ExecutorService;

    goto :goto_1

    :pswitch_0
    iget-object v1, p0, Lgqh;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lgqh;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lgqh;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :goto_1
    invoke-interface {v1, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lgqh;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p0, Lgqh;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iget v2, p0, Lgqh;->h:I

    iget-object v3, p0, Lgqh;->k:Lgqn;

    iget-object v4, v3, Lgqn;->a:Ljava/util/List;

    monitor-enter v4

    :try_start_0
    iget-object v3, v3, Lgqn;->b:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v4, p0, Lgqh;->k:Lgqn;

    iget-object v5, v4, Lgqn;->a:Ljava/util/List;

    monitor-enter v5

    :try_start_1
    iget-object v4, v4, Lgqn;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ImageBackend Status BEGIN:\nShadow Image Map Size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\nImage Semaphore Map Size = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\nOutstandingImageRefs = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\nProxy Listener Map Size = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\nProxy Listener = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\nImageBackend Status END:\n"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
