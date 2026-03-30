.class public final Lefg;
.super Landroid/os/Binder;
.source "PG"

# interfaces
.implements Lefh;


# instance fields
.field final synthetic a:Landroidx/room/MultiInstanceInvalidationService;


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p0, v0}, Lefg;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    sget-object v0, Lefg;->b:Ljava/lang/String;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroidx/room/MultiInstanceInvalidationService;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p0, p1}, Lefg;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lefg;->a:Landroidx/room/MultiInstanceInvalidationService;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    sget-object p1, Lefg;->b:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p1, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    :cond_0
    goto/32 :goto_18

    nop

    :goto_2
    add-int v0, v0, v1

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

    nop

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_70

    nop

    nop

    :goto_4
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p2, p0, Landroidx/room/MultiInstanceInvalidationService;->c:Landroid/os/RemoteCallbackList;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

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
    monitor-exit p3

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_8
    check-cast v0, Leff;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-eqz p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :cond_1
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/16 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_d
    throw p0

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v2, 0x1

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_10
    monitor-enter p2

    nop

    :try_start_0
    iget-object p4, p0, Landroidx/room/MultiInstanceInvalidationService;->c:Landroid/os/RemoteCallbackList;

    nop

    nop

    nop

    nop

    invoke-virtual {p4, v0}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    iget-object p0, p0, Landroidx/room/MultiInstanceInvalidationService;->b:Ljava/util/Map;

    nop

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    nop

    nop

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    check-cast p0, Ljava/lang/String;

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_11
    if-nez p4, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :cond_2
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v1, 0xffffff

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_13
    invoke-direct {v0, p1}, Lefd;-><init>(Landroid/os/IBinder;)V

    :goto_14
    goto/32 :goto_6

    nop

    nop

    :goto_15
    monitor-exit p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :goto_17
    goto/32 :goto_3f

    nop

    nop

    :goto_18
    goto/32 :goto_61

    nop

    :goto_19
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_1a
    sget p4, Lefe;->a:I

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/32 :goto_2b

    nop

    nop

    :goto_1c
    invoke-direct {v0, p1}, Lefd;-><init>(Landroid/os/IBinder;)V

    :goto_1d
    goto/32 :goto_20

    nop

    nop

    :goto_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_21
    throw p0

    nop

    nop

    :goto_22
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    new-instance v0, Lefd;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_24
    move-object v0, p4

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_25
    goto :goto_26

    nop

    nop

    nop

    :catch_0
    move-exception v3

    nop

    nop

    :try_start_1
    const-string v4, "ROOM"

    nop

    nop

    const-string v5, "Error invoking a remote callback"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :cond_3
    :goto_26
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    move-object v0, p4

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_29
    if-nez p4, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object p0, p0, Lefg;->a:Landroidx/room/MultiInstanceInvalidationService;

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_2b
    return v2

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    return v2

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_2f
    if-le p1, v1, :cond_5

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_16

    nop

    nop

    :goto_30
    if-eqz p1, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_6
    goto/32 :goto_a

    nop

    nop

    :goto_31
    monitor-exit p2

    nop

    nop

    :goto_32
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_34
    new-instance v0, Lefd;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_35
    if-eqz p1, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    :cond_7
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    monitor-exit p2

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_37
    iget-object p0, p0, Lefg;->a:Landroidx/room/MultiInstanceInvalidationService;

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_38
    if-ne p1, v0, :cond_8

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :cond_8
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_39
    if-eq p1, v1, :cond_9

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3b
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_3c
    sget-object p4, Lefe;->b:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3d
    invoke-interface {p1, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    nop

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

    :goto_3e
    sget-object p4, Lefe;->b:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_3f
    const v1, 0x5f4e5446

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

    :goto_40
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_41
    monitor-exit p3

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_42
    sget-object v0, Lefg;->b:Ljava/lang/String;

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_43
    goto/16 :goto_3b

    nop

    :catchall_1
    move-exception p0

    nop

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

    :goto_44
    monitor-exit p2

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_45
    monitor-enter p3

    nop

    nop

    nop

    nop

    :try_start_2
    iget-object p4, p0, Landroidx/room/MultiInstanceInvalidationService;->b:Ljava/util/Map;

    nop

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    nop

    nop

    nop

    nop

    check-cast p4, Ljava/lang/String;

    nop

    nop

    nop

    nop

    if-nez p4, :cond_c

    nop

    nop

    nop

    const-string p0, "ROOM"

    nop

    nop

    nop

    nop

    const-string p1, "Remote invalidation client ID not registered"

    nop

    nop

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    if-nez v3, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    :cond_a
    :try_start_3
    iget-object v3, p0, Landroidx/room/MultiInstanceInvalidationService;->c:Landroid/os/RemoteCallbackList;

    nop

    nop

    nop

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    nop

    nop

    nop

    nop

    check-cast v3, Leff;

    nop

    invoke-interface {v3, p2}, Leff;->a([Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_47
    goto/16 :goto_14

    nop

    :goto_48
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_49
    return p0

    nop

    nop

    :goto_4a
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_4b
    goto/16 :goto_32

    nop

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    if-lt v1, v0, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :cond_b
    :try_start_4
    iget-object v3, p0, Landroidx/room/MultiInstanceInvalidationService;->c:Landroid/os/RemoteCallbackList;

    nop

    nop

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v3, Ljava/lang/Integer;

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    nop

    nop

    nop

    nop

    iget-object v5, p0, Landroidx/room/MultiInstanceInvalidationService;->b:Ljava/util/Map;

    nop

    nop

    nop

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    check-cast v3, Ljava/lang/String;

    nop

    if-eq p1, v4, :cond_3

    nop

    nop

    nop

    invoke-static {p4, v3}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto/32 :goto_46

    nop

    nop

    :goto_4e
    goto/16 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :cond_c
    :try_start_5
    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationService;->c:Landroid/os/RemoteCallbackList;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    nop

    nop

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_4f
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_50
    if-ne p1, v3, :cond_d

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_d
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_51
    monitor-exit p2

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_52
    monitor-enter p2

    nop

    nop

    nop

    :try_start_6
    iget p4, p0, Landroidx/room/MultiInstanceInvalidationService;->a:I

    nop

    nop

    nop

    nop

    add-int/2addr p4, v2

    nop

    nop

    nop

    nop

    nop

    iput p4, p0, Landroidx/room/MultiInstanceInvalidationService;->a:I

    nop

    nop

    nop

    iget-object v3, p0, Landroidx/room/MultiInstanceInvalidationService;->c:Landroid/os/RemoteCallbackList;

    nop

    nop

    nop

    nop

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    nop

    nop

    nop

    invoke-virtual {v3, v0, v4}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    move-result v0

    nop

    if-eqz v0, :cond_e

    nop

    nop

    nop

    nop

    nop

    iget-object p0, p0, Landroidx/room/MultiInstanceInvalidationService;->b:Ljava/util/Map;

    nop

    invoke-interface {p0, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, p4

    nop

    nop

    nop

    nop

    goto :goto_53

    nop

    nop

    nop

    nop

    nop

    :cond_e
    iget p1, p0, Landroidx/room/MultiInstanceInvalidationService;->a:I

    nop

    nop

    nop

    add-int/lit8 p1, p1, -0x1

    nop

    nop

    nop

    nop

    nop

    iput p1, p0, Landroidx/room/MultiInstanceInvalidationService;->a:I

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_53
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    goto :goto_4f

    nop

    nop

    nop

    nop

    :catchall_2
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    :try_start_7
    iget-object p0, p0, Landroidx/room/MultiInstanceInvalidationService;->c:Landroid/os/RemoteCallbackList;

    nop

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_55
    iget-object p0, p0, Landroidx/room/MultiInstanceInvalidationService;->c:Landroid/os/RemoteCallbackList;

    nop

    nop

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/32 :goto_15

    nop

    nop

    :goto_56
    instance-of v0, p4, Leff;

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_57
    iget-object p3, p0, Landroidx/room/MultiInstanceInvalidationService;->c:Landroid/os/RemoteCallbackList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    goto/16 :goto_3b

    nop

    nop

    nop

    :catchall_3
    move-exception p0

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_5a
    const/4 v0, 0x3

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    const v0, 0x18

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

    :goto_5c
    goto/16 :goto_1d

    nop

    nop

    nop

    nop

    :goto_5d
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    check-cast v0, Leff;

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_5f
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2a

    nop

    nop

    :goto_60
    throw p0

    nop

    nop

    nop

    nop

    :goto_61
    goto/32 :goto_40

    nop

    nop

    nop

    :goto_62
    goto/16 :goto_14

    nop

    :goto_63
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_64
    iget-object p2, p0, Landroidx/room/MultiInstanceInvalidationService;->c:Landroid/os/RemoteCallbackList;

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_65
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    const/4 v3, 0x2

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_67
    sget p4, Lefe;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_69
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p2

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_6b
    if-gtz p1, :cond_f

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_f
    goto/32 :goto_12

    nop

    nop

    :goto_6c
    instance-of v0, p4, Leff;

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_6d
    if-nez v0, :cond_10

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    :cond_10
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_6e
    const v1, 0x13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6f
    if-nez v0, :cond_11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_24

    nop

    nop

    :goto_70
    iget-object p0, p0, Lefg;->a:Landroidx/room/MultiInstanceInvalidationService;

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

    :goto_71
    if-ne p1, v2, :cond_12

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :cond_12
    goto/32 :goto_66

    nop

    nop

    nop

    nop
.end method
