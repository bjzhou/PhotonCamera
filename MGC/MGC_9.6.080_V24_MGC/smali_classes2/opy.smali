.class public final Lopy;
.super Lfun;
.source "PG"

# interfaces
.implements Landroid/os/IInterface;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Loiz;I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Lfun;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    const-string p1, "com.google.android.gms.phenotype.internal.IFlagUpdateListener"

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput p2, p0, Lopy;->b:I

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lopy;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lpic;I)V
    .locals 0

    goto/32 :goto_4

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
    const-string p1, "com.google.android.gms.location.internal.ILocationStatusCallback"

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    iput-object p1, p0, Lopy;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    invoke-direct {p0, p1}, Lfun;-><init>(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    :goto_4
    iput p2, p0, Lopy;->b:I

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public constructor <init>(Lpic;I[B)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lopy;->a:Ljava/lang/Object;

    nop

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
    const-string p1, "com.google.android.gms.phenotype.internal.IGetStorageInfoCallbacks"

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput p2, p0, Lopy;->b:I

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
    invoke-direct {p0, p1}, Lfun;-><init>(Ljava/lang/String;)V

    goto/32 :goto_4

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
.end method


# virtual methods
.method protected final y(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v2

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lopy;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p1, p2, p0}, Lolx;->aE(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lpic;)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p2, p1}, Lfuo;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    nop

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

    :goto_5
    return v1

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    invoke-static {p1, p2, p0}, Lolx;->aE(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lpic;)V

    :goto_8
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_9
    if-eq p1, v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_0
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_a
    if-eq p1, v0, :cond_1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    check-cast p0, Lpic;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_24

    nop

    :goto_d
    invoke-static {p1, p3, p0}, Lolx;->aE(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lpic;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {p2}, Lfuo;->b(Landroid/os/Parcel;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {p2}, Lfuo;->b(Landroid/os/Parcel;)V

    goto/32 :goto_31

    nop

    nop

    :goto_10
    if-ne p3, v2, :cond_3

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {p2, p3}, Lfuo;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p3

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_12
    move v1, v2

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_14
    return v2

    nop

    nop

    :goto_15
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_16
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_17
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

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

    :goto_18
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_19
    new-instance p2, Lopa;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0, p1}, Lpic;->s(Ljava/lang/Exception;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1b
    goto/16 :goto_8

    nop

    :goto_1c
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1e
    return v1

    nop

    nop

    :goto_1f
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_20
    if-nez p2, :cond_4

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_4
    :try_start_0
    invoke-static {}, Ltjv;->a()Ltjv;

    move-result-object p2

    nop

    sget-object v0, Lqwu;->a:Lqwu;

    nop

    nop

    nop

    nop

    nop

    array-length v3, p3

    nop

    nop

    invoke-static {v0, p3, v1, v3, p2}, Ltkg;->q(Ltkg;[BIILtjv;)Ltkg;

    move-result-object p2

    nop

    nop

    invoke-static {p2}, Ltkg;->E(Ltkg;)V

    check-cast p2, Lqwu;

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ltky; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object p0, p0, Lopy;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_22
    iget-object p0, p0, Lopy;->a:Ljava/lang/Object;

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

    :goto_23
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_26
    iget p3, p0, Lopy;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_27
    invoke-direct {p2, p1, v0}, Lopa;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p3

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

    :goto_29
    invoke-virtual {p0, p2}, Loiz;->b(Loiy;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2a
    const/4 p2, 0x0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2b
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/16 :goto_8

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_2d
    add-int v0, v0, v1

    nop

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

    :goto_2e
    invoke-static {p2, p1}, Lfuo;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    check-cast p0, Lpic;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_30
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

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

    :goto_31
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->b()Z

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_32
    check-cast p0, Lpic;

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

    :goto_33
    const v0, 0xf

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const/4 v1, 0x0

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_35
    const v1, 0x9

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

    :goto_36
    iget-object p0, p0, Lopy;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_37
    check-cast p0, Lpic;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_38
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_39
    const/4 v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    if-nez p3, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iget-object p0, p0, Lopy;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_3c
    if-eq p1, v2, :cond_6

    nop

    nop

    goto/32 :goto_15

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

    :goto_3d
    check-cast p3, Landroid/location/Location;

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_3e
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_3c

    nop

    nop

    :goto_40
    sget-object p3, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_41
    invoke-static {p2}, Lfuo;->b(Landroid/os/Parcel;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_42
    check-cast p0, Loiz;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop
.end method
