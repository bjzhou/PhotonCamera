.class public final Ltsa;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    iput-object p1, p0, Ltsa;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput p2, p0, Ltsa;->b:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 10

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    :try_start_0
    iget-object v0, p0, Ltsa;->a:Ljava/lang/Object;

    nop

    move-object v2, v0

    nop

    nop

    check-cast v2, Ltsb;

    nop

    nop

    iget-object v3, v2, Ltsb;->a:Landroid/app/Activity;

    nop

    nop

    nop

    nop

    check-cast v0, Ltsb;

    nop

    nop

    nop

    iget-object v0, v0, Ltsb;->b:Landroid/app/PendingIntent;

    nop

    nop

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v4

    nop

    iget-object p0, p0, Ltsa;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast p0, Ltsb;

    nop

    nop

    nop

    nop

    iget v5, p0, Ltsb;->c:I

    nop

    nop

    nop

    nop

    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    nop

    const/4 v9, 0x0

    nop

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    const/4 v7, 0x0

    nop

    invoke-virtual/range {v3 .. v9}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_1

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Ltsa;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_38

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
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lcom/google/vr/ndk/base/DaydreamApi;->f:Ltsu;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_8
    iput-object v0, p0, Lcom/google/vr/ndk/base/DaydreamApi;->e:Ltsx;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    check-cast v0, Lcom/google/vr/ndk/base/DaydreamApi;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_a
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, v0, Lcom/google/vr/ndk/base/DaydreamApi;->a:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_e
    goto/32 :goto_27

    nop

    :goto_f
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_10
    if-ne v0, v2, :cond_1

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

    :cond_1
    :try_start_1
    iget-object p0, p0, Ltsa;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast p0, Landroid/app/PendingIntent;

    nop

    nop

    nop

    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v0}, Landroid/app/PendingIntent;->send(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/32 :goto_18

    nop

    nop

    :goto_11
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const-string p0, "Can\'t launch VR homescreen via DaydreamManager. Giving up trying to leave current VR activity..."

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v1, p0, Ltsa;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_15
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Ltsa;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget v0, p0, Ltsa;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_18
    return-void

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1a
    if-ne v0, v2, :cond_3

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :cond_3
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1d
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_1e
    const-string v0, "Exception while starting next VR activity: "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1f
    const-string v0, "Couldn\'t launch PendingIntent: "

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_20
    return-void

    nop

    :goto_21
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

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

    :goto_23
    iget-object v0, p0, Ltsa;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_25
    check-cast p0, Lcom/google/vr/ndk/base/DaydreamApi;

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

    nop

    :goto_26
    return-void

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    check-cast v1, Lcom/google/vr/ndk/base/DaydreamApi;

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const v1, 0xc

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

    :goto_2a
    if-nez p0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_4
    :try_start_2
    invoke-virtual {p0}, Lfum;->a()Landroid/os/Parcel;

    move-result-object v0

    nop

    nop

    const/16 v2, 0x8

    nop

    nop

    nop

    invoke-virtual {p0, v2, v0}, Lfum;->z(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p0

    nop

    nop

    nop

    nop

    invoke-static {p0}, Lfuo;->e(Landroid/os/Parcel;)Z

    move-result v0

    nop

    nop

    nop

    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    if-eqz v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_5
    const-string p0, "There is no VR homescreen installed."

    nop

    nop

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v0, p0, Ltsa;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v0, v0, Lcom/google/vr/ndk/base/DaydreamApi;->a:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_2d
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_2f
    goto/16 :goto_c

    nop

    :goto_30
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_31
    sget-object v0, Lwireless/android/learning/acmi/p11/metadata/eGU/nQGhNZMKfLcyQ;->QtAdH:Ljava/lang/String;

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

    nop

    :goto_32
    check-cast v0, Lcom/google/vr/ndk/base/DaydreamApi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_33
    const v0, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_34
    return-void

    nop

    :goto_35
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    return-void

    nop

    :catch_1
    move-exception p0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_37
    return-void

    nop

    nop

    nop

    nop

    :catch_2
    move-exception p0

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

    :goto_38
    check-cast p0, Lcom/google/vr/ndk/base/DaydreamApi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_1

    nop

    nop

    :goto_3a
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto/32 :goto_3

    nop

    nop

    :goto_3b
    iget-object v1, v1, Lcom/google/vr/ndk/base/DaydreamApi;->d:Landroid/content/ServiceConnection;

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_3c
    check-cast v0, Lcom/google/vr/ndk/base/DaydreamApi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_3e
    const/4 v2, 0x2

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_3f
    const/4 v0, 0x0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_40
    const-string v1, "DaydreamApi"

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_41
    iget-object v0, v0, Lcom/google/vr/ndk/base/DaydreamApi;->a:Landroid/content/Context;

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

    :goto_42
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iget-object p0, p0, Ltsa;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    if-nez v0, :cond_6

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_3d

    nop

    nop

    :goto_45
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop
.end method
