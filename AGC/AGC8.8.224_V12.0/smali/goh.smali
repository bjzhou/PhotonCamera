.class public final synthetic Lgoh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlex/gcam/base/function/LongStringConsumer;


# instance fields
.field public final synthetic a:Lehb;


# direct methods
.method public synthetic constructor <init>(Lehb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgoh;->a:Lehb;

    return-void
.end method


# virtual methods
.method public final accept(JLjava/lang/String;)V
    .locals 3

    iget-object p1, p0, Lgoh;->a:Lehb;

    const/4 p2, 0x0

    :try_start_0
    invoke-static {p3, p2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p3

    invoke-static {}, Lnwh;->a()Lnwh;

    move-result-object v0

    sget-object v1, Lnkj;->a:Lnkj;

    array-length v2, p3

    invoke-static {v1, p3, p2, v2, v0}, Lnws;->Q(Lnws;[BIILnwh;)Lnws;

    move-result-object p2

    invoke-static {p2}, Lnws;->ae(Lnws;)V

    check-cast p2, Lnkj;
    :try_end_0
    .catch Lnxd; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    sget-object p3, Lgop;->a:Lnak;

    invoke-virtual {p3}, Lnaf;->c()Lnaz;

    move-result-object p3

    check-cast p3, Lnah;

    invoke-interface {p3, p2}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object p3

    check-cast p3, Lnah;

    const/16 v0, 0xc36

    invoke-interface {p3, v0}, Lnah;->G(I)Lnaz;

    move-result-object p3

    check-cast p3, Lnah;

    const-string v0, "Error deserializing native portrait logs: %s"

    invoke-interface {p3, v0, p2}, Lnah;->r(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p2, Lnkj;->a:Lnkj;

    :goto_0
    iget-object p1, p1, Lehb;->d:Lehe;

    iget-object p1, p1, Lehe;->f:Lnwn;

    iget-object p3, p1, Lnwn;->b:Lnws;

    invoke-virtual {p3}, Lnws;->ac()Z

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lnwn;->p()V

    :cond_0
    iget-object p1, p1, Lnwn;->b:Lnws;

    check-cast p1, Lnki;

    sget-object p3, Lnki;->f:Lnki;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p1, Lnki;->e:Lnkj;

    iget p2, p1, Lnki;->a:I

    or-int/lit8 p2, p2, 0x8

    iput p2, p1, Lnki;->a:I

    return-void
.end method
