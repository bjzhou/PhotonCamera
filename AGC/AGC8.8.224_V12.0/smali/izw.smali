.class final Lizw;
.super Landroid/content/BroadcastReceiver;


# static fields
.field static final a:Ljava/lang/String;


# instance fields
.field public final b:Liyz;

.field public c:Z

.field public d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lizw;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lizw;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Liyz;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lizw;->b:Liyz;

    return-void
.end method

.method private final e()Liyu;
    .locals 1

    iget-object v0, p0, Lizw;->b:Liyz;

    invoke-virtual {v0}, Liyz;->b()Liyu;

    move-result-object v0

    return-object v0
.end method

.method private final f()Lizv;
    .locals 1

    iget-object v0, p0, Lizw;->b:Liyz;

    invoke-virtual {v0}, Liyz;->d()Lizv;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lizw;->b:Liyz;

    iget-object v0, v0, Liyz;->a:Landroid/content/Context;

    return-object v0
.end method

.method public final b()V
    .locals 0

    invoke-direct {p0}, Lizw;->f()Lizv;

    invoke-direct {p0}, Lizw;->e()Liyu;

    return-void
.end method

.method public final c()V
    .locals 3

    iget-boolean v0, p0, Lizw;->c:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lizw;->b:Liyz;

    invoke-virtual {v0}, Liyz;->d()Lizv;

    move-result-object v0

    const-string v1, "Unregistering connectivity change receiver"

    invoke-virtual {v0, v1}, Liyv;->q(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lizw;->c:Z

    iput-boolean v0, p0, Lizw;->d:Z

    invoke-virtual {p0}, Lizw;->a()Landroid/content/Context;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lizw;->f()Lizv;

    move-result-object v1

    const-string v2, "Failed to unregister the network broadcast receiver"

    invoke-virtual {v1, v2, v0}, Liyv;->o(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected final d()Z
    .locals 2

    invoke-virtual {p0}, Lizw;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1

    :catch_0
    move-exception v0

    return v1
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p0}, Lizw;->b()V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lizw;->b:Liyz;

    invoke-virtual {v0}, Liyz;->d()Lizv;

    move-result-object v0

    const-string v1, "NetworkBroadcastReceiver received action"

    invoke-virtual {v0, v1, p1}, Liyv;->r(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lizw;->d()Z

    move-result p1

    iget-boolean p2, p0, Lizw;->d:Z

    if-eq p2, p1, :cond_0

    iput-boolean p1, p0, Lizw;->d:Z

    invoke-direct {p0}, Lizw;->e()Liyu;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "Network connectivity status changed"

    invoke-virtual {p2, v0, p1}, Liyv;->r(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Liyv;->e()Liys;

    move-result-object p1

    new-instance v0, Liwu;

    const/16 v1, 0x8

    invoke-direct {v0, p2, v1}, Liwu;-><init>(Liyu;I)V

    invoke-virtual {p1, v0}, Liys;->b(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "com.google.analytics.RADIO_POWERED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p1, Lizw;->a:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-direct {p0}, Lizw;->e()Liyu;

    move-result-object p1

    const-string p2, "Radio powered up"

    invoke-virtual {p1, p2}, Liyv;->q(Ljava/lang/String;)V

    invoke-virtual {p1}, Liyw;->z()V

    invoke-virtual {p1}, Liyv;->d()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Ljaa;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p2}, Ligo;->B(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.google.android.gms.analytics.ANALYTICS_DISPATCH"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.gms.analytics.AnalyticsService"

    invoke-direct {v0, p2, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_2
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Liyu;->b(Lizp;)V

    :cond_3
    return-void

    :cond_4
    iget-object p2, p0, Lizw;->b:Liyz;

    invoke-virtual {p2}, Liyz;->d()Lizv;

    move-result-object p2

    const-string v0, "NetworkBroadcastReceiver received unknown action"

    invoke-virtual {p2, v0, p1}, Liyv;->u(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
