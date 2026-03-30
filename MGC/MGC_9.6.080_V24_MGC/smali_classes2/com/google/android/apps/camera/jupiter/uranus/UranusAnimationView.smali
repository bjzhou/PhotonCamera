.class public Lcom/google/android/apps/camera/jupiter/uranus/UranusAnimationView;
.super Landroid/view/View;
.source "PG"


# instance fields
.field public a:Ljbs;

.field public b:Lnbh;

.field public c:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lcom/google/android/apps/camera/jupiter/uranus/UranusAnimationView;->b:Lnbh;

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

    :goto_1
    sget-object p1, Lnbh;->a:Lnbh;

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
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lcom/google/android/apps/camera/jupiter/uranus/UranusAnimationView;->c:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    new-instance p1, Landroid/graphics/Rect;

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

    :goto_5
    return-void

    nop

    nop

    nop

    :goto_6
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    goto/32 :goto_8

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

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_3
    iget-object v0, p0, Ljbs;->i:Lryb;

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

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    const v1, 0x8

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x7

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

    :goto_9
    iget-object v0, p0, Lcom/google/android/apps/camera/jupiter/uranus/UranusAnimationView;->a:Ljbs;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_b
    new-instance v1, Lgbt;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {v0, v1}, Lj$/util/Collection$-EL;->forEach(Ljava/util/Collection;Ljava/util/function/Consumer;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v3, 0x0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_f
    invoke-direct {v1, p0, p1, v2, v3}, Lgbt;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_c

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    :goto_11
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_12
    const/16 v2, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_11

    nop

    :goto_14
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object p0, p0, Lcom/google/android/apps/camera/jupiter/uranus/UranusAnimationView;->a:Ljbs;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_16
    if-eqz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method protected final onLayout(ZIIII)V
    .locals 0

    goto/32 :goto_12

    nop

    nop

    :goto_0
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/apps/camera/jupiter/uranus/UranusAnimationView;->getMeasuredHeight()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1e

    nop

    nop

    :goto_4
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/jupiter/uranus/UranusAnimationView;->setPivotX(F)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/jupiter/uranus/UranusAnimationView;->setRotation(F)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez p2, :cond_0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

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

    :goto_8
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_9
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    :goto_a
    div-float/2addr p1, p2

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_b
    int-to-float p1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_c
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p2, p0, Lcom/google/android/apps/camera/jupiter/uranus/UranusAnimationView;->c:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/jupiter/uranus/UranusAnimationView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_10
    goto/32 :goto_13

    nop

    nop

    :goto_11
    const/high16 p1, -0x3d4c0000    # -90.0f

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Lcom/google/android/apps/camera/jupiter/uranus/UranusAnimationView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0}, Lcom/google/android/apps/camera/jupiter/uranus/UranusAnimationView;->getMeasuredWidth()I

    move-result p1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object p2, p0, Lcom/google/android/apps/camera/jupiter/uranus/UranusAnimationView;->c:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_15
    div-float/2addr p1, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_17
    sget-object p2, Lnbh;->b:Lnbh;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-nez p1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p1}, Lnbh;->d()Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_1a
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

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

    :goto_1b
    invoke-virtual {p1, p2}, Lnbh;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/jupiter/uranus/UranusAnimationView;->setRotation(F)V

    goto/32 :goto_7

    nop

    nop

    :goto_1d
    invoke-virtual {p1, p2}, Lnbh;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object p1, p0, Lcom/google/android/apps/camera/jupiter/uranus/UranusAnimationView;->b:Lnbh;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    int-to-float p1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/jupiter/uranus/UranusAnimationView;->setPivotY(F)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_21
    sget-object p2, Lnbh;->c:Lnbh;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const/high16 p2, 0x40000000    # 2.0f

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_23
    iget-object p1, p0, Lcom/google/android/apps/camera/jupiter/uranus/UranusAnimationView;->b:Lnbh;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_24
    iget-object p1, p0, Lcom/google/android/apps/camera/jupiter/uranus/UranusAnimationView;->b:Lnbh;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/jupiter/uranus/UranusAnimationView;->setRotation(F)V

    :goto_26
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_28
    if-nez p1, :cond_3

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_3
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_29
    if-nez p1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2a
    const/high16 p1, 0x42b40000    # 90.0f

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop
.end method
