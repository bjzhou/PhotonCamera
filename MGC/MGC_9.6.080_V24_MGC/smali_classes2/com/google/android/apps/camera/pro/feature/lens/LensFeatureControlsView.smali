.class public Lcom/google/android/apps/camera/pro/feature/lens/LensFeatureControlsView;
.super Landroid/widget/FrameLayout;
.source "PG"


# static fields
.field private static final f:Lj$/time/Duration;

.field private static final g:Lj$/time/Duration;


# instance fields
.field public a:Loyn;

.field public b:Landroid/view/View;

.field public c:Landroid/view/View;

.field public d:Landroid/view/View;

.field public e:Z

.field private h:Landroid/view/GestureDetector;

.field private i:Z

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-wide/16 v0, 0x5dc

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_2
    const-wide/16 v0, 0x64

    nop

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

    nop

    :goto_3
    invoke-static {v0, v1}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

    move-result-object v0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_4
    add-int v0, v0, v1

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
    rem-int v0, v0, v1

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

    :goto_6
    sput-object v0, Lcom/google/android/apps/camera/pro/feature/lens/LensFeatureControlsView;->g:Lj$/time/Duration;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v0, v1}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    :goto_9
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_a
    const v0, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_b
    const v1, 0x18

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

    :goto_c
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_f
    sput-object v0, Lcom/google/android/apps/camera/pro/feature/lens/LensFeatureControlsView;->f:Lj$/time/Duration;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    const/4 p1, 0x0

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

    :goto_1
    iput-boolean p1, p0, Lcom/google/android/apps/camera/pro/feature/lens/LensFeatureControlsView;->i:Z

    nop

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

    nop

    :goto_2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-boolean p1, p0, Lcom/google/android/apps/camera/pro/feature/lens/LensFeatureControlsView;->e:Z

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    iput-boolean p1, p0, Lcom/google/android/apps/camera/pro/feature/lens/LensFeatureControlsView;->j:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p1, p0, Lcom/google/android/apps/camera/pro/feature/lens/LensFeatureControlsView;->d:Landroid/view/View;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop
.end method

.method private final f875135777c17da3cef2ea6eeff5be29m(Landroid/view/MotionEvent;)Z
    .locals 2

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    int-to-float v1, v1

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

    :goto_2
    cmpg-float p0, p1, p0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_3
    int-to-float v1, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    int-to-float p0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_6
    cmpl-float v0, v0, v1

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0xa

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_8
    if-lez p0, :cond_1

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_1
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_a
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_b
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

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

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Lcom/google/android/apps/camera/pro/feature/lens/LensFeatureControlsView;->b:Landroid/view/View;

    nop

    nop

    goto/32 :goto_10

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

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_12

    nop

    :goto_f
    iget-object v1, p0, Lcom/google/android/apps/camera/pro/feature/lens/LensFeatureControlsView;->b:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

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

    :goto_11
    cmpg-float v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_20

    nop

    :goto_13
    goto/32 :goto_1c

    nop

    nop

    :goto_14
    iget-object v1, p0, Lcom/google/android/apps/camera/pro/feature/lens/LensFeatureControlsView;->b:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_15
    return p0

    nop

    :goto_16
    goto/32 :goto_a

    nop

    nop

    :goto_17
    if-gez v0, :cond_3

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_3
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_18
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_13

    nop

    :goto_1a
    const v0, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1b
    cmpl-float v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1d
    int-to-float v1, v1

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

    :goto_1e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    return p0

    nop

    :goto_20
    goto/32 :goto_19

    nop

    nop

    :goto_21
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    nop

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

    :goto_22
    if-gez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_4
    goto/32 :goto_1e

    nop

    nop

    :goto_23
    iget-object v1, p0, Lcom/google/android/apps/camera/pro/feature/lens/LensFeatureControlsView;->b:Landroid/view/View;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_25
    add-int v0, v0, v1

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
.end method


# virtual methods
.method public final a()V
    .locals 6

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

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

    :goto_1
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

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

    :goto_2
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v1}, Lj$/time/Duration;->toMillis()J

    move-result-wide v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v1}, Lj$/time/Duration;->toMillis()J

    move-result-wide v4

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v1, 0x0

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

    :goto_6
    invoke-interface {v1, v0}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_8
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lcom/google/android/apps/camera/pro/feature/lens/LensFeatureControlsView;->c:Landroid/view/View;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

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
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_f
    sget-object v1, Lcom/google/android/apps/camera/pro/feature/lens/LensFeatureControlsView;->f:Lj$/time/Duration;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Lcom/google/android/apps/camera/pro/feature/lens/LensFeatureControlsView;->c:Landroid/view/View;

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

    nop

    nop

    :goto_12
    goto/32 :goto_1d

    nop

    nop

    :goto_13
    iput-object v0, p0, Lcom/google/android/apps/camera/pro/feature/lens/LensFeatureControlsView;->d:Landroid/view/View;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v1, p0, Lcom/google/android/apps/camera/pro/feature/lens/LensFeatureControlsView;->a:Loyn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_15
    const-wide/16 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

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

    :goto_19
    const/high16 v4, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_1b
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    :goto_1c
    goto/32 :goto_d

    nop

    :goto_1d
    goto/32 :goto_20

    nop

    nop

    :goto_1e
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const v1, 0x15

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_20
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_21
    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v0, p0, Lcom/google/android/apps/camera/pro/feature/lens/LensFeatureControlsView;->c:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_23
    iget-object v0, p0, Lcom/google/android/apps/camera/pro/feature/lens/LensFeatureControlsView;->b:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_24
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_25
    iput-boolean v0, p0, Lcom/google/android/apps/camera/pro/feature/lens/LensFeatureControlsView;->e:Z

    nop

    goto/32 :goto_14

    nop

    nop

    nop
.end method

.method protected final onFinishInflate()V
    .locals 3

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/apps/camera/pro/feature/lens/LensFeatureControlsView;->getContext()Landroid/content/Context;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1
    iput-object v0, p0, Lcom/google/android/apps/camera/pro/feature/lens/LensFeatureControlsView;->b:Landroid/view/View;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    :goto_4
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    :goto_6
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

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

    :goto_8
    iput-object v0, p0, Lcom/google/android/apps/camera/pro/feature/lens/LensFeatureControlsView;->d:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v0, Landroid/view/GestureDetector;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x7f0b026a

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_b
    iput-object v0, p0, Lcom/google/android/apps/camera/pro/feature/lens/LensFeatureControlsView;->h:Landroid/view/GestureDetector;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {v2, p0}, Llot;-><init>(Lcom/google/android/apps/camera/pro/feature/lens/LensFeatureControlsView;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/pro/feature/lens/LensFeatureControlsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lcom/google/android/apps/camera/pro/feature/lens/LensFeatureControlsView;->b:Landroid/view/View;

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

    :goto_f
    const v0, 0x16

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_12
    const v1, 0x3

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

    :goto_13
    new-instance v2, Llot;

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

    :goto_14
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/pro/feature/lens/LensFeatureControlsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

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

    :goto_16
    const v0, 0x7f0b0269

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_17
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_18
    iput-object v0, p0, Lcom/google/android/apps/camera/pro/feature/lens/LensFeatureControlsView;->c:Landroid/view/View;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    :goto_1
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    goto/32 :goto_3b

    nop

    nop

    :goto_0
    iget-boolean v0, p0, Lcom/google/android/apps/camera/pro/feature/lens/LensFeatureControlsView;->e:Z

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lcom/google/android/apps/camera/pro/feature/lens/LensFeatureControlsView;->d:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_3
    iget-boolean v0, p0, Lcom/google/android/apps/camera/pro/feature/lens/LensFeatureControlsView;->e:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/pro/feature/lens/LensFeatureControlsView;->f875135777c17da3cef2ea6eeff5be29m(Landroid/view/MotionEvent;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_6
    iput-boolean v1, p0, Lcom/google/android/apps/camera/pro/feature/lens/LensFeatureControlsView;->i:Z

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

    :goto_7
    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Lj$/time/Duration;->toMillis()J

    move-result-wide v3

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_9
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v1}, Lj$/time/Duration;->toMillis()J

    move-result-wide v0

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

    :goto_b
    iget-object p1, p0, Lcom/google/android/apps/camera/pro/feature/lens/LensFeatureControlsView;->b:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_c
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :cond_1
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0}, Lj$/time/Duration;->toMillis()J

    move-result-wide v3

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_10
    iget-boolean v0, p0, Lcom/google/android/apps/camera/pro/feature/lens/LensFeatureControlsView;->i:Z

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_12
    iget-object v4, p0, Lcom/google/android/apps/camera/pro/feature/lens/LensFeatureControlsView;->c:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_15
    iget-object v0, p0, Lcom/google/android/apps/camera/pro/feature/lens/LensFeatureControlsView;->h:Landroid/view/GestureDetector;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_16
    sget-object v1, Lcom/google/android/apps/camera/pro/feature/lens/LensFeatureControlsView;->g:Lj$/time/Duration;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-ne v0, v2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :goto_1a
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1b
    iput-boolean v0, p0, Lcom/google/android/apps/camera/pro/feature/lens/LensFeatureControlsView;->j:Z

    nop

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

    nop

    :goto_1c
    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    goto/32 :goto_45

    nop

    nop

    :goto_1d
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_37

    nop

    :goto_1e
    invoke-virtual {v1}, Lj$/time/Duration;->toMillis()J

    move-result-wide v3

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

    :goto_1f
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    neg-float v3, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_21
    if-eqz v0, :cond_4

    nop

    nop

    goto/32 :goto_53

    nop

    :cond_4
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/pro/feature/lens/LensFeatureControlsView;->f875135777c17da3cef2ea6eeff5be29m(Landroid/view/MotionEvent;)Z

    move-result v0

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

    :goto_23
    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_24
    iget-boolean v0, p0, Lcom/google/android/apps/camera/pro/feature/lens/LensFeatureControlsView;->e:Z

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_25
    if-nez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :cond_5
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_27
    if-nez v0, :cond_6

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_15

    nop

    nop

    :goto_28
    iget-boolean v0, p0, Lcom/google/android/apps/camera/pro/feature/lens/LensFeatureControlsView;->j:Z

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_29
    goto :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_2b
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_2c
    if-nez v0, :cond_7

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_4e

    nop

    nop

    :goto_2d
    iget-boolean v0, p0, Lcom/google/android/apps/camera/pro/feature/lens/LensFeatureControlsView;->e:Z

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_30
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p0}, Lcom/google/android/apps/camera/pro/feature/lens/LensFeatureControlsView;->a()V

    :goto_32
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_34
    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_35
    return v1

    nop

    :goto_36
    goto/32 :goto_49

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_39
    if-nez v0, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-direct {v0, p0}, Llou;-><init>(Lcom/google/android/apps/camera/pro/feature/lens/LensFeatureControlsView;)V

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    const v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_3c
    if-eqz v0, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_3d
    if-nez v0, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :cond_a
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    add-int v0, v0, v1

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_40
    sget-object v0, Lcom/google/android/apps/camera/pro/feature/lens/LensFeatureControlsView;->f:Lj$/time/Duration;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_42
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :goto_44
    goto/32 :goto_28

    nop

    nop

    :goto_45
    iget-object p1, p0, Lcom/google/android/apps/camera/pro/feature/lens/LensFeatureControlsView;->c:Landroid/view/View;

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_46
    new-instance v0, Llou;

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    iget-object v3, p0, Lcom/google/android/apps/camera/pro/feature/lens/LensFeatureControlsView;->c:Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iget-boolean v0, p0, Lcom/google/android/apps/camera/pro/feature/lens/LensFeatureControlsView;->e:Z

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

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

    :goto_4a
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {v3, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :goto_4c
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_4d
    neg-float v4, v4

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :goto_50
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_51
    if-eqz v0, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    :cond_b
    goto/32 :goto_0

    nop

    nop

    :goto_52
    goto/16 :goto_32

    nop

    :goto_53
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_54
    neg-float v4, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_55
    if-eq p1, v0, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :cond_c
    :goto_56
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_57
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_58
    iput-boolean v2, p0, Lcom/google/android/apps/camera/pro/feature/lens/LensFeatureControlsView;->i:Z

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    neg-float v3, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_5a
    return v2

    nop

    nop

    :goto_5b
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_5c
    const/4 v0, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    const v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_5e
    iget-object v3, p0, Lcom/google/android/apps/camera/pro/feature/lens/LensFeatureControlsView;->c:Landroid/view/View;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_5f
    if-eqz v0, :cond_d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method
