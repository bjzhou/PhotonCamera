.class public final Lazi;
.super Ljava/lang/Object;

# interfaces
.implements Layr;
.implements Lbab;
.implements Layc;


# instance fields
.field a:Ljava/lang/Boolean;

.field private final b:Landroid/content/Context;

.field private final c:Lazd;

.field private final d:Lbac;

.field private final e:Ljava/util/Set;

.field private final f:Lazh;

.field private g:Z

.field private final h:Ljava/lang/Object;

.field private final i:Lbby;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "GreedyScheduler"

    invoke-static {v0}, Laxq;->b(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Laxd;Lbbc;Lazd;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lazi;->e:Ljava/util/Set;

    new-instance v0, Lbby;

    invoke-direct {v0}, Lbby;-><init>()V

    iput-object v0, p0, Lazi;->i:Lbby;

    iput-object p1, p0, Lazi;->b:Landroid/content/Context;

    iput-object p4, p0, Lazi;->c:Lazd;

    new-instance p1, Lbad;

    invoke-direct {p1, p3, p0}, Lbad;-><init>(Lbbc;Lbab;)V

    iput-object p1, p0, Lazi;->d:Lbac;

    new-instance p1, Lazh;

    iget-object p2, p2, Laxd;->f:Lbkb;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p2, p3, p3}, Lazh;-><init>(Lazi;Lbkb;[B[B)V

    iput-object p1, p0, Lazi;->f:Lazh;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lazi;->h:Ljava/lang/Object;

    return-void
.end method

.method private final g()V
    .locals 2

    iget-object v0, p0, Lazi;->c:Lazd;

    iget-object v0, v0, Lazd;->c:Laxd;

    iget-object v1, p0, Lazi;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lbdo;->a(Landroid/content/Context;Laxd;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lazi;->a:Ljava/lang/Boolean;

    return-void
.end method

.method private final h()V
    .locals 1

    iget-boolean v0, p0, Lazi;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lazi;->c:Lazd;

    iget-object v0, v0, Lazd;->f:Layp;

    invoke-virtual {v0, p0}, Layp;->b(Layc;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lazi;->g:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lbbx;Z)V
    .locals 3

    iget-object p2, p0, Lazi;->i:Lbby;

    invoke-virtual {p2, p1}, Lbby;->E(Lbbx;)Lbkb;

    iget-object p2, p0, Lazi;->h:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lazi;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbcj;

    invoke-static {v1}, Lbbi;->b(Lbcj;)Lbbx;

    move-result-object v2

    invoke-virtual {v2, p1}, Lbbx;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Laxq;->a()Laxq;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping tracking for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lazi;->e:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lazi;->d:Lbac;

    iget-object v0, p0, Lazi;->e:Ljava/util/Set;

    invoke-interface {p1, v0}, Lbac;->a(Ljava/lang/Iterable;)V

    :cond_1
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lazi;->a:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lazi;->g()V

    :cond_0
    iget-object v0, p0, Lazi;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Laxq;->a()Laxq;

    return-void

    :cond_1
    invoke-direct {p0}, Lazi;->h()V

    invoke-static {}, Laxq;->a()Laxq;

    iget-object v0, p0, Lazi;->f:Lazh;

    if-eqz v0, :cond_2

    iget-object v1, v0, Lazh;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    iget-object v0, v0, Lazh;->c:Lbkb;

    invoke-virtual {v0, v1}, Lbkb;->g(Ljava/lang/Runnable;)V

    :cond_2
    iget-object v0, p0, Lazi;->i:Lbby;

    invoke-virtual {v0, p1}, Lbby;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbkb;

    iget-object v1, p0, Lazi;->c:Lazd;

    invoke-virtual {v1, v0}, Lazd;->i(Lbkb;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final varargs c([Lbcj;)V
    .locals 11

    iget-object v0, p0, Lazi;->a:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lazi;->g()V

    :cond_0
    iget-object v0, p0, Lazi;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Laxq;->a()Laxq;

    return-void

    :cond_1
    invoke-direct {p0}, Lazi;->h()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_9

    aget-object v4, p1, v3

    invoke-static {v4}, Lbbi;->b(Lbcj;)Lbbx;

    move-result-object v5

    iget-object v6, p0, Lazi;->i:Lbby;

    invoke-virtual {v6, v5}, Lbby;->b(Lbbx;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-virtual {v4}, Lbcj;->a()J

    move-result-wide v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget v9, v4, Lbcj;->r:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_8

    cmp-long v9, v7, v5

    if-gez v9, :cond_4

    iget-object v5, p0, Lazi;->f:Lazh;

    if-eqz v5, :cond_8

    iget-object v6, v5, Lazh;->b:Ljava/util/Map;

    iget-object v7, v4, Lbcj;->a:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Runnable;

    if-eqz v6, :cond_3

    iget-object v7, v5, Lazh;->c:Lbkb;

    invoke-virtual {v7, v6}, Lbkb;->g(Ljava/lang/Runnable;)V

    :cond_3
    new-instance v6, Lbd;

    const/16 v7, 0x13

    invoke-direct {v6, v5, v4, v7}, Lbd;-><init>(Lazh;Lbcj;I)V

    iget-object v7, v5, Lazh;->b:Ljava/util/Map;

    iget-object v8, v4, Lbcj;->a:Ljava/lang/String;

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v4}, Lbcj;->a()J

    move-result-wide v9

    sub-long/2addr v9, v7

    iget-object v4, v5, Lazh;->c:Lbkb;

    invoke-virtual {v4, v9, v10, v6}, Lbkb;->h(JLjava/lang/Runnable;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v4}, Lbcj;->c()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, v4, Lbcj;->i:Laxf;

    iget-boolean v6, v5, Laxf;->c:Z

    if-eqz v6, :cond_5

    invoke-static {}, Laxq;->a()Laxq;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ". Requires device idle."

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    invoke-virtual {v5}, Laxf;->a()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {}, Laxq;->a()Laxq;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ". Requires ContentUri triggers."

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v4, v4, Lbcj;->a:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    iget-object v5, p0, Lazi;->i:Lbby;

    invoke-static {v4}, Lbbi;->b(Lbcj;)Lbbx;

    move-result-object v6

    invoke-virtual {v5, v6}, Lbby;->b(Lbbx;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-static {}, Laxq;->a()Laxq;

    iget-object v5, v4, Lbcj;->a:Ljava/lang/String;

    iget-object v5, p0, Lazi;->c:Lazd;

    iget-object v6, p0, Lazi;->i:Lbby;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lbbi;->b(Lbcj;)Lbbx;

    move-result-object v4

    invoke-virtual {v6, v4}, Lbby;->F(Lbbx;)Lbkb;

    move-result-object v4

    invoke-virtual {v5, v4}, Lazd;->h(Lbkb;)V

    :cond_8
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_9
    iget-object p1, p0, Lazi;->h:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, ","

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    invoke-static {}, Laxq;->a()Laxq;

    iget-object v1, p0, Lazi;->e:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lazi;->d:Lbac;

    iget-object v1, p0, Lazi;->e:Ljava/util/Set;

    invoke-interface {v0, v1}, Lbac;->a(Ljava/lang/Iterable;)V

    :cond_a
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public final d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e(Ljava/util/List;)V
    .locals 3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbcj;

    invoke-static {v0}, Lbbi;->b(Lbcj;)Lbbx;

    move-result-object v0

    iget-object v1, p0, Lazi;->i:Lbby;

    invoke-virtual {v1, v0}, Lbby;->b(Lbbx;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Laxq;->a()Laxq;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constraints met: Scheduling work ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    iget-object v1, p0, Lazi;->c:Lazd;

    iget-object v2, p0, Lazi;->i:Lbby;

    invoke-virtual {v2, v0}, Lbby;->F(Lbbx;)Lbkb;

    move-result-object v0

    invoke-virtual {v1, v0}, Lazd;->h(Lbkb;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final f(Ljava/util/List;)V
    .locals 3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbcj;

    invoke-static {v0}, Lbbi;->b(Lbcj;)Lbbx;

    move-result-object v0

    invoke-static {}, Laxq;->a()Laxq;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constraints not met: Cancelling work ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    iget-object v1, p0, Lazi;->i:Lbby;

    invoke-virtual {v1, v0}, Lbby;->E(Lbbx;)Lbkb;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lazi;->c:Lazd;

    invoke-virtual {v1, v0}, Lazd;->i(Lbkb;)V

    goto :goto_0

    :cond_1
    return-void
.end method
