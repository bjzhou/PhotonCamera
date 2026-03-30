.class public Lhgt;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lhgr;


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final b:Landroid/net/wifi/WifiConfiguration;

.field private final c:Landroid/net/wifi/WifiManager;

.field private final d:Liof;

.field private final e:Liof;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    sput-object v0, Lhgt;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const-string v0, "hgt"

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/net/wifi/WifiManager;Liof;Landroid/net/wifi/WifiConfiguration;Liof;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    iput-object p3, p0, Lhgt;->b:Landroid/net/wifi/WifiConfiguration;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iput-object p4, p0, Lhgt;->d:Liof;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p2, p0, Lhgt;->e:Liof;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Lhgt;->c:Landroid/net/wifi/WifiManager;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final b()V
    .locals 4

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1
    iget-object v1, p0, Lhgt;->b:Landroid/net/wifi/WifiConfiguration;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v2, v0, v1}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v1, p0, Lhgt;->b:Landroid/net/wifi/WifiConfiguration;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_8
    const/4 v2, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_9
    const v1, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_a
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_24

    nop

    :goto_c
    const v0, 0x1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_d
    goto/16 :goto_22

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_f
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_10
    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0, v0}, Liof;->q(Landroid/content/Intent;)V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-eq v0, v2, :cond_1

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto/32 :goto_23

    nop

    nop

    :goto_14
    iget-object p0, p0, Lhgt;->d:Liof;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v2, 0x7f14059a

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const-string v1, "android.settings.WIFI_SETTINGS"

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_18
    iget-object v0, p0, Lhgt;->c:Landroid/net/wifi/WifiManager;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v0, p0, Lhgt;->e:Liof;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    new-instance v0, Landroid/content/Intent;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0, v3, v1}, Liof;->r(I[Ljava/lang/Object;)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v0, v2, v1}, Liof;->r(I[Ljava/lang/Object;)V

    goto/32 :goto_d

    nop

    nop

    :goto_1e
    iget-object v0, p0, Lhgt;->e:Liof;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_1f
    iget-object v2, p0, Lhgt;->c:Landroid/net/wifi/WifiManager;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v0, v3, v1}, Liof;->r(I[Ljava/lang/Object;)V

    :goto_22
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v0, p0, Lhgt;->c:Landroid/net/wifi/WifiManager;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_2f

    nop

    :goto_25
    goto/32 :goto_18

    nop

    nop

    :goto_26
    goto :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_25

    nop

    :goto_29
    iget-object v0, p0, Lhgt;->e:Liof;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2a
    iget-object v2, p0, Lhgt;->b:Landroid/net/wifi/WifiConfiguration;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2b
    iget-object v1, p0, Lhgt;->b:Landroid/net/wifi/WifiConfiguration;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2c
    const v3, 0x7f140594

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_2d
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2e
    return-void

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop
.end method
