.class final Lhwv;
.super Landroid/net/ConnectivityManager$NetworkCallback;


# instance fields
.field final synthetic a:Lhwy;


# direct methods
.method public constructor <init>(Lhwy;)V
    .locals 0

    iput-object p1, p0, Lhwv;->a:Lhwy;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    iget-object p1, p0, Lhwv;->a:Lhwy;

    iget-object p1, p1, Lhwy;->a:Landroid/content/Context;

    invoke-static {p1}, Linb;->w(Landroid/content/Context;)I

    move-result p1

    iget-object p2, p0, Lhwv;->a:Lhwy;

    iget v0, p2, Lhwy;->c:I

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lhwy;->b(Z)V

    :cond_0
    return-void
.end method
