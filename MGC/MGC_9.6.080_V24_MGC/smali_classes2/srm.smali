.class public final Lsrm;
.super Ljava/util/AbstractList;
.source "PG"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public final a:[F

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>([FII)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lsrm;->a:[F

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

    :goto_1
    return-void

    nop

    :goto_2
    iput p3, p0, Lsrm;->c:I

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput p2, p0, Lsrm;->b:I

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 2

    goto/32 :goto_7

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_1
    return p0

    nop

    nop

    :goto_2
    goto/32 :goto_14

    nop

    nop

    :goto_3
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_5
    const v1, 0x19

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6
    if-nez v0, :cond_1

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

    :cond_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x16

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-ne p0, p1, :cond_2

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v0, p1, v1, p0}, Lrrf;->X([FFII)I

    move-result p0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_a
    const/4 p0, 0x1

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
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
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

    nop

    :goto_d
    iget p0, p0, Lsrm;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_e
    return p0

    nop

    :goto_f
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    instance-of v0, p1, Ljava/lang/Float;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_11
    iget-object v0, p0, Lsrm;->a:[F

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_12
    iget v1, p0, Lsrm;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_13
    check-cast p1, Ljava/lang/Float;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_4

    nop

    :goto_15
    const/4 p1, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_16
    const/4 p0, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Lsrm;->size()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_1d

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return v0

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    instance-of v1, p1, Lsrm;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v4, p0, Lsrm;->a:[F

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return v3

    nop

    :goto_9
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_a
    aget v5, v5, v6

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_b
    cmpl-float v4, v4, v5

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

    :goto_c
    const/4 v0, 0x1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-eq p1, p0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    :goto_e
    check-cast p1, Lsrm;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x1a

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

    nop

    :goto_10
    if-nez v4, :cond_2

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    :cond_2
    goto/32 :goto_24

    nop

    nop

    :goto_11
    const v0, 0x1d

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
    if-lt v2, v1, :cond_3

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

    :cond_3
    goto/32 :goto_7

    nop

    nop

    :goto_13
    return v0

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_15
    iget-object v5, p1, Lsrm;->a:[F

    nop

    nop

    nop

    goto/32 :goto_17

    nop

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

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_17
    iget v6, p1, Lsrm;->b:I

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_18
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    add-int/2addr v6, v2

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

    :goto_1b
    invoke-virtual {p0}, Lsrm;->size()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1c
    move v2, v3

    nop

    nop

    :goto_1d
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1f
    if-lez v0, :cond_4

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_21

    nop

    :goto_20
    invoke-super {p0, p1}, Ljava/util/AbstractList;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_24
    return v3

    nop

    nop

    :goto_25
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_26
    aget v4, v4, v5

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

    nop

    :goto_27
    add-int/2addr v5, v2

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget v5, p0, Lsrm;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_29
    if-eq v2, v1, :cond_5

    nop

    goto/32 :goto_14

    nop

    :cond_5
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_22

    nop

    :goto_2b
    add-int/lit8 v2, v2, 0x1

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

.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int/2addr v0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iget v0, p0, Lsrm;->b:I

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    aget p0, p0, v0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    invoke-static {p1, v0}, Lrrf;->E(II)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lsrm;->a:[F

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

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

    :goto_6
    invoke-virtual {p0}, Lsrm;->size()I

    move-result v0

    nop

    goto/32 :goto_3

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

    nop
.end method

.method public final hashCode()I
    .locals 3

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_4
    iget v2, p0, Lsrm;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    if-lt v0, v2, :cond_1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    aget v2, v2, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_7
    iget-object v2, p0, Lsrm;->a:[F

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

    :goto_8
    const v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_a
    add-int/2addr v1, v2

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    mul-int/lit8 v1, v1, 0x1f

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return v1

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_f

    nop

    nop

    :goto_e
    invoke-static {v2}, Lrrf;->W(F)I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_f
    goto/32 :goto_2

    nop

    nop

    :goto_10
    const v1, 0x16

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_11
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

    :goto_12
    goto :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget v0, p0, Lsrm;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 3

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x12

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_3
    check-cast p1, Ljava/lang/Float;

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

    :goto_4
    rem-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_13

    nop

    nop

    :goto_6
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x13

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    :goto_9
    iget p0, p0, Lsrm;->b:I

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_a
    return p0

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_c
    return p1

    nop

    nop

    :goto_d
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lsrm;->a:[F

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_f
    const/4 p0, -0x1

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

    :goto_10
    sub-int/2addr p1, p0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget v1, p0, Lsrm;->b:I

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_b

    nop

    nop

    :goto_13
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v0, p1, v1, v2}, Lrrf;->X([FFII)I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_15
    if-gez p1, :cond_2

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget v2, p0, Lsrm;->c:I

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_17
    instance-of v0, p1, Ljava/lang/Float;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final isEmpty()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 5

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-gez v3, :cond_0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-ge v3, v2, :cond_1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget v2, p0, Lsrm;->b:I

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_3
    goto/16 :goto_1f

    nop

    nop

    :goto_4
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_6
    instance-of v0, p1, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1c

    nop

    :goto_8
    cmpl-float v4, v4, p1

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

    :goto_9
    return v1

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_b
    iget v3, p0, Lsrm;->c:I

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_c
    aget v4, v0, v3

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x7

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget p0, p0, Lsrm;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_10
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_11
    goto :goto_19

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1e

    nop

    nop

    :goto_13
    return v3

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Lsrm;->a:[F

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-eqz v4, :cond_3

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_3
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_18
    add-int/2addr v3, v1

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    add-int/lit8 v3, v3, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 v1, -0x1

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_a

    nop

    :goto_1d
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1e
    move v3, v1

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_20
    if-nez v0, :cond_4

    nop

    goto/32 :goto_14

    nop

    :cond_4
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_21
    sub-int/2addr v3, p0

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

    :goto_22
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_23
    rem-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop
.end method

.method public final bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lsrm;->a:[F

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    add-int/2addr v0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget v0, p0, Lsrm;->b:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lsrm;->size()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    aget p1, p0, v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    invoke-static {p1, v0}, Lrrf;->E(II)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_a
    aput p2, p0, v0

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

    :goto_b
    check-cast p2, Ljava/lang/Float;

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
.end method

.method public final size()I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Lsrm;->c:I

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

    :goto_1
    sub-int/2addr v0, p0

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

    nop

    nop

    :goto_2
    return v0

    nop

    :goto_3
    iget p0, p0, Lsrm;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final subList(II)Ljava/util/List;
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int/2addr p2, p0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1
    if-eq p1, p2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    :goto_2
    return-object p1

    nop

    :goto_3
    invoke-direct {p1, v0, p0, p2}, Lsrm;-><init>([FII)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lsrm;->a:[F

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

    :goto_5
    invoke-virtual {p0}, Lsrm;->size()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    new-instance p1, Lsrm;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget p0, p0, Lsrm;->b:I

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

    :goto_8
    add-int/2addr p0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    invoke-static {p1, p2, v0}, Lrrf;->w(III)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

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

    :goto_b
    return-object p0

    nop

    nop

    :goto_c
    goto/32 :goto_4

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    goto/32 :goto_1d

    nop

    nop

    :goto_0
    iget v2, p0, Lsrm;->b:I

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_19

    nop

    nop

    :goto_7
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

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

    :goto_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_a
    aget v2, v2, v1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Lsrm;->size()I

    move-result v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v1, p0, Lsrm;->a:[F

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_d
    const/16 p0, 0x5d

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    aget v1, v1, v2

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v2, p0, Lsrm;->a:[F

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return-object p0

    nop

    :goto_13
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_14
    mul-int/lit8 v1, v1, 0xc

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

    nop

    :goto_15
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_16
    const/16 v1, 0x5b

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/32 :goto_6

    nop

    nop

    :goto_18
    iget v1, p0, Lsrm;->b:I

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1a
    const v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1c
    const-string v2, ", "

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1d
    const v0, 0xe

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget v2, p0, Lsrm;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1f
    if-lt v1, v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_20
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_21

    nop

    :goto_21
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method
