.class public Loby;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final b:Landroid/content/Context;

.field public final c:Ljava/util/concurrent/ScheduledExecutorService;

.field public final d:J

.field private final e:Landroid/net/ConnectivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    sput-object v0, Loby;->a:Lsdb;

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

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    const-string v0, "oby"

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

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
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;J)V
    .locals 1

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    iput-wide p3, p0, Loby;->d:J

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p1, v0}, Ldtk;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

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
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_3
    const-string p1, "AndroidConnectivityHandler requires the ACCESS_NETWORK_STATE permission."

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

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

    nop

    :goto_5
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    throw p0

    nop

    nop

    :goto_7
    iput-object p1, p0, Loby;->e:Landroid/net/ConnectivityManager;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    const-class p2, Landroid/net/ConnectivityManager;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-object p1, p0, Loby;->b:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    :goto_c
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput-object p2, p0, Loby;->c:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_10
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_11
    check-cast p1, Landroid/net/ConnectivityManager;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop
.end method


# virtual methods
.method public final a(Locf;)Z
    .locals 4

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object p0, Loce;->b:Loce;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x2

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_2
    sget-object v3, Loce;->a:Loce;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_3
    goto :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, p0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p0

    nop

    nop

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

    :goto_6
    if-nez v3, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    :cond_0
    goto/32 :goto_49

    nop

    nop

    nop

    :goto_7
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v3, p0, Loby;->e:Landroid/net/ConnectivityManager;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-eq p1, v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_d
    sget-object p0, Loce;->d:Loce;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_e
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_f
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_b

    nop

    :goto_10
    invoke-virtual {v0, p0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p0

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/16 :goto_3a

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    return v2

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_15
    if-eqz p0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_16
    const/4 p0, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_17
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_18
    goto/16 :goto_8

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-nez p0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_4
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 p0, 0x3

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v3, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_1d
    if-nez p0, :cond_5

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-eqz v0, :cond_6

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-eqz p0, :cond_7

    nop

    goto/32 :goto_4f

    nop

    :cond_7
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_20
    sget-object p0, Loce;->e:Loce;

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_21
    rem-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_22
    return v2

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_24
    goto/16 :goto_8

    nop

    nop

    :goto_25
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-eqz v0, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p0, v3}, Lryy;->contains(Ljava/lang/Object;)Z

    move-result p0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_28
    if-nez v3, :cond_9

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :cond_9
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v0, p0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_2a
    return v2

    nop

    nop

    :goto_2b
    goto/32 :goto_41

    nop

    nop

    nop

    :goto_2c
    if-nez p0, :cond_a

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_2e
    goto/32 :goto_c

    nop

    nop

    :goto_2f
    sget-object v0, Locf;->a:Locf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget-object v0, p0, Loby;->e:Landroid/net/ConnectivityManager;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_31
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_33
    return v1

    nop

    :goto_34
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_36
    if-nez p0, :cond_b

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_20

    nop

    nop

    :goto_37
    goto/16 :goto_8

    nop

    :goto_38
    goto/32 :goto_1

    nop

    nop

    :goto_39
    return v2

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_3b
    if-nez p0, :cond_c

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_3d

    nop

    nop

    :goto_3c
    sget-object p0, Loce;->d:Loce;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    sget-object p0, Loce;->c:Loce;

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    return p0

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_41
    const/16 v3, 0xc

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_42
    if-eqz p0, :cond_d

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_d
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_43
    const v1, 0x1e

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_44
    goto/16 :goto_8

    nop

    :goto_45
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {p1, p0}, Lryy;->contains(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iget-boolean v3, p1, Locf;->c:Z

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

    :goto_49
    iget-object p0, p0, Loby;->e:Landroid/net/ConnectivityManager;

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_4a
    add-int v0, v0, v1

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    iget-object p1, p1, Locf;->d:Lryy;

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    iget-object p0, p1, Locf;->d:Lryy;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_50
    const v0, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop
.end method
