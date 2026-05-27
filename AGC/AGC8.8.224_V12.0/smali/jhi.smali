.class public final Ljhi;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field private final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Ljhi;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/os/Parcel;)Lcom/google/android/gms/feedback/ErrorReport;
    .locals 72

    move-object/from16 v0, p0

    invoke-static/range {p0 .. p0}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v5, v3

    move-object v6, v5

    move-object v8, v6

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object/from16 v16, v14

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    move-object/from16 v31, v26

    move-object/from16 v32, v31

    move-object/from16 v33, v32

    move-object/from16 v34, v33

    move-object/from16 v39, v34

    move-object/from16 v40, v39

    move-object/from16 v42, v40

    move-object/from16 v43, v42

    move-object/from16 v44, v43

    move-object/from16 v45, v44

    move-object/from16 v46, v45

    move-object/from16 v47, v46

    move-object/from16 v48, v47

    move-object/from16 v49, v48

    move-object/from16 v50, v49

    move-object/from16 v51, v50

    move-object/from16 v52, v51

    move-object/from16 v54, v52

    move-object/from16 v55, v54

    move-object/from16 v56, v55

    move-object/from16 v57, v56

    move-object/from16 v59, v57

    move-object/from16 v60, v59

    move-object/from16 v62, v60

    move-object/from16 v63, v62

    move-object/from16 v64, v63

    move-object/from16 v67, v64

    move-object/from16 v68, v67

    move-object/from16 v69, v68

    const/4 v7, 0x0

    const/4 v15, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v41, 0x0

    const/16 v53, 0x0

    const/16 v58, 0x0

    const/16 v61, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v70, 0x0

    const/16 v71, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v1, :cond_0

    invoke-static/range {p0 .. p0}, Ljhp;->w(Landroid/os/Parcel;)I

    move-result v2

    invoke-static {v2}, Ljhp;->v(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    invoke-static {v0, v2}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_0

    :pswitch_0
    invoke-static {v0, v2}, Ljhp;->L(Landroid/os/Parcel;I)Z

    move-result v71

    goto :goto_0

    :pswitch_1
    invoke-static {v0, v2}, Ljhp;->L(Landroid/os/Parcel;I)Z

    move-result v70

    goto :goto_0

    :pswitch_2
    invoke-static {v0, v2}, Ljhp;->P(Landroid/os/Parcel;I)[Ljava/lang/String;

    move-result-object v69

    goto :goto_0

    :pswitch_3
    invoke-static {v0, v2}, Ljhp;->P(Landroid/os/Parcel;I)[Ljava/lang/String;

    move-result-object v68

    goto :goto_0

    :pswitch_4
    invoke-static {v0, v2}, Ljhp;->P(Landroid/os/Parcel;I)[Ljava/lang/String;

    move-result-object v67

    goto :goto_0

    :pswitch_5
    invoke-static {v0, v2}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v66

    goto :goto_0

    :pswitch_6
    invoke-static {v0, v2}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v65

    goto :goto_0

    :pswitch_7
    invoke-static {v0, v2}, Ljhp;->G(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v64

    goto :goto_0

    :pswitch_8
    invoke-static {v0, v2}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v63

    goto :goto_0

    :pswitch_9
    sget-object v3, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, Ljhp;->D(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v62, v2

    check-cast v62, Landroid/graphics/Bitmap;

    goto :goto_0

    :pswitch_a
    invoke-static {v0, v2}, Ljhp;->L(Landroid/os/Parcel;I)Z

    move-result v61

    goto :goto_0

    :pswitch_b
    sget-object v3, Landroid/graphics/RectF;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, Ljhp;->H(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v60

    goto :goto_0

    :pswitch_c
    invoke-static {v0, v2}, Ljhp;->B(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v59

    goto :goto_0

    :pswitch_d
    invoke-static {v0, v2}, Ljhp;->L(Landroid/os/Parcel;I)Z

    move-result v58

    goto :goto_0

    :pswitch_e
    invoke-static {v0, v2}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v57

    goto :goto_0

    :pswitch_f
    sget-object v3, Ljje;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, Ljhp;->D(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v56, v2

    check-cast v56, Ljje;

    goto :goto_0

    :pswitch_10
    sget-object v3, Ljjf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, Ljhp;->D(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v55, v2

    check-cast v55, Ljjf;

    goto :goto_0

    :pswitch_11
    invoke-static {v0, v2}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v54

    goto/16 :goto_0

    :pswitch_12
    invoke-static {v0, v2}, Ljhp;->L(Landroid/os/Parcel;I)Z

    move-result v53

    goto/16 :goto_0

    :pswitch_13
    invoke-static {v0, v2}, Ljhp;->P(Landroid/os/Parcel;I)[Ljava/lang/String;

    move-result-object v52

    goto/16 :goto_0

    :pswitch_14
    sget-object v3, Ljjd;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, Ljhp;->O(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v51, v2

    check-cast v51, [Ljjd;

    goto/16 :goto_0

    :pswitch_15
    invoke-static {v0, v2}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v50

    goto/16 :goto_0

    :pswitch_16
    sget-object v3, Lcom/google/android/gms/common/data/BitmapTeleporter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, Ljhp;->D(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v49, v2

    check-cast v49, Lcom/google/android/gms/common/data/BitmapTeleporter;

    goto/16 :goto_0

    :pswitch_17
    invoke-static {v0, v2}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v48

    goto/16 :goto_0

    :pswitch_18
    invoke-static {v0, v2}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v47

    goto/16 :goto_0

    :pswitch_19
    invoke-static {v0, v2}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v46

    goto/16 :goto_0

    :pswitch_1a
    invoke-static {v0, v2}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v45

    goto/16 :goto_0

    :pswitch_1b
    invoke-static {v0, v2}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v44

    goto/16 :goto_0

    :pswitch_1c
    invoke-static {v0, v2}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v43

    goto/16 :goto_0

    :pswitch_1d
    invoke-static {v0, v2}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v42

    goto/16 :goto_0

    :pswitch_1e
    invoke-static {v0, v2}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v41

    goto/16 :goto_0

    :pswitch_1f
    invoke-static {v0, v2}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v40

    goto/16 :goto_0

    :pswitch_20
    invoke-static {v0, v2}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v39

    goto/16 :goto_0

    :pswitch_21
    invoke-static {v0, v2}, Ljhp;->L(Landroid/os/Parcel;I)Z

    move-result v38

    goto/16 :goto_0

    :pswitch_22
    invoke-static {v0, v2}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v37

    goto/16 :goto_0

    :pswitch_23
    invoke-static {v0, v2}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v36

    goto/16 :goto_0

    :pswitch_24
    invoke-static {v0, v2}, Ljhp;->L(Landroid/os/Parcel;I)Z

    move-result v35

    goto/16 :goto_0

    :pswitch_25
    invoke-static {v0, v2}, Ljhp;->B(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v34

    goto/16 :goto_0

    :pswitch_26
    invoke-static {v0, v2}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v33

    goto/16 :goto_0

    :pswitch_27
    invoke-static {v0, v2}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v32

    goto/16 :goto_0

    :pswitch_28
    invoke-static {v0, v2}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v31

    goto/16 :goto_0

    :pswitch_29
    invoke-static {v0, v2}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v30

    goto/16 :goto_0

    :pswitch_2a
    invoke-static {v0, v2}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v29

    goto/16 :goto_0

    :pswitch_2b
    invoke-static {v0, v2}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v28

    goto/16 :goto_0

    :pswitch_2c
    invoke-static {v0, v2}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v27

    goto/16 :goto_0

    :pswitch_2d
    invoke-static {v0, v2}, Ljhp;->M(Landroid/os/Parcel;I)[B

    move-result-object v26

    goto/16 :goto_0

    :pswitch_2e
    invoke-static {v0, v2}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_0

    :pswitch_2f
    invoke-static {v0, v2}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_0

    :pswitch_30
    invoke-static {v0, v2}, Ljhp;->P(Landroid/os/Parcel;I)[Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_0

    :pswitch_31
    invoke-static {v0, v2}, Ljhp;->P(Landroid/os/Parcel;I)[Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_0

    :pswitch_32
    invoke-static {v0, v2}, Ljhp;->P(Landroid/os/Parcel;I)[Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_0

    :pswitch_33
    invoke-static {v0, v2}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_0

    :pswitch_34
    invoke-static {v0, v2}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_0

    :pswitch_35
    invoke-static {v0, v2}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_0

    :pswitch_36
    invoke-static {v0, v2}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_0

    :pswitch_37
    invoke-static {v0, v2}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_0

    :pswitch_38
    invoke-static {v0, v2}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v15

    goto/16 :goto_0

    :pswitch_39
    invoke-static {v0, v2}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_0

    :pswitch_3a
    invoke-static {v0, v2}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_0

    :pswitch_3b
    invoke-static {v0, v2}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    :pswitch_3c
    invoke-static {v0, v2}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_0

    :pswitch_3d
    invoke-static {v0, v2}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    :pswitch_3e
    invoke-static {v0, v2}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    :pswitch_3f
    invoke-static {v0, v2}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    :pswitch_40
    invoke-static {v0, v2}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v7

    goto/16 :goto_0

    :pswitch_41
    invoke-static {v0, v2}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    :pswitch_42
    sget-object v3, Landroid/app/ApplicationErrorReport;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, Ljhp;->D(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/app/ApplicationErrorReport;

    goto/16 :goto_0

    :cond_0
    invoke-static {v0, v1}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/feedback/ErrorReport;

    move-object v4, v0

    invoke-direct/range {v4 .. v71}, Lcom/google/android/gms/feedback/ErrorReport;-><init>(Landroid/app/ApplicationErrorReport;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZIIZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/data/BitmapTeleporter;Ljava/lang/String;[Ljjd;[Ljava/lang/String;ZLjava/lang/String;Ljjf;Ljje;Ljava/lang/String;ZLandroid/os/Bundle;Ljava/util/List;ZLandroid/graphics/Bitmap;Ljava/lang/String;Ljava/util/List;II[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZZ)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
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

.method public static b(Ljjn;Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Ljhp;->a(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Ljjn;->a:Lcom/google/android/gms/googlehelp/GoogleHelp;

    const/4 v2, 0x1

    invoke-static {p1, v2, v1, p2}, Ljhp;->o(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    iget-object p2, p0, Ljjn;->b:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {p1, v1, p2}, Ljhp;->p(Landroid/os/Parcel;ILjava/lang/String;)V

    iget-object p2, p0, Ljjn;->c:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {p1, v1, p2}, Ljhp;->p(Landroid/os/Parcel;ILjava/lang/String;)V

    iget p2, p0, Ljjn;->d:I

    const/4 v1, 0x4

    invoke-static {p1, v1, p2}, Ljhp;->g(Landroid/os/Parcel;II)V

    iget-object p2, p0, Ljjn;->e:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-static {p1, v1, p2}, Ljhp;->p(Landroid/os/Parcel;ILjava/lang/String;)V

    iget p0, p0, Ljjn;->f:I

    const/4 p2, 0x6

    invoke-static {p1, p2, p0}, Ljhp;->g(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, Ljhp;->c(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iget v2, v1, Ljhi;->a:I

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    packed-switch v2, :pswitch_data_0

    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    move-object v9, v6

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    const/4 v8, 0x0

    goto/16 :goto_17

    :pswitch_0
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljhp;->v(I)I

    move-result v4

    packed-switch v4, :pswitch_data_1

    invoke-static {v0, v3}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_0

    :pswitch_1
    sget-object v4, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v3, v4}, Ljhp;->D(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/google/android/gms/common/api/Status;

    goto :goto_0

    :cond_0
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Ljml;

    invoke-direct {v0, v6}, Ljml;-><init>(Lcom/google/android/gms/common/api/Status;)V

    return-object v0

    :pswitch_2
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    const-wide v3, 0x7fffffffffffffffL

    move-wide v8, v3

    move-object v12, v6

    move-object v13, v12

    const/4 v10, 0x0

    const/4 v11, 0x0

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

    :pswitch_3
    sget-object v4, Ljlx;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v3, v4}, Ljhp;->D(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Ljlx;

    move-object v13, v3

    goto :goto_2

    :pswitch_4
    invoke-static {v0, v3}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object v12, v3

    goto :goto_2

    :pswitch_5
    invoke-static {v0, v3}, Ljhp;->L(Landroid/os/Parcel;I)Z

    move-result v3

    move v11, v3

    goto :goto_2

    :pswitch_6
    invoke-static {v0, v3}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v3

    move v10, v3

    goto :goto_2

    :pswitch_7
    invoke-static {v0, v3}, Ljhp;->A(Landroid/os/Parcel;I)J

    move-result-wide v3

    move-wide v8, v3

    :goto_2
    goto :goto_1

    :cond_1
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Ljmh;

    move-object v7, v0

    invoke-direct/range {v7 .. v13}, Ljmh;-><init>(JIZLjava/lang/String;Ljlx;)V

    return-object v0

    :pswitch_8
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    sget v3, Lmvv;->d:I

    sget-object v3, Lmyu;->a:Lmvv;

    move-object v14, v3

    move-object v10, v6

    move-object v11, v10

    move-object v12, v11

    move-object v15, v12

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x0

    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljhp;->v(I)I

    move-result v4

    packed-switch v4, :pswitch_data_3

    invoke-static {v0, v3}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_3

    :pswitch_9
    sget-object v4, Ljca;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v3, v4}, Ljhp;->H(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v14

    goto :goto_3

    :pswitch_a
    sget-object v4, Ljlx;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v3, v4}, Ljhp;->D(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Ljlx;

    goto :goto_3

    :pswitch_b
    invoke-static {v0, v3}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    :pswitch_c
    invoke-static {v0, v3}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v13

    goto :goto_3

    :pswitch_d
    invoke-static {v0, v3}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    :pswitch_e
    invoke-static {v0, v3}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    :pswitch_f
    invoke-static {v0, v3}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v9

    goto :goto_3

    :pswitch_10
    invoke-static {v0, v3}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v8

    goto :goto_3

    :cond_2
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Ljlx;

    move-object v7, v0

    invoke-direct/range {v7 .. v15}, Ljlx;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljlx;)V

    return-object v0

    :pswitch_11
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-ge v6, v2, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-static {v6}, Ljhp;->v(I)I

    move-result v7

    packed-switch v7, :pswitch_data_4

    invoke-static {v0, v6}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_5

    :pswitch_12
    invoke-static {v0, v6}, Ljhp;->A(Landroid/os/Parcel;I)J

    move-result-wide v3

    goto :goto_5

    :pswitch_13
    invoke-static {v0, v6}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v5

    :goto_5
    goto :goto_4

    :cond_3
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Ljkl;

    invoke-direct {v0, v5, v3, v4}, Ljkl;-><init>(IJ)V

    return-object v0

    :pswitch_14
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-ge v6, v2, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-static {v6}, Ljhp;->v(I)I

    move-result v7

    packed-switch v7, :pswitch_data_5

    invoke-static {v0, v6}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_6

    :pswitch_15
    invoke-static {v0, v6}, Ljhp;->L(Landroid/os/Parcel;I)Z

    move-result v4

    goto :goto_6

    :pswitch_16
    invoke-static {v0, v6}, Ljhp;->L(Landroid/os/Parcel;I)Z

    move-result v3

    goto :goto_6

    :pswitch_17
    invoke-static {v0, v6}, Ljhp;->L(Landroid/os/Parcel;I)Z

    move-result v5

    goto :goto_6

    :cond_4
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Ljkk;

    invoke-direct {v0, v5, v3, v4}, Ljkk;-><init>(ZZZ)V

    return-object v0

    :pswitch_18
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    move-wide v15, v3

    move-object v8, v6

    move-object v11, v8

    move-object v13, v11

    move-object v14, v13

    move-object/from16 v17, v14

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljhp;->v(I)I

    move-result v4

    packed-switch v4, :pswitch_data_6

    :pswitch_19
    invoke-static {v0, v3}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto/16 :goto_8

    :pswitch_1a
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v3, v4}, Ljhp;->D(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    move-object/from16 v20, v3

    goto :goto_8

    :pswitch_1b
    invoke-static {v0, v3}, Ljhp;->M(Landroid/os/Parcel;I)[B

    move-result-object v3

    move-object/from16 v19, v3

    goto :goto_8

    :pswitch_1c
    sget-object v4, Ljkl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v3, v4}, Ljhp;->D(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Ljkl;

    move-object/from16 v18, v3

    goto :goto_8

    :pswitch_1d
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v3, v4}, Ljhp;->D(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    move-object/from16 v17, v3

    goto :goto_8

    :pswitch_1e
    invoke-static {v0, v3}, Ljhp;->A(Landroid/os/Parcel;I)J

    move-result-wide v3

    move-wide v15, v3

    goto :goto_8

    :pswitch_1f
    sget-object v4, Ljkk;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v3, v4}, Ljhp;->D(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Ljkk;

    move-object v14, v3

    goto :goto_8

    :pswitch_20
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v3, v4}, Ljhp;->D(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    move-object v13, v3

    goto :goto_8

    :pswitch_21
    invoke-static {v0, v3}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v3

    move v12, v3

    goto :goto_8

    :pswitch_22
    invoke-static {v0, v3}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object v11, v3

    goto :goto_8

    :pswitch_23
    invoke-static {v0, v3}, Ljhp;->L(Landroid/os/Parcel;I)Z

    move-result v3

    move v10, v3

    goto :goto_8

    :pswitch_24
    invoke-static {v0, v3}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v3

    move v9, v3

    goto :goto_8

    :pswitch_25
    invoke-static {v0, v3}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object v8, v3

    :goto_8
    goto :goto_7

    :cond_5
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Ljkj;

    move-object v7, v0

    invoke-direct/range {v7 .. v20}, Ljkj;-><init>(Ljava/lang/String;IZLjava/lang/String;ILandroid/net/Uri;Ljkk;JLandroid/net/Uri;Ljkl;[BLandroid/net/Uri;)V

    return-object v0

    :pswitch_26
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    move-object v3, v6

    move-object v4, v3

    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v2, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-static {v5}, Ljhp;->v(I)I

    move-result v7

    packed-switch v7, :pswitch_data_7

    invoke-static {v0, v5}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_9

    :pswitch_27
    invoke-static {v0, v5}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_9

    :pswitch_28
    invoke-static {v0, v5}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    :pswitch_29
    invoke-static {v0, v5}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_9

    :cond_6
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/googlehelp/internal/common/TogglingData;

    invoke-direct {v0, v6, v3, v4}, Lcom/google/android/gms/googlehelp/internal/common/TogglingData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_2a
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    move-object v3, v6

    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v2, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-static {v4}, Ljhp;->v(I)I

    move-result v7

    packed-switch v7, :pswitch_data_8

    invoke-static {v0, v4}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_a

    :pswitch_2b
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v4, v3}, Ljhp;->D(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    goto :goto_a

    :pswitch_2c
    invoke-static {v0, v4}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_a

    :pswitch_2d
    invoke-static {v0, v4}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v5

    goto :goto_a

    :cond_7
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Ljjw;

    invoke-direct {v0, v5, v6, v3}, Ljjw;-><init>(ILjava/lang/String;Landroid/content/Intent;)V

    return-object v0

    :pswitch_2e
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    move-object v3, v6

    move-object v4, v3

    move-object v5, v4

    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    if-ge v7, v2, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-static {v7}, Ljhp;->v(I)I

    move-result v8

    packed-switch v8, :pswitch_data_9

    invoke-static {v0, v7}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_b

    :pswitch_2f
    invoke-static {v0, v7}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_b

    :pswitch_30
    invoke-static {v0, v7}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_b

    :pswitch_31
    invoke-static {v0, v7}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_b

    :pswitch_32
    invoke-static {v0, v7}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_b

    :cond_8
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Ljjo;

    invoke-direct {v0, v6, v3, v4, v5}, Ljjo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_33
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    :goto_c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljhp;->v(I)I

    move-result v4

    packed-switch v4, :pswitch_data_a

    invoke-static {v0, v3}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_c

    :pswitch_34
    invoke-static {v0, v3}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_c

    :pswitch_35
    invoke-static {v0, v3}, Ljhp;->L(Landroid/os/Parcel;I)Z

    move-result v5

    goto :goto_c

    :cond_9
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/googlehelp/ND4CSettings;

    invoke-direct {v0, v5, v6}, Lcom/google/android/gms/googlehelp/ND4CSettings;-><init>(ZLjava/lang/String;)V

    return-object v0

    :pswitch_36
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    move-object v8, v6

    move-object v9, v8

    move-object v10, v9

    move-object v12, v10

    const/4 v11, 0x0

    const/4 v13, 0x0

    :goto_d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljhp;->v(I)I

    move-result v4

    packed-switch v4, :pswitch_data_b

    invoke-static {v0, v3}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_d

    :pswitch_37
    invoke-static {v0, v3}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v13

    goto :goto_d

    :pswitch_38
    invoke-static {v0, v3}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v12

    goto :goto_d

    :pswitch_39
    invoke-static {v0, v3}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v11

    goto :goto_d

    :pswitch_3a
    invoke-static {v0, v3}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v10

    goto :goto_d

    :pswitch_3b
    invoke-static {v0, v3}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v9

    goto :goto_d

    :pswitch_3c
    sget-object v4, Lcom/google/android/gms/googlehelp/GoogleHelp;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v3, v4}, Ljhp;->D(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lcom/google/android/gms/googlehelp/GoogleHelp;

    goto :goto_d

    :cond_a
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Ljjn;

    move-object v7, v0

    invoke-direct/range {v7 .. v13}, Ljjn;-><init>(Lcom/google/android/gms/googlehelp/GoogleHelp;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    return-object v0

    :pswitch_3d
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    move-object v3, v6

    move-object v10, v3

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_e
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v2, :cond_d

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-static {v4}, Ljhp;->v(I)I

    move-result v7

    packed-switch v7, :pswitch_data_c

    invoke-static {v0, v4}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_e

    :pswitch_3e
    invoke-static {v0, v4}, Ljhp;->y(Landroid/os/Parcel;I)I

    move-result v3

    if-nez v3, :cond_b

    move-object v3, v6

    goto :goto_e

    :cond_b
    invoke-static {v0, v3}, Ljhp;->R(Landroid/os/Parcel;I)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_c

    const/4 v3, 0x1

    goto :goto_f

    :cond_c
    const/4 v3, 0x0

    :goto_f
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_e

    :pswitch_3f
    invoke-static {v0, v4}, Ljhp;->Q(Landroid/os/Parcel;I)[[B

    move-result-object v14

    goto :goto_e

    :pswitch_40
    invoke-static {v0, v4}, Ljhp;->F(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v13

    goto :goto_e

    :pswitch_41
    invoke-static {v0, v4}, Ljhp;->G(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v12

    goto :goto_e

    :pswitch_42
    invoke-static {v0, v4}, Ljhp;->F(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v11

    goto :goto_e

    :pswitch_43
    invoke-static {v0, v4}, Ljhp;->G(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v10

    goto :goto_e

    :pswitch_44
    invoke-static {v0, v4}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v9

    goto :goto_e

    :pswitch_45
    invoke-static {v0, v4}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v8

    goto :goto_e

    :cond_d
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/googlehelp/FRDProductSpecificDataEntry;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    move-object v7, v0

    invoke-direct/range {v7 .. v15}, Lcom/google/android/gms/googlehelp/FRDProductSpecificDataEntry;-><init>(IILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;[[BZ)V

    return-object v0

    :pswitch_46
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    :goto_10
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v2, :cond_e

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-static {v4}, Ljhp;->v(I)I

    move-result v6

    packed-switch v6, :pswitch_data_d

    invoke-static {v0, v4}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_10

    :pswitch_47
    invoke-static {v0, v4}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_10

    :pswitch_48
    invoke-static {v0, v4}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v5

    goto :goto_10

    :cond_e
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Ljjf;

    invoke-direct {v0, v5, v3}, Ljjf;-><init>(II)V

    return-object v0

    :pswitch_49
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    move-object v8, v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_11
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_f

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljhp;->v(I)I

    move-result v4

    packed-switch v4, :pswitch_data_e

    invoke-static {v0, v3}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_11

    :pswitch_4a
    invoke-static {v0, v3}, Ljhp;->L(Landroid/os/Parcel;I)Z

    move-result v12

    goto :goto_11

    :pswitch_4b
    invoke-static {v0, v3}, Ljhp;->L(Landroid/os/Parcel;I)Z

    move-result v11

    goto :goto_11

    :pswitch_4c
    invoke-static {v0, v3}, Ljhp;->L(Landroid/os/Parcel;I)Z

    move-result v10

    goto :goto_11

    :pswitch_4d
    invoke-static {v0, v3}, Ljhp;->L(Landroid/os/Parcel;I)Z

    move-result v9

    goto :goto_11

    :pswitch_4e
    invoke-static {v0, v3}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_11

    :cond_f
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Ljje;

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ljje;-><init>(Ljava/lang/String;ZZZZ)V

    return-object v0

    :pswitch_4f
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    move-object v3, v6

    move-object v4, v3

    :goto_12
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v2, :cond_10

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-static {v5}, Ljhp;->v(I)I

    move-result v7

    packed-switch v7, :pswitch_data_f

    invoke-static {v0, v5}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_12

    :pswitch_50
    invoke-static {v0, v5}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_12

    :pswitch_51
    invoke-static {v0, v5}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_12

    :pswitch_52
    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v5, v6}, Ljhp;->D(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Landroid/os/ParcelFileDescriptor;

    goto :goto_12

    :cond_10
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Ljjd;

    invoke-direct {v0, v6, v3, v4}, Ljjd;-><init>(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_53
    invoke-static/range {p1 .. p1}, Ljhi;->a(Landroid/os/Parcel;)Lcom/google/android/gms/feedback/ErrorReport;

    move-result-object v0

    return-object v0

    :pswitch_54
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    :goto_13
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_11

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljhp;->v(I)I

    move-result v4

    packed-switch v4, :pswitch_data_10

    invoke-static {v0, v3}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_13

    :pswitch_55
    sget-object v4, Ljhc;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v3, v4}, Ljhp;->H(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v6

    goto :goto_13

    :pswitch_56
    invoke-static {v0, v3}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v5

    goto :goto_13

    :cond_11
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Ljhl;

    invoke-direct {v0, v5, v6}, Ljhl;-><init>(ILjava/util/List;)V

    return-object v0

    :pswitch_57
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_14
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljhp;->v(I)I

    move-result v4

    packed-switch v4, :pswitch_data_11

    invoke-static {v0, v3}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_14

    :pswitch_58
    invoke-static {v0, v3}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v11

    goto :goto_14

    :pswitch_59
    invoke-static {v0, v3}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v10

    goto :goto_14

    :pswitch_5a
    invoke-static {v0, v3}, Ljhp;->L(Landroid/os/Parcel;I)Z

    move-result v9

    goto :goto_14

    :pswitch_5b
    invoke-static {v0, v3}, Ljhp;->L(Landroid/os/Parcel;I)Z

    move-result v8

    goto :goto_14

    :pswitch_5c
    invoke-static {v0, v3}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v7

    goto :goto_14

    :cond_12
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Ljhk;

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Ljhk;-><init>(IZZII)V

    return-object v0

    :pswitch_5d
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    move-object v4, v6

    const/4 v3, 0x0

    :goto_15
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    if-ge v7, v2, :cond_13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-static {v7}, Ljhp;->v(I)I

    move-result v8

    packed-switch v8, :pswitch_data_12

    invoke-static {v0, v7}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_15

    :pswitch_5e
    sget-object v4, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v7, v4}, Ljhp;->D(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    goto :goto_15

    :pswitch_5f
    invoke-static {v0, v7}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_15

    :pswitch_60
    sget-object v6, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v7, v6}, Ljhp;->D(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/accounts/Account;

    goto :goto_15

    :pswitch_61
    invoke-static {v0, v7}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v5

    goto :goto_15

    :cond_13
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Ljhg;

    invoke-direct {v0, v5, v6, v3, v4}, Ljhg;-><init>(ILandroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    return-object v0

    :pswitch_62
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    move-object v9, v6

    move-object v10, v9

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_16
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_14

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljhp;->v(I)I

    move-result v4

    packed-switch v4, :pswitch_data_13

    invoke-static {v0, v3}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_16

    :pswitch_63
    invoke-static {v0, v3}, Ljhp;->L(Landroid/os/Parcel;I)Z

    move-result v12

    goto :goto_16

    :pswitch_64
    invoke-static {v0, v3}, Ljhp;->L(Landroid/os/Parcel;I)Z

    move-result v11

    goto :goto_16

    :pswitch_65
    sget-object v4, Ljby;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v3, v4}, Ljhp;->D(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Ljby;

    goto :goto_16

    :pswitch_66
    invoke-static {v0, v3}, Ljhp;->C(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v9

    goto :goto_16

    :pswitch_67
    invoke-static {v0, v3}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v8

    goto :goto_16

    :cond_14
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Ljhh;

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ljhh;-><init>(ILandroid/os/IBinder;Ljby;ZZ)V

    return-object v0

    :goto_17
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_15

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljhp;->v(I)I

    move-result v4

    packed-switch v4, :pswitch_data_14

    invoke-static {v0, v3}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_17

    :pswitch_68
    invoke-static {v0, v3}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v12

    goto :goto_17

    :pswitch_69
    invoke-static {v0, v3}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    goto :goto_17

    :pswitch_6a
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v3, v4}, Ljhp;->D(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Landroid/app/PendingIntent;

    goto :goto_17

    :pswitch_6b
    invoke-static {v0, v3}, Ljhp;->C(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v10

    goto :goto_17

    :pswitch_6c
    invoke-static {v0, v3}, Ljhp;->C(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v9

    goto :goto_17

    :pswitch_6d
    invoke-static {v0, v3}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v8

    goto :goto_17

    :cond_15
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Ljna;

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ljna;-><init>(ILandroid/os/IBinder;Landroid/os/IBinder;Landroid/app/PendingIntent;Ljava/lang/String;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_62
        :pswitch_5d
        :pswitch_57
        :pswitch_54
        :pswitch_53
        :pswitch_4f
        :pswitch_49
        :pswitch_46
        :pswitch_3d
        :pswitch_36
        :pswitch_33
        :pswitch_2e
        :pswitch_2a
        :pswitch_26
        :pswitch_18
        :pswitch_14
        :pswitch_11
        :pswitch_8
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_19
        :pswitch_19
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x2
        :pswitch_29
        :pswitch_28
        :pswitch_27
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x2
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x2
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x2
        :pswitch_35
        :pswitch_34
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
    .end packed-switch

    :pswitch_data_c
    .packed-switch 0x2
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
    .end packed-switch

    :pswitch_data_d
    .packed-switch 0x2
        :pswitch_48
        :pswitch_47
    .end packed-switch

    :pswitch_data_e
    .packed-switch 0x2
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
    .end packed-switch

    :pswitch_data_f
    .packed-switch 0x2
        :pswitch_52
        :pswitch_51
        :pswitch_50
    .end packed-switch

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_56
        :pswitch_55
    .end packed-switch

    :pswitch_data_11
    .packed-switch 0x1
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
    .end packed-switch

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
    .end packed-switch

    :pswitch_data_13
    .packed-switch 0x1
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
    .end packed-switch

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    iget v0, p0, Ljhi;->a:I

    packed-switch v0, :pswitch_data_0

    new-array p1, p1, [Ljna;

    return-object p1

    :pswitch_0
    new-array p1, p1, [Ljml;

    return-object p1

    :pswitch_1
    new-array p1, p1, [Ljmh;

    return-object p1

    :pswitch_2
    new-array p1, p1, [Ljlx;

    return-object p1

    :pswitch_3
    new-array p1, p1, [Ljkl;

    return-object p1

    :pswitch_4
    new-array p1, p1, [Ljkk;

    return-object p1

    :pswitch_5
    new-array p1, p1, [Ljkj;

    return-object p1

    :pswitch_6
    new-array p1, p1, [Lcom/google/android/gms/googlehelp/internal/common/TogglingData;

    return-object p1

    :pswitch_7
    new-array p1, p1, [Ljjw;

    return-object p1

    :pswitch_8
    new-array p1, p1, [Ljjo;

    return-object p1

    :pswitch_9
    new-array p1, p1, [Lcom/google/android/gms/googlehelp/ND4CSettings;

    return-object p1

    :pswitch_a
    new-array p1, p1, [Ljjn;

    return-object p1

    :pswitch_b
    new-array p1, p1, [Lcom/google/android/gms/googlehelp/FRDProductSpecificDataEntry;

    return-object p1

    :pswitch_c
    new-array p1, p1, [Ljjf;

    return-object p1

    :pswitch_d
    new-array p1, p1, [Ljje;

    return-object p1

    :pswitch_e
    new-array p1, p1, [Ljjd;

    return-object p1

    :pswitch_f
    new-array p1, p1, [Lcom/google/android/gms/feedback/ErrorReport;

    return-object p1

    :pswitch_10
    new-array p1, p1, [Ljhl;

    return-object p1

    :pswitch_11
    new-array p1, p1, [Ljhk;

    return-object p1

    :pswitch_12
    new-array p1, p1, [Ljhg;

    return-object p1

    :pswitch_13
    new-array p1, p1, [Ljhh;

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
