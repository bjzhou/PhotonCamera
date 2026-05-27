.class public final Lgjk;
.super Ljava/lang/Object;

# interfaces
.implements Lkad;


# instance fields
.field public final a:Lnph;

.field public final b:Lgnk;

.field public c:Ljava/util/List;

.field public d:Lgnj;


# direct methods
.method public constructor <init>(Lgnk;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v0

    iput-object v0, p0, Lgjk;->a:Lnph;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgjk;->c:Ljava/util/List;

    iput-object p1, p0, Lgjk;->b:Lgnk;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lgjk;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 3

    sget-object v0, Lgjl;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Aborting the ZSL async buffer."

    const/16 v2, 0xae0

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    invoke-virtual {p0}, Lgjk;->close()V

    iget-object v0, p0, Lgjk;->a:Lnph;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lgjk;->a:Lnph;

    invoke-virtual {v1}, Lnph;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lgjk;->a:Lnph;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lnph;->cancel(Z)Z

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lgjk;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkeb;

    invoke-interface {v1}, Lkeb;->close()V

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public final declared-synchronized close()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgjk;->d:Lgnj;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lgnj;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
