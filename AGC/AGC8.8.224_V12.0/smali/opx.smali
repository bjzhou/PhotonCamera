.class public final Lopx;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Loku;)Ljava/lang/String;
    .locals 3

    const-string v0, "@"

    instance-of v1, p0, Lowh;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_0
    :try_start_0
    invoke-static {p0}, Lopx;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v1}, Lljr;->aN(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Lojf;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lopx;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    move-object p0, v1

    check-cast p0, Ljava/lang/String;

    :goto_2
    return-object p0
.end method

.method public static final d(Lomo;Loku;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lowy;

    invoke-interface {p1}, Loku;->d()Lola;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lowy;-><init>(Lola;Loku;)V

    invoke-static {v0, v0, p0}, Lljz;->z(Lowy;Ljava/lang/Object;Lomo;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lolc;->a:Lolc;

    return-object p0
.end method

.method public static final e(Lola;)Lopu;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lowf;

    sget-object v1, Lora;->c:Lokv;

    invoke-interface {p0, v1}, Lola;->get(Loky;)Lokx;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lopx;->j()Lord;

    move-result-object v1

    invoke-interface {p0, v1}, Lola;->plus(Lola;)Lola;

    move-result-object p0

    :cond_0
    invoke-direct {v0, p0}, Lowf;-><init>(Lola;)V

    return-object v0
.end method

.method public static final f(Lola;)Lopu;
    .locals 1

    new-instance v0, Lowf;

    invoke-direct {v0, p0}, Lowf;-><init>(Lola;)V

    return-object v0
.end method

.method public static final g(Loqd;Loku;Z)V
    .locals 3

    move-object v0, p0

    check-cast v0, Lopa;

    invoke-virtual {v0}, Lopa;->n()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Loqd;->q(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lljr;->aN(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Loqd;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    if-eqz p2, :cond_5

    check-cast p1, Lowh;

    iget-object p2, p1, Lowh;->b:Loku;

    iget-object v0, p1, Lowh;->d:Ljava/lang/Object;

    invoke-interface {p2}, Loku;->d()Lola;

    move-result-object v1

    invoke-static {v1, v0}, Loxd;->b(Lola;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Loxd;->a:Loxb;

    if-eq v0, v2, :cond_1

    invoke-static {p2, v1, v0}, Lopp;->c(Loku;Lola;Ljava/lang/Object;)Lorz;

    move-result-object p2

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    :try_start_0
    iget-object p1, p1, Lowh;->b:Loku;

    invoke-interface {p1, p0}, Loku;->e(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lorz;->M()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    return-void

    :cond_3
    :goto_2
    invoke-static {v1, v0}, Loxd;->c(Lola;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p0

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lorz;->M()Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {v1, v0}, Loxd;->c(Lola;Ljava/lang/Object;)V

    :goto_3
    throw p0

    :cond_5
    invoke-interface {p1, p0}, Loku;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public static final h(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public static final i(Lola;)Loqa;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lokw;->a:Lokv;

    invoke-interface {p0, v0}, Lola;->get(Loky;)Lokx;

    move-result-object p0

    instance-of v0, p0, Loqa;

    if-eqz v0, :cond_0

    check-cast p0, Loqa;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    sget-object p0, Lopz;->a:Loqa;

    :cond_1
    return-object p0
.end method

.method public static synthetic j()Lord;
    .locals 1

    new-instance v0, Lord;

    invoke-direct {v0}, Lord;-><init>()V

    return-object v0
.end method

.method public static synthetic k(Lora;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lora;->r(Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public static synthetic l(Lora;ZLomk;I)Loqh;
    .locals 3

    and-int/lit8 v0, p3, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/2addr p3, v2

    xor-int/2addr p3, v2

    and-int/2addr p1, p3

    if-eq v2, p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    :goto_1
    invoke-interface {p0, v1, v0, p2}, Lora;->dg(ZZLomk;)Loqh;

    move-result-object p0

    return-object p0
.end method

.method public static final m(Ljava/util/concurrent/Executor;)Lopq;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p0, Loqe;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Loqe;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object p0, v0, Loqe;->a:Lopq;

    return-object p0

    :cond_1
    new-instance v0, Loqt;

    invoke-direct {v0, p0}, Loqt;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static final n(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;
    .locals 1

    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0, p0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CancellationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-object v0
.end method
