.class public abstract Lbdg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final d:Layn;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Layn;

    invoke-direct {v0}, Layn;-><init>()V

    iput-object v0, p0, Lbdg;->d:Layn;

    return-void
.end method

.method public static b(Ljava/lang/String;Lazd;Z)Lbdg;
    .locals 1

    new-instance v0, Lbdf;

    invoke-direct {v0, p1, p0, p2}, Lbdf;-><init>(Lazd;Ljava/lang/String;Z)V

    return-object v0
.end method

.method static final c(Lazd;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lazd;->d:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->B()Lbck;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->w()Lbbj;

    move-result-object v0

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v3}, Lbck;->h(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    const/4 v4, 0x6

    invoke-interface {v1, v4, v3}, Lbck;->k(ILjava/lang/String;)V

    :cond_0
    invoke-interface {v0, v3}, Lbbj;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lazd;->f:Layp;

    iget-object v1, v0, Layp;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Laxq;->a()Laxq;

    iget-object v2, v0, Layp;->e:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Layp;->b:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lazg;

    if-nez v2, :cond_2

    iget-object v3, v0, Layp;->c:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lazg;

    goto :goto_1

    :cond_2
    move-object v3, v2

    :goto_1
    if-eqz v3, :cond_3

    iget-object v4, v0, Layp;->d:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3}, Layp;->f(Lazg;)V

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Layp;->d()V

    :cond_4
    iget-object p0, p0, Lazd;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Layr;

    invoke-interface {v0, p1}, Layr;->b(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method

.method static final d(Lazd;)V
    .locals 2

    iget-object v0, p0, Lazd;->c:Laxd;

    iget-object v1, p0, Lazd;->d:Landroidx/work/impl/WorkDatabase;

    iget-object p0, p0, Lazd;->e:Ljava/util/List;

    invoke-static {v0, v1, p0}, Layt;->a(Laxd;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final run()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lbdg;->a()V

    iget-object v0, p0, Lbdg;->d:Layn;

    sget-object v1, Laxu;->a:Laxt;

    invoke-virtual {v0, v1}, Layn;->a(Ldr;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lbdg;->d:Layn;

    new-instance v2, Laxr;

    invoke-direct {v2, v0}, Laxr;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Layn;->a(Ldr;)V

    return-void
.end method
