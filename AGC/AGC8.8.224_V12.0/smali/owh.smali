.class public final Lowh;
.super Loqd;

# interfaces
.implements Loli;
.implements Loku;


# instance fields
.field public final a:Lopq;

.field public final b:Loku;

.field public c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final e:Loop;


# direct methods
.method public constructor <init>(Lopq;Loku;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Loqd;-><init>(I)V

    iput-object p1, p0, Lowh;->a:Lopq;

    iput-object p2, p0, Lowh;->b:Loku;

    sget-object p1, Lowi;->a:Loxb;

    iput-object p1, p0, Lowh;->c:Ljava/lang/Object;

    invoke-virtual {p0}, Lowh;->d()Lola;

    move-result-object p1

    invoke-static {p1}, Loxd;->a(Lola;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lowh;->d:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-static {p1}, Lolp;->k(Ljava/lang/Object;)Loop;

    move-result-object p1

    iput-object p1, p0, Lowh;->e:Loop;

    return-void
.end method


# virtual methods
.method public final cU()Ljava/lang/StackTraceElement;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final d()Lola;
    .locals 1

    iget-object v0, p0, Lowh;->b:Loku;

    invoke-interface {v0}, Loku;->d()Lola;

    move-result-object v0

    return-object v0
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Lowh;->b:Loku;

    invoke-interface {v0}, Loku;->d()Lola;

    move-result-object v0

    invoke-static {p1}, Lonm;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lowh;->a:Lopq;

    invoke-virtual {v2, v0}, Lopq;->e(Lola;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iput-object v1, p0, Lowh;->c:Ljava/lang/Object;

    iput v3, p0, Lowh;->f:I

    iget-object p1, p0, Lowh;->a:Lopq;

    invoke-virtual {p1, v0, p0}, Lopq;->d(Lola;Ljava/lang/Runnable;)V

    return-void

    :cond_0
    sget-boolean v0, Lopw;->a:Z

    sget-object v0, Loru;->a:Ljava/lang/ThreadLocal;

    invoke-static {}, Loru;->a()Loql;

    move-result-object v0

    invoke-virtual {v0}, Loql;->n()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v1, p0, Lowh;->c:Ljava/lang/Object;

    iput v3, p0, Lowh;->f:I

    invoke-virtual {v0, p0}, Loql;->l(Loqd;)V

    return-void

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Loql;->m(Z)V

    :try_start_0
    invoke-virtual {p0}, Lowh;->d()Lola;

    move-result-object v2

    iget-object v3, p0, Lowh;->d:Ljava/lang/Object;

    invoke-static {v2, v3}, Loxd;->b(Lola;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, p0, Lowh;->b:Loku;

    invoke-interface {v4, p1}, Loku;->e(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v2, v3}, Loxd;->c(Lola;Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {v0}, Loql;->o()Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez p1, :cond_2

    :goto_0
    invoke-virtual {v0, v1}, Loql;->k(Z)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    invoke-static {v2, v3}, Loxd;->c(Lola;Ljava/lang/Object;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    const/4 v2, 0x0

    :try_start_4
    invoke-virtual {p0, p1, v2}, Loqd;->B(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-virtual {v0, v1}, Loql;->k(Z)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final g()Loli;
    .locals 1

    iget-object v0, p0, Lowh;->b:Loku;

    return-object v0
.end method

.method public final p()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lowh;->c:Ljava/lang/Object;

    sget-boolean v1, Lopw;->a:Z

    sget-object v1, Lowi;->a:Loxb;

    iput-object v1, p0, Lowh;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final r()Loku;
    .locals 0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lowh;->a:Lopq;

    iget-object v1, p0, Lowh;->b:Loku;

    invoke-static {v1}, Lopx;->c(Loku;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DispatchedContinuation["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    instance-of p2, p1, Lopj;

    if-nez p2, :cond_0

    return-void

    :cond_0
    check-cast p1, Lopj;

    iget-object p1, p1, Lopj;->a:Lomk;

    const/4 p1, 0x0

    throw p1
.end method
