.class public final Loua;
.super Lolk;
.source "PG"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:I

.field public final b:Z

.field public final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_d

    nop

    nop

    :goto_2
    invoke-direct {v0, v1}, Lond;-><init>(I)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    const/16 v1, 0xc

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x19

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_b
    sput-object v0, Loua;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_c
    const v0, 0x16

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v0, Lond;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public constructor <init>(IZZ)V
    .locals 0

    goto/32 :goto_2

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

    :goto_1
    iput p1, p0, Loua;->a:I

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Lolk;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    iput-boolean p3, p0, Loua;->c:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    iput-boolean p2, p0, Loua;->b:Z

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_0
    invoke-static {p1}, Lolx;->g(Landroid/os/Parcel;)I

    move-result p2

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

    :goto_1
    const v1, 0xc

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p1, p2}, Lolx;->i(Landroid/os/Parcel;I)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x2

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_6
    invoke-static {p1, v0, v1}, Lolx;->m(Landroid/os/Parcel;II)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_7
    iget-boolean p0, p0, Loua;->c:Z

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_9
    invoke-static {p1, v0, p0}, Lolx;->j(Landroid/os/Parcel;IZ)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v0, 0x4

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_b
    iget v1, p0, Loua;->a:I

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_c
    goto/32 :goto_4

    nop

    nop

    :goto_d
    const v0, 0x1b

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {p1, v0, v1}, Lolx;->j(Landroid/os/Parcel;IZ)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_10
    iget-boolean v1, p0, Loua;->b:Z

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    :goto_12
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_13
    const/4 v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop
.end method
