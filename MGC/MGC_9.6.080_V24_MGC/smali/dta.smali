.class public final Ldta;
.super Ldxv;
.source "PG"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public a:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, v1}, Lkt;-><init>(I)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v1, 0x3

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    return-void

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v0, Lkt;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_9
    sput-object v0, Ldta;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x4

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x13

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 5

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_10

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
    const v0, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_4
    invoke-direct {p0, p1, p2}, Ldxv;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_5
    if-lt p2, v0, :cond_1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-array v1, v0, [I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto/32 :goto_9

    nop

    nop

    :goto_9
    add-int/lit8 p2, p2, 0x1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object p1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {p2, v0}, Landroid/util/SparseArray;-><init>(I)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    :goto_d
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_e
    new-instance p2, Landroid/util/SparseArray;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 p2, 0x0

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_d

    nop

    :goto_13
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v2, p0, Ldta;->a:Landroid/util/SparseArray;

    nop

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

    :goto_15
    const v1, 0x16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_16
    aget v3, v1, p2

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_17
    aget-object v4, p1, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_13

    nop

    :goto_19
    iput-object p2, p0, Ldta;->a:Landroid/util/SparseArray;

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

    :goto_1a
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    goto/32 :goto_a

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    goto/32 :goto_1

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

    nop

    :goto_1
    invoke-direct {p0, p1}, Ldxv;-><init>(Landroid/os/Parcelable;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v4, p0, Ldta;->a:Landroid/util/SparseArray;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1
    new-array v2, v0, [I

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    aput v4, v2, v1

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_6
    goto/16 :goto_1c

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    goto/32 :goto_d

    nop

    nop

    :goto_a
    check-cast v4, Landroid/os/Parcelable;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_b
    invoke-super {p0, p1, p2}, Ldxv;->writeToParcel(Landroid/os/Parcel;I)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_c
    if-lt v1, v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_f
    aput-object v4, v3, v1

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

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Ldta;->a:Landroid/util/SparseArray;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_14
    if-nez v0, :cond_2

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_5

    nop

    nop

    :goto_15
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_16
    add-int/lit8 v1, v1, 0x1

    nop

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

    :goto_17
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_18
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    new-array v3, v0, [Landroid/os/Parcelable;

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1d
    iget-object v4, p0, Ldta;->a:Landroid/util/SparseArray;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1e
    move v0, v1

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_20
    goto :goto_1f

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_22
    const v0, 0x1e

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_23
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop
.end method
