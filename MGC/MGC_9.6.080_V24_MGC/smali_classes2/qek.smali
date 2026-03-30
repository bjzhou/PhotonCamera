.class public final Lqek;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v0, Lnbh;->a:Lnbh;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-direct {p0, p1, v0}, Lqek;-><init>(ILnbh;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(II)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    iput p2, p0, Lqek;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput p1, p0, Lqek;->a:I

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
    return-void

    nop

    nop

    nop
.end method

.method public constructor <init>(ILnbh;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    iput p2, p0, Lqek;->b:I

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    iget p2, p2, Lnbh;->e:I

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    add-int/2addr p2, p1

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

    :goto_3
    iput p1, p0, Lqek;->a:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    :goto_6
    rem-int/lit16 p2, p2, 0x168

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final a(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget p0, p0, Lqek;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2
    iget p1, p1, Landroid/graphics/PointF;->y:F

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x4

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-ne p0, v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_1
    goto/32 :goto_a

    nop

    :goto_6
    if-eq p0, v0, :cond_2

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-nez p0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_3
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_b

    nop

    nop

    :goto_a
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_c
    const/16 v0, 0xb4

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_d
    new-instance p0, Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_f
    const/16 v0, 0x5a

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return-object p0

    nop

    nop

    :goto_11
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_13
    iget v0, p1, Landroid/graphics/PointF;->y:F

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

    nop

    :goto_14
    return-object p0

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {p0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_17
    if-ne p0, v0, :cond_4

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

    :cond_4
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_18
    return-object p0

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {p0, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1b
    sub-float/2addr v1, v0

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_1c
    iget p1, p1, Landroid/graphics/PointF;->x:F

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1d
    throw p0

    nop

    :goto_1e
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1f
    iget v0, p1, Landroid/graphics/PointF;->y:F

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_20
    sub-float v0, v1, v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_21
    iget p1, p1, Landroid/graphics/PointF;->x:F

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_22
    new-instance p0, Landroid/graphics/PointF;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_23
    iget v0, p1, Landroid/graphics/PointF;->x:F

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

    :goto_24
    rem-int v0, v0, v1

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

    :goto_25
    new-instance p0, Landroid/graphics/PointF;

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

    :goto_26
    sub-float/2addr v1, p1

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

    :goto_27
    const v1, 0x11

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

    :goto_28
    sub-float/2addr v1, p1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const-string p1, "Unsupported Sensor Orientation"

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2a
    const/16 v0, 0x10e

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

    nop

    :goto_2b
    const/high16 v1, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    return-object p1

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_9

    nop

    nop

    nop
.end method

.method public final b(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0xb

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

    nop

    :goto_1
    invoke-direct {p0, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    goto/32 :goto_10

    nop

    nop

    :goto_2
    new-instance p0, Landroid/graphics/PointF;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_4
    const/16 v0, 0x10e

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

    :goto_5
    sub-float/2addr v1, v0

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

    :goto_6
    iget v0, p1, Landroid/graphics/PointF;->x:F

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_7
    const/high16 v1, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_8
    iget p1, p1, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_9
    new-instance p0, Landroid/graphics/PointF;

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

    :goto_a
    invoke-direct {p0, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_d
    const v1, 0x7

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_e
    iget v0, p1, Landroid/graphics/PointF;->y:F

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_f
    if-ne p0, v0, :cond_0

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

    :cond_0
    goto/32 :goto_4

    nop

    nop

    :goto_10
    return-object p0

    nop

    :goto_11
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {p0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-eq p0, v0, :cond_1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_14
    if-ne p0, v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/16 v0, 0x5a

    nop

    goto/32 :goto_7

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

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget p1, p1, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    return-object p0

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_24

    nop

    :goto_1b
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :cond_3
    goto/32 :goto_23

    nop

    :goto_1c
    return-object p1

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget p1, p1, Landroid/graphics/PointF;->y:F

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-nez p0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_15

    nop

    nop

    :goto_20
    iget v0, p1, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_21
    iget p0, p0, Lqek;->a:I

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

    :goto_22
    sub-float v0, v1, v0

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_23
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_25
    new-instance p0, Landroid/graphics/PointF;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_26
    sub-float/2addr v1, p1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_27
    const-string p1, "Unsupported Sensor Orientation"

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_29
    const/16 v0, 0xb4

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_2b
    sub-float/2addr v1, p1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2c
    return-object p0

    nop

    nop

    :goto_2d
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop
.end method
