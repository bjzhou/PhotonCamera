.class public final Lszq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpci;


# instance fields
.field public final a:Lcom/google/ar/core/Anchor;

.field public final b:F

.field public final c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

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

    :goto_1
    throw p0

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(ILcom/google/ar/core/Anchor;F)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p3, p0, Lszq;->b:F

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    iput-object p2, p0, Lszq;->a:Lcom/google/ar/core/Anchor;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iput p1, p0, Lszq;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final close()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lszq;->a:Lcom/google/ar/core/Anchor;

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

    :goto_1
    invoke-virtual {p0}, Lcom/google/ar/core/Anchor;->detach()V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0x16

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

    :goto_1
    return v0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_3
    if-eq v1, v3, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    iget p1, p1, Lszq;->b:F

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_5
    iget v3, p1, Lszq;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

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
    return v0

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v1, p0, Lszq;->a:Lcom/google/ar/core/Anchor;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_b
    if-eq p0, p1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_c
    if-nez v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1c

    nop

    :goto_f
    iget v1, p0, Lszq;->c:I

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

    :goto_10
    instance-of v1, p1, Lszq;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_11
    check-cast p1, Lszq;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_12
    return v2

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_16
    if-eq p1, p0, :cond_5

    nop

    goto/32 :goto_8

    nop

    :cond_5
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

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

    :goto_19
    iget p0, p0, Lszq;->b:F

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v3, p1, Lszq;->a:Lcom/google/ar/core/Anchor;

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

    :goto_1b
    const v1, 0x20

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

    :goto_1c
    goto/32 :goto_13

    nop

    nop

    :goto_1d
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v1, v3}, Lcom/google/ar/core/Anchor;->equals(Ljava/lang/Object;)Z

    move-result v1

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

    :goto_1f
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 3

    goto/32 :goto_9

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

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    :goto_2
    iget v0, p0, Lszq;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    xor-int/2addr v0, v1

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

    :goto_4
    goto/32 :goto_12

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_6
    xor-int/2addr p0, v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v0}, La;->ac(I)V

    goto/32 :goto_b

    nop

    nop

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

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x1d

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_a
    xor-int/2addr v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_b
    const v1, 0xf4243

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v2}, Lcom/google/ar/core/Anchor;->hashCode()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_d
    mul-int/2addr v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_e
    iget p0, p0, Lszq;->b:F

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_10
    mul-int/2addr v0, v1

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

    :goto_11
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v2, p0, Lszq;->a:Lcom/google/ar/core/Anchor;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_14
    const v1, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-ne v0, v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v1, 0x2

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

    :goto_3
    iget-object v1, p0, Lszq;->a:Lcom/google/ar/core/Anchor;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    :cond_1
    goto/32 :goto_18

    nop

    :goto_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-ne v0, v1, :cond_2

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_2
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v1, 0x4

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

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_b
    const-string v0, "HIT_TEST_DEPTH"

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

    :goto_c
    if-ne v0, v1, :cond_3

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x19

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_e
    goto/16 :goto_31

    nop

    :goto_f
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/16 :goto_31

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_12
    if-ne v0, v1, :cond_4

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_26

    nop

    nop

    :goto_13
    const-string v0, "PLANE"

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_14
    const-string v0, "POINT"

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const-string p0, "}"

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_31

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_1d

    nop

    nop

    :goto_19
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1a

    nop

    nop

    :goto_1c
    return-object p0

    nop

    nop

    :goto_1d
    goto/32 :goto_7

    nop

    nop

    :goto_1e
    const-string v3, "{"

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_1f
    const-string v0, "DEPTH"

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const-string v0, ", "

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

    :goto_22
    const-string v0, "ESTIMATED_DEPTH"

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

    nop

    :goto_23
    const v1, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_24
    const/4 v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_25
    add-int v0, v0, v1

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

    :goto_26
    const/4 v1, 0x5

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_21

    nop

    nop

    :goto_29
    goto :goto_31

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_b

    nop

    nop

    :goto_2b
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-ne v0, v1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2d
    iget v0, p0, Lszq;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2e
    goto :goto_31

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_30
    const-string v0, "UNKNOWN"

    nop

    nop

    :goto_31
    goto/32 :goto_3

    nop

    nop

    :goto_32
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget p0, p0, Lszq;->b:F

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_34
    new-instance v2, Ljava/lang/StringBuilder;

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
.end method
