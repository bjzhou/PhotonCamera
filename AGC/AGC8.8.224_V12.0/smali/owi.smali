.class public final Lowi;
.super Ljava/lang/Object;


# static fields
.field public static final a:Loxb;

.field public static final b:Loxb;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Loxb;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1}, Loxb;-><init>(Ljava/lang/String;)V

    sput-object v0, Lowi;->a:Loxb;

    new-instance v0, Loxb;

    const-string v1, "REUSABLE_CLAIMED"

    invoke-direct {v0, v1}, Loxb;-><init>(Ljava/lang/String;)V

    sput-object v0, Lowi;->b:Loxb;

    return-void
.end method

.method public static final a(Loku;Ljava/lang/Object;)V
    .locals 7

    instance-of v0, p0, Lowh;

    if-eqz v0, :cond_8

    check-cast p0, Lowh;

    invoke-static {p1}, Lonm;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lowh;->a:Lopq;

    invoke-virtual {p0}, Lowh;->d()Lola;

    move-result-object v2

    invoke-virtual {v1, v2}, Lopq;->e(Lola;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lowh;->c:Ljava/lang/Object;

    iput v2, p0, Lowh;->f:I

    iget-object p1, p0, Lowh;->a:Lopq;

    invoke-virtual {p0}, Lowh;->d()Lola;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Lopq;->d(Lola;Ljava/lang/Runnable;)V

    return-void

    :cond_0
    sget-boolean v1, Lopw;->a:Z

    sget-object v1, Loru;->a:Ljava/lang/ThreadLocal;

    invoke-static {}, Loru;->a()Loql;

    move-result-object v1

    invoke-virtual {v1}, Loql;->n()Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object v0, p0, Lowh;->c:Ljava/lang/Object;

    iput v2, p0, Lowh;->f:I

    invoke-virtual {v1, p0}, Loql;->l(Loqd;)V

    return-void

    :cond_1
    invoke-virtual {v1, v2}, Loql;->m(Z)V

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Lowh;->d()Lola;

    move-result-object v4

    sget-object v5, Lora;->c:Lokv;

    invoke-interface {v4, v5}, Lola;->get(Loky;)Lokx;

    move-result-object v4

    check-cast v4, Lora;

    if-eqz v4, :cond_2

    invoke-interface {v4}, Lora;->dh()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v4}, Lora;->o()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Loqd;->u(Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-static {p1}, Lljr;->aN(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Loku;->e(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lowh;->b:Loku;

    iget-object v4, p0, Lowh;->d:Ljava/lang/Object;

    invoke-interface {v0}, Loku;->d()Lola;

    move-result-object v5

    invoke-static {v5, v4}, Loxd;->b(Lola;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v6, Loxd;->a:Loxb;

    if-eq v4, v6, :cond_3

    invoke-static {v0, v5, v4}, Lopp;->c(Loku;Lola;Ljava/lang/Object;)Lorz;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    :cond_3
    move-object v0, v3

    :goto_0
    :try_start_1
    iget-object v6, p0, Lowh;->b:Loku;

    invoke-interface {v6, p1}, Loku;->e(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_4

    :try_start_2
    invoke-virtual {v0}, Lorz;->M()Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    invoke-static {v5, v4}, Loxd;->c(Lola;Ljava/lang/Object;)V

    :cond_5
    :goto_1
    invoke-virtual {v1}, Loql;->o()Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez p1, :cond_5

    :goto_2
    invoke-virtual {v1, v2}, Loql;->k(Z)V

    return-void

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_6

    :try_start_3
    invoke-virtual {v0}, Lorz;->M()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    invoke-static {v5, v4}, Loxd;->c(Lola;Ljava/lang/Object;)V

    :cond_7
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1, v3}, Loqd;->B(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p0

    invoke-virtual {v1, v2}, Loql;->k(Z)V

    throw p0

    :cond_8
    invoke-interface {p0, p1}, Loku;->e(Ljava/lang/Object;)V

    return-void
.end method
