.class public final Lkin;
.super Ljava/lang/Object;

# interfaces
.implements Lkbw;
.implements Lkad;


# instance fields
.field public final a:Ljuf;

.field private final b:Lkip;

.field private final c:Lkll;

.field private final d:Landroid/os/Handler;

.field private final e:Lkbc;

.field private final f:Lkaq;

.field private g:Lkiq;

.field private h:Lkoo;

.field private i:Z


# direct methods
.method public constructor <init>(Lkll;Lkiq;Lkip;Landroid/os/Handler;Lkbc;Lkaq;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lkin;->h:Lkoo;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lkin;->i:Z

    iput-object p1, p0, Lkin;->c:Lkll;

    iput-object p2, p0, Lkin;->g:Lkiq;

    iput-object p3, p0, Lkin;->b:Lkip;

    iput-object p4, p0, Lkin;->d:Landroid/os/Handler;

    iput-object p5, p0, Lkin;->e:Lkbc;

    new-instance p1, Ljuf;

    invoke-direct {p1}, Ljuf;-><init>()V

    iput-object p1, p0, Lkin;->a:Ljuf;

    const-string p1, "CameraDeviceState"

    invoke-interface {p6, p1}, Lkaq;->a(Ljava/lang/String;)Lkaq;

    move-result-object p1

    iput-object p1, p0, Lkin;->f:Lkaq;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lkin;->i:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lkin;->i:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lkin;->f:Lkaq;

    iget-object v1, p0, Lkin;->c:Lkll;

    iget-object v1, v1, Lkll;->a:Ljava/lang/String;

    iget-object v2, p0, Lkin;->g:Lkiq;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Camera device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " closed for "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkaq;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lkin;->close()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final b()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lkin;->i:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v1, p0, Lkin;->i:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkin;->f:Lkaq;

    iget-object v1, p0, Lkin;->c:Lkll;

    iget-object v1, v1, Lkll;->a:Ljava/lang/String;

    iget-object v2, p0, Lkin;->g:Lkiq;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Camera device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " disconnected for "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkaq;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lkin;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final c(Lkbo;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lkin;->i:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v1, p0, Lkin;->i:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkin;->f:Lkaq;

    iget-object v1, p0, Lkin;->c:Lkll;

    iget-object v1, v1, Lkll;->a:Ljava/lang/String;

    iget p1, p1, Lkbo;->u:I

    invoke-static {}, Lkba;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Camera device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " error "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lkaq;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lkin;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final close()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lkin;->i:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lkin;->e:Lkbc;

    const-string v1, "cameraDeviceState#close"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lkin;->g:Lkiq;

    invoke-virtual {v0}, Lkiq;->h()V

    iget-object v0, p0, Lkin;->a:Ljuf;

    invoke-virtual {v0}, Ljuf;->close()V

    iget-object v0, p0, Lkin;->e:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final d(Lkoo;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lkin;->i:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lkin;->e:Lkbc;

    const-string v2, "CameraDevice#onOpened"

    invoke-interface {v1, v2}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lkin;->f:Lkaq;

    invoke-interface {p1}, Lkoo;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lkin;->g:Lkiq;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Camera "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " opened. Creating "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lkaq;->f(Ljava/lang/String;)V

    iget-object v1, p0, Lkin;->h:Lkoo;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v3, "onOpened was invoked more than once!"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Llkj;->z(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lkin;->h:Lkoo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lkin;->b:Lkip;

    iget-object v2, p0, Lkin;->g:Lkiq;

    invoke-virtual {v2}, Lkiq;->a()Ljuf;

    move-result-object v3

    iget-object v4, p0, Lkin;->d:Landroid/os/Handler;

    invoke-interface {v1, p1, v2, v3, v4}, Lkip;->d(Lkoo;Lkiq;Ljuf;Landroid/os/Handler;)V

    iget-object v1, p0, Lkin;->g:Lkiq;

    invoke-virtual {v1}, Lkiq;->g()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lkin;->e:Lkbc;

    invoke-interface {v1}, Lkbc;->f()V

    goto :goto_1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lkin;->e:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    throw p1

    :cond_1
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lkoo;->close()V

    :cond_2
    return-void

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public final declared-synchronized e(Lkiq;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkin;->f:Lkaq;

    iget-object v1, p0, Lkin;->g:Lkiq;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Closing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " and configuring "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkaq;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lkin;->g:Lkiq;

    invoke-virtual {v0}, Lkiq;->b()V

    iput-object p1, p0, Lkin;->g:Lkiq;

    iget-object v0, p0, Lkin;->h:Lkoo;

    if-nez v0, :cond_0

    iget-object p1, p0, Lkin;->f:Lkaq;

    const-string v0, "CameraDevice is not open yet. Waiting for onOpened."

    invoke-interface {p1, v0}, Lkaq;->f(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lkin;->b:Lkip;

    invoke-virtual {p1}, Lkiq;->a()Ljuf;

    move-result-object v2

    iget-object v3, p0, Lkin;->d:Landroid/os/Handler;

    invoke-interface {v1, v0, p1, v2, v3}, Lkip;->d(Lkoo;Lkiq;Ljuf;Landroid/os/Handler;)V

    invoke-virtual {p1}, Lkiq;->g()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized f()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkin;->a:Ljuf;

    invoke-virtual {v0}, Ljuf;->b()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
