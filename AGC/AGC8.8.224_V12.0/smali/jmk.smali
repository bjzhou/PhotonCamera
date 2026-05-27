.class public final Ljmk;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 41

    move-object/from16 v0, p1

    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v1

    new-instance v2, Landroid/os/WorkSource;

    invoke-direct {v2}, Landroid/os/WorkSource;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    const v8, 0x7fffffff

    const-wide v9, 0x7fffffffffffffffL

    const-wide/16 v11, 0x0

    const-wide/32 v13, 0x927c0

    const-wide/32 v15, 0x36ee80

    const/16 v17, 0x66

    move-object/from16 v39, v2

    move-object/from16 v37, v3

    move-object/from16 v40, v37

    move-wide/from16 v33, v5

    move-wide/from16 v26, v9

    move-wide/from16 v28, v26

    move-wide/from16 v24, v11

    move-wide/from16 v22, v13

    move-wide/from16 v20, v15

    const/16 v19, 0x66

    const v30, 0x7fffffff

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v38, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Ljhp;->v(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    invoke-static {v0, v2}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto/16 :goto_1

    :pswitch_1
    sget-object v3, Ljlx;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, Ljhp;->D(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Ljlx;

    move-object/from16 v40, v2

    goto/16 :goto_1

    :pswitch_2
    sget-object v3, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, Ljhp;->D(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/WorkSource;

    move-object/from16 v39, v2

    goto/16 :goto_1

    :pswitch_3
    invoke-static {v0, v2}, Ljhp;->L(Landroid/os/Parcel;I)Z

    move-result v2

    move/from16 v38, v2

    goto/16 :goto_1

    :pswitch_4
    invoke-static {v0, v2}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v37, v2

    goto :goto_1

    :pswitch_5
    invoke-static {v0, v2}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v2

    move/from16 v36, v2

    goto :goto_1

    :pswitch_6
    invoke-static {v0, v2}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v2

    move/from16 v35, v2

    goto :goto_1

    :pswitch_7
    invoke-static {v0, v2}, Ljhp;->A(Landroid/os/Parcel;I)J

    move-result-wide v2

    move-wide/from16 v33, v2

    goto :goto_1

    :pswitch_8
    invoke-static {v0, v2}, Ljhp;->A(Landroid/os/Parcel;I)J

    move-result-wide v2

    move-wide/from16 v28, v2

    goto :goto_1

    :pswitch_9
    invoke-static {v0, v2}, Ljhp;->L(Landroid/os/Parcel;I)Z

    move-result v2

    move/from16 v32, v2

    goto :goto_1

    :pswitch_a
    invoke-static {v0, v2}, Ljhp;->A(Landroid/os/Parcel;I)J

    move-result-wide v2

    move-wide/from16 v24, v2

    goto :goto_1

    :pswitch_b
    const/4 v3, 0x4

    invoke-static {v0, v2, v3}, Ljhp;->J(Landroid/os/Parcel;II)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    move/from16 v31, v2

    goto :goto_1

    :pswitch_c
    invoke-static {v0, v2}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v2

    move/from16 v30, v2

    goto :goto_1

    :pswitch_d
    invoke-static {v0, v2}, Ljhp;->A(Landroid/os/Parcel;I)J

    move-result-wide v2

    move-wide/from16 v26, v2

    goto :goto_1

    :pswitch_e
    invoke-static {v0, v2}, Ljhp;->A(Landroid/os/Parcel;I)J

    move-result-wide v2

    move-wide/from16 v22, v2

    goto :goto_1

    :pswitch_f
    invoke-static {v0, v2}, Ljhp;->A(Landroid/os/Parcel;I)J

    move-result-wide v2

    move-wide/from16 v20, v2

    goto :goto_1

    :pswitch_10
    invoke-static {v0, v2}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v2

    move/from16 v19, v2

    :goto_1
    goto/16 :goto_0

    :cond_0
    invoke-static {v0, v1}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/location/LocationRequest;

    move-object/from16 v18, v0

    invoke-direct/range {v18 .. v40}, Lcom/google/android/gms/location/LocationRequest;-><init>(IJJJJJIFZJIILjava/lang/String;ZLandroid/os/WorkSource;Ljlx;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_0
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
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p1, p1, [Lcom/google/android/gms/location/LocationRequest;

    return-object p1
.end method
