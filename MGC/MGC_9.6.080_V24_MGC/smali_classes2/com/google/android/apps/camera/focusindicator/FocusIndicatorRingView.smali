.class public Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;
.super Landroid/view/View;
.source "PG"


# instance fields
.field public final a:Liac;

.field public final b:Lhzz;

.field public final c:Liae;

.field public final d:F

.field public e:Landroid/graphics/PointF;

.field public f:Lnbh;

.field public g:Z

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->b:Lhzz;

    nop

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
    goto/32 :goto_10

    nop

    :goto_2
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_3
    const v1, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    const/4 v2, -0x1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {v0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    goto/32 :goto_26

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_1c

    nop

    nop

    :goto_8
    invoke-direct {p2}, Liad;-><init>()V

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_a
    new-instance p2, Liad;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_c
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-object p2, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->c:Liae;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_e
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    :goto_10
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v2, 0x1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {p2}, Liaa;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput-object p2, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->f:Lnbh;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput p1, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->d:F

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_16
    new-instance p2, Liaf;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_17
    sget-object p2, Lnbh;->a:Lnbh;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_18
    const p2, 0x7f0701d9

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-direct {v1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const v0, 0xb

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

    nop

    nop

    :goto_1b
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_1e

    nop

    nop

    :goto_1c
    invoke-direct {p2, v1}, Liaf;-><init>(Landroid/graphics/drawable/ShapeDrawable;)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1d
    iput-object p2, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->a:Liac;

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_1e
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_20
    const/high16 p2, 0x40000000    # 2.0f

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_21
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    div-float/2addr p1, p2

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_23
    new-instance p2, Liaa;

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

    nop

    :goto_24
    new-instance v0, Landroid/graphics/drawable/shapes/OvalShape;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_26
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop
.end method

.method constructor <init>(Landroid/content/Context;Liac;Lhzz;Liae;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
    const p2, 0x7f0701d9

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
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p3, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->b:Lhzz;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p2, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->a:Liac;

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

    :goto_6
    iput-object p4, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->c:Liae;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_7
    iput p1, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->d:F

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

    :goto_8
    return-void

    nop

    nop

    :goto_9
    div-float/2addr p1, p2

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

    :goto_a
    iput-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->f:Lnbh;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_b
    const/high16 p2, 0x40000000    # 2.0f

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_c
    sget-object v0, Lnbh;->a:Lnbh;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop
.end method

.method static a(Lnbh;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lnbh;->ordinal()I

    move-result p0

    nop

    nop

    goto/32 :goto_13

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

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

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

    :goto_5
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_6
    if-ne p0, v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_7
    throw p0

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-ne p0, v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_a
    const/16 p0, 0x5a

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

    :goto_b
    const/16 p0, 0x10e

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_c
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_a

    nop

    nop

    :goto_e
    return p0

    nop

    nop

    :goto_f
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_10
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_11
    const/16 p0, 0xb4

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v0, 0x3

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

    :goto_13
    if-nez p0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-eq p0, v0, :cond_3

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_3
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_15
    return p0

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v0, 0x2

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final b(Landroid/graphics/PointF;)V
    .locals 3

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->setY(F)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_2
    div-float/2addr v1, v2

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

    :goto_3
    goto/32 :goto_8

    nop

    :goto_4
    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->getWidth()I

    move-result v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_6
    const v0, 0xc

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_17

    nop

    nop

    :goto_8
    goto/32 :goto_12

    nop

    nop

    :goto_9
    if-nez v0, :cond_1

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

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget v0, p1, Landroid/graphics/PointF;->x:F

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    div-float/2addr v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_e
    int-to-float v0, v0

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

    :goto_f
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->setX(F)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/high16 v2, 0x40000000    # 2.0f

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_11
    const v1, 0x10

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_12
    iget-boolean v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->h:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_13
    sub-float/2addr v0, v1

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

    :goto_14
    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->getHeight()I

    move-result v0

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

    :goto_15
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

    nop

    nop

    :goto_16
    return-void

    nop

    :goto_17
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_18
    int-to-float v1, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_19
    iput-object p1, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->e:Landroid/graphics/PointF;

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1a
    sub-float/2addr p1, v0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1b
    iget p1, p1, Landroid/graphics/PointF;->y:F

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->h:Z

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x1

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

    :goto_2
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final d()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->h:Z

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

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->c:Liae;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->a:Liac;

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
    invoke-interface {v0, p1}, Liac;->b(Landroid/graphics/Canvas;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {p0, p1}, Liae;->a(Landroid/graphics/Canvas;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop
.end method

.method protected final onSizeChanged(IIII)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->c:Liae;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    invoke-interface {p3, p1, p2}, Liac;->i(II)V

    goto/32 :goto_3

    nop

    nop

    :goto_2
    invoke-interface {p0, p1, p2}, Liae;->b(II)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p3, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->b:Lhzz;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    iget-object p3, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->a:Liac;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    invoke-interface {p3, p1, p2}, Lhzz;->a(II)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    nop
.end method
