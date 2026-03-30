.class public final Lier;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PG"


# instance fields
.field final synthetic a:F

.field final synthetic b:Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;F)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iput p2, p0, Lier;->a:F

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lier;->b:Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    :goto_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lier;->b:Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {v0}, Liet;->a()V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_5
    iget p1, p0, Lier;->a:F

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

    :goto_6
    return-void

    nop

    nop

    :goto_7
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_8
    const v1, 0x7f0600d6

    nop

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

    :goto_9
    invoke-virtual {p0}, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->invalidate()V

    :goto_a
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    iget-object p1, p0, Lier;->b:Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

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

    :goto_d
    const v0, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_e
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_f

    nop

    :goto_f
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_5

    nop

    nop

    :goto_11
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iput v0, p1, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->r:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-eqz p1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    cmpl-float p1, p1, v0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p1, p1, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->k:Ljava/util/Set;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_18
    goto/16 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1a
    const/4 v0, 0x2

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1c
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1d
    iget-object p1, p0, Lier;->b:Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const v1, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_20
    iget-object p1, p1, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->b:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v0, p1, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->g:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_22
    check-cast v0, Liet;

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

    :goto_23
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method
