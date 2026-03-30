.class public final Lszx;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpci;


# instance fields
.field public final a:Lcom/google/ar/core/Anchor;

.field public final b:F

.field public final c:F


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public constructor <init>(Lcom/google/ar/core/Anchor;FF)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    iput p3, p0, Lszx;->c:F

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

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

    :goto_3
    iput p2, p0, Lszx;->b:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lszx;->a:Lcom/google/ar/core/Anchor;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_4

    nop

    nop

    nop
.end method


# virtual methods
.method public final close()V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lcom/google/ar/core/Anchor;->detach()V

    goto/32 :goto_1

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
    iget-object p0, p0, Lszx;->a:Lcom/google/ar/core/Anchor;

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
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_0
    iget p0, p0, Lszx;->c:F

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-eq v1, v3, :cond_1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget v1, p0, Lszx;->b:F

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return v0

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-eq p1, p0, :cond_2

    nop

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

    :goto_8
    instance-of v1, p1, Lszx;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_9
    check-cast p1, Lszx;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_a
    goto/32 :goto_21

    nop

    nop

    :goto_b
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    :cond_3
    goto/32 :goto_20

    nop

    :goto_c
    return v0

    nop

    :goto_d
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-eq p0, p1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_4
    goto/32 :goto_c

    nop

    nop

    :goto_f
    iget v3, p1, Lszx;->b:F

    nop

    nop

    nop

    goto/32 :goto_1e

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

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

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

    :goto_13
    iget p1, p1, Lszx;->c:F

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

    nop

    :goto_14
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

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

    :goto_15
    const/4 v0, 0x1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v1, p0, Lszx;->a:Lcom/google/ar/core/Anchor;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v0, 0x16

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_18
    const v1, 0xf

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

    :goto_19
    invoke-virtual {v1, v3}, Lcom/google/ar/core/Anchor;->equals(Ljava/lang/Object;)Z

    move-result v1

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

    nop

    :goto_1a
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

    :goto_1b
    iget-object v3, p1, Lszx;->a:Lcom/google/ar/core/Anchor;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_1c
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1e
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

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

    nop

    :goto_1f
    if-nez v1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_1d

    nop

    nop

    :goto_21
    goto/32 :goto_15

    nop

    nop
.end method

.method public final hashCode()I
    .locals 3

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x1d

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
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

    :goto_5
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    xor-int/2addr p0, v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    const v1, 0x1c

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
    iget v2, p0, Lszx;->b:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_a
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0xf4243

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_c
    iget p0, p0, Lszx;->c:F

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_d
    mul-int/2addr v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lszx;->a:Lcom/google/ar/core/Anchor;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_f
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_e

    nop

    nop

    :goto_12
    mul-int/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_13
    xor-int/2addr v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_14
    xor-int/2addr v0, v2

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0}, Lcom/google/ar/core/Anchor;->hashCode()I

    move-result v0

    nop

    goto/32 :goto_b

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_e

    nop

    nop

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_7

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    const-string v2, "{"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    const-string p0, "}"

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-string v0, ", "

    nop

    goto/32 :goto_2

    nop

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

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_9
    const v0, 0x1c

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lszx;->a:Lcom/google/ar/core/Anchor;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_c
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget v2, p0, Lszx;->b:F

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget p0, p0, Lszx;->c:F

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_14
    goto/32 :goto_10

    nop

    :goto_15
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_17
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/32 :goto_6

    nop

    nop

    nop
.end method
