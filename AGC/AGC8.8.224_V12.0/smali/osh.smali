.class final Losh;
.super Lote;


# instance fields
.field public final a:Looz;

.field public final b:I


# direct methods
.method public constructor <init>(Looz;I)V
    .locals 0

    invoke-direct {p0}, Lote;-><init>()V

    iput-object p1, p0, Losh;->a:Looz;

    iput p2, p0, Losh;->b:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Losh;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Losw;->a(Ljava/lang/Object;)Losw;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 0

    iget-object p1, p0, Losh;->a:Looz;

    invoke-interface {p1}, Looz;->l()V

    return-void
.end method

.method public final c(Losy;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Losh;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Losh;->a:Looz;

    iget-object p1, p1, Losy;->a:Ljava/lang/Throwable;

    invoke-static {p1}, Lolp;->O(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Losw;->a(Ljava/lang/Object;)Losw;

    move-result-object p1

    invoke-interface {v0, p1}, Loku;->e(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Losh;->a:Looz;

    invoke-virtual {p1}, Losy;->e()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lljr;->aN(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Loku;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public final d(Ljava/lang/Object;)Loxb;
    .locals 2

    iget-object v0, p0, Losh;->a:Looz;

    invoke-virtual {p0, p1}, Losh;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast v0, Lopa;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lopa;->A(Ljava/lang/Object;Lomk;)Loxb;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    sget-boolean p1, Lopw;->a:Z

    sget-object p1, Lopb;->a:Loxb;

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lopx;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Losh;->b:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ReceiveElement@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "[receiveMode="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
