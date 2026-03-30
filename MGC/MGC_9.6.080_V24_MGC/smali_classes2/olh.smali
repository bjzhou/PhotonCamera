.class public final Lolh;
.super Lolk;
.source "PG"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:I

.field public final b:Z

.field public final c:Z

.field public final d:I

.field public final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    :goto_2
    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_6
    const v0, 0x9

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

    :goto_7
    sput-object v0, Lolh;->CREATOR:Landroid/os/Parcelable$Creator;

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

    :goto_8
    new-instance v0, Lolf;

    nop

    nop

    goto/32 :goto_2

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
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v0, v1}, Lolf;-><init>(I)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0xc

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop
.end method

.method public constructor <init>(IZZII)V
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Lolh;->a:I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-boolean p2, p0, Lolh;->b:Z

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-boolean p3, p0, Lolh;->c:Z

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    iput p5, p0, Lolh;->e:I

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    iput p4, p0, Lolh;->d:I

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    invoke-direct {p0}, Lolk;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p2, 0x3

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

    nop

    :goto_1
    invoke-static {p1, p2, v1}, Lolx;->j(Landroid/os/Parcel;IZ)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_3
    invoke-static {p1, v0}, Lolx;->i(Landroid/os/Parcel;I)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p2, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p1, p2, v1}, Lolx;->m(Landroid/os/Parcel;II)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p2, 0x2

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_7
    const v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_8
    invoke-static {p1, p2, v1}, Lolx;->j(Landroid/os/Parcel;IZ)V

    goto/32 :goto_c

    nop

    nop

    :goto_9
    invoke-static {p1}, Lolx;->g(Landroid/os/Parcel;)I

    move-result v0

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

    :goto_a
    invoke-static {p1, p2, p0}, Lolx;->m(Landroid/os/Parcel;II)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x16

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 p2, 0x4

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_d
    iget-boolean v1, p0, Lolh;->c:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    :goto_f
    goto/32 :goto_13

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

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

    :goto_11
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1a

    nop

    nop

    :goto_13
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_14
    iget-boolean v1, p0, Lolh;->b:Z

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget p0, p0, Lolh;->e:I

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_18
    invoke-static {p1, v1, p2}, Lolx;->m(Landroid/os/Parcel;II)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_19
    iget v1, p0, Lolh;->d:I

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget p2, p0, Lolh;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop
.end method
