.class public final Ljro;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field private final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Ljro;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Ljro;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    invoke-static {p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v0

    goto/16 :goto_15

    :pswitch_0
    invoke-static {p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v0

    const-wide/16 v2, 0x0

    move-wide v3, v2

    move-object v2, v1

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-static {v5}, Ljhp;->v(I)I

    move-result v6

    packed-switch v6, :pswitch_data_1

    invoke-static {p1, v5}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_1

    :pswitch_1
    invoke-static {p1, v5}, Ljhp;->A(Landroid/os/Parcel;I)J

    move-result-wide v3

    goto :goto_1

    :pswitch_2
    invoke-static {p1, v5}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :pswitch_3
    invoke-static {p1, v5}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    goto :goto_0

    :cond_0
    invoke-static {p1, v0}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance p1, Ljsu;

    invoke-direct {p1, v1, v2, v3, v4}, Ljsu;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object p1

    :pswitch_4
    invoke-static {p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v0

    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljhp;->v(I)I

    move-result v4

    packed-switch v4, :pswitch_data_2

    invoke-static {p1, v3}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_2

    :pswitch_5
    sget-object v1, Ljqy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v3, v1}, Ljhp;->D(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Ljqy;

    goto :goto_2

    :pswitch_6
    invoke-static {p1, v3}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v2

    goto :goto_2

    :cond_1
    invoke-static {p1, v0}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance p1, Ljst;

    invoke-direct {p1, v2, v1}, Ljst;-><init>(ILjqy;)V

    return-object p1

    :pswitch_7
    invoke-static {p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v0

    move-object v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_3
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v0, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-static {v5}, Ljhp;->v(I)I

    move-result v6

    packed-switch v6, :pswitch_data_3

    invoke-static {p1, v5}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_3

    :pswitch_8
    invoke-static {p1, v5}, Ljhp;->L(Landroid/os/Parcel;I)Z

    move-result v4

    goto :goto_3

    :pswitch_9
    invoke-static {p1, v5}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_3

    :pswitch_a
    invoke-static {p1, v5}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :pswitch_b
    invoke-static {p1, v5}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_2
    invoke-static {p1, v0}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance p1, Ljss;

    invoke-direct {p1, v1, v2, v3, v4}, Ljss;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    return-object p1

    :pswitch_c
    invoke-static {p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v0

    move-object v2, v1

    :goto_4
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljhp;->v(I)I

    move-result v4

    packed-switch v4, :pswitch_data_4

    invoke-static {p1, v3}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_4

    :pswitch_d
    sget-object v2, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v3, v2}, Ljhp;->D(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/data/DataHolder;

    goto :goto_4

    :pswitch_e
    invoke-static {p1, v3}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_3
    invoke-static {p1, v0}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance p1, Ljsr;

    invoke-direct {p1, v1, v2}, Ljsr;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/data/DataHolder;)V

    return-object p1

    :pswitch_f
    invoke-static {p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v0

    move-object v2, v1

    move-object v3, v2

    const/4 v4, 0x0

    :goto_5
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v0, :cond_4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-static {v5}, Ljhp;->v(I)I

    move-result v6

    packed-switch v6, :pswitch_data_5

    invoke-static {p1, v5}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_5

    :pswitch_10
    invoke-static {p1, v5}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :pswitch_11
    invoke-static {p1, v5}, Ljhp;->M(Landroid/os/Parcel;I)[B

    move-result-object v2

    goto :goto_5

    :pswitch_12
    invoke-static {p1, v5}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :pswitch_13
    invoke-static {p1, v5}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v4

    goto :goto_5

    :cond_4
    invoke-static {p1, v0}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance p1, Ljsp;

    invoke-direct {p1, v4, v1, v2, v3}, Ljsp;-><init>(ILjava/lang/String;[BLjava/lang/String;)V

    return-object p1

    :pswitch_14
    invoke-static {p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v0

    const/4 v3, 0x0

    :goto_6
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v0, :cond_5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-static {v4}, Ljhp;->v(I)I

    move-result v5

    packed-switch v5, :pswitch_data_6

    invoke-static {p1, v4}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_6

    :pswitch_15
    invoke-static {p1, v4}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_6

    :pswitch_16
    invoke-static {p1, v4}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v2

    goto :goto_6

    :pswitch_17
    invoke-static {p1, v4}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_5
    invoke-static {p1, v0}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance p1, Ljtn;

    invoke-direct {p1, v1, v2, v3}, Ljtn;-><init>(Ljava/lang/String;II)V

    return-object p1

    :pswitch_18
    invoke-static {p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljhp;->v(I)I

    move-result v4

    packed-switch v4, :pswitch_data_7

    invoke-static {p1, v3}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_7

    :pswitch_19
    invoke-static {p1, v3}, Ljhp;->L(Landroid/os/Parcel;I)Z

    move-result v1

    goto :goto_7

    :pswitch_1a
    invoke-static {p1, v3}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v2

    goto :goto_7

    :cond_6
    invoke-static {p1, v0}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance p1, Ljsb;

    invoke-direct {p1, v2, v1}, Ljsb;-><init>(IZ)V

    return-object p1

    :pswitch_1b
    invoke-static {p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v0

    :goto_8
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_7

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljhp;->v(I)I

    move-result v4

    packed-switch v4, :pswitch_data_8

    invoke-static {p1, v3}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_8

    :pswitch_1c
    invoke-static {p1, v3}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :pswitch_1d
    invoke-static {p1, v3}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v2

    goto :goto_8

    :cond_7
    invoke-static {p1, v0}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance p1, Ljsa;

    invoke-direct {p1, v2, v1}, Ljsa;-><init>(ILjava/lang/String;)V

    return-object p1

    :pswitch_1e
    invoke-static {p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v0

    :goto_9
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_8

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljhp;->v(I)I

    move-result v4

    packed-switch v4, :pswitch_data_9

    invoke-static {p1, v3}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_9

    :pswitch_1f
    sget-object v1, Ljss;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v3, v1}, Ljhp;->D(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Ljss;

    goto :goto_9

    :pswitch_20
    invoke-static {p1, v3}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v2

    goto :goto_9

    :cond_8
    invoke-static {p1, v0}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance p1, Ljrz;

    invoke-direct {p1, v2, v1}, Ljrz;-><init>(ILjss;)V

    return-object p1

    :pswitch_21
    invoke-static {p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v0

    :goto_a
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_9

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljhp;->v(I)I

    move-result v4

    packed-switch v4, :pswitch_data_a

    invoke-static {p1, v3}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_a

    :pswitch_22
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v3, v1}, Ljhp;->D(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    goto :goto_a

    :pswitch_23
    invoke-static {p1, v3}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v2

    goto :goto_a

    :cond_9
    invoke-static {p1, v0}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance p1, Ljry;

    invoke-direct {p1, v2, v1}, Ljry;-><init>(ILandroid/os/ParcelFileDescriptor;)V

    return-object p1

    :pswitch_24
    invoke-static {p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v0

    :goto_b
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_a

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljhp;->v(I)I

    move-result v4

    packed-switch v4, :pswitch_data_b

    invoke-static {p1, v3}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_b

    :pswitch_25
    invoke-static {p1, v3}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    :pswitch_26
    invoke-static {p1, v3}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v2

    goto :goto_b

    :cond_a
    invoke-static {p1, v0}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance p1, Ljrx;

    invoke-direct {p1, v2, v1}, Ljrx;-><init>(ILjava/lang/String;)V

    return-object p1

    :pswitch_27
    invoke-static {p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v0

    :goto_c
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_b

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljhp;->v(I)I

    move-result v4

    packed-switch v4, :pswitch_data_c

    invoke-static {p1, v3}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_c

    :pswitch_28
    sget-object v1, Ljrf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v3, v1}, Ljhp;->D(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Ljrf;

    goto :goto_c

    :pswitch_29
    invoke-static {p1, v3}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v2

    goto :goto_c

    :cond_b
    invoke-static {p1, v0}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance p1, Ljrw;

    invoke-direct {p1, v2, v1}, Ljrw;-><init>(ILjrf;)V

    return-object p1

    :pswitch_2a
    invoke-static {p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v0

    :goto_d
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_c

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljhp;->v(I)I

    move-result v4

    packed-switch v4, :pswitch_data_d

    invoke-static {p1, v3}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_d

    :pswitch_2b
    sget-object v1, Ljss;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v3, v1}, Ljhp;->H(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_d

    :pswitch_2c
    invoke-static {p1, v3}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v2

    goto :goto_d

    :cond_c
    invoke-static {p1, v0}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance p1, Ljrv;

    invoke-direct {p1, v2, v1}, Ljrv;-><init>(ILjava/util/List;)V

    return-object p1

    :pswitch_2d
    invoke-static {p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v0

    :goto_e
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_d

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljhp;->v(I)I

    move-result v4

    packed-switch v4, :pswitch_data_e

    invoke-static {p1, v3}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_e

    :pswitch_2e
    sget-object v1, Lcom/google/android/gms/wearable/ConnectionConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v3, v1}, Ljhp;->O(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/gms/wearable/ConnectionConfiguration;

    goto :goto_e

    :pswitch_2f
    invoke-static {p1, v3}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v2

    goto :goto_e

    :cond_d
    invoke-static {p1, v0}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance p1, Ljru;

    invoke-direct {p1, v2, v1}, Ljru;-><init>(I[Lcom/google/android/gms/wearable/ConnectionConfiguration;)V

    return-object p1

    :pswitch_30
    invoke-static {p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v0

    :goto_f
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_e

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljhp;->v(I)I

    move-result v4

    packed-switch v4, :pswitch_data_f

    invoke-static {p1, v3}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_f

    :pswitch_31
    sget-object v1, Lcom/google/android/gms/wearable/ConnectionConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v3, v1}, Ljhp;->D(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/wearable/ConnectionConfiguration;

    goto :goto_f

    :pswitch_32
    invoke-static {p1, v3}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v2

    goto :goto_f

    :cond_e
    invoke-static {p1, v0}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance p1, Ljrt;

    invoke-direct {p1, v2, v1}, Ljrt;-><init>(ILcom/google/android/gms/wearable/ConnectionConfiguration;)V

    return-object p1

    :pswitch_33
    invoke-static {p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v0

    :goto_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_f

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljhp;->v(I)I

    move-result v4

    packed-switch v4, :pswitch_data_10

    invoke-static {p1, v3}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_10

    :pswitch_34
    invoke-static {p1, v3}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_10

    :pswitch_35
    invoke-static {p1, v3}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v2

    goto :goto_10

    :cond_f
    invoke-static {p1, v0}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance p1, Ljrs;

    invoke-direct {p1, v2, v1}, Ljrs;-><init>(ILjava/lang/String;)V

    return-object p1

    :pswitch_36
    invoke-static {p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x0

    :goto_11
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_10

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljhp;->v(I)I

    move-result v4

    packed-switch v4, :pswitch_data_11

    invoke-static {p1, v3}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_11

    :pswitch_37
    invoke-static {p1, v3}, Ljhp;->L(Landroid/os/Parcel;I)Z

    move-result v1

    goto :goto_11

    :pswitch_38
    invoke-static {p1, v3}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v2

    goto :goto_11

    :cond_10
    invoke-static {p1, v0}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance p1, Ljrr;

    invoke-direct {p1, v2, v1}, Ljrr;-><init>(IZ)V

    return-object p1

    :pswitch_39
    invoke-static {p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_12
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v0, :cond_11

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-static {v4}, Ljhp;->v(I)I

    move-result v5

    packed-switch v5, :pswitch_data_12

    invoke-static {p1, v4}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_12

    :pswitch_3a
    invoke-static {p1, v4}, Ljhp;->L(Landroid/os/Parcel;I)Z

    move-result v3

    goto :goto_12

    :pswitch_3b
    invoke-static {p1, v4}, Ljhp;->L(Landroid/os/Parcel;I)Z

    move-result v1

    goto :goto_12

    :pswitch_3c
    invoke-static {p1, v4}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v2

    goto :goto_12

    :cond_11
    invoke-static {p1, v0}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance p1, Ljrq;

    invoke-direct {p1, v2, v1, v3}, Ljrq;-><init>(IZZ)V

    return-object p1

    :pswitch_3d
    invoke-static {p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v0

    :goto_13
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_12

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljhp;->v(I)I

    move-result v4

    packed-switch v4, :pswitch_data_13

    invoke-static {p1, v3}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_13

    :pswitch_3e
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v3, v1}, Ljhp;->D(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    goto :goto_13

    :pswitch_3f
    invoke-static {p1, v3}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v2

    goto :goto_13

    :cond_12
    invoke-static {p1, v0}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance p1, Ljrn;

    invoke-direct {p1, v2, v1}, Ljrn;-><init>(ILandroid/os/ParcelFileDescriptor;)V

    return-object p1

    :pswitch_40
    invoke-static {p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x0

    :goto_14
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_13

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljhp;->v(I)I

    move-result v4

    packed-switch v4, :pswitch_data_14

    invoke-static {p1, v3}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_14

    :pswitch_41
    invoke-static {p1, v3}, Ljhp;->L(Landroid/os/Parcel;I)Z

    move-result v1

    goto :goto_14

    :pswitch_42
    invoke-static {p1, v3}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v2

    goto :goto_14

    :cond_13
    invoke-static {p1, v0}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance p1, Ljrp;

    invoke-direct {p1, v2, v1}, Ljrp;-><init>(IZ)V

    return-object p1

    :goto_15
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_14

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljhp;->v(I)I

    move-result v4

    packed-switch v4, :pswitch_data_15

    invoke-static {p1, v3}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_15

    :pswitch_43
    invoke-static {p1, v3}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_15

    :pswitch_44
    invoke-static {p1, v3}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v2

    goto :goto_15

    :cond_14
    invoke-static {p1, v0}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance p1, Ljsv;

    invoke-direct {p1, v2, v1}, Ljsv;-><init>(ILjava/lang/String;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_40
        :pswitch_3d
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_14
        :pswitch_f
        :pswitch_c
        :pswitch_7
        :pswitch_4
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x2
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_19
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x2
        :pswitch_1d
        :pswitch_1c
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x2
        :pswitch_20
        :pswitch_1f
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x2
        :pswitch_23
        :pswitch_22
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0x2
        :pswitch_26
        :pswitch_25
    .end packed-switch

    :pswitch_data_c
    .packed-switch 0x2
        :pswitch_29
        :pswitch_28
    .end packed-switch

    :pswitch_data_d
    .packed-switch 0x2
        :pswitch_2c
        :pswitch_2b
    .end packed-switch

    :pswitch_data_e
    .packed-switch 0x2
        :pswitch_2f
        :pswitch_2e
    .end packed-switch

    :pswitch_data_f
    .packed-switch 0x2
        :pswitch_32
        :pswitch_31
    .end packed-switch

    :pswitch_data_10
    .packed-switch 0x2
        :pswitch_35
        :pswitch_34
    .end packed-switch

    :pswitch_data_11
    .packed-switch 0x2
        :pswitch_38
        :pswitch_37
    .end packed-switch

    :pswitch_data_12
    .packed-switch 0x2
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
    .end packed-switch

    :pswitch_data_13
    .packed-switch 0x2
        :pswitch_3f
        :pswitch_3e
    .end packed-switch

    :pswitch_data_14
    .packed-switch 0x2
        :pswitch_42
        :pswitch_41
    .end packed-switch

    :pswitch_data_15
    .packed-switch 0x2
        :pswitch_44
        :pswitch_43
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    iget v0, p0, Ljro;->a:I

    packed-switch v0, :pswitch_data_0

    new-array p1, p1, [Ljsv;

    return-object p1

    :pswitch_0
    new-array p1, p1, [Ljsu;

    return-object p1

    :pswitch_1
    new-array p1, p1, [Ljst;

    return-object p1

    :pswitch_2
    new-array p1, p1, [Ljss;

    return-object p1

    :pswitch_3
    new-array p1, p1, [Ljsr;

    return-object p1

    :pswitch_4
    new-array p1, p1, [Ljsp;

    return-object p1

    :pswitch_5
    new-array p1, p1, [Ljtn;

    return-object p1

    :pswitch_6
    new-array p1, p1, [Ljsb;

    return-object p1

    :pswitch_7
    new-array p1, p1, [Ljsa;

    return-object p1

    :pswitch_8
    new-array p1, p1, [Ljrz;

    return-object p1

    :pswitch_9
    new-array p1, p1, [Ljry;

    return-object p1

    :pswitch_a
    new-array p1, p1, [Ljrx;

    return-object p1

    :pswitch_b
    new-array p1, p1, [Ljrw;

    return-object p1

    :pswitch_c
    new-array p1, p1, [Ljrv;

    return-object p1

    :pswitch_d
    new-array p1, p1, [Ljru;

    return-object p1

    :pswitch_e
    new-array p1, p1, [Ljrt;

    return-object p1

    :pswitch_f
    new-array p1, p1, [Ljrs;

    return-object p1

    :pswitch_10
    new-array p1, p1, [Ljrr;

    return-object p1

    :pswitch_11
    new-array p1, p1, [Ljrq;

    return-object p1

    :pswitch_12
    new-array p1, p1, [Ljrn;

    return-object p1

    :pswitch_13
    new-array p1, p1, [Ljrp;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
