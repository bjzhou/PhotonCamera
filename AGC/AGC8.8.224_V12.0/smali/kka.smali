.class public final Lkka;
.super Ljava/lang/Object;

# interfaces
.implements Lkkf;
.implements Lkad;


# instance fields
.field private final a:Lkfj;

.field private final b:Ljava/util/List;

.field private final c:Lkkh;

.field private d:Lkeg;

.field private e:Lkpb;

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Lkfj;Lkkh;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lkka;->d:Lkeg;

    iput-object v0, p0, Lkka;->e:Lkpb;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lkka;->f:Z

    iput-boolean v0, p0, Lkka;->g:Z

    iput-object p1, p0, Lkka;->a:Lkfj;

    iput-object p2, p0, Lkka;->c:Lkkh;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lkka;->b:Ljava/util/List;

    return-void
.end method

.method public static e(Lkfj;Lkkh;)Lkkf;
    .locals 1

    new-instance v0, Lkka;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p0, p1}, Lkka;-><init>(Lkfj;Lkkh;)V

    invoke-virtual {p1, v0}, Lkkh;->e(Lkad;)V

    return-object v0
.end method

.method private final declared-synchronized f()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lkka;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lkka;->g:Z

    iget-object v0, p0, Lkka;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lkka;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkke;

    invoke-interface {v1}, Lkke;->h()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lkka;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public final a()Lkad;
    .locals 1

    iget-object v0, p0, Lkka;->c:Lkkh;

    invoke-virtual {v0}, Lkkh;->a()Lkad;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lkad;
    .locals 1

    iget-object v0, p0, Lkka;->c:Lkkh;

    invoke-virtual {v0}, Lkkh;->b()Lkad;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized c()Lkeg;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkka;->d:Lkeg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized close()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lkka;->f()V

    const/4 v0, 0x0

    iput-object v0, p0, Lkka;->e:Lkpb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()Lkfj;
    .locals 1

    iget-object v0, p0, Lkka;->a:Lkfj;

    return-object v0
.end method

.method public final declared-synchronized h()Lkpb;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkka;->e:Lkpb;

    iget-object v1, p0, Lkka;->c:Lkkh;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lkkh;->b()Lkad;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lkki;

    invoke-direct {v2, v0, v1}, Lkki;-><init>(Lkpb;Lkad;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized i(Lkke;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lkka;->g:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lkke;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lkka;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized j(Lkeg;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lkka;->f:Z

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lkka;->a:Lkfj;

    const-string v2, "An image was already set for frame %s on %s!"

    invoke-static {v0, v2, p1, v1}, Llkj;->A(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lkka;->d:Lkeg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized k(Lkpb;)V
    .locals 5

    monitor-enter p0

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v1, p0, Lkka;->d:Lkeg;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Llkj;->x(Z)V

    iget-boolean v1, p0, Lkka;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    monitor-exit p0

    return-void

    :cond_3
    :goto_1
    xor-int/2addr v1, v0

    :try_start_1
    iget-object v2, p0, Lkka;->d:Lkeg;

    iget-object v3, p0, Lkka;->a:Lkfj;

    const-string v4, "An image was already set for frame %s on %s!"

    invoke-static {v1, v4, v2, v3}, Llkj;->A(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-boolean v0, p0, Lkka;->f:Z

    if-eqz p1, :cond_4

    iget-object v0, p0, Lkka;->d:Lkeg;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lkka;->c:Lkkh;

    invoke-virtual {v0, p1}, Lkkh;->e(Lkad;)V

    iget-object v0, p0, Lkka;->c:Lkkh;

    invoke-virtual {v0}, Lkkh;->d()Z

    move-result v0

    if-nez v0, :cond_5

    iput-object p1, p0, Lkka;->e:Lkpb;

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lkka;->c:Lkkh;

    monitor-enter p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iput-boolean v0, p1, Lkkh;->c:Z

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object p1, p1, Lkkh;->d:Ljuf;

    invoke-virtual {p1}, Ljuf;->close()V

    :cond_5
    :goto_2
    invoke-direct {p0}, Lkka;->f()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_3
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkka;->d:Lkeg;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, v0, Lkeg;->c:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImageStreamResult-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
