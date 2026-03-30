.class public final Lole;
.super Lolk;
.source "PG"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final a:I

.field final b:Landroid/os/IBinder;

.field public final c:Lofz;

.field public final d:Z

.field public final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lolf;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

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

    :goto_4
    return-void

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    :goto_6
    const v1, 0x2

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sput-object v0, Lole;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x7

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0, v1}, Lolf;-><init>(I)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public constructor <init>(ILandroid/os/IBinder;Lofz;ZZ)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p3, p0, Lole;->c:Lofz;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    iput-boolean p5, p0, Lole;->e:Z

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    iput-object p2, p0, Lole;->b:Landroid/os/IBinder;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    iput p1, p0, Lole;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Lolk;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-boolean p4, p0, Lole;->d:Z

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6
    return-void

    nop
.end method


# virtual methods
.method public final a()Lokq;
    .locals 2

    goto/32 :goto_15

    nop

    nop

    :goto_0
    goto :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_2
    if-nez v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-eqz p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0, p0}, Lokq;-><init>(Landroid/os/IBinder;)V

    :goto_5
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x1c

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_2

    nop

    goto/32 :goto_b

    nop

    :cond_2
    goto/32 :goto_a

    nop

    :goto_8
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    instance-of v1, v0, Lokq;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_d

    nop

    nop

    :goto_b
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_c
    return-object v0

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_10
    const/4 p0, 0x0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object p0, p0, Lole;->b:Landroid/os/IBinder;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_12
    return-object p0

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_17

    nop

    nop

    :goto_14
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_15
    const v0, 0x13

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_16
    check-cast v0, Lokq;

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

    nop

    :goto_17
    const-string v0, "com.google.android.gms.common.internal.IAccountAccessor"

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    new-instance v0, Lokq;

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

    nop
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_1f

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Lole;->a()Lokq;

    move-result-object p1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x8

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_2
    return v1

    nop

    :goto_3
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_4
    instance-of v2, p1, Lole;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v2, v3}, Lofz;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p0, p1}, La;->aw(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_7
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_b
    return v0

    nop

    nop

    :goto_c
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1d

    nop

    :goto_e
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

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

    nop

    :goto_10
    if-eqz p1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return v0

    nop

    nop

    :goto_12
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_13
    if-eqz v2, :cond_3

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_3
    goto/32 :goto_b

    nop

    nop

    :goto_14
    if-eq p0, p1, :cond_4

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_4
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_15
    if-nez v2, :cond_5

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v0, 0x0

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

    :goto_17
    return v0

    nop

    :goto_18
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0}, Lole;->a()Lokq;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v3, p1, Lole;->c:Lofz;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    check-cast p1, Lole;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_18

    nop

    :goto_1e
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1f
    const v0, 0x9

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_20
    iget-object v2, p0, Lole;->c:Lofz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p1, v1, v2}, Lolx;->r(Landroid/os/Parcel;ILandroid/os/IBinder;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-boolean v1, p0, Lole;->d:Z

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_2
    iget-object v2, p0, Lole;->c:Lofz;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_4
    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_5
    invoke-static {p1, p2, p0}, Lolx;->j(Landroid/os/Parcel;IZ)V

    goto/32 :goto_8

    nop

    nop

    :goto_6
    return-void

    nop

    :goto_7
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {p1, v0}, Lolx;->i(Landroid/os/Parcel;I)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    const/4 p2, 0x4

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {p1, v1, v2, p2}, Lolx;->u(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d
    invoke-static {p1, p2, v1}, Lolx;->j(Landroid/os/Parcel;IZ)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {p1}, Lolx;->g(Landroid/os/Parcel;)I

    move-result v0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_f
    iget-boolean p0, p0, Lole;->e:Z

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_10
    const/4 v1, 0x3

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_11
    iget v2, p0, Lole;->a:I

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_13
    invoke-static {p1, v1, v2}, Lolx;->m(Landroid/os/Parcel;II)V

    goto/32 :goto_4

    nop

    nop

    :goto_14
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

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

    :goto_17
    const v1, 0xe

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_18
    iget-object v2, p0, Lole;->b:Landroid/os/IBinder;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_19
    const/4 p2, 0x5

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1a
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop
.end method
