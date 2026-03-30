.class public final Lovo;
.super Lolk;
.source "PG"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:I

.field public final b:J

.field public final c:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_d

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0, v1}, Loul;-><init>(I)V

    goto/32 :goto_6

    nop

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

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    sput-object v0, Lovo;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_7
    const/16 v1, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_8
    const v1, 0x19

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

    :goto_9
    goto/32 :goto_5

    nop

    :goto_a
    new-instance v0, Loul;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop
.end method

.method public constructor <init>(IJLjava/util/List;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Lovo;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    iput-wide p2, p0, Lovo;->b:J

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Lolk;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p4, p0, Lovo;->c:Ljava/util/List;

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
    .locals 3

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lovo;->c:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p1, v0, v1, v2}, Lolx;->n(Landroid/os/Parcel;IJ)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x2

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :goto_5
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_6
    invoke-static {p1, v0, p0}, Lolx;->z(Landroid/os/Parcel;ILjava/util/List;)V

    goto/32 :goto_12

    nop

    nop

    :goto_7
    const v1, 0x1f

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_c
    invoke-static {p1, v0, v1}, Lolx;->m(Landroid/os/Parcel;II)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_d
    iget v1, p0, Lovo;->a:I

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_e
    const/4 v0, 0x4

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

    :goto_f
    iget-wide v1, p0, Lovo;->b:J

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_10
    const v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {p1, p2}, Lolx;->i(Landroid/os/Parcel;I)V

    goto/32 :goto_4

    nop

    nop

    :goto_13
    invoke-static {p1}, Lolx;->g(Landroid/os/Parcel;)I

    move-result p2

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_14
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop
.end method
