.class public final Loju;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lojy;

.field private final b:I


# direct methods
.method public constructor <init>(Lojy;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Loju;->a:Lojy;

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

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iput p2, p0, Loju;->b:I

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p1, p0, Loju;->a:Lojy;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_4
    const/4 p1, 0x5

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_5
    iput-boolean p1, p0, Lojy;->l:Z

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

    :goto_6
    iget-object p1, p1, Lojy;->e:Ljava/lang/Object;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p1, p0, Loju;->a:Lojy;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_8
    const/4 p1, 0x4

    nop

    :goto_9
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_a
    if-eq p2, p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :cond_0
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_b
    const v0, 0x11

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/32 :goto_13

    nop

    nop

    :goto_d
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_f
    monitor-enter p1

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Loju;->a:Lojy;

    nop

    nop

    const-string v1, "com.google.android.gms.common.internal.IGmsServiceBroker"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_1

    nop

    instance-of v2, v1, Lokv;

    nop

    nop

    nop

    if-eqz v2, :cond_1

    nop

    check-cast v1, Lokv;

    nop

    nop

    goto :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_1
    new-instance v1, Lokv;

    nop

    invoke-direct {v1, p2}, Lokv;-><init>(Landroid/os/IBinder;)V

    :goto_10
    iput-object v1, v0, Lojy;->o:Lokv;

    nop

    nop

    monitor-exit p1

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_11
    iget-object p0, p0, Loju;->a:Lojy;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object p0, p0, Lojy;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p1

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_15
    const/16 v0, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_16
    monitor-enter p1

    nop

    :try_start_2
    iget p2, p0, Lojy;->h:I

    nop

    monitor-exit p1

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p2, p1, p0, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_18
    const v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-eqz p2, :cond_2

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_2
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object p2, p0, Lojy;->c:Landroid/os/Handler;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p1, v0, p2, p0}, Lojy;->y(ILandroid/os/Bundle;I)V

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1d
    iget-object p1, p0, Lojy;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_28

    nop

    nop

    :goto_20
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_3
    goto/32 :goto_d

    nop

    :goto_21
    return-void

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    :try_start_3
    monitor-exit p1

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const/4 p2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/16 :goto_9

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_8

    nop

    nop

    :goto_25
    const/4 p1, 0x1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_26
    const/4 v0, 0x0

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const/4 p1, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_29
    iget p0, p0, Loju;->b:I

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

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

    :goto_1
    invoke-virtual {p1, v0, p0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x6

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x17

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    :goto_5
    iget p0, p0, Loju;->b:I

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p1, p1, Lojy;->c:Landroid/os/Handler;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_9
    iget-object p1, p0, Loju;->a:Lojy;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p1, p0, Loju;->a:Lojy;

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

    :goto_b
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_9

    nop

    nop

    :goto_d
    const v1, 0x10

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_e
    throw p0

    nop

    nop

    :goto_f
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p1

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_11
    monitor-enter p1

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Loju;->a:Lojy;

    nop

    nop

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    iput-object v1, v0, Lojy;->o:Lokv;

    nop

    nop

    monitor-exit p1

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_12
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_13
    iget-object p1, p1, Lojy;->e:Ljava/lang/Object;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop
.end method
