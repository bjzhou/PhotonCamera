.class public final Lbdl;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Landroid/net/ConnectivityManager;)Landroid/net/Network;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lva;Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lva;->a:Ljava/lang/Object;

    check-cast p0, Lbdp;

    invoke-virtual {p0, p1}, Lbdp;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
