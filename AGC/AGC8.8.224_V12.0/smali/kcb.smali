.class final Lkcb;
.super Ljava/lang/Object;

# interfaces
.implements Lkbw;


# instance fields
.field private final a:Lnph;

.field private final b:Lkbc;

.field private final c:Z


# direct methods
.method public constructor <init>(Lkbc;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkcb;->b:Lkbc;

    iput-boolean p2, p0, Lkcb;->c:Z

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object p1

    iput-object p1, p0, Lkcb;->a:Lnph;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Lkcb;->a:Lnph;

    new-instance v1, Llpu;

    sget-object v2, Lkbo;->l:Lkbo;

    sget-object v3, Lkbo;->l:Lkbo;

    invoke-virtual {v3}, Lkbo;->c()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v1, v4, v2, v3}, Llpu;-><init>(ILkbo;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lnph;->e(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()V
    .locals 5

    iget-object v0, p0, Lkcb;->a:Lnph;

    new-instance v1, Llpu;

    sget-object v2, Lkbo;->k:Lkbo;

    sget-object v3, Lkbo;->k:Lkbo;

    invoke-virtual {v3}, Lkbo;->c()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v1, v4, v2, v3}, Llpu;-><init>(ILkbo;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lnph;->e(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c(Lkbo;)V
    .locals 5

    sget-object v0, Lkbo;->p:Lkbo;

    const/4 v1, 0x2

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    iget-boolean v2, p0, Lkcb;->c:Z

    if-eq v0, v2, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    iget-object v2, p0, Lkcb;->a:Lnph;

    new-instance v3, Llpu;

    sget-object v4, Lkbo;->p:Lkbo;

    invoke-virtual {v4}, Lkbo;->c()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, p1, v4}, Llpu;-><init>(ILkbo;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lnph;->e(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lkcb;->a:Lnph;

    new-instance v2, Llpu;

    invoke-virtual {p1}, Lkbo;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, p1, v3}, Llpu;-><init>(ILkbo;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lnph;->e(Ljava/lang/Object;)Z

    return-void
.end method

.method public final d(Lkoo;)V
    .locals 2

    iget-object p1, p0, Lkcb;->a:Lnph;

    new-instance v0, Llpu;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Llpu;-><init>(I)V

    invoke-virtual {p1, v0}, Lnph;->e(Ljava/lang/Object;)Z

    return-void
.end method

.method public final e(J)Llpu;
    .locals 2

    iget-object v0, p0, Lkcb;->b:Lkbc;

    const-string v1, "awaitResult"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lkcb;->a:Lnph;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Lnph;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Llpu;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lkcb;->b:Lkbc;

    :goto_0
    invoke-interface {p2}, Lkbc;->f()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_1
    :try_start_1
    new-instance p1, Llpu;

    const/4 p2, 0x5

    invoke-direct {p1, p2}, Llpu;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p2, p0, Lkcb;->b:Lkbc;

    goto :goto_0

    :goto_2
    iget-object p2, p0, Lkcb;->b:Lkbc;

    invoke-interface {p2}, Lkbc;->f()V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method
