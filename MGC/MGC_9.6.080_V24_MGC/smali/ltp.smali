.class public final Lltp;
.super Lfun;
.source "PG"

# interfaces
.implements Landroid/os/IInterface;


# instance fields
.field public a:Ljava/util/TimerTask;

.field final synthetic b:Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;

.field private final c:Ljava/util/Timer;


# direct methods
.method private final declared-synchronized 33f5b80483094659737b73d90f80a8a4m(I)V
    .locals 3

    goto/32 :goto_5

    nop

    nop

    :goto_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-direct {p0}, Lltp;->da190e616797844b591057d0190e7728m()Z

    new-instance v0, Lltu;

    nop

    nop

    nop

    invoke-direct {v0, p0, p1}, Lltu;-><init>(Lltp;I)V

    iput-object v0, p0, Lltp;->a:Ljava/util/TimerTask;

    nop

    nop

    nop

    iget-object p1, p0, Lltp;->c:Ljava/util/Timer;

    nop

    nop

    const-wide/16 v1, 0xfa

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
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

    :goto_8
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    const v1, 0x4

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_b
    return-void

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

    goto/32 :goto_8

    nop

    nop

    :goto_c
    monitor-exit p0

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
.end method

.method public constructor <init>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, v0}, Lfun;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    const-string v0, "com.google.android.apps.camera.remotecontrol.IRemoteControlService"

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

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    new-instance p1, Ljava/util/Timer;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lltp;->b:Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lltp;->a:Ljava/util/TimerTask;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    invoke-direct {p0, p1}, Lfun;-><init>(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    const-string p1, "com.google.android.apps.camera.remotecontrol.IRemoteControlService"

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    iput-object p1, p0, Lltp;->c:Ljava/util/Timer;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    const/4 p1, 0x0

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

    :goto_8
    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private final declared-synchronized da190e616797844b591057d0190e7728m()Z
    .locals 2

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_0
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

    :goto_1
    return v0

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    :goto_2
    const/4 p0, 0x0

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

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

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_1
    goto/32 :goto_a

    nop

    :goto_6
    throw v0

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    monitor-exit p0

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

    :goto_9
    const v1, 0x1b

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_f

    nop

    nop

    :goto_c
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_d
    return p0

    nop

    :catchall_0
    move-exception v0

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0xf

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_f
    monitor-enter p0

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Lltp;->a:Ljava/util/TimerTask;

    nop

    nop

    nop

    if-eqz v0, :cond_0

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    move-result v0

    nop

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    iput-object v1, p0, Lltp;->a:Ljava/util/TimerTask;

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_8

    nop

    nop
.end method


# virtual methods
.method public final b()Z
    .locals 2

    goto/32 :goto_f

    nop

    nop

    :goto_0
    iget v0, v0, Ljow;->c:I

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-eqz p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    :goto_3
    if-gtz v0, :cond_1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_2
    goto/32 :goto_7

    nop

    :goto_7
    goto/32 :goto_15

    nop

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Lltp;->b:Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;

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
    const v1, 0x9

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_b
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return p0

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x13

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

    :goto_10
    const/4 p0, 0x1

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

    :goto_11
    invoke-virtual {p0}, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->e()Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->b:Ljow;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_14
    return v1

    nop

    :goto_15
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final y(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_23

    nop

    nop

    nop

    :goto_3
    packed-switch p1, :pswitch_data_1

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-boolean v1, p1, Lltr;->b:Z

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lscs;->b()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lltp;->b:Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, p1, p3}, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->c(IZ)V

    goto/32 :goto_22

    nop

    nop

    :goto_9
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/16 :goto_66

    nop

    nop

    :pswitch_0
    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    :goto_b
    const/16 p1, 0x8

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    :goto_c
    if-ne p1, v4, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_70

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_f
    if-ne v2, p2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_61

    nop

    nop

    :goto_10
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->b()Lltr;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_12
    goto/16 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0}, Lscs;->b()Lsdo;

    move-result-object p0

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_15
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_16
    sget-object p0, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->a:Lsdb;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object p0, p0, Lltp;->b:Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->c(IZ)V

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-nez p2, :cond_2

    nop

    nop

    goto/32 :goto_70

    nop

    :cond_2
    goto/32 :goto_b7

    nop

    nop

    nop

    :goto_1c
    iget-object p0, p0, Lltp;->b:Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-nez p2, :cond_3

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_1f
    if-nez p2, :cond_4

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    :cond_4
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_20
    invoke-interface {p0, p1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/32 :goto_bd

    nop

    nop

    nop

    :goto_22
    goto/16 :goto_70

    nop

    nop

    :goto_23
    :pswitch_1
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_24
    goto/16 :goto_70

    nop

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object p0, p0, Lltr;->h:Lj$/util/concurrent/ConcurrentLinkedQueue;

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/16 :goto_70

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/16 :goto_70

    nop

    nop

    :pswitch_4
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_28
    move v1, v2

    nop

    :goto_29
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2a
    check-cast p0, Lscz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p0, p1, p3}, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->c(IZ)V

    goto/32 :goto_aa

    nop

    nop

    nop

    :goto_2c
    if-gez p1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_93

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p0, v3, p3}, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->c(IZ)V

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_2f
    goto/16 :goto_4a

    nop

    nop

    :pswitch_5
    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    :goto_30
    const/16 p2, 0xfa9

    nop

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    :goto_31
    iget-object p0, p0, Lltr;->h:Lj$/util/concurrent/ConcurrentLinkedQueue;

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

    :goto_32
    iput-wide p2, p0, Lltr;->g:J

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_33
    invoke-direct {p0, p2}, Lltp;->33f5b80483094659737b73d90f80a8a4m(I)V

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_34
    iget-object p0, p0, Lltp;->b:Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_35
    iget-object p0, p0, Lltp;->b:Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_36
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iget-object p2, p0, Lltp;->b:Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_38
    if-nez p3, :cond_6

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_39
    if-nez p2, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_3a
    goto/16 :goto_70

    nop

    nop

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_92

    nop

    nop

    :goto_3b
    return v1

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_3c
    const/4 v3, 0x6

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    :goto_3d
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_e
        :pswitch_6
        :pswitch_3
        :pswitch_a
        :pswitch_0
        :pswitch_5
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_9
        :pswitch_b
        :pswitch_d
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_8
    .end packed-switch

    :goto_3e
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object p0, p0, Lltp;->b:Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-interface {p2, p1}, Lltq;->a(I)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-direct {p0}, Lltp;->da190e616797844b591057d0190e7728m()Z

    move-result p2

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

    nop

    :goto_42
    iput p1, p0, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->d:I

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_b0

    nop

    nop

    nop

    :goto_44
    invoke-static {p2}, Lfuo;->b(Landroid/os/Parcel;)V

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    check-cast p2, Lltq;

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    :goto_46
    const/4 p1, 0x4

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_47
    goto/16 :goto_70

    nop

    :pswitch_8
    goto/32 :goto_63

    nop

    nop

    nop

    :goto_48
    move v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    :goto_4a
    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-static {p2}, Lfuo;->b(Landroid/os/Parcel;)V

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_4c
    iget-object p0, p0, Lltp;->b:Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_4d
    invoke-interface {p0, p1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {p0}, Lltp;->b()Z

    move-result p2

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {p2}, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->e()Z

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-virtual {p0, p1, v1}, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->c(IZ)V

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-virtual {p0, v1}, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->d(Z)V

    goto/32 :goto_27

    nop

    nop

    :goto_52
    iget-object p2, p0, Lltp;->b:Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_53
    if-nez p3, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_54
    goto/16 :goto_70

    nop

    nop

    nop

    nop

    nop

    :pswitch_9
    goto/32 :goto_c0

    nop

    nop

    :goto_55
    iput p1, p0, Lltr;->d:F

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual {p0, v2}, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->d(Z)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_57
    const v0, 0xa

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_58
    if-le p1, p2, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_9
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_59
    const/16 p2, 0x9

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    iget-object p0, p0, Lltp;->b:Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    iput-wide p2, p0, Lltr;->e:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {p2}, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->e()Z

    move-result p2

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-static {p2}, Lfuo;->b(Landroid/os/Parcel;)V

    goto/32 :goto_a5

    nop

    nop

    :goto_5e
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_5f
    if-ne v2, p0, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    :cond_a
    goto/32 :goto_9a

    nop

    nop

    :goto_60
    check-cast p0, Lscz;

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    :goto_61
    move v0, p1

    nop

    nop

    nop

    nop

    :goto_62
    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_63
    iget-object p0, p0, Lltp;->b:Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    invoke-direct {p0, p1}, Lltp;->33f5b80483094659737b73d90f80a8a4m(I)V

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_65
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    nop

    :goto_66
    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :goto_67
    iput p1, p0, Lltr;->c:I

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_68
    goto/16 :goto_70

    nop

    nop

    :pswitch_a
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_69
    const/16 p1, 0xfa8

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    iget-object p0, p0, Lltr;->h:Lj$/util/concurrent/ConcurrentLinkedQueue;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    if-nez p2, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_6c
    if-nez p2, :cond_c

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_1c

    nop

    nop

    :goto_6d
    sget p1, Lfuo;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    const-string p1, "handleRemoteKeyEvent: Unknown Key event received. Ignoring it."

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_70
    goto/32 :goto_3d

    nop

    nop

    :goto_71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_72
    if-nez p2, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_73
    check-cast p2, Lltq;

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    iget-object p0, p0, Lltp;->b:Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    :goto_75
    iget-object p2, p0, Lltp;->b:Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    :goto_76
    sget-object p0, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->a:Lsdb;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_77
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    :goto_78
    iget-object p0, p0, Lltp;->b:Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_79
    invoke-virtual {p2}, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->e()Z

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    move v1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    packed-switch p1, :pswitch_data_0

    goto/32 :goto_3b

    nop

    nop

    :goto_7c
    invoke-direct {p0}, Lltp;->da190e616797844b591057d0190e7728m()Z

    move-result p3

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    if-ne v2, p3, :cond_e

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_7e
    goto/16 :goto_62

    nop

    :goto_7f
    goto/32 :goto_41

    nop

    nop

    nop

    :goto_80
    const/4 p1, 0x3

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_81
    if-eq p1, v3, :cond_f

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_2

    nop

    nop

    :goto_82
    goto/16 :goto_70

    nop

    nop

    nop

    :goto_83
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_84
    goto/16 :goto_70

    nop

    nop

    nop

    :pswitch_b
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_85
    if-nez p2, :cond_10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_86
    if-nez p2, :cond_11

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_b1

    nop

    nop

    :goto_87
    iget p0, p0, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->d:I

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    :goto_88
    invoke-static {p2}, Lfuo;->e(Landroid/os/Parcel;)Z

    move-result p3

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :goto_89
    invoke-virtual {p0}, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->b()Lltr;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    const v1, 0x1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    :goto_8b
    invoke-static {p2}, Lfuo;->b(Landroid/os/Parcel;)V

    goto/32 :goto_b4

    nop

    nop

    :goto_8c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    if-eqz p2, :cond_12

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_8f
    invoke-virtual {p0}, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->b()Lltr;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_90
    and-int/2addr p0, v2

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    add-int v0, v0, v1

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_92
    invoke-virtual {p0}, Lltp;->b()Z

    move-result p0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_93
    const/16 p2, 0x64

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_94
    move p1, p2

    nop

    nop

    nop

    nop

    :goto_95
    goto/32 :goto_78

    nop

    nop

    :goto_96
    invoke-virtual {p0, v4, p3}, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->c(IZ)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_97
    goto/16 :goto_70

    nop

    :pswitch_c
    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_98
    invoke-interface {p2, p1}, Lltq;->d(F)V

    goto/32 :goto_2f

    nop

    nop

    :goto_99
    if-lez v0, :cond_13

    nop

    goto/32 :goto_b0

    nop

    :cond_13
    goto/32 :goto_af

    nop

    :goto_9a
    goto/16 :goto_29

    nop

    nop

    :goto_9b
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_9c
    iput p1, p0, Lltr;->f:F

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_9d
    invoke-virtual {p0}, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->b()Lltr;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    :goto_9e
    const/4 v0, 0x2

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    invoke-static {p2}, Lfuo;->b(Landroid/os/Parcel;)V

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_a0
    const/4 v4, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    const-string p2, "Ignoring invalid value for external case battery: %d"

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    goto/16 :goto_70

    nop

    nop

    nop

    nop

    :goto_a3
    goto/32 :goto_b3

    nop

    nop

    :goto_a4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    :goto_a5
    iget-object p2, p0, Lltp;->b:Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    :goto_a6
    const/4 p1, 0x7

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

    :goto_a7
    invoke-virtual {p0}, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->e()Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_a8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_a9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_aa
    goto/16 :goto_70

    nop

    nop

    nop

    nop

    nop

    :pswitch_d
    goto/32 :goto_80

    nop

    nop

    nop

    :goto_ab
    if-eqz p2, :cond_14

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

    :cond_14
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    invoke-interface {p0, p2, p1}, Lscz;->t(Ljava/lang/String;I)V

    goto/32 :goto_68

    nop

    nop

    :goto_ad
    check-cast p2, Lltq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    :goto_ae
    invoke-interface {p2, p1}, Lltq;->c(F)V

    goto/32 :goto_a

    nop

    nop

    :goto_af
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_b0
    goto/32 :goto_9e

    nop

    nop

    :goto_b1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    if-nez p3, :cond_15

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_64

    nop

    nop

    :goto_b3
    if-nez p3, :cond_16

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    iget-object p2, p0, Lltp;->b:Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    goto/16 :goto_95

    nop

    :goto_b6
    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    iget-object p0, p0, Lltp;->b:Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    invoke-virtual {p2}, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->e()Z

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_b9
    sget p1, Lfuo;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_ba
    invoke-virtual {p2}, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->e()Z

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    invoke-virtual {p0, v2, p3}, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->c(IZ)V

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_bd
    goto/16 :goto_70

    nop

    nop

    nop

    :pswitch_e
    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    :goto_be
    invoke-interface {p0, p2}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    iget-object p0, p0, Lltp;->b:Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;

    nop

    goto/32 :goto_a7

    nop

    nop

    :goto_c0
    iget-object p0, p0, Lltp;->b:Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop
.end method
