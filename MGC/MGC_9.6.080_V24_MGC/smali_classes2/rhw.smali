.class public final Lrhw;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Ljava/lang/ThreadLocal;

.field private static final b:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

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

    :goto_1
    new-instance v0, Ljava/lang/ThreadLocal;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    new-instance v0, Ljava/lang/ThreadLocal;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    sput-object v0, Lrhw;->b:Ljava/lang/ThreadLocal;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    sput-object v0, Lrhw;->a:Ljava/lang/ThreadLocal;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public static a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 3

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v1, Landroid/graphics/Matrix;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    goto/32 :goto_10

    nop

    nop

    :goto_3
    add-float/2addr v2, v0

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_4
    float-to-int v0, v1

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x17

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v2, 0x0

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

    :goto_8
    check-cast v1, Landroid/graphics/Matrix;

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

    nop

    :goto_9
    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {p0, p1, v1}, Lrhw;->b(Landroid/view/ViewParent;Landroid/view/View;Landroid/graphics/Matrix;)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    sget-object v0, Lrhw;->a:Ljava/lang/ThreadLocal;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto :goto_13

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    check-cast p1, Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    :goto_13
    goto/32 :goto_a

    nop

    nop

    :goto_14
    add-float/2addr v1, v0

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

    :goto_15
    goto/32 :goto_25

    nop

    :goto_16
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_1

    nop

    goto/32 :goto_25

    nop

    nop

    :cond_1
    goto/32 :goto_24

    nop

    :goto_18
    invoke-virtual {v1, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    goto/32 :goto_21

    nop

    nop

    :goto_19
    invoke-virtual {p0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :goto_1a
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_1b
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p2, p0, v0, v1, p1}, Landroid/graphics/Rect;->set(IIII)V

    goto/32 :goto_1b

    nop

    nop

    :goto_1e
    const/high16 v0, 0x3f000000    # 0.5f

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_1f
    iget v2, p1, Landroid/graphics/RectF;->right:F

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_20
    sget-object p0, Lrhw;->b:Ljava/lang/ThreadLocal;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_21
    iget p0, p1, Landroid/graphics/RectF;->left:F

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_22
    add-float/2addr p0, v0

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_23
    new-instance p1, Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_26
    float-to-int p1, p1

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

    :goto_27
    iget v1, p1, Landroid/graphics/RectF;->top:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_28
    add-float/2addr p1, v0

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_29
    add-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    float-to-int v1, v2

    nop

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

    :goto_2b
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    float-to-int p0, p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_30
    if-eqz p1, :cond_2

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

    :cond_2
    goto/32 :goto_23

    nop

    nop

    :goto_31
    const v1, 0x9

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop
.end method

.method private static b(Landroid/view/ViewParent;Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 2

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_0
    int-to-float v0, v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p2, p0, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    :goto_3
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_4
    int-to-float p0, p0

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

    :goto_5
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p2, p0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :goto_a
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    int-to-float v0, v0

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_c
    neg-int p0, p0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_e
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_10
    check-cast v0, Landroid/view/View;

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

    nop

    :goto_11
    const v0, 0x17

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_12
    int-to-float p0, p0

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_13
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result p0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_15
    instance-of v1, v0, Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_16
    if-eqz p0, :cond_0

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_17
    if-nez v1, :cond_1

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_1
    goto/32 :goto_1f

    nop

    nop

    :goto_18
    invoke-static {p0, v0, p2}, Lrhw;->b(Landroid/view/ViewParent;Landroid/view/View;Landroid/graphics/Matrix;)V

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_19
    return-void

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_7

    nop

    :goto_1c
    invoke-virtual {p2, p0, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1e
    const v1, 0xb

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-ne v0, p0, :cond_2

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_10

    nop

    nop

    :goto_20
    neg-int v0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_21
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_6

    nop

    :goto_22
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method
