.class public Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;
.super Lhsd;
.source "PG"


# instance fields
.field public final a:Landroid/graphics/Paint;

.field public final b:Landroid/graphics/Paint;

.field public final c:Landroid/graphics/Path;

.field public final d:Landroid/graphics/Path;

.field public final f:Landroid/graphics/PathMeasure;

.field public final g:Landroid/content/Context;

.field public final h:Landroid/graphics/Rect;

.field public final i:Landroid/graphics/Rect;

.field public final j:Landroid/graphics/RectF;

.field public final k:Ljava/util/Set;

.field public l:F

.field public m:F

.field public n:F

.field public o:I

.field public p:I

.field public q:Landroid/animation/AnimatorSet;

.field public r:I

.field public s:Landroidx/wear/ambient/AmbientDelegate;

.field private final t:Landroid/graphics/Paint;

.field private final u:Landroid/graphics/Paint;

.field private final v:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance p1, Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    new-instance p1, Landroid/graphics/PathMeasure;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_2
    const/4 p2, 0x1

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

    :goto_3
    new-instance p1, Landroid/graphics/Path;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->t:Landroid/graphics/Paint;

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

    nop

    nop

    :goto_5
    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput p2, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->r:I

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_8
    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_9
    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    goto/32 :goto_e

    nop

    nop

    :goto_b
    iput-object p1, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->i:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_c
    new-instance p1, Landroid/graphics/Paint;

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

    :goto_d
    new-instance p1, Landroid/graphics/Path;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput-object p1, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->v:Landroid/graphics/Paint;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_f
    const/4 p2, 0x4

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_10
    iput-object p1, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->u:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iput-object p1, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->f:Landroid/graphics/PathMeasure;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_12
    iput-object p1, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->c:Landroid/graphics/Path;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_13
    new-instance p1, Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_14
    new-instance p1, Landroid/graphics/RectF;

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

    :goto_15
    iput-object p1, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->h:Landroid/graphics/Rect;

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

    nop

    :goto_16
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iput-object p1, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->b:Landroid/graphics/Paint;

    nop

    nop

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

    :goto_18
    invoke-static {p2}, Lj$/util/DesugarCollections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/high16 p2, -0x10000

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    new-instance p2, Ljava/util/HashSet;

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

    :goto_1b
    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1c
    new-instance p1, Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_1d
    invoke-direct {p1}, Landroid/graphics/PathMeasure;-><init>()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iput-object p1, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->d:Landroid/graphics/Path;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1f
    iput p2, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->p:I

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

    :goto_20
    iput-object p1, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->g:Landroid/content/Context;

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

    :goto_21
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    new-instance p1, Landroid/graphics/Rect;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_23
    new-instance p1, Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_24
    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const/4 p2, 0x0

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_26
    iput-object p1, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->j:Landroid/graphics/RectF;

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

    :goto_27
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_28
    new-instance p1, Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iput p2, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->o:I

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

    :goto_2a
    iput-object p2, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->k:Ljava/util/Set;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_2b
    iput-object p1, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->a:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2c
    return-void

    nop

    nop

    :goto_2d
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    goto/32 :goto_26

    nop

    nop

    :goto_2f
    invoke-direct {p0, p1, p2}, Lhsd;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_1a

    nop

    nop
.end method


# virtual methods
.method public final b(FFJ)Landroid/animation/ValueAnimator;
    .locals 3

    goto/32 :goto_3

    nop

    nop

    :goto_0
    new-instance v0, Lier;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_1a

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_4
    aput p2, v0, v2

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_7
    const/4 v0, 0x2

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p2, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {v0, p0, p1}, Lies;-><init>(Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;F)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0, p0, p1}, Lier;-><init>(Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;F)V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_b
    new-instance p0, Landroid/view/animation/DecelerateInterpolator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p2, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v0, p0, v1, v2}, Lieq;-><init>(Landroid/view/View;I[B)V

    goto/32 :goto_11

    nop

    nop

    :goto_e
    new-instance v0, Lies;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_10
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/32 :goto_0

    nop

    nop

    :goto_12
    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_15
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_17
    new-array v0, v0, [F

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    aput p1, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_19
    return-object p2

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1b
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    new-instance v0, Lieq;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_1e
    const v1, 0x16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    goto/32 :goto_34

    nop

    nop

    :goto_0
    iget v1, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->p:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_1
    iget-object v0, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->i:Landroid/graphics/Rect;

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget v0, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->m:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    :goto_3
    iget v4, v4, Landroid/graphics/RectF;->left:F

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sub-float/2addr v5, v0

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->d:Landroid/graphics/Path;

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    div-float/2addr v3, v6

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_7
    check-cast v2, Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_8
    check-cast v1, Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    :goto_9
    iget v1, v1, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->r:I

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_b
    goto/32 :goto_4f

    nop

    nop

    :goto_c
    throw v1

    nop

    nop

    :goto_d
    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-float/2addr v3, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v1, v0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_10
    if-gtz v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    :goto_11
    if-nez v9, :cond_1

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v1, v0, v3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    goto/32 :goto_ab

    nop

    nop

    :goto_13
    check-cast v9, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;

    nop

    nop

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

    :goto_14
    const/high16 v6, 0x40000000    # 2.0f

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

    nop

    :goto_15
    if-eq v0, v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :cond_2
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_16
    iget-object v4, v0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_17
    add-float/2addr v2, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p1, v7, v7, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-eq v0, v4, :cond_3

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1a
    iget-object v1, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->a:Landroid/graphics/Paint;

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    :goto_1b
    iget-object v0, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->q:Landroid/animation/AnimatorSet;

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    :goto_1c
    sub-float/2addr v4, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_1d
    check-cast v2, Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    :goto_1e
    iget-object v0, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->d:Landroid/graphics/Path;

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_1f
    int-to-float v1, v1

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_20
    add-float/2addr v1, v2

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    :goto_21
    iget v0, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->r:I

    nop

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

    :goto_22
    iget v0, v0, Landroid/graphics/RectF;->top:F

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_23
    iget v1, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->l:F

    nop

    goto/32 :goto_b5

    nop

    nop

    :goto_24
    sub-int/2addr v1, v0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-gtz v1, :cond_4

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p1, v0, v5, v5, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_27
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_28
    iget v0, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->m:F

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_29
    goto/16 :goto_27

    nop

    :goto_2a
    goto/32 :goto_1b

    nop

    nop

    :goto_2b
    iget-object v9, v0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v1, v7, v0, v3, v2}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget v1, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->p:I

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_2e
    check-cast v2, Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v3, v0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    :goto_30
    iget v2, v2, Landroid/graphics/RectF;->right:F

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

    :goto_31
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :goto_32
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const v0, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_35
    iget v0, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->r:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_36
    check-cast v2, Landroid/graphics/RectF;

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    :goto_37
    check-cast v1, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_38
    iget-object v3, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->d:Landroid/graphics/Path;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_39
    const/4 v3, 0x0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_3a
    if-ne v9, v2, :cond_5

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_9a

    nop

    nop

    nop

    :goto_3b
    iget-object v1, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->f:Landroid/graphics/PathMeasure;

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    const/4 v2, 0x1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    sub-float/2addr v3, v4

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3e
    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    :goto_3f
    add-int v0, v0, v1

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    const/high16 v5, 0x41f00000    # 30.0f

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_41
    iget-object v0, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->j:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    :goto_42
    iget-object v0, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->i:Landroid/graphics/Rect;

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_44
    iget v0, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->r:I

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iget-object v1, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->d:Landroid/graphics/Path;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    :goto_46
    sub-float/2addr v2, v3

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_47
    iget v4, v0, Landroid/graphics/RectF;->right:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    check-cast v3, Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_49
    if-lez v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_58

    nop

    :goto_4a
    iget v4, v4, Landroid/graphics/RectF;->top:F

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    check-cast v1, Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    :goto_4c
    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_4d
    iget-object v0, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->d:Landroid/graphics/Path;

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_4e
    if-nez v0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    iget v0, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->r:I

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_50
    iget-object v4, v0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    :goto_51
    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    nop

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

    :goto_52
    iget-object v3, v0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

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

    nop

    :goto_53
    if-eq v0, v1, :cond_8

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_be

    nop

    nop

    nop

    nop

    :goto_54
    div-float/2addr v2, v6

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_55
    iget-object v1, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->d:Landroid/graphics/Path;

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_56
    iget-object v1, v0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_57
    add-float/2addr v1, v2

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    :goto_58
    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    :goto_59
    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_5a
    sub-float/2addr v4, v5

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_5c
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    iget v2, v2, Landroid/graphics/RectF;->right:F

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    iget-object v1, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->b:Landroid/graphics/Paint;

    nop

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

    :goto_5f
    div-float/2addr v4, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    :goto_60
    iget-object v9, v0, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_61
    check-cast v4, Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_62
    int-to-float v1, v1

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    :goto_63
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    :goto_64
    iget-object v0, v0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    :goto_65
    iget v4, v0, Landroid/graphics/RectF;->top:F

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

    nop

    :goto_66
    div-float/2addr v2, v6

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_67
    mul-float/2addr v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_68
    const/4 v7, 0x0

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_69
    int-to-float v1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    iget-object v1, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->v:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_6b
    const v1, 0x3

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_6c
    const/4 v4, 0x6

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    iget v3, v3, Landroid/graphics/RectF;->left:F

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_70
    if-nez v0, :cond_9

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_71
    iget v0, v0, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    :goto_72
    return-void

    nop

    nop

    :goto_73
    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    :goto_74
    check-cast v9, Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    :goto_75
    iget-object v1, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->b:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    int-to-float v1, v1

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_77
    iget v1, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->l:F

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_78
    iget-object v1, v0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    :goto_79
    iget-object v0, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->u:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_7a
    iget v0, v0, Landroid/graphics/Rect;->left:I

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-virtual {p1, v1, v1, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    iget v0, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->p:I

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    :goto_7d
    iget-object p0, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->b:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    :goto_7e
    iget v9, v9, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->r:I

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_7f
    const/4 v3, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_80
    iget-object v0, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->i:Landroid/graphics/Rect;

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_81
    sub-float/2addr v2, v4

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_82
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_83
    div-float/2addr v5, v6

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_84
    new-instance v0, Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    add-float/2addr v4, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    iget-object v0, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->v:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_87
    iget-object v4, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->d:Landroid/graphics/Path;

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    :goto_88
    iget-object v2, v0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

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

    :goto_89
    iget v1, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->p:I

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_8a
    iget v1, v0, Landroid/graphics/Rect;->right:I

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_8b
    iget-object v1, v0, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

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

    :goto_8c
    iget-object v0, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->b:Landroid/graphics/Paint;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_8d
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_8e
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    invoke-virtual {v1, v7, v0, v4, v2}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    goto/32 :goto_41

    nop

    nop

    :goto_90
    add-float/2addr v2, v4

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_91
    rem-int v0, v0, v1

    nop

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

    :goto_92
    check-cast v3, Landroid/graphics/RectF;

    nop

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

    nop

    :goto_93
    check-cast v4, Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_94
    iget v9, v9, Landroid/graphics/RectF;->top:F

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_95
    if-eq v0, v3, :cond_a

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_96
    iget v5, v0, Landroid/graphics/RectF;->left:F

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_97
    check-cast v4, Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_98
    if-nez v0, :cond_b

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

    :cond_b
    goto/32 :goto_1a

    nop

    nop

    :goto_99
    iget-object v4, v0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    if-eq v9, v4, :cond_c

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_56

    nop

    nop

    :goto_9b
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_9c
    iget-object v1, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->f:Landroid/graphics/PathMeasure;

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    invoke-virtual {p1, v0, v5, v5, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    invoke-virtual {p1, v7, v7, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_a0
    iget-object v2, v0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_a1
    iget-object v2, v0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_a2
    const/4 v1, 0x3

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

    nop

    nop

    :goto_a3
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    div-float/2addr v4, v6

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_a5
    iget-object p0, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->u:Landroid/graphics/Paint;

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    iget v3, v0, Landroid/graphics/RectF;->left:F

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_a7
    iget-object v0, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->t:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    invoke-virtual {p1, v1, v5, v5, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_a9
    goto/32 :goto_8b

    nop

    nop

    :goto_aa
    invoke-virtual {v0, v7, v7, v1, v2}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    iget v1, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->n:F

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    :goto_ac
    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_ad
    iget v2, v2, Landroid/graphics/RectF;->top:F

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

    nop

    :goto_ae
    check-cast v1, Landroid/graphics/RectF;

    nop

    goto/32 :goto_c0

    nop

    nop

    :goto_af
    iget-object v1, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->a:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_b0
    iget-object v0, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->s:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    iget-object v2, v0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_b2
    iget-object v0, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->d:Landroid/graphics/Path;

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

    :goto_b3
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_b4
    int-to-float v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    mul-float/2addr v0, v1

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_b6
    iget v1, v1, Landroid/graphics/RectF;->left:F

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    iget v2, v2, Landroid/graphics/RectF;->top:F

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_b8
    iget-object v8, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->t:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    :goto_b9
    throw v1

    nop

    nop

    :goto_ba
    goto/32 :goto_9b

    nop

    nop

    :goto_bb
    if-eq v1, v3, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    :cond_d
    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    check-cast v0, Landroid/graphics/RectF;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_bd
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_be
    iget-object v0, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->f:Landroid/graphics/PathMeasure;

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_bf
    iget v1, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->p:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_c0
    iget v1, v1, Landroid/graphics/RectF;->left:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    :goto_c1
    sub-int/2addr v1, v0

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
.end method

.method protected final onFinishInflate()V
    .locals 5

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->a:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

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
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

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

    :goto_6
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    :goto_8
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_9
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

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

    :goto_a
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->u:Landroid/graphics/Paint;

    nop

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

    :goto_c
    goto/32 :goto_8

    nop

    nop

    :goto_d
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->t:Landroid/graphics/Paint;

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

    :goto_10
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_11
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    nop

    goto/32 :goto_2c

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

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_13
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_14
    iget-object v0, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->g:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object p0, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->v:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_16
    const/16 v2, 0x4c

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_17
    iget-object v0, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->v:Landroid/graphics/Paint;

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

    :goto_18
    const v4, 0x7f0600d6

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v0, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->b:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v0, v4}, Landroid/content/Context;->getColor(I)I

    move-result v0

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1b
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

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

    :goto_1c
    iget-object v0, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->t:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1d
    iget-object v0, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->b:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-super {p0}, Lhsd;->onFinishInflate()V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v0, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->b:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_23
    const v0, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v0, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->a:Landroid/graphics/Paint;

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

    :goto_25
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_2f

    nop

    nop

    :goto_26
    const/4 v1, -0x1

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v0, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->u:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v3, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->u:Landroid/graphics/Paint;

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

    :goto_29
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_f

    nop

    nop

    :goto_2a
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_d

    nop

    :goto_2c
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_15

    nop

    nop

    :goto_2d
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v0, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->a:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2f
    iget-object v0, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->a:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_30
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_31
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_32
    iget-object v0, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->t:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const/high16 v2, 0x41000000    # 8.0f

    nop

    nop

    goto/32 :goto_6

    nop

    nop
.end method
