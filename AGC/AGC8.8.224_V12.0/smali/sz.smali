.class public final Lsz;
.super Ljava/lang/Object;

# interfaces
.implements Lqx;


# instance fields
.field public a:Luk;

.field public b:Lty;

.field private final c:Lopu;

.field private final d:Lqz;

.field private final e:Lvy;

.field private final f:Ltt;

.field private g:Z

.field private h:Ljava/util/Map;

.field private final i:Lva;

.field private final j:Ldqx;

.field private final k:Lbby;


# direct methods
.method public constructor <init>(Lopu;Lqz;Lvy;Ltt;Lbby;Ldqx;Lva;Lne;[B[B[B[B)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsz;->c:Lopu;

    iput-object p2, p0, Lsz;->d:Lqz;

    iput-object p3, p0, Lsz;->e:Lvy;

    iput-object p4, p0, Lsz;->f:Ltt;

    iput-object p5, p0, Lsz;->k:Lbby;

    iput-object p6, p0, Lsz;->j:Ldqx;

    iput-object p7, p0, Lsz;->i:Lva;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    new-instance v0, Lonk;

    invoke-direct {v0}, Lonk;-><init>()V

    new-instance v1, Lonk;

    invoke-direct {v1}, Lonk;-><init>()V

    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lsz;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Lsz;->g:Z

    iget-object v2, p0, Lsz;->a:Luk;

    iput-object v2, v0, Lonk;->a:Ljava/lang/Object;

    iget-object v2, p0, Lsz;->b:Lty;

    iput-object v2, v1, Lonk;->a:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-object v2, p0, Lsz;->a:Luk;

    iput-object v2, p0, Lsz;->b:Lty;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    iget-object v3, p0, Lsz;->c:Lopu;

    new-instance v4, Lsx;

    invoke-direct {v4, v1, v0, v2}, Lsx;-><init>(Lonk;Lonk;Loku;)V

    const/4 v0, 0x3

    invoke-static {v3, v2, v4, v0}, Lone;->j(Lopu;Lola;Lomo;I)Lora;

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()V
    .locals 12

    iget-object v0, p0, Lsz;->j:Ldqx;

    iget-object v1, p0, Lsz;->d:Lqz;

    iget-object v1, v1, Lqz;->a:Ljava/lang/String;

    iget-object v2, p0, Lsz;->e:Lvy;

    new-instance v3, Luz;

    invoke-direct {v3, v1}, Luz;-><init>(Ljava/lang/String;)V

    new-instance v1, Lug;

    invoke-direct {v1, v3, v2}, Lug;-><init>(Luz;Lvy;)V

    iget-object v0, v0, Ldqx;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Loss;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Losw;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lsz;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lsz;->a:Luk;

    if-nez v0, :cond_3

    iget-object v0, p0, Lsz;->b:Lty;

    if-nez v0, :cond_2

    iput-object v3, p0, Lsz;->a:Luk;

    new-instance v0, Lty;

    iget-object v5, p0, Lsz;->e:Lvy;

    iget-object v6, p0, Lsz;->f:Ltt;

    iget-object v7, p0, Lsz;->k:Lbby;

    iget-object v8, p0, Lsz;->i:Lva;

    iget-object v9, p0, Lsz;->c:Lopu;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Lty;-><init>(Lvy;Ltt;Lbby;Lva;Lopu;[B[B)V

    iput-object v0, p0, Lsz;->b:Lty;

    iget-object v1, p0, Lsz;->h:Ljava/util/Map;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lty;->c(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    iget-object v0, p0, Lsz;->c:Lopu;

    new-instance v1, Lsy;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lsy;-><init>(Lsz;Loku;)V

    const/4 v3, 0x3

    invoke-static {v0, v2, v1, v3}, Lone;->j(Lopu;Lola;Lomo;I)Lora;

    return-void

    :cond_2
    :try_start_2
    const-string v0, "Check failed."

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string v0, "Check failed."

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There are more than 8 requests buffered!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c(Ljava/util/Map;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lsz;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iput-object p1, p0, Lsz;->h:Ljava/util/Map;

    iget-object v0, p0, Lsz;->b:Lty;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lty;->c(Ljava/util/Map;)V

    return-void

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
