.class public final Lkme;
.super Lkoz;

# interfaces
.implements Lkpe;


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Z

.field public c:I

.field private d:Z


# direct methods
.method public constructor <init>(Lkpe;)V
    .locals 0

    invoke-direct {p0, p1}, Lkoz;-><init>(Lkpe;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkme;->a:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lkme;->d:Z

    iput p1, p0, Lkme;->c:I

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    iget-object v0, p0, Lkme;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lkme;->d:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lkme;->b:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lkme;->b:Z

    invoke-virtual {p0}, Lkme;->j()V

    monitor-exit v0

    return-void

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final f()Lkpb;
    .locals 3

    iget-object v0, p0, Lkme;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lkme;->b:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lkme;->d:Z

    if-nez v1, :cond_0

    invoke-super {p0}, Lkoz;->f()Lkpb;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v2, p0, Lkme;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lkme;->c:I

    new-instance v2, Lkmd;

    invoke-direct {v2, p0, v1}, Lkmd;-><init>(Lkme;Lkpb;)V

    monitor-exit v0

    return-object v2

    :cond_0
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final g()Lkpb;
    .locals 3

    iget-object v0, p0, Lkme;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lkme;->b:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lkme;->d:Z

    if-nez v1, :cond_0

    invoke-super {p0}, Lkoz;->g()Lkpb;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v2, p0, Lkme;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lkme;->c:I

    new-instance v2, Lkmd;

    invoke-direct {v2, p0, v1}, Lkmd;-><init>(Lkme;Lkpb;)V

    monitor-exit v0

    return-object v2

    :cond_0
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final i(Lkpd;Landroid/os/Handler;)V
    .locals 1

    new-instance v0, Lkmc;

    invoke-direct {v0, p0, p1}, Lkmc;-><init>(Lkme;Lkpd;)V

    invoke-super {p0, v0, p2}, Lkoz;->i(Lkpd;Landroid/os/Handler;)V

    return-void
.end method

.method public final j()V
    .locals 1

    iget-boolean v0, p0, Lkme;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lkme;->c:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lkme;->d:Z

    invoke-super {p0}, Lkoz;->close()V

    return-void

    :cond_1
    invoke-super {p0}, Lkoz;->f()Lkpb;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lkpb;->close()V

    :cond_2
    invoke-virtual {p0}, Lkoz;->h()V

    return-void
.end method
