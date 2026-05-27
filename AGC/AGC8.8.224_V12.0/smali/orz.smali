.class public final Lorz;
.super Lowy;


# instance fields
.field private final b:Ljava/lang/ThreadLocal;


# direct methods
.method public constructor <init>(Lola;Loku;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Losa;->a:Losa;

    invoke-interface {p1, v0}, Lola;->get(Loky;)Lokx;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Losa;->a:Losa;

    invoke-interface {p1, v0}, Lola;->plus(Lola;)Lola;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    invoke-direct {p0, v0, p2}, Lowy;-><init>(Lola;Loku;)V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorz;->b:Ljava/lang/ThreadLocal;

    invoke-interface {p2}, Loku;->d()Lola;

    move-result-object p2

    sget-object v0, Lokw;->a:Lokv;

    invoke-interface {p2, v0}, Lola;->get(Loky;)Lokx;

    move-result-object p2

    instance-of p2, p2, Lopq;

    if-nez p2, :cond_1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Loxd;->b(Lola;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Loxd;->c(Lola;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lorz;->L(Lola;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final L(Lola;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorz;->b:Ljava/lang/ThreadLocal;

    invoke-static {p1, p2}, Lljr;->aM(Ljava/lang/Object;Ljava/lang/Object;)Lojd;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final M()Z
    .locals 2

    iget-object v0, p0, Lorz;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lorz;->b:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected final h(Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Lorz;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lojd;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lojd;->a:Ljava/lang/Object;

    check-cast v2, Lola;

    iget-object v0, v0, Lojd;->b:Ljava/lang/Object;

    invoke-static {v2, v0}, Loxd;->c(Lola;Ljava/lang/Object;)V

    iget-object v0, p0, Lorz;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lorz;->e:Loku;

    invoke-static {p1, v0}, Lonm;->l(Ljava/lang/Object;Loku;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lorz;->e:Loku;

    invoke-interface {v0}, Loku;->d()Lola;

    move-result-object v2

    invoke-static {v2, v1}, Loxd;->b(Lola;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Loxd;->a:Loxb;

    if-eq v3, v4, :cond_1

    invoke-static {v0, v2, v3}, Lopp;->c(Loku;Lola;Ljava/lang/Object;)Lorz;

    move-result-object v1

    goto :goto_0

    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lorz;->e:Loku;

    invoke-interface {v0, p1}, Loku;->e(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorz;->M()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    :goto_1
    invoke-static {v2, v3}, Loxd;->c(Lola;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lorz;->M()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {v2, v3}, Loxd;->c(Lola;Ljava/lang/Object;)V

    :goto_2
    throw p1
.end method
