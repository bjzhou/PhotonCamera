.class final Lhoy;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lhoz;


# direct methods
.method public constructor <init>(Lhoz;)V
    .locals 0

    iput-object p1, p0, Lhoy;->a:Lhoz;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    iget-object p1, p0, Lhoy;->a:Lhoz;

    iget-object p1, p1, Lhoz;->n:Ljes;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "level"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    int-to-long v1, p1

    const-wide/16 v3, 0x5

    cmp-long p2, v1, v3

    if-gtz p2, :cond_2

    sget-object p2, Lhoz;->a:Lnak;

    invoke-virtual {p2}, Lnaf;->c()Lnaz;

    move-result-object p2

    check-cast p2, Lnah;

    const/16 v1, 0xf14

    invoke-interface {p2, v1}, Lnah;->G(I)Lnaz;

    move-result-object p2

    check-cast p2, Lnah;

    const-string v1, "Low battery level: %d"

    invoke-interface {p2, v1, p1}, Lnah;->p(Ljava/lang/String;I)V

    iget-object p1, p0, Lhoy;->a:Lhoz;

    iget-object p1, p1, Lhoz;->n:Ljes;

    iget-object p2, p1, Ljes;->b:Ljava/lang/Object;

    check-cast p2, Lhos;

    invoke-virtual {p2}, Lhos;->h()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p1, p1, Ljes;->a:Ljava/lang/Object;

    check-cast p1, Lhpq;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lhpq;->g(Z)V

    return-void

    :cond_1
    iget-object p1, p1, Ljes;->a:Ljava/lang/Object;

    check-cast p1, Lhpq;

    invoke-virtual {p1, v0}, Lhpq;->g(Z)V

    :cond_2
    return-void
.end method
