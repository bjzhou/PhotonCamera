.class public final Lofq;
.super Lolk;
.source "PG"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    :goto_0
    sput-object v0, Lofq;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1
    new-instance v0, Lofh;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0, v1}, Lofh;-><init>(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_7
    const v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v1, 0x3

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x1b

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    :goto_d
    goto/32 :goto_8

    nop

    nop
.end method

.method public constructor <init>(III)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    iput p2, p0, Lofq;->b:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput p3, p0, Lofq;->c:I

    nop

    nop

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

    :goto_3
    iput p1, p0, Lofq;->a:I

    nop

    goto/32 :goto_0

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
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0xd

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p1, p2, p0}, Lolx;->m(Landroid/os/Parcel;II)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget p2, p0, Lofq;->a:I

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x10

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget p0, p0, Lofq;->c:I

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {p1, v0}, Lolx;->i(Landroid/os/Parcel;I)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {p1, v1, p2}, Lolx;->m(Landroid/os/Parcel;II)V

    goto/32 :goto_12

    nop

    nop

    :goto_c
    return-void

    nop

    :goto_d
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_10
    iget v1, p0, Lofq;->b:I

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_11
    invoke-static {p1, p2, v1}, Lolx;->m(Landroid/os/Parcel;II)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_12
    const/4 p2, 0x2

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

    nop

    :goto_13
    invoke-static {p1}, Lolx;->g(Landroid/os/Parcel;)I

    move-result v0

    nop

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

    :goto_14
    const/4 p2, 0x3

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method
