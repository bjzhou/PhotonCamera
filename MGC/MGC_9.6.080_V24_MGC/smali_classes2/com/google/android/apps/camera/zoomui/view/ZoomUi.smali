.class public Lcom/google/android/apps/camera/zoomui/view/ZoomUi;
.super Landroid/widget/FrameLayout;
.source "PG"

# interfaces
.implements Lnbg;
.implements Ljpv;
.implements Ljpu;


# static fields
.field public static final a:Ljava/lang/Object;

.field public static final b:Lsdb;


# instance fields
.field public final c:Ljava/util/List;

.field public final d:Landroid/animation/ValueAnimator;

.field public e:Lnbh;

.field public f:Z

.field public g:F

.field public h:Landroid/animation/ObjectAnimator;

.field public i:Landroid/animation/AnimatorSet;

.field public j:Landroid/animation/AnimatorSet;

.field public k:Llyv;

.field public l:I

.field private final m:Z

.field private n:Landroid/view/View;

.field private final o:Z

.field private final p:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private q:Lnbe;

.field private r:Z

.field private s:Z

.field private t:Landroid/animation/ObjectAnimator;

.field private u:Landroid/animation/ObjectAnimator;


# direct methods
.method private final 881c79c34bf9fa64d93830b11a6c3f5am()V
    .locals 11

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static/range {v3 .. v9}, Lryy;->K(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lryy;

    move-result-object v1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->t()Landroid/widget/TextView;

    move-result-object v8

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    iget-boolean v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->s:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_3
    aput-object v10, v9, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->r()Landroid/widget/TextView;

    move-result-object v2

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->v()Landroid/widget/TextView;

    move-result-object v10

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v9, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_7
    iget-object v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->n:Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_8
    const v0, 0x14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v3, 0x4

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

    :goto_b
    if-lez v0, :cond_0

    nop

    goto/32 :goto_3a

    nop

    nop

    :cond_0
    goto/32 :goto_39

    nop

    :goto_c
    new-instance v2, Lirt;

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->u()Landroid/widget/TextView;

    move-result-object v7

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

    :goto_e
    invoke-static {v1, v2}, Lj$/util/Collection$-EL;->forEach(Ljava/util/Collection;Ljava/util/function/Consumer;)V

    :goto_f
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->w()Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v0}, Lnzk;->aQ(Lnbe;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_13
    if-nez v0, :cond_1

    nop

    goto/32 :goto_36

    nop

    :cond_1
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v1, v2}, Lj$/util/Collection$-EL;->forEach(Ljava/util/Collection;Ljava/util/function/Consumer;)V

    goto/32 :goto_20

    nop

    nop

    :goto_15
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    :goto_17
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->i()Landroid/widget/ImageButton;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->post(Ljava/lang/Runnable;)Z

    :goto_1a
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->s()Landroid/widget/TextView;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1c
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_1d
    if-nez v1, :cond_2

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2e

    nop

    nop

    :goto_1e
    invoke-static {v1, v2}, Lryy;->G(Ljava/lang/Object;Ljava/lang/Object;)Lryy;

    move-result-object v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    new-instance v2, Lirt;

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_20
    iget-boolean v1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->m:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_21
    move v0, v1

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_22
    invoke-direct {v2, p0, v0, v3}, Lirt;-><init>(Ljava/lang/Object;ZI)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_23
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_24
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-direct {v2, p0, v0, v3}, Lirt;-><init>(Ljava/lang/Object;ZI)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_26
    invoke-direct {v0, p0, v1}, Lnue;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_19

    nop

    nop

    :goto_27
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_28
    const/16 v1, 0xa

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    new-array v9, v9, [Landroid/view/View;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p0, v1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->setTranslationY(F)V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const v1, 0xf

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_2c
    iget-boolean v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->r:Z

    nop

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

    nop

    :goto_2d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->x()Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    move-result-object v1

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

    :goto_2f
    move v0, v2

    nop

    nop

    :goto_30
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const/4 v3, 0x5

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

    :goto_32
    goto :goto_30

    nop

    :goto_33
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    new-instance v0, Lnue;

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_35
    goto :goto_33

    nop

    :goto_36
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->q()Landroid/widget/TextView;

    move-result-object v1

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    if-eqz v0, :cond_4

    nop

    goto/32 :goto_33

    nop

    nop

    :cond_4
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_17

    nop

    nop

    :goto_3a
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->h()Landroid/widget/ImageButton;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_3c
    aput-object v1, v9, v2

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3d
    iget-object v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->q:Lnbe;

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
.end method

.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    const-string v0, "com.google.android.apps.camera.zoomui.view.ZoomUi"

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sput-object v0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->b:Lsdb;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    new-instance v0, Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    sput-object v0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

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

    :goto_6
    return-void

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    goto/32 :goto_24

    nop

    nop

    :goto_0
    goto/32 :goto_a

    nop

    :goto_1
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2
    instance-of p2, p1, Lfwm;

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_4
    iput-boolean v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->r:Z

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_5
    const/4 v0, 0x1

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

    :goto_6
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto/32 :goto_2

    nop

    nop

    :goto_7
    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/32 :goto_13

    nop

    nop

    :goto_8
    new-instance p2, Lnvy;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_9
    goto/16 :goto_18

    nop

    nop

    :goto_a
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_b
    const/4 p1, 0x0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput-boolean p1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->m:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d
    const/16 v0, 0x9

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

    :goto_e
    iput-object v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->q:Lnbe;

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_f
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput-object v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->e:Lnbh;

    nop

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

    :goto_11
    iput-object p2, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->p:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_12
    iput-object v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->d:Landroid/animation/ValueAnimator;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_13
    const-wide/16 v1, 0xc8

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

    nop

    :goto_14
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_16
    iput-boolean p2, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->m:Z

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

    :goto_17
    invoke-virtual {p1, p2}, Lhoh;->p(Lhmn;)Z

    move-result p1

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_19
    check-cast p1, Lfwm;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    sget-object p2, Lhmq;->bR:Lhmn;

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

    nop

    :goto_1b
    sget-object v0, Lnbe;->b:Lnbe;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iput-object p2, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1e
    invoke-interface {p1}, Lfwm;->b()Lhoh;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_1f
    new-instance v0, Landroid/animation/ValueAnimator;

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

    :goto_20
    goto/32 :goto_1

    nop

    :goto_21
    return-void

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_23
    iput v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->l:I

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_24
    const v0, 0x20

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const v1, 0x18

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_26
    iput-boolean p1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->o:Z

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_27
    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_28
    new-instance p2, Ljava/util/ArrayList;

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_29
    invoke-direct {p2, p0, v0}, Lnvy;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2a
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2b
    sget-object v0, Lnbh;->a:Lnbh;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2c
    invoke-static {p1}, Lnzk;->i(Lhoh;)Z

    move-result p2

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_2d
    if-nez p2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    :cond_1
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    new-instance p2, Leac;

    nop

    nop

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

    :goto_2f
    invoke-direct {p2}, Leac;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method

.method private static L(Landroid/animation/ObjectAnimator;)V
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto/32 :goto_b

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
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    const-wide/16 v0, 0x96

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_c
    const-wide/16 v0, 0x12c

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_e
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_10
    const v1, 0xa

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop
.end method

.method public static d(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;
    .locals 2

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_11

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    :goto_2
    const/4 v1, 0x2

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x17

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

    :goto_5
    invoke-direct {p1}, Leac;-><init>()V

    goto/32 :goto_8

    nop

    nop

    :goto_6
    new-instance p1, Leac;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_7
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_9
    new-array p1, v1, [F

    nop

    nop

    nop

    nop

    nop

    fill-array-data p1, :array_1

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_a
    if-nez p1, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_14

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_1
    goto/32 :goto_13

    nop

    :goto_d
    const-string v0, "alpha"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_e
    const-wide/16 v0, 0x64

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-array p1, v1, [F

    nop

    nop

    nop

    fill-array-data p1, :array_0

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {p0, v0, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

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

    :goto_13
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_15
    return-object p0

    nop

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :goto_16
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {p0, v0, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_18
    const v0, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final A(Z)V
    .locals 9

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v2, 0x7f060b87

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

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

    :goto_5
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_6
    iget v2, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->d:I

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_7
    const p1, 0x7f04018f

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

    :goto_8
    iget v5, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->g:F

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_d
    iput v6, v7, Landroid/widget/FrameLayout$LayoutParams;->height:I

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_e
    div-int/lit8 p1, p1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

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

    nop

    nop

    :goto_10
    invoke-direct {v1, p1, v2}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_11
    div-int/lit8 v1, v1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_12
    iput v1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->f:I

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_14
    goto/32 :goto_48

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->n()Landroid/widget/SeekBar;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_16
    const v2, 0x7f080169

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget v1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->f:I

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_19
    iget v2, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->c:I

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

    :goto_1a
    invoke-virtual {p1, v2, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_1b
    const v5, 0x186a0

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p0, v1}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1e
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget v8, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->g:F

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_20
    invoke-virtual {v1, v7}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_21
    mul-float/2addr v5, v8

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

    :goto_22
    invoke-virtual {v1, v5}, Landroid/widget/SeekBar;->setMax(I)V

    goto/32 :goto_37

    nop

    nop

    :goto_23
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->setTextColor(I)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_24
    goto :goto_1e

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_26
    iget-object p1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->b:Landroid/content/res/Resources;

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {p0, p1}, Lrgw;->f(Landroid/view/View;I)I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_28
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_29
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v1, v3, v5, v3, v2}, Landroid/widget/SeekBar;->setPaddingRelative(IIII)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2b
    const v5, 0x7f070ad9

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->h:Landroid/widget/SeekBar;

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const v1, 0x3

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    float-to-int v3, v4

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

    :goto_2f
    const v6, 0x7f070aa2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_30
    sub-int/2addr v1, p1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_31
    mul-float/2addr v4, v5

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_32
    if-nez p1, :cond_0

    nop

    goto/32 :goto_25

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_33
    const v7, 0x7f070aa1

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_34
    const v0, 0xe

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_35
    float-to-int v5, v5

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_36
    iget-object p1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->b:Landroid/content/res/Resources;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_37
    add-int v5, v3, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_38
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_39
    goto/32 :goto_b

    nop

    nop

    :goto_3a
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    int-to-float v5, v5

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

    :goto_3c
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {p1, v2, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_3e
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

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

    :goto_3f
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->invalidate()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    sub-int/2addr v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_42
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_43
    if-eqz p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_1
    goto/32 :goto_50

    nop

    nop

    nop

    :goto_44
    const v3, 0x7f08016c

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

    :goto_45
    div-int/lit8 v2, v2, 0x2

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    new-instance v1, Landroid/graphics/drawable/InsetDrawable;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_47
    const v1, 0x7f070ac2

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->w()Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

    move-result-object p0

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_4a
    sub-int/2addr v2, v3

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    nop

    nop

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

    :goto_4c
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setClickable(Z)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object v3

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

    nop

    :goto_4f
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    :cond_2
    goto/32 :goto_39

    nop

    :goto_50
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->n()Landroid/widget/SeekBar;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_52
    const v3, 0x7f070a9a

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_53
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_54
    int-to-float v4, v4

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_55
    const v4, 0x7f070ac5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->setTextColor(I)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_58
    sub-int v2, v6, v2

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_59
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_5a
    iput v5, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_5c
    iget-object p1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->b:Landroid/content/res/Resources;

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop
.end method

.method public final B()V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    invoke-interface {v0}, Lnxd;->a()V

    goto/32 :goto_4

    nop

    nop

    :goto_1
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    check-cast v0, Lnxd;

    nop

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

    :goto_4
    goto :goto_a

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final C()V
    .locals 1

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    invoke-interface {v0}, Lnxd;->b()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto :goto_5

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    :goto_6
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    :goto_7
    return-void

    nop

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_9
    check-cast v0, Lnxd;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_a
    iget-object p0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->c:Ljava/util/List;

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
.end method

.method public final D(Ljava/lang/String;)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->r()Landroid/widget/TextView;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    iget-boolean v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->m:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->q()Landroid/widget/TextView;

    move-result-object v0

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

    :goto_5
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    :goto_7
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public final E(IZ)V
    .locals 4

    goto/32 :goto_4f

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->a(I)I

    move-result v2

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->k()Landroid/widget/ImageView;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-wide/16 v0, 0xc8

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_8
    new-instance v3, Lnxo;

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

    :goto_9
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->k()Landroid/widget/ImageView;

    move-result-object p2

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_b
    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->k()Landroid/widget/ImageView;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p2}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_e
    if-nez p2, :cond_0

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    nop

    :goto_f
    const/4 v0, 0x4

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_10
    cmpl-float p2, p2, v2

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->k()Landroid/widget/ImageView;

    move-result-object p2

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->k()Landroid/widget/ImageView;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->k()Landroid/widget/ImageView;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_14
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_16
    const/high16 v2, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->l()Landroid/widget/ImageView;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p2, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/32 :goto_a

    nop

    nop

    :goto_1a
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p2, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_21
    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->k()Landroid/widget/ImageView;

    move-result-object p2

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

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

    :goto_26
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->l()Landroid/widget/ImageView;

    move-result-object p2

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

    nop

    nop

    :goto_27
    const v2, 0x7f070aca

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p2}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->l()Landroid/widget/ImageView;

    move-result-object p2

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p2, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p2}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p2}, Landroid/widget/ImageView;->getAlpha()F

    move-result p2

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-direct {v3, p0}, Lnxo;-><init>(Lcom/google/android/apps/camera/zoomui/view/ZoomUi;)V

    goto/32 :goto_25

    nop

    nop

    :goto_2f
    invoke-virtual {p2, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->l()Landroid/widget/ImageView;

    move-result-object p2

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

    nop

    nop

    :goto_31
    new-instance v0, Landroid/util/TypedValue;

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_33
    goto/32 :goto_42

    nop

    nop

    :goto_34
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->k()Landroid/widget/ImageView;

    move-result-object p2

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p2, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p2, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_38
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_3a
    return-void

    nop

    :goto_3b
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {p2, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {p2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->l()Landroid/widget/ImageView;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_3f
    goto :goto_33

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->k()Landroid/widget/ImageView;

    move-result-object p2

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->n()Landroid/widget/SeekBar;

    move-result-object p0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->l()Landroid/widget/ImageView;

    move-result-object p2

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_45
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_46
    const v1, 0xd

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_47
    rem-int v0, v0, v1

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

    :goto_48
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_49
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->k()Landroid/widget/ImageView;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :cond_1
    goto/32 :goto_1d

    nop

    :goto_4b
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

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

    :goto_4c
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    const/high16 v1, 0x3f000000    # 0.5f

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_4e
    if-eqz p2, :cond_2

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    const v0, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_50
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_51
    if-eq v2, v3, :cond_3

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

    :cond_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_52
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->a(I)I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_53
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    invoke-virtual {p2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_55
    add-int v0, v0, v1

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_56
    const-wide/16 v0, 0x64

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

    :goto_57
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_58
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->k()Landroid/widget/ImageView;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_59
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_5c
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_5d
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    nop

    goto/32 :goto_56

    nop

    nop

    nop
.end method

.method public final F(I)V
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    goto/32 :goto_e

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->n()Landroid/widget/SeekBar;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
    filled-new-array {v0, v1}, [I

    move-result-object v0

    nop

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

    nop

    :goto_6
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->d:Landroid/animation/ValueAnimator;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->k()Landroid/widget/ImageView;

    move-result-object v0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->a(I)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_b
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    :goto_c
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_11
    iget-object v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->d:Landroid/animation/ValueAnimator;

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

    :goto_12
    iget-object v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->d:Landroid/animation/ValueAnimator;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1

    nop

    nop

    :goto_14
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_15
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_16
    iget-object v1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->d:Landroid/animation/ValueAnimator;

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

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    :goto_19
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1b
    const v1, 0xf

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

    nop
.end method

.method public final G()Z
    .locals 3

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    monitor-enter v0

    nop

    :try_start_0
    iget p0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->l:I

    nop

    nop

    nop

    nop

    const/4 v1, 0x2

    nop

    nop

    const/4 v2, 0x1

    nop

    nop

    nop

    if-eq p0, v1, :cond_1

    nop

    nop

    nop

    nop

    const/4 v1, 0x3

    nop

    nop

    nop

    nop

    nop

    if-eq p0, v1, :cond_1

    nop

    const/4 v1, 0x4

    nop

    nop

    if-eq p0, v1, :cond_1

    nop

    const/4 v1, 0x5

    nop

    nop

    nop

    nop

    nop

    if-ne p0, v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto :goto_5

    nop

    nop

    nop

    :cond_0
    const/4 v2, 0x0

    nop

    nop

    nop

    :cond_1
    :goto_5
    monitor-exit v0

    nop

    nop

    return v2

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    monitor-exit v0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    throw p0

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_8

    nop

    :goto_b
    const v1, 0x8

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

    :goto_c
    sget-object v0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method

.method public final H(I)I
    .locals 1

    goto/32 :goto_f

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    nop

    :goto_1
    if-ne p1, v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    goto :goto_9

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    :goto_5
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object p0

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

    :goto_8
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    :goto_a
    return p0

    nop

    :goto_b
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const p1, 0x7f070ace

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

    nop

    :goto_d
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-ne p1, v0, :cond_1

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

    :cond_1
    goto/32 :goto_17

    nop

    nop

    :goto_f
    if-nez p1, :cond_2

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

    :cond_2
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const p1, 0x7f070ad7

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object p0

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

    nop

    nop

    :goto_13
    const/4 v0, 0x3

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

    :goto_14
    const p1, 0x7f070ad5

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_15
    goto/16 :goto_9

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v0, 0x4

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

    :goto_18
    add-int/lit8 p1, p1, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_19
    if-ne p1, v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_12

    nop

    nop

    nop
.end method

.method public final I(IZ)Landroid/animation/AnimatorSet;
    .locals 8

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v5, 0x7f070ac0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    new-instance v1, Lnvy;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    throw p0

    nop

    :goto_8
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object v4

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

    :goto_a
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_c
    const v1, 0xe

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_f
    const-wide/16 v2, 0x96

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_12
    sub-int/2addr v3, v4

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v4, 0x6

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_4b

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v5, 0x7f070ace

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1a
    const v3, 0x7f070aa3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_1b
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1c
    const/4 v5, 0x3

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 v5, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    filled-new-array {p1, v2}, [I

    move-result-object p1

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4d

    nop

    :goto_21
    if-nez p1, :cond_1

    nop

    nop

    goto/32 :goto_45

    nop

    :cond_1
    goto/32 :goto_33

    nop

    nop

    :goto_22
    invoke-direct {v2, p0, v4}, Lnvy;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_23
    float-to-int v2, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_24
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_25
    new-instance v2, Lnvy;

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget v3, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->g:F

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_27
    div-int/2addr v3, v7

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_28
    filled-new-array {v6, v3}, [I

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_29
    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto/32 :goto_55

    nop

    nop

    :goto_2b
    const-wide/16 v2, 0xc8

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_2c
    const/4 v2, 0x7

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/16 :goto_4b

    nop

    nop

    :goto_2e
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    mul-int/2addr v4, v5

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const v7, 0x7f070ac3

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_31
    div-int/2addr v3, v7

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

    :goto_32
    mul-float/2addr v2, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_33
    add-int/lit8 p1, p1, -0x1

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_34
    filled-new-array {v0, v1}, [I

    move-result-object v0

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_35
    new-instance v2, Lnvy;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto/32 :goto_5e

    nop

    nop

    :goto_37
    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_38
    const v0, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-direct {v2, p0, v3}, Lnvy;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :goto_3c
    goto/32 :goto_44

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/32 :goto_27

    nop

    nop

    :goto_3e
    invoke-direct {v2}, Leac;-><init>()V

    goto/32 :goto_41

    nop

    nop

    :goto_3f
    invoke-virtual {p2, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_40
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_41
    invoke-virtual {p0, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_42
    const v4, 0x7f070aa1

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

    nop

    :goto_43
    if-ne p1, v5, :cond_2

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_24

    nop

    nop

    :goto_44
    return-object p0

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_53

    nop

    nop

    nop

    :goto_46
    add-int/2addr v3, v6

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    const/16 v3, 0x8

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_4a
    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    nop

    nop

    :goto_4b
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_4c
    int-to-float v2, v2

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_57

    nop

    nop

    :goto_4f
    const/4 v7, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_50
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_51
    sub-int/2addr v3, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_52
    rem-int v0, v0, v1

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

    :goto_53
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_54
    if-nez p2, :cond_3

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_3
    goto/32 :goto_61

    nop

    nop

    :goto_55
    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_56
    new-instance p0, Landroid/animation/AnimatorSet;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_58
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

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

    :goto_5a
    if-ne p1, v7, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_4
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    if-ne p1, v5, :cond_5

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_5
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_5d
    const v5, 0x7f070ad7

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

    :goto_5e
    new-instance v2, Leac;

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_60
    const v1, 0x7f070acf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_61
    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p2

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

    :goto_62
    const v5, 0x7f070ad5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_63
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_64
    const v2, 0x7f070a9a

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_66
    invoke-direct {v1, p0, v2}, Lnvy;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_3d

    nop

    nop

    nop

    nop
.end method

.method public final J(ZI)V
    .locals 3

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/32 :goto_29

    nop

    nop

    :goto_1
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1, v2}, Landroid/widget/Space;->setVisibility(I)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->u()Landroid/widget/TextView;

    move-result-object p1

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
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->s()Landroid/widget/TextView;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

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

    :goto_b
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/32 :goto_2a

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->u()Landroid/widget/TextView;

    move-result-object p1

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

    :goto_d
    goto/32 :goto_35

    nop

    :goto_e
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->t()Landroid/widget/TextView;

    move-result-object p1

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_f
    const/4 p1, 0x5

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 p1, 0x3

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p1, v2}, Landroid/widget/Space;->setVisibility(I)V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p1, v1}, Landroid/widget/Space;->setVisibility(I)V

    :goto_13
    goto/32 :goto_1e

    nop

    nop

    :goto_14
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->u()Landroid/widget/TextView;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p1, v2}, Landroid/widget/Space;->setVisibility(I)V

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_16
    const v1, 0x18

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_18
    const v0, 0xb

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_19
    const/16 v1, 0x8

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

    :goto_1a
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->p()Landroid/widget/Space;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1b
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-eq p2, p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextAlignment(I)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->v()Landroid/widget/TextView;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v0, 0x4

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

    :goto_20
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->o()Landroid/widget/Space;

    move-result-object p1

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_13

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->t()Landroid/widget/TextView;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->o()Landroid/widget/Space;

    move-result-object p1

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_25
    invoke-virtual {p1, v1}, Landroid/widget/Space;->setVisibility(I)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->p()Landroid/widget/Space;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->p()Landroid/widget/Space;

    move-result-object p1

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->o()Landroid/widget/Space;

    move-result-object p1

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

    :goto_2b
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->o()Landroid/widget/Space;

    move-result-object p1

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

    :goto_2c
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p1, v1}, Landroid/widget/Space;->setVisibility(I)V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_2e
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2f
    if-eq p2, p1, :cond_2

    nop

    goto/32 :goto_5

    nop

    :cond_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/16 :goto_13

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_c

    nop

    nop

    :goto_32
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->t()Landroid/widget/TextView;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_33
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->u()Landroid/widget/TextView;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_34
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->t()Landroid/widget/TextView;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_37
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_34

    nop

    :goto_38
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextAlignment(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->p()Landroid/widget/Space;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {p1, v2}, Landroid/widget/Space;->setVisibility(I)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    if-eq p2, v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {p1, v1}, Landroid/widget/Space;->setVisibility(I)V

    goto/32 :goto_21

    nop

    nop

    nop
.end method

.method public final a(I)I
    .locals 7

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    const v2, 0x7f070acb

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x7f070ad6

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    monitor-enter v2

    nop

    nop

    :try_start_0
    iget p0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->l:I

    nop

    invoke-static {p0}, Lnzk;->j(I)Z

    move-result v3

    nop

    nop

    nop

    const/4 v4, 0x2

    nop

    nop

    if-eqz p1, :cond_5

    nop

    nop

    nop

    nop

    const/4 v5, 0x1

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    if-eq p1, v5, :cond_2

    nop

    nop

    nop

    if-eq p1, v4, :cond_1

    nop

    const/4 p0, 0x3

    nop

    nop

    nop

    nop

    nop

    if-eq p1, p0, :cond_0

    nop

    nop

    goto :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_0
    add-int/2addr v0, v1

    nop

    nop

    nop

    nop

    mul-int/2addr v0, p0

    nop

    nop

    nop

    nop

    nop

    div-int/lit8 v6, v0, 0x2

    nop

    nop

    nop

    goto :goto_7

    nop

    nop

    nop

    :cond_1
    add-int v6, v0, v1

    nop

    nop

    nop

    nop

    if-nez v3, :cond_8

    nop

    :goto_6
    div-int/lit8 v6, v6, 0x2

    nop

    nop

    nop

    nop

    goto :goto_7

    nop

    :cond_2
    if-ne p0, v4, :cond_3

    nop

    nop

    nop

    nop

    nop

    add-int/2addr v0, v1

    nop

    nop

    nop

    nop

    div-int/lit8 v6, v0, 0x2

    nop

    nop

    nop

    goto :goto_7

    nop

    nop

    :cond_3
    if-eqz v3, :cond_4

    nop

    nop

    nop

    goto :goto_7

    nop

    nop

    nop

    nop

    :cond_4
    add-int/2addr v0, v1

    nop

    nop

    nop

    nop

    neg-int p0, v0

    nop

    nop

    nop

    nop

    div-int/lit8 v6, p0, 0x2

    nop

    nop

    goto :goto_7

    nop

    nop

    :cond_5
    add-int/2addr v0, v1

    nop

    nop

    neg-int v6, v0

    nop

    nop

    if-ne p0, v4, :cond_6

    nop

    nop

    nop

    nop

    goto :goto_6

    nop

    :cond_6
    if-eqz v3, :cond_7

    nop

    goto :goto_7

    nop

    nop

    nop

    nop

    :cond_7
    mul-int/lit8 v6, v6, 0x3

    nop

    nop

    nop

    nop

    div-int/2addr v6, v4

    nop

    nop

    nop

    :cond_8
    :goto_7
    monitor-exit v2

    nop

    nop

    nop

    return v6

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    monitor-exit v2

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    throw p0

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_d

    nop

    nop

    :goto_b
    const v0, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

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

    :goto_d
    goto/32 :goto_f

    nop

    :goto_e
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x1

    nop

    goto/32 :goto_11

    nop

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

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_12
    sget-object v2, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_9

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_9
    goto/32 :goto_e

    nop
.end method

.method public final synthetic dI(Lnbh;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-void

    nop
.end method

.method public final dP(Lnbe;Lnbh;)V
    .locals 1

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    iput-boolean p1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->r:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    iput-object p2, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->e:Lnbh;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->h:Landroid/animation/ObjectAnimator;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

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

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-boolean p1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->f:Z

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    if-eqz p1, :cond_1

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

    :cond_1
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->end()V

    :goto_9
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_16

    nop

    nop

    :goto_b
    const/4 p1, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p1, p2}, Lnbh;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_d
    if-eq v0, p2, :cond_3

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_e
    sget-object p2, Lnbh;->a:Lnbh;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->isLaidOut()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->setTranslationY(F)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->881c79c34bf9fa64d93830b11a6c3f5am()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->e:Lnbh;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_15
    iput-object p1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->q:Lnbe;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->e:Lnbh;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->881c79c34bf9fa64d93830b11a6c3f5am()V

    goto/32 :goto_10

    nop

    nop

    nop

    nop
.end method

.method public final dv()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-boolean v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->r:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final f()Landroid/view/ViewGroup;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->findViewById(I)Landroid/view/View;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    const v0, 0x7f0b05a7

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    check-cast p0, Landroid/view/ViewGroup;

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
.end method

.method public final g()Landroid/view/ViewGroup;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x7f0b05ac

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    :goto_2
    check-cast p0, Landroid/view/ViewGroup;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->findViewById(I)Landroid/view/View;

    move-result-object p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public final h()Landroid/widget/ImageButton;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->findViewById(I)Landroid/view/View;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p0, Landroid/widget/ImageButton;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x7f0b05a1

    nop

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
.end method

.method public final i()Landroid/widget/ImageButton;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p0, Landroid/widget/ImageButton;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x7f0b05a2

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->findViewById(I)Landroid/view/View;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final j()Landroid/widget/ImageView;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    const v0, 0x7f0b041d

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast p0, Landroid/widget/ImageView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->findViewById(I)Landroid/view/View;

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
.end method

.method public final k()Landroid/widget/ImageView;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p0, Landroid/widget/ImageView;

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

    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->findViewById(I)Landroid/view/View;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    const v0, 0x7f0b04b7

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop
.end method

.method public final l()Landroid/widget/ImageView;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p0, Landroid/widget/ImageView;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    const v0, 0x7f0b04b8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->findViewById(I)Landroid/view/View;

    move-result-object p0

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

.method public final m()Landroid/widget/ImageView;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0x7f0b041e

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

    :goto_1
    return-object p0

    nop

    nop

    nop

    :goto_2
    check-cast p0, Landroid/widget/ImageView;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->findViewById(I)Landroid/view/View;

    move-result-object p0

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

.method public final n()Landroid/widget/SeekBar;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->findViewById(I)Landroid/view/View;

    move-result-object p0

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

    :goto_2
    const v0, 0x7f0b05a4

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    check-cast p0, Landroid/widget/SeekBar;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method final o()Landroid/widget/Space;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->findViewById(I)Landroid/view/View;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p0, Landroid/widget/Space;

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

    :goto_2
    return-object p0

    nop

    nop

    nop

    :goto_3
    const v0, 0x7f0b04b0

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
.end method

.method public final onFinishInflate()V
    .locals 10

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/16 v8, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v2, 0x7f070a72

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v5, 0x3f59999a    # 0.85f

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->h:Landroid/animation/ObjectAnimator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    :goto_5
    goto/16 :goto_bb

    nop

    nop

    :goto_6
    goto/32 :goto_ba

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    :goto_8
    const/4 v5, 0x1

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
    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    div-int/lit8 v7, v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    :goto_c
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-array v1, v5, [F

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const-wide/16 v1, 0x12c

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    sub-int/2addr v6, v7

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-eq v3, v5, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_41

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->r()Landroid/widget/TextView;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    :goto_12
    const v2, 0x7f070ab5

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_13
    const/high16 v0, 0x42500000    # 52.0f

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_14
    neg-int v7, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_15
    const-wide/16 v1, 0x96

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0x7f080170

    nop

    goto/32 :goto_8a

    nop

    nop

    :goto_17
    const v0, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_18
    div-int/lit8 v7, v1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_19
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1a
    const v1, 0x9

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_1d
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_83

    nop

    nop

    :goto_1e
    int-to-float v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

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

    :goto_22
    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setMax(I)V

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_23
    add-int/2addr v7, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_24
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_25
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

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

    :goto_26
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->n()Landroid/widget/SeekBar;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_27
    div-int/lit8 v1, v1, 0x2

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v7, v4, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->b:Landroid/content/res/Resources;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    :goto_29
    const/16 v1, 0x33

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_2b
    const v1, 0x7f0e01a8

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_2c
    iget v7, v4, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->f:I

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    :goto_2d
    iget v7, v7, Landroid/util/DisplayMetrics;->scaledDensity:F

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_2f
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_30
    div-int/lit8 v6, v6, 0x2

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

    :goto_31
    iget v8, v4, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    goto/32 :goto_6a

    nop

    nop

    :goto_33
    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    int-to-float v8, v8

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_35
    if-nez v3, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    :cond_1
    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    :goto_39
    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iput-object v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->h:Landroid/animation/ObjectAnimator;

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

    :goto_3b
    iget-object v7, v4, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->b:Landroid/content/res/Resources;

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    :goto_3c
    check-cast v0, Landroid/view/LayoutInflater;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    iget-object v8, v4, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->b:Landroid/content/res/Resources;

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v4, v8}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->setElevation(F)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_40
    const/4 v8, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_41
    move v3, v5

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

    :goto_42
    aput v0, v1, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    :goto_43
    int-to-float v6, v6

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

    :goto_44
    new-instance v6, Lnxf;

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_45
    invoke-virtual {v4, v6}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    int-to-float v0, v0

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_94

    nop

    nop

    :goto_49
    neg-int v7, v7

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

    nop

    :goto_4a
    invoke-static {v0}, Lnnr;->b(F)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_4b
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->h()Landroid/widget/ImageButton;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_4d
    sub-int/2addr v6, v8

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    const/4 v6, 0x0

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_50
    invoke-virtual {v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->h()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_51
    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_52
    sget-object v1, Lcom/google/android/apps/camera/imax/cyclops/metadata/vUwG/ZKDLyMOUoobPIS;->VTABkWo:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_53
    invoke-virtual {v4, v8}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->setTextAlignment(I)V

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    :goto_54
    div-int/lit8 v7, v7, 0x2

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_55
    goto/16 :goto_97

    nop

    nop

    nop

    :goto_56
    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_58
    iget-object v6, v4, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->b:Landroid/content/res/Resources;

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    :goto_59
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_5a
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->r()Landroid/widget/TextView;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {v0, v6}, Landroid/widget/SeekBar;->setSplitTrack(Z)V

    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_5e
    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    goto/16 :goto_b6

    nop

    nop

    nop

    :goto_60
    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    const/4 v1, 0x0

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_62
    if-eqz v0, :cond_2

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

    :cond_2
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_63
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->x()Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_64
    invoke-virtual {v4, v8}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->setGravity(I)V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_65
    iget v1, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    :goto_66
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_67
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    :goto_68
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_69
    const v3, 0x7f070a82

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

    :goto_6a
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_6b
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->x()Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    move-result-object v0

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    const v1, 0x7f070a83

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_6f
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    :goto_70
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->q()Landroid/widget/TextView;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_71
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    :goto_72
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_73
    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_74
    add-int/2addr v1, v2

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->x()Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    :goto_76
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    :goto_77
    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    :cond_3
    goto/32 :goto_75

    nop

    nop

    nop

    :goto_78
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_79
    const v2, 0x7f070a78

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    const-string v0, "zoomUi:inflate"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->w()Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

    move-result-object v4

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_7c
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_7d
    invoke-virtual {v4}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->getContext()Landroid/content/Context;

    move-result-object v8

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    goto/16 :goto_6d

    nop

    nop

    nop

    nop

    :goto_7f
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_80
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->i()Landroid/widget/ImageButton;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    :goto_81
    goto/16 :goto_37

    nop

    :goto_82
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_83
    return-void

    nop

    nop

    nop

    nop

    :goto_84
    goto/32 :goto_98

    nop

    nop

    nop

    :goto_85
    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_86
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_87
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_88
    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_89
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_8a
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    nop

    nop

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

    :goto_8c
    invoke-static {v8, v9, v6}, Ldtx;->a(Landroid/content/Context;ILdtw;)V

    goto/32 :goto_bc

    nop

    nop

    :goto_8d
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_8e
    add-int/2addr v1, v2

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    invoke-direct {v6, v4}, Lnxf;-><init>(Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;)V

    goto/32 :goto_7d

    nop

    nop

    :goto_90
    iget v5, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    :goto_91
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_92
    const v2, 0x7f070aa3

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_93
    iget-boolean v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->m:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_94
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_95
    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_96
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextSize(F)V

    :goto_97
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_98
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_99
    invoke-virtual {v4}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_9a
    const v9, 0x7f070ac2

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    if-nez v3, :cond_4

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    iget-boolean v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->o:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_9d
    iput v5, v4, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->g:F

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_9e
    invoke-static {p0}, Lnzk;->v(Landroid/view/View;)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    :goto_9f
    invoke-virtual {v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_a1
    iput v5, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->g:F

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_a2
    div-float/2addr v6, v7

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    :goto_a3
    div-float/2addr v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_a4
    if-ge v5, v6, :cond_5

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    iget-object v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->h:Landroid/animation/ObjectAnimator;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_a7
    const v8, 0x7f070a85

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    :goto_a8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    const-string v0, "translationY"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    :goto_aa
    iput v6, v4, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->f:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    :goto_ab
    add-int/2addr v7, v2

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_ac
    iput-object v0, v4, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->h:Landroid/widget/SeekBar;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_ad
    const v4, 0x186a0

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_af
    invoke-virtual {v4, v6}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->setTextSize(F)V

    goto/32 :goto_44

    nop

    nop

    :goto_b0
    div-int/lit8 v1, v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    :goto_b1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_b2
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_b3
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->j()Landroid/widget/ImageView;

    move-result-object v0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    const v9, 0x7f09001a

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_b5
    const/high16 v5, 0x3f800000    # 1.0f

    nop

    :goto_b6
    goto/32 :goto_a1

    nop

    nop

    nop

    :goto_b7
    const/16 v6, 0x1f4

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    if-lez v0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_6
    goto/32 :goto_9

    nop

    :goto_b9
    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_ba
    move v3, v6

    nop

    nop

    nop

    :goto_bb
    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :goto_bc
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_bd
    const v7, 0x7f070a89

    nop

    goto/32 :goto_2e

    nop

    nop
.end method

.method protected final onLayout(ZIIII)V
    .locals 0

    goto/32 :goto_3

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
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iget-object p1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->q:Lnbe;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    goto/32 :goto_1

    nop

    nop

    :goto_4
    iget-object p2, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->e:Lnbh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->dP(Lnbe;Lnbh;)V

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method final p()Landroid/widget/Space;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->findViewById(I)Landroid/view/View;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x7f0b04ae

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    check-cast p0, Landroid/widget/Space;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final q()Landroid/widget/TextView;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->findViewById(I)Landroid/view/View;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    :goto_2
    const v0, 0x7f0b006b

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
    check-cast p0, Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final r()Landroid/widget/TextView;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->findViewById(I)Landroid/view/View;

    move-result-object p0

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-object p0

    nop

    :goto_2
    check-cast p0, Landroid/widget/TextView;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x7f0b006c

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final s()Landroid/widget/TextView;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->findViewById(I)Landroid/view/View;

    move-result-object p0

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
    check-cast p0, Landroid/widget/TextView;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x7f0b05a6

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
    return-object p0

    nop

    nop

    nop
.end method

.method public final t()Landroid/widget/TextView;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->findViewById(I)Landroid/view/View;

    move-result-object p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x7f0b05a8

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    :goto_3
    check-cast p0, Landroid/widget/TextView;

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
.end method

.method public final u()Landroid/widget/TextView;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x7f0b05a9

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    check-cast p0, Landroid/widget/TextView;

    nop

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

    :goto_3
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->findViewById(I)Landroid/view/View;

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
.end method

.method public final v()Landroid/widget/TextView;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->findViewById(I)Landroid/view/View;

    move-result-object p0

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    const v0, 0x7f0b05aa

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast p0, Landroid/widget/TextView;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop
.end method

.method public final w()Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x7f0b059d

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
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->findViewById(I)Landroid/view/View;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    check-cast p0, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop
.end method

.method public final x()Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    check-cast p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    nop

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

    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->findViewById(I)Landroid/view/View;

    move-result-object p0

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

    :goto_3
    const v0, 0x7f0b05a3

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

.method public final y(ZZZ)V
    .locals 2

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_0
    sget-object v0, Lnbe;->a:Lnbe;

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_1
    new-array p2, p1, [F

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->L(Landroid/animation/ObjectAnimator;)V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-eqz p1, :cond_0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_0
    :goto_4
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p3}, Landroid/animation/ObjectAnimator;->cancel()V

    :goto_6
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->n:Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {p0, v1, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    goto/32 :goto_10

    nop

    nop

    :goto_d
    if-nez v0, :cond_1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_1
    :goto_e
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_f
    const/4 p1, 0x1

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

    :goto_10
    iget p1, p1, Landroid/graphics/Rect;->left:I

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    :goto_12
    goto/32 :goto_41

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getTranslationY()F

    move-result p1

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_14
    goto/16 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_4b

    nop

    nop

    :goto_16
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

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

    :goto_17
    if-eqz p3, :cond_2

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

    :cond_2
    goto/32 :goto_36

    nop

    nop

    :goto_18
    add-float/2addr p1, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_19
    cmpl-float p1, p1, p3

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 p3, 0x0

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    int-to-float p1, p1

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_1c
    aput p3, p1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-boolean v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->s:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_1e
    iget-object p3, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->t:Landroid/animation/ObjectAnimator;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getRootView()Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_21
    return-void

    nop

    :goto_22
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->L(Landroid/animation/ObjectAnimator;)V

    goto/32 :goto_7

    nop

    nop

    :goto_24
    iget-object p1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->q:Lnbe;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_25
    sub-float p3, p1, p3

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_27
    new-array p1, p1, [F

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

    :goto_28
    const v0, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-eqz p1, :cond_3

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

    :cond_3
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_2a
    if-lez v0, :cond_4

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_3b

    nop

    :goto_2b
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-nez p1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :cond_5
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object p1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->t:Landroid/animation/ObjectAnimator;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2e
    iput-object p1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->u:Landroid/animation/ObjectAnimator;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_2f
    const-string v1, "translationY"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_30
    iget-object p0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->u:Landroid/animation/ObjectAnimator;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p1, p3}, Landroid/view/View;->setTranslationY(F)V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    const v1, 0x1e

    nop

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

    :goto_33
    iget-object p3, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->u:Landroid/animation/ObjectAnimator;

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

    nop

    :goto_34
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_35
    iput-object v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->n:Landroid/view/View;

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

    :goto_36
    iget-object v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->u:Landroid/animation/ObjectAnimator;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getTranslationY()F

    move-result p3

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_38
    iput-boolean p1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->s:Z

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

    :goto_39
    iput-object p2, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->t:Landroid/animation/ObjectAnimator;

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_8

    nop

    :goto_3c
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_3d
    iget-object p2, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->n:Landroid/view/View;

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

    :goto_3e
    invoke-virtual {p1, v0}, Lnbe;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    const v0, 0x7f070a8a

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_40
    invoke-virtual {p0, p3}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->setTranslationY(F)V

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_41
    if-eqz p2, :cond_6

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_9

    nop

    nop

    :goto_42
    invoke-static {p2, v1, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_43
    aput p3, p2, v0

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_44
    if-eq v0, p1, :cond_7

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_45
    const v1, 0x7f0b0297

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_46
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_47
    invoke-virtual {p3}, Landroid/animation/ObjectAnimator;->cancel()V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    if-nez p3, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_8
    :goto_49
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_4b
    new-instance p1, Landroid/graphics/Rect;

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    int-to-float p3, p3

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final z(Landroid/widget/TextView;IFLandroid/graphics/Typeface;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setLetterSpacing(F)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop
.end method
