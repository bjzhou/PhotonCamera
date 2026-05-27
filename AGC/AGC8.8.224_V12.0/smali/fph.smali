.class public final Lfph;
.super Ljava/lang/Object;

# interfaces
.implements Lfpz;


# instance fields
.field private final a:Lfpz;

.field private b:Lkpb;

.field private c:Z


# direct methods
.method public constructor <init>(Lfpz;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lfph;->b:Lkpb;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lfph;->c:Z

    iput-object p1, p0, Lfph;->a:Lfpz;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lkpb;)Z
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lfph;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfph;->a:Lfpz;

    invoke-interface {v0, p1}, Lfpz;->a(Lkpb;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :cond_0
    :try_start_1
    new-instance v0, Lkma;

    invoke-direct {v0, p1}, Lkma;-><init>(Lkpb;)V

    iget-object p1, p0, Lfph;->b:Lkpb;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lkpb;->close()V

    :cond_1
    invoke-virtual {v0}, Lkma;->k()Lkpb;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lkoy;->d()J

    move-result-wide v1

    const-wide/32 v3, 0x186a0

    add-long/2addr v1, v3

    new-instance v3, Lfrs;

    invoke-direct {v3, p1, v1, v2}, Lfrs;-><init>(Lkpb;J)V

    iput-object v3, p0, Lfph;->b:Lkpb;

    iget-object p1, p0, Lfph;->a:Lfpz;

    invoke-interface {p1, v0}, Lfpz;->a(Lkpb;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final close()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lfph;->c:Z

    iget-object v0, p0, Lfph;->b:Lkpb;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lfph;->a:Lfpz;

    invoke-interface {v1, v0}, Lfpz;->a(Lkpb;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lfph;->b:Lkpb;

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lfph;->a:Lfpz;

    invoke-interface {v0}, Lfpz;->close()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
