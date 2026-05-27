.class public final Lmnm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;
.implements Lmnu;


# instance fields
.field private a:Lmnt;

.field private b:Lmnt;

.field private final c:Z

.field private d:Z

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Lmnt;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmnm;->f:Z

    iput-object p1, p0, Lmnm;->a:Lmnt;

    iput-object p1, p0, Lmnm;->b:Lmnt;

    const/4 p1, 0x0

    invoke-static {p1}, Llho;->l(Ljava/lang/Thread;)Z

    move-result p1

    iput-boolean p1, p0, Lmnm;->c:Z

    iput-boolean p2, p0, Lmnm;->f:Z

    return-void
.end method

.method private final b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmnm;->d:Z

    iget-boolean v0, p0, Lmnm;->c:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmnm;->e:Z

    if-nez v0, :cond_0

    invoke-static {}, Llho;->k()Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lmnm;->a:Lmnt;

    return-void
.end method


# virtual methods
.method public final a(Lnou;)V
    .locals 1

    iget-boolean v0, p0, Lmnm;->d:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lmnm;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmnm;->e:Z

    sget-object v0, Lnnv;->a:Lnnv;

    invoke-interface {p1, p0, v0}, Lnou;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Signal is already attached to future"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Span was already closed. Did you attach it to a future after calling Tracer.endSpan()?"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final close()V
    .locals 8

    iget-object v0, p0, Lmnm;->b:Lmnt;

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lmnm;->b:Lmnt;

    iget-boolean v1, p0, Lmnm;->e:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lmnm;->d:Z

    if-nez v1, :cond_3

    invoke-direct {p0}, Lmnm;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lmnt;->close()V

    :cond_1
    iget-boolean v0, p0, Lmnm;->f:Z

    if-eqz v0, :cond_2

    sget-object v0, Lmnl;->a:Lmnl;

    sget-object v1, Lmoc;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmob;

    invoke-static {v1, v0}, Lmoc;->c(Lmob;Lmnt;)Lmnt;

    :cond_2
    return-void

    :cond_3
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Span was already closed!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_4

    :try_start_2
    invoke-interface {v0}, Lmnt;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_3
    const-class v2, Ljava/lang/Throwable;

    const-string v3, "addSuppressed"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Throwable;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v7

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :cond_4
    :goto_1
    throw v1
.end method

.method public final run()V
    .locals 1

    iget-boolean v0, p0, Lmnm;->d:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lmnm;->e:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lmnm;->b()V

    return-void

    :cond_1
    :goto_0
    sget-object v0, Llbl;->c:Llbl;

    invoke-static {v0}, Llho;->j(Ljava/lang/Runnable;)V

    return-void
.end method
