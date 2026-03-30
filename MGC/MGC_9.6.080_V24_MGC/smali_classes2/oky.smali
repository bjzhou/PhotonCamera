.class public final Loky;
.super Lolk;
.source "PG"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:J

.field public final e:J

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:I

.field public final i:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x6

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

    :goto_1
    rem-int v0, v0, v1

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

    :goto_2
    invoke-direct {v0, v1}, Lofh;-><init>(I)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    const/16 v1, 0x14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_5
    return-void

    nop

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    :goto_7
    const v0, 0xb

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    sput-object v0, Loky;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    :goto_a
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    :goto_d
    new-instance v0, Lofh;

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

    nop
.end method

.method public constructor <init>(IIIJJLjava/lang/String;Ljava/lang/String;II)V
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Loky;->a:I

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1
    iput-wide p4, p0, Loky;->d:J

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

    :goto_2
    iput-wide p6, p0, Loky;->e:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    iput-object p9, p0, Loky;->g:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput p3, p0, Loky;->c:I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p8, p0, Loky;->f:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

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

    :goto_7
    return-void

    nop

    nop

    nop

    :goto_8
    iput p2, p0, Loky;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_9
    iput p11, p0, Loky;->i:I

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

    :goto_a
    iput p10, p0, Loky;->h:I

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
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p1, p2, v1, v2}, Lolx;->n(Landroid/os/Parcel;IJ)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p2, 0x4

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v1, p0, Loky;->g:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_4
    iget v1, p0, Loky;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_5
    invoke-static {p1, p2, v1}, Lolx;->v(Landroid/os/Parcel;ILjava/lang/String;)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_7
    invoke-static {p1, v0}, Lolx;->i(Landroid/os/Parcel;I)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget v1, p0, Loky;->b:I

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/16 p2, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 p2, 0x3

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-wide v1, p0, Loky;->e:J

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_c
    iget-object v1, p0, Loky;->f:Ljava/lang/String;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/16 p2, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {p1, v1, p2}, Lolx;->m(Landroid/os/Parcel;II)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-wide v1, p0, Loky;->d:J

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_14
    invoke-static {p1, p2, v1}, Lolx;->m(Landroid/os/Parcel;II)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

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

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/4 p2, 0x6

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

    :goto_18
    invoke-static {p1, p2, v1}, Lolx;->m(Landroid/os/Parcel;II)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {p1, p2, v1}, Lolx;->m(Landroid/os/Parcel;II)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1a
    const v0, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_11

    nop

    :goto_1c
    iget p0, p0, Loky;->i:I

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1d
    iget p2, p0, Loky;->a:I

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {p1, p2, v1}, Lolx;->v(Landroid/os/Parcel;ILjava/lang/String;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1f
    iget v1, p0, Loky;->h:I

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const/4 p2, 0x2

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {p1}, Lolx;->g(Landroid/os/Parcel;)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_22
    invoke-static {p1, p2, v1, v2}, Lolx;->n(Landroid/os/Parcel;IJ)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {p1, p2, p0}, Lolx;->m(Landroid/os/Parcel;II)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_24
    const v1, 0x13

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_25
    const/4 p2, 0x5

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_26
    const/4 p2, 0x7

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method
