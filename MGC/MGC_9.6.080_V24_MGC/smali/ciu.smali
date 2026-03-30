.class public final Lciu;
.super Lcjn;
.source "PG"


# instance fields
.field public final a:F

.field public final b:F

.field public final c:F

.field public final d:Z

.field public final e:Z

.field public final f:F

.field public final g:F


# direct methods
.method public constructor <init>(FFFZZFF)V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    :goto_0
    iput p2, p0, Lciu;->b:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1
    iput p7, p0, Lciu;->g:F

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
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    const v0, 0x20

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_b

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

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

    :goto_8
    invoke-direct {p0, v0, v0, v1}, Lcjn;-><init>(ZZI)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    iput p1, p0, Lciu;->a:F

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_12

    nop

    nop

    :goto_c
    const/4 v1, 0x3

    nop

    nop

    goto/32 :goto_8

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

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_e
    iput-boolean p5, p0, Lciu;->e:Z

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

    :goto_f
    iput p3, p0, Lciu;->c:F

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput-boolean p4, p0, Lciu;->d:Z

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x1b

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

    :goto_12
    const/4 v0, 0x0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iput p6, p0, Lciu;->f:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_2
    iget v3, p1, Lciu;->c:F

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

    :goto_3
    if-eq p0, p1, :cond_0

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return v2

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-ne v1, v3, :cond_1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget v1, p0, Lciu;->c:F

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_9
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_a
    if-nez v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget p1, p1, Lciu;->g:F

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_c
    return v2

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-nez v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_f
    instance-of v1, p1, Lciu;

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

    :goto_10
    iget v1, p0, Lciu;->a:F

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_11
    check-cast p1, Lciu;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_12
    const v0, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget v3, p1, Lciu;->b:F

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_14
    return v2

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_16
    return v2

    nop

    nop

    :goto_17
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    return v0

    nop

    :goto_19
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_1a
    if-nez v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget v1, p0, Lciu;->b:F

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-boolean v3, p1, Lciu;->d:Z

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1e
    return v2

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-eqz v1, :cond_5

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_21
    iget v3, p1, Lciu;->f:F

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_22
    return v2

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-lez v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_28

    nop

    :goto_25
    return v0

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const/4 v0, 0x1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_2a
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_2c
    iget-boolean v1, p0, Lciu;->e:Z

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget v3, p1, Lciu;->a:F

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_2e
    iget-boolean v1, p0, Lciu;->d:Z

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_2f
    const v1, 0xd

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

    :goto_30
    iget v1, p0, Lciu;->f:F

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_31
    if-ne v1, v3, :cond_7

    nop

    goto/32 :goto_23

    nop

    :cond_7
    goto/32 :goto_22

    nop

    nop

    :goto_32
    iget p0, p0, Lciu;->g:F

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_33
    rem-int v0, v0, v1

    nop

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

    nop

    :goto_34
    if-nez v1, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    :cond_8
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_35
    return v2

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_37
    if-nez p0, :cond_9

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_9
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_38
    iget-boolean v3, p1, Lciu;->e:Z

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_39
    return v2

    nop

    nop

    :goto_3a
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 4

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    add-int/2addr v0, v2

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1
    mul-int/lit8 v0, v0, 0x1f

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

    :goto_2
    add-int/2addr v0, v1

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_3
    iget-boolean v2, p0, Lciu;->e:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_4
    add-int/2addr v0, v3

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_5
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_6
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_9
    iget p0, p0, Lciu;->g:F

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_b
    iget v1, p0, Lciu;->b:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_c
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

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

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-boolean v3, p0, Lciu;->d:Z

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {v3}, La;->o(Z)I

    move-result v3

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

    :goto_10
    mul-int/lit8 v0, v0, 0x1f

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_7

    nop

    :goto_12
    goto/32 :goto_20

    nop

    nop

    :goto_13
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_14
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0x10

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_16
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_17
    mul-int/lit8 v0, v0, 0x1f

    nop

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

    nop

    :goto_18
    add-int/2addr v0, p0

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_19
    iget v1, p0, Lciu;->c:F

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    mul-int/lit8 v0, v0, 0x1f

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1b
    add-int/2addr v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    add-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1e
    invoke-static {v2}, La;->o(Z)I

    move-result v2

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_12

    nop

    :goto_20
    iget v0, p0, Lciu;->a:F

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_21
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

    :goto_22
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_23
    iget v1, p0, Lciu;->f:F

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
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    goto/32 :goto_1d

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_3

    nop

    nop

    :goto_2
    const-string v1, ", isPositiveArc="

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
    iget-boolean v1, p0, Lciu;->e:Z

    nop

    goto/32 :goto_20

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

    :cond_0
    goto/32 :goto_12

    nop

    :goto_5
    iget v1, p0, Lciu;->c:F

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/32 :goto_2

    nop

    nop

    :goto_7
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const-string v1, ", arcStartX="

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget v1, p0, Lciu;->a:F

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_a
    const-string v1, ", isMoreThanHalf="

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

    :goto_b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/32 :goto_15

    nop

    nop

    :goto_d
    iget v1, p0, Lciu;->b:F

    nop

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

    nop

    :goto_e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-boolean v1, p0, Lciu;->d:Z

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_27

    nop

    nop

    :goto_14
    iget p0, p0, Lciu;->g:F

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_15
    const-string v1, ", theta="

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_16
    return-object p0

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_1a

    nop

    nop

    :goto_18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_19
    const-string v1, "ArcTo(horizontalEllipseRadius="

    nop

    nop

    nop

    goto/32 :goto_18

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

    :goto_1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1c
    const v1, 0x8

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

    :goto_1d
    const v0, 0x1e

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1f
    const/16 p0, 0x29

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_5

    nop

    nop

    :goto_22
    const-string v1, ", verticalEllipseRadius="

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
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

    :goto_25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_26
    iget v1, p0, Lciu;->f:F

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_27
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const-string v1, ", arcStartY="

    nop

    goto/32 :goto_10

    nop

    nop
.end method
