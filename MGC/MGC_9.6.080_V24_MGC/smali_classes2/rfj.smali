.class public final Lrfj;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    filled-new-array {v0}, [I

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    sput-object v0, Lrfj;->a:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    const v0, 0x1010448

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static a(Landroid/view/View;F)V
    .locals 11

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v3, 0x1

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
    new-array v5, v3, [F

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_3
    new-array p1, v6, [I

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

    :goto_4
    const v3, -0x7f04064f

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v1, v2, v0}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_8
    int-to-long v9, v0

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_9
    const-wide/16 v2, 0x0

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

    :goto_a
    new-array v2, v3, [F

    nop

    nop

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

    :goto_b
    goto/32 :goto_1f

    nop

    :goto_c
    invoke-static {p0, v8, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

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
    invoke-direct {v1}, Landroid/animation/StateListAnimator;-><init>()V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-void

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

    :goto_10
    invoke-virtual {p1, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_11
    invoke-static {p0, v8, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_12
    filled-new-array {v4, v2, v3}, [I

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    :goto_15
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v1, v0, p1}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    goto/32 :goto_3

    nop

    nop

    :goto_17
    invoke-static {p0, v8, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

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

    :goto_18
    const v4, 0x101009e

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_1a
    const v0, 0x7

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_1b
    const v2, 0x7f04064e

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1c
    new-array v0, v3, [F

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1d
    filled-new-array {v4}, [I

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_f

    nop

    nop

    :goto_1f
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_20
    const-string v8, "elevation"

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_21
    new-instance v1, Landroid/animation/StateListAnimator;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p0, v1}, Landroid/view/View;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v5, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_24
    const v1, 0x1e

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_25
    const/4 v7, 0x0

    nop

    nop

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

    :goto_26
    aput v7, v0, v6

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_27
    aput v7, v5, v6

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

    nop

    :goto_28
    invoke-virtual {v1, p1, v0}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const v1, 0x7f0c0009

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_2a
    aput p1, v2, v6

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop
.end method
