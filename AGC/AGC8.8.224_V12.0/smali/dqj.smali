.class public final Ldqj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/AutoCloseable;
.implements Ljvs;


# static fields
.field private static final a:Lkad;


# instance fields
.field private b:Ljvs;

.field private c:Lkad;

.field private d:Ljwb;

.field private e:Lkad;

.field private f:Lklv;

.field private final g:Ljava/util/concurrent/Executor;

.field private final h:Ljwb;

.field private final i:Ljvs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcgk;->k:Lcgk;

    sput-object v0, Ldqj;->a:Lkad;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ldqj;->a:Lkad;

    iput-object v0, p0, Ldqj;->c:Lkad;

    sget-object v1, Lika;->b:Lika;

    invoke-static {v1}, Ljwa;->a(Ljava/lang/Object;)Ljwb;

    move-result-object v1

    iput-object v1, p0, Ldqj;->d:Ljwb;

    iput-object v0, p0, Ldqj;->e:Lkad;

    sget-object v0, Lklv;->b:Lklv;

    iput-object v0, p0, Ldqj;->f:Lklv;

    new-instance v0, Ljvk;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ldqj;->h:Ljwb;

    invoke-static {v0}, Ljvo;->c(Ljvs;)Ljvs;

    move-result-object v0

    iput-object v0, p0, Ldqj;->i:Ljvs;

    iput-object p1, p0, Ldqj;->g:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final a(Lkai;Ljava/util/concurrent/Executor;)Lkad;
    .locals 1

    iget-object v0, p0, Ldqj;->i:Ljvs;

    invoke-interface {v0, p1, p2}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic bm()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldqj;->c()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Ldqj;->i:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public final declared-synchronized close()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldqj;->e:Lkad;

    invoke-interface {v0}, Lkad;->close()V

    sget-object v0, Ldqj;->a:Lkad;

    iput-object v0, p0, Ldqj;->e:Lkad;

    iget-object v1, p0, Ldqj;->c:Lkad;

    invoke-interface {v1}, Lkad;->close()V

    iput-object v0, p0, Ldqj;->c:Lkad;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldqj;->d:Ljwb;

    invoke-interface {v0}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lika;

    iget-object v1, p0, Ldqj;->b:Ljvs;

    invoke-interface {v1}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Ldqj;->f:Lklv;

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    sget-object v1, Lika;->b:Lika;

    const/4 v4, 0x1

    if-ne v0, v1, :cond_1

    sget-object v1, Lklv;->a:Lklv;

    if-eq v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v1, Lika;->m:Lika;

    if-ne v0, v1, :cond_2

    sget-object v1, Lklv;->a:Lklv;

    if-eq v2, v1, :cond_0

    :cond_2
    sget-object v1, Lika;->g:Lika;

    if-ne v0, v1, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Ldqj;->h:Ljwb;

    invoke-interface {v1, v0}, Ljwb;->bn(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public final declared-synchronized e(Ljwb;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Ldqj;->d:Ljwb;

    iget-object v0, p0, Ldqj;->e:Lkad;

    invoke-interface {v0}, Lkad;->close()V

    new-instance v0, Lcze;

    const/16 v1, 0x14

    invoke-direct {v0, p0, v1}, Lcze;-><init>(Ldqj;I)V

    iget-object v1, p0, Ldqj;->g:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v0, v1}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p1

    iput-object p1, p0, Ldqj;->e:Lkad;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized f(Lklv;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Ldqj;->f:Lklv;

    invoke-virtual {p0}, Ldqj;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized g(Ljvs;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Ldqj;->b:Ljvs;

    iget-object v0, p0, Ldqj;->c:Lkad;

    invoke-interface {v0}, Lkad;->close()V

    new-instance v0, Lcze;

    const/16 v1, 0x13

    invoke-direct {v0, p0, v1}, Lcze;-><init>(Ldqj;I)V

    iget-object v1, p0, Ldqj;->g:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v0, v1}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p1

    iput-object p1, p0, Ldqj;->c:Lkad;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
