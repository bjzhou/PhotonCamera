.class public final Ljay;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field private final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Ljay;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljgl;Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Ljhp;->a(Landroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Ljgl;->c:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Ljhp;->g(Landroid/os/Parcel;II)V

    iget v1, p0, Ljgl;->d:I

    const/4 v2, 0x2

    invoke-static {p1, v2, v1}, Ljhp;->g(Landroid/os/Parcel;II)V

    iget v1, p0, Ljgl;->e:I

    const/4 v2, 0x3

    invoke-static {p1, v2, v1}, Ljhp;->g(Landroid/os/Parcel;II)V

    iget-object v1, p0, Ljgl;->f:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-static {p1, v2, v1}, Ljhp;->p(Landroid/os/Parcel;ILjava/lang/String;)V

    iget-object v1, p0, Ljgl;->g:Landroid/os/IBinder;

    const/4 v2, 0x5

    invoke-static {p1, v2, v1}, Ljhp;->l(Landroid/os/Parcel;ILandroid/os/IBinder;)V

    iget-object v1, p0, Ljgl;->h:[Lcom/google/android/gms/common/api/Scope;

    const/4 v2, 0x6

    invoke-static {p1, v2, v1, p2}, Ljhp;->s(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    iget-object v1, p0, Ljgl;->i:Landroid/os/Bundle;

    const/4 v2, 0x7

    invoke-static {p1, v2, v1}, Ljhp;->i(Landroid/os/Parcel;ILandroid/os/Bundle;)V

    iget-object v1, p0, Ljgl;->j:Landroid/accounts/Account;

    const/16 v2, 0x8

    invoke-static {p1, v2, v1, p2}, Ljhp;->o(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    iget-object v1, p0, Ljgl;->k:[Ljca;

    const/16 v2, 0xa

    invoke-static {p1, v2, v1, p2}, Ljhp;->s(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    iget-object v1, p0, Ljgl;->l:[Ljca;

    const/16 v2, 0xb

    invoke-static {p1, v2, v1, p2}, Ljhp;->s(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    iget-boolean p2, p0, Ljgl;->m:Z

    const/16 v1, 0xc

    invoke-static {p1, v1, p2}, Ljhp;->d(Landroid/os/Parcel;IZ)V

    iget p2, p0, Ljgl;->n:I

    const/16 v1, 0xd

    invoke-static {p1, v1, p2}, Ljhp;->g(Landroid/os/Parcel;II)V

    iget-boolean p2, p0, Ljgl;->o:Z

    const/16 v1, 0xe

    invoke-static {p1, v1, p2}, Ljhp;->d(Landroid/os/Parcel;IZ)V

    iget-object p0, p0, Ljgl;->p:Ljava/lang/String;

    const/16 p2, 0xf

    invoke-static {p1, p2, p0}, Ljhp;->p(Landroid/os/Parcel;ILjava/lang/String;)V

    invoke-static {p1, v0}, Ljhp;->c(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iget v2, v1, Ljay;->a:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    packed-switch v2, :pswitch_data_0

    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    const-wide/16 v6, 0x0

    const/4 v3, -0x1

    move-object/from16 v16, v4

    move-object/from16 v17, v16

    move-wide v12, v6

    move-wide v14, v12

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v18, 0x0

    const/16 v19, -0x1

    goto/16 :goto_17

    :pswitch_0
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    sget-object v3, Ljgl;->a:[Lcom/google/android/gms/common/api/Scope;

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    sget-object v7, Ljgl;->b:[Ljca;

    move-object v14, v3

    move-object v12, v4

    move-object v13, v12

    move-object/from16 v16, v13

    move-object/from16 v22, v16

    move-object v15, v6

    move-object/from16 v17, v7

    move-object/from16 v18, v17

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljhp;->v(I)I

    move-result v4

    packed-switch v4, :pswitch_data_1

    :pswitch_1
    invoke-static {v0, v3}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_0

    :pswitch_2
    invoke-static {v0, v3}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v22

    goto :goto_0

    :pswitch_3
    invoke-static {v0, v3}, Ljhp;->L(Landroid/os/Parcel;I)Z

    move-result v21

    goto :goto_0

    :pswitch_4
    invoke-static {v0, v3}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v20

    goto :goto_0

    :pswitch_5
    invoke-static {v0, v3}, Ljhp;->L(Landroid/os/Parcel;I)Z

    move-result v19

    goto :goto_0

    :pswitch_6
    sget-object v4, Ljca;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v3, v4}, Ljhp;->O(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, [Ljca;

    goto :goto_0

    :pswitch_7
    sget-object v4, Ljca;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v3, v4}, Ljhp;->O(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, [Ljca;

    goto :goto_0

    :pswitch_8
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v3, v4}, Ljhp;->D(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Landroid/accounts/Account;

    goto :goto_0

    :pswitch_9
    invoke-static {v0, v3}, Ljhp;->B(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v15

    goto :goto_0

    :pswitch_a
    sget-object v4, Lcom/google/android/gms/common/api/Scope;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v3, v4}, Ljhp;->O(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, [Lcom/google/android/gms/common/api/Scope;

    goto :goto_0

    :pswitch_b
    invoke-static {v0, v3}, Ljhp;->C(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v13

    goto :goto_0

    :pswitch_c
    invoke-static {v0, v3}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    :pswitch_d
    invoke-static {v0, v3}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v11

    goto :goto_0

    :pswitch_e
    invoke-static {v0, v3}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v10

    goto :goto_0

    :pswitch_f
    invoke-static {v0, v3}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v9

    goto :goto_0

    :cond_0
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Ljgl;

    move-object v8, v0

    invoke-direct/range {v8 .. v22}, Ljgl;-><init>(IIILjava/lang/String;Landroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;Landroid/accounts/Account;[Ljca;[Ljca;ZIZLjava/lang/String;)V

    return-object v0

    :pswitch_10
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    move-object v7, v4

    move-object v10, v7

    move-object v12, v10

    const/4 v8, 0x0

    const/4 v9, 0x0

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

    goto :goto_1

    :pswitch_11
    invoke-static {v0, v3}, Ljhp;->N(Landroid/os/Parcel;I)[I

    move-result-object v12

    goto :goto_1

    :pswitch_12
    invoke-static {v0, v3}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v11

    goto :goto_1

    :pswitch_13
    invoke-static {v0, v3}, Ljhp;->N(Landroid/os/Parcel;I)[I

    move-result-object v10

    goto :goto_1

    :pswitch_14
    invoke-static {v0, v3}, Ljhp;->L(Landroid/os/Parcel;I)Z

    move-result v9

    goto :goto_1

    :pswitch_15
    invoke-static {v0, v3}, Ljhp;->L(Landroid/os/Parcel;I)Z

    move-result v8

    goto :goto_1

    :pswitch_16
    sget-object v4, Ljhk;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v3, v4}, Ljhp;->D(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Ljhk;

    goto :goto_1

    :cond_1
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Ljgh;

    move-object v6, v0

    invoke-direct/range {v6 .. v12}, Ljgh;-><init>(Ljhk;ZZ[II[I)V

    return-object v0

    :pswitch_17
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    move-object v3, v4

    move-object v5, v3

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

    :pswitch_18
    sget-object v5, Ljgh;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v7, v5}, Ljhp;->D(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Ljgh;

    goto :goto_2

    :pswitch_19
    invoke-static {v0, v7}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v6

    goto :goto_2

    :pswitch_1a
    sget-object v3, Ljca;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v7, v3}, Ljhp;->O(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljca;

    goto :goto_2

    :pswitch_1b
    invoke-static {v0, v7}, Ljhp;->B(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v4

    goto :goto_2

    :cond_2
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Ljgg;

    invoke-direct {v0, v4, v3, v6, v5}, Ljgg;-><init>(Landroid/os/Bundle;[Ljca;ILjgh;)V

    return-object v0

    :pswitch_1c
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljhp;->v(I)I

    move-result v6

    packed-switch v6, :pswitch_data_4

    invoke-static {v0, v3}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_3

    :pswitch_1d
    invoke-static {v0, v3}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :pswitch_1e
    invoke-static {v0, v3}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v5

    goto :goto_3

    :cond_3
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Ljgc;

    invoke-direct {v0, v5, v4}, Ljgc;-><init>(ILjava/lang/String;)V

    return-object v0

    :pswitch_1f
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    move-object v8, v4

    move-object v9, v8

    move-object v11, v9

    const/4 v7, 0x0

    const/4 v10, 0x0

    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljhp;->v(I)I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    invoke-static {v0, v3}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_4

    :sswitch_0
    invoke-static {v0, v3}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v7

    goto :goto_4

    :sswitch_1
    invoke-static {v0, v3}, Ljhp;->B(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v11

    goto :goto_4

    :sswitch_2
    invoke-static {v0, v3}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v10

    goto :goto_4

    :sswitch_3
    sget-object v4, Landroid/database/CursorWindow;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v3, v4}, Ljhp;->O(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, [Landroid/database/CursorWindow;

    goto :goto_4

    :sswitch_4
    invoke-static {v0, v3}, Ljhp;->P(Landroid/os/Parcel;I)[Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    :cond_4
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/common/data/DataHolder;

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lcom/google/android/gms/common/data/DataHolder;-><init>(I[Ljava/lang/String;[Landroid/database/CursorWindow;ILandroid/os/Bundle;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, v0, Lcom/google/android/gms/common/data/DataHolder;->c:Landroid/os/Bundle;

    const/4 v2, 0x0

    :goto_5
    iget-object v3, v0, Lcom/google/android/gms/common/data/DataHolder;->b:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_5

    iget-object v4, v0, Lcom/google/android/gms/common/data/DataHolder;->c:Landroid/os/Bundle;

    aget-object v3, v3, v2

    invoke-virtual {v4, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    iget-object v2, v0, Lcom/google/android/gms/common/data/DataHolder;->d:[Landroid/database/CursorWindow;

    array-length v2, v2

    new-array v2, v2, [I

    iput-object v2, v0, Lcom/google/android/gms/common/data/DataHolder;->g:[I

    const/4 v2, 0x0

    :goto_6
    iget-object v3, v0, Lcom/google/android/gms/common/data/DataHolder;->d:[Landroid/database/CursorWindow;

    array-length v4, v3

    if-ge v5, v4, :cond_6

    iget-object v4, v0, Lcom/google/android/gms/common/data/DataHolder;->g:[I

    aput v2, v4, v5

    aget-object v3, v3, v5

    invoke-virtual {v3}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v3

    sub-int v3, v2, v3

    iget-object v4, v0, Lcom/google/android/gms/common/data/DataHolder;->d:[Landroid/database/CursorWindow;

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v4

    sub-int/2addr v4, v3

    add-int/2addr v2, v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_6
    iput v2, v0, Lcom/google/android/gms/common/data/DataHolder;->h:I

    return-object v0

    :pswitch_20
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-ge v6, v2, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-static {v6}, Ljhp;->v(I)I

    move-result v7

    packed-switch v7, :pswitch_data_5

    invoke-static {v0, v6}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_7

    :pswitch_21
    invoke-static {v0, v6}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_7

    :pswitch_22
    sget-object v4, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v6, v4}, Ljhp;->D(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelFileDescriptor;

    goto :goto_7

    :pswitch_23
    invoke-static {v0, v6}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v5

    goto :goto_7

    :cond_7
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/common/data/BitmapTeleporter;

    invoke-direct {v0, v5, v4, v3}, Lcom/google/android/gms/common/data/BitmapTeleporter;-><init>(ILandroid/os/ParcelFileDescriptor;I)V

    return-object v0

    :pswitch_24
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    move-object v9, v4

    move-object v10, v9

    move-object v11, v10

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljhp;->v(I)I

    move-result v4

    sparse-switch v4, :sswitch_data_1

    invoke-static {v0, v3}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_8

    :sswitch_5
    invoke-static {v0, v3}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v7

    goto :goto_8

    :sswitch_6
    sget-object v4, Ljby;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v3, v4}, Ljhp;->D(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Ljby;

    goto :goto_8

    :sswitch_7
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v3, v4}, Ljhp;->D(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroid/app/PendingIntent;

    goto :goto_8

    :sswitch_8
    invoke-static {v0, v3}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v9

    goto :goto_8

    :sswitch_9
    invoke-static {v0, v3}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v8

    goto :goto_8

    :cond_8
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lcom/google/android/gms/common/api/Status;-><init>(IILjava/lang/String;Landroid/app/PendingIntent;Ljby;)V

    return-object v0

    :pswitch_25
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljhp;->v(I)I

    move-result v6

    packed-switch v6, :pswitch_data_6

    invoke-static {v0, v3}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_9

    :pswitch_26
    invoke-static {v0, v3}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_9

    :pswitch_27
    invoke-static {v0, v3}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v5

    goto :goto_9

    :cond_9
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    invoke-direct {v0, v5, v4}, Lcom/google/android/gms/common/api/Scope;-><init>(ILjava/lang/String;)V

    return-object v0

    :pswitch_28
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    move-object v3, v4

    const/4 v6, 0x0

    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    if-ge v7, v2, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-static {v7}, Ljhp;->v(I)I

    move-result v8

    packed-switch v8, :pswitch_data_7

    invoke-static {v0, v7}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_a

    :pswitch_29
    invoke-static {v0, v7}, Ljhp;->L(Landroid/os/Parcel;I)Z

    move-result v6

    goto :goto_a

    :pswitch_2a
    invoke-static {v0, v7}, Ljhp;->L(Landroid/os/Parcel;I)Z

    move-result v5

    goto :goto_a

    :pswitch_2b
    invoke-static {v0, v7}, Ljhp;->C(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v3

    goto :goto_a

    :pswitch_2c
    invoke-static {v0, v7}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_a

    :cond_a
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Ljcp;

    invoke-direct {v0, v4, v3, v5, v6}, Ljcp;-><init>(Ljava/lang/String;Landroid/os/IBinder;ZZ)V

    return-object v0

    :pswitch_2d
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v6, 0x0

    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    if-ge v7, v2, :cond_b

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-static {v7}, Ljhp;->v(I)I

    move-result v8

    packed-switch v8, :pswitch_data_8

    invoke-static {v0, v7}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_b

    :pswitch_2e
    invoke-static {v0, v7}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v6

    goto :goto_b

    :pswitch_2f
    invoke-static {v0, v7}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_b

    :pswitch_30
    invoke-static {v0, v7}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_b

    :pswitch_31
    invoke-static {v0, v7}, Ljhp;->L(Landroid/os/Parcel;I)Z

    move-result v5

    goto :goto_b

    :cond_b
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Ljco;

    invoke-direct {v0, v5, v4, v3, v6}, Ljco;-><init>(ZLjava/lang/String;II)V

    return-object v0

    :pswitch_32
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    move-object v7, v4

    move-object v10, v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljhp;->v(I)I

    move-result v4

    packed-switch v4, :pswitch_data_9

    invoke-static {v0, v3}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_c

    :pswitch_33
    invoke-static {v0, v3}, Ljhp;->L(Landroid/os/Parcel;I)Z

    move-result v12

    goto :goto_c

    :pswitch_34
    invoke-static {v0, v3}, Ljhp;->L(Landroid/os/Parcel;I)Z

    move-result v11

    goto :goto_c

    :pswitch_35
    invoke-static {v0, v3}, Ljhp;->C(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v10

    goto :goto_c

    :pswitch_36
    invoke-static {v0, v3}, Ljhp;->L(Landroid/os/Parcel;I)Z

    move-result v9

    goto :goto_c

    :pswitch_37
    invoke-static {v0, v3}, Ljhp;->L(Landroid/os/Parcel;I)Z

    move-result v8

    goto :goto_c

    :pswitch_38
    invoke-static {v0, v3}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_c

    :cond_c
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Ljcn;

    move-object v6, v0

    invoke-direct/range {v6 .. v12}, Ljcn;-><init>(Ljava/lang/String;ZZLandroid/os/IBinder;ZZ)V

    return-object v0

    :pswitch_39
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    const-wide/16 v6, -0x1

    :goto_d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_d

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljhp;->v(I)I

    move-result v8

    packed-switch v8, :pswitch_data_a

    invoke-static {v0, v3}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_e

    :pswitch_3a
    invoke-static {v0, v3}, Ljhp;->A(Landroid/os/Parcel;I)J

    move-result-wide v6

    goto :goto_e

    :pswitch_3b
    invoke-static {v0, v3}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v3

    move v5, v3

    goto :goto_e

    :pswitch_3c
    invoke-static {v0, v3}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    :goto_e
    goto :goto_d

    :cond_d
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Ljca;

    invoke-direct {v0, v4, v5, v6, v7}, Ljca;-><init>(Ljava/lang/String;IJ)V

    return-object v0

    :pswitch_3d
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    move-object v3, v4

    const/4 v6, 0x0

    :goto_f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    if-ge v7, v2, :cond_e

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-static {v7}, Ljhp;->v(I)I

    move-result v8

    packed-switch v8, :pswitch_data_b

    invoke-static {v0, v7}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_f

    :pswitch_3e
    invoke-static {v0, v7}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_f

    :pswitch_3f
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v7, v4}, Ljhp;->D(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    goto :goto_f

    :pswitch_40
    invoke-static {v0, v7}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v6

    goto :goto_f

    :pswitch_41
    invoke-static {v0, v7}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v5

    goto :goto_f

    :cond_e
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Ljby;

    invoke-direct {v0, v5, v6, v4, v3}, Ljby;-><init>(IILandroid/app/PendingIntent;Ljava/lang/String;)V

    return-object v0

    :pswitch_42
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    move-object v7, v4

    move-object v10, v7

    move-object v12, v10

    move-object v15, v12

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_10
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_10

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljhp;->v(I)I

    move-result v5

    packed-switch v5, :pswitch_data_c

    :pswitch_43
    invoke-static {v0, v3}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_10

    :pswitch_44
    invoke-static {v0, v3}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v17

    goto :goto_10

    :pswitch_45
    invoke-static {v0, v3}, Ljhp;->L(Landroid/os/Parcel;I)Z

    move-result v16

    goto :goto_10

    :pswitch_46
    invoke-static {v0, v3}, Ljhp;->y(Landroid/os/Parcel;I)I

    move-result v3

    if-nez v3, :cond_f

    move-object v15, v4

    goto :goto_10

    :cond_f
    invoke-static {v0, v3}, Ljhp;->R(Landroid/os/Parcel;I)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    goto :goto_10

    :pswitch_47
    invoke-static {v0, v3}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v14

    goto :goto_10

    :pswitch_48
    invoke-static {v0, v3}, Ljhp;->L(Landroid/os/Parcel;I)Z

    move-result v13

    goto :goto_10

    :pswitch_49
    invoke-static {v0, v3}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v12

    goto :goto_10

    :pswitch_4a
    invoke-static {v0, v3}, Ljhp;->L(Landroid/os/Parcel;I)Z

    move-result v11

    goto :goto_10

    :pswitch_4b
    invoke-static {v0, v3}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v10

    goto :goto_10

    :pswitch_4c
    invoke-static {v0, v3}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v9

    goto :goto_10

    :pswitch_4d
    invoke-static {v0, v3}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v8

    goto :goto_10

    :pswitch_4e
    invoke-static {v0, v3}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_10

    :cond_10
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Ljbw;

    move-object v6, v0

    invoke-direct/range {v6 .. v17}, Ljbw;-><init>(Ljava/lang/String;IILjava/lang/String;ZLjava/lang/String;ZILjava/lang/Integer;ZI)V

    return-object v0

    :pswitch_4f
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

    packed-switch v4, :pswitch_data_d

    invoke-static {v0, v3}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_11

    :pswitch_50
    invoke-static {v0, v3}, Ljhp;->L(Landroid/os/Parcel;I)Z

    move-result v5

    goto :goto_11

    :cond_11
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Ljbv;

    invoke-direct {v0, v5}, Ljbv;-><init>(Z)V

    return-object v0

    :pswitch_51
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    :goto_12
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-ge v6, v2, :cond_12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-static {v6}, Ljhp;->v(I)I

    move-result v7

    packed-switch v7, :pswitch_data_e

    invoke-static {v0, v6}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_12

    :pswitch_52
    invoke-static {v0, v6}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_12

    :pswitch_53
    invoke-static {v0, v6}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v5

    goto :goto_12

    :pswitch_54
    invoke-static {v0, v6}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_12

    :cond_12
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Ljbt;

    invoke-direct {v0, v4, v5, v3}, Ljbt;-><init>(Ljava/lang/String;II)V

    return-object v0

    :pswitch_55
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    :goto_13
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljhp;->v(I)I

    move-result v5

    packed-switch v5, :pswitch_data_f

    invoke-static {v0, v3}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_13

    :pswitch_56
    sget-object v4, Ljbt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v3, v4}, Ljhp;->H(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v4

    goto :goto_13

    :cond_13
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Ljbl;

    invoke-direct {v0, v4}, Ljbl;-><init>(Ljava/util/List;)V

    return-object v0

    :pswitch_57
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    move-object v7, v4

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v14, v12

    move-object v15, v14

    move-object/from16 v16, v15

    const/4 v13, 0x1

    const/16 v17, 0x0

    :goto_14
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_14

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljhp;->v(I)I

    move-result v4

    packed-switch v4, :pswitch_data_10

    :pswitch_58
    invoke-static {v0, v3}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_14

    :pswitch_59
    invoke-static {v0, v3}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v17

    goto :goto_14

    :pswitch_5a
    invoke-static {v0, v3}, Ljhp;->P(Landroid/os/Parcel;I)[Ljava/lang/String;

    move-result-object v16

    goto :goto_14

    :pswitch_5b
    sget-object v4, Ljbv;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v3, v4}, Ljhp;->D(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Ljbv;

    goto :goto_14

    :pswitch_5c
    sget-object v4, Ljni;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v3, v4}, Ljhp;->O(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, [Ljni;

    goto :goto_14

    :pswitch_5d
    invoke-static {v0, v3}, Ljhp;->L(Landroid/os/Parcel;I)Z

    move-result v13

    goto :goto_14

    :pswitch_5e
    invoke-static {v0, v3}, Ljhp;->Q(Landroid/os/Parcel;I)[[B

    move-result-object v12

    goto :goto_14

    :pswitch_5f
    invoke-static {v0, v3}, Ljhp;->N(Landroid/os/Parcel;I)[I

    move-result-object v11

    goto :goto_14

    :pswitch_60
    invoke-static {v0, v3}, Ljhp;->P(Landroid/os/Parcel;I)[Ljava/lang/String;

    move-result-object v10

    goto :goto_14

    :pswitch_61
    invoke-static {v0, v3}, Ljhp;->N(Landroid/os/Parcel;I)[I

    move-result-object v9

    goto :goto_14

    :pswitch_62
    invoke-static {v0, v3}, Ljhp;->M(Landroid/os/Parcel;I)[B

    move-result-object v8

    goto :goto_14

    :pswitch_63
    sget-object v4, Ljbw;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v3, v4}, Ljhp;->D(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Ljbw;

    goto :goto_14

    :cond_14
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Ljbj;

    move-object v6, v0

    invoke-direct/range {v6 .. v17}, Ljbj;-><init>(Ljbw;[B[I[Ljava/lang/String;[I[[BZ[Ljni;Ljbv;[Ljava/lang/String;I)V

    return-object v0

    :pswitch_64
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    :goto_15
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-ge v6, v2, :cond_15

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-static {v6}, Ljhp;->v(I)I

    move-result v7

    packed-switch v7, :pswitch_data_11

    invoke-static {v0, v6}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_15

    :pswitch_65
    invoke-static {v0, v6}, Ljhp;->B(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v4

    goto :goto_15

    :pswitch_66
    invoke-static {v0, v6}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_15

    :pswitch_67
    invoke-static {v0, v6}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v5

    goto :goto_15

    :cond_15
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Ljau;

    invoke-direct {v0, v5, v3, v4}, Ljau;-><init>(IILandroid/os/Bundle;)V

    return-object v0

    :pswitch_68
    invoke-static/range {p1 .. p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v2

    move-object v3, v4

    :goto_16
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v2, :cond_16

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-static {v5}, Ljhp;->v(I)I

    move-result v6

    sparse-switch v6, :sswitch_data_2

    invoke-static {v0, v5}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_16

    :sswitch_a
    sget-object v3, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v5, v3}, Ljhp;->D(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    goto :goto_16

    :sswitch_b
    invoke-static {v0, v5}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_16

    :cond_16
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;

    invoke-direct {v0, v4, v3}, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;-><init>(Ljava/lang/String;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    return-object v0

    :goto_17
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_17

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljhp;->v(I)I

    move-result v4

    packed-switch v4, :pswitch_data_12

    invoke-static {v0, v3}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_18

    :pswitch_69
    invoke-static {v0, v3}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v3

    move/from16 v19, v3

    goto :goto_18

    :pswitch_6a
    invoke-static {v0, v3}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v3

    move/from16 v18, v3

    goto :goto_18

    :pswitch_6b
    invoke-static {v0, v3}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v17, v3

    goto :goto_18

    :pswitch_6c
    invoke-static {v0, v3}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v16, v3

    goto :goto_18

    :pswitch_6d
    invoke-static {v0, v3}, Ljhp;->A(Landroid/os/Parcel;I)J

    move-result-wide v3

    move-wide v14, v3

    goto :goto_18

    :pswitch_6e
    invoke-static {v0, v3}, Ljhp;->A(Landroid/os/Parcel;I)J

    move-result-wide v3

    move-wide v12, v3

    goto :goto_18

    :pswitch_6f
    invoke-static {v0, v3}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v3

    move v11, v3

    goto :goto_18

    :pswitch_70
    invoke-static {v0, v3}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v3

    move v10, v3

    goto :goto_18

    :pswitch_71
    invoke-static {v0, v3}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v3

    move v9, v3

    :goto_18
    goto :goto_17

    :cond_17
    invoke-static {v0, v2}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance v0, Ljhc;

    move-object v8, v0

    invoke-direct/range {v8 .. v19}, Ljhc;-><init>(IIIJJLjava/lang/String;Ljava/lang/String;II)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_68
        :pswitch_64
        :pswitch_57
        :pswitch_55
        :pswitch_51
        :pswitch_4f
        :pswitch_42
        :pswitch_3d
        :pswitch_39
        :pswitch_32
        :pswitch_2d
        :pswitch_28
        :pswitch_25
        :pswitch_24
        :pswitch_20
        :pswitch_1f
        :pswitch_1c
        :pswitch_17
        :pswitch_10
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_1d
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_3
        0x3 -> :sswitch_2
        0x4 -> :sswitch_1
        0x3e8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_23
        :pswitch_22
        :pswitch_21
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_9
        0x2 -> :sswitch_8
        0x3 -> :sswitch_7
        0x4 -> :sswitch_6
        0x3e8 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_27
        :pswitch_26
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x1
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0x1
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
    .end packed-switch

    :pswitch_data_c
    .packed-switch 0x2
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_43
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
    .end packed-switch

    :pswitch_data_d
    .packed-switch 0x1
        :pswitch_50
    .end packed-switch

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_54
        :pswitch_53
        :pswitch_52
    .end packed-switch

    :pswitch_data_f
    .packed-switch 0x1
        :pswitch_56
    .end packed-switch

    :pswitch_data_10
    .packed-switch 0x2
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_58
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
    .end packed-switch

    :pswitch_data_11
    .packed-switch 0x1
        :pswitch_67
        :pswitch_66
        :pswitch_65
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        0x2 -> :sswitch_b
        0x5 -> :sswitch_a
    .end sparse-switch

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    iget v0, p0, Ljay;->a:I

    packed-switch v0, :pswitch_data_0

    new-array p1, p1, [Ljhc;

    return-object p1

    :pswitch_0
    new-array p1, p1, [Ljgl;

    return-object p1

    :pswitch_1
    new-array p1, p1, [Ljgh;

    return-object p1

    :pswitch_2
    new-array p1, p1, [Ljgg;

    return-object p1

    :pswitch_3
    new-array p1, p1, [Ljgc;

    return-object p1

    :pswitch_4
    new-array p1, p1, [Lcom/google/android/gms/common/data/DataHolder;

    return-object p1

    :pswitch_5
    new-array p1, p1, [Lcom/google/android/gms/common/data/BitmapTeleporter;

    return-object p1

    :pswitch_6
    new-array p1, p1, [Lcom/google/android/gms/common/api/Status;

    return-object p1

    :pswitch_7
    new-array p1, p1, [Lcom/google/android/gms/common/api/Scope;

    return-object p1

    :pswitch_8
    new-array p1, p1, [Ljcp;

    return-object p1

    :pswitch_9
    new-array p1, p1, [Ljco;

    return-object p1

    :pswitch_a
    new-array p1, p1, [Ljcn;

    return-object p1

    :pswitch_b
    new-array p1, p1, [Ljca;

    return-object p1

    :pswitch_c
    new-array p1, p1, [Ljby;

    return-object p1

    :pswitch_d
    new-array p1, p1, [Ljbw;

    return-object p1

    :pswitch_e
    new-array p1, p1, [Ljbv;

    return-object p1

    :pswitch_f
    new-array p1, p1, [Ljbt;

    return-object p1

    :pswitch_10
    new-array p1, p1, [Ljbl;

    return-object p1

    :pswitch_11
    new-array p1, p1, [Ljbj;

    return-object p1

    :pswitch_12
    new-array p1, p1, [Ljau;

    return-object p1

    :pswitch_13
    new-array p1, p1, [Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;

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
