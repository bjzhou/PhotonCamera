.class public final Lhel;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Landroid/graphics/RectF;

.field private final b:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

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
.end method

.method public constructor <init>(Landroid/graphics/RectF;Landroid/graphics/PointF;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    iput-object p1, p0, Lhel;->a:Landroid/graphics/RectF;

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

    :goto_3
    iput-object p2, p0, Lhel;->b:Landroid/graphics/PointF;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lhel;->b:Landroid/graphics/PointF;

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

    nop

    :goto_1
    if-eq p1, p0, :cond_0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_4
    iget-object v3, p1, Lhel;->a:Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x9

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
    return v0

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_12

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
    goto/32 :goto_17

    nop

    nop

    nop

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

    goto/32 :goto_7

    nop

    :cond_1
    goto/32 :goto_14

    nop

    nop

    :goto_b
    invoke-virtual {p0, p1}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_c
    if-nez p0, :cond_2

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

    :cond_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p1, p1, Lhel;->b:Landroid/graphics/PointF;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_e
    if-nez v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_3
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_f
    iget-object v1, p0, Lhel;->a:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v1, v3}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v1

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

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return v2

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_14
    check-cast p1, Lhel;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_15
    return v0

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_17
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_18
    instance-of v1, p1, Lhel;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_19
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const v0, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1b
    if-lez v0, :cond_4

    nop

    goto/32 :goto_9

    nop

    :cond_4
    goto/32 :goto_8

    nop
.end method

.method public final hashCode()I
    .locals 2

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lhel;->b:Landroid/graphics/PointF;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
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

    :goto_2
    invoke-virtual {v0}, Landroid/graphics/RectF;->hashCode()I

    move-result v0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x12

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_4
    xor-int/2addr p0, v0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_5
    xor-int/2addr v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_9
    const v1, 0xf4243

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return p0

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_e
    invoke-virtual {p0}, Landroid/graphics/PointF;->hashCode()I

    move-result p0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x1a

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Lhel;->a:Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1
    const v0, 0x16

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

    :goto_2
    const-string v2, "{"

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

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

    :goto_4
    rem-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_5

    nop

    nop

    :goto_8
    const v1, 0x12

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_9
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

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

    :goto_a
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_c
    sget-object p0, Lcom/google/android/apps/camera/filmstrip/transition/KkW/xCXUu;->rsMeRFgqntK:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_f
    iget-object v0, p0, Lhel;->b:Landroid/graphics/PointF;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_10
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_10

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_14
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_15
    const-string p0, "}"

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p0, p0, Lhel;->a:Landroid/graphics/RectF;

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

    :goto_17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_17

    nop

    nop

    nop
.end method
