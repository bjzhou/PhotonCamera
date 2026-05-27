.class public final Lkuv;
.super Ljava/lang/Object;

# interfaces
.implements Lkus;


# instance fields
.field public final a:Landroid/net/wifi/WifiConfiguration;

.field private final b:Landroid/net/wifi/WifiManager;

.field private c:Z

.field private final d:Ldne;

.field private final e:Lloi;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiManager;Ldne;Landroid/net/wifi/WifiConfiguration;Lloi;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkuv;->b:Landroid/net/wifi/WifiManager;

    iput-object p2, p0, Lkuv;->d:Ldne;

    iput-object p3, p0, Lkuv;->a:Landroid/net/wifi/WifiConfiguration;

    iput-object p4, p0, Lkuv;->e:Lloi;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lkuv;->c:Z

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 5

    iget-boolean v0, p0, Lkuv;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Llug;->a:Llug;

    new-array v1, v1, [Ljava/lang/Object;

    const-class v2, Lkuv;

    const-string v3, "act() was called more than once."

    invoke-virtual {v0, v2, v3, v1}, Llug;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lkuv;->c:Z

    iget-object v2, p0, Lkuv;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    iget-object v2, p0, Lkuv;->b:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lkuv;->a:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v2

    const/4 v3, -0x1

    const v4, 0x7f140450

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lkuv;->d:Ldne;

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lkuv;->a:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v3, v0, v1

    invoke-virtual {v2, v4, v0}, Ldne;->m(I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lkuv;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v2, v0}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lkuv;->d:Ldne;

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lkuv;->a:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v3, v0, v1

    const v1, 0x7f140456

    invoke-virtual {v2, v1, v0}, Ldne;->m(I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lkuv;->d:Ldne;

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lkuv;->a:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v3, v0, v1

    invoke-virtual {v2, v4, v0}, Ldne;->m(I[Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lkuv;->e:Lloi;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.WIFI_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lloi;->k(Landroid/content/Intent;)V

    return-void
.end method
