.class public final Ltrz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ltsw;

.field final synthetic b:Lcom/google/vr/ndk/base/DaydreamApi;


# direct methods
.method public constructor <init>(Lcom/google/vr/ndk/base/DaydreamApi;Ltsw;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Ltrz;->a:Ltsw;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Ltrz;->b:Lcom/google/vr/ndk/base/DaydreamApi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    return-void

    nop
.end method


# virtual methods
.method public final run()V
    .locals 4

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_0
    const-string v0, "Can\'t launch callbacks via DaydreamManager, sending manually"

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    if-eqz v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_1
    :try_start_0
    iget-object v2, p0, Ltrz;->a:Ltsw;

    nop

    nop

    invoke-virtual {v0}, Lfum;->a()Landroid/os/Parcel;

    move-result-object v3

    nop

    nop

    nop

    invoke-static {v3, v2}, Lfuo;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 v2, 0x9

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v2, v3}, Lfum;->z(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, Lfuo;->e(Landroid/os/Parcel;)Z

    move-result v2

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const-string v1, "DaydreamApi"

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_16

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    iget-object p0, p0, Ltrz;->a:Ltsw;

    nop

    nop

    invoke-interface {p0}, Ltsw;->b()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    :goto_8
    const-string v2, "RemoteException while launching VR transition: "

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Ltrz;->b:Lcom/google/vr/ndk/base/DaydreamApi;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

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

    :goto_b
    const v0, 0x15

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_d
    const v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_f
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    nop

    nop

    nop

    :catch_1
    move-exception v0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_11
    goto :goto_f

    nop

    nop

    :goto_12
    goto/32 :goto_10

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

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_14
    iget-object v0, v0, Lcom/google/vr/ndk/base/DaydreamApi;->f:Ltsu;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_15
    return-void

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_c

    nop

    nop
.end method
