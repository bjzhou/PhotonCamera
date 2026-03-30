.class public final Lmp;
.super Landroid/graphics/drawable/Drawable;
.source "PG"


# static fields
.field private static final b:Landroid/util/Property;

.field private static final c:Landroid/animation/TimeInterpolator;


# instance fields
.field public final a:Landroid/animation/ObjectAnimator;

.field private final d:Landroid/graphics/RectF;

.field private final e:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lmo;

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

    :goto_1
    const v0, 0x7

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0, v1}, Lmo;-><init>(Ljava/lang/Class;)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_a

    nop

    :goto_4
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x13

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-class v1, Ljava/lang/Integer;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    :goto_9
    return-void

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_c
    sput-object v0, Lmp;->b:Landroid/util/Property;

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

    :goto_d
    sget-object v0, Lmn;->a:Lmn;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_f
    sput-object v0, Lmp;->c:Landroid/animation/TimeInterpolator;

    nop

    goto/32 :goto_9

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 4

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_0
    filled-new-array {v2, v3}, [I

    move-result-object v2

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1
    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-wide/16 v1, 0x1770

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sget-object v0, Lmp;->b:Landroid/util/Property;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

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

    :goto_a
    new-instance p0, Landroid/view/animation/LinearInterpolator;

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
    const/16 v3, 0x2710

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

    :goto_c
    invoke-direct {p0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_d
    iput-object v0, p0, Lmp;->d:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_e
    const/4 p0, -0x1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_f
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

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

    :goto_13
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_11

    nop

    nop

    :goto_15
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_17
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_18
    const v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_19
    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const v1, 0x17

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1c
    iput-object v0, p0, Lmp;->a:Landroid/animation/ObjectAnimator;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1d
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_20
    new-instance v0, Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_21
    new-instance v0, Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_22
    iput-object v0, p0, Lmp;->e:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop
.end method

.method private static a(FFF)F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    cmpl-float v0, p0, p1

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

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    sub-float/2addr p2, p0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return p2

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    :goto_5
    div-float/2addr p2, p1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sub-float/2addr p1, p0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_8
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 13

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_0
    invoke-static {v4, v6, v3}, Lmp;->a(FFF)F

    move-result v4

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_30

    nop

    :goto_2
    invoke-interface {v7, v4}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v6, v4}, Ljava/lang/Math;->max(FF)F

    move-result v10

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_4
    mul-float/2addr v0, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_5
    add-float/2addr v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_6
    if-nez v2, :cond_0

    nop

    nop

    goto/32 :goto_2b

    nop

    :cond_0
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_8
    sub-float v1, v5, v10

    nop

    :goto_9
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/high16 v5, 0x43990000    # 306.0f

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_b
    sget-object v7, Lmp;->c:Landroid/animation/TimeInterpolator;

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {v1, v4, v3}, Lmp;->a(FFF)F

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p1, v0, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_e
    move v9, v1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_f
    mul-float/2addr v0, v6

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_10
    div-float/2addr v3, v4

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_11
    int-to-float v3, v3

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Lmp;->d:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_13
    const/high16 v4, 0x3f000000    # 0.5f

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_14
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_15
    add-float/2addr v0, v3

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    mul-float/2addr v4, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_19
    div-int/lit16 v3, v0, 0x7d0

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

    :goto_1a
    iget-object v0, p0, Lmp;->d:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_1c
    const v1, 0xd

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const/high16 v6, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_1e
    int-to-float v0, v0

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_1f
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :cond_1
    goto/32 :goto_2f

    nop

    :goto_20
    const/high16 v4, 0x44fa0000    # 2000.0f

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_21
    const/4 v11, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p0}, Lmp;->getLevel()I

    move-result v0

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_24
    mul-int/lit16 v3, v3, 0x7d0

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_25
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_26
    const v0, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_27
    sub-float v4, v6, v4

    nop

    :goto_28
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v0, p0, Lmp;->e:Landroid/graphics/Paint;

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

    nop

    :goto_2a
    goto/16 :goto_9

    nop

    :goto_2b
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    move-object v7, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_2d
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v0, p0, Lmp;->e:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_2f
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_31
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_33
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_35
    const/high16 v6, -0x3d4c0000    # -90.0f

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_36
    cmpg-float v5, v3, v4

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_37
    const/high16 v6, 0x43b40000    # 360.0f

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

    :goto_38
    invoke-interface {v7, v4}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v4

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v0, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    const/high16 v7, 0x42580000    # 54.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_29

    nop

    nop

    :goto_3d
    sub-int v3, v0, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_3e
    if-nez v2, :cond_2

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3f
    iget-object v12, p0, Lmp;->e:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_40
    sget-object v7, Lmp;->c:Landroid/animation/TimeInterpolator;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_41
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_43
    iget-object v8, p0, Lmp;->d:Landroid/graphics/RectF;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_44
    goto/16 :goto_28

    nop

    nop

    :goto_45
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_46
    iget-object v4, p0, Lmp;->d:Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_47
    mul-float/2addr v3, v7

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_48
    invoke-virtual {p0}, Lmp;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_49
    const v6, 0x38d1b717    # 1.0E-4f

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_4a
    if-ltz v5, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    :cond_3
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    add-float/2addr v0, v6

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop
.end method

.method public final getOpacity()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, -0x1

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
    return p0

    nop
.end method

.method protected final onLevelChange(I)Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x1

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
    return p0

    nop

    nop

    nop

    nop
.end method

.method public final setAlpha(I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop
.end method
