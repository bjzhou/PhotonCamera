.class public final Loke;
.super Lolk;
.source "PG"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:Lolh;

.field public final b:Z

.field public final c:Z

.field public final d:[I

.field public final e:I

.field public final f:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0x3

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Lofh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    sput-object v0, Loke;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_4
    const/16 v1, 0x12

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x12

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_a
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_6

    nop

    :goto_c
    goto/32 :goto_1

    nop

    nop

    :goto_d
    invoke-direct {v0, v1}, Lofh;-><init>(I)V

    goto/32 :goto_2

    nop

    nop
.end method

.method public constructor <init>(Lolh;ZZ[II[I)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    iput-object p1, p0, Loke;->a:Lolh;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-boolean p3, p0, Loke;->c:Z

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    iput p5, p0, Loke;->e:I

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

    :goto_4
    invoke-direct {p0}, Lolk;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p6, p0, Loke;->f:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    iput-boolean p2, p0, Loke;->b:Z

    nop

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

    :goto_7
    iput-object p4, p0, Loke;->d:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p1, p2, v0}, Lolx;->s(Landroid/os/Parcel;I[I)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Loke;->a:Lolh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p1, p2, p0}, Lolx;->s(Landroid/os/Parcel;I[I)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p1, p2, v0}, Lolx;->j(Landroid/os/Parcel;IZ)V

    goto/32 :goto_19

    nop

    nop

    :goto_5
    return-void

    nop

    :goto_6
    goto/32 :goto_16

    nop

    nop

    :goto_7
    const/4 p2, 0x2

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_8
    invoke-static {p1, v2, v0, p2}, Lolx;->u(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    goto/32 :goto_7

    nop

    nop

    :goto_9
    const v1, 0x1e

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_a
    const/4 p2, 0x3

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {p1, p2, v0}, Lolx;->m(Landroid/os/Parcel;II)V

    goto/32 :goto_11

    nop

    nop

    :goto_c
    iget-object v0, p0, Loke;->d:[I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {p1, v1}, Lolx;->i(Landroid/os/Parcel;I)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_10
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_11
    const/4 p2, 0x6

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_12
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_14
    invoke-static {p1}, Lolx;->g(Landroid/os/Parcel;)I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_15
    iget v0, p0, Loke;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_16
    goto/32 :goto_13

    nop

    nop

    :goto_17
    iget-object p0, p0, Loke;->f:[I

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_18
    const/4 p2, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/4 p2, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-boolean v0, p0, Loke;->b:Z

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

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

    :goto_1c
    iget-boolean v0, p0, Loke;->c:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1d
    invoke-static {p1, p2, v0}, Lolx;->j(Landroid/os/Parcel;IZ)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop
.end method
