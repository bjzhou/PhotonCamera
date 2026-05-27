.class public final Lbax;
.super Landroid/net/ConnectivityManager$NetworkCallback;


# instance fields
.field final synthetic a:Lbay;


# direct methods
.method public constructor <init>(Lbay;)V
    .locals 0

    iput-object p1, p0, Lbax;->a:Lbay;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Laxq;->a()Laxq;

    sget-object p1, Lbaz;->a:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Network capabilities changed: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    iget-object p1, p0, Lbax;->a:Lbay;

    iget-object p2, p1, Lbay;->e:Landroid/net/ConnectivityManager;

    invoke-static {p2}, Lbaz;->a(Landroid/net/ConnectivityManager;)Lbaa;

    move-result-object p2

    invoke-virtual {p1, p2}, Lbav;->g(Ljava/lang/Object;)V

    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Laxq;->a()Laxq;

    sget-object p1, Lbaz;->a:Ljava/lang/String;

    iget-object p1, p0, Lbax;->a:Lbay;

    iget-object v0, p1, Lbay;->e:Landroid/net/ConnectivityManager;

    invoke-static {v0}, Lbaz;->a(Landroid/net/ConnectivityManager;)Lbaa;

    move-result-object v0

    invoke-virtual {p1, v0}, Lbav;->g(Ljava/lang/Object;)V

    return-void
.end method
