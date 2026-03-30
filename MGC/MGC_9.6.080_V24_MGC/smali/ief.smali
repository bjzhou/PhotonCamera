.class public final Lief;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Landroid/graphics/RectF;

.field public final b:Landroid/graphics/RectF;

.field public final c:F

.field private final d:F


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/graphics/RectF;Landroid/graphics/RectF;FF)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    iput p3, p0, Lief;->c:F

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    iput-object p2, p0, Lief;->b:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput p4, p0, Lief;->d:F

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

    :goto_5
    iput-object p1, p0, Lief;->a:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public static a(Ltom;)Lief;
    .locals 8

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sub-float v4, v0, p0

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

    :goto_1
    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result p0

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

    :goto_2
    if-eqz p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :cond_0
    goto/32 :goto_25

    nop

    nop

    :goto_3
    div-float/2addr v1, v4

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v6, Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_6
    iget v1, p0, Ltok;->f:F

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sub-float v5, v3, v4

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

    nop

    :goto_8
    const v1, 0x1a

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_9
    mul-float/2addr p0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_a
    div-float/2addr p0, v4

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

    :goto_b
    const/high16 v3, 0x41000000    # 8.0f

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_c
    div-float/2addr v0, v4

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_d
    invoke-direct {v3, v4, v7, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_e
    iget v0, p0, Ltok;->e:F

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

    :goto_f
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {v0, v6, v3, v2, p0}, Lief;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;FF)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget v3, p0, Ltok;->f:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_13
    iget v0, p0, Ltok;->e:F

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_14
    sub-float v2, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_15
    iget v1, p0, Ltok;->c:F

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    add-float/2addr v1, p0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget v1, p0, Ltok;->c:F

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    new-instance v0, Lief;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1a
    return-object v0

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1c
    add-float/2addr v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    mul-float/2addr v2, v5

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const/high16 v4, 0x40000000    # 2.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1f
    add-float/2addr v1, p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_20
    mul-float/2addr p0, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const/high16 v1, 0x40800000    # 4.0f

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_22
    sub-float v7, v1, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_23
    mul-float/2addr p0, p0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget p0, p0, Ltok;->d:F

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_25
    sget-object p0, Ltok;->a:Ltok;

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_27
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    :goto_28
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-object p0, p0, Ltom;->c:Ltok;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2a
    const v0, 0xd

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2b
    new-instance v3, Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_2c
    add-float/2addr v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2d
    iget v4, p0, Ltok;->d:F

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2e
    invoke-direct {v6, v1, v4, v0, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto/32 :goto_13

    nop

    nop

    nop
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1, v3}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1
    iget v3, p1, Lief;->c:F

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_2
    return v0

    nop

    :goto_3
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_4
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_6
    check-cast p1, Lief;

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

    :goto_7
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x1c

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

    :goto_9
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_1
    goto/32 :goto_13

    nop

    :goto_a
    iget v1, p0, Lief;->c:F

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_b
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

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

    :goto_c
    if-eq p1, p0, :cond_2

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_2
    goto/32 :goto_11

    nop

    nop

    :goto_d
    if-nez v1, :cond_3

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_a

    nop

    nop

    :goto_e
    iget-object v1, p0, Lief;->b:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget p0, p0, Lief;->d:F

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_11
    return v0

    nop

    :goto_12
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_24

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_16

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

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_18
    if-nez v1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_4
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v3, p1, Lief;->a:Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1a
    if-eq v1, v3, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_5
    goto/32 :goto_10

    nop

    nop

    :goto_1b
    iget-object v3, p1, Lief;->b:Landroid/graphics/RectF;

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

    :goto_1c
    if-eq p0, p1, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_6
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1d
    const/4 v2, 0x0

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

    :goto_1e
    return v2

    nop

    :goto_1f
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v1, p0, Lief;->a:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_21
    const v0, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v1, v3}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_23
    iget p1, p1, Lief;->d:F

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_24
    const/4 v0, 0x1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    instance-of v1, p1, Lief;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 3

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2
    mul-int/2addr v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    xor-int/2addr p0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    mul-int/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_5
    mul-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    :goto_7
    goto/32 :goto_11

    nop

    nop

    :goto_8
    invoke-virtual {v2}, Landroid/graphics/RectF;->hashCode()I

    move-result v2

    nop

    goto/32 :goto_e

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

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_a
    iget p0, p0, Lief;->d:F

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_c
    const v1, 0x1

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

    nop

    nop

    :goto_d
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_e
    xor-int/2addr v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_f
    invoke-virtual {v0}, Landroid/graphics/RectF;->hashCode()I

    move-result v0

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

    :goto_10
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

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

    :goto_11
    iget-object v0, p0, Lief;->a:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_13
    iget-object v2, p0, Lief;->b:Landroid/graphics/RectF;

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

    :goto_14
    iget v2, p0, Lief;->c:F

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_15
    const v1, 0xf4243

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_16
    xor-int/2addr v0, v2

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_17
    xor-int/2addr v0, v1

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

    :goto_18
    const v0, 0x9

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1d

    nop

    nop

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1

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

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_5
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_7
    iget v0, p0, Lief;->c:F

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_8
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_9
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x9

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
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

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

    :goto_c
    add-int v0, v0, v1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_e
    const v0, 0x20

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_f
    iget-object v1, p0, Lief;->a:Landroid/graphics/RectF;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/32 :goto_16

    nop

    nop

    :goto_11
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const-string v3, "{"

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const-string p0, "}"

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_17
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_19
    iget-object v0, p0, Lief;->b:Landroid/graphics/RectF;

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

    :goto_1a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const-string v1, ", "

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

    :goto_1c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget p0, p0, Lief;->d:F

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop
.end method
