.class public final Lkzf;
.super Ljava/lang/Object;

# interfaces
.implements Lkzc;


# instance fields
.field private final a:Lkzc;


# direct methods
.method private constructor <init>(Lkzc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkzf;->a:Lkzc;

    return-void
.end method

.method public static j(Lkzc;)Lkzf;
    .locals 1

    new-instance v0, Lkzf;

    invoke-direct {v0, p0}, Lkzf;-><init>(Lkzc;)V

    return-object v0
.end method

.method public static k(Lkzc;)Lkzf;
    .locals 2

    sget-object v0, Lnnv;->a:Lnnv;

    invoke-static {}, Llpm;->q()Lkyp;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lkzc;->a(Ljava/util/concurrent/Executor;Lkye;)Lkzc;

    move-result-object p0

    invoke-static {p0}, Lkzf;->j(Lkzc;)Lkzf;

    move-result-object p0

    return-object p0
.end method

.method public static l(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Lkzf;
    .locals 3

    new-instance v0, Lkzf;

    new-instance v1, Llba;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Llba;-><init>(Ljava/lang/Runnable;I)V

    invoke-static {p0, v1}, Llpm;->e(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lkzc;

    move-result-object p0

    invoke-direct {v0, p0}, Lkzf;-><init>(Lkzc;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/Executor;Lkye;)Lkzc;
    .locals 1

    iget-object v0, p0, Lkzf;->a:Lkzc;

    invoke-interface {v0, p1, p2}, Lkzc;->a(Ljava/util/concurrent/Executor;Lkye;)Lkzc;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/util/concurrent/Executor;Lkzg;)Lkzc;
    .locals 1

    iget-object v0, p0, Lkzf;->a:Lkzc;

    invoke-interface {v0, p1, p2}, Lkzc;->b(Ljava/util/concurrent/Executor;Lkzg;)Lkzc;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ljava/util/concurrent/Executor;Lkye;Lkye;)Lkzc;
    .locals 1

    iget-object v0, p0, Lkzf;->a:Lkzc;

    invoke-interface {v0, p1, p2, p3}, Lkzc;->c(Ljava/util/concurrent/Executor;Lkye;Lkye;)Lkzc;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/util/concurrent/Executor;Lkzg;Lkzg;)Lkzc;
    .locals 1

    iget-object v0, p0, Lkzf;->a:Lkzc;

    invoke-interface {v0, p1, p2, p3}, Lkzc;->d(Ljava/util/concurrent/Executor;Lkzg;Lkzg;)Lkzc;

    move-result-object p1

    return-object p1
.end method

.method public final e()Lnou;
    .locals 1

    iget-object v0, p0, Lkzf;->a:Lkzc;

    invoke-interface {v0}, Lkzc;->e()Lnou;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic f()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkzf;->a:Lkzc;

    invoke-interface {v0}, Lkzc;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkyd;

    return-object v0
.end method

.method public final g()Z
    .locals 1

    iget-object v0, p0, Lkzf;->a:Lkzc;

    invoke-interface {v0}, Lkzc;->g()Z

    move-result v0

    return v0
.end method

.method public final h(Lkyo;)V
    .locals 1

    iget-object v0, p0, Lkzf;->a:Lkzc;

    invoke-interface {v0, p1}, Lkzc;->h(Lkyo;)V

    return-void
.end method

.method public final bridge synthetic i(Ljava/util/concurrent/Executor;Llhe;)Lkzc;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lkzf;->m(Ljava/util/concurrent/Executor;Llhe;)Lkzf;

    move-result-object p1

    return-object p1
.end method

.method public final m(Ljava/util/concurrent/Executor;Llhe;)Lkzf;
    .locals 2

    new-instance v0, Lkzf;

    iget-object v1, p0, Lkzf;->a:Lkzc;

    invoke-interface {v1, p1, p2}, Lkzc;->i(Ljava/util/concurrent/Executor;Llhe;)Lkzc;

    move-result-object p1

    invoke-direct {v0, p1}, Lkzf;-><init>(Lkzc;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
