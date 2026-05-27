.class public final Lkyu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Llaa;

.field protected final b:Lnou;

.field public final c:Lkyt;

.field protected final d:Lkyt;

.field public final e:Ljava/util/concurrent/Executor;

.field protected final f:Llpm;


# direct methods
.method public constructor <init>(Lnou;Lkyt;Lkyt;Ljava/util/concurrent/Executor;Llpm;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Llaa;->j()Llaa;

    move-result-object p6

    iput-object p6, p0, Lkyu;->a:Llaa;

    iput-object p1, p0, Lkyu;->b:Lnou;

    iput-object p2, p0, Lkyu;->c:Lkyt;

    iput-object p3, p0, Lkyu;->d:Lkyt;

    iput-object p4, p0, Lkyu;->e:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Lkyu;->f:Llpm;

    return-void
.end method

.method private final b(Ljava/lang/Throwable;)V
    .locals 3

    invoke-static {p1}, Lkzd;->a(Ljava/lang/Throwable;)Lkzd;

    move-result-object p1

    iget-object v0, p0, Lkyu;->d:Lkyt;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lkyu;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Lkzj;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lkzj;-><init>(Lkyu;Lkzd;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0, p1}, Lkyu;->a(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lkyu;->a:Llaa;

    invoke-virtual {v0, p1}, Llaa;->m(Lkzd;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lkyu;->a:Llaa;

    invoke-static {p1}, Lkzd;->a(Ljava/lang/Throwable;)Lkzd;

    move-result-object p1

    invoke-virtual {v0, p1}, Llaa;->m(Lkzd;)V

    return-void
.end method

.method public final run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lkyu;->b:Lnou;

    invoke-static {v0}, Lnsy;->n(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Result value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lkyu;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lkyu;->e:Ljava/util/concurrent/Executor;

    new-instance v2, Lkcw;

    const/16 v3, 0x12

    invoke-direct {v2, p0, v0, v3}, Lkcw;-><init>(Lkyu;Ljava/lang/Object;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {p0, v0}, Lkyu;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    invoke-direct {p0, v0}, Lkyu;->b(Ljava/lang/Throwable;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {p0, v0}, Lkyu;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkyu;->c:Lkyt;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
