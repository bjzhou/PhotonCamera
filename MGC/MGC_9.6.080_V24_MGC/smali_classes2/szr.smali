.class public final Lszr;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpci;


# instance fields
.field public final a:Lcom/google/ar/core/Anchor;

.field public final b:Landroid/graphics/Bitmap;

.field public final c:F

.field public final d:F

.field public final e:Lryb;


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

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

.method public constructor <init>(Lcom/google/ar/core/Anchor;Landroid/graphics/Bitmap;FFLryb;)V
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    iput p4, p0, Lszr;->d:F

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lszr;->a:Lcom/google/ar/core/Anchor;

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

    :goto_2
    iput p3, p0, Lszr;->c:F

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    iput-object p5, p0, Lszr;->e:Lryb;

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

    :goto_5
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_7
    iput-object p2, p0, Lszr;->b:Landroid/graphics/Bitmap;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method


# virtual methods
.method public final close()V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Lcom/google/ar/core/Anchor;->detach()V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1
    const/16 v1, 0xc

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x1e

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v0, Lrqy;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

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

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {v0, v1}, Lrqy;-><init>(I)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_b
    const v1, 0xa

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {p0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Lszr;->e:Lryb;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Lszr;->a:Lcom/google/ar/core/Anchor;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method

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
    add-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p1, Lszr;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_2
    instance-of v1, p1, Lszr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_3
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    :goto_5
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lszr;->e:Lryb;

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

    :goto_7
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

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

    :goto_8
    return v2

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v3, p1, Lszr;->a:Lcom/google/ar/core/Anchor;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_b
    return v0

    nop

    nop

    :goto_c
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-nez v1, :cond_1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_e
    if-eq p1, p0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_2
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_f
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

    :goto_10
    iget-object v3, p1, Lszr;->b:Landroid/graphics/Bitmap;

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

    :goto_11
    iget v3, p1, Lszr;->d:F

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0x1b

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-nez p0, :cond_3

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v1, p0, Lszr;->a:Lcom/google/ar/core/Anchor;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_15
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget v1, p0, Lszr;->c:F

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_17
    iget v3, p1, Lszr;->c:F

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-eq v1, v3, :cond_4

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_4
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_19
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1b
    invoke-static {p0, p1}, Lrgw;->N(Ljava/util/List;Ljava/lang/Object;)Z

    move-result p0

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

    :goto_1c
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1e
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v1, v3}, Lcom/google/ar/core/Anchor;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_20
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_21
    const v1, 0x15

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_22
    iget v1, p0, Lszr;->d:F

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-nez v1, :cond_5

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_5
    goto/32 :goto_24

    nop

    nop

    :goto_24
    iget-object v1, p0, Lszr;->b:Landroid/graphics/Bitmap;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_25
    if-nez v1, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_6
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_26
    if-eq v1, v3, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_7
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_28
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_29
    iget-object p1, p1, Lszr;->e:Lryb;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 3

    goto/32 :goto_d

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

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_1
    mul-int/2addr v0, v1

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

    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    iget v2, p0, Lszr;->c:F

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0xf4243

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_6
    mul-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_8
    goto/32 :goto_1c

    nop

    nop

    :goto_9
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget v2, p0, Lszr;->d:F

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_d
    const v0, 0xd

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_e
    xor-int/2addr p0, v0

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

    :goto_f
    iget-object p0, p0, Lszr;->e:Lryb;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0}, Lcom/google/ar/core/Anchor;->hashCode()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_12
    mul-int/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_13
    xor-int/2addr v0, v2

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

    :goto_14
    xor-int/2addr v0, v2

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

    :goto_15
    xor-int/2addr v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_16
    xor-int/2addr v0, v2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_17
    mul-int/2addr v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v2, p0, Lszr;->b:Landroid/graphics/Bitmap;

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

    :goto_19
    iget-object v0, p0, Lszr;->a:Lcom/google/ar/core/Anchor;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1a
    invoke-virtual {p0}, Lryb;->hashCode()I

    move-result p0

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

    :goto_1b
    return p0

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1d
    const v1, 0x13

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
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    goto/32 :goto_b

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v2, p0, Lszr;->a:Lcom/google/ar/core/Anchor;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

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

    :goto_3
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_15

    nop

    nop

    :goto_7
    goto/32 :goto_13

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

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_9
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    const-string v4, "{"

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

    :goto_b
    const v0, 0x19

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_c
    const-string v2, ", "

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

    :goto_d
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

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

    nop

    nop

    :goto_f
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_12
    const-string p0, "}"

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

    :goto_13
    iget-object v0, p0, Lszr;->e:Lryb;

    nop

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

    :goto_14
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget p0, p0, Lszr;->d:F

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

    :goto_17
    const v1, 0x1f

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

    :goto_18
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/32 :goto_21

    nop

    nop

    :goto_19
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    new-instance v3, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1b
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_20

    nop

    nop

    :goto_1c
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1d
    iget-object v1, p0, Lszr;->b:Landroid/graphics/Bitmap;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1e
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

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

    :goto_20
    iget v1, p0, Lszr;->c:F

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

    :goto_21
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method
