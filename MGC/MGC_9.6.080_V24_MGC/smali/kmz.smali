.class public final Lkmz;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Landroid/graphics/PointF;

.field public final b:Landroid/graphics/RectF;

.field public final c:I

.field public final d:I


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

    nop

    nop
.end method

.method public constructor <init>(Landroid/graphics/PointF;Landroid/graphics/RectF;II)V
    .locals 0

    goto/32 :goto_2

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
    iput-object p2, p0, Lkmz;->b:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    :goto_3
    iput p4, p0, Lkmz;->c:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lkmz;->a:Landroid/graphics/PointF;

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

    :goto_5
    iput p3, p0, Lkmz;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_0
    iget p1, p1, Lkmz;->c:I

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
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2
    iget v1, p0, Lkmz;->d:I

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_3
    if-eq p0, p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_5
    check-cast p1, Lkmz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_6
    instance-of v1, p1, Lkmz;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_7
    throw p0

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return v0

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop

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
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_f

    nop

    :goto_f
    goto/32 :goto_21

    nop

    nop

    :goto_10
    goto/32 :goto_16

    nop

    nop

    :goto_11
    iget-object v3, p1, Lkmz;->b:Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_12
    const v1, 0x17

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v1, p0, Lkmz;->a:Landroid/graphics/PointF;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0x13

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget v3, p1, Lkmz;->d:I

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v1, v3}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v1, v3}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v1

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

    :goto_19
    if-nez v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_5

    nop

    nop

    :goto_1a
    iget p0, p0, Lkmz;->c:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1c
    if-nez v1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-nez v1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_5
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-eq v1, v3, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_6
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v3, p1, Lkmz;->a:Landroid/graphics/PointF;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    return v2

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_23
    const/4 v2, 0x0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_24
    if-eq p1, p0, :cond_7

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v1, p0, Lkmz;->b:Landroid/graphics/RectF;

    nop

    goto/32 :goto_11

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

    :goto_0
    goto/32 :goto_f

    nop

    :goto_1
    iget v2, p0, Lkmz;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2
    iget p0, p0, Lkmz;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_3
    xor-int/2addr v0, v2

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_4
    xor-int/2addr v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    mul-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    xor-int/2addr v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_7
    invoke-virtual {v2}, Landroid/graphics/RectF;->hashCode()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_8
    const v0, 0x9

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

    :goto_9
    const v1, 0x17

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_a
    iget-object v2, p0, Lkmz;->b:Landroid/graphics/RectF;

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

    :goto_b
    iget-object v0, p0, Lkmz;->a:Landroid/graphics/PointF;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0xf4243

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return p0

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_0

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_0

    nop

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

    :goto_14
    mul-int/2addr v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_15
    invoke-virtual {v0}, Landroid/graphics/PointF;->hashCode()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_16
    mul-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v2}, La;->U(I)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    xor-int/2addr p0, v0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    iget-object v1, p0, Lkmz;->a:Landroid/graphics/PointF;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x1f

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lkmz;->b:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_1a

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    const-string p0, "}"

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_8
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_9
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_c
    const-string v1, ", "

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_d
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {v0}, Lfsh;->m(I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_11
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

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

    :goto_12
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_13
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_17

    nop

    nop

    :goto_15
    const-string v3, "{"

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget p0, p0, Lkmz;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_19
    iget v0, p0, Lkmz;->d:I

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_f

    nop

    :goto_1b
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const v0, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop
.end method
