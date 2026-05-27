.class public Loor;
.super Lori;

# interfaces
.implements Lora;
.implements Loku;
.implements Lopu;


# instance fields
.field public final a:Lola;


# direct methods
.method public constructor <init>(Lola;)V
    .locals 1

    invoke-direct {p0}, Lori;-><init>()V

    sget-object v0, Lora;->c:Lokv;

    invoke-interface {p1, v0}, Lola;->get(Loky;)Lokx;

    move-result-object v0

    check-cast v0, Lora;

    invoke-virtual {p0, v0}, Lori;->C(Lora;)V

    invoke-interface {p1, p0}, Lola;->plus(Lola;)Lola;

    move-result-object p1

    iput-object p1, p0, Loor;->a:Lola;

    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lopx;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " was cancelled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public cZ()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Loor;->a:Lola;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v1, Lopw;->a:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v1, Lops;->b:Lokv;

    invoke-interface {v0, v1}, Lola;->get(Loky;)Lokx;

    move-result-object v1

    check-cast v1, Lops;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    sget-object v2, Lopt;->b:Lokv;

    invoke-interface {v0, v2}, Lola;->get(Loky;)Lokx;

    move-result-object v0

    check-cast v0, Lopt;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lopt;->a:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "coroutine"

    :goto_0
    iget-wide v1, v1, Lops;->a:J

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    if-nez v2, :cond_3

    invoke-static {p0}, Lopx;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-static {p0}, Lopx;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lola;
    .locals 1

    iget-object v0, p0, Loor;->a:Lola;

    return-object v0
.end method

.method public final da()Lola;
    .locals 1

    iget-object v0, p0, Loor;->a:Lola;

    return-object v0
.end method

.method protected db(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final dc(ILjava/lang/Object;Lomo;)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return-void

    :pswitch_1
    invoke-static {p3, p2, p0}, Lolp;->f(Lomo;Ljava/lang/Object;Loku;)Loku;

    move-result-object p1

    invoke-static {p1}, Lolp;->g(Loku;)Loku;

    move-result-object p1

    sget-object p2, Lojk;->a:Lojk;

    invoke-interface {p1, p2}, Loku;->e(Ljava/lang/Object;)V

    return-void

    :pswitch_2
    invoke-static {p3, p2, p0}, Lljz;->A(Lomo;Ljava/lang/Object;Loku;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 1

    invoke-static {p1}, Lonm;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lori;->de(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lorj;->b:Loxb;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Loor;->h(Ljava/lang/Object;)V

    return-void
.end method

.method protected h(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lori;->f(Ljava/lang/Object;)V

    return-void
.end method

.method public final i(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Loor;->a:Lola;

    invoke-static {v0, p1}, Lonm;->k(Lola;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected j(Ljava/lang/Throwable;Z)V
    .locals 0

    return-void
.end method

.method protected final l(Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p1, Lopi;

    if-eqz v0, :cond_0

    check-cast p1, Lopi;

    iget-object v0, p1, Lopi;->b:Ljava/lang/Throwable;

    iget-object p1, p1, Lopi;->c:Loom;

    invoke-virtual {p1}, Loom;->a()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Loor;->j(Ljava/lang/Throwable;Z)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Loor;->db(Ljava/lang/Object;)V

    return-void
.end method
