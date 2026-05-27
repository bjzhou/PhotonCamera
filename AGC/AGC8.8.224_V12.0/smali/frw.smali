.class final Lfrw;
.super Ljava/lang/Object;

# interfaces
.implements Lfpz;


# instance fields
.field final synthetic a:Lfrx;

.field private final b:Lfpz;

.field private c:Z


# direct methods
.method public constructor <init>(Lfrx;Lfpz;)V
    .locals 0

    iput-object p1, p0, Lfrw;->a:Lfrx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lfrw;->c:Z

    iput-object p2, p0, Lfrw;->b:Lfpz;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lkpb;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lfrw;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lfrw;->b:Lfpz;

    invoke-interface {v0, p1}, Lfpz;->a(Lkpb;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {p1}, Lkpb;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return v0

    :cond_0
    :try_start_2
    sget-object v0, Lfrx;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v1, 0x9b1

    invoke-interface {v0, v1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v1, "Attempting to enqueue image on closed sink!"

    invoke-interface {v0, v1}, Lnah;->o(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    invoke-interface {p1}, Lkpb;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_4
    sget-object v1, Lfrx;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->b()Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    invoke-interface {v1, v0}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v1, 0x9b2

    invoke-interface {v0, v1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v1, "Could not encode out image"

    invoke-interface {v0, v1}, Lnah;->o(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :goto_1
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :goto_2
    :try_start_5
    invoke-interface {p1}, Lkpb;->close()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public final declared-synchronized close()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lfrw;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lfrw;->b:Lfpz;

    invoke-interface {v0}, Lfpz;->close()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lfrw;->c:Z

    iget-object v0, p0, Lfrw;->a:Lfrx;

    invoke-virtual {v0}, Lfrx;->c()V
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
