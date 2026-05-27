.class public final Lkma;
.super Lkoy;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Lkpb;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lkma;-><init>(Lkpb;I)V

    return-void
.end method

.method public constructor <init>(Lkpb;I)V
    .locals 1

    invoke-direct {p0, p1}, Lkoy;-><init>(Lkpb;)V

    if-lez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "Initial reference count must be greater than zero!"

    invoke-static {p1, v0}, Lmoz;->f(ZLjava/lang/Object;)V

    iput p2, p0, Lkma;->a:I

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    invoke-virtual {p0}, Lkma;->l()V

    return-void
.end method

.method public final k()Lkpb;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lkma;->a:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lkma;->a:I

    new-instance v0, Lkmb;

    invoke-direct {v0, p0}, Lkmb;-><init>(Lkpb;)V

    monitor-exit p0

    return-object v0

    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final l()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lkma;->a:I

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lkma;->a:I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    invoke-super {p0}, Lkoy;->close()V

    :cond_0
    return-void

    :cond_1
    :try_start_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {p0}, Lmoz;->y(Ljava/lang/Object;)Lmqo;

    move-result-object v0

    const-string v1, "refCount"

    iget v2, p0, Lkma;->a:I

    invoke-virtual {v0, v1, v2}, Lmqo;->e(Ljava/lang/String;I)V

    invoke-super {p0}, Lkoy;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmqo;->a(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lmqo;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
