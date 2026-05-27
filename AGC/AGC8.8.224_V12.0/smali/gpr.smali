.class public final Lgpr;
.super Ljava/lang/Object;

# interfaces
.implements Lgqa;


# instance fields
.field public final a:Ljvk;

.field public final b:J

.field public final c:Ljvs;

.field public final d:Ljava/lang/Object;

.field public e:Z

.field private final f:Ljzs;

.field private final g:Ljava/util/LinkedList;

.field private h:Ljava/util/List;

.field private final i:Lgpv;


# direct methods
.method public constructor <init>(Lfdz;Llas;Lgpv;[B)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljvk;

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, v3}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object v2, v1, Lgpr;->a:Ljvk;

    move-object/from16 v2, p3

    iput-object v2, v1, Lgpr;->i:Lgpv;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, v1, Lgpr;->g:Ljava/util/LinkedList;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v1, Lgpr;->d:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lgpr;->e:Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Lgpr;->h:Ljava/util/List;

    move-object/from16 v3, p2

    iget-wide v3, v3, Llas;->a:J

    const-wide/32 v5, 0x11e1a300

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    iput-wide v3, v1, Lgpr;->b:J

    new-instance v6, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    invoke-direct {v6, v1}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;-><init>(Lgpr;)V

    iget-object v3, v0, Lfdz;->a:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, v0, Lfdz;->c:Ljava/util/EnumMap;

    sget-object v5, Lfdv;->b:Lfdv;

    invoke-virtual {v4, v5}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    const/4 v15, 0x2

    if-eqz v4, :cond_0

    sget-object v2, Lfdv;->b:Lfdv;

    invoke-virtual {v2}, Lfdv;->name()Ljava/lang/String;

    monitor-exit v3

    goto :goto_0

    :cond_0
    sget-object v4, Lfdv;->b:Lfdv;

    invoke-virtual {v4}, Lfdv;->name()Ljava/lang/String;

    new-instance v7, Ljvk;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v7, v4}, Ljvk;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v6}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->m()Ljvs;

    move-result-object v4

    new-instance v5, Lfdx;

    invoke-direct {v5, v0, v2}, Lfdx;-><init>(Lfdz;I)V

    iget-object v2, v0, Lfdz;->b:Ljava/util/concurrent/Executor;

    invoke-interface {v4, v5, v2}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v2

    invoke-virtual {v6}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->l()Ljvs;

    move-result-object v4

    new-instance v5, Lfdx;

    invoke-direct {v5, v0, v15}, Lfdx;-><init>(Lfdz;I)V

    iget-object v8, v0, Lfdz;->b:Ljava/util/concurrent/Executor;

    invoke-interface {v4, v5, v8}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v4

    iget-object v14, v0, Lfdz;->c:Ljava/util/EnumMap;

    sget-object v13, Lfdv;->b:Lfdv;

    new-instance v12, Lfdy;

    invoke-static {v2, v4}, Lmvv;->m(Ljava/lang/Object;Ljava/lang/Object;)Lmvv;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v16, 0x0

    move-object v5, v12

    move-object v15, v12

    move-object v12, v2

    move-object v2, v13

    move-object v13, v4

    move-object v4, v14

    move-object/from16 v14, v16

    invoke-direct/range {v5 .. v14}, Lfdy;-><init>(Landroidx/wear/ambient/AmbientModeSupport$AmbientController;Ljvk;Ljava/util/Collection;I[B[B[B[B[B)V

    invoke-virtual {v4, v2, v15}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lfdz;->a()V

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    sget-object v2, Lfdv;->b:Lfdv;

    iget-object v4, v0, Lfdz;->a:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    iget-object v3, v0, Lfdz;->c:Ljava/util/EnumMap;

    invoke-virtual {v3, v2}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v0, v0, Lfdz;->c:Ljava/util/EnumMap;

    invoke-virtual {v0, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfdy;

    iget-object v0, v0, Lfdy;->a:Ljava/lang/Object;

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v0, v1, Lgpr;->c:Ljvs;

    new-instance v2, Lfnb;

    const/4 v3, 0x2

    invoke-direct {v2, v1, v3}, Lfnb;-><init>(Lgpr;I)V

    invoke-static {}, Lnsy;->q()Lnow;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    new-instance v0, Lgpp;

    invoke-direct {v0, v1}, Lgpp;-><init>(Lgpr;)V

    iput-object v0, v1, Lgpr;->f:Ljzs;

    return-void

    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Feature not registered: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private final d(Lgpx;)V
    .locals 6

    iget-object v0, p0, Lgpr;->d:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lgpr;->e:Z

    iget-object v1, p0, Lgpr;->a:Ljvk;

    iget-object v2, v1, Ljvk;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v4, p0, Lgpr;->b:J

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljvk;->bn(Ljava/lang/Object;)V

    iget-object v1, p0, Lgpr;->f:Ljzs;

    invoke-interface {p1, v1}, Lgpx;->c(Ljzs;)V

    iget-object v1, p0, Lgpr;->i:Lgpv;

    invoke-virtual {v1, p1}, Lgpv;->a(Lgpx;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private final e()V
    .locals 3

    iget-object v0, p0, Lgpr;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lgpr;->g:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    iget-object v1, p0, Lgpr;->h:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgpq;

    invoke-interface {v2}, Lgpq;->a()V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lgpr;->b:J

    return-wide v0
.end method

.method public final b(Lgpx;)V
    .locals 2

    iget-object v0, p0, Lgpr;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lgpr;->c:Ljvs;

    check-cast v1, Ljvk;

    iget-object v1, v1, Ljvk;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lgpr;->d(Lgpx;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lgpr;->g:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lgpr;->e()V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lgpr;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lgpr;->g:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lgpr;->g:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgpx;

    invoke-direct {p0, v1}, Lgpr;->d(Lgpx;)V

    invoke-direct {p0}, Lgpr;->e()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
