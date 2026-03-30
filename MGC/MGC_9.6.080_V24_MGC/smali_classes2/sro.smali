.class public final Lsro;
.super Ljava/util/AbstractList;
.source "PG"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public final a:[I

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>([III)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    iput p3, p0, Lsro;->c:I

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

    :goto_2
    iput p2, p0, Lsro;->b:I

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lsro;->a:[I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-ne p0, p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_3
    const/4 p1, -0x1

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
    const v0, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_5
    check-cast p1, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    :goto_7
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return p0

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x9

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_b
    iget-object v0, p0, Lsro;->a:[I

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget v1, p0, Lsro;->b:I

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

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

    nop

    :goto_e
    iget p0, p0, Lsro;->c:I

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

    :goto_f
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_10
    return p0

    nop

    nop

    :goto_11
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_13
    invoke-static {v0, p1, v1, p0}, Lrrf;->O([IIII)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_14
    const/4 p0, 0x0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_7

    nop

    nop

    :goto_16
    instance-of v0, p1, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_17
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x1f

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v5, p1, Lsro;->a:[I

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_2
    if-eq p1, p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int/lit8 v2, v2, 0x1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_4
    return v3

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    :goto_6
    if-eq v2, v1, :cond_1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1f

    nop

    nop

    :goto_7
    aget v5, v5, v6

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

    :goto_8
    aget v4, v4, v5

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Lsro;->size()I

    move-result v1

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return v3

    nop

    nop

    :goto_b
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-ne v4, v5, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v3, 0x0

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_10
    iget-object v4, p0, Lsro;->a:[I

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_11
    check-cast p1, Lsro;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_d

    nop

    :goto_13
    instance-of v1, p1, Lsro;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto :goto_20

    nop

    :goto_15
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0xe

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_17
    return v0

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-super {p0, p1}, Ljava/util/AbstractList;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1a
    iget v5, p0, Lsro;->b:I

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

    :goto_1b
    if-lt v2, v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_3
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    return p0

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    add-int/2addr v6, v2

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

    nop

    :goto_1f
    move v2, v3

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_21
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_22
    add-int/2addr v5, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p1}, Lsro;->size()I

    move-result v2

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

    :goto_24
    iget v6, p1, Lsro;->b:I

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_25
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_26
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_27
    if-nez v1, :cond_4

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

    :cond_4
    goto/32 :goto_11

    nop

    nop

    :goto_28
    return v0

    nop

    :goto_29
    goto/32 :goto_13

    nop

    nop

    :goto_2a
    if-lez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_c

    nop
.end method

.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    iget v0, p0, Lsro;->b:I

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    add-int/2addr v0, p1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    aget p0, p0, v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    :goto_5
    iget-object p0, p0, Lsro;->a:[I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lsro;->size()I

    move-result v0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p1, v0}, Lrrf;->E(II)V

    goto/32 :goto_1

    nop

    nop
.end method

.method public final hashCode()I
    .locals 3

    goto/32 :goto_e

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_9

    nop

    :goto_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget v2, p0, Lsro;->c:I

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_4
    mul-int/lit8 v1, v1, 0x1f

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

    :goto_5
    aget v2, v2, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    return v1

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_8

    nop

    :goto_a
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0xa

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

    nop

    :goto_c
    add-int/2addr v1, v2

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_d
    if-lt v0, v2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    :goto_e
    const v0, 0x13

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

    nop

    :goto_f
    iget v0, p0, Lsro;->b:I

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_10
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_11
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_3

    nop

    nop

    :goto_13
    iget-object v2, p0, Lsro;->a:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_14
    goto :goto_12

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 3

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_3
    iget v1, p0, Lsro;->b:I

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_7
    return p1

    nop

    nop

    :goto_8
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 p0, -0x1

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

    :goto_b
    sub-int/2addr p1, p0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_c
    iget v2, p0, Lsro;->c:I

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

    :goto_d
    const v1, 0x10

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

    :goto_e
    iget p0, p0, Lsro;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_f
    add-int v0, v0, v1

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

    nop

    :goto_10
    instance-of v0, p1, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Lsro;->a:[I

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_12
    if-gez p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {v0, p1, v1, v2}, Lrrf;->O([IIII)I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_14
    const v0, 0x1f

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_2

    nop

    :goto_16
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_2
    goto/32 :goto_1

    nop

    :goto_17
    check-cast p1, Ljava/lang/Integer;

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

    nop
.end method

.method public final isEmpty()Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 5

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move v3, v1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return v3

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_4
    if-gez v3, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    sub-int/2addr v3, p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget v2, p0, Lsro;->b:I

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
    iget v3, p0, Lsro;->c:I

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_8
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget p0, p0, Lsro;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_a
    check-cast p1, Ljava/lang/Integer;

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

    :goto_b
    goto :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_e
    add-int/2addr v3, v1

    nop

    :goto_f
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Lsro;->a:[I

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_19

    nop

    :goto_13
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    add-int/lit8 v3, v3, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_15
    if-nez v0, :cond_1

    nop

    goto/32 :goto_3

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-eq v4, p1, :cond_2

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

    nop

    :goto_18
    return v1

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    aget v4, v0, v3

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1b
    instance-of v0, p1, Ljava/lang/Integer;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-lez v0, :cond_3

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_12

    nop

    :goto_1d
    goto/16 :goto_f

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-ge v3, v2, :cond_4

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const v0, 0x1d

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_21
    const v1, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_22
    const/4 v1, -0x1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop
.end method

.method public final bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lsro;->size()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    aput p2, p0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    aget p1, p0, v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    invoke-static {p1, v0}, Lrrf;->E(II)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    add-int/2addr v0, p1

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

    :goto_6
    check-cast p2, Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    iget v0, p0, Lsro;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Lsro;->a:[I

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

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

    :goto_b
    return-object p0

    nop
.end method

.method public final size()I
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    sub-int/2addr v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    iget p0, p0, Lsro;->b:I

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

    :goto_2
    iget v0, p0, Lsro;->c:I

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
    return v0

    nop

    nop
.end method

.method public final subList(II)Ljava/util/List;
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int/2addr p2, p0

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

    :goto_1
    return-object p1

    nop

    :goto_2
    iget-object v0, p0, Lsro;->a:[I

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

    :goto_3
    return-object p0

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    :goto_5
    if-eq p1, p2, :cond_0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    :goto_6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lsro;->size()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int/2addr p0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    invoke-static {p1, p2, v0}, Lrrf;->w(III)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget p0, p0, Lsro;->b:I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_b
    new-instance p1, Lsro;

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_c
    invoke-direct {p1, v0, p0, p2}, Lsro;-><init>([III)V

    goto/32 :goto_1

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_1b

    nop

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_5
    iget-object v2, p0, Lsro;->a:[I

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

    :goto_6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-object p0

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_b
    iget v2, p0, Lsro;->c:I

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

    :goto_c
    const-string v2, ", "

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

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

    goto/32 :goto_22

    nop

    nop

    :goto_e
    aget v2, v2, v1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_11
    const/16 p0, 0x5d

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_12
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_13
    iget v1, p0, Lsro;->b:I

    nop

    nop

    :goto_14
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0}, Lsro;->size()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_17
    if-lt v1, v2, :cond_0

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    :goto_18
    mul-int/lit8 v1, v1, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_19
    iget-object v1, p0, Lsro;->a:[I

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_8

    nop

    :goto_1b
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget v2, p0, Lsro;->b:I

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const/16 v1, 0x5b

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    aget v1, v1, v2

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_20
    goto :goto_14

    nop

    nop

    :goto_21
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_1
    goto/32 :goto_1a

    nop
.end method
