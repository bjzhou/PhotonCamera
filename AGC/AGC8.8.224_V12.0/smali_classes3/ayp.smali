.class public final Layp;
.super Ljava/lang/Object;

# interfaces
.implements Layc;
.implements Lbbd;


# static fields
.field private static final g:Ljava/lang/String;


# instance fields
.field public final a:Landroidx/work/impl/WorkDatabase;

.field public final b:Ljava/util/Map;

.field public final c:Ljava/util/Map;

.field public final d:Ljava/util/Map;

.field public final e:Ljava/util/Set;

.field public final f:Ljava/lang/Object;

.field private final h:Landroid/content/Context;

.field private final i:Laxd;

.field private final j:Ljava/util/List;

.field private final k:Lva;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Processor"

    invoke-static {v0}, Laxq;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Layp;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Laxd;Lva;Landroidx/work/impl/WorkDatabase;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Layp;->h:Landroid/content/Context;

    iput-object p2, p0, Layp;->i:Laxd;

    iput-object p3, p0, Layp;->k:Lva;

    iput-object p4, p0, Layp;->a:Landroidx/work/impl/WorkDatabase;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Layp;->c:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Layp;->b:Ljava/util/Map;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Layp;->e:Ljava/util/Set;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Layp;->j:Ljava/util/List;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Layp;->f:Ljava/lang/Object;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Layp;->d:Ljava/util/Map;

    return-void
.end method

.method public static f(Lazg;)V
    .locals 2

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lazg;->e:Z

    invoke-virtual {p0}, Lazg;->c()Z

    iget-object v1, p0, Lazg;->g:Lbej;

    invoke-virtual {v1, v0}, Lbej;->cancel(Z)Z

    iget-object v0, p0, Lazg;->d:Laxp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lazg;->g:Lbej;

    invoke-virtual {v0}, Lbej;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lazg;->d:Laxp;

    invoke-virtual {p0}, Laxp;->h()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WorkSpec "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lazg;->c:Lbcj;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is already done. Not interrupting."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Laxq;->a()Laxq;

    :goto_0
    invoke-static {}, Laxq;->a()Laxq;

    return-void

    :cond_1
    invoke-static {}, Laxq;->a()Laxq;

    return-void
.end method

.method private final h(Lbbx;)V
    .locals 3

    iget-object v0, p0, Layp;->k:Lva;

    iget-object v0, v0, Lva;->b:Ljava/lang/Object;

    new-instance v1, Lbd;

    const/16 v2, 0x10

    invoke-direct {v1, p0, p1, v2}, Lbd;-><init>(Layp;Lbbx;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final a(Lbbx;Z)V
    .locals 3

    iget-object v0, p0, Layp;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Layp;->c:Ljava/util/Map;

    iget-object v2, p1, Lbbx;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lazg;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lazg;->c:Lbcj;

    invoke-static {v1}, Lbbi;->b(Lbcj;)Lbbx;

    move-result-object v1

    invoke-virtual {p1, v1}, Lbbx;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Layp;->c:Ljava/util/Map;

    iget-object v2, p1, Lbbx;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {}, Laxq;->a()Laxq;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    iget-object v1, p0, Layp;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Layc;

    invoke-interface {v2, p1, p2}, Layc;->a(Lbbx;Z)V

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final b(Layc;)V
    .locals 2

    iget-object v0, p0, Layp;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Layp;->j:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final c(Layc;)V
    .locals 2

    iget-object v0, p0, Layp;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Layp;->j:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final d()V
    .locals 4

    iget-object v0, p0, Layp;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Layp;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Layp;->h:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Landroidx/work/impl/foreground/SystemForegroundService;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ACTION_STOP_FOREGROUND"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Layp;->h:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    invoke-static {}, Laxq;->a()Laxq;

    sget-object v2, Layp;->g:Ljava/lang/String;

    const-string v3, "Unable to stop foreground service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public final e(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Layp;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Layp;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget-object v1, p0, Layp;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final g(Lbkb;)Z
    .locals 17

    move-object/from16 v10, p0

    move-object/from16 v0, p1

    iget-object v11, v0, Lbkb;->a:Ljava/lang/Object;

    move-object v1, v11

    check-cast v1, Lbbx;

    iget-object v12, v1, Lbbx;->a:Ljava/lang/String;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v10, Layp;->a:Landroidx/work/impl/WorkDatabase;

    new-instance v3, Lggl;

    const/4 v13, 0x1

    invoke-direct {v3, v10, v8, v12, v13}, Lggl;-><init>(Layp;Ljava/util/ArrayList;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Lapt;->d(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lbcj;

    const/4 v14, 0x0

    if-nez v7, :cond_0

    invoke-static {}, Laxq;->a()Laxq;

    sget-object v0, Layp;->g:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Didn\'t find WorkSpec for id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v10, v1}, Layp;->h(Lbbx;)V

    return v14

    :cond_0
    iget-object v15, v10, Layp;->f:Ljava/lang/Object;

    monitor-enter v15

    :try_start_0
    invoke-virtual {v10, v12}, Layp;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v10, Layp;->d:Ljava/util/Map;

    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbkb;

    iget-object v2, v2, Lbkb;->a:Ljava/lang/Object;

    check-cast v2, Lbbx;

    iget v2, v2, Lbbx;->b:I

    move-object v3, v11

    check-cast v3, Lbbx;

    iget v3, v3, Lbbx;->b:I

    if-ne v2, v3, :cond_1

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Laxq;->a()Laxq;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Work "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is already enqueued for processing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    check-cast v11, Lbbx;

    invoke-direct {v10, v11}, Layp;->h(Lbbx;)V

    :goto_0
    monitor-exit v15

    return v14

    :cond_2
    iget v1, v7, Lbcj;->q:I

    move-object v2, v11

    check-cast v2, Lbbx;

    iget v2, v2, Lbbx;->b:I

    if-eq v1, v2, :cond_3

    check-cast v11, Lbbx;

    invoke-direct {v10, v11}, Layp;->h(Lbbx;)V

    monitor-exit v15

    return v14

    :cond_3
    new-instance v16, Llij;

    iget-object v2, v10, Layp;->h:Landroid/content/Context;

    iget-object v3, v10, Layp;->i:Laxd;

    iget-object v4, v10, Layp;->k:Lva;

    iget-object v6, v10, Layp;->a:Landroidx/work/impl/WorkDatabase;

    const/4 v9, 0x0

    move-object/from16 v1, v16

    move-object/from16 v5, p0

    invoke-direct/range {v1 .. v9}, Llij;-><init>(Landroid/content/Context;Laxd;Lva;Lbbd;Landroidx/work/impl/WorkDatabase;Lbcj;Ljava/util/List;[B)V

    new-instance v7, Lazg;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    move-object/from16 v2, v16

    invoke-direct/range {v1 .. v6}, Lazg;-><init>(Llij;[B[B[B[B)V

    iget-object v1, v7, Lazg;->f:Lbej;

    new-instance v2, Layo;

    iget-object v3, v0, Lbkb;->a:Ljava/lang/Object;

    check-cast v3, Lbbx;

    invoke-direct {v2, v10, v3, v1, v14}, Layo;-><init>(Layc;Lbbx;Lnou;I)V

    iget-object v3, v10, Layp;->k:Lva;

    iget-object v3, v3, Lva;->b:Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lnou;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object v1, v10, Layp;->c:Ljava/util/Map;

    invoke-interface {v1, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, v10, Layp;->d:Ljava/util/Map;

    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v10, Layp;->k:Lva;

    iget-object v0, v0, Lva;->a:Ljava/lang/Object;

    check-cast v0, Lbdp;

    invoke-virtual {v0, v7}, Lbdp;->execute(Ljava/lang/Runnable;)V

    invoke-static {}, Laxq;->a()Laxq;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": processing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return v13

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
