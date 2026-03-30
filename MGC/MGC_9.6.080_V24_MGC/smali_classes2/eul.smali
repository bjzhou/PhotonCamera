.class public final Leul;
.super Leui;
.source "PG"


# instance fields
.field public final e:Landroid/net/ConnectivityManager;

.field private final f:Leuk;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lts;)V
    .locals 0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    const-string p2, "connectivity"

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2

    nop

    nop

    :goto_2
    check-cast p1, Landroid/net/ConnectivityManager;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_3
    invoke-direct {p1, p0}, Leuk;-><init>(Leul;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance p1, Leuk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p1, p0, Leui;->a:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    :goto_8
    iput-object p1, p0, Leul;->e:Landroid/net/ConnectivityManager;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p1, p0, Leul;->f:Leuk;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_a
    invoke-direct {p0, p1, p2}, Leui;-><init>(Landroid/content/Context;Lts;)V

    goto/32 :goto_6

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Leum;->a(Landroid/net/ConnectivityManager;)Letn;

    move-result-object p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Leul;->e:Landroid/net/ConnectivityManager;

    nop

    nop

    goto/32 :goto_0

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

    nop
.end method

.method public final d()V
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_4
    sget-object v1, Leum;->a:Ljava/lang/String;

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_5
    const v0, 0x4

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_6
    sget-object v0, Lcom/google/vr/ndk/base/qbMr/qVSTXuYNqkCvm;->ffZaJNkvWX:Ljava/lang/String;

    nop

    nop

    nop

    :try_start_0
    invoke-static {}, Leqh;->b()V

    sget-object v1, Leum;->a:Ljava/lang/String;

    nop

    nop

    iget-object v1, p0, Leul;->e:Landroid/net/ConnectivityManager;

    nop

    nop

    iget-object p0, p0, Leul;->f:Leuk;

    nop

    nop

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, p0}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v0, 0x0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_a
    sget-object v1, Leum;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_b
    return-void

    nop

    :catch_0
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {}, Leqh;->b()V

    goto/32 :goto_4

    nop

    nop

    :goto_e
    goto/32 :goto_3

    nop

    :goto_f
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {}, Leqh;->b()V

    goto/32 :goto_a

    nop

    nop

    :goto_11
    const v1, 0x20

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    nop

    :catch_1
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_f

    nop

    nop

    nop

    nop
.end method

.method public final e()V
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {}, Leqh;->b()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sget-object v1, Leum;->a:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :catch_1
    move-exception p0

    nop

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

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const-string v0, "Received exception while unregistering network callback"

    nop

    :try_start_0
    invoke-static {}, Leqh;->b()V

    sget-object v1, Leum;->a:Ljava/lang/String;

    nop

    nop

    iget-object v1, p0, Leul;->e:Landroid/net/ConnectivityManager;

    nop

    nop

    iget-object p0, p0, Leul;->f:Leuk;

    nop

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, p0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_b
    const v0, 0xc

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    :goto_d
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    sget-object v1, Leum;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_f
    invoke-static {}, Leqh;->b()V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_11
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_12
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop
.end method
