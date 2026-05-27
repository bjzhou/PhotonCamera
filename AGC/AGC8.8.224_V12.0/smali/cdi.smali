.class public final Lcdi;
.super Ljava/lang/Object;

# interfaces
.implements Lfat;
.implements Lfav;
.implements Lfax;
.implements Lfay;
.implements Lfaq;


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Ljuf;

.field public c:Ljuf;

.field public d:Ljuf;

.field public e:Lcjd;

.field public f:Lcjd;

.field public g:Lcjd;

.field public final h:Lchl;


# direct methods
.method public constructor <init>(Lchl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcdi;->h:Lchl;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcdi;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Lchl;->b()Ljuf;

    move-result-object v0

    iput-object v0, p0, Lcdi;->d:Ljuf;

    invoke-virtual {p1, v0}, Lchl;->c(Ljuf;)Ljuf;

    move-result-object v0

    iput-object v0, p0, Lcdi;->c:Ljuf;

    invoke-virtual {p1, v0}, Lchl;->a(Ljuf;)Ljuf;

    move-result-object p1

    iput-object p1, p0, Lcdi;->b:Ljuf;

    iget-object p1, p0, Lcdi;->d:Ljuf;

    new-instance v0, Lcjd;

    invoke-direct {v0}, Lcjd;-><init>()V

    invoke-virtual {p1, v0}, Ljuf;->d(Lkad;)V

    iput-object v0, p0, Lcdi;->g:Lcjd;

    iget-object p1, p0, Lcdi;->c:Ljuf;

    new-instance v0, Lcjd;

    invoke-direct {v0}, Lcjd;-><init>()V

    invoke-virtual {p1, v0}, Ljuf;->d(Lkad;)V

    iput-object v0, p0, Lcdi;->f:Lcjd;

    iget-object p1, p0, Lcdi;->b:Ljuf;

    new-instance v0, Lcjd;

    invoke-direct {v0}, Lcjd;-><init>()V

    invoke-virtual {p1, v0}, Ljuf;->d(Lkad;)V

    iput-object v0, p0, Lcdi;->e:Lcjd;

    return-void
.end method


# virtual methods
.method public final bK()V
    .locals 2

    iget-object v0, p0, Lcdi;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcdi;->d:Ljuf;

    invoke-virtual {v1}, Ljuf;->close()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final bM()V
    .locals 2

    iget-object v0, p0, Lcdi;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcdi;->b:Ljuf;

    invoke-virtual {v1}, Ljuf;->close()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final bN()V
    .locals 3

    iget-object v0, p0, Lcdi;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcdi;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcdi;->h:Lchl;

    iget-object v2, p0, Lcdi;->c:Ljuf;

    invoke-virtual {v1, v2}, Lchl;->a(Ljuf;)Ljuf;

    move-result-object v1

    iput-object v1, p0, Lcdi;->b:Ljuf;

    new-instance v2, Lcjd;

    invoke-direct {v2}, Lcjd;-><init>()V

    invoke-virtual {v1, v2}, Ljuf;->d(Lkad;)V

    iput-object v2, p0, Lcdi;->e:Lcjd;

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

.method public final bO()V
    .locals 3

    iget-object v0, p0, Lcdi;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcdi;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcdi;->h:Lchl;

    iget-object v2, p0, Lcdi;->d:Ljuf;

    invoke-virtual {v1, v2}, Lchl;->c(Ljuf;)Ljuf;

    move-result-object v1

    iput-object v1, p0, Lcdi;->c:Ljuf;

    new-instance v2, Lcjd;

    invoke-direct {v2}, Lcjd;-><init>()V

    invoke-virtual {v1, v2}, Ljuf;->d(Lkad;)V

    iput-object v2, p0, Lcdi;->f:Lcjd;

    iget-object v1, p0, Lcdi;->h:Lchl;

    iget-object v2, p0, Lcdi;->c:Ljuf;

    invoke-virtual {v1, v2}, Lchl;->a(Ljuf;)Ljuf;

    move-result-object v1

    iput-object v1, p0, Lcdi;->b:Ljuf;

    new-instance v2, Lcjd;

    invoke-direct {v2}, Lcjd;-><init>()V

    invoke-virtual {v1, v2}, Ljuf;->d(Lkad;)V

    iput-object v2, p0, Lcdi;->e:Lcjd;

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

.method public final e()V
    .locals 2

    iget-object v0, p0, Lcdi;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcdi;->c:Ljuf;

    invoke-virtual {v1}, Ljuf;->close()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final f()Z
    .locals 2

    iget-object v0, p0, Lcdi;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcdi;->e:Lcjd;

    invoke-virtual {v1}, Lcjd;->a()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final g()Z
    .locals 2

    iget-object v0, p0, Lcdi;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcdi;->f:Lcjd;

    invoke-virtual {v1}, Lcjd;->a()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final h()Ljuf;
    .locals 2

    iget-object v0, p0, Lcdi;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcdi;->b:Ljuf;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final i()Ljuf;
    .locals 2

    iget-object v0, p0, Lcdi;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcdi;->d:Ljuf;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final j()Ljuf;
    .locals 2

    iget-object v0, p0, Lcdi;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcdi;->c:Ljuf;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
