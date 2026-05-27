.class public final Llcc;
.super Ljava/lang/Object;

# interfaces
.implements Llbd;


# instance fields
.field private final a:Llbd;


# direct methods
.method public constructor <init>(Llbd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llcc;->a:Llbd;

    return-void
.end method


# virtual methods
.method public final a()Lkzf;
    .locals 1

    iget-object v0, p0, Llcc;->a:Llbd;

    invoke-interface {v0}, Llbd;->a()Lkzf;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, Llcc;->a:Llbd;

    invoke-interface {v0}, Llbd;->close()V

    return-void
.end method

.method public final d()Llcg;
    .locals 1

    iget-object v0, p0, Llcc;->a:Llbd;

    invoke-interface {v0}, Llbd;->d()Llcg;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lldg;
    .locals 1

    iget-object v0, p0, Llcc;->a:Llbd;

    invoke-interface {v0}, Llbd;->e()Lldg;

    move-result-object v0

    return-object v0
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Llcc;->a:Llbd;

    invoke-interface {v0, p1}, Llbd;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "GLContext"

    const-string v1, "Executing command on GL context was rejected! Command ignored."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final f(Llcj;Ljava/lang/Runnable;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Llcc;->a:Llbd;

    invoke-interface {v0, p1, p2}, Llbd;->f(Llcj;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "GLContext"

    const-string v0, "Executing command on GL context was rejected! Command ignored."

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final g()Z
    .locals 1

    iget-object v0, p0, Llcc;->a:Llbd;

    invoke-interface {v0}, Llbd;->g()Z

    move-result v0

    return v0
.end method

.method public final h(Ljava/lang/Object;Lmrl;)Llfl;
    .locals 1

    iget-object v0, p0, Llcc;->a:Llbd;

    invoke-interface {v0, p1, p2}, Llbd;->h(Ljava/lang/Object;Lmrl;)Llfl;

    move-result-object p1

    return-object p1
.end method

.method public final i()Lldc;
    .locals 1

    iget-object v0, p0, Llcc;->a:Llbd;

    invoke-interface {v0}, Llbd;->i()Lldc;

    move-result-object v0

    return-object v0
.end method
