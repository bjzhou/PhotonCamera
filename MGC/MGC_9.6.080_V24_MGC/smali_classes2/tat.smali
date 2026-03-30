.class public final Ltat;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:[F

.field public final b:Landroid/graphics/Bitmap;

.field public final c:F

.field public final d:F


# direct methods
.method public constructor <init>()V
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

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    nop
.end method

.method public constructor <init>([FLandroid/graphics/Bitmap;FF)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    iput p4, p0, Ltat;->d:F

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    iput-object p1, p0, Ltat;->a:[F

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2

    nop

    nop

    :goto_4
    iput p3, p0, Ltat;->c:F

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p2, p0, Ltat;->b:Landroid/graphics/Bitmap;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p1, Ltat;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    iget-object v1, p0, Ltat;->a:[F

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    const v0, 0x11

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_3
    instance-of v3, p1, Ltat;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    return v0

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_6
    if-nez v3, :cond_0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return v0

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_a
    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_b
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_c
    goto/16 :goto_20

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_e
    iget v1, p0, Ltat;->c:F

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_11
    instance-of v1, p1, Ltat;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_14

    nop

    nop

    :goto_14
    iget-object v1, p0, Ltat;->b:Landroid/graphics/Bitmap;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    :cond_3
    goto/32 :goto_28

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_17
    if-eq p1, p0, :cond_4

    nop

    goto/32 :goto_5

    nop

    :cond_4
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-eq v1, v3, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_19
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

    nop

    :goto_1a
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_1b
    iget v3, p1, Ltat;->c:F

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1c
    if-eq p0, p1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_6
    goto/32 :goto_7

    nop

    nop

    :goto_1d
    const v1, 0x7

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v3, p1, Ltat;->a:[F

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

    :goto_1f
    iget-object v3, p1, Ltat;->a:[F

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_22
    if-nez v1, :cond_7

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_23
    iget p1, p1, Ltat;->d:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_24
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_27
    add-int v0, v0, v1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v3, p1, Ltat;->b:Landroid/graphics/Bitmap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_2b
    iget p0, p0, Ltat;->d:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop
.end method

.method public final hashCode()I
    .locals 3

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_0
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    xor-int/2addr v0, v2

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v2, p0, Ltat;->b:Landroid/graphics/Bitmap;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_3
    iget v2, p0, Ltat;->c:F

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_4
    iget p0, p0, Ltat;->d:F

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_5
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([F)I

    move-result v0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

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

    :goto_7
    xor-int/2addr v0, v2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_a
    return p0

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    :goto_c
    const v1, 0x14

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
    mul-int/2addr v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_f
    xor-int/2addr v0, v1

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
    const v1, 0xf4243

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_11
    mul-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_12
    mul-int/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Ltat;->a:[F

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

    :goto_14
    const v0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_15
    xor-int/2addr p0, v0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_13

    nop

    nop

    :goto_18
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_0
    goto/32 :goto_16

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v1, p0, Ltat;->a:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_2
    iget v0, p0, Ltat;->c:F

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3
    const-string v1, ", "

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_4
    iget-object v0, p0, Ltat;->b:Landroid/graphics/Bitmap;

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

    :goto_5
    const-string v3, "{"

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

    :goto_6
    if-lez v0, :cond_0

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_7
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/32 :goto_d

    nop

    nop

    :goto_8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_9
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_16

    nop

    nop

    :goto_a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const-string p0, "}"

    nop

    nop

    goto/32 :goto_10

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

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_3

    nop

    nop

    :goto_10
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_18

    nop

    nop

    :goto_12
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0x15

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

    :goto_14
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_15
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_16
    iget p0, p0, Ltat;->d:F

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

    :goto_17
    return-object p0

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_19
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1c
    const v1, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop
.end method
