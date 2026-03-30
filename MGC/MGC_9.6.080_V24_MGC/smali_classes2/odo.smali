.class public final Lodo;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public volatile a:Z

.field public final synthetic b:Lodp;

.field public volatile c:Loeg;


# direct methods
.method protected constructor <init>(Lodp;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lodo;->b:Lodp;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x11

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

    :goto_1
    goto/16 :goto_10

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    :goto_3
    const-string p1, "AnalyticsServiceConnection.onServiceConnected"

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

    :goto_4
    move-object v0, p1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_6
    throw p1

    nop

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x2

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9
    monitor-enter p0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-interface {p2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    const-string v1, "com.google.android.gms.analytics.internal.IAnalyticsService"

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    if-eqz v1, :cond_3

    nop

    nop

    nop

    const-string v0, "com.google.android.gms.analytics.internal.IAnalyticsService"

    nop

    nop

    nop

    nop

    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    nop

    nop

    instance-of v1, v0, Loeg;

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    check-cast v0, Loeg;

    nop

    nop

    nop

    nop

    goto :goto_c

    nop

    nop

    nop

    :cond_1
    new-instance v0, Loeg;

    nop

    nop

    nop

    nop

    invoke-direct {v0, p2}, Loeg;-><init>(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_c
    :try_start_1
    iget-object p2, p0, Lodo;->b:Lodp;

    nop

    nop

    const-string v1, "Bound to IAnalyticsService interface"

    nop

    nop

    invoke-virtual {p2, v1}, Lodi;->q(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {p1}, Lolx;->ab(Ljava/lang/String;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-eqz v0, :cond_2

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_2
    :try_start_2
    invoke-static {}, Lols;->a()Lols;

    move-result-object p1

    nop

    nop

    nop

    nop

    iget-object p2, p0, Lodo;->b:Lodp;

    nop

    nop

    invoke-virtual {p2}, Lodi;->d()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    nop

    nop

    iget-object p2, p2, Lodp;->a:Lodo;

    nop

    invoke-virtual {p1, v0, p2}, Lols;->b(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_15

    nop

    nop

    :goto_f
    move-object v0, p1

    nop

    :catch_0
    :try_start_3
    iget-object p2, p0, Lodo;->b:Lodp;

    nop

    nop

    nop

    const-string v1, "Service connect failed to get IAnalyticsService"

    nop

    nop

    invoke-virtual {p2, v1}, Lodi;->n(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_10
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto :goto_10

    nop

    nop

    nop

    :cond_3
    :try_start_4
    iget-object p2, p0, Lodo;->b:Lodp;

    nop

    nop

    const-string v1, "Got binder with a wrong descriptor"

    nop

    nop

    invoke-virtual {p2, v1, v0}, Lodi;->o(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    :goto_13
    goto/32 :goto_b

    nop

    nop

    :goto_14
    goto :goto_18

    nop

    nop

    nop

    nop

    :catch_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto :goto_17

    nop

    nop

    nop

    :goto_16
    :try_start_5
    iget-boolean p2, p0, Lodo;->a:Z

    nop

    nop

    nop

    if-nez p2, :cond_4

    nop

    iget-object p2, p0, Lodo;->b:Lodp;

    nop

    nop

    const-string v1, "onServiceConnected received after the timeout limit"

    nop

    nop

    nop

    invoke-virtual {p2, v1}, Lodi;->t(Ljava/lang/String;)V

    iget-object p2, p0, Lodo;->b:Lodp;

    nop

    nop

    nop

    nop

    invoke-virtual {p2}, Lodi;->e()Lodf;

    move-result-object p2

    nop

    nop

    new-instance v1, Locn;

    nop

    nop

    nop

    nop

    const/4 v2, 0x5

    nop

    invoke-direct {v1, p0, v0, v2, p1}, Locn;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[C)V

    invoke-virtual {p2, v1}, Lodf;->b(Ljava/lang/Runnable;)V

    goto :goto_17

    nop

    nop

    nop

    nop

    :cond_4
    iput-object v0, p0, Lodo;->c:Loeg;

    nop

    nop

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_2
    :goto_17
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    throw p1

    nop

    :catchall_1
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_19
    if-eqz p2, :cond_5

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_5
    :try_start_7
    iget-object p1, p0, Lodo;->b:Lodp;

    nop

    nop

    nop

    const-string p2, "Service connected with null binder"

    nop

    nop

    invoke-virtual {p1, p2}, Lodi;->n(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    nop

    nop
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0x12

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v1, Locn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v3, 0x0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, v1}, Lodf;->b(Ljava/lang/Runnable;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {v0}, Lolx;->ab(Ljava/lang/String;)V

    goto/32 :goto_12

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Lodi;->e()Lodf;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const-string v0, "AnalyticsServiceConnection.onServiceDisconnected"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_9
    invoke-direct {v1, p0, p1, v2, v3}, Locn;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[S)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_b
    const/4 v2, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_6

    nop

    nop

    :goto_e
    goto/32 :goto_8

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x13

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_12
    iget-object v0, p0, Lodo;->b:Lodp;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop
.end method
