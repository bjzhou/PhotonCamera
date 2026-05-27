.class public final Llef;
.super Ljava/lang/Object;

# interfaces
.implements Llec;


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Llen;

.field private c:Z

.field private d:Z

.field private volatile e:Lmqp;

.field private final f:Ljava/lang/Object;

.field private final g:Lnph;

.field private final h:Lnph;

.field private final i:Lnph;


# direct methods
.method public constructor <init>(Llen;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v0

    iput-object v0, p0, Llef;->g:Lnph;

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v0

    iput-object v0, p0, Llef;->h:Lnph;

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v0

    iput-object v0, p0, Llef;->i:Lnph;

    iput-object p1, p0, Llef;->b:Llen;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Llef;->a:Ljava/util/List;

    const/4 p1, 0x0

    iput-boolean p1, p0, Llef;->c:Z

    iput-boolean p1, p0, Llef;->d:Z

    sget-object p1, Lmpx;->a:Lmpx;

    iput-object p1, p0, Llef;->e:Lmqp;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llef;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Lnou;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Llef;->d:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Llef;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Llef;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lleg;

    invoke-interface {v2}, Lleg;->e()V

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Llef;->c:Z

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v0

    new-instance v1, Llee;

    invoke-direct {v1, v0}, Llee;-><init>(Lnph;)V

    iget-object v2, p0, Llef;->b:Llen;

    invoke-interface {v2}, Llen;->a()Lnou;

    move-result-object v2

    sget-object v3, Lnnv;->a:Lnnv;

    invoke-static {v2, v1, v3}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final declared-synchronized b()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Llef;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Llef;->f:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Llef;->g:Lnph;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnph;->e(Ljava/lang/Object;)Z

    iget-object v1, p0, Llef;->h:Lnph;

    invoke-virtual {v1, v2}, Lnph;->e(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Llef;->i:Lnph;

    invoke-virtual {v0, v2}, Lnph;->e(Ljava/lang/Object;)Z

    iget-object v0, p0, Llef;->b:Llen;

    invoke-interface {v0}, Llen;->b()V

    iget-object v0, p0, Llef;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lleg;

    invoke-interface {v1}, Lleg;->d()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Llef;->d:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MediaEncoder already started."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final c(Landroid/media/MediaFormat;)Lleh;
    .locals 4

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v0

    iget-object v1, p0, Llef;->b:Llen;

    invoke-static {v0}, Llhe;->l(Lnou;)Llhe;

    move-result-object v2

    invoke-interface {v1, v2}, Llen;->c(Llhe;)Llep;

    move-result-object v1

    new-instance v2, Lleh;

    invoke-direct {v2, p1, v1}, Lleh;-><init>(Landroid/media/MediaFormat;Llep;)V

    new-instance v1, Lled;

    invoke-direct {v1, p0, p1, v0}, Lled;-><init>(Llef;Landroid/media/MediaFormat;Lnph;)V

    iget-object p1, v2, Lleh;->a:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, v2, Lleh;->b:Lmqi;

    new-instance v3, Lmqj;

    invoke-direct {v3, v1, v0}, Lmqj;-><init>(Lmqi;Lmqi;)V

    iput-object v3, v2, Lleh;->b:Lmqi;

    monitor-exit p1

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
