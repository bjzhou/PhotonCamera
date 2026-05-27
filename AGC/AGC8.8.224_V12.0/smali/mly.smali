.class final Lmly;
.super Lmmd;


# direct methods
.method public constructor <init>(Lmma;Lkgd;[B[B)V
    .locals 0

    new-instance p3, Llzz;

    const-string p4, "OnCompleteUpdateCallback"

    invoke-direct {p3, p4}, Llzz;-><init>(Ljava/lang/String;)V

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3, p3}, Lmmd;-><init>(Lmma;Lkgd;[B[B)V

    return-void
.end method


# virtual methods
.method public final b(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lmmd;->b(Landroid/os/Bundle;)V

    invoke-static {p1}, Lmma;->a(Landroid/os/Bundle;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmly;->c:Lkgd;

    new-instance v1, Lmmg;

    invoke-static {p1}, Lmma;->a(Landroid/os/Bundle;)I

    move-result p1

    invoke-direct {v1, p1}, Lmmg;-><init>(I)V

    invoke-virtual {v0, v1}, Lkgd;->j(Ljava/lang/Exception;)V

    return-void

    :cond_0
    iget-object p1, p0, Lmly;->c:Lkgd;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lkgd;->k(Ljava/lang/Object;)V

    return-void
.end method
