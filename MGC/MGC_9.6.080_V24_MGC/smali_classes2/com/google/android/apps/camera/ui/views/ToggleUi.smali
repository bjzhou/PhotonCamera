.class public Lcom/google/android/apps/camera/ui/views/ToggleUi;
.super Landroid/widget/FrameLayout;
.source "PG"


# static fields
.field public static final a:Lj$/time/Duration;

.field private static final i:Lsdb;


# instance fields
.field public b:Lnbh;

.field public c:Lcom/google/android/apps/camera/ui/views/ToggleUi$ToggleButton;

.field public d:Landroid/view/View;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/ImageView;

.field public g:Landroid/animation/AnimatorSet;

.field public h:F

.field private j:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

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

    :goto_3
    return-void

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sget-object v0, Lcom/google/android/apps/camera/ui/remotecontrol/Gizr/bXyemjIV;->VRKvwsNhAgebyR:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_0

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

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_7
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    const-wide/16 v0, 0xc8

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_9
    const v1, 0xc

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

    :goto_a
    const v0, 0x6

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

    nop

    nop

    :goto_b
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sput-object v0, Lcom/google/android/apps/camera/ui/views/ToggleUi;->a:Lj$/time/Duration;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_8

    nop

    nop

    :goto_f
    invoke-static {v0, v1}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

    move-result-object v0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_10
    sput-object v0, Lcom/google/android/apps/camera/ui/views/ToggleUi;->i:Lsdb;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    sget-object p1, Lnbh;->a:Lnbh;

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
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/views/ToggleUi;->b:Lnbh;

    nop

    nop

    nop

    goto/32 :goto_3

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
    const/high16 p1, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput p1, p0, Lcom/google/android/apps/camera/ui/views/ToggleUi;->h:F

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method private static h(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p1}, Leac;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    new-instance p1, Leac;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/32 :goto_3

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lnbh;)V
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    const/16 v1, 0x8

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

    :goto_1
    invoke-static {p0}, Lnzk;->W(Landroid/view/ViewGroup;)Ljava/util/Collection;

    move-result-object p0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0, p1, v1}, Lnaz;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_6

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_6
    invoke-static {p0, v0}, Lj$/util/Collection$-EL;->forEach(Ljava/util/Collection;Ljava/util/function/Consumer;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/views/ToggleUi;->j:Landroid/widget/FrameLayout;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_8
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/views/ToggleUi;->b:Lnbh;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_b

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x16

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

    :goto_d
    new-instance v0, Lnaz;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_e
    const v1, 0x9

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_0
    goto/32 :goto_a

    nop
.end method

.method public final b()V
    .locals 1

    goto/32 :goto_5

    nop

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
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

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

    :goto_2
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :goto_3
    goto/32 :goto_0

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/ToggleUi;->g:Landroid/animation/AnimatorSet;

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

    :goto_6
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/views/ToggleUi;->g:Landroid/animation/AnimatorSet;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public final c()V
    .locals 2

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    const/high16 v0, 0x3f800000    # 1.0f

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
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/views/ToggleUi$ToggleButton;->setAlpha(F)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/views/ToggleUi;->c:Lcom/google/android/apps/camera/ui/views/ToggleUi$ToggleButton;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x1c

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

    :goto_a
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/ToggleUi;->e:Landroid/widget/TextView;

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

    :goto_b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_a

    nop

    nop

    :goto_e
    const/16 v1, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_f
    const v0, 0xb

    nop

    goto/32 :goto_9

    nop

    nop
.end method

.method public final d()V
    .locals 7

    goto/32 :goto_16

    nop

    nop

    :goto_0
    invoke-direct {v2, p0, v5}, Lngx;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v5, Lngx;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/ToggleUi;->g:Landroid/animation/AnimatorSet;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v1, Lnkf;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {v0, v2}, Lcom/google/android/apps/camera/ui/views/ToggleUi;->h(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/32 :goto_6

    nop

    nop

    :goto_6
    new-array v2, v1, [F

    nop

    nop

    nop

    fill-array-data v2, :array_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v4, 0x1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_8
    aput v0, v2, v4

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_9
    const v1, 0x16

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget v0, p0, Lcom/google/android/apps/camera/ui/views/ToggleUi;->h:F

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v1}, Lj$/time/Duration;->toMillis()J

    move-result-wide v1

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :goto_d
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    new-array v2, v1, [F

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_f
    sget-object v1, Lcom/google/android/apps/camera/ui/views/ToggleUi;->a:Lj$/time/Duration;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v1, 0x2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {v5, p0, v6}, Lngx;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_0

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_20

    nop

    :goto_13
    const/16 v5, 0xb

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_14
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    new-instance v2, Lngx;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v0, 0xb

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_18
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

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

    :goto_19
    iput-object v5, p0, Lcom/google/android/apps/camera/ui/views/ToggleUi;->g:Landroid/animation/AnimatorSet;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1a
    new-array v1, v1, [Landroid/animation/Animator;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1c
    aput-object v2, v1, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_1d
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/ToggleUi;->g:Landroid/animation/AnimatorSet;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-direct {v1, p0}, Lnkf;-><init>(Lcom/google/android/apps/camera/ui/views/ToggleUi;)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_d

    nop

    :goto_21
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_22
    aput-object v0, v1, v3

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_23
    new-instance v5, Landroid/animation/AnimatorSet;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_24
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/32 :goto_c

    nop

    nop

    :goto_25
    const/16 v6, 0xc

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_26
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_28
    aput v4, v2, v3

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_29
    invoke-static {v2, v5}, Lcom/google/android/apps/camera/ui/views/ToggleUi;->h(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    goto/32 :goto_19

    nop

    nop
.end method

.method public final e(I)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/16 p1, 0x13e2

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1
    const-string p1, "Invalid background image resource."

    nop

    nop

    goto/32 :goto_b

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
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lscs;->b()Lsdo;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    sget-object p0, Lcom/google/android/apps/camera/ui/views/ToggleUi;->i:Lsdb;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/views/ToggleUi;->f:Landroid/widget/ImageView;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    :goto_9
    check-cast p0, Lscz;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_a
    invoke-interface {p0, p1}, Lscz;->M(I)Lsdo;

    move-result-object p0

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

    nop

    :goto_b
    invoke-interface {p0, p1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final f(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/16 p1, 0x13e3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lscs;->b()Lsdo;

    move-result-object p0

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

    :goto_4
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/ui/views/ToggleUi$ToggleButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {p0, p1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_7
    check-cast p0, Lscz;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {p0, p1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_9
    const-string p1, "Invalid button image resource."

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_a
    sget-object p0, Lcom/google/android/apps/camera/ui/views/ToggleUi;->i:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/views/ToggleUi;->c:Lcom/google/android/apps/camera/ui/views/ToggleUi$ToggleButton;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop
.end method

.method public final g(I)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/ToggleUi;->j:Landroid/widget/FrameLayout;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/ToggleUi;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/32 :goto_2

    nop

    nop
.end method

.method protected final onFinishInflate()V
    .locals 2

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v1, "layout_inflater"

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/views/ToggleUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0, v0}, Ldwd;->h(Landroid/view/View;Ldvd;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x7f0b04b6

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/views/ToggleUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto/32 :goto_11

    nop

    nop

    :goto_6
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    check-cast v0, Landroid/widget/TextView;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_8
    iput-object v0, p0, Lcom/google/android/apps/camera/ui/views/ToggleUi;->j:Landroid/widget/FrameLayout;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_9
    check-cast v0, Landroid/widget/FrameLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_c
    check-cast v0, Landroid/widget/ImageView;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const-string v0, "ToggleUi:inflate"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/views/ToggleUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {v0}, Lnke;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_11
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_16

    nop

    nop

    :goto_12
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_23

    nop

    :goto_13
    const v0, 0x1c

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/ToggleUi;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_15
    iput-object v0, p0, Lcom/google/android/apps/camera/ui/views/ToggleUi;->e:Landroid/widget/TextView;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_16
    const v0, 0x7f0b04ba

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/views/ToggleUi;->findViewById(I)Landroid/view/View;

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

    :goto_18
    iput-object v0, p0, Lcom/google/android/apps/camera/ui/views/ToggleUi;->d:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iput-object v0, p0, Lcom/google/android/apps/camera/ui/views/ToggleUi;->c:Lcom/google/android/apps/camera/ui/views/ToggleUi$ToggleButton;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const v0, 0x7f0b00a3

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_1c
    const v0, 0x7f0b04b9

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1d
    new-instance v0, Lnke;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1e
    const v0, 0x7f0b04bc

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1f
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_21
    iput-object v0, p0, Lcom/google/android/apps/camera/ui/views/ToggleUi;->f:Landroid/widget/ImageView;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_22
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/views/ToggleUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_25
    check-cast v0, Lcom/google/android/apps/camera/ui/views/ToggleUi$ToggleButton;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/views/ToggleUi;->j:Landroid/widget/FrameLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const v1, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_28
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_29
    check-cast v0, Landroid/view/LayoutInflater;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_2a
    const v1, 0x7f0e0162

    nop

    goto/32 :goto_5

    nop

    nop
.end method

.method protected final onLayout(ZIIII)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p1, p0, Lcom/google/android/apps/camera/ui/views/ToggleUi;->b:Lnbh;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/ui/views/ToggleUi;->a(Lnbh;)V

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    if-nez p1, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop
.end method
