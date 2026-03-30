.class public final Lmcl;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PG"


# instance fields
.field final synthetic a:I

.field public final synthetic b:Lcom/google/android/apps/camera/smarts/SmartsChipView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/smarts/SmartsChipView;I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lmcl;->b:Lcom/google/android/apps/camera/smarts/SmartsChipView;

    nop

    nop

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

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput p2, p0, Lmcl;->a:I

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
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1
    iget-object p1, p0, Lmcl;->b:Lcom/google/android/apps/camera/smarts/SmartsChipView;

    nop

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

    :goto_2
    iget-object p1, p0, Lmcl;->b:Lcom/google/android/apps/camera/smarts/SmartsChipView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/apps/camera/smarts/SmartsChipView;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    const/4 v1, 0x5

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_9
    if-eqz p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p1, p0, Lmcl;->b:Lcom/google/android/apps/camera/smarts/SmartsChipView;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p1, p1, Lcom/google/android/apps/camera/smarts/SmartsChipView;->a:Landroid/widget/FrameLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_c
    invoke-virtual {p1, p0}, Lcom/google/android/apps/camera/smarts/SmartsChipView;->setVisibility(I)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_6

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_11

    nop

    nop

    :goto_11
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_12
    new-instance v0, Lmas;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_13
    iget p1, p0, Lmcl;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_14
    iget p0, p0, Lmcl;->a:I

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_15
    if-eqz p1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_3
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_16
    const v1, 0x15

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p1}, Lcom/google/android/apps/camera/smarts/SmartsChipView;->getVisibility()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_18
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->isAccessibilityFocused()Z

    move-result p1

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

    :goto_19
    const v0, 0x7

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_1a
    invoke-direct {v0, p0, v1}, Lmas;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1b
    const-wide/16 v1, 0x64

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1c
    iget-object p1, p0, Lmcl;->b:Lcom/google/android/apps/camera/smarts/SmartsChipView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop
.end method
