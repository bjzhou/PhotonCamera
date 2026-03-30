.class public final Lovx;
.super Lolk;
.source "PG"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    const v1, 0x15

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_3
    sput-object v0, Lovx;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0, v1}, Loul;-><init>(I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_7

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
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_9
    const/4 v1, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_a
    const v0, 0xb

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v0, Loul;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    iput p2, p0, Lovx;->b:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lovx;->a:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput p3, p0, Lovx;->c:I

    nop

    nop

    goto/32 :goto_3

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

    nop

    nop

    :goto_4
    invoke-direct {p0}, Lolk;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_0
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_2
    goto/32 :goto_21

    nop

    :goto_3
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_4
    if-nez p0, :cond_1

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

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    if-eq p0, p1, :cond_2

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

    :cond_2
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_7
    invoke-static {p0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_9
    goto/16 :goto_1e

    nop

    :goto_a
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_b
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1a

    nop

    nop

    :goto_d
    const v1, 0x20

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_3

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

    :cond_3
    goto/32 :goto_2

    nop

    :goto_f
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_10
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_11
    check-cast p1, Lovx;

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_12
    if-eq v2, v3, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1c

    nop

    nop

    :goto_13
    iget v2, p0, Lovx;->c:I

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_15
    iget v3, p1, Lovx;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_16
    iget v3, p1, Lovx;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_17
    iget v2, p0, Lovx;->b:I

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_18
    iget-object p1, p1, Lovx;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-ne v2, v3, :cond_5

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1b
    if-eq v2, v3, :cond_6

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_13

    nop

    nop

    :goto_1c
    iget-object p0, p0, Lovx;->a:Ljava/lang/String;

    nop

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

    :goto_1d
    return v0

    nop

    nop

    :goto_1e
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const v0, 0x1b

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_20
    return v1

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_f

    nop

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 2

    goto/32 :goto_5

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_b

    nop

    nop

    :goto_3
    invoke-static {p0}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    iget p0, p0, Lovx;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    const v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_8
    const v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_9
    iget-object v0, p0, Lovx;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget v1, p0, Lovx;->b:I

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

    :goto_b
    goto/32 :goto_10

    nop

    nop

    :goto_c
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_e
    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    goto/32 :goto_c

    nop

    nop

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

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

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

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

    nop

    :goto_2
    iget v2, p0, Lovx;->c:I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

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
    filled-new-array {v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_5
    return-object p0

    nop

    :goto_6
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    :goto_9
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x1c

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget v1, p0, Lovx;->b:I

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

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_f
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_9

    nop

    :goto_11
    iget-object p0, p0, Lovx;->a:Ljava/lang/String;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_12
    const-string v1, "WebIconParcelable{%dx%d - %s}"

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p1}, Lolx;->g(Landroid/os/Parcel;)I

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    iget-object v1, p0, Lovx;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    invoke-static {p1, v0, p0}, Lolx;->m(Landroid/os/Parcel;II)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_a

    nop

    :goto_6
    invoke-static {p1, v0, v1}, Lolx;->v(Landroid/os/Parcel;ILjava/lang/String;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p1, p2}, Lolx;->i(Landroid/os/Parcel;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v0, 0x1

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

    :goto_9
    goto/32 :goto_1

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_c
    const/4 v0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_e
    iget p0, p0, Lovx;->c:I

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

    :goto_f
    invoke-static {p1, v0, v1}, Lolx;->m(Landroid/os/Parcel;II)V

    goto/32 :goto_c

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_11
    iget v1, p0, Lovx;->b:I

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_12
    const/4 v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_13
    const v0, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_14
    const v1, 0x5

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
.end method
