.class public final synthetic Lnsh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlex/gcam/base/function/IntStringConsumer;


# instance fields
.field public final synthetic a:Ledz;


# direct methods
.method public synthetic constructor <init>(Ledz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnsh;->a:Ledz;

    return-void
.end method


# virtual methods
.method public final accept(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lnsh;->a:Ledz;

    sget-object v1, Leea;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->b()Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const/16 v2, 0x533

    invoke-interface {v1, v2}, Lnah;->G(I)Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const-string v2, "HDR+ pipeline reported error for shotId %d: %s"

    invoke-interface {v1, v2, p1, p2}, Lnah;->u(Ljava/lang/String;ILjava/lang/Object;)V

    iget-object p1, v0, Ledz;->c:Leea;

    iget p1, p1, Leea;->s:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lmoz;->p(Z)V

    iget-object p1, v0, Ledz;->c:Leea;

    const/4 v1, 0x3

    iput v1, p1, Leea;->s:I

    iget-object p1, v0, Ledz;->a:Leec;

    invoke-virtual {p1}, Leec;->m()Lmqp;

    move-result-object p1

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, v0, Ledz;->a:Leec;

    invoke-virtual {p1}, Leec;->m()Lmqp;

    move-result-object p1

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lecw;

    iget-object v0, v0, Ledz;->c:Leea;

    new-instance v1, Lecq;

    invoke-direct {v1, p2}, Lecq;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0, v1}, Lecw;->c(Leea;Lecq;)V

    :cond_1
    return-void
.end method
