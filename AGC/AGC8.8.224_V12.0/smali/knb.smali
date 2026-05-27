.class public final Lknb;
.super Ljava/lang/Object;

# interfaces
.implements Lkad;


# instance fields
.field final synthetic a:Landroidx/wear/ambient/AmbientDelegate;

.field private final b:Lkmy;

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Landroidx/wear/ambient/AmbientDelegate;Lkmy;[B[B)V
    .locals 0

    iput-object p1, p0, Lknb;->a:Landroidx/wear/ambient/AmbientDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lknb;->b:Lkmy;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lknb;->d:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lknb;->b:Lkmy;

    iget-wide v0, v0, Lkmy;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v4, p0, Lknb;->c:Z

    if-eqz v4, :cond_1

    if-nez p1, :cond_1

    neg-long v0, v0

    goto :goto_0

    :cond_1
    if-nez v4, :cond_2

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move-wide v0, v2

    :goto_0
    iput-boolean p1, p0, Lknb;->c:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lknb;->a:Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {p1, v0, v1}, Landroidx/wear/ambient/AmbientDelegate;->ac(J)V

    return-void

    :cond_3
    :goto_1
    :try_start_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final close()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lknb;->d:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lknb;->d:Z

    iget-boolean v0, p0, Lknb;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lknb;->b:Lkmy;

    iget-wide v0, v0, Lkmy;->a:J

    neg-long v0, v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lknb;->a:Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {v2}, Landroidx/wear/ambient/AmbientDelegate;->Y()Lkad;

    move-result-object v2

    iget-object v3, p0, Lknb;->b:Lkmy;

    invoke-virtual {v3}, Lkmy;->close()V

    iget-object v3, p0, Lknb;->a:Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {v3, v0, v1}, Landroidx/wear/ambient/AmbientDelegate;->ac(J)V

    invoke-interface {v2}, Lkad;->close()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
