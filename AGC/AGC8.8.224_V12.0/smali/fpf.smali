.class final Lfpf;
.super Ljava/lang/Object;

# interfaces
.implements Lkpb;


# instance fields
.field public final a:Lkeb;

.field final synthetic b:Lfpg;

.field private final c:Lfte;

.field private final d:Lkaf;

.field private e:Lkpb;

.field private final f:Lnom;


# direct methods
.method public constructor <init>(Lfpg;Lkeb;Lfte;Lnom;[B[B)V
    .locals 2

    iput-object p1, p0, Lfpf;->b:Lfpg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p5, 0x0

    iput-object p5, p0, Lfpf;->e:Lkpb;

    iput-object p2, p0, Lfpf;->a:Lkeb;

    iput-object p3, p0, Lfpf;->c:Lfte;

    iput-object p4, p0, Lfpf;->f:Lnom;

    iget-object p1, p1, Lfpg;->b:Lgue;

    invoke-virtual {p1, p2}, Lgue;->a(Lkeb;)Lgli;

    move-result-object p1

    invoke-virtual {p1}, Lgli;->e()Lkpb;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lkpb;->c()I

    move-result p2

    invoke-interface {p1}, Lkpb;->b()I

    move-result p3

    invoke-static {p2, p3}, Lkaf;->h(II)Lkaf;

    move-result-object p2

    iput-object p2, p0, Lfpf;->d:Lkaf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Lkpb;->close()V

    return-void

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_0

    :try_start_1
    invoke-interface {p1}, Lkpb;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_2
    const-class p3, Ljava/lang/Throwable;

    const-string p4, "addSuppressed"

    const/4 p5, 0x1

    new-array p6, p5, [Ljava/lang/Class;

    const-class v0, Ljava/lang/Throwable;

    const/4 v1, 0x0

    aput-object v0, p6, v1

    invoke-virtual {p3, p4, p6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    new-array p4, p5, [Ljava/lang/Object;

    aput-object p1, p4, v1

    invoke-virtual {p3, p2, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    :cond_0
    :goto_0
    throw p2
.end method

.method private final declared-synchronized k()Lkpb;
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v0

    iget-object v1, p0, Lfpf;->e:Lkpb;

    if-nez v1, :cond_0

    iget-object v1, p0, Lfpf;->b:Lfpg;

    iget-object v1, v1, Lfpg;->a:Lfsm;

    iget-object v2, p0, Lfpf;->a:Lkeb;

    iget-object v3, p0, Lfpf;->c:Lfte;

    iget-object v4, p0, Lfpf;->f:Lnom;

    new-instance v5, Lfpe;

    invoke-direct {v5, p0, v0}, Lfpe;-><init>(Lfpf;Lnph;)V

    invoke-interface {v1, v2, v3, v4, v5}, Lfsm;->c(Lkeb;Lfte;Lnom;Lfsl;)V

    invoke-static {v0}, Lnsy;->K(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkpb;

    iput-object v0, p0, Lfpf;->e:Lkpb;

    :cond_0
    iget-object v0, p0, Lfpf;->e:Lkpb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/16 v0, 0x23

    return v0
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lfpf;->d:Lkaf;

    iget v0, v0, Lkaf;->b:I

    return v0
.end method

.method public final c()I
    .locals 1

    iget-object v0, p0, Lfpf;->d:Lkaf;

    iget v0, v0, Lkaf;->a:I

    return v0
.end method

.method public final declared-synchronized close()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfpf;->a:Lkeb;

    invoke-interface {v0}, Lkeb;->close()V

    iget-object v0, p0, Lfpf;->e:Lkpb;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkpb;->close()V
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

.method public final d()J
    .locals 2

    iget-object v0, p0, Lfpf;->a:Lkeb;

    invoke-interface {v0}, Lkeb;->b()Lkeg;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v0, v0, Lkeg;->b:J

    return-wide v0
.end method

.method public final e()Landroid/graphics/Rect;
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lfpf;->d:Lkaf;

    iget v2, v1, Lkaf;->a:I

    iget v1, v1, Lkaf;->b:I

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public final f()Landroid/hardware/HardwareBuffer;
    .locals 1

    invoke-direct {p0}, Lfpf;->k()Lkpb;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkpb;->f()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final g()Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lfpf;->k()Lkpb;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lfpf;->k()Lkpb;

    move-result-object v0

    invoke-interface {v0}, Lkpb;->g()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget v0, Lmvv;->d:I

    sget-object v0, Lmyu;->a:Lmvv;

    :goto_0
    return-object v0
.end method

.method public final h(Landroid/graphics/Rect;)V
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Cannot set crop rect in this implementation!"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final synthetic i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final j()Lkgd;
    .locals 1

    invoke-static {}, Lkgd;->x()Lkgd;

    move-result-object v0

    return-object v0
.end method
