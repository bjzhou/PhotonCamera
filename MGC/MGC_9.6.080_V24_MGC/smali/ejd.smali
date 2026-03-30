.class final Lejd;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PG"

# interfaces
.implements Lejm;


# instance fields
.field private final a:Landroid/view/View;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean v0, p0, Lejd;->b:Z

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    const/4 v0, 0x0

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

    :goto_4
    iput-object p1, p0, Lejd;->a:Landroid/view/View;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lejp;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop
.end method

.method public final b(Lejp;)V
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

.method public final c()V
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x8

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

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

    nop

    nop

    :goto_2
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lejd;->a:Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_7
    goto :goto_5

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lejd;->a:Landroid/view/View;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_17

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    :goto_c
    const v0, 0xe

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_d
    const v1, 0x7f0b04d4

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Lejd;->a:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_10
    sget v1, Lekb;->b:I

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

    :goto_11
    if-lez v0, :cond_1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    :goto_12
    invoke-virtual {v0}, Landroid/view/View;->getTransitionAlpha()F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_14
    add-int v0, v0, v1

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

    :goto_15
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

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
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d()V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x7f0b04d4

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

    :goto_2
    return-void

    nop

    :goto_3
    goto/32 :goto_5

    nop

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

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_5
    goto/32 :goto_a

    nop

    :goto_6
    const v0, 0x7

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

    :goto_7
    iget-object p0, p0, Lejd;->a:Landroid/view/View;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_c
    const/4 v1, 0x0

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

    :goto_d
    const v1, 0x4

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e(Lejp;)V
    .locals 0

    goto/32 :goto_0

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

.method public final synthetic f(Lejp;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Ldwb;->j(Lejm;Lejp;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final g(Lejp;)V
    .locals 0

    goto/32 :goto_0

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

.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lejd;->a:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    const/high16 p1, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Landroid/view/View;->setTransitionAlpha(F)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sget p1, Lekb;->b:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    return-void

    nop
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

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

    :goto_1
    invoke-virtual {p0, p1, v0}, Lejd;->onAnimationEnd(Landroid/animation/Animator;Z)V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;Z)V
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

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
    const v1, 0xd

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2
    sget p1, Lekb;->b:I

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0xd

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
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

    :goto_5
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-nez p1, :cond_1

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-eqz p2, :cond_2

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_2
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0, p1}, Landroid/view/View;->setTransitionAlpha(F)V

    :goto_c
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v1, 0x0

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

    :goto_e
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

    :goto_f
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object p1, p0, Lejd;->a:Landroid/view/View;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_12
    iget-object p0, p0, Lejd;->a:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_13
    const/high16 p1, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_14
    iget-boolean p1, p0, Lejd;->b:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :goto_16
    goto/32 :goto_a

    nop

    nop

    nop
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :goto_1
    goto/32 :goto_d

    nop

    nop

    :goto_2
    iget-object p1, p0, Lejd;->a:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-eqz p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    iget-object p1, p0, Lejd;->a:Landroid/view/View;

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

    :goto_5
    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    const/4 p1, 0x2

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 p1, 0x1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_8
    if-nez p1, :cond_1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    :goto_9
    const/4 v0, 0x0

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

    :goto_a
    iget-object p0, p0, Lejd;->a:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_b
    iput-boolean p1, p0, Lejd;->b:Z

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p1}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result p1

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

    nop

    :goto_d
    return-void

    nop
.end method
