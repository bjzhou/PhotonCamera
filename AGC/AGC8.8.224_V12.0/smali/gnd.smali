.class public final Lgnd;
.super Lgnc;


# instance fields
.field public final b:Lgvb;

.field public final c:Lkbc;

.field public final d:Limq;

.field public final e:Ldhi;

.field public final f:Logd;

.field public final g:Ljava/util/Map;

.field public final h:Ljvs;

.field public final i:Lfuz;

.field private final j:Ljava/util/concurrent/Executor;

.field private final k:Lgkf;


# direct methods
.method public constructor <init>(Lgue;Lcvr;Lgvb;Lfuz;Ljava/util/concurrent/Executor;Lkbc;Limq;Ldhi;Lgkf;Logd;Ljvs;[B[B[B[B[B)V
    .locals 10

    move-object v9, p0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p6

    invoke-direct/range {v0 .. v8}, Lgnc;-><init>(Lgue;Lcvr;Lkbc;[B[B[B[B[B)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v9, Lgnd;->g:Ljava/util/Map;

    move-object v0, p4

    iput-object v0, v9, Lgnd;->i:Lfuz;

    move-object v0, p3

    iput-object v0, v9, Lgnd;->b:Lgvb;

    move-object v0, p5

    iput-object v0, v9, Lgnd;->j:Ljava/util/concurrent/Executor;

    move-object/from16 v0, p6

    iput-object v0, v9, Lgnd;->c:Lkbc;

    move-object/from16 v0, p7

    iput-object v0, v9, Lgnd;->d:Limq;

    move-object/from16 v0, p8

    iput-object v0, v9, Lgnd;->e:Ldhi;

    move-object/from16 v0, p9

    iput-object v0, v9, Lgnd;->k:Lgkf;

    move-object/from16 v0, p10

    iput-object v0, v9, Lgnd;->f:Logd;

    move-object/from16 v0, p11

    iput-object v0, v9, Lgnd;->h:Ljvs;

    return-void
.end method


# virtual methods
.method public final g(Lgxy;)V
    .locals 2

    iget-object v0, p0, Lgnd;->g:Ljava/util/Map;

    iget-object v1, p0, Lgnd;->k:Lgkf;

    invoke-virtual {v1}, Lgkf;->a()Lebb;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lgnc;->a:Lcvr;

    invoke-virtual {v0, p1}, Lcvr;->K(Lgxy;)Leeb;

    move-result-object p1

    new-instance v0, Lgnb;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lgnb;-><init>(Lgnc;I)V

    invoke-virtual {p1, v0}, Leeb;->a(Lecm;)V

    invoke-virtual {p1, p0}, Leeb;->f(Lecw;)V

    return-void
.end method

.method protected final declared-synchronized j(Leea;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgnd;->g:Ljava/util/Map;

    iget-object v1, p1, Leea;->v:Lgkr;

    iget-object v1, v1, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {v1}, Lgxl;->h()Lgxy;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0, p1}, Lgnc;->j(Leea;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected final k(Leea;Lkpb;)V
    .locals 3

    invoke-virtual {p1}, Leea;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lkpb;->close()V

    return-void

    :cond_0
    iget-object v0, p0, Lgnd;->j:Ljava/util/concurrent/Executor;

    new-instance v1, Lggh;

    const/4 v2, 0x6

    invoke-direct {v1, p0, p2, p1, v2}, Lggh;-><init>(Lgnd;Lkpb;Leea;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
