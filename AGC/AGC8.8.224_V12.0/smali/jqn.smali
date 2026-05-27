.class public final Ljqn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field private final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Ljqn;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iget v2, v1, Ljqn;->a:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    goto/16 :goto_14

    :pswitch_0
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-static {v5}, Ljhp;->v(I)I

    move-result v6

    packed-switch v6, :pswitch_data_1

    invoke-static {v0, v5}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_0

    :pswitch_1
    sget-object v4, Ljqv;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v5, v4}, Ljhp;->D(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Ljqv;

    goto :goto_0

    :pswitch_2
    invoke-static {v0, v5}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_0

    :cond_0
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Ljrl;

    invoke-direct {v0, v3, v4}, Ljrl;-><init>(ILjqv;)V

    return-object v0

    :pswitch_3
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    const/4 v4, 0x0

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-static {v5}, Ljhp;->v(I)I

    move-result v6

    packed-switch v6, :pswitch_data_2

    invoke-static {v0, v5}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_1

    :pswitch_4
    invoke-static {v0, v5}, Ljhp;->L(Landroid/os/Parcel;I)Z

    move-result v4

    goto :goto_1

    :pswitch_5
    invoke-static {v0, v5}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_1

    :cond_1
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Ljrk;

    invoke-direct {v0, v3, v4}, Ljrk;-><init>(IZ)V

    return-object v0

    :pswitch_6
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v2, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-static {v5}, Ljhp;->v(I)I

    move-result v6

    packed-switch v6, :pswitch_data_3

    invoke-static {v0, v5}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_2

    :pswitch_7
    sget-object v4, Lcom/google/android/gms/wearable/AppTheme;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v5, v4}, Ljhp;->D(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/wearable/AppTheme;

    goto :goto_2

    :pswitch_8
    invoke-static {v0, v5}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_2

    :cond_2
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Ljrj;

    invoke-direct {v0, v3, v4}, Ljrj;-><init>(ILcom/google/android/gms/wearable/AppTheme;)V

    return-object v0

    :pswitch_9
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v2, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-static {v5}, Ljhp;->v(I)I

    move-result v6

    packed-switch v6, :pswitch_data_4

    invoke-static {v0, v5}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_3

    :pswitch_a
    sget-object v4, Ljqv;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v5, v4}, Ljhp;->H(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v4

    goto :goto_3

    :pswitch_b
    invoke-static {v0, v5}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_3

    :cond_3
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Ljri;

    invoke-direct {v0, v3, v4}, Ljri;-><init>(ILjava/util/List;)V

    return-object v0

    :pswitch_c
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    const/4 v4, 0x0

    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v2, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-static {v5}, Ljhp;->v(I)I

    move-result v6

    packed-switch v6, :pswitch_data_5

    invoke-static {v0, v5}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_4

    :pswitch_d
    invoke-static {v0, v5}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v4

    goto :goto_4

    :pswitch_e
    invoke-static {v0, v5}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_4

    :cond_4
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Ljrh;

    invoke-direct {v0, v3, v4}, Ljrh;-><init>(II)V

    return-object v0

    :pswitch_f
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    move-object v3, v4

    move-object v5, v3

    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-ge v6, v2, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-static {v6}, Ljhp;->v(I)I

    move-result v7

    packed-switch v7, :pswitch_data_6

    :pswitch_10
    invoke-static {v0, v6}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_5

    :pswitch_11
    invoke-static {v0, v6}, Ljhp;->M(Landroid/os/Parcel;I)[B

    move-result-object v5

    goto :goto_5

    :pswitch_12
    invoke-static {v0, v6}, Ljhp;->B(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v3

    goto :goto_5

    :pswitch_13
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v6, v4}, Ljhp;->D(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    goto :goto_5

    :cond_5
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Ljrf;

    invoke-direct {v0, v4, v3, v5}, Ljrf;-><init>(Landroid/net/Uri;Landroid/os/Bundle;[B)V

    return-object v0

    :pswitch_14
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    move-object v3, v4

    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v2, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-static {v5}, Ljhp;->v(I)I

    move-result v6

    packed-switch v6, :pswitch_data_7

    invoke-static {v0, v5}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_6

    :pswitch_15
    invoke-static {v0, v5}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :pswitch_16
    invoke-static {v0, v5}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :cond_6
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/wearable/internal/DataItemAssetParcelable;

    invoke-direct {v0, v4, v3}, Lcom/google/android/gms/wearable/internal/DataItemAssetParcelable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_17
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljhp;->v(I)I

    move-result v4

    packed-switch v4, :pswitch_data_8

    invoke-static {v0, v3}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_7

    :pswitch_18
    invoke-static {v0, v3}, Ljhp;->L(Landroid/os/Parcel;I)Z

    move-result v9

    goto :goto_7

    :pswitch_19
    invoke-static {v0, v3}, Ljhp;->L(Landroid/os/Parcel;I)Z

    move-result v8

    goto :goto_7

    :pswitch_1a
    invoke-static {v0, v3}, Ljhp;->L(Landroid/os/Parcel;I)Z

    move-result v7

    goto :goto_7

    :pswitch_1b
    invoke-static {v0, v3}, Ljhp;->L(Landroid/os/Parcel;I)Z

    move-result v6

    goto :goto_7

    :pswitch_1c
    invoke-static {v0, v3}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v5

    goto :goto_7

    :cond_7
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Ljrd;

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Ljrd;-><init>(IZZZZ)V

    return-object v0

    :pswitch_1d
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v2, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-static {v5}, Ljhp;->v(I)I

    move-result v6

    packed-switch v6, :pswitch_data_9

    invoke-static {v0, v5}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_8

    :pswitch_1e
    invoke-static {v0, v5}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    :pswitch_1f
    invoke-static {v0, v5}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_8

    :cond_8
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Ljrc;

    invoke-direct {v0, v3, v4}, Ljrc;-><init>(ILjava/lang/String;)V

    return-object v0

    :pswitch_20
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v2, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-static {v4}, Ljhp;->v(I)I

    move-result v5

    packed-switch v5, :pswitch_data_a

    invoke-static {v0, v4}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_9

    :pswitch_21
    invoke-static {v0, v4}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_9

    :cond_9
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Ljrb;

    invoke-direct {v0, v3}, Ljrb;-><init>(I)V

    return-object v0

    :pswitch_22
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v2, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-static {v4}, Ljhp;->v(I)I

    move-result v5

    packed-switch v5, :pswitch_data_b

    invoke-static {v0, v4}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_a

    :pswitch_23
    invoke-static {v0, v4}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_a

    :cond_a
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Ljra;

    invoke-direct {v0, v3}, Ljra;-><init>(I)V

    return-object v0

    :pswitch_24
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v2, :cond_b

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-static {v4}, Ljhp;->v(I)I

    move-result v5

    packed-switch v5, :pswitch_data_c

    invoke-static {v0, v4}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_b

    :pswitch_25
    invoke-static {v0, v4}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_b

    :cond_b
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Ljqz;

    invoke-direct {v0, v3}, Ljqz;-><init>(I)V

    return-object v0

    :pswitch_26
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    move-object v3, v4

    move-object v5, v3

    :goto_c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-ge v6, v2, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-static {v6}, Ljhp;->v(I)I

    move-result v7

    packed-switch v7, :pswitch_data_d

    invoke-static {v0, v6}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_c

    :pswitch_27
    invoke-static {v0, v6}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_c

    :pswitch_28
    invoke-static {v0, v6}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_c

    :pswitch_29
    invoke-static {v0, v6}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_c

    :cond_c
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Ljqy;

    invoke-direct {v0, v4, v3, v5}, Ljqy;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_2a
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    move-object v6, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    if-ge v7, v2, :cond_d

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-static {v7}, Ljhp;->v(I)I

    move-result v8

    packed-switch v8, :pswitch_data_e

    invoke-static {v0, v7}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_d

    :pswitch_2b
    invoke-static {v0, v7}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v5

    goto :goto_d

    :pswitch_2c
    invoke-static {v0, v7}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v4

    goto :goto_d

    :pswitch_2d
    invoke-static {v0, v7}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_d

    :pswitch_2e
    sget-object v6, Ljqy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v7, v6}, Ljhp;->D(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Ljqy;

    goto :goto_d

    :cond_d
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Ljqx;

    invoke-direct {v0, v6, v3, v4, v5}, Ljqx;-><init>(Ljqy;III)V

    return-object v0

    :pswitch_2f
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    move-object v3, v4

    :goto_e
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v2, :cond_e

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-static {v5}, Ljhp;->v(I)I

    move-result v6

    packed-switch v6, :pswitch_data_f

    invoke-static {v0, v5}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_e

    :pswitch_30
    sget-object v3, Ljss;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v5, v3}, Ljhp;->H(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_e

    :pswitch_31
    invoke-static {v0, v5}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_e

    :cond_e
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Ljqv;

    invoke-direct {v0, v4, v3}, Ljqv;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v0

    :pswitch_32
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    :goto_f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v2, :cond_f

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-static {v5}, Ljhp;->v(I)I

    move-result v6

    packed-switch v6, :pswitch_data_10

    invoke-static {v0, v5}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_f

    :pswitch_33
    invoke-static {v0, v5}, Ljhp;->G(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v4

    goto :goto_f

    :pswitch_34
    invoke-static {v0, v5}, Ljhp;->L(Landroid/os/Parcel;I)Z

    move-result v3

    goto :goto_f

    :cond_f
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Ljqq;

    invoke-direct {v0, v3, v4}, Ljqq;-><init>(ZLjava/util/List;)V

    return-object v0

    :pswitch_35
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    move-object v5, v4

    :goto_10
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-ge v6, v2, :cond_10

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-static {v6}, Ljhp;->v(I)I

    move-result v7

    packed-switch v7, :pswitch_data_11

    invoke-static {v0, v6}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_10

    :pswitch_36
    sget-object v5, Ljtn;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v6, v5}, Ljhp;->D(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Ljtn;

    goto :goto_10

    :pswitch_37
    sget-object v4, Ljqo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v6, v4}, Ljhp;->H(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v4

    goto :goto_10

    :pswitch_38
    invoke-static {v0, v6}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_10

    :cond_10
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Ljqp;

    invoke-direct {v0, v3, v4, v5}, Ljqp;-><init>(ILjava/util/List;Ljtn;)V

    return-object v0

    :pswitch_39
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    move-object v6, v4

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    :goto_11
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljhp;->v(I)I

    move-result v5

    packed-switch v5, :pswitch_data_12

    invoke-static {v0, v3}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_11

    :pswitch_3a
    sget-object v5, Ljqq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v3, v5}, Ljhp;->D(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Ljqq;

    goto :goto_11

    :pswitch_3b
    invoke-static {v0, v3}, Ljhp;->y(Landroid/os/Parcel;I)I

    move-result v3

    if-nez v3, :cond_11

    move-object v11, v4

    goto :goto_11

    :cond_11
    invoke-static {v0, v3}, Ljhp;->R(Landroid/os/Parcel;I)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    goto :goto_11

    :pswitch_3c
    invoke-static {v0, v3}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v10

    goto :goto_11

    :pswitch_3d
    invoke-static {v0, v3}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v9

    goto :goto_11

    :pswitch_3e
    sget-object v5, Ljtn;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v3, v5}, Ljhp;->D(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Ljtn;

    goto :goto_11

    :pswitch_3f
    invoke-static {v0, v3}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_11

    :pswitch_40
    invoke-static {v0, v3}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_11

    :cond_12
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Ljqo;

    move-object v5, v0

    invoke-direct/range {v5 .. v12}, Ljqo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljtn;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljqq;)V

    return-object v0

    :pswitch_41
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    move-object v5, v4

    const/4 v4, 0x0

    :goto_12
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-ge v6, v2, :cond_13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-static {v6}, Ljhp;->v(I)I

    move-result v7

    packed-switch v7, :pswitch_data_13

    invoke-static {v0, v6}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_12

    :pswitch_42
    invoke-static {v0, v6}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_12

    :pswitch_43
    invoke-static {v0, v6}, Ljhp;->u(Landroid/os/Parcel;I)B

    move-result v4

    goto :goto_12

    :pswitch_44
    invoke-static {v0, v6}, Ljhp;->u(Landroid/os/Parcel;I)B

    move-result v3

    goto :goto_12

    :cond_13
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Ljql;

    invoke-direct {v0, v3, v4, v5}, Ljql;-><init>(BBLjava/lang/String;)V

    return-object v0

    :pswitch_45
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    move-object v7, v4

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object/from16 v17, v12

    const/4 v6, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_13
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_14

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljhp;->v(I)I

    move-result v4

    packed-switch v4, :pswitch_data_14

    invoke-static {v0, v3}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_13

    :pswitch_46
    invoke-static {v0, v3}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v17

    goto :goto_13

    :pswitch_47
    invoke-static {v0, v3}, Ljhp;->u(Landroid/os/Parcel;I)B

    move-result v16

    goto :goto_13

    :pswitch_48
    invoke-static {v0, v3}, Ljhp;->u(Landroid/os/Parcel;I)B

    move-result v15

    goto :goto_13

    :pswitch_49
    invoke-static {v0, v3}, Ljhp;->u(Landroid/os/Parcel;I)B

    move-result v14

    goto :goto_13

    :pswitch_4a
    invoke-static {v0, v3}, Ljhp;->u(Landroid/os/Parcel;I)B

    move-result v13

    goto :goto_13

    :pswitch_4b
    invoke-static {v0, v3}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v12

    goto :goto_13

    :pswitch_4c
    invoke-static {v0, v3}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v11

    goto :goto_13

    :pswitch_4d
    invoke-static {v0, v3}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v10

    goto :goto_13

    :pswitch_4e
    invoke-static {v0, v3}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v9

    goto :goto_13

    :pswitch_4f
    invoke-static {v0, v3}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_13

    :pswitch_50
    invoke-static {v0, v3}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_13

    :pswitch_51
    invoke-static {v0, v3}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v6

    goto :goto_13

    :cond_14
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Ljqm;

    move-object v5, v0

    invoke-direct/range {v5 .. v17}, Ljqm;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BBBBLjava/lang/String;)V

    return-object v0

    :goto_14
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v2, :cond_15

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-static {v5}, Ljhp;->v(I)I

    move-result v6

    packed-switch v6, :pswitch_data_15

    invoke-static {v0, v5}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_14

    :pswitch_52
    sget-object v4, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v5, v4}, Ljhp;->D(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelFileDescriptor;

    goto :goto_14

    :pswitch_53
    invoke-static {v0, v5}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_14

    :cond_15
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Ljrm;

    invoke-direct {v0, v3, v4}, Ljrm;-><init>(ILandroid/os/ParcelFileDescriptor;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_45
        :pswitch_41
        :pswitch_39
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2a
        :pswitch_26
        :pswitch_24
        :pswitch_22
        :pswitch_20
        :pswitch_1d
        :pswitch_17
        :pswitch_14
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x2
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x2
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x2
        :pswitch_13
        :pswitch_10
        :pswitch_12
        :pswitch_11
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x2
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1e
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x2
        :pswitch_21
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0x2
        :pswitch_23
    .end packed-switch

    :pswitch_data_c
    .packed-switch 0x2
        :pswitch_25
    .end packed-switch

    :pswitch_data_d
    .packed-switch 0x2
        :pswitch_29
        :pswitch_28
        :pswitch_27
    .end packed-switch

    :pswitch_data_e
    .packed-switch 0x2
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
    .end packed-switch

    :pswitch_data_f
    .packed-switch 0x2
        :pswitch_31
        :pswitch_30
    .end packed-switch

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_34
        :pswitch_33
    .end packed-switch

    :pswitch_data_11
    .packed-switch 0x1
        :pswitch_38
        :pswitch_37
        :pswitch_36
    .end packed-switch

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
    .end packed-switch

    :pswitch_data_13
    .packed-switch 0x2
        :pswitch_44
        :pswitch_43
        :pswitch_42
    .end packed-switch

    :pswitch_data_14
    .packed-switch 0x2
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
    .end packed-switch

    :pswitch_data_15
    .packed-switch 0x2
        :pswitch_53
        :pswitch_52
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    iget v0, p0, Ljqn;->a:I

    packed-switch v0, :pswitch_data_0

    new-array p1, p1, [Ljrm;

    return-object p1

    :pswitch_0
    new-array p1, p1, [Ljrl;

    return-object p1

    :pswitch_1
    new-array p1, p1, [Ljrk;

    return-object p1

    :pswitch_2
    new-array p1, p1, [Ljrj;

    return-object p1

    :pswitch_3
    new-array p1, p1, [Ljri;

    return-object p1

    :pswitch_4
    new-array p1, p1, [Ljrh;

    return-object p1

    :pswitch_5
    new-array p1, p1, [Ljrf;

    return-object p1

    :pswitch_6
    new-array p1, p1, [Lcom/google/android/gms/wearable/internal/DataItemAssetParcelable;

    return-object p1

    :pswitch_7
    new-array p1, p1, [Ljrd;

    return-object p1

    :pswitch_8
    new-array p1, p1, [Ljrc;

    return-object p1

    :pswitch_9
    new-array p1, p1, [Ljrb;

    return-object p1

    :pswitch_a
    new-array p1, p1, [Ljra;

    return-object p1

    :pswitch_b
    new-array p1, p1, [Ljqz;

    return-object p1

    :pswitch_c
    new-array p1, p1, [Ljqy;

    return-object p1

    :pswitch_d
    new-array p1, p1, [Ljqx;

    return-object p1

    :pswitch_e
    new-array p1, p1, [Ljqv;

    return-object p1

    :pswitch_f
    new-array p1, p1, [Ljqq;

    return-object p1

    :pswitch_10
    new-array p1, p1, [Ljqp;

    return-object p1

    :pswitch_11
    new-array p1, p1, [Ljqo;

    return-object p1

    :pswitch_12
    new-array p1, p1, [Ljql;

    return-object p1

    :pswitch_13
    new-array p1, p1, [Ljqm;

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
