.class public Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;
.super Landroid/widget/RelativeLayout;
.source "PG"


# instance fields
.field public a:Landroid/widget/ImageView;

.field public b:Landroid/widget/ImageView;

.field public c:Landroid/widget/ImageView;

.field public d:Landroid/animation/AnimatorSet;

.field public e:Landroid/animation/ObjectAnimator;

.field public f:Landroid/widget/ImageView;

.field public g:Z

.field public final h:Lnbh;

.field public i:Landroidx/wear/ambient/AmbientMode$AmbientController;

.field private j:Landroid/animation/AnimatorSet;


# direct methods
.method private final 33f5b80483094659737b73d90f80a8a4m(Landroid/view/View;)Landroid/animation/ObjectAnimator;
    .locals 2

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-array v0, v0, [F

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

    :goto_2
    return-object p0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const-string p0, "translationX"

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p1, p0, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

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

    :goto_7
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance p1, Leac;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    aput p0, v0, v1

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
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_d
    invoke-direct {p1}, Leac;-><init>()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_11
    const v0, 0x1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_12
    const v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_f

    nop

    nop

    :goto_15
    const-wide/16 v0, 0x190

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v0, 0x7f070a96

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

    :goto_18
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_19
    const-wide/16 v0, 0x32

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->h:Lnbh;

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
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    sget-object p1, Lnbh;->a:Lnbh;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->h:Lnbh;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    sget-object p1, Lnbh;->a:Lnbh;

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
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_2

    nop

    nop
.end method

.method private static b(Landroid/view/View;)Landroid/animation/ObjectAnimator;
    .locals 2

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0}, Leac;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    goto/32 :goto_8

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x11

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_5
    sget-object v1, Lcom/google/android/apps/camera/jni/microvideotonemap/EeD/yHEIcF;->JOVzngrfmLyr:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const-wide/16 v0, 0x190

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-wide/16 v0, 0x32

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_8
    return-object p0

    nop

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :goto_9
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b
    new-instance v0, Leac;

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

    :goto_c
    new-array v0, v0, [F

    nop

    nop

    nop

    nop

    fill-array-data v0, :array_0

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_e
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_f
    const/4 v0, 0x2

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_0
    goto/32 :goto_14

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0x2

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_13
    goto/32 :goto_15

    nop

    nop

    :goto_14
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_f

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :goto_2
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->j:Landroid/animation/AnimatorSet;

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

    :goto_4
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-boolean v0, p0, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->g:Z

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final onFinishInflate()V
    .locals 14

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto/32 :goto_4d

    nop

    nop

    :goto_1
    const v1, 0x7f0e01a7

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string v5, "scaleX"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto/32 :goto_21

    nop

    nop

    :goto_5
    iput-object v2, p0, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->j:Landroid/animation/AnimatorSet;

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

    :goto_6
    check-cast v0, Landroid/widget/ImageView;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_7
    invoke-direct {v2}, Leac;-><init>()V

    goto/32 :goto_9a

    nop

    nop

    nop

    :goto_8
    iget-object v11, p0, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->f:Landroid/widget/ImageView;

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

    :goto_9
    invoke-static {v1, v4, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_a
    new-instance v2, Leac;

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v1}, Leac;-><init>()V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {v1, p0}, Lnmz;-><init>(Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v9, p0, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->f:Landroid/widget/ImageView;

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto/32 :goto_7c

    nop

    nop

    :goto_10
    new-array v1, v2, [F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {v8}, Landroid/animation/ArgbEvaluator;-><init>()V

    goto/32 :goto_30

    nop

    nop

    :goto_14
    const v0, 0x7f0b059f

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/32 :goto_5b

    nop

    nop

    :goto_16
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_17
    new-instance v1, Lnmy;

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    :goto_18
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->b:Landroid/widget/ImageView;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {v0, v5, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    nop

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

    :goto_1a
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->d:Landroid/animation/AnimatorSet;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {v1, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    :goto_1d
    iput-object v0, p0, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->f:Landroid/widget/ImageView;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1e
    const v1, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v11, v13}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v8, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->d:Landroid/animation/AnimatorSet;

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v0, v8}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const-string v0, "ZoomLockView:inflate"

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_24
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->j:Landroid/animation/AnimatorSet;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v8, v9}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    new-instance v1, Leac;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iput-object v0, p0, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->e:Landroid/animation/ObjectAnimator;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_29
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->b:Landroid/widget/ImageView;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v12, p0, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->a:Landroid/widget/ImageView;

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_2b
    const v10, 0x7f060b89

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    nop

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

    :goto_2e
    invoke-direct {p0, v10}, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->33f5b80483094659737b73d90f80a8a4m(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v10

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2f
    new-array v2, v2, [F

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_30
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const-string v4, "scaleY"

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v8, v9, v10}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    goto/32 :goto_d

    nop

    nop

    :goto_33
    invoke-static {v12}, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->b(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v12

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v9

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_35
    iput-object v0, p0, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->c:Landroid/widget/ImageView;

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/32 :goto_60

    nop

    nop

    :goto_37
    aput v4, v6, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v0, v9}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3a
    const/high16 v4, 0x3fc00000    # 1.5f

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-direct {v9, p0}, Lnmw;-><init>(Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    new-instance v9, Lngx;

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_3d
    iget-object v10, p0, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->a:Landroid/widget/ImageView;

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

    :goto_3e
    invoke-virtual {v8, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto/32 :goto_3c

    nop

    nop

    :goto_3f
    if-lez v0, :cond_0

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7a

    nop

    :goto_40
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->d:Landroid/animation/AnimatorSet;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_41
    aput v8, v2, v3

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_42
    const v0, 0x7f0b059e

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {v10, v12, v11}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_45
    new-instance v9, Lnmw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    new-instance v1, Lnmz;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_47
    new-array v0, v0, [F

    nop

    fill-array-data v0, :array_0

    goto/32 :goto_58

    nop

    nop

    :goto_48
    invoke-static {v8, v9}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v8

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_49
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->b:Landroid/widget/ImageView;

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_4a
    check-cast v0, Landroid/view/LayoutInflater;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4b
    new-instance v2, Leac;

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

    :goto_4c
    const/16 v10, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_4d
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->e:Landroid/animation/ObjectAnimator;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {v0, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-direct {v2}, Leac;-><init>()V

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_50
    const v0, 0x7f0b0285

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    :goto_51
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_52
    iput-object v13, p0, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->d:Landroid/animation/AnimatorSet;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_53
    aput v8, v1, v3

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_54
    new-instance v8, Leac;

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_56
    new-array v6, v2, [F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->b:Landroid/widget/ImageView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_58
    const-string v1, "alpha"

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

    :goto_59
    filled-new-array {v9, v10}, [Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto/32 :goto_12

    nop

    nop

    :goto_5d
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    :goto_5f
    check-cast v0, Landroid/widget/ImageView;

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_60
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->e:Landroid/animation/ObjectAnimator;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    invoke-virtual {v1, v8}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_62
    iput-object v0, p0, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->a:Landroid/widget/ImageView;

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_63
    invoke-direct {p0, v9}, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->33f5b80483094659737b73d90f80a8a4m(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v9

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->d:Landroid/animation/AnimatorSet;

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    new-array v1, v2, [F

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_66
    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_67
    new-instance v13, Landroid/animation/AnimatorSet;

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_68
    invoke-static {v11}, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->b(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v11

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    invoke-virtual {v13, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto/32 :goto_40

    nop

    nop

    :goto_6a
    invoke-virtual {v0, v12}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    const-string v1, "layout_inflater"

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_6c
    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_6d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    invoke-direct {v13}, Landroid/animation/AnimatorSet;-><init>()V

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    new-instance v8, Lnmv;

    nop

    goto/32 :goto_99

    nop

    nop

    :goto_70
    iput-object v0, p0, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->b:Landroid/widget/ImageView;

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_71
    invoke-virtual {v1, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_72
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    const v12, 0x7f060b88

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_74
    const/4 v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_75
    invoke-virtual {v13, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v13

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_76
    return-void

    nop

    nop

    nop

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :goto_77
    goto/32 :goto_97

    nop

    nop

    nop

    nop

    :goto_78
    invoke-static {v0, v5, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_79
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_7a
    goto/32 :goto_77

    nop

    nop

    :goto_7b
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_7c
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->d:Landroid/animation/AnimatorSet;

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    const v0, 0x7f0b0284

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_7e
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_7f
    invoke-direct {v8}, Leac;-><init>()V

    goto/32 :goto_4e

    nop

    nop

    :goto_80
    check-cast v0, Landroid/widget/ImageView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_82
    new-instance v13, Lnmx;

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    :goto_83
    const-wide/16 v6, 0xc8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_84
    new-instance v8, Landroid/animation/ArgbEvaluator;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_85
    new-instance v8, Leac;

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_86
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_87
    new-instance v2, Landroid/animation/AnimatorSet;

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    :goto_88
    invoke-virtual {v0, v11}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_89
    invoke-virtual {v0, v10}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    check-cast v0, Landroid/widget/ImageView;

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_8b
    const/4 v11, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_8d
    const v0, 0x1d

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_8e
    aput v4, v1, v3

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8f
    invoke-direct {v9, p0, v10}, Lngx;-><init>(Landroid/view/View;I)V

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_90
    invoke-direct {v8}, Leac;-><init>()V

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    invoke-direct {v13, p0}, Lnmx;-><init>(Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;)V

    goto/32 :goto_1f

    nop

    nop

    :goto_92
    const-wide/16 v9, 0x32

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_93
    const/high16 v8, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_94
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_95
    invoke-direct {v1, p0}, Lnmy;-><init>(Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;)V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_96
    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_97
    goto/32 :goto_7b

    nop

    nop

    :goto_98
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    :goto_99
    invoke-direct {v8, p0}, Lnmv;-><init>(Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_9a
    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/32 :goto_87

    nop

    nop

    nop
.end method

.method protected final onLayout(ZIIII)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_8

    nop

    nop

    :goto_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    :goto_3
    goto/32 :goto_1

    nop

    nop

    :goto_4
    const-string v0, "ZoomLockView:onLayout"

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

    :goto_5
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    :goto_7
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->h:Lnbh;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p1, p0, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->a:Landroid/widget/ImageView;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_c
    const-string p1, "ZoomLockView:applyOrientation"

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_d
    invoke-static {p1, p0}, Lnzk;->ag(Landroid/view/View;Lnbh;)V

    :goto_e
    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method
