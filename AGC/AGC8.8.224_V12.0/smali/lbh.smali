.class public Llbh;
.super Lkyj;

# interfaces
.implements Llbd;


# static fields
.field private static final d:Ljava/util/concurrent/Callable;


# instance fields
.field public volatile c:Z

.field private final e:Ljava/util/concurrent/Executor;

.field private final f:Lkzc;

.field private final g:Llaa;

.field private final h:Ljava/util/HashMap;

.field private final i:Lnph;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lmom;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmom;-><init>(I)V

    sput-object v0, Llbh;->d:Ljava/util/concurrent/Callable;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Lkyj;-><init>()V

    invoke-static {}, Llaa;->j()Llaa;

    move-result-object v0

    iput-object v0, p0, Llbh;->g:Llaa;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Llbh;->h:Ljava/util/HashMap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Llbh;->c:Z

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v0

    iput-object v0, p0, Llbh;->i:Lnph;

    iput-object p1, p0, Llbh;->e:Ljava/util/concurrent/Executor;

    sget-object v0, Llbh;->d:Ljava/util/concurrent/Callable;

    invoke-static {p1, v0}, Llpm;->e(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lkzc;

    move-result-object p1

    iput-object p1, p0, Llbh;->f:Lkzc;

    return-void
.end method

.method public static j()Landroid/opengl/EGLSync;
    .locals 5

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [J

    const-wide/16 v3, 0x3038

    aput-wide v3, v2, v0

    const/16 v3, 0x30f9

    invoke-static {v1, v3, v2, v0}, Landroid/opengl/EGL15;->eglCreateSync(Landroid/opengl/EGLDisplay;I[JI)Landroid/opengl/EGLSync;

    move-result-object v0

    return-object v0
.end method

.method private final n()Ljava/util/Collection;
    .locals 3

    iget-object v0, p0, Llbh;->h:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Llbh;->h:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Llbh;->h:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method protected final b()Lkzf;
    .locals 5

    invoke-direct {p0}, Llbh;->n()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Llbh;->e:Ljava/util/concurrent/Executor;

    sget-object v2, Llbg;->a:Llbg;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Llpm;->f(Ljava/lang/Object;)Lkzc;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkzc;

    invoke-interface {v4, v1, v2}, Lkzc;->b(Ljava/util/concurrent/Executor;Lkzg;)Lkzc;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {v0}, Llpm;->g(Ljava/lang/Iterable;)Lkzc;

    move-result-object v0

    iget-object v1, p0, Llbh;->e:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Llbh;->g:Llaa;

    new-instance v3, Lkyx;

    const/4 v4, 0x2

    invoke-direct {v3, v2, v4}, Lkyx;-><init>(Lkzc;I)V

    invoke-interface {v0, v1, v3}, Lkzc;->b(Ljava/util/concurrent/Executor;Lkzg;)Lkzc;

    move-result-object v0

    iget-object v1, p0, Llbh;->e:Ljava/util/concurrent/Executor;

    new-instance v2, Llbg;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Llbg;-><init>(I)V

    invoke-interface {v0, v1, v2}, Lkzc;->b(Ljava/util/concurrent/Executor;Lkzg;)Lkzc;

    move-result-object v0

    iget-object v1, p0, Llbh;->e:Ljava/util/concurrent/Executor;

    new-instance v2, Lkzi;

    invoke-direct {v2, p0, v4}, Lkzi;-><init>(Llbh;I)V

    invoke-interface {v0, v1, v2}, Lkzc;->b(Ljava/util/concurrent/Executor;Lkzg;)Lkzc;

    move-result-object v0

    invoke-static {v0}, Lkzf;->j(Lkzc;)Lkzf;

    move-result-object v0

    return-object v0
.end method

.method protected final cv()V
    .locals 3

    invoke-direct {p0}, Llbh;->n()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llfl;

    invoke-virtual {v1}, Lkyj;->close()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Llbh;->g:Llaa;

    invoke-static {v0}, Llpm;->j(Lkzc;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lldc;

    invoke-virtual {v0}, Llbk;->close()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Llbh;->c:Z

    iget-object v0, p0, Llbh;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Lkxc;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2}, Lkxc;-><init>(Llbh;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Llbh;->k()Lkzf;

    move-result-object v0

    invoke-static {v0}, Llpm;->j(Lkzc;)Ljava/lang/Object;

    return-void
.end method

.method public final d()Llcg;
    .locals 3

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v0

    :try_start_0
    new-instance v1, Llbe;

    invoke-direct {v1, v0}, Llbe;-><init>(Lnph;)V

    invoke-virtual {p0, v1}, Llbh;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Llcf;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Llcf;-><init>(Lnou;I)V

    return-object v1

    :catch_0
    move-exception v0

    iget-boolean v1, p0, Llbh;->c:Z

    if-nez v1, :cond_0

    iget-object v0, p0, Llbh;->i:Lnph;

    new-instance v1, Llcf;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Llcf;-><init>(Lnou;I)V

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to schedule EGLSync!"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final e()Lldg;
    .locals 1

    iget-object v0, p0, Llbh;->g:Llaa;

    invoke-static {v0}, Llpm;->h(Lkzc;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lldc;

    invoke-virtual {v0}, Llbk;->f()Llcv;

    move-result-object v0

    check-cast v0, Llcn;

    invoke-interface {v0}, Llcn;->h()Lldg;

    move-result-object v0

    return-object v0
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    iget-boolean v0, p0, Llbh;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Llbh;->e:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance p1, Ljava/util/concurrent/RejectedExecutionException;

    const-string v0, "Attempting to execute task on a GLContext that is already closed!"

    invoke-direct {p1, v0}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final f(Llcj;Ljava/lang/Runnable;)V
    .locals 0

    new-instance p1, Llbf;

    invoke-direct {p1}, Llbf;-><init>()V

    invoke-virtual {p0, p1}, Llbh;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final g()Z
    .locals 2

    iget-object v0, p0, Llbh;->f:Lkzc;

    invoke-static {v0}, Llpm;->i(Lkzc;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final h(Ljava/lang/Object;Lmrl;)Llfl;
    .locals 2

    iget-object v0, p0, Llbh;->h:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Llbh;->h:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llfl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    :try_start_1
    invoke-interface {p2}, Lmrl;->a()Ljava/lang/Object;

    move-result-object p2

    new-instance v1, Llfl;

    invoke-direct {v1, p2}, Llfl;-><init>(Llfg;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p2, p0, Llbh;->h:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lmrp;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_0
    :goto_0
    iget-object p1, v1, Llfl;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, v1, Llfl;->c:Llfk;

    iget-object p1, p1, Llfk;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    new-instance p1, Llfl;

    iget-object p2, v1, Llfl;->c:Llfk;

    invoke-direct {p1, p2}, Llfl;-><init>(Llfk;)V

    monitor-exit v0

    return-object p1

    :cond_1
    new-instance p1, Llfi;

    invoke-direct {p1}, Llfi;-><init>()V

    throw p1

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public final i()Lldc;
    .locals 1

    iget-object v0, p0, Llbh;->g:Llaa;

    invoke-static {v0}, Llpm;->h(Lkzc;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lldc;

    return-object v0
.end method

.method public k()Lkzf;
    .locals 1

    sget-object v0, Lkze;->a:Lkzf;

    return-object v0
.end method

.method public final l()V
    .locals 8

    invoke-static {}, Llbh;->j()Landroid/opengl/EGLSync;

    move-result-object v0

    invoke-static {v0}, Lktf;->p(Landroid/opengl/EGLSync;)Llcg;

    move-result-object v0

    const/4 v1, 0x1

    :try_start_0
    invoke-interface {v0}, Llcg;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Llcg;->close()V

    iget-object v0, p0, Llbh;->i:Lnph;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnph;->e(Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    invoke-interface {v0}, Llcg;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_2
    const-class v3, Ljava/lang/Throwable;

    const-string v4, "addSuppressed"

    new-array v5, v1, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Throwable;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v7

    invoke-virtual {v3, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    throw v2
.end method

.method public final m(Lldc;)V
    .locals 1

    iget-object v0, p0, Llbh;->g:Llaa;

    invoke-virtual {v0, p1}, Llaa;->l(Ljava/lang/Object;)V

    return-void
.end method
