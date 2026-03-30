.class public Lcom/google/android/apps/camera/progressoverlay/ProgressOverlay;
.super Landroid/widget/FrameLayout;
.source "PG"


# instance fields
.field public a:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private b:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_1

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
.end method


# virtual methods
.method public final a()V
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/progressoverlay/ProgressOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

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

    :goto_3
    const v1, 0x11

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x7f080334

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

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_d

    nop

    nop

    :goto_8
    goto/32 :goto_7

    nop

    :goto_9
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

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

    :goto_b
    const v0, 0x7f0b0255

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    const v0, 0x14

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_9

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_f
    iput-object v0, p0, Lcom/google/android/apps/camera/progressoverlay/ProgressOverlay;->b:Landroid/widget/ImageView;

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

    nop

    :goto_10
    check-cast v0, Landroid/widget/ImageView;

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_11
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_12
    iput-object v0, p0, Lcom/google/android/apps/camera/progressoverlay/ProgressOverlay;->a:Landroid/graphics/drawable/AnimatedVectorDrawable;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_13
    check-cast v0, Landroid/view/LayoutInflater;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0}, Lcom/google/android/apps/camera/progressoverlay/ProgressOverlay;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object p0, p0, Lcom/google/android/apps/camera/progressoverlay/ProgressOverlay;->b:Landroid/widget/ImageView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_16
    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_17
    const v1, 0x7f0e0099

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0}, Lcom/google/android/apps/camera/progressoverlay/ProgressOverlay;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1a
    const-string v1, "layout_inflater"

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p0}, Lcom/google/android/apps/camera/progressoverlay/ProgressOverlay;->removeAllViewsInLayout()V

    goto/32 :goto_17

    nop

    nop
.end method

.method public final b()V
    .locals 2

    goto/32 :goto_19

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/progressoverlay/ProgressOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object v0, p0, Lcom/google/android/apps/camera/progressoverlay/ProgressOverlay;->b:Landroid/widget/ImageView;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_18

    nop

    :goto_3
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object v0, p0, Lcom/google/android/apps/camera/progressoverlay/ProgressOverlay;->a:Landroid/graphics/drawable/AnimatedVectorDrawable;

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

    :goto_6
    check-cast v0, Landroid/view/LayoutInflater;

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lcom/google/android/apps/camera/progressoverlay/ProgressOverlay;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x7f0e0120

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

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

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_b
    check-cast v0, Landroid/widget/ImageView;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x7f0b037d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_e
    const-string v1, "layout_inflater"

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_10
    iget-object p0, p0, Lcom/google/android/apps/camera/progressoverlay/ProgressOverlay;->b:Landroid/widget/ImageView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_13
    invoke-virtual {p0}, Lcom/google/android/apps/camera/progressoverlay/ProgressOverlay;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

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

    :goto_15
    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

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
    const v1, 0x7f0803c0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_17
    return-void

    nop

    :goto_18
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_19
    const v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1a
    const v1, 0x12

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final onFinishInflate()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/apps/camera/progressoverlay/ProgressOverlay;->b()V

    goto/32 :goto_1

    nop

    nop
.end method
