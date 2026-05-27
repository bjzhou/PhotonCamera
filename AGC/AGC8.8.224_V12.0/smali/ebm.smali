.class public final Lebm;
.super Ljava/lang/Object;

# interfaces
.implements Lkai;


# instance fields
.field public final a:I

.field private final b:Landroid/os/Handler;

.field private c:Lkeb;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ldhi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lebm;->b:Landroid/os/Handler;

    sget-object p1, Ldhq;->g:Ldhk;

    invoke-interface {p2, p1}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object p1

    const/16 p2, 0x267

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lebm;->a:I

    return-void
.end method


# virtual methods
.method public final declared-synchronized b(J)Lkeb;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lebm;->c:Lkeb;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lkeb;->e()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Lkeb;->b()Lkeg;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lebm;->c:Lkeb;

    invoke-interface {v0}, Lkeb;->b()Lkeg;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v0, v0, Lkeg;->b:J

    sub-long/2addr p1, v0

    iget v0, p0, Lebm;->a:I

    int-to-long v0, v0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    iget-object p1, p0, Lebm;->c:Lkeb;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lkeb;->a()Lkeb;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    iget-object p1, p0, Lebm;->c:Lkeb;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lkeb;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final bridge synthetic bn(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lkeb;

    invoke-virtual {p0, p1}, Lebm;->c(Lkeb;)V

    return-void
.end method

.method public final declared-synchronized c(Lkeb;)V
    .locals 4

    monitor-enter p0

    if-eqz p1, :cond_2

    :try_start_0
    invoke-interface {p1}, Lkeb;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lebm;->c:Lkeb;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lkeb;->e()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Lkeb;->close()V

    :cond_1
    iput-object p1, p0, Lebm;->c:Lkeb;

    iget-object v0, p0, Lebm;->b:Landroid/os/Handler;

    new-instance v1, Ldgd;

    const/16 v2, 0x10

    invoke-direct {v1, p0, p1, v2}, Ldgd;-><init>(Lebm;Lkeb;I)V

    iget p1, p0, Lebm;->a:I

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_2
    :goto_0
    monitor-exit p0

    return-void
.end method
