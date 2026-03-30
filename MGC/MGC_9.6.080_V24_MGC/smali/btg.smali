.class public final Lbtg;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/RandomAccess;


# instance fields
.field public a:[Ljava/lang/Object;

.field public b:I

.field private c:Ljava/util/List;


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lbtg;->a:[Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput p1, p0, Lbtg;->b:I

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
.end method

.method public static final q()V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_2
    const v0, 0x1c

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    :goto_7
    new-instance v0, Ljava/util/NoSuchElementException;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const-string v1, "MutableVector is empty."

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    :goto_b
    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_5

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 3

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Lbtg;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0xc

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_5
    const/4 p0, -0x1

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

    :goto_6
    if-nez v2, :cond_0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_7
    if-ge v1, v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_1
    :goto_8
    goto/32 :goto_5

    nop

    nop

    :goto_9
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_a
    if-gtz v0, :cond_2

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_b
    invoke-static {p1, v2}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

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

    :goto_c
    rem-int v0, v0, v1

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

    :goto_d
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_e
    return v1

    nop

    :goto_f
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_10
    aget-object v2, p0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_3
    goto/32 :goto_13

    nop

    :goto_12
    iget-object p0, p0, Lbtg;->a:[Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_13
    goto/32 :goto_3

    nop

    :goto_14
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v1, 0x0

    nop

    :goto_16
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_17
    const v1, 0x16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {}, Lbtg;->q()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    :goto_3
    new-instance p0, Ltxr;

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

    nop

    :goto_4
    iget-object p0, p0, Lbtg;->a:[Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_5
    aget-object p0, p0, v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    throw p0

    nop

    nop

    :goto_7
    if-nez v0, :cond_0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    :goto_8
    iget v0, p0, Lbtg;->b:I

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {p0}, Ltxr;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method

.method public final c(I)Ljava/lang/Object;
    .locals 4

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    add-int/lit8 p1, p1, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    iput p1, p0, Lbtg;->b:I

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    aput-object p0, v0, p1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    return-object v1

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    add-int/lit8 v3, p1, 0x1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_13

    nop

    nop

    :goto_9
    const v0, 0x7

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_a
    invoke-static {v0, v0, p1, v3, v2}, Lrkm;->bh([Ljava/lang/Object;[Ljava/lang/Object;III)V

    :goto_b
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_d
    add-int/lit8 v3, v2, -0x1

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_e
    aget-object v1, v0, p1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_f
    const v1, 0xb

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget v2, p0, Lbtg;->b:I

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

    :goto_12
    const/4 p0, 0x0

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

    :goto_13
    iget-object v0, p0, Lbtg;->a:[Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_14
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_15
    if-ne p1, v3, :cond_1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget p1, p0, Lbtg;->b:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final d(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    aput-object p2, p0, p1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    aget-object v0, p0, p1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lbtg;->a:[Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e()Ljava/util/List;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lbtg;->c:Ljava/util/List;

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

    :goto_1
    return-object v0

    nop

    nop

    nop

    :goto_2
    iput-object v0, p0, Lbtg;->c:Ljava/util/List;

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0, p0}, Lbtd;-><init>(Lbtg;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    if-eqz v0, :cond_0

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

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    new-instance v0, Lbtd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method

.method public final f(ILjava/lang/Object;)V
    .locals 3

    goto/32 :goto_b

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_13

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

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_3
    const v1, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_4
    iput p1, p0, Lbtg;->b:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    if-ne p1, v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6
    iget v0, p0, Lbtg;->b:I

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int/lit8 p1, p1, 0x1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_9
    aput-object p2, v0, p1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_a
    iget v1, p0, Lbtg;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x1a

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int/lit8 v2, p1, 0x1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0, v0}, Lbtg;->h(I)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_e
    iget p1, p0, Lbtg;->b:I

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Lbtg;->a:[Ljava/lang/Object;

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

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1

    nop

    :goto_12
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_12

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_15
    invoke-static {v0, v0, v2, p1, v1}, Lrkm;->bh([Ljava/lang/Object;[Ljava/lang/Object;III)V

    :goto_16
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop
.end method

.method public final g()V
    .locals 3

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int/lit8 v1, v1, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x8

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

    :goto_3
    iget-object v0, p0, Lbtg;->a:[Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

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

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_5
    const v0, 0x14

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto :goto_e

    nop

    :goto_8
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_9
    iput v0, p0, Lbtg;->b:I

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

    :goto_a
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget v1, p0, Lbtg;->b:I

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1

    nop

    nop

    :goto_f
    return-void

    nop

    :goto_10
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_12
    aput-object v2, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_14
    if-gez v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method public final h(I)V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    array-length v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0xf

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

    :goto_2
    iput-object p1, p0, Lbtg;->a:[Ljava/lang/Object;

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_5
    const v1, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_b
    add-int/2addr v1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_c
    if-lt v1, p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    :goto_d
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

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

    :goto_f
    iget-object v0, p0, Lbtg;->a:[Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final i(II)V
    .locals 3

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int/lit8 p2, p2, 0x1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    move p2, p1

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x1d

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-le p1, v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-ne p2, v0, :cond_1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    :goto_6
    iget-object v1, p0, Lbtg;->a:[Ljava/lang/Object;

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

    :goto_7
    iget v0, p0, Lbtg;->b:I

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto :goto_2

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v1, v1, p1, p2, v0}, Lrkm;->bh([Ljava/lang/Object;[Ljava/lang/Object;III)V

    :goto_b
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lt p2, v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v1, p0, Lbtg;->a:[Ljava/lang/Object;

    nop

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

    nop

    :goto_e
    add-int/lit8 v0, v0, -0x1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_f
    aput-object v2, v1, p2

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-gt p2, p1, :cond_3

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_3
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_12
    iput p1, p0, Lbtg;->b:I

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget v0, p0, Lbtg;->b:I

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v2, 0x0

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

    nop

    :goto_16
    sub-int p1, v0, p2

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

    :goto_17
    if-lez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1a

    nop

    :goto_18
    sub-int/2addr p2, p1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_19
    goto/32 :goto_1b

    nop

    :goto_1a
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1c
    const v0, 0x8

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    return-void

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final j(Ljava/util/Comparator;)V
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lbtg;->a:[Ljava/lang/Object;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    invoke-static {v0, v1, p0, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_7

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

    :goto_4
    goto/32 :goto_5

    nop

    nop

    :goto_5
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget p0, p0, Lbtg;->b:I

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_7
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

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

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_9
    const v1, 0xb

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

    :goto_a
    goto/32 :goto_4

    nop

    nop

    :goto_b
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
    const v0, 0x11

    nop

    nop

    goto/32 :goto_9

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

    goto/32 :goto_e

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

    goto/32 :goto_8

    nop

    nop

    nop
.end method

.method public final k(ILjava/util/Collection;)Z
    .locals 5

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lbtg;->a:[Ljava/lang/Object;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1
    add-int/2addr v2, p1

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    :goto_6
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_7
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-ltz v1, :cond_0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return p0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_b
    const v1, 0xe

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_e
    add-int/2addr p1, p2

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_f
    const v0, 0x12

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_10
    iput p1, p0, Lbtg;->b:I

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0, v0}, Lbtg;->h(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget v0, p0, Lbtg;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_13
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget v2, p0, Lbtg;->b:I

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

    :goto_15
    add-int/lit8 v4, v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget p1, p0, Lbtg;->b:I

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_17
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    :goto_18
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_19
    add-int/2addr v1, p1

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-ne p1, v2, :cond_1

    nop

    goto/32 :goto_22

    nop

    :cond_1
    goto/32 :goto_28

    nop

    nop

    :goto_1b
    invoke-static {}, Lrkm;->ai()V

    :goto_1c
    goto/32 :goto_19

    nop

    nop

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_1e
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1f
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_5

    nop

    :goto_20
    if-nez v0, :cond_3

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_21
    invoke-static {v0, v0, v2, p1, v3}, Lrkm;->bh([Ljava/lang/Object;[Ljava/lang/Object;III)V

    :goto_22
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_23
    const/4 v1, 0x0

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_24
    add-int v0, v0, v1

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

    :goto_25
    add-int/2addr v0, v2

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    move v1, v4

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_28
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-nez v3, :cond_4

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_4
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2a
    aput-object v3, v0, v1

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    return v1

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget v3, p0, Lbtg;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop
.end method

.method public final l(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x3

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    goto :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int/lit8 v2, v2, 0x1

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

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_9
    aget-object v3, v3, v2

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    move v2, v1

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_15

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

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_d
    invoke-static {v3, p1}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_e
    if-gez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    :goto_f
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_10
    if-nez v3, :cond_2

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-ne v2, v0, :cond_3

    nop

    goto/32 :goto_4

    nop

    :cond_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v3, p0, Lbtg;->a:[Ljava/lang/Object;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget v0, p0, Lbtg;->b:I

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    add-int/lit8 v0, v0, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1a
    const v1, 0x18

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public final m(Ljava/lang/Object;)Z
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    if-gez p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1}, Lbtg;->a(Ljava/lang/Object;)I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p0, 0x1

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

    :goto_5
    return p0

    nop

    nop

    :goto_6
    invoke-virtual {p0, p1}, Lbtg;->c(I)Ljava/lang/Object;

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop
.end method

.method public final n(Ljava/lang/Object;)V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    aput-object p1, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    const v0, 0x12

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

    nop

    :goto_3
    invoke-virtual {p0, v0}, Lbtg;->h(I)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_5
    iput v1, p0, Lbtg;->b:I

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_6
    iget-object v0, p0, Lbtg;->a:[Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_8

    nop

    nop

    :goto_a
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_b
    iget v0, p0, Lbtg;->b:I

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

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

    :goto_e
    add-int/lit8 v1, v1, 0x1

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

    :goto_f
    const v1, 0x18

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_10
    iget v1, p0, Lbtg;->b:I

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

    :goto_11
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop
.end method

.method public final o(ILbtg;)V
    .locals 4

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int/2addr v2, p1

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

    :goto_1
    const v0, 0x18

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

    :goto_2
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    invoke-static {v0, v0, v2, p1, v1}, Lrkm;->bh([Ljava/lang/Object;[Ljava/lang/Object;III)V

    :goto_5
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget v1, p0, Lbtg;->b:I

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_9
    iput p1, p0, Lbtg;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget v3, p2, Lbtg;->b:I

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_b
    iget p1, p0, Lbtg;->b:I

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget v0, p2, Lbtg;->b:I

    nop

    goto/32 :goto_16

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
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v1, p2, Lbtg;->a:[Ljava/lang/Object;

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

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_11
    iget v2, p2, Lbtg;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_12
    invoke-virtual {p0, v1}, Lbtg;->h(I)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {v1, v0, p1, v2, v3}, Lrkm;->bh([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_14
    if-ne p1, v1, :cond_0

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_11

    nop

    nop

    :goto_15
    iget-object v0, p0, Lbtg;->a:[Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_16
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_2

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1d

    nop

    :goto_18
    iget p2, p2, Lbtg;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_19
    return-void

    nop

    nop

    :goto_1a
    goto/32 :goto_7

    nop

    nop

    :goto_1b
    add-int/2addr v1, v0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1c
    add-int/2addr p1, p2

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_c

    nop

    nop

    :goto_1f
    iget v1, p0, Lbtg;->b:I

    nop

    nop

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
.end method

.method public final p(ILjava/util/List;)V
    .locals 5

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    add-int/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget v1, p0, Lbtg;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_5
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    nop

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

    :goto_6
    const v0, 0x19

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

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1d

    nop

    :goto_8
    iput p1, p0, Lbtg;->b:I

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_9
    iget v0, p0, Lbtg;->b:I

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0, v0}, Lbtg;->h(I)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lt v2, v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_17

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
    goto/32 :goto_1b

    nop

    nop

    :goto_e
    iget-object v0, p0, Lbtg;->a:[Ljava/lang/Object;

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
    goto/16 :goto_27

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    aput-object v4, v0, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_14
    invoke-static {v0, v0, v1, p1, v2}, Lrkm;->bh([Ljava/lang/Object;[Ljava/lang/Object;III)V

    :goto_15
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

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

    :goto_17
    add-int v3, p1, v2

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-nez v0, :cond_2

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

    :cond_2
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_19
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_1c
    iget p1, p0, Lbtg;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1f
    add-int/2addr v1, p1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_20
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

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

    :goto_22
    add-int/2addr p1, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_23
    if-ne p1, v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_12

    nop

    nop

    :goto_24
    iget v2, p0, Lbtg;->b:I

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_25
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_26
    const/4 v2, 0x0

    nop

    nop

    :goto_27
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop
.end method
