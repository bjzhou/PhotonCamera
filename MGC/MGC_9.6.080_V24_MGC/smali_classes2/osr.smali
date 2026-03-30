.class public Losr;
.super Landroid/app/Service;
.source "PG"

# interfaces
.implements Losj;
.implements Losb;


# instance fields
.field public a:Losp;

.field public b:Landroid/content/Intent;

.field public final c:Ljava/lang/Object;

.field public d:Z

.field public final e:Lotg;

.field private f:Landroid/content/ComponentName;

.field private g:Landroid/os/IBinder;

.field private h:Landroid/os/Looper;


# direct methods
.method public constructor <init>()V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Losr;->c:Ljava/lang/Object;

    nop

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

    :goto_1
    new-instance v0, Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

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

    nop

    nop

    :goto_3
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0, v1}, Lotg;-><init>(Lolx;)V

    goto/32 :goto_e

    nop

    nop

    :goto_5
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v1, Lolx;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x1

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

    :goto_8
    const v1, 0x1e

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v0, Lotg;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_10

    nop

    :goto_e
    iput-object v0, p0, Losr;->e:Lotg;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_5

    nop

    nop

    :goto_11
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

    :goto_12
    invoke-direct {v1}, Lolx;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public a(Lovc;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

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
    throw p0

    nop

    nop
.end method

.method public final b(Loti;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop
.end method

.method public final c(Loti;)V
    .locals 0

    goto/32 :goto_0

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

    nop
.end method

.method public final d(Loti;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop
.end method

.method public final e(Loti;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_1d

    nop

    nop

    :sswitch_0
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_1
    const-string v0, "com.google.android.gms.wearable.BIND_LISTENER"

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_2
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p1, 0x4

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p1, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_6
    const/4 p1, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_7
    if-nez p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 p1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_9
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_a
    goto/16 :goto_17

    nop

    nop

    :pswitch_0
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_b
    goto/16 :goto_1d

    nop

    nop

    :sswitch_1
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_c
    if-nez p1, :cond_2

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :sswitch_2
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_e
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :sswitch_data_0
    .sparse-switch
        -0x58a77b26 -> :sswitch_4
        -0x43f478a2 -> :sswitch_0
        -0x2ee4df1a -> :sswitch_1
        0x2a067729 -> :sswitch_2
        0x36963f2c -> :sswitch_3
        0x3bd4e991 -> :sswitch_5
        0x5714b7e9 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :goto_f
    goto/16 :goto_1d

    nop

    nop

    nop

    nop

    :sswitch_3
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

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

    :goto_11
    const-string v0, "com.google.android.gms.wearable.DATA_CHANGED"

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    nop

    nop

    nop

    sparse-switch v0, :sswitch_data_0

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_13
    goto :goto_1d

    nop

    :sswitch_4
    goto/32 :goto_26

    nop

    nop

    :goto_14
    const/4 p0, 0x0

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

    :goto_15
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_16
    return-object p0

    nop

    :goto_17
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-nez p1, :cond_3

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :cond_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_19
    if-nez p1, :cond_4

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_5

    nop

    nop

    :goto_1a
    const/4 p1, 0x5

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

    :goto_1b
    const-string v0, "com.google.android.gms.wearable.NODE_MIGRATED"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_1c
    const/4 p1, -0x1

    nop

    :goto_1d
    packed-switch p1, :pswitch_data_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 v0, 0x0

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-eqz p1, :cond_5

    nop

    nop

    goto/32 :goto_23

    nop

    :cond_5
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_21
    iget-object p0, p0, Losr;->g:Landroid/os/IBinder;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_22
    goto/16 :goto_17

    nop

    :goto_23
    goto/32 :goto_33

    nop

    nop

    :goto_24
    sget-object v0, Lcom/google/android/libraries/mdi/download/workmanager/workers/UTR/fllg;->hDQnrZ:Ljava/lang/String;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-nez p1, :cond_6

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const-string v0, "com.google.android.gms.wearable.CAPABILITY_CHANGED"

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const-string v0, "com.google.android.gms.wearable.REQUEST_RECEIVED"

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_28
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

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

    :goto_29
    const-string v0, "com.google.android.gms.wearable.MESSAGE_RECEIVED"

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_2a
    if-nez p1, :cond_7

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_2b
    goto/16 :goto_1d

    nop

    nop

    nop

    nop

    :sswitch_5
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    if-nez p1, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :cond_8
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2e
    goto/16 :goto_1d

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_1c

    nop

    nop

    :goto_30
    goto :goto_2f

    nop

    :sswitch_6
    goto/32 :goto_1

    nop

    nop

    :goto_31
    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_32
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    nop

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

    nop
.end method

.method public final onCreate()V
    .locals 3

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string v1, "com.google.android.gms.wearable.BIND_LISTENER"

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_2
    const-string v2, "WearableListenerService"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_3
    iput-object v1, p0, Losr;->h:Landroid/os/Looper;

    nop

    nop

    :goto_4
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_8
    invoke-direct {v0, p0, v1}, Losp;-><init>(Losr;Landroid/os/Looper;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v0, Losq;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_c
    iput-object v0, p0, Losr;->b:Landroid/content/Intent;

    nop

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

    :goto_d
    iget-object v1, p0, Losr;->h:Landroid/os/Looper;

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

    :goto_e
    if-eqz v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_10
    iget-object v1, p0, Losr;->h:Landroid/os/Looper;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_11
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_12
    iget-object v1, p0, Losr;->f:Landroid/content/ComponentName;

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

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_14
    new-instance v1, Landroid/content/ComponentName;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_15
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_16
    iput-object v1, p0, Losr;->f:Landroid/content/ComponentName;

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_17
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    goto/32 :goto_7

    nop

    nop

    :goto_18
    return-void

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_1a
    iput-object v0, p0, Losr;->a:Losp;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    new-instance v0, Losp;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-direct {v1, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    goto/32 :goto_15

    nop

    nop

    :goto_1e
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1f
    new-instance v1, Landroid/os/HandlerThread;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-lez v0, :cond_1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    :goto_21
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_22
    new-instance v0, Landroid/content/Intent;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_23
    invoke-direct {v0, p0}, Losq;-><init>(Losr;)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iput-object v0, p0, Losr;->g:Landroid/os/IBinder;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_25
    const v0, 0x2

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

    nop
.end method

.method public final onDestroy()V
    .locals 4

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_1
    const v0, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2
    const/4 v2, 0x1

    nop

    nop

    nop

    :try_start_0
    iput-boolean v2, p0, Losr;->d:Z

    nop

    nop

    nop

    nop

    iget-object v2, p0, Losr;->a:Losp;

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_1

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Losp;->getLooper()Landroid/os/Looper;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    invoke-virtual {v2}, Losp;->b()V

    monitor-exit v1

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

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

    :goto_4
    throw p0

    nop

    :goto_5
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_6
    const-string v0, "onDestroy: mServiceHandler not set, did you override onCreate() but forget to call super.onCreate()? component="

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    iget-object v1, p0, Losr;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_c
    monitor-enter v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    iget-object p0, p0, Losr;->f:Landroid/content/ComponentName;

    nop

    nop

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    new-instance v3, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    invoke-direct {v2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    monitor-exit v1

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x1a

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

    :goto_f
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop
.end method
