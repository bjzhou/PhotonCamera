.class public final Lnna;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;

.field public final b:Landroid/widget/ImageView;

.field public final c:Landroid/widget/ImageView;

.field public final d:Landroid/content/res/Resources;

.field public e:Landroid/view/MotionEvent;

.field public f:F

.field public g:F

.field public h:Z

.field public i:Z

.field public final j:F


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;)V
    .locals 2

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p1, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->b:Landroid/widget/ImageView;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_2
    iput-object v0, p0, Lnna;->c:Landroid/widget/ImageView;

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

    nop

    :goto_3
    const v1, 0x7f070a77

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

    nop

    :goto_4
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x7f070a96

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_7
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

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

    :goto_8
    iput p1, p0, Lnna;->j:F

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_9
    iput-object p1, p0, Lnna;->d:Landroid/content/res/Resources;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_a
    int-to-float p1, v0

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

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_c
    const v1, 0x7f070a8e

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_d
    div-int/lit8 v1, v1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_e
    sub-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput-boolean v0, p0, Lnna;->i:Z

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput-object p1, p0, Lnna;->a:Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;

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

    :goto_11
    if-lez v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_12
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_17
    iput-object v0, p0, Lnna;->b:Landroid/widget/ImageView;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_18
    const v1, 0x15

    nop

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

    nop

    :goto_19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v0, p1, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->a:Landroid/widget/ImageView;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1c
    add-int/2addr v0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1d
    const v0, 0x1c

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1e
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop
.end method

.method public static final c(FFF)F
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1
    const v1, 0x1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x1f

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    cmpg-float v1, p0, v0

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

    :goto_4
    return p0

    nop

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

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

    :goto_a
    return p1

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

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

    :goto_d
    if-gez p2, :cond_1

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

    :goto_e
    if-lez v1, :cond_2

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_f
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_10
    move p0, v0

    nop

    nop

    :goto_11
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    nop

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

    :goto_13
    cmpl-float p2, p0, p1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lnna;->a:Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_8
    const v0, 0x20

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_9
    iput-object v0, p0, Lnna;->e:Landroid/view/MotionEvent;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->getVisibility()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_c
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :goto_f
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->d:Landroid/animation/AnimatorSet;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->d:Landroid/animation/AnimatorSet;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->e:Landroid/animation/ObjectAnimator;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_16
    if-ne v0, v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_1
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/16 v1, 0x8

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_18
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_2
    goto/32 :goto_14

    nop

    nop

    nop

    nop
.end method

.method public final b(Z)V
    .locals 7

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_0
    iget-object v1, p0, Lnna;->c:Landroid/widget/ImageView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_1
    iget v1, v0, Landroid/graphics/Point;->x:I

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    int-to-float v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int/2addr v1, v2

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p1, 0x0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v1, p0, Lnna;->c:Landroid/widget/ImageView;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_6
    cmpg-float v0, v2, v0

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_8
    invoke-static {v1}, Lnzk;->V(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_9
    invoke-static {v0}, Lnzk;->V(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_a
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_b
    int-to-float v0, v0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_c
    iget-object v0, p0, Lnna;->e:Landroid/view/MotionEvent;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_d
    iget v0, v1, Landroid/graphics/Point;->y:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    :goto_f
    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_10
    invoke-static {v1}, Lnzk;->V(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_11
    const v1, 0x7f0802b5

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_12
    iput-boolean p1, p0, Lnna;->h:Z

    nop

    nop

    :goto_13
    goto/32 :goto_33

    nop

    nop

    :goto_14
    iget-object v0, p0, Lnna;->a:Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_15
    iget-boolean p1, p0, Lnna;->h:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_16
    invoke-static {v0}, Lnzk;->V(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget v1, v1, Landroid/graphics/Point;->y:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v6, 0x1

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v1, p0, Lnna;->b:Landroid/widget/ImageView;

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_1b
    int-to-float v3, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_1c
    const v1, 0x7f0802b4

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    cmpg-float v0, v0, v2

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

    :goto_1e
    int-to-float v1, v1

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v4, p0, Lnna;->a:Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_20
    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_21
    add-int/2addr v2, v4

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_22
    cmpg-float v1, v0, v1

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_23
    iget-object v4, v4, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->h:Lnbh;

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_24
    if-eqz p1, :cond_2

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

    :cond_2
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_25
    if-nez p1, :cond_3

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_77

    nop

    nop

    :goto_26
    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_27
    int-to-float v0, v0

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_28
    int-to-float v1, v1

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_29
    cmpl-float v0, v2, v0

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

    :goto_2a
    if-gez v0, :cond_4

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :cond_4
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v0, v0, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->d:Landroid/animation/AnimatorSet;

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_2c
    const v0, 0x5

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_2d
    iget-object v0, p0, Lnna;->c:Landroid/widget/ImageView;

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_2e
    div-int/2addr v2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2f
    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    :goto_30
    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_31
    iget-object v0, p0, Lnna;->d:Landroid/content/res/Resources;

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

    :goto_32
    iget v3, v1, Landroid/graphics/Point;->x:I

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_33
    return-void

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_30

    nop

    nop

    :goto_35
    iget-boolean v0, p0, Lnna;->i:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_36
    int-to-float v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_37
    iget v0, v1, Landroid/graphics/Point;->y:I

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

    :goto_38
    iget v0, v0, Landroid/graphics/Point;->y:I

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iget-object v0, p0, Lnna;->c:Landroid/widget/ImageView;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3a
    if-nez p1, :cond_5

    nop

    goto/32 :goto_41

    nop

    :cond_5
    :goto_3b
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object v1, p0, Lnna;->c:Landroid/widget/ImageView;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iget-object v4, p0, Lnna;->b:Landroid/widget/ImageView;

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-static {v1}, Lnzk;->V(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_3f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_40
    return-void

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_15

    nop

    nop

    :goto_42
    cmpg-float v0, v2, v0

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_43
    if-lez v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    iget v2, v0, Landroid/graphics/Point;->y:I

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_45
    if-nez v0, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :cond_7
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iget-boolean p1, p0, Lnna;->h:Z

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_47
    if-lez v1, :cond_8

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_48
    if-ne v4, v3, :cond_9

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :cond_9
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_49
    sub-int/2addr v1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_4a
    if-gez v0, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :cond_a
    :goto_4b
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_4c
    iget v0, v0, Landroid/graphics/Point;->y:I

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    iget-object v1, p0, Lnna;->c:Landroid/widget/ImageView;

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    :goto_4e
    if-lez v0, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    :cond_b
    goto/32 :goto_79

    nop

    :goto_4f
    int-to-float v3, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    cmpl-float v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_51
    cmpg-float v0, v0, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_52
    if-ne v4, v6, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :cond_c
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-virtual {v4}, Lnbh;->ordinal()I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    div-int/2addr v4, v3

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_55
    add-int/2addr v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_56
    iget-object v4, p0, Lnna;->c:Landroid/widget/ImageView;

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_57
    cmpg-float v3, v3, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_58
    iget-object v0, p0, Lnna;->d:Landroid/content/res/Resources;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_59
    iget-object p1, p0, Lnna;->c:Landroid/widget/ImageView;

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    goto/16 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    goto/32 :goto_2d

    nop

    nop

    :goto_5c
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    iget-object v1, p0, Lnna;->c:Landroid/widget/ImageView;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    iget v1, v1, Landroid/graphics/Point;->y:I

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    if-lez v3, :cond_d

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_69

    nop

    nop

    nop

    :goto_61
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_62
    goto/16 :goto_4b

    nop

    :goto_63
    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_64
    iget v0, v0, Landroid/graphics/Point;->y:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_65
    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_66
    const/4 v3, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    sub-int/2addr v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_68
    iget-object v2, p0, Lnna;->c:Landroid/widget/ImageView;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_69
    iget v3, v1, Landroid/graphics/Point;->x:I

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-static {v0}, Lnzk;->V(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    add-int/2addr v3, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_6c
    int-to-float v2, v2

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_6d
    if-lez v0, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    :cond_e
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_6e
    iput-boolean v6, p0, Lnna;->h:Z

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_70
    iget-object v0, p0, Lnna;->b:Landroid/widget/ImageView;

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_71
    if-lez v0, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_72
    iget-object v2, p0, Lnna;->b:Landroid/widget/ImageView;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_73
    add-int/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    :goto_74
    const v1, 0x1f

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :goto_75
    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_76
    int-to-float v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_77
    iget-object p1, p0, Lnna;->c:Landroid/widget/ImageView;

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_78
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_79
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_7a
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_7c
    int-to-float v0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_7d
    if-eqz v0, :cond_10

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop
.end method
