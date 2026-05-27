.class public final Ljnd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field private final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Ljnd;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Ljava/lang/Object;)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iget v2, v1, Ljnd;->a:I

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    packed-switch v2, :pswitch_data_0

    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    goto/16 :goto_18

    :pswitch_0
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    move-object v3, v6

    move-object v4, v3

    move-object v5, v4

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    if-ge v7, v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-static {v7}, Ljhp;->v(I)I

    move-result v8

    packed-switch v8, :pswitch_data_1

    invoke-static {v0, v7}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_0

    :pswitch_1
    invoke-static {v0, v7}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :pswitch_2
    invoke-static {v0, v7}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :pswitch_3
    sget-object v3, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v7, v3}, Ljhp;->O(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/IntentFilter;

    goto :goto_0

    :pswitch_4
    invoke-static {v0, v7}, Ljhp;->C(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v6

    goto :goto_0

    :cond_0
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Ljqj;

    invoke-direct {v0, v6, v3, v4, v5}, Ljqj;-><init>(Landroid/os/IBinder;[Landroid/content/IntentFilter;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_5
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    move-object v8, v6

    move-object v9, v8

    move-object v14, v9

    move-object/from16 v16, v14

    move-object/from16 v17, v16

    move-object/from16 v19, v17

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljhp;->v(I)I

    move-result v4

    packed-switch v4, :pswitch_data_2

    invoke-static {v0, v3}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_1

    :pswitch_6
    invoke-static {v0, v3}, Ljhp;->L(Landroid/os/Parcel;I)Z

    move-result v20

    goto :goto_1

    :pswitch_7
    invoke-static {v0, v3}, Ljhp;->G(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v19

    goto :goto_1

    :pswitch_8
    invoke-static {v0, v3}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v18

    goto :goto_1

    :pswitch_9
    invoke-static {v0, v3}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v17

    goto :goto_1

    :pswitch_a
    invoke-static {v0, v3}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v16

    goto :goto_1

    :pswitch_b
    invoke-static {v0, v3}, Ljhp;->L(Landroid/os/Parcel;I)Z

    move-result v15

    goto :goto_1

    :pswitch_c
    invoke-static {v0, v3}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v14

    goto :goto_1

    :pswitch_d
    invoke-static {v0, v3}, Ljhp;->L(Landroid/os/Parcel;I)Z

    move-result v13

    goto :goto_1

    :pswitch_e
    invoke-static {v0, v3}, Ljhp;->L(Landroid/os/Parcel;I)Z

    move-result v12

    goto :goto_1

    :pswitch_f
    invoke-static {v0, v3}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v11

    goto :goto_1

    :pswitch_10
    invoke-static {v0, v3}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v10

    goto :goto_1

    :pswitch_11
    invoke-static {v0, v3}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :pswitch_12
    invoke-static {v0, v3}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_1
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/wearable/ConnectionConfiguration;

    move-object v7, v0

    invoke-direct/range {v7 .. v20}, Lcom/google/android/gms/wearable/ConnectionConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;IIZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/util/List;Z)V

    return-object v0

    :pswitch_13
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    if-ge v7, v2, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-static {v7}, Ljhp;->v(I)I

    move-result v8

    packed-switch v8, :pswitch_data_3

    invoke-static {v0, v7}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_2

    :pswitch_14
    invoke-static {v0, v7}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v6

    goto :goto_2

    :pswitch_15
    invoke-static {v0, v7}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v4

    goto :goto_2

    :pswitch_16
    invoke-static {v0, v7}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_2

    :pswitch_17
    invoke-static {v0, v7}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v5

    goto :goto_2

    :cond_2
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/wearable/AppTheme;

    invoke-direct {v0, v5, v3, v4, v6}, Lcom/google/android/gms/wearable/AppTheme;-><init>(IIII)V

    return-object v0

    :pswitch_18
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    move-object v10, v6

    move-object v12, v10

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljhp;->v(I)I

    move-result v4

    packed-switch v4, :pswitch_data_4

    invoke-static {v0, v3}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_3

    :pswitch_19
    invoke-static {v0, v3}, Ljhp;->L(Landroid/os/Parcel;I)Z

    move-result v13

    goto :goto_3

    :pswitch_1a
    invoke-static {v0, v3}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    :pswitch_1b
    invoke-static {v0, v3}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v11

    goto :goto_3

    :pswitch_1c
    invoke-static {v0, v3}, Ljhp;->G(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v10

    goto :goto_3

    :pswitch_1d
    invoke-static {v0, v3}, Ljhp;->L(Landroid/os/Parcel;I)Z

    move-result v9

    goto :goto_3

    :pswitch_1e
    invoke-static {v0, v3}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v8

    goto :goto_3

    :cond_3
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Ljpm;

    move-object v7, v0

    invoke-direct/range {v7 .. v13}, Ljpm;-><init>(IZLjava/util/List;ILjava/lang/String;Z)V

    return-object v0

    :pswitch_1f
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v2, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-static {v4}, Ljhp;->v(I)I

    move-result v7

    packed-switch v7, :pswitch_data_5

    invoke-static {v0, v4}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_4

    :pswitch_20
    invoke-static {v0, v4}, Ljhp;->L(Landroid/os/Parcel;I)Z

    move-result v3

    goto :goto_4

    :pswitch_21
    invoke-static {v0, v4}, Ljhp;->L(Landroid/os/Parcel;I)Z

    move-result v5

    goto :goto_4

    :pswitch_22
    sget-object v6, Ljoz;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v4, v6}, Ljhp;->H(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v6

    goto :goto_4

    :cond_4
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Ljpa;

    invoke-direct {v0, v6, v5, v3}, Ljpa;-><init>(Ljava/util/List;ZZ)V

    return-object v0

    :pswitch_23
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    move-object v3, v6

    move-object v4, v3

    move-object v7, v4

    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v8

    if-ge v8, v2, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-static {v8}, Ljhp;->v(I)I

    move-result v9

    packed-switch v9, :pswitch_data_6

    invoke-static {v0, v8}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_5

    :pswitch_24
    invoke-static {v0, v8}, Ljhp;->y(Landroid/os/Parcel;I)I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v8

    if-nez v7, :cond_5

    move-object v7, v6

    goto :goto_5

    :cond_5
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    const/4 v11, 0x0

    :goto_6
    if-ge v11, v10, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_6
    add-int/2addr v8, v7

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object v7, v9

    goto :goto_5

    :pswitch_25
    invoke-static {v0, v8}, Ljhp;->M(Landroid/os/Parcel;I)[B

    move-result-object v4

    goto :goto_5

    :pswitch_26
    invoke-static {v0, v8}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_7
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Ljoz;

    invoke-direct {v0, v3, v4, v7}, Ljoz;-><init>(Ljava/lang/String;[BLjava/util/List;)V

    return-object v0

    :pswitch_27
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    move-object v3, v6

    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v2, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-static {v4}, Ljhp;->v(I)I

    move-result v7

    packed-switch v7, :pswitch_data_7

    invoke-static {v0, v4}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_7

    :pswitch_28
    sget-object v3, Ljhh;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v4, v3}, Ljhp;->D(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Ljhh;

    goto :goto_7

    :pswitch_29
    sget-object v6, Ljby;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v4, v6}, Ljhp;->D(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljby;

    goto :goto_7

    :pswitch_2a
    invoke-static {v0, v4}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v5

    goto :goto_7

    :cond_8
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Ljoh;

    invoke-direct {v0, v5, v6, v3}, Ljoh;-><init>(ILjby;Ljhh;)V

    return-object v0

    :pswitch_2b
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljhp;->v(I)I

    move-result v4

    packed-switch v4, :pswitch_data_8

    invoke-static {v0, v3}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_8

    :pswitch_2c
    sget-object v4, Ljhg;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v3, v4}, Ljhp;->D(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Ljhg;

    goto :goto_8

    :pswitch_2d
    invoke-static {v0, v3}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v5

    goto :goto_8

    :cond_9
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Ljog;

    invoke-direct {v0, v5, v6}, Ljog;-><init>(ILjhg;)V

    return-object v0

    :pswitch_2e
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    move-object v3, v6

    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v2, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-static {v4}, Ljhp;->v(I)I

    move-result v5

    packed-switch v5, :pswitch_data_9

    invoke-static {v0, v4}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_9

    :pswitch_2f
    invoke-static {v0, v4}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    :pswitch_30
    invoke-static {v0, v4}, Ljhp;->G(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v6

    goto :goto_9

    :cond_a
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Ljoe;

    invoke-direct {v0, v6, v3}, Ljoe;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object v0

    :pswitch_31
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v2, :cond_b

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-static {v4}, Ljhp;->v(I)I

    move-result v7

    packed-switch v7, :pswitch_data_a

    invoke-static {v0, v4}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_a

    :pswitch_32
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v4, v6}, Ljhp;->D(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Landroid/content/Intent;

    goto :goto_a

    :pswitch_33
    invoke-static {v0, v4}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_a

    :pswitch_34
    invoke-static {v0, v4}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v5

    goto :goto_a

    :cond_b
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Ljob;

    invoke-direct {v0, v5, v3, v6}, Ljob;-><init>(IILandroid/content/Intent;)V

    return-object v0

    :pswitch_35
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v2, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-static {v4}, Ljhp;->v(I)I

    move-result v6

    packed-switch v6, :pswitch_data_b

    invoke-static {v0, v4}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_b

    :pswitch_36
    invoke-static {v0, v4}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_b

    :pswitch_37
    invoke-static {v0, v4}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v5

    goto :goto_b

    :cond_c
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Ljnn;

    invoke-direct {v0, v5, v3}, Ljnn;-><init>(II)V

    return-object v0

    :pswitch_38
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    :goto_c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_d

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljhp;->v(I)I

    move-result v4

    packed-switch v4, :pswitch_data_c

    invoke-static {v0, v3}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_c

    :pswitch_39
    sget-object v4, Ljnl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v3, v4}, Ljhp;->H(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v6

    goto :goto_c

    :cond_d
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Ljnm;

    invoke-direct {v0, v6}, Ljnm;-><init>(Ljava/util/List;)V

    return-object v0

    :pswitch_3a
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    move-object v3, v6

    move-object v4, v3

    :goto_d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    if-ge v7, v2, :cond_e

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-static {v7}, Ljhp;->v(I)I

    move-result v8

    packed-switch v8, :pswitch_data_d

    invoke-static {v0, v7}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_d

    :pswitch_3b
    invoke-static {v0, v7}, Ljhp;->L(Landroid/os/Parcel;I)Z

    move-result v5

    goto :goto_d

    :pswitch_3c
    sget-object v4, Ljnk;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v7, v4}, Ljhp;->D(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Ljnk;

    goto :goto_d

    :pswitch_3d
    invoke-static {v0, v7}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_d

    :pswitch_3e
    invoke-static {v0, v7}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_d

    :cond_e
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Ljnl;

    invoke-direct {v0, v6, v3, v4, v5}, Ljnl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljnk;Z)V

    return-object v0

    :pswitch_3f
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    const-wide/16 v7, 0x0

    move-wide v11, v3

    move-object v10, v6

    move-object/from16 v16, v10

    move-object/from16 v17, v16

    move-wide v14, v7

    const/4 v13, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    :goto_e
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_f

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljhp;->v(I)I

    move-result v4

    packed-switch v4, :pswitch_data_e

    invoke-static {v0, v3}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_f

    :pswitch_40
    invoke-static {v0, v3}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v3

    move/from16 v19, v3

    goto :goto_f

    :pswitch_41
    invoke-static {v0, v3}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v3

    move/from16 v18, v3

    goto :goto_f

    :pswitch_42
    invoke-static {v0, v3}, Ljhp;->M(Landroid/os/Parcel;I)[B

    move-result-object v3

    move-object/from16 v17, v3

    goto :goto_f

    :pswitch_43
    invoke-static {v0, v3}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v16, v3

    goto :goto_f

    :pswitch_44
    const/16 v4, 0x8

    invoke-static {v0, v3, v4}, Ljhp;->J(Landroid/os/Parcel;II)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    move-wide v14, v3

    goto :goto_f

    :pswitch_45
    invoke-static {v0, v3}, Ljhp;->L(Landroid/os/Parcel;I)Z

    move-result v3

    move v13, v3

    goto :goto_f

    :pswitch_46
    invoke-static {v0, v3}, Ljhp;->A(Landroid/os/Parcel;I)J

    move-result-wide v3

    move-wide v11, v3

    goto :goto_f

    :pswitch_47
    invoke-static {v0, v3}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object v10, v3

    :goto_f
    goto :goto_e

    :cond_f
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Ljnk;

    move-object v9, v0

    invoke-direct/range {v9 .. v19}, Ljnk;-><init>(Ljava/lang/String;JZDLjava/lang/String;[BII)V

    return-object v0

    :pswitch_48
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    move-object v8, v6

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    :goto_10
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_10

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljhp;->v(I)I

    move-result v4

    packed-switch v4, :pswitch_data_f

    invoke-static {v0, v3}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_10

    :pswitch_49
    invoke-static {v0, v3}, Ljhp;->Q(Landroid/os/Parcel;I)[[B

    move-result-object v17

    goto :goto_10

    :pswitch_4a
    invoke-static {v0, v3}, Ljhp;->N(Landroid/os/Parcel;I)[I

    move-result-object v16

    goto :goto_10

    :pswitch_4b
    invoke-static {v0, v3}, Ljhp;->Q(Landroid/os/Parcel;I)[[B

    move-result-object v15

    goto :goto_10

    :pswitch_4c
    invoke-static {v0, v3}, Ljhp;->N(Landroid/os/Parcel;I)[I

    move-result-object v14

    goto :goto_10

    :pswitch_4d
    invoke-static {v0, v3}, Ljhp;->Q(Landroid/os/Parcel;I)[[B

    move-result-object v13

    goto :goto_10

    :pswitch_4e
    invoke-static {v0, v3}, Ljhp;->Q(Landroid/os/Parcel;I)[[B

    move-result-object v12

    goto :goto_10

    :pswitch_4f
    invoke-static {v0, v3}, Ljhp;->Q(Landroid/os/Parcel;I)[[B

    move-result-object v11

    goto :goto_10

    :pswitch_50
    invoke-static {v0, v3}, Ljhp;->Q(Landroid/os/Parcel;I)[[B

    move-result-object v10

    goto :goto_10

    :pswitch_51
    invoke-static {v0, v3}, Ljhp;->M(Landroid/os/Parcel;I)[B

    move-result-object v9

    goto :goto_10

    :pswitch_52
    invoke-static {v0, v3}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_10

    :cond_10
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Ljni;

    move-object v7, v0

    invoke-direct/range {v7 .. v17}, Ljni;-><init>(Ljava/lang/String;[B[[B[[B[[B[[B[I[[B[I[[B)V

    return-object v0

    :pswitch_53
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    :goto_11
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_11

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljhp;->v(I)I

    move-result v4

    packed-switch v4, :pswitch_data_10

    invoke-static {v0, v3}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_11

    :pswitch_54
    invoke-static {v0, v3}, Ljhp;->M(Landroid/os/Parcel;I)[B

    move-result-object v6

    goto :goto_11

    :cond_11
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Ljnh;

    invoke-direct {v0, v6}, Ljnh;-><init>([B)V

    return-object v0

    :pswitch_55
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    move-wide v13, v3

    move-object v8, v6

    move-object v9, v8

    move-object v10, v9

    move-object v12, v10

    const/4 v11, 0x0

    :goto_12
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljhp;->v(I)I

    move-result v4

    packed-switch v4, :pswitch_data_11

    invoke-static {v0, v3}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_13

    :pswitch_56
    invoke-static {v0, v3}, Ljhp;->A(Landroid/os/Parcel;I)J

    move-result-wide v3

    move-wide v13, v3

    goto :goto_13

    :pswitch_57
    invoke-static {v0, v3}, Ljhp;->M(Landroid/os/Parcel;I)[B

    move-result-object v3

    move-object v12, v3

    goto :goto_13

    :pswitch_58
    invoke-static {v0, v3}, Ljhp;->L(Landroid/os/Parcel;I)Z

    move-result v3

    move v11, v3

    goto :goto_13

    :pswitch_59
    sget-object v4, Ljnf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v3, v4}, Ljhp;->O(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljnf;

    move-object v10, v3

    goto :goto_13

    :pswitch_5a
    invoke-static {v0, v3}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object v9, v3

    goto :goto_13

    :pswitch_5b
    invoke-static {v0, v3}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object v8, v3

    :goto_13
    goto :goto_12

    :cond_12
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Ljng;

    move-object v7, v0

    invoke-direct/range {v7 .. v14}, Ljng;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljnf;Z[BJ)V

    return-object v0

    :pswitch_5c
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    move-object v3, v6

    :goto_14
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v2, :cond_13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-static {v4}, Ljhp;->v(I)I

    move-result v7

    packed-switch v7, :pswitch_data_12

    invoke-static {v0, v4}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_14

    :pswitch_5d
    invoke-static {v0, v4}, Ljhp;->P(Landroid/os/Parcel;I)[Ljava/lang/String;

    move-result-object v3

    goto :goto_14

    :pswitch_5e
    sget-object v6, Ljnk;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v4, v6}, Ljhp;->O(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, [Ljnk;

    goto :goto_14

    :pswitch_5f
    invoke-static {v0, v4}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v5

    goto :goto_14

    :cond_13
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Ljnf;

    invoke-direct {v0, v5, v6, v3}, Ljnf;-><init>(I[Ljnk;[Ljava/lang/String;)V

    return-object v0

    :pswitch_60
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    const-wide v3, 0x7fffffffffffffffL

    move-wide v14, v3

    move-object v8, v6

    move-object v9, v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_15
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_14

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljhp;->v(I)I

    move-result v4

    packed-switch v4, :pswitch_data_13

    :pswitch_61
    invoke-static {v0, v3}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_16

    :pswitch_62
    invoke-static {v0, v3}, Ljhp;->A(Landroid/os/Parcel;I)J

    move-result-wide v3

    move-wide v14, v3

    goto :goto_16

    :pswitch_63
    invoke-static {v0, v3}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    goto :goto_16

    :pswitch_64
    invoke-static {v0, v3}, Ljhp;->L(Landroid/os/Parcel;I)Z

    move-result v3

    move v13, v3

    goto :goto_16

    :pswitch_65
    invoke-static {v0, v3}, Ljhp;->L(Landroid/os/Parcel;I)Z

    move-result v3

    move v12, v3

    goto :goto_16

    :pswitch_66
    invoke-static {v0, v3}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    goto :goto_16

    :pswitch_67
    invoke-static {v0, v3}, Ljhp;->L(Landroid/os/Parcel;I)Z

    move-result v3

    move v11, v3

    goto :goto_16

    :pswitch_68
    invoke-static {v0, v3}, Ljhp;->L(Landroid/os/Parcel;I)Z

    move-result v3

    move v10, v3

    goto :goto_16

    :pswitch_69
    sget-object v4, Ljgc;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v3, v4}, Ljhp;->H(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    move-object v9, v3

    goto :goto_16

    :pswitch_6a
    sget-object v4, Lcom/google/android/gms/location/LocationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v3, v4}, Ljhp;->D(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/location/LocationRequest;

    move-object v8, v3

    :goto_16
    goto :goto_15

    :cond_14
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Ljnb;

    move-object v7, v0

    invoke-direct/range {v7 .. v15}, Ljnb;-><init>(Lcom/google/android/gms/location/LocationRequest;Ljava/util/List;ZZZZJ)V

    return-object v0

    :pswitch_6b
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x1

    move-object v9, v6

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    const/4 v8, 0x1

    :goto_17
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_15

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljhp;->v(I)I

    move-result v4

    packed-switch v4, :pswitch_data_14

    :pswitch_6c
    invoke-static {v0, v3}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_17

    :pswitch_6d
    invoke-static {v0, v3}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v14

    goto :goto_17

    :pswitch_6e
    invoke-static {v0, v3}, Ljhp;->C(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v13

    goto :goto_17

    :pswitch_6f
    invoke-static {v0, v3}, Ljhp;->C(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v11

    goto :goto_17

    :pswitch_70
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v3, v4}, Ljhp;->D(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Landroid/app/PendingIntent;

    goto :goto_17

    :pswitch_71
    invoke-static {v0, v3}, Ljhp;->C(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v10

    goto :goto_17

    :pswitch_72
    sget-object v4, Ljnb;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v3, v4}, Ljhp;->D(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Ljnb;

    goto :goto_17

    :pswitch_73
    invoke-static {v0, v3}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v8

    goto :goto_17

    :cond_15
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Ljnc;

    move-object v7, v0

    invoke-direct/range {v7 .. v14}, Ljnc;-><init>(ILjnb;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Ljava/lang/String;)V

    return-object v0

    :goto_18
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_16

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljhp;->v(I)I

    move-result v4

    packed-switch v4, :pswitch_data_15

    invoke-static {v0, v3}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_18

    :pswitch_74
    invoke-static {v0, v3}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v5

    goto :goto_18

    :cond_16
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Ljqk;

    invoke-direct {v0, v5}, Ljqk;-><init>(I)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6b
        :pswitch_60
        :pswitch_5c
        :pswitch_55
        :pswitch_53
        :pswitch_48
        :pswitch_3f
        :pswitch_3a
        :pswitch_38
        :pswitch_35
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_27
        :pswitch_23
        :pswitch_1f
        :pswitch_18
        :pswitch_13
        :pswitch_5
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
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
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x2
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_22
        :pswitch_21
        :pswitch_20
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_26
        :pswitch_25
        :pswitch_24
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_29
        :pswitch_28
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_2c
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x1
        :pswitch_30
        :pswitch_2f
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_34
        :pswitch_33
        :pswitch_32
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0x1
        :pswitch_37
        :pswitch_36
    .end packed-switch

    :pswitch_data_c
    .packed-switch 0x2
        :pswitch_39
    .end packed-switch

    :pswitch_data_d
    .packed-switch 0x2
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
    .end packed-switch

    :pswitch_data_e
    .packed-switch 0x2
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
    .end packed-switch

    :pswitch_data_f
    .packed-switch 0x2
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
    .end packed-switch

    :pswitch_data_10
    .packed-switch 0x2
        :pswitch_54
    .end packed-switch

    :pswitch_data_11
    .packed-switch 0x2
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
    .end packed-switch

    :pswitch_data_12
    .packed-switch 0x2
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
    .end packed-switch

    :pswitch_data_13
    .packed-switch 0x1
        :pswitch_6a
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_69
        :pswitch_61
        :pswitch_61
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
    .end packed-switch

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6c
        :pswitch_6d
    .end packed-switch

    :pswitch_data_15
    .packed-switch 0x2
        :pswitch_74
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    iget v0, p0, Ljnd;->a:I

    packed-switch v0, :pswitch_data_0

    new-array p1, p1, [Ljqk;

    return-object p1

    :pswitch_0
    new-array p1, p1, [Ljqj;

    return-object p1

    :pswitch_1
    new-array p1, p1, [Lcom/google/android/gms/wearable/ConnectionConfiguration;

    return-object p1

    :pswitch_2
    new-array p1, p1, [Lcom/google/android/gms/wearable/AppTheme;

    return-object p1

    :pswitch_3
    new-array p1, p1, [Ljpm;

    return-object p1

    :pswitch_4
    new-array p1, p1, [Ljpa;

    return-object p1

    :pswitch_5
    new-array p1, p1, [Ljoz;

    return-object p1

    :pswitch_6
    new-array p1, p1, [Ljoh;

    return-object p1

    :pswitch_7
    new-array p1, p1, [Ljog;

    return-object p1

    :pswitch_8
    new-array p1, p1, [Ljoe;

    return-object p1

    :pswitch_9
    new-array p1, p1, [Ljob;

    return-object p1

    :pswitch_a
    new-array p1, p1, [Ljnn;

    return-object p1

    :pswitch_b
    new-array p1, p1, [Ljnm;

    return-object p1

    :pswitch_c
    new-array p1, p1, [Ljnl;

    return-object p1

    :pswitch_d
    new-array p1, p1, [Ljnk;

    return-object p1

    :pswitch_e
    new-array p1, p1, [Ljni;

    return-object p1

    :pswitch_f
    new-array p1, p1, [Ljnh;

    return-object p1

    :pswitch_10
    new-array p1, p1, [Ljng;

    return-object p1

    :pswitch_11
    new-array p1, p1, [Ljnf;

    return-object p1

    :pswitch_12
    new-array p1, p1, [Ljnb;

    return-object p1

    :pswitch_13
    new-array p1, p1, [Ljnc;

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
