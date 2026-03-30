.class public final Ltry;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/google/vr/ndk/base/DaydreamApi;


# direct methods
.method public constructor <init>(Lcom/google/vr/ndk/base/DaydreamApi;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Ltry;->a:Lcom/google/vr/ndk/base/DaydreamApi;

    nop

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

    nop

    nop
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p1, p0, Ltry;->a:Lcom/google/vr/ndk/base/DaydreamApi;

    nop

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

    :goto_4
    new-instance v1, Ltsx;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Ltry;->a:Lcom/google/vr/ndk/base/DaydreamApi;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_7
    return-void

    nop

    :goto_8
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Lcom/google/vr/ndk/base/DaydreamApi;->b:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_a
    if-lt v0, p2, :cond_0

    nop

    nop

    goto/32 :goto_2a

    nop

    :cond_0
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_b
    if-eqz p2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_33

    nop

    nop

    :goto_c
    goto/16 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v0, 0x0

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_10
    const-string p1, "DaydreamApi"

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_11
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_12
    goto/32 :goto_3

    nop

    nop

    :goto_13
    const v1, 0xa

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    check-cast v1, Ljava/lang/Runnable;

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_0

    nop

    :goto_16
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/16 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_19
    iput-object v1, p2, Lcom/google/vr/ndk/base/DaydreamApi;->e:Ltsx;

    nop

    nop

    :try_start_0
    iget-object v1, p2, Lcom/google/vr/ndk/base/DaydreamApi;->e:Ltsx;

    nop

    nop

    invoke-virtual {v1}, Lfum;->a()Landroid/os/Parcel;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    const/4 v3, 0x2

    nop

    nop

    invoke-virtual {v1, v3, v2}, Lfum;->z(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    nop

    nop

    if-nez v2, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_3
    const-string v0, "com.google.vr.vrcore.common.api.IDaydreamManager"

    nop

    nop

    invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    instance-of v3, v0, Ltsu;

    nop

    if-eqz v3, :cond_4

    nop

    check-cast v0, Ltsu;

    nop

    nop

    nop

    nop

    nop

    goto :goto_1a

    nop

    nop

    nop

    :cond_4
    new-instance v0, Ltsu;

    nop

    nop

    invoke-direct {v0, v2}, Ltsu;-><init>(Landroid/os/IBinder;)V

    :goto_1a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    iput-object v0, p2, Lcom/google/vr/ndk/base/DaydreamApi;->f:Ltsu;

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object p1, p1, Lcom/google/vr/ndk/base/DaydreamApi;->b:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1d
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1e
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v0, 0x0

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto :goto_1e

    nop

    nop

    nop

    nop

    nop

    :catch_0
    goto/32 :goto_22

    nop

    nop

    :goto_21
    iget-object p2, p2, Lcom/google/vr/ndk/base/DaydreamApi;->f:Ltsu;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_22
    const-string p2, "RemoteException in onServiceConnected"

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_23
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_24
    add-int/lit8 v0, v0, 0x1

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

    nop

    :goto_25
    invoke-direct {v1, p2}, Ltsx;-><init>(Landroid/os/IBinder;)V

    :goto_26
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_27
    if-eqz p2, :cond_5

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_5
    goto/32 :goto_2d

    nop

    nop

    :goto_28
    const-string v1, "com.google.vr.vrcore.common.api.IVrCoreSdkService"

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_29
    goto/16 :goto_f

    nop

    nop

    :goto_2a
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    check-cast v1, Ltsx;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object p2, p0, Ltry;->a:Lcom/google/vr/ndk/base/DaydreamApi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_2d
    move-object v1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_2e
    iget-object p2, p0, Ltry;->a:Lcom/google/vr/ndk/base/DaydreamApi;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_2f
    if-nez v2, :cond_6

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

    :cond_6
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_30
    const v0, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_31
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-interface {p2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_33
    const-string p2, "Daydream service component unavailable."

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

    nop

    :goto_34
    instance-of v2, v1, Ltsx;

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_35
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lcom/google/vr/ndk/base/DaydreamApi;->e:Ltsx;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iget-object p0, p0, Ltry;->a:Lcom/google/vr/ndk/base/DaydreamApi;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    const/4 p1, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method
