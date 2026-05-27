.class public abstract Loqd;
.super Loxp;


# instance fields
.field public f:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    const-wide/16 v0, 0x0

    sget-object v2, Loxs;->e:Loxq;

    invoke-direct {p0, v0, v1, v2}, Loxp;-><init>(JLoxq;)V

    iput p1, p0, Loqd;->f:I

    return-void
.end method


# virtual methods
.method public final B(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 2

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    invoke-static {p1, p2}, Lljr;->aR(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_2
    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move-object p1, p2

    :goto_1
    new-instance p2, Lopv;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fatal exception in coroutines machinery for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". Please read KDoc to \'handleFatalException\' method and report this incident to maintainers"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lopv;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Loqd;->r()Loku;

    move-result-object p1

    invoke-interface {p1}, Loku;->d()Lola;

    move-result-object p1

    invoke-static {p1, p2}, Lonm;->k(Lola;Ljava/lang/Throwable;)V

    return-void
.end method

.method public o(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method public abstract p()Ljava/lang/Object;
.end method

.method public q(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 2

    instance-of v0, p1, Lopi;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lopi;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    iget-object p1, p1, Lopi;->b:Ljava/lang/Throwable;

    return-object p1

    :cond_1
    return-object v1
.end method

.method public abstract r()Loku;
.end method

.method public final run()V
    .locals 9

    sget-boolean v0, Lopw;->a:Z

    :try_start_0
    invoke-virtual {p0}, Loqd;->r()Loku;

    move-result-object v0

    check-cast v0, Lowh;

    iget-object v1, v0, Lowh;->b:Loku;

    iget-object v0, v0, Lowh;->d:Ljava/lang/Object;

    invoke-interface {v1}, Loku;->d()Lola;

    move-result-object v2

    invoke-static {v2, v0}, Loxd;->b(Lola;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Loxd;->a:Loxb;

    const/4 v4, 0x0

    if-eq v0, v3, :cond_0

    invoke-static {v1, v2, v0}, Lopp;->c(Loku;Lola;Ljava/lang/Object;)Lorz;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    :try_start_1
    invoke-interface {v1}, Loku;->d()Lola;

    move-result-object v5

    invoke-virtual {p0}, Loqd;->p()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v6}, Loqd;->q(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v7

    if-nez v7, :cond_1

    iget v8, p0, Loqd;->f:I

    invoke-static {v8}, Lopx;->h(I)Z

    move-result v8

    if-eqz v8, :cond_1

    sget-object v8, Lora;->c:Lokv;

    invoke-interface {v5, v8}, Lola;->get(Loky;)Lokx;

    move-result-object v5

    check-cast v5, Lora;

    goto :goto_1

    :cond_1
    move-object v5, v4

    :goto_1
    if-eqz v5, :cond_3

    invoke-interface {v5}, Lora;->dh()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-interface {v5}, Lora;->o()Ljava/util/concurrent/CancellationException;

    move-result-object v5

    invoke-virtual {p0, v6, v5}, Loqd;->u(Ljava/lang/Object;Ljava/lang/Throwable;)V

    sget-boolean v6, Lopw;->b:Z

    if-eqz v6, :cond_2

    invoke-static {v5, v1}, Loxa;->a(Ljava/lang/Throwable;Loli;)Ljava/lang/Throwable;

    move-result-object v5

    :cond_2
    invoke-static {v5}, Lljr;->aN(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v5}, Loku;->e(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    if-eqz v7, :cond_4

    invoke-static {v7}, Lljr;->aN(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v5}, Loku;->e(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v6}, Loqd;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v5}, Loku;->e(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_2
    if-eqz v3, :cond_5

    :try_start_2
    invoke-virtual {v3}, Lorz;->M()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    invoke-static {v2, v0}, Loxd;->c(Lola;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_6
    :try_start_3
    sget-object v0, Lojk;->a:Lojk;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lljr;->aN(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_3
    invoke-static {v0}, Lojf;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Loqd;->B(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    return-void

    :catchall_1
    move-exception v1

    if-eqz v3, :cond_7

    :try_start_4
    invoke-virtual {v3}, Lorz;->M()Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_7
    invoke-static {v2, v0}, Loxd;->c(Lola;Ljava/lang/Object;)V

    :cond_8
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    :try_start_5
    sget-object v1, Lojk;->a:Lojk;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v1

    invoke-static {v1}, Lljr;->aN(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    :goto_4
    invoke-static {v1}, Lojf;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Loqd;->B(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    return-void
.end method

.method public u(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method
