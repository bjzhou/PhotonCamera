.class public final Lob;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field private final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lob;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iget v2, v1, Lob;->a:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    const-string v3, ""

    move-object v5, v4

    move-object v4, v3

    goto/16 :goto_4

    :pswitch_0
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    move-object v7, v4

    move-object v8, v7

    move-object v12, v8

    move-object v13, v12

    move-object v15, v13

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljhp;->v(I)I

    move-result v5

    packed-switch v5, :pswitch_data_1

    invoke-static {v0, v3}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_0

    :pswitch_1
    invoke-static {v0, v3}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v15

    goto :goto_0

    :pswitch_2
    sget-object v4, Ljau;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v3, v4}, Ljhp;->H(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v4

    goto :goto_0

    :pswitch_3
    invoke-static {v0, v3}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v13

    goto :goto_0

    :pswitch_4
    invoke-static {v0, v3}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    :pswitch_5
    invoke-static {v0, v3}, Ljhp;->L(Landroid/os/Parcel;I)Z

    move-result v11

    goto :goto_0

    :pswitch_6
    invoke-static {v0, v3}, Ljhp;->L(Landroid/os/Parcel;I)Z

    move-result v10

    goto :goto_0

    :pswitch_7
    invoke-static {v0, v3}, Ljhp;->L(Landroid/os/Parcel;I)Z

    move-result v9

    goto :goto_0

    :pswitch_8
    sget-object v5, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v3, v5}, Ljhp;->D(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Landroid/accounts/Account;

    goto :goto_0

    :pswitch_9
    sget-object v5, Lcom/google/android/gms/common/api/Scope;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v3, v5}, Ljhp;->H(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v7

    goto :goto_0

    :pswitch_a
    invoke-static {v0, v3}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v6

    goto :goto_0

    :cond_0
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-static {v4}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->b(Ljava/util/List;)Ljava/util/Map;

    move-result-object v14

    move-object v5, v0

    invoke-direct/range {v5 .. v15}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;-><init>(ILjava/util/ArrayList;Landroid/accounts/Account;ZZZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-object v0

    :pswitch_b
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    const-wide/16 v5, 0x0

    move-object v9, v4

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object/from16 v17, v14

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-wide v15, v5

    const/4 v8, 0x0

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

    goto :goto_2

    :pswitch_c
    invoke-static {v0, v3}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v20, v3

    goto :goto_2

    :pswitch_d
    invoke-static {v0, v3}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v19, v3

    goto :goto_2

    :pswitch_e
    sget-object v4, Lcom/google/android/gms/common/api/Scope;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v3, v4}, Ljhp;->H(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v18, v3

    goto :goto_2

    :pswitch_f
    invoke-static {v0, v3}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v17, v3

    goto :goto_2

    :pswitch_10
    invoke-static {v0, v3}, Ljhp;->A(Landroid/os/Parcel;I)J

    move-result-wide v3

    move-wide v15, v3

    goto :goto_2

    :pswitch_11
    invoke-static {v0, v3}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object v14, v3

    goto :goto_2

    :pswitch_12
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v3, v4}, Ljhp;->D(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    move-object v13, v3

    goto :goto_2

    :pswitch_13
    invoke-static {v0, v3}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object v12, v3

    goto :goto_2

    :pswitch_14
    invoke-static {v0, v3}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object v11, v3

    goto :goto_2

    :pswitch_15
    invoke-static {v0, v3}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object v10, v3

    goto :goto_2

    :pswitch_16
    invoke-static {v0, v3}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object v9, v3

    goto :goto_2

    :pswitch_17
    invoke-static {v0, v3}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v3

    move v8, v3

    :goto_2
    goto :goto_1

    :cond_1
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-object v7, v0

    invoke-direct/range {v7 .. v20}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_18
    new-instance v2, Lgxx;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-direct {v2, v0}, Lgxx;-><init>(I)V

    return-object v2

    :pswitch_19
    new-instance v2, Ldjd;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    const-class v6, Ldjp;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lgxy;

    const-class v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-static {v7}, Lmvv;->j(Ljava/util/Collection;)Lmvv;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v10

    check-cast v10, Lj$/time/Instant;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v11

    check-cast v11, Lj$/time/Instant;

    const-class v12, Ldjp;

    invoke-virtual {v12}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/net/Uri;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v14

    check-cast v14, Lkaf;

    const/4 v15, 0x1

    if-ne v13, v15, :cond_2

    const/4 v13, 0x1

    goto :goto_3

    :cond_2
    const/4 v13, 0x0

    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    move-object v3, v2

    invoke-direct/range {v3 .. v15}, Ldjd;-><init>(JLgxy;Lmvv;Ljava/lang/String;Ljava/lang/String;Lj$/time/Instant;Lj$/time/Instant;Landroid/net/Uri;ZLkaf;I)V

    return-object v2

    :pswitch_1a
    new-instance v2, Lboi;

    invoke-direct {v2, v0}, Lboi;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_1b
    new-instance v2, Lbfz;

    invoke-direct {v2, v0}, Lbfz;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_1c
    new-instance v2, Laow;

    invoke-direct {v2, v0}, Laow;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_1d
    new-instance v2, Laou;

    invoke-direct {v2, v0}, Laou;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_1e
    new-instance v2, Laog;

    invoke-direct {v2, v0}, Laog;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_1f
    new-instance v2, Lanr;

    invoke-direct {v2, v0}, Lanr;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_20
    new-instance v2, Lano;

    invoke-direct {v2, v0}, Lano;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_21
    new-instance v2, Lanl;

    invoke-direct {v2, v0}, Lanl;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_22
    new-instance v2, Lani;

    invoke-direct {v2, v0}, Lani;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_23
    new-instance v2, Lahn;

    invoke-direct {v2, v0}, Lahn;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_24
    new-instance v2, Lqd;

    invoke-direct {v2, v0}, Lqd;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_25
    new-instance v2, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    invoke-direct {v2, v0}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_26
    new-instance v2, Landroid/support/wearable/complications/rendering/ComplicationDrawable;

    invoke-direct {v2, v0, v4}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;-><init>(Landroid/os/Parcel;Loe;)V

    return-object v2

    :pswitch_27
    new-instance v2, Landroid/support/wearable/complications/TimeFormatText;

    invoke-direct {v2, v0}, Landroid/support/wearable/complications/TimeFormatText;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_28
    new-instance v2, Landroid/support/wearable/complications/ComplicationText;

    invoke-direct {v2, v0}, Landroid/support/wearable/complications/ComplicationText;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_29
    new-instance v2, Landroid/support/wearable/complications/TimeDifferenceText;

    invoke-direct {v2, v0}, Landroid/support/wearable/complications/TimeDifferenceText;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-ge v6, v2, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-static {v6}, Ljhp;->v(I)I

    move-result v7

    packed-switch v7, :pswitch_data_3

    :pswitch_2a
    invoke-static {v0, v6}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_4

    :pswitch_2b
    invoke-static {v0, v6}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :pswitch_2c
    sget-object v5, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v6, v5}, Ljhp;->D(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    goto :goto_4

    :pswitch_2d
    invoke-static {v0, v6}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_3
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/auth/api/signin/SignInAccount;

    invoke-direct {v0, v3, v5, v4}, Lcom/google/android/gms/auth/api/signin/SignInAccount;-><init>(Ljava/lang/String;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Ljava/lang/String;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_b
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x4
        :pswitch_2d
        :pswitch_2a
        :pswitch_2a
        :pswitch_2c
        :pswitch_2b
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lob;->a:I

    packed-switch v0, :pswitch_data_0

    new-array p1, p1, [Lcom/google/android/gms/auth/api/signin/SignInAccount;

    return-object p1

    :pswitch_0
    new-array p1, p1, [Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    return-object p1

    :pswitch_1
    new-array p1, p1, [Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    return-object p1

    :pswitch_2
    new-array p1, p1, [Lgxx;

    return-object p1

    :pswitch_3
    new-array p1, p1, [Ldjd;

    return-object p1

    :pswitch_4
    new-array p1, p1, [Lboi;

    return-object p1

    :pswitch_5
    new-array p1, p1, [Lbfz;

    return-object p1

    :pswitch_6
    new-array p1, p1, [Laow;

    return-object p1

    :pswitch_7
    new-array p1, p1, [Laou;

    return-object p1

    :pswitch_8
    new-array p1, p1, [Laog;

    return-object p1

    :pswitch_9
    new-array p1, p1, [Lanr;

    return-object p1

    :pswitch_a
    new-array p1, p1, [Lano;

    return-object p1

    :pswitch_b
    new-array p1, p1, [Lanl;

    return-object p1

    :pswitch_c
    new-array p1, p1, [Lani;

    return-object p1

    :pswitch_d
    new-array p1, p1, [Lahn;

    return-object p1

    :pswitch_e
    new-array p1, p1, [Lqd;

    return-object p1

    :pswitch_f
    new-array p1, p1, [Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    return-object p1

    :pswitch_10
    new-array p1, p1, [Landroid/support/wearable/complications/rendering/ComplicationDrawable;

    return-object p1

    :pswitch_11
    new-array p1, p1, [Landroid/support/wearable/complications/TimeFormatText;

    return-object p1

    :pswitch_12
    new-array p1, p1, [Landroid/support/wearable/complications/ComplicationText;

    return-object p1

    :pswitch_13
    new-array p1, p1, [Landroid/support/wearable/complications/TimeDifferenceText;

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
