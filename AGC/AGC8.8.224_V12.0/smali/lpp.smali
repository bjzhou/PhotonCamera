.class public final Llpp;
.super Ljava/lang/Object;


# static fields
.field public static final i:Llhe;


# instance fields
.field public final a:Llon;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field final d:Llpz;

.field public final e:Z

.field public volatile f:Ljava/lang/String;

.field public final g:Llqh;

.field final h:Llhe;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Llhe;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Llhe;-><init>([B)V

    sput-object v0, Llpp;->i:Llhe;

    return-void
.end method

.method public constructor <init>(Llon;Ljava/lang/String;Z)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llpp;->a:Llon;

    iput-object p2, p0, Llpp;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Llpp;->c:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Llpp;->e:Z

    new-instance v1, Llpz;

    new-instance v2, Lloq;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lloq;-><init>(Llpp;I)V

    invoke-direct {v1, v2}, Llpz;-><init>(Lmrl;)V

    iput-object v1, p0, Llpp;->d:Llpz;

    new-instance v1, Llhe;

    invoke-direct {v1}, Llhe;-><init>()V

    iput-object v1, p0, Llpp;->h:Llhe;

    new-instance v1, Llqh;

    invoke-direct {v1, p1, p2, v0, p3}, Llqh;-><init>(Llon;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v1, p0, Llpp;->g:Llqh;

    return-void
.end method


# virtual methods
.method public final a()Lnou;
    .locals 4

    iget-object v0, p0, Llpp;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lnor;->a:Lnou;

    return-object v0

    :cond_0
    iget-object v0, p0, Llpp;->a:Llon;

    invoke-virtual {v0}, Llon;->e()Llhz;

    move-result-object v0

    iget-object v1, p0, Llpp;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Llhz;->b(Ljava/lang/String;)Lnou;

    move-result-object v0

    new-instance v1, Lcmq;

    const/16 v2, 0xc

    invoke-direct {v1, p0, v2}, Lcmq;-><init>(Llpp;I)V

    iget-object v2, p0, Llpp;->a:Llon;

    invoke-virtual {v2}, Llon;->b()Lnox;

    move-result-object v2

    const-class v3, Llpe;

    invoke-static {v0, v3, v1, v2}, Lnml;->j(Lnou;Ljava/lang/Class;Lnno;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v0

    return-object v0
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Llpp;->g:Llqh;

    iget-object v1, p0, Llpp;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Llqh;->b(Ljava/lang/String;)Lnou;

    move-result-object v0

    iget-object v1, p0, Llpp;->g:Llqh;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcmq;

    const/16 v3, 0xb

    invoke-direct {v2, v1, v3}, Lcmq;-><init>(Llqh;I)V

    iget-object v1, p0, Llpp;->a:Llon;

    invoke-virtual {v1}, Llon;->b()Lnox;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lnnf;->j(Lnou;Lnno;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v1

    new-instance v2, Llkq;

    const/4 v3, 0x6

    invoke-direct {v2, p0, v0, v3}, Llkq;-><init>(Llpp;Lnou;I)V

    iget-object v0, p0, Llpp;->a:Llon;

    invoke-virtual {v0}, Llon;->b()Lnox;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lnou;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final synthetic c(Lnou;)V
    .locals 3

    :try_start_0
    invoke-static {p1}, Lnsy;->J(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Llqi;

    invoke-static {p1}, Llqh;->a(Llqi;)Lmwa;

    move-result-object p1

    iget-object v0, p0, Llpp;->d:Llpz;

    iget-object v1, v0, Llpz;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, v0, Llpz;->b:Ljava/util/Map;

    if-eqz v2, :cond_1

    iget-object v0, v0, Llpz;->b:Ljava/util/Map;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_2
    iget-object p1, p0, Llpp;->a:Llon;

    invoke-virtual {p1}, Llon;->d()Llpu;

    iget-object p1, p0, Llpp;->a:Llon;

    invoke-virtual {p1}, Llon;->d()Llpu;

    move-result-object p1

    invoke-virtual {p1}, Llpu;->a()V
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :cond_1
    :try_start_3
    iput-object p1, v0, Llpz;->b:Ljava/util/Map;

    const/4 p1, 0x0

    iput-object p1, v0, Llpz;->c:Lmrl;

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    :try_start_4
    iget-object p1, p0, Llpp;->h:Llhe;

    iget-object p1, p1, Llhe;->a:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    :catchall_0
    move-exception p1

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1
    :try_end_6
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_1
    iget-object v0, p0, Llpp;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to update local snapshot for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", may result in stale flags."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MobStoreFlagStore"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
