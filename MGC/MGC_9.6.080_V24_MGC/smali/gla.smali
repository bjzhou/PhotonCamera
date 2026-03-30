.class public final Lgla;
.super Landroid/widget/FrameLayout;
.source "PG"


# instance fields
.field public final a:Landroid/widget/TextView;

.field public final b:Landroid/widget/TextView;

.field public final c:Landroid/animation/AnimatorSet;

.field public final d:Landroid/animation/AnimatorSet;

.field public final e:Landroid/view/animation/Interpolator;

.field public final f:Landroid/view/animation/Interpolator;

.field public g:Landroid/animation/AnimatorSet;

.field private final h:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    goto/32 :goto_1a

    nop

    nop

    :goto_0
    invoke-virtual {v0, v1}, Lpic;->D(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0}, Lpic;->R(Landroid/view/View;)Lpic;

    move-result-object v0

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

    :goto_2
    check-cast v1, Landroid/widget/LinearLayout;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object v0, p0, Lgla;->b:Landroid/widget/TextView;

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

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    :goto_5
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x10c000d

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_7
    invoke-virtual {v0, v1}, Lpic;->D(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x14

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

    nop

    :goto_9
    const v1, 0x7f020009

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_a
    check-cast v0, Landroid/widget/TextView;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-object v1, p0, Lgla;->a:Landroid/widget/TextView;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x10c000e

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0, v1}, Lpic;->D(I)Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_14
    iput-object v0, p0, Lgla;->f:Landroid/view/animation/Interpolator;

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_15
    const v1, 0x7f0e0034

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

    :goto_16
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_17
    check-cast v0, Landroid/animation/AnimatorSet;

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_18
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_19
    const v1, 0x7f0b009b

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1a
    const v0, 0x1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1b
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_5

    nop

    nop

    :goto_1e
    iput-object v0, p0, Lgla;->e:Landroid/view/animation/Interpolator;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p0}, Lgla;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_20
    const v1, 0x7f0b009c

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_21
    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_22
    rem-int v0, v0, v1

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

    :goto_23
    const v1, 0x7f020008

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iput-object v1, p0, Lgla;->h:Landroid/widget/LinearLayout;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_25
    invoke-virtual {p0}, Lgla;->b()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const v1, 0x7f0b009a

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_27
    iput-object v0, p0, Lgla;->c:Landroid/animation/AnimatorSet;

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_28
    check-cast v0, Landroid/animation/AnimatorSet;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const-string v0, "layout_inflater"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto/32 :goto_1

    nop

    nop

    :goto_2b
    check-cast v0, Landroid/view/LayoutInflater;

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_2c
    check-cast v1, Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2d
    iput-object v0, p0, Lgla;->d:Landroid/animation/AnimatorSet;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p0}, Lgla;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_30
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop
.end method

.method static bridge synthetic a(Lgla;)V
    .locals 1

    goto/32 :goto_2

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

    :goto_1
    iput-object v0, p0, Lgla;->g:Landroid/animation/AnimatorSet;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

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
.method final b()V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    :goto_0
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1
    const/16 v1, 0x11

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_6

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

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_5
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lgla;->h:Landroid/widget/LinearLayout;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0xf

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x5

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

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_7

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Lgla;->forceLayout()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_f
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method protected final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lgla;->b()V

    goto/32 :goto_3

    nop

    nop

    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    return-void

    nop

    nop
.end method
