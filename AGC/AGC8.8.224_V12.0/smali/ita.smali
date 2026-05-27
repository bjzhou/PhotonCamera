.class public Lita;
.super Lisk;


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field public final A:F

.field public final B:F

.field public final C:Z

.field public D:Z

.field public E:F

.field public F:F

.field public G:Z

.field public H:Z

.field public I:Z

.field public J:Lmqp;

.field public K:F

.field public L:I

.field public M:I

.field private final N:Ljava/util/Set;

.field private final O:Landroid/animation/AnimatorSet;

.field private final P:Z

.field private final Q:Landroid/animation/AnimatorSet;

.field private final R:Landroid/animation/AnimatorSet;

.field private final S:Ljava/util/Set;

.field private final T:Landroid/content/res/Resources;

.field private final U:F

.field private final V:I

.field private W:Landroid/animation/AnimatorSet;

.field private X:Z

.field private Y:I

.field private final b:Landroid/animation/AnimatorListenerAdapter;

.field private final c:Landroid/animation/AnimatorListenerAdapter;

.field private final d:Landroid/animation/AnimatorListenerAdapter;

.field private final e:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final f:Ljava/lang/Runnable;

.field private final g:Ljava/lang/Runnable;

.field private final h:Ljwb;

.field public final i:Ldbx;

.field public final j:Ljwb;

.field public final k:Lfbz;

.field public final l:Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

.field public final m:Landroid/widget/SeekBar;

.field public final n:Landroid/animation/ValueAnimator;

.field public final o:Landroid/animation/ValueAnimator;

.field public final p:Landroid/animation/ValueAnimator;

.field public final q:Landroid/animation/ValueAnimator;

.field public final r:F

.field public final s:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

.field public final t:Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

.field public final u:Lirs;

.field public final v:Lmqp;

.field public final w:Ljvs;

.field public final x:Ldhi;

.field public final y:Landroid/view/animation/Interpolator;

.field public final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lita;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/camera/zoomui/view/ZoomUi;Ljava/util/Set;Ljwb;Ljwb;Lfbz;Lmqp;Ldbx;Ljvs;Ldhi;FLirs;Ljava/util/Set;)V
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p9

    invoke-direct {p0}, Lisk;-><init>()V

    new-instance v3, Lisl;

    invoke-direct {v3, p0}, Lisl;-><init>(Lita;)V

    iput-object v3, v0, Lita;->b:Landroid/animation/AnimatorListenerAdapter;

    new-instance v4, Lism;

    invoke-direct {v4, p0}, Lism;-><init>(Lita;)V

    iput-object v4, v0, Lita;->c:Landroid/animation/AnimatorListenerAdapter;

    new-instance v5, Lisn;

    invoke-direct {v5, p0}, Lisn;-><init>(Lita;)V

    iput-object v5, v0, Lita;->d:Landroid/animation/AnimatorListenerAdapter;

    new-instance v6, Liid;

    const/16 v7, 0x10

    invoke-direct {v6, p0, v7}, Liid;-><init>(Lita;I)V

    iput-object v6, v0, Lita;->e:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v7, Liwu;

    const/4 v8, 0x1

    invoke-direct {v7, p0, v8}, Liwu;-><init>(Lita;I)V

    iput-object v7, v0, Lita;->f:Ljava/lang/Runnable;

    new-instance v7, Liqg;

    const/16 v9, 0x13

    invoke-direct {v7, p0, v9}, Liqg;-><init>(Lita;I)V

    iput-object v7, v0, Lita;->g:Ljava/lang/Runnable;

    const/4 v7, 0x4

    iput v7, v0, Lita;->L:I

    const/high16 v7, 0x3f800000    # 1.0f

    iput v7, v0, Lita;->F:F

    const/4 v9, 0x0

    iput v9, v0, Lita;->Y:I

    const/4 v10, 0x3

    iput v10, v0, Lita;->M:I

    iput-boolean v9, v0, Lita;->H:Z

    iput-boolean v9, v0, Lita;->X:Z

    iput-boolean v8, v0, Lita;->I:Z

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-static {v10}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v10

    iput-object v10, v0, Lita;->J:Lmqp;

    iput v7, v0, Lita;->K:F

    invoke-static {}, Ljuh;->a()V

    move-object/from16 v7, p6

    iput-object v7, v0, Lita;->v:Lmqp;

    move-object v7, p2

    iput-object v7, v0, Lita;->N:Ljava/util/Set;

    move-object/from16 v7, p3

    iput-object v7, v0, Lita;->j:Ljwb;

    move-object/from16 v7, p4

    iput-object v7, v0, Lita;->h:Ljwb;

    move-object/from16 v7, p7

    iput-object v7, v0, Lita;->i:Ldbx;

    move-object/from16 v7, p5

    iput-object v7, v0, Lita;->k:Lfbz;

    move-object/from16 v7, p8

    iput-object v7, v0, Lita;->w:Ljvs;

    iput-object v2, v0, Lita;->x:Ldhi;

    move/from16 v7, p10

    iput v7, v0, Lita;->r:F

    iput-object v1, v0, Lita;->s:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    move-object/from16 v7, p11

    iput-object v7, v0, Lita;->u:Lirs;

    sget-object v7, Ldho;->ar:Ldhj;

    invoke-interface {v2, v7}, Ldhi;->l(Ldhj;)Z

    move-result v7

    iput-boolean v7, v0, Lita;->P:Z

    move-object/from16 v7, p12

    iput-object v7, v0, Lita;->S:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iput-object v7, v0, Lita;->T:Landroid/content/res/Resources;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->t()Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

    move-result-object v10

    iput-object v10, v0, Lita;->l:Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->k()Landroid/widget/SeekBar;

    move-result-object v10

    iput-object v10, v0, Lita;->m:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->u()Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    move-result-object v10

    iput-object v10, v0, Lita;->t:Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    new-instance v10, Landroid/animation/ValueAnimator;

    invoke-direct {v10}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v10, v0, Lita;->p:Landroid/animation/ValueAnimator;

    invoke-virtual {v10, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v10, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v11, 0x1f4

    invoke-virtual {v10, v11, v12}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v3, Lakf;

    invoke-direct {v3}, Lakf;-><init>()V

    invoke-virtual {v10, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Landroid/animation/ValueAnimator;

    invoke-direct {v3}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v3, v0, Lita;->o:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v10, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v10}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v10}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Landroid/animation/ValueAnimator;

    invoke-direct {v3}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v3, v0, Lita;->n:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v3, v11, v12}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v10, Lakf;

    invoke-direct {v10}, Lakf;-><init>()V

    invoke-virtual {v3, v10}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v3, Landroid/animation/ValueAnimator;

    invoke-direct {v3}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v3, v0, Lita;->q:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v3, v11, v12}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v4, Lakf;

    invoke-direct {v4}, Lakf;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v5, v4, [F

    fill-array-data v5, :array_0

    invoke-static {p1, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v5, 0x12c

    invoke-virtual {v3, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v5, Lakf;

    invoke-direct {v5}, Lakf;-><init>()V

    invoke-virtual {v3, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v5, Liso;

    invoke-direct {v5, p1}, Liso;-><init>(Landroid/view/View;)V

    invoke-virtual {v3, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v4, v4, [Landroid/animation/Animator;

    filled-new-array {v9, v8}, [I

    move-result-object v6

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v6

    const-wide/16 v10, 0x64

    invoke-virtual {v6, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v6

    aput-object v6, v4, v9

    aput-object v3, v4, v8

    invoke-virtual {v5, v4}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    iput-object v5, v0, Lita;->O:Landroid/animation/AnimatorSet;

    sget-object v3, Ldho;->aj:Ldhj;

    invoke-interface {v2, v3}, Ldhi;->l(Ldhj;)Z

    move-result v3

    iput-boolean v3, v0, Lita;->G:Z

    invoke-direct {p0, v8}, Lita;->N(Z)Landroid/animation/AnimatorSet;

    move-result-object v3

    iput-object v3, v0, Lita;->Q:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v9}, Lita;->N(Z)Landroid/animation/AnimatorSet;

    move-result-object v3

    iput-object v3, v0, Lita;->R:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x10c000d

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, v0, Lita;->y:Landroid/view/animation/Interpolator;

    const v1, 0x7f0c00cc

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lita;->z:I

    const v1, 0x7f07089e

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, v0, Lita;->A:F

    const v1, 0x7f07089f

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, v0, Lita;->B:F

    invoke-static/range {p9 .. p9}, Lkba;->s(Ldhi;)Z

    move-result v1

    iput-boolean v1, v0, Lita;->C:Z

    const v1, 0x7f0708e1

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, v0, Lita;->U:F

    const v1, 0x7f0c0022

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lita;->V:I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static I(I)I
    .locals 1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :cond_1
    :goto_0
    return p0
.end method

.method private final N(Z)Landroid/animation/AnimatorSet;
    .locals 10

    iget-object v0, p0, Lita;->s:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->n()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lita;->T:Landroid/content/res/Resources;

    const v2, 0x7f0708ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v3, p0, Lita;->T:Landroid/content/res/Resources;

    const v4, 0x7f0708aa

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v5, p0, Lita;->T:Landroid/content/res/Resources;

    const v6, 0x7f0708a1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v6, p0, Lita;->T:Landroid/content/res/Resources;

    const v7, 0x7f0708a9

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iget-object v7, p0, Lita;->T:Landroid/content/res/Resources;

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v7, p0, Lita;->T:Landroid/content/res/Resources;

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    iget-object v7, p0, Lita;->T:Landroid/content/res/Resources;

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr v2, v7

    iget-object v7, p0, Lita;->T:Landroid/content/res/Resources;

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr v4, v7

    iget-object v7, p0, Lita;->T:Landroid/content/res/Resources;

    const v8, 0x7f0708a6

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iget-object v8, p0, Lita;->T:Landroid/content/res/Resources;

    const v9, 0x7f0708a7

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    if-eqz p1, :cond_0

    filled-new-array {v1, v3}, [I

    move-result-object v1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    goto :goto_0

    :cond_0
    filled-new-array {v3, v1}, [I

    move-result-object v1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    :goto_0
    new-instance v3, Liid;

    const/16 v9, 0xc

    invoke-direct {v3, v0, v9}, Liid;-><init>(Landroid/widget/TextView;I)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-eqz p1, :cond_1

    sub-int v3, v5, v6

    filled-new-array {v5, v3}, [I

    move-result-object v3

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    goto :goto_1

    :cond_1
    sub-int v3, v5, v6

    filled-new-array {v3, v5}, [I

    move-result-object v3

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    :goto_1
    new-instance v5, Liid;

    const/16 v6, 0xd

    invoke-direct {v5, v0, v6}, Liid;-><init>(Landroid/widget/TextView;I)V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v9, 0x2

    if-eqz p1, :cond_2

    new-array v9, v9, [F

    aput v2, v9, v6

    aput v4, v9, v5

    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    goto :goto_2

    :cond_2
    new-array v9, v9, [F

    aput v4, v9, v6

    aput v2, v9, v5

    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    :goto_2
    new-instance v4, Liid;

    const/16 v5, 0xe

    invoke-direct {v4, v0, v5}, Liid;-><init>(Landroid/widget/TextView;I)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-eqz p1, :cond_3

    filled-new-array {v7, v8}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_3

    :cond_3
    filled-new-array {v8, v7}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    :goto_3
    new-instance v4, Liid;

    const/16 v5, 0xf

    invoke-direct {v4, p0, v5}, Liid;-><init>(Lita;I)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v4, 0x53

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v5, Lakf;

    invoke-direct {v5}, Lakf;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p1, :cond_4

    const-wide/16 v5, 0xc8

    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    goto :goto_4

    :cond_4
    const-wide/16 v5, 0x1e

    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v5, 0x12c

    invoke-virtual {v3, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :goto_4
    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object v4
.end method

.method private final O(I)Z
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lita;->x:Ldhi;

    sget-object v0, Ldho;->ah:Ldhj;

    invoke-interface {p1, v0}, Ldhi;->l(Ldhj;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method public final A(Z)V
    .locals 1

    iget-boolean v0, p0, Lita;->G:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lita;->H:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    iget-object p1, p0, Lita;->O:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->reverse()V

    return-void

    :cond_2
    iget-object p1, p0, Lita;->s:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->setVisibility(I)V

    return-void
.end method

.method public final B(Z)V
    .locals 3

    iget-boolean v0, p0, Lita;->X:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lita;->X:Z

    iget-object v0, p0, Lita;->S:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    iget-object v1, v1, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->a:Ljava/lang/Object;

    check-cast v1, Lgdz;

    invoke-virtual {v1}, Lgdz;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lgdz;->f:Ljvs;

    invoke-interface {v2}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lika;

    invoke-static {v2}, Lhyo;->b(Lika;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v2}, Lgdz;->a(Z)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final C()V
    .locals 1

    iget v0, p0, Lita;->M:I

    invoke-virtual {p0, v0}, Lita;->M(I)V

    return-void
.end method

.method public final D()V
    .locals 16

    move-object/from16 v1, p0

    iget-boolean v0, v1, Lita;->G:Z

    if-eqz v0, :cond_10

    iget-boolean v0, v1, Lita;->H:Z

    if-nez v0, :cond_10

    iget-object v0, v1, Lita;->x:Ldhi;

    sget-object v2, Ldho;->am:Ldhj;

    invoke-interface {v0, v2}, Ldhi;->l(Ldhj;)Z

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_b

    sget-object v5, Lita;->a:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v0, v1, Lita;->t:Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    iget-object v6, v1, Lita;->j:Ljwb;

    invoke-interface {v6}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v0, v6}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->e(F)F

    move-result v6

    iget v7, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->h:F

    const/high16 v8, 0x447a0000    # 1000.0f

    mul-float v7, v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    mul-float v8, v8, v6

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    if-eq v7, v8, :cond_0

    iput v6, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->h:F

    :cond_0
    iget-object v0, v1, Lita;->t:Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_a

    iget v0, v1, Lita;->L:I

    if-eqz v0, :cond_9

    if-ne v0, v3, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object v0, v1, Lita;->W:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v1, Lita;->W:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_2
    iget-object v0, v1, Lita;->s:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->h()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-boolean v0, v1, Lita;->C:Z

    if-nez v0, :cond_3

    iget-object v0, v1, Lita;->s:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->n()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v1, Lita;->s:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->j()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    iget-object v0, v1, Lita;->s:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getRootView()Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0b03f6

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->u()Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    move-result-object v8

    if-eqz v7, :cond_6

    if-nez v8, :cond_4

    const/4 v7, 0x1

    goto :goto_1

    :cond_4
    new-array v9, v2, [I

    invoke-virtual {v7, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v10, v9, v4

    aget v11, v9, v3

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v12

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-virtual {v8, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v8, v9, v4

    aget v9, v9, v3

    if-lt v8, v10, :cond_5

    add-int/2addr v10, v12

    if-gt v8, v10, :cond_5

    if-lt v9, v11, :cond_5

    add-int/2addr v11, v7

    if-gt v9, v11, :cond_5

    goto :goto_0

    :cond_5
    const/4 v7, 0x0

    goto :goto_1

    :cond_6
    :goto_0
    const/4 v7, 0x1

    :goto_1
    iget-object v0, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->k:Lgzm;

    sget-object v8, Lgzd;->u:Lgzr;

    invoke-interface {v0, v8}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    if-nez v7, :cond_7

    const/4 v0, 0x4

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    :goto_2
    iget-object v7, v1, Lita;->s:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    invoke-virtual {v7}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->g()Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v1, Lita;->t:Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    invoke-virtual {v0, v4}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->setVisibility(I)V

    iput v3, v1, Lita;->L:I

    iget-object v0, v1, Lita;->t:Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->getWidth()I

    move-result v0

    iget-object v7, v1, Lita;->T:Landroid/content/res/Resources;

    const v8, 0x7f0708cb

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    add-int/2addr v0, v7

    new-array v7, v2, [I

    iget-object v8, v1, Lita;->s:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    invoke-virtual {v8}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->g()Landroid/widget/ImageView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ImageView;->getWidth()I

    move-result v8

    aput v8, v7, v4

    aput v0, v7, v3

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v7, Liid;

    const/16 v8, 0x9

    invoke-direct {v7, v1, v8}, Liid;-><init>(Lita;I)V

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v7, 0xc8

    invoke-virtual {v0, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-array v7, v2, [F

    fill-array-data v7, :array_0

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    new-instance v8, Liid;

    const/16 v9, 0xa

    invoke-direct {v8, v1, v9}, Liid;-><init>(Lita;I)V

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v8, 0x53

    invoke-virtual {v7, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-array v10, v2, [F

    fill-array-data v10, :array_1

    invoke-static {v10}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v10

    new-instance v11, Liid;

    const/16 v12, 0xb

    invoke-direct {v11, v1, v12}, Liid;-><init>(Lita;I)V

    invoke-virtual {v10, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v10, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v11, v1, Lita;->s:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    invoke-virtual {v11}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->d()Landroid/view/ViewGroup;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/view/ViewGroup;->setEnabled(Z)V

    iget-object v11, v1, Lita;->s:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    invoke-virtual {v11}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->n()Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v12, v2, [Landroid/animation/Animator;

    aput-object v10, v12, v4

    aput-object v7, v12, v3

    invoke-virtual {v11, v12}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    iget-boolean v10, v1, Lita;->C:Z

    if-eqz v10, :cond_8

    iget-object v6, v1, Lita;->s:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    invoke-virtual {v6}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->o()Landroid/widget/TextView;

    move-result-object v6

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setAlpha(F)V

    invoke-virtual/range {p0 .. p0}, Lita;->w()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setTranslationX(F)V

    iget v12, v1, Lita;->U:F

    div-float/2addr v12, v13

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setTranslationY(F)V

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v6}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual {v6, v12}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    iget v14, v1, Lita;->V:I

    int-to-long v14, v14

    invoke-virtual {v6, v14, v15}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    iget v6, v1, Lita;->U:F

    neg-float v6, v6

    div-float/2addr v6, v13

    invoke-virtual/range {p0 .. p0}, Lita;->w()I

    move-result v14

    neg-int v14, v14

    int-to-float v14, v14

    div-float/2addr v14, v13

    invoke-virtual/range {p0 .. p0}, Lita;->v()F

    move-result v13

    iget-object v15, v1, Lita;->s:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    invoke-virtual {v15}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->n()Landroid/widget/TextView;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lita;->w()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v13, v3

    invoke-virtual {v15, v13}, Landroid/widget/TextView;->setTranslationX(F)V

    invoke-virtual {v15, v10}, Landroid/widget/TextView;->setTranslationY(F)V

    invoke-virtual {v15, v12}, Landroid/widget/TextView;->setAlpha(F)V

    invoke-virtual {v15, v4}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v15}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v14}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v0, v2, v4

    const/4 v0, 0x1

    aput-object v11, v2, v0

    invoke-virtual {v7, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_3

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lita;->w()I

    move-result v3

    filled-new-array {v3, v4}, [I

    move-result-object v3

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    new-instance v8, Liid;

    const/4 v9, 0x5

    invoke-direct {v8, v1, v9}, Liid;-><init>(Lita;I)V

    invoke-virtual {v3, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v0, v6, v4

    const/4 v0, 0x1

    aput-object v11, v6, v0

    iget-object v0, v1, Lita;->Q:Landroid/animation/AnimatorSet;

    aput-object v0, v6, v2

    const/4 v0, 0x3

    aput-object v3, v6, v0

    invoke-virtual {v7, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_3
    new-instance v0, Lisr;

    invoke-direct {v0, v1}, Lisr;-><init>(Lita;)V

    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v7, v1, Lita;->W:Landroid/animation/AnimatorSet;

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lita;->B(Z)V

    monitor-exit v5

    goto/16 :goto_5

    :cond_9
    const/4 v0, 0x0

    throw v0

    :cond_a
    :goto_4
    monitor-exit v5

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_b
    iget-object v0, v1, Lita;->s:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    sget-object v3, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->a:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    iget v5, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->l:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_c

    monitor-exit v3

    goto/16 :goto_5

    :cond_c
    iput v6, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->l:I

    invoke-virtual {v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->k()Landroid/widget/SeekBar;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0708c1

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0708fa

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v8, v8

    iget v9, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->g:F

    mul-float v8, v8, v9

    invoke-virtual {v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0708c9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    invoke-virtual {v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0708c8

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-virtual {v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0708c6

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    sub-int v12, v10, v7

    div-int/2addr v12, v2

    add-int/2addr v11, v11

    add-int/2addr v12, v11

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    int-to-float v9, v9

    iget v11, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->g:F

    mul-float v9, v9, v11

    float-to-int v9, v9

    iput v9, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v10, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v6, v2}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v2, 0x186a0

    invoke-virtual {v6, v2}, Landroid/widget/SeekBar;->setMax(I)V

    float-to-int v2, v8

    invoke-virtual {v6, v2, v12, v2, v12}, Landroid/widget/SeekBar;->setPaddingRelative(IIII)V

    invoke-virtual {v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->g()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    if-ne v2, v7, :cond_d

    invoke-virtual {v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->g()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_f

    :cond_d
    invoke-virtual {v0, v5, v4}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->F(IZ)Landroid/animation/AnimatorSet;

    move-result-object v2

    new-instance v5, Litu;

    invoke-direct {v5, v0}, Litu;-><init>(Lcom/google/android/apps/camera/zoomui/view/ZoomUi;)V

    invoke-virtual {v2, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->c()Landroid/view/ViewGroup;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->b(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->h()Landroid/widget/ImageView;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->b(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-instance v6, Litv;

    invoke-direct {v6, v0}, Litv;-><init>(Lcom/google/android/apps/camera/zoomui/view/ZoomUi;)V

    invoke-virtual {v4, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->t()Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->b(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    move-result-object v6

    new-instance v7, Litw;

    invoke-direct {v7, v0}, Litw;-><init>(Lcom/google/android/apps/camera/zoomui/view/ZoomUi;)V

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v7, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->i:Landroid/animation/AnimatorSet;

    iget-object v7, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->i:Landroid/animation/AnimatorSet;

    invoke-virtual {v7, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v4, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->i:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v4, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->i:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v2, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->j:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->j:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_e
    iget-object v0, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->i:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_f
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lita;->z()V

    invoke-virtual/range {p0 .. p0}, Lita;->F()V

    return-void

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_10
    return-void

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
.end method

.method public final E()V
    .locals 2

    iget-boolean v0, p0, Lita;->H:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lita;->D()V

    iget-object v0, p0, Lita;->s:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lita;->O:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void
.end method

.method public final F()V
    .locals 5

    iget-object v0, p0, Lita;->s:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lita;->G:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lita;->P:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lita;->T:Landroid/content/res/Resources;

    const v1, 0x7f0c00d3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lita;->T:Landroid/content/res/Resources;

    const v1, 0x7f0c00d1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lita;->x:Ldhi;

    sget-object v2, Ldho;->bh:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0xa

    :cond_1
    iget-boolean v1, p0, Lita;->G:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lita;->s:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    iget-object v2, p0, Lita;->f:Ljava/lang/Runnable;

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_2
    iget-object v1, p0, Lita;->s:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    iget-object v2, p0, Lita;->g:Ljava/lang/Runnable;

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_3
    return-void
.end method

.method public final G()V
    .locals 2

    iget-object v0, p0, Lita;->h:Ljwb;

    iget-object v1, p0, Lita;->j:Ljwb;

    invoke-interface {v1}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-interface {v0, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    return-void
.end method

.method public final H()V
    .locals 4

    iget-object v0, p0, Lita;->l:Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->getAccessibilityLiveRegion()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lita;->l:Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

    new-instance v1, Liqg;

    const/16 v2, 0x14

    invoke-direct {v1, p0, v2}, Liqg;-><init>(Lita;I)V

    iget-object v2, p0, Lita;->T:Landroid/content/res/Resources;

    const v3, 0x7f0c00ce

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final J(IFF)V
    .locals 2

    iget-object v0, p0, Lita;->k:Lfbz;

    iget-object v1, p0, Lita;->i:Ldbx;

    invoke-interface {v1}, Ldbx;->d()Lklv;

    move-result-object v1

    invoke-interface {v0, p1, p2, p3, v1}, Lfbz;->P(IFFLklv;)V

    return-void
.end method

.method public final K(FI)I
    .locals 3

    sget-object v0, Litn;->b:Litn;

    invoke-virtual {v0}, Litn;->ordinal()I

    move-result v0

    iget-object v1, p0, Lita;->u:Lirs;

    iget v2, p0, Lita;->F:F

    invoke-virtual {v1, p1, v2}, Lirs;->c(FF)F

    move-result p1

    if-eqz p2, :cond_6

    add-int/lit8 p2, p2, -0x1

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object p2, p0, Lita;->u:Lirs;

    invoke-virtual {p2}, Lirs;->b()F

    move-result p2

    iget-object v1, p0, Lita;->u:Lirs;

    sget-object v2, Litn;->d:Litn;

    invoke-virtual {v2}, Litn;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Lirs;->a(I)F

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(FF)F

    move-result p2

    cmpl-float p2, p1, p2

    if-ltz p2, :cond_0

    sget-object p1, Litn;->d:Litn;

    invoke-virtual {p1}, Litn;->ordinal()I

    move-result v0

    goto/16 :goto_0

    :cond_0
    iget-object p2, p0, Lita;->u:Lirs;

    sget-object v1, Litn;->d:Litn;

    invoke-virtual {v1}, Litn;->ordinal()I

    move-result v1

    invoke-virtual {p2, v1}, Lirs;->a(I)F

    move-result p2

    cmpg-float p2, p1, p2

    if-gez p2, :cond_1

    iget-object p2, p0, Lita;->u:Lirs;

    sget-object v1, Litn;->c:Litn;

    invoke-virtual {v1}, Litn;->ordinal()I

    move-result v1

    invoke-virtual {p2, v1}, Lirs;->a(I)F

    move-result p2

    cmpl-float p2, p1, p2

    if-ltz p2, :cond_1

    sget-object p1, Litn;->c:Litn;

    invoke-virtual {p1}, Litn;->ordinal()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lita;->u:Lirs;

    sget-object v1, Litn;->b:Litn;

    invoke-virtual {v1}, Litn;->ordinal()I

    move-result v1

    invoke-virtual {p2, v1}, Lirs;->a(I)F

    move-result p2

    cmpg-float p1, p1, p2

    if-ltz p1, :cond_2

    goto :goto_0

    :cond_2
    sget-object p1, Litn;->a:Litn;

    invoke-virtual {p1}, Litn;->ordinal()I

    move-result p1

    return p1

    :pswitch_1
    iget-object p2, p0, Lita;->u:Lirs;

    sget-object v1, Litn;->c:Litn;

    invoke-virtual {v1}, Litn;->ordinal()I

    move-result v1

    invoke-virtual {p2, v1}, Lirs;->a(I)F

    move-result p2

    cmpl-float p2, p1, p2

    if-ltz p2, :cond_3

    sget-object p1, Litn;->c:Litn;

    invoke-virtual {p1}, Litn;->ordinal()I

    move-result v0

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lita;->u:Lirs;

    sget-object v1, Litn;->b:Litn;

    invoke-virtual {v1}, Litn;->ordinal()I

    move-result v1

    invoke-virtual {p2, v1}, Lirs;->a(I)F

    move-result p2

    cmpg-float p1, p1, p2

    if-ltz p1, :cond_4

    goto :goto_0

    :cond_4
    sget-object p1, Litn;->a:Litn;

    invoke-virtual {p1}, Litn;->ordinal()I

    move-result p1

    return p1

    :pswitch_2
    iget-object p2, p0, Lita;->u:Lirs;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lirs;->a(I)F

    move-result v1

    iget v2, p0, Lita;->F:F

    invoke-virtual {p2, v1, v2}, Lirs;->c(FF)F

    move-result p2

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_5

    return v0

    :cond_5
    const/4 p1, 0x0

    return p1

    :goto_0
    return v0

    :cond_6
    const/4 p1, 0x0

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final L(I)V
    .locals 2

    iget v0, p0, Lita;->Y:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lita;->Y:I

    iget-object v0, p0, Lita;->N:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Litk;

    invoke-interface {v1, p1}, Litk;->m(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final M(I)V
    .locals 23

    move-object/from16 v1, p0

    move/from16 v0, p1

    iget-boolean v2, v1, Lita;->H:Z

    const/16 v3, 0x8

    if-nez v2, :cond_0

    iget-object v2, v1, Lita;->s:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    invoke-virtual {v2}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getVisibility()I

    move-result v2

    if-ne v2, v3, :cond_0

    iget-object v2, v1, Lita;->m:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lita;->O:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    iget-object v2, v1, Lita;->s:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    sget-object v4, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->a:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget v5, v2, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->l:I

    const/4 v6, 0x0

    if-ne v5, v0, :cond_1

    monitor-exit v4

    goto/16 :goto_5

    :cond_1
    iput v0, v2, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->l:I

    invoke-virtual {v2}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->k()Landroid/widget/SeekBar;

    move-result-object v5

    invoke-virtual {v2, v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->E(I)I

    move-result v7

    invoke-virtual {v2}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0708f6

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-virtual {v2}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0708f9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    invoke-virtual {v2}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0708c8

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-virtual {v2}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0708f0

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    invoke-virtual {v2}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0708ee

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    sub-int/2addr v9, v7

    const/4 v13, 0x2

    div-int/2addr v9, v13

    sub-int v14, v10, v11

    div-int/2addr v14, v13

    const/4 v15, 0x3

    const/4 v3, 0x1

    if-ne v0, v13, :cond_2

    invoke-virtual {v2, v6, v13}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->G(ZI)V

    invoke-virtual {v2}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->c()Landroid/view/ViewGroup;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    move-object/from16 v6, v16

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    iput v8, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {v2}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->c()Landroid/view/ViewGroup;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getMax()I

    move-result v6

    if-eq v6, v3, :cond_5

    invoke-virtual {v5, v3}, Landroid/widget/SeekBar;->setMax(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v3, v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->G(ZI)V

    invoke-virtual {v2}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->c()Landroid/view/ViewGroup;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {v2}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->c()Landroid/view/ViewGroup;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-ne v0, v15, :cond_4

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    if-eq v0, v13, :cond_3

    invoke-virtual {v5, v13}, Landroid/widget/SeekBar;->setMax(I)V

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    :cond_4
    invoke-virtual {v5, v15}, Landroid/widget/SeekBar;->setMax(I)V

    :cond_5
    :goto_0
    invoke-virtual {v5}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    add-int/2addr v12, v7

    iput v12, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v10, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-nez v6, :cond_6

    invoke-virtual {v5, v9, v14, v9, v14}, Landroid/widget/SeekBar;->setPaddingRelative(IIII)V

    :cond_6
    invoke-virtual {v2}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->g()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    if-eqz v5, :cond_a

    if-eq v5, v11, :cond_a

    invoke-virtual {v2}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->c()Landroid/view/ViewGroup;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->b(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->h()Landroid/widget/ImageView;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->b(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    move-result-object v6

    new-instance v7, Litr;

    invoke-direct {v7, v2}, Litr;-><init>(Lcom/google/android/apps/camera/zoomui/view/ZoomUi;)V

    invoke-virtual {v5, v7}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2, v0, v3}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->F(IZ)Landroid/animation/AnimatorSet;

    move-result-object v3

    new-instance v7, Lahy;

    invoke-direct {v7, v15}, Lahy;-><init>(I)V

    invoke-virtual {v3, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v7, Lits;

    invoke-direct {v7, v2}, Lits;-><init>(Lcom/google/android/apps/camera/zoomui/view/ZoomUi;)V

    invoke-virtual {v3, v7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v7, v2, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->j:Landroid/animation/AnimatorSet;

    const-wide/16 v8, 0x0

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, v2, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->j:Landroid/animation/AnimatorSet;

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->getCurrentPlayTime()J

    move-result-wide v10

    iget-object v7, v2, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->j:Landroid/animation/AnimatorSet;

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_1

    :cond_7
    move-wide v10, v8

    :goto_1
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v7, v2, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->j:Landroid/animation/AnimatorSet;

    iget-object v7, v2, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->j:Landroid/animation/AnimatorSet;

    invoke-virtual {v7, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v3, v2, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->j:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v3, v2, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->i:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, v2, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->i:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_8
    iget-object v3, v2, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->j:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    cmp-long v3, v10, v8

    if-lez v3, :cond_9

    iget-object v3, v2, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->j:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->getStartDelay()J

    move-result-wide v5

    add-long/2addr v5, v10

    iget-object v3, v2, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->j:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v7

    cmp-long v3, v5, v7

    if-gez v3, :cond_9

    iget-object v3, v2, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->j:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v10, v11}, Landroid/animation/AnimatorSet;->setCurrentPlayTime(J)V

    goto :goto_2

    :cond_9
    sget-object v3, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->b:Lnak;

    invoke-virtual {v3}, Lnaf;->c()Lnaz;

    move-result-object v3

    check-cast v3, Lnah;

    const/16 v5, 0x1170

    invoke-interface {v3, v5}, Lnah;->G(I)Lnaz;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Lnah;

    const-string v18, "Unsupported current playtime = %s, total duration = %s"

    iget-object v3, v2, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->j:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v21

    move-wide/from16 v19, v10

    invoke-interface/range {v17 .. v22}, Lnah;->v(Ljava/lang/String;JJ)V

    :goto_2
    invoke-virtual {v2}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->g()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08014d

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_a
    new-array v5, v13, [I

    invoke-virtual {v2}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->g()Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageView;->getWidth()I

    move-result v6

    const/4 v8, 0x0

    aput v6, v5, v8

    aput v7, v5, v3

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    new-instance v5, Liid;

    const/16 v6, 0x14

    invoke-direct {v5, v2, v6}, Liid;-><init>(Lcom/google/android/apps/camera/zoomui/view/ZoomUi;I)V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v5, Litt;

    invoke-direct {v5, v2}, Litt;-><init>(Lcom/google/android/apps/camera/zoomui/view/ZoomUi;)V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v5, 0xc8

    invoke-virtual {v3, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->g()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_b

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->end()V

    goto :goto_3

    :cond_b
    iget-object v5, v2, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->i:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_c

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, v2, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->i:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_c
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    :goto_3
    invoke-virtual {v2}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->t()Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

    move-result-object v3

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->setVisibility(I)V

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->d(Z)V

    invoke-virtual {v2}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->g()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-eq v3, v5, :cond_d

    invoke-virtual {v2}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->c()Landroid/view/ViewGroup;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {v2}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->h()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_d
    :goto_4
    invoke-virtual {v2}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->invalidate()V

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_5
    iget-object v2, v1, Lita;->x:Ldhi;

    sget-object v3, Ldho;->am:Ldhj;

    invoke-interface {v2, v3}, Ldhi;->l(Ldhj;)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-direct {v1, v0}, Lita;->O(I)Z

    move-result v2

    if-eqz v2, :cond_f

    iget v2, v1, Lita;->F:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_e

    goto :goto_6

    :cond_e
    return-void

    :cond_f
    :goto_6
    iget v2, v1, Lita;->M:I

    if-eq v2, v0, :cond_12

    iget-object v2, v1, Lita;->s:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    invoke-virtual {v2}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->n()Landroid/widget/TextView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v1, Lita;->i:Ldbx;

    invoke-interface {v2}, Ldbx;->d()Lklv;

    move-result-object v2

    sget-object v3, Lklv;->a:Lklv;

    invoke-virtual {v2, v3}, Lklv;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, v1, Lita;->x:Ldhi;

    sget-object v3, Ldho;->ah:Ldhj;

    invoke-interface {v2, v3}, Ldhi;->l(Ldhj;)Z

    move-result v2

    if-nez v2, :cond_11

    :cond_10
    iget-object v2, v1, Lita;->w:Ljvs;

    invoke-interface {v2}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lika;

    sget-object v3, Lika;->c:Lika;

    invoke-virtual {v2, v3}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    iget-object v2, v1, Lita;->w:Ljvs;

    invoke-interface {v2}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lika;

    sget-object v3, Lika;->f:Lika;

    invoke-virtual {v2, v3}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    iget-object v2, v1, Lita;->w:Ljvs;

    invoke-interface {v2}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lika;

    sget-object v3, Lika;->m:Lika;

    invoke-virtual {v2, v3}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    invoke-direct {v1, v0}, Lita;->O(I)Z

    move-result v2

    if-nez v2, :cond_11

    iget-object v2, v1, Lita;->s:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    invoke-virtual {v2}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->h()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v3, v1, Lita;->s:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    iget-object v4, v1, Lita;->j:Ljwb;

    invoke-interface {v4}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v1, v4, v0}, Lita;->K(FI)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->a(I)I

    move-result v3

    if-eq v2, v3, :cond_14

    :cond_11
    iget-object v2, v1, Lita;->s:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    iget-object v3, v1, Lita;->j:Ljwb;

    invoke-interface {v3}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v1, v3, v0}, Lita;->K(FI)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->A(IZ)V

    goto :goto_7

    :cond_12
    const/4 v4, 0x0

    iget-object v2, v1, Lita;->s:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    iget-object v3, v1, Lita;->j:Ljwb;

    invoke-interface {v3}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v1, v3, v0}, Lita;->K(FI)I

    move-result v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->A(IZ)V

    goto :goto_7

    :cond_13
    iget-object v2, v1, Lita;->s:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    iget-object v3, v1, Lita;->j:Ljwb;

    invoke-interface {v3}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v1, v3, v0}, Lita;->K(FI)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->B(I)V

    :cond_14
    :goto_7
    iget-object v2, v1, Lita;->u:Lirs;

    iget-object v3, v1, Lita;->s:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    iget-object v4, v1, Lita;->j:Ljwb;

    invoke-interface {v4}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v2, v4}, Lirs;->d(F)Litn;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lirs;->e(Lcom/google/android/apps/camera/zoomui/view/ZoomUi;Litn;)V

    iget-object v2, v1, Lita;->j:Ljwb;

    invoke-interface {v2}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v3, v1, Lita;->u:Lirs;

    invoke-virtual {v3, v2}, Lirs;->h(F)Z

    move-result v2

    if-nez v2, :cond_15

    goto :goto_8

    :cond_15
    iget v2, v1, Lita;->M:I

    if-eq v2, v0, :cond_17

    :goto_8
    iget-object v2, v1, Lita;->u:Lirs;

    iget-object v2, v2, Lirs;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-nez v2, :cond_16

    iget-object v2, v1, Lita;->u:Lirs;

    iget-object v3, v1, Lita;->s:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    iget-object v4, v1, Lita;->j:Ljwb;

    invoke-interface {v4}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lirs;->g(Lcom/google/android/apps/camera/zoomui/view/ZoomUi;F)V

    iget-object v2, v1, Lita;->j:Ljwb;

    invoke-interface {v2}, Ljwb;->bm()Ljava/lang/Object;

    goto :goto_9

    :cond_16
    iget v2, v1, Lita;->M:I

    if-ne v2, v0, :cond_17

    iget-object v2, v1, Lita;->u:Lirs;

    iget-object v3, v1, Lita;->s:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    iget-object v4, v1, Lita;->j:Ljwb;

    invoke-interface {v4}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lirs;->g(Lcom/google/android/apps/camera/zoomui/view/ZoomUi;F)V

    :cond_17
    :goto_9
    iput v0, v1, Lita;->M:I

    iget-object v0, v1, Lita;->x:Ldhi;

    sget-object v2, Ldho;->am:Ldhj;

    invoke-interface {v0, v2}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual/range {p0 .. p0}, Lita;->x()Landroid/animation/AnimatorSet;

    :cond_18
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final v()F
    .locals 3

    iget-object v0, p0, Lita;->s:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lita;->B:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    div-float/2addr v0, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lita;->A:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public final w()I
    .locals 3

    iget-object v0, p0, Lita;->s:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    iget-object v1, p0, Lita;->j:Ljwb;

    invoke-interface {v1}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget v2, p0, Lita;->M:I

    invoke-virtual {p0, v1, v2}, Lita;->K(FI)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->a(I)I

    move-result v0

    return v0
.end method

.method public final x()Landroid/animation/AnimatorSet;
    .locals 14

    sget-object v0, Lita;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lita;->s:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->d()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lita;->L:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v1, p0, Lita;->W:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lita;->W:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->end()V

    :cond_1
    iget v1, p0, Lita;->M:I

    iput v1, p0, Lita;->L:I

    const/4 v1, 0x2

    new-array v3, v1, [I

    iget-object v4, p0, Lita;->s:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    invoke-virtual {v4}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->g()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    const/4 v5, 0x0

    aput v4, v3, v5

    iget-object v4, p0, Lita;->s:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    iget v6, p0, Lita;->M:I

    invoke-virtual {v4, v6}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->E(I)I

    move-result v4

    aput v4, v3, v2

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    new-instance v4, Liid;

    const/4 v6, 0x6

    invoke-direct {v4, p0, v6}, Liid;-><init>(Lita;I)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v6, 0xc8

    invoke-virtual {v3, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-array v4, v1, [F

    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    new-instance v6, Liid;

    const/4 v7, 0x7

    invoke-direct {v6, p0, v7}, Liid;-><init>(Lita;I)V

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v6, 0x53

    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-array v8, v1, [F

    fill-array-data v8, :array_1

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v8

    new-instance v9, Liid;

    const/16 v10, 0x8

    invoke-direct {v9, p0, v10}, Liid;-><init>(Lita;I)V

    invoke-virtual {v8, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v8, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v9, Lisp;

    invoke-direct {v9, p0}, Lisp;-><init>(Lita;)V

    invoke-virtual {v8, v9}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v9, p0, Lita;->s:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    invoke-virtual {v9}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->n()Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v9, p0, Lita;->s:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    invoke-virtual {v9}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->d()Landroid/view/ViewGroup;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v9, p0, Lita;->s:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    invoke-virtual {v9}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->g()Landroid/widget/ImageView;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v10, v1, [Landroid/animation/Animator;

    aput-object v4, v10, v5

    aput-object v8, v10, v2

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iget-boolean v8, p0, Lita;->C:Z

    if-eqz v8, :cond_2

    iget-object v8, p0, Lita;->s:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    invoke-virtual {v8}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->n()Landroid/widget/TextView;

    move-result-object v8

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setAlpha(F)V

    invoke-virtual {p0}, Lita;->v()F

    move-result v11

    invoke-virtual {p0}, Lita;->w()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    add-float/2addr v11, v12

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setTranslationX(F)V

    iget v11, p0, Lita;->U:F

    neg-float v11, v11

    div-float/2addr v11, v13

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setTranslationY(F)V

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v8}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    iget v11, p0, Lita;->V:I

    int-to-long v11, v11

    invoke-virtual {v8, v11, v12}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v8, v11}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {p0}, Lita;->w()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v13

    invoke-virtual {v8, v12}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    iget v12, p0, Lita;->U:F

    div-float/2addr v12, v13

    invoke-virtual {v8, v12}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v8, p0, Lita;->s:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    invoke-virtual {v8}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->o()Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTranslationX(F)V

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTranslationY(F)V

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setAlpha(F)V

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v8}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    iget v10, p0, Lita;->U:F

    div-float/2addr v10, v13

    invoke-virtual {v8, v10}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {p0}, Lita;->w()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v13

    invoke-virtual {v8, v10}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v3, v1, v5

    aput-object v9, v1, v2

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lita;->y()Landroid/animation/ValueAnimator;

    move-result-object v6

    const/4 v7, 0x4

    new-array v7, v7, [Landroid/animation/Animator;

    aput-object v3, v7, v5

    aput-object v9, v7, v2

    iget-object v2, p0, Lita;->R:Landroid/animation/AnimatorSet;

    aput-object v2, v7, v1

    const/4 v1, 0x3

    aput-object v6, v7, v1

    invoke-virtual {v4, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_0
    new-instance v1, Lisq;

    invoke-direct {v1, p0}, Lisq;-><init>(Lita;)V

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v4, p0, Lita;->W:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    invoke-virtual {p0, v5}, Lita;->B(Z)V

    monitor-exit v0

    return-object v4

    :cond_3
    :goto_1
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final y()Landroid/animation/ValueAnimator;
    .locals 4

    invoke-virtual {p0}, Lita;->w()I

    move-result v0

    iget-object v1, p0, Lita;->s:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->n()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    filled-new-array {v2, v0}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v2, Lies;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v1, v3}, Lies;-><init>(Lita;Landroid/widget/FrameLayout$LayoutParams;I)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method final z()V
    .locals 2

    iget-object v0, p0, Lita;->s:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lita;->G:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lita;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    iget-object v1, p0, Lita;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
