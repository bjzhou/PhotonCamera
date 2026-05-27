.class public Llbk;
.super Ljava/lang/Object;

# interfaces
.implements Llbi;


# instance fields
.field private final a:Lkzc;

.field public final b:Llbd;


# direct methods
.method protected constructor <init>(Llbd;Lkzc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llbk;->b:Llbd;

    iput-object p2, p0, Llbk;->a:Lkzc;

    invoke-interface {p1}, Llbd;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p2}, Llpm;->i(Lkzc;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "GLContextObject"

    const-string p2, "Creating non-ready GL object on GL thread. This will likely cause a deadlock."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean p1, Llat;->a:Z

    return-void
.end method

.method public static d(Llbd;Ljava/util/concurrent/Callable;)Lkzc;
    .locals 1

    invoke-interface {p0}, Llbd;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Llpm;->f(Ljava/lang/Object;)Lkzc;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lkzd;->a(Ljava/lang/Throwable;)Lkzd;

    move-result-object p0

    invoke-static {p0}, Lnsy;->A(Ljava/lang/Throwable;)Lnou;

    move-result-object p0

    invoke-static {p0}, Llpm;->d(Lnou;)Lkzc;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0, p1}, Llpm;->e(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lkzc;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Lkzf;
    .locals 2

    sget-boolean v0, Llat;->a:Z

    sget-object v0, Lfrj;->e:Lfrj;

    new-instance v1, Lkyf;

    invoke-direct {v1}, Lkyf;-><init>()V

    invoke-virtual {p0, v0, v1}, Llbk;->e(Llcj;Lkye;)Lkzc;

    move-result-object v0

    invoke-static {v0}, Lkzf;->j(Lkzc;)Lkzf;

    move-result-object v0

    return-object v0
.end method

.method public final c()Llcv;
    .locals 2

    iget-object v0, p0, Llbk;->b:Llbd;

    invoke-interface {v0}, Llbd;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Llbk;->f()Llcv;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "raw should only be called from the GLContext thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final close()V
    .locals 1

    invoke-virtual {p0}, Llbk;->a()Lkzf;

    move-result-object v0

    invoke-static {v0}, Llpm;->j(Lkzc;)Ljava/lang/Object;

    return-void
.end method

.method public final e(Llcj;Lkye;)Lkzc;
    .locals 2

    iget-object v0, p0, Llbk;->b:Llbd;

    new-instance v1, Llbj;

    invoke-direct {v1, p0, p2, p1}, Llbj;-><init>(Llbk;Lkye;Llcj;)V

    invoke-static {v0, v1}, Llbk;->d(Llbd;Ljava/util/concurrent/Callable;)Lkzc;

    move-result-object p1

    return-object p1
.end method

.method public final f()Llcv;
    .locals 2

    iget-object v0, p0, Llbk;->b:Llbd;

    invoke-interface {v0}, Llbd;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Llbk;->a:Lkzc;

    invoke-static {v0}, Llpm;->i(Lkzc;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llcv;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Waiting for incomplete GL object while on GL thread. This deadlocks the process."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Llbk;->a:Lkzc;

    invoke-static {v0}, Llpm;->j(Lkzc;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llcv;

    return-object v0
.end method
