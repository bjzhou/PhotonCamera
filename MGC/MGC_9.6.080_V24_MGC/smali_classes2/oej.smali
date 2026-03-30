.class final Loej;
.super Landroid/content/BroadcastReceiver;
.source "PG"


# static fields
.field static final a:Ljava/lang/String; = "oej"


# instance fields
.field public final b:Lodm;

.field public c:Z

.field public d:Z


# direct methods
.method private final 23ce148e54b083367f51e25c7971761em()Lodh;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lodm;->b()Lodh;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Loej;->b:Lodm;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    nop
.end method

.method private final 7ecc92917e9c4556cc19f457ddc41af8m()Loei;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lodm;->d()Loei;

    move-result-object p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iget-object p0, p0, Loej;->b:Lodm;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop
.end method

.method static constructor <clinit>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lodm;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Loej;->b:Lodm;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Loej;->b:Lodm;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lodm;->a:Landroid/content/Context;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop
.end method

.method public final b()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Loej;->23ce148e54b083367f51e25c7971761em()Lodh;

    goto/32 :goto_2

    nop

    nop

    :goto_1
    invoke-direct {p0}, Loej;->7ecc92917e9c4556cc19f457ddc41af8m()Loei;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop
.end method

.method public final c()V
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_f

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_3
    const v0, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_4
    if-eqz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Loej;->b:Lodm;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_6
    iput-boolean v0, p0, Loej;->d:Z

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Loej;->a()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-boolean v0, p0, Loej;->c:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_0

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Lodm;->d()Loei;

    move-result-object v0

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_c
    iget-boolean v0, p0, Loej;->c:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const-string v1, "Failed to unregister the network broadcast receiver"

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {p0}, Loej;->7ecc92917e9c4556cc19f457ddc41af8m()Loei;

    move-result-object p0

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const-string v1, "Unregistering connectivity change receiver"

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0, v1}, Lodi;->q(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_18
    const v1, 0x14

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
    invoke-virtual {p0, v1, v0}, Lodi;->o(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_9

    nop

    nop

    nop
.end method

.method protected final d()Z
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    :catch_0
    :cond_0
    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    const-string v0, "connectivity"

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    :try_start_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    nop

    nop

    nop

    if-eqz p0, :cond_0

    nop

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    nop
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    check-cast p0, Landroid/net/ConnectivityManager;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    if-nez p0, :cond_1

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

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Loej;->a()Landroid/content/Context;

    move-result-object p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_8
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return v0

    nop

    nop

    nop
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_1
    if-nez p2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p2, p1, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const-string p1, "Radio powered up"

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4
    iget-boolean p2, p0, Loej;->d:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_5
    const-string p2, "com.google.android.gms.analytics.ANALYTICS_DISPATCH"

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, p1}, Lodi;->q(Ljava/lang/String;)V

    goto/32 :goto_31

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_b
    if-eqz p1, :cond_1

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_c
    const/4 v0, 0x1

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Lodm;->d()Loei;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_e
    invoke-virtual {p1}, Lodm;->d()Loei;

    move-result-object p1

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_f
    if-nez p1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Lodi;->e()Lodf;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3e

    nop

    :goto_13
    const-string p1, "com.google.analytics.RADIO_POWERED"

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_14
    iget-object p1, p0, Loej;->b:Lodm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {p0}, Loej;->23ce148e54b083367f51e25c7971761em()Lodh;

    move-result-object p0

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0}, Loej;->d()Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_17
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {p0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_19
    sget-object p1, Loej;->a:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_1a
    const-string p1, "android.net.conn.CONNECTIVITY_CHANGE"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_1b
    const-string p2, "Network connectivity status changed"

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p1, v1, v0}, Lodi;->r(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iput-boolean p1, p0, Loej;->d:Z

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1e
    const-string p1, "NetworkBroadcastReceiver received unknown action"

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p0}, Loej;->b()V

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_20
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_21
    const-string v0, "com.google.android.gms.analytics.AnalyticsService"

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p1, p2}, Lodf;->b(Ljava/lang/Runnable;)V

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    new-instance p2, Lodu;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p0, p1}, Lodh;->b(Loec;)V

    :goto_25
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {p1}, Loen;->a(Landroid/content/Context;)Z

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_28
    if-ne p2, p1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :cond_4
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_29
    invoke-direct {p0}, Loej;->23ce148e54b083367f51e25c7971761em()Lodh;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2a
    invoke-virtual {p1, p0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p0}, Lodi;->d()Landroid/content/Context;

    move-result-object p1

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    return-void

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p0, p1, v0}, Lodi;->u(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p0}, Lodj;->z()V

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_32
    iget-object p0, p0, Loej;->b:Lodm;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_33
    if-nez p2, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_5
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_34
    invoke-static {p1}, Lnar;->t(Landroid/content/Context;)Z

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_35
    const-string v1, "NetworkBroadcastReceiver received action"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_36
    if-nez p1, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :cond_6
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_37
    new-instance p0, Landroid/content/Intent;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    new-instance p2, Landroid/content/ComponentName;

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_39
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    const v1, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_3c
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-direct {p2, p0, v0}, Lodu;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    const v0, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_41
    return-void

    nop

    nop

    :goto_42
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_43
    invoke-virtual {p0, p2, p1}, Lodi;->r(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop
.end method
