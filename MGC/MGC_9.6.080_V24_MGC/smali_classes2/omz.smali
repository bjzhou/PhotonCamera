.class public final Lomz;
.super Lolk;
.source "PG"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final a:Ljava/lang/String;

.field final b:Z

.field final c:Z

.field final d:Z

.field final e:Z

.field final f:[Lonc;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    sput-object v0, Lomz;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v1, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    invoke-direct {v0, v1}, Lolf;-><init>(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v0, Lolf;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_b

    nop

    :goto_7
    const v0, 0x1d

    nop

    nop

    nop

    goto/32 :goto_0

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

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_d

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/lang/String;ZZZZ[Lonc;)V
    .locals 0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean p5, p0, Lomz;->e:Z

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lomz;->a:Ljava/lang/String;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-boolean p3, p0, Lomz;->c:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    iput-boolean p2, p0, Lomz;->b:Z

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

    :goto_4
    iput-boolean p4, p0, Lomz;->d:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p6, p0, Lomz;->f:[Lonc;

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_7
    invoke-direct {p0}, Lolk;-><init>()V

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

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    invoke-static {p1, v1, v2}, Lolx;->j(Landroid/os/Parcel;IZ)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v1, 0x2

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

    :goto_2
    invoke-static {p1, v1, p0, p2}, Lolx;->y(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p1, v0}, Lolx;->i(Landroid/os/Parcel;I)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_4
    iget-object v2, p0, Lomz;->a:Ljava/lang/String;

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_5
    invoke-static {p1, v1, v2}, Lolx;->j(Landroid/os/Parcel;IZ)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    :goto_7
    const/4 v1, 0x7

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Lomz;->f:[Lonc;

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

    nop

    :goto_a
    const/4 v1, 0x5

    nop

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

    :goto_b
    iget-boolean v2, p0, Lomz;->b:Z

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v1, 0x3

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

    nop

    :goto_d
    return-void

    nop

    :goto_e
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_10
    iget-boolean v2, p0, Lomz;->c:Z

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x1c

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

    :goto_12
    const/4 v1, 0x6

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_13
    invoke-static {p1}, Lolx;->g(Landroid/os/Parcel;)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {p1, v1, v2}, Lolx;->j(Landroid/os/Parcel;IZ)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-boolean v2, p0, Lomz;->d:Z

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {p1, v1, v2}, Lolx;->v(Landroid/os/Parcel;ILjava/lang/String;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {p1, v1, v2}, Lolx;->j(Landroid/os/Parcel;IZ)V

    goto/32 :goto_12

    nop

    nop

    :goto_19
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-boolean v2, p0, Lomz;->e:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1c
    const/4 v1, 0x4

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

    :goto_1d
    goto/32 :goto_1a

    nop

    nop

    nop
.end method
