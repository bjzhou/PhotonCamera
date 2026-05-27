.class public final Losi;
.super Lote;


# instance fields
.field public final a:Losg;

.field public final b:Looz;


# direct methods
.method public constructor <init>(Losg;Looz;)V
    .locals 0

    invoke-direct {p0}, Lote;-><init>()V

    iput-object p1, p0, Losi;->a:Losg;

    iput-object p2, p0, Losi;->b:Looz;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Losi;->a:Losg;

    iput-object p1, v0, Losg;->a:Ljava/lang/Object;

    iget-object p1, p0, Losi;->b:Looz;

    invoke-interface {p1}, Looz;->l()V

    return-void
.end method

.method public final c(Losy;)V
    .locals 3

    iget-object v0, p1, Losy;->a:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    iget-object v0, p0, Losi;->b:Looz;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Looz;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Losi;->b:Looz;

    invoke-virtual {p1}, Losy;->e()Ljava/lang/Throwable;

    move-result-object v1

    new-instance v2, Lopi;

    invoke-direct {v2, v1}, Lopi;-><init>(Ljava/lang/Throwable;)V

    check-cast v0, Lopa;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lopa;->A(Ljava/lang/Object;Lomk;)Loxb;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Losi;->a:Losg;

    iput-object p1, v0, Losg;->a:Ljava/lang/Object;

    iget-object p1, p0, Losi;->b:Looz;

    invoke-interface {p1}, Looz;->l()V

    :cond_1
    return-void
.end method

.method public final d(Ljava/lang/Object;)Loxb;
    .locals 2

    iget-object p1, p0, Losi;->b:Looz;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Losi;->a:Losg;

    iget-object v1, v1, Losg;->b:Ljava/lang/Object;

    check-cast p1, Lopa;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lopa;->A(Ljava/lang/Object;Lomk;)Loxb;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    sget-boolean p1, Lopw;->a:Z

    sget-object p1, Lopb;->a:Loxb;

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lopx;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReceiveHasNext@"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
