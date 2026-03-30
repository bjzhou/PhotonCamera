.class public final Liaz;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PG"


# instance fields
.field final synthetic a:Liac;

.field final synthetic b:Landroid/content/res/Resources;

.field final synthetic c:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;


# direct methods
.method public constructor <init>(Liac;Landroid/content/res/Resources;Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Liaz;->a:Liac;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    iput-object p3, p0, Liaz;->c:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Liaz;->b:Landroid/content/res/Resources;

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

    :goto_4
    return-void

    nop
.end method


# virtual methods
.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

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

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {v0, p1}, Liac;->l(F)V

    goto/32 :goto_1e

    nop

    nop

    :goto_3
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_4
    const v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_22

    nop

    nop

    :goto_7
    iget-object v0, p0, Liaz;->a:Liac;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {p1, v0}, Liac;->o(I)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

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
    iget-object p1, p0, Liaz;->a:Liac;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_b
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p1, p0, Liaz;->a:Liac;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_d
    iget-object p1, p0, Liaz;->a:Liac;

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_e
    iget-object v0, p0, Liaz;->a:Liac;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Liaz;->a:Liac;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_12
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_14
    const/high16 v0, 0x40000000    # 2.0f

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object p1, p0, Liaz;->b:Landroid/content/res/Resources;

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

    :goto_16
    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->invalidate()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v0, -0x1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v0, 0x16

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v1, 0x7f0701de

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1a
    const v0, 0x7f0701da

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_1b
    iget-object p1, p0, Liaz;->b:Landroid/content/res/Resources;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_1c
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_1d
    const v1, 0x7f0701dd

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object p1, p0, Liaz;->b:Landroid/content/res/Resources;

    nop

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

    :goto_1f
    invoke-interface {p1, v0}, Liac;->j(I)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_21
    invoke-interface {v0, p1}, Liac;->k(F)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_23
    invoke-interface {p1, v0, v0}, Liac;->g(FF)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-interface {v0, p1}, Liac;->n(F)V

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_25
    iget-object p0, p0, Liaz;->c:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_26
    div-float/2addr p1, v0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop
.end method
