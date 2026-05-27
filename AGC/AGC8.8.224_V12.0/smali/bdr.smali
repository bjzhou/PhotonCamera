.class public final Lbdr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lazd;

.field private final b:Z

.field private final c:Lbkb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "StopWorkRunnable"

    invoke-static {v0}, Laxq;->b(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lazd;Lbkb;Z[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbdr;->a:Lazd;

    iput-object p2, p0, Lbdr;->c:Lbkb;

    iput-boolean p3, p0, Lbdr;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-boolean v0, p0, Lbdr;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbdr;->a:Lazd;

    iget-object v0, v0, Lazd;->f:Layp;

    iget-object v1, p0, Lbdr;->c:Lbkb;

    iget-object v1, v1, Lbkb;->a:Ljava/lang/Object;

    check-cast v1, Lbbx;

    iget-object v1, v1, Lbbx;->a:Ljava/lang/String;

    iget-object v2, v0, Layp;->f:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Laxq;->a()Laxq;

    iget-object v3, v0, Layp;->b:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lazg;

    if-eqz v3, :cond_0

    iget-object v0, v0, Layp;->d:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3}, Layp;->f(Lazg;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    iget-object v0, p0, Lbdr;->a:Lazd;

    iget-object v0, v0, Lazd;->f:Layp;

    iget-object v1, p0, Lbdr;->c:Lbkb;

    iget-object v2, v1, Lbkb;->a:Ljava/lang/Object;

    check-cast v2, Lbbx;

    iget-object v2, v2, Lbbx;->a:Ljava/lang/String;

    iget-object v3, v0, Layp;->f:Ljava/lang/Object;

    monitor-enter v3

    :try_start_2
    iget-object v4, v0, Layp;->c:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lazg;

    if-nez v4, :cond_2

    invoke-static {}, Laxq;->a()Laxq;

    monitor-exit v3

    goto :goto_1

    :cond_2
    iget-object v5, v0, Layp;->d:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    if-eqz v5, :cond_4

    invoke-interface {v5, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {}, Laxq;->a()Laxq;

    iget-object v0, v0, Layp;->d:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v4}, Layp;->f(Lazg;)V

    goto :goto_1

    :cond_4
    :goto_0
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    invoke-static {}, Laxq;->a()Laxq;

    iget-object v0, p0, Lbdr;->c:Lbkb;

    iget-object v0, v0, Lbkb;->a:Ljava/lang/Object;

    return-void

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method
