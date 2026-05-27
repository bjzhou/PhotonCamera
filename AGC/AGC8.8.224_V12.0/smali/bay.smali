.class public final Lbay;
.super Lbav;


# instance fields
.field public final e:Landroid/net/ConnectivityManager;

.field private final f:Lbax;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lva;[B)V
    .locals 0

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lbav;-><init>(Landroid/content/Context;Lva;[B)V

    iget-object p1, p0, Lbav;->a:Landroid/content/Context;

    const-string p2, "connectivity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lbay;->e:Landroid/net/ConnectivityManager;

    new-instance p1, Lbax;

    invoke-direct {p1, p0}, Lbax;-><init>(Lbay;)V

    iput-object p1, p0, Lbay;->f:Lbax;

    return-void
.end method


# virtual methods
.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lbay;->e:Landroid/net/ConnectivityManager;

    invoke-static {v0}, Lbaz;->a(Landroid/net/ConnectivityManager;)Lbaa;

    move-result-object v0

    return-object v0
.end method

.method public final d()V
    .locals 3

    const-string v0, "Received exception while registering network callback"

    :try_start_0
    invoke-static {}, Laxq;->a()Laxq;

    sget-object v1, Lbaz;->a:Ljava/lang/String;

    iget-object v1, p0, Lbay;->e:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lbay;->f:Lbax;

    invoke-static {v1, v2}, Lbdm;->a(Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    invoke-static {}, Laxq;->a()Laxq;

    sget-object v2, Lbaz;->a:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catch_1
    move-exception v1

    invoke-static {}, Laxq;->a()Laxq;

    sget-object v2, Lbaz;->a:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final e()V
    .locals 3

    const-string v0, "Received exception while unregistering network callback"

    :try_start_0
    invoke-static {}, Laxq;->a()Laxq;

    sget-object v1, Lbaz;->a:Ljava/lang/String;

    iget-object v1, p0, Lbay;->e:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lbay;->f:Lbax;

    invoke-static {v1, v2}, Lbdk;->b(Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    invoke-static {}, Laxq;->a()Laxq;

    sget-object v2, Lbaz;->a:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catch_1
    move-exception v1

    invoke-static {}, Laxq;->a()Laxq;

    sget-object v2, Lbaz;->a:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
