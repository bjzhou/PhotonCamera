.class public final Loku;
.super Lfun;
.source "PG"

# interfaces
.implements Landroid/os/IInterface;


# instance fields
.field private a:Lojy;

.field private final b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, v0}, Lfun;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string v0, "com.google.android.gms.common.internal.IGmsCallbacks"

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

.method public constructor <init>(Lojy;I)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    iput p2, p0, Loku;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, v0}, Lfun;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Loku;->a:Lojy;

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

    :goto_3
    const-string v0, "com.google.android.gms.common.internal.IGmsCallbacks"

    nop

    nop

    goto/32 :goto_1

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
.end method


# virtual methods
.method public final b(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v1, p0, Loku;->a:Lojy;

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

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_2
    const-string v1, "onPostInitComplete can be called only once per call to getRemoteService"

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

    :goto_3
    invoke-static {v0, v1}, Lolx;->ah(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_a

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_10

    nop

    nop

    :goto_8
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    const v0, 0x18

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget v0, p0, Loku;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    iput-object p1, p0, Loku;->a:Lojy;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v1, p1, p2, p3, v0}, Lojy;->x(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_e
    return-void

    nop

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
    iget-object v0, p0, Loku;->a:Lojy;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_11
    const v1, 0x14

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method protected final y(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v3, p2}, Lolg;->b(Lolh;)V

    :goto_1
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_2
    iput-object v2, p2, Lojy;->m:Lokd;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_3
    iget-object p2, p0, Loku;->a:Lojy;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_30

    nop

    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    goto/32 :goto_9

    nop

    nop

    :goto_7
    iget-object p2, v2, Lokd;->d:Loke;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {p2, v3}, Lolx;->ah(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const-string p1, "GmsClient"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/16 :goto_34

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v1, 0x2

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p2}, Lojy;->D()Z

    move-result p2

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {p1, p2, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_19

    nop

    nop

    :goto_10
    invoke-virtual {p0, p1, v1, v2}, Loku;->b(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    :goto_11
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

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

    :goto_13
    sget-object v2, Lokd;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

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

    :goto_15
    invoke-static {p2}, Lfuo;->b(Landroid/os/Parcel;)V

    goto/32 :goto_10

    nop

    nop

    :goto_16
    const v0, 0x20

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_18
    new-instance p0, Ljava/lang/Exception;

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

    :goto_19
    goto :goto_11

    nop

    nop

    :goto_1a
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1b
    goto :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {}, Lolg;->a()Lolg;

    move-result-object v3

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 v1, 0x3

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

    :goto_1f
    check-cast v2, Landroid/os/Bundle;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_20
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {p2, p0}, Lfuo;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_22
    return p0

    nop

    nop

    :goto_23
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-ne p1, v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-static {p2}, Lfuo;->b(Landroid/os/Parcel;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_26
    const/4 v0, 0x1

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

    :goto_27
    iget-object p2, v2, Lokd;->a:Landroid/os/Bundle;

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_28
    sget-object p0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_29
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_2a
    if-nez p2, :cond_2

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_7

    nop

    nop

    :goto_2b
    const-string v3, "onPostInitCompleteWithConnectionInfo can be called only once per call togetRemoteService"

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2c
    check-cast p0, Landroid/os/Bundle;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_2d
    check-cast v2, Lokd;

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_2f
    if-ne p1, v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_39

    nop

    :goto_31
    goto/32 :goto_26

    nop

    nop

    :goto_32
    const v1, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_33
    iget-object p2, p2, Loke;->a:Lolh;

    nop

    nop

    :goto_34
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p0, p1, v1, p2}, Loku;->b(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_37
    invoke-static {p2, v2}, Lfuo;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_38
    return v0

    nop

    nop

    :goto_39
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-static {p2}, Lfuo;->b(Landroid/os/Parcel;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    const/4 p2, 0x0

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_3c
    if-ne p1, v1, :cond_4

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    const-string p2, "received deprecated onAccountValidationComplete callback, ignoring"

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    goto/32 :goto_28

    nop

    nop

    :goto_3f
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_40
    if-eqz p2, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_3b

    nop

    nop

    :goto_41
    invoke-static {v2}, Lolx;->ag(Ljava/lang/Object;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-static {p2, v2}, Lfuo;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop
.end method
