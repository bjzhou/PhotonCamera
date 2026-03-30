.class public final Loui;
.super Lolk;
.source "PG"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:I

.field public final b:Lots;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0, v1}, Lond;-><init>(I)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_6
    const/16 v1, 0x14

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop

    :goto_a
    sput-object v0, Loui;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_d
    new-instance v0, Lond;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method public constructor <init>(ILots;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Loui;->a:I

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-direct {p0}, Lolk;-><init>()V

    goto/32 :goto_0

    nop

    nop

    :goto_3
    iput-object p2, p0, Loui;->b:Lots;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    iget v2, p0, Loui;->a:I

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_10

    nop

    :goto_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0xe

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    const v1, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {p1, v1, p0, p2}, Lolx;->u(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {p1, v0}, Lolx;->i(Landroid/os/Parcel;I)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Loui;->b:Lots;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_d
    invoke-static {p1}, Lolx;->g(Landroid/os/Parcel;)I

    move-result v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

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

    :goto_f
    return-void

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_11
    invoke-static {p1, v1, v2}, Lolx;->m(Landroid/os/Parcel;II)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop
.end method
