.class final Lhgt;
.super Lhgh;


# instance fields
.field final synthetic e:Lhgw;


# direct methods
.method public constructor <init>(Lhgw;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lhgt;->e:Lhgw;

    invoke-direct {p0, p2}, Lhgh;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lhgh;->onLayout(ZIIII)V

    iget-object p1, p0, Lhgt;->e:Lhgw;

    iget-boolean p2, p1, Lhgw;->b:Z

    if-nez p2, :cond_1

    iget-object p2, p1, Lhgw;->d:Lgzm;

    sget-object p3, Lgzd;->R:Lgzr;

    invoke-interface {p2, p3}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p1, p1, Lhgw;->k:Licq;

    invoke-virtual {p1}, Licq;->b()V

    return-void

    :cond_0
    iget-object p1, p1, Lhgw;->k:Licq;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Licq;->a(Z)V

    :cond_1
    return-void
.end method
