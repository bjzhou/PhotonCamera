.class public final Ltsc;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/PendingIntent;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Ljava/lang/Object;

.field private final synthetic d:I


# direct methods
.method public constructor <init>(Lcom/google/vr/ndk/base/DaydreamApi;Landroid/app/PendingIntent;Landroid/content/ComponentName;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    iput-object p1, p0, Ltsc;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput p4, p0, Ltsc;->d:I

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

    :goto_2
    iput-object p3, p0, Ltsc;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_0

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

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p2, p0, Ltsc;->a:Landroid/app/PendingIntent;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lcom/google/vr/ndk/base/DaydreamApi;Ljava/lang/Runnable;Landroid/app/PendingIntent;I)V
    .locals 0

    goto/32 :goto_2

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

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    iput p4, p0, Ltsc;->d:I

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

    :goto_3
    iput-object p3, p0, Ltsc;->a:Landroid/app/PendingIntent;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    iput-object p2, p0, Ltsc;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Ltsc;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 5

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :catch_0
    move-exception p0

    nop

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

    nop

    :goto_1
    return-void

    nop

    :goto_2
    goto/32 :goto_25

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    :cond_0
    :try_start_0
    check-cast v0, Lcom/google/vr/ndk/base/DaydreamApi;

    nop

    nop

    nop

    nop

    iget v0, v0, Lcom/google/vr/ndk/base/DaydreamApi;->c:I

    nop

    nop
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const-string v0, "Couldn\'t launch PendingIntent: "

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

    nop

    :goto_7
    const/4 v1, 0x0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_8
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    iget-object p0, p0, Ltsc;->a:Landroid/app/PendingIntent;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Landroid/app/PendingIntent;->send()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/32 :goto_31

    nop

    nop

    :goto_9
    iget-object v0, v0, Lcom/google/vr/ndk/base/DaydreamApi;->f:Ltsu;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-string v4, "Failed to exit VR: Invalid request."

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_b
    const/16 v3, 0x17

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

    :goto_c
    if-nez v0, :cond_1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Ltsc;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_2
    :try_start_2
    iget-object v2, p0, Ltsc;->a:Landroid/app/PendingIntent;

    nop

    nop

    nop

    iget-object p0, p0, Ltsc;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lfum;->a()Landroid/os/Parcel;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    invoke-static {v3, v2}, Lfuo;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v3, p0}, Lfuo;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p0, 0x7

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, p0, v3}, Lfum;->z(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p0

    nop

    nop

    nop

    invoke-static {p0}, Lfuo;->e(Landroid/os/Parcel;)Z

    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/32 :goto_0

    nop

    nop

    :goto_f
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_12

    nop

    nop

    :goto_10
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_11
    sget-object v1, Lcom/google/android/apps/camera/debugui/aq/mYisgsXg;->jqKCL:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object p0, p0, Ltsc;->b:Ljava/lang/Object;

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

    nop

    :goto_13
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

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

    nop

    :goto_14
    iget v0, p0, Ltsc;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_15
    const-string v0, "RemoteException while launching PendingIntent in VR."

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const-string v0, "Failed to exit VR: Daydream service unavailable."

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

    :goto_1b
    if-ge v0, v3, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_3
    :try_start_3
    new-instance v0, Landroid/os/Bundle;

    nop

    nop

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "EXIT_VR_INTENT_KEY"

    nop

    nop

    iget-object v3, p0, Ltsc;->a:Landroid/app/PendingIntent;

    nop

    nop

    nop

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "EXIT_VR_TEXT_KEY"

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Ltsc;->c:Ljava/lang/Object;

    nop

    check-cast v2, Lcom/google/vr/ndk/base/DaydreamApi;

    nop

    nop

    nop

    iget-object v2, v2, Lcom/google/vr/ndk/base/DaydreamApi;->f:Ltsu;

    nop

    invoke-virtual {v2}, Lfum;->a()Landroid/os/Parcel;

    move-result-object v3

    nop

    nop

    invoke-static {v3, v0}, Lfuo;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 v0, 0x11

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v0, v3}, Lfum;->z(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    nop

    nop

    nop

    invoke-static {v0}, Lfuo;->e(Landroid/os/Parcel;)Z

    move-result v2

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    if-nez v2, :cond_4

    nop

    nop

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Ltsc;->b:Ljava/lang/Object;

    nop

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v0, p0, Ltsc;->a:Landroid/app/PendingIntent;

    nop

    nop

    nop

    invoke-virtual {v2}, Lfum;->a()Landroid/os/Parcel;

    move-result-object v3

    nop

    invoke-static {v3, v0}, Lfuo;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 v0, 0xa

    nop

    nop

    nop

    invoke-virtual {v2, v0, v3}, Lfum;->z(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    nop

    invoke-static {v0}, Lfuo;->e(Landroid/os/Parcel;)Z

    move-result v2

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    if-nez v2, :cond_4

    nop

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Ltsc;->b:Ljava/lang/Object;

    nop

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_4
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    return-void

    nop

    :goto_1e
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-lez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_5
    goto/32 :goto_17

    nop

    :goto_20
    iget-object v2, v2, Lcom/google/vr/ndk/base/DaydreamApi;->f:Ltsu;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_21
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_1d

    nop

    nop

    :goto_22
    iget-object p0, p0, Ltsc;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_23
    const v1, 0x16

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_26
    add-int v0, v0, v1

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_27
    return-void

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    return-void

    nop

    :catch_1
    move-exception v0

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_2a
    check-cast v0, Lcom/google/vr/ndk/base/DaydreamApi;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2b
    check-cast v2, Lcom/google/vr/ndk/base/DaydreamApi;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_2c
    move-object v2, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_2e
    const-string v2, "Failed to exit VR: RemoteException while exiting:"

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

    :goto_2f
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_30
    iget-object v0, p0, Ltsc;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_31
    return-void

    nop

    nop

    :catch_2
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_32
    const-string v0, "Can\'t launch PendingIntent via DaydreamManager: not available."

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_33
    const v0, 0x6

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop
.end method
