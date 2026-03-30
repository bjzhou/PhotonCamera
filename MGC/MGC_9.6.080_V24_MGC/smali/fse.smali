.class public final Lfse;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static volatile d:Lfse;


# instance fields
.field public a:Z

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_d

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Lfsb;

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

    :goto_3
    const v0, 0xc

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    new-instance v1, Loyb;

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

    :goto_6
    invoke-direct {v0, p0}, Lfsc;-><init>(Lfse;)V

    goto/32 :goto_5

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

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v0, Lfsc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_a
    new-instance p1, Lftp;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_13

    nop

    nop

    :goto_e
    invoke-direct {v0, p1}, Lfsb;-><init>(Landroid/content/Context;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput-object v0, p0, Lfse;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_10
    invoke-direct {p1, v0}, Lftp;-><init>(Lftq;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_11
    new-instance v0, Ljava/util/HashSet;

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

    :goto_12
    invoke-direct {v1, p1, v0}, Loyb;-><init>(Lftq;Lfrq;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1

    nop

    nop

    :goto_14
    iput-object v1, p0, Lfse;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_16
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
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0

    goto/32 :goto_6

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lfse;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance p1, Ljava/lang/Object;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance p1, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p1, p0, Lfse;->c:Ljava/lang/Object;

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
.end method

.method public constructor <init>(Lrka;Landroid/graphics/Typeface;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iput-object p1, p0, Lfse;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lfse;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method static a(Landroid/content/Context;)Lfse;
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_1
    sget-object v0, Lfse;->d:Lfse;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const-class v0, Lfse;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_5
    throw p0

    nop

    nop

    :goto_6
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    :goto_9
    const v1, 0x1f

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_a
    return-object p0

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x20

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    sget-object p0, Lfse;->d:Lfse;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

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

    nop

    :goto_10
    monitor-enter v0

    nop

    nop

    :try_start_0
    sget-object v1, Lfse;->d:Lfse;

    nop

    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    new-instance v1, Lfse;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, p0}, Lfse;-><init>(Landroid/content/Context;)V

    sput-object v1, Lfse;->d:Lfse;

    nop

    nop

    nop

    :cond_2
    monitor-exit v0

    nop

    goto/16 :goto_6

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    monitor-exit v0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method final declared-synchronized b(Lfrq;)V
    .locals 4

    goto/32 :goto_c

    nop

    nop

    :goto_0
    const v1, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_2
    goto/32 :goto_10

    nop

    nop

    :goto_3
    goto :goto_4

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    const-string v0, "ConnectivityMonitor"

    nop

    const/4 v1, 0x5

    nop

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_1

    nop

    const-string v0, "ConnectivityMonitor"

    nop

    const-string v1, "Failed to register callback"

    nop

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    move v1, v2

    nop

    nop

    nop

    :goto_4
    iput-boolean v1, p0, Lfse;->a:Z

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_6
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    monitor-enter p0

    nop

    nop

    nop

    :try_start_2
    iget-object v0, p0, Lfse;->b:Ljava/lang/Object;

    nop

    nop

    nop

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Lfse;->a:Z

    nop

    nop

    if-nez p1, :cond_4

    nop

    nop

    nop

    nop

    iget-object p1, p0, Lfse;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    if-eqz p1, :cond_2

    nop

    nop

    nop

    nop

    goto/16 :goto_b

    nop

    nop

    nop

    :cond_2
    iget-object p1, p0, Lfse;->c:Ljava/lang/Object;

    nop

    nop

    move-object v0, p1

    nop

    nop

    nop

    check-cast v0, Loyb;

    nop

    nop

    nop

    nop

    iget-object v0, v0, Loyb;->b:Ljava/lang/Object;

    nop

    invoke-interface {v0}, Lftq;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    check-cast v0, Landroid/net/ConnectivityManager;

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    move v0, v1

    nop

    nop

    nop

    nop

    nop

    goto :goto_8

    nop

    :cond_3
    move v0, v2

    nop

    :goto_8
    move-object v3, p1

    nop

    check-cast v3, Loyb;

    nop

    nop

    nop

    nop

    nop

    iput-boolean v0, v3, Loyb;->a:Z

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    move-object v0, p1

    nop

    check-cast v0, Loyb;

    nop

    nop

    nop

    iget-object v0, v0, Loyb;->b:Ljava/lang/Object;

    nop

    nop

    nop

    invoke-interface {v0}, Lftq;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Landroid/net/ConnectivityManager;

    nop

    nop

    nop

    check-cast p1, Loyb;

    nop

    nop

    nop

    nop

    nop

    iget-object p1, p1, Loyb;->d:Ljava/lang/Object;

    nop

    check-cast p1, Landroid/net/ConnectivityManager$NetworkCallback;

    nop

    nop

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_9
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    :cond_4
    :goto_b
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_d
    add-int v0, v0, v1

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

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_12

    nop

    :goto_10
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_11
    throw p1

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method final declared-synchronized c(Lfrq;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lfse;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Lfse;->a:Z

    nop

    nop

    nop

    if-eqz p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    iget-object p1, p0, Lfse;->b:Ljava/lang/Object;

    nop

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    nop

    nop

    if-nez p1, :cond_0

    nop

    nop

    goto :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    iget-object p1, p0, Lfse;->c:Ljava/lang/Object;

    nop

    nop

    nop

    move-object v0, p1

    nop

    nop

    nop

    nop

    check-cast v0, Loyb;

    nop

    iget-object v0, v0, Loyb;->b:Ljava/lang/Object;

    nop

    nop

    invoke-interface {v0}, Lftq;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    check-cast v0, Landroid/net/ConnectivityManager;

    nop

    nop

    nop

    nop

    check-cast p1, Loyb;

    nop

    nop

    nop

    nop

    nop

    iget-object p1, p1, Loyb;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast p1, Landroid/net/ConnectivityManager$NetworkCallback;

    nop

    nop

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 p1, 0x0

    nop

    iput-boolean p1, p0, Lfse;->a:Z

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    monitor-exit p0

    nop

    nop

    goto/32 :goto_4

    nop

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

    :catchall_0
    move-exception p1

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_1
    :goto_5
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    throw p1

    nop

    nop
.end method

.method public final d()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iput-boolean v0, p0, Lfse;->a:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final e(Landroid/graphics/Typeface;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iget-object p0, p0, Lfse;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    :goto_3
    iget-boolean v0, p0, Lfse;->a:Z

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    invoke-interface {p0, p1}, Lrka;->a(Landroid/graphics/Typeface;)V

    :goto_5
    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final f()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object v0, p0, Lfse;->c:Ljava/lang/Object;

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

    :goto_1
    check-cast v0, Landroid/graphics/Typeface;

    nop

    nop

    goto/32 :goto_3

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

    :goto_3
    invoke-virtual {p0, v0}, Lfse;->e(Landroid/graphics/Typeface;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method
