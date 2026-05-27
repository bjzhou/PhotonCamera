.class public Lmhq;
.super Ljava/lang/Object;


# static fields
.field static final a:Landroid/animation/TimeInterpolator;

.field public static final b:I

.field public static final c:I

.field public static final d:I

.field public static final e:I

.field static final f:[I

.field static final g:[I

.field static final h:[I

.field static final i:[I

.field static final j:[I

.field static final k:[I


# instance fields
.field public A:I

.field public final B:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field public C:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field final D:Landroidx/wear/ambient/AmbientMode$AmbientController;

.field private final E:Landroid/graphics/Rect;

.field private final F:Landroid/graphics/RectF;

.field private final G:Landroid/graphics/RectF;

.field private final H:Landroid/graphics/Matrix;

.field private final I:Lmaf;

.field public l:Lmkf;

.field public m:Lmka;

.field public n:Landroid/graphics/drawable/Drawable;

.field public o:Lmhb;

.field public p:Landroid/graphics/drawable/Drawable;

.field public q:Z

.field public r:F

.field public s:F

.field public t:F

.field public u:I

.field public v:Landroid/animation/Animator;

.field public w:Lmey;

.field public x:Lmey;

.field public y:F

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lmev;->c:Landroid/animation/TimeInterpolator;

    sput-object v0, Lmhq;->a:Landroid/animation/TimeInterpolator;

    const v0, 0x7f040493

    sput v0, Lmhq;->b:I

    const v0, 0x7f0404a3

    sput v0, Lmhq;->c:I

    const v0, 0x7f040496

    sput v0, Lmhq;->d:I

    const v0, 0x7f0404a1

    sput v0, Lmhq;->e:I

    const v0, 0x10100a7

    const v1, 0x101009e

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lmhq;->f:[I

    const v0, 0x1010367

    const v2, 0x101009c

    filled-new-array {v0, v2, v1}, [I

    move-result-object v3

    sput-object v3, Lmhq;->g:[I

    filled-new-array {v2, v1}, [I

    move-result-object v2

    sput-object v2, Lmhq;->h:[I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lmhq;->i:[I

    filled-new-array {v1}, [I

    move-result-object v0

    sput-object v0, Lmhq;->j:[I

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lmhq;->k:[I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroidx/wear/ambient/AmbientMode$AmbientController;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p3, 0x3f800000    # 1.0f

    iput p3, p0, Lmhq;->y:F

    const/4 p3, 0x0

    iput p3, p0, Lmhq;->A:I

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lmhq;->E:Landroid/graphics/Rect;

    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lmhq;->F:Landroid/graphics/RectF;

    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lmhq;->G:Landroid/graphics/RectF;

    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    iput-object p3, p0, Lmhq;->H:Landroid/graphics/Matrix;

    iput-object p1, p0, Lmhq;->B:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iput-object p2, p0, Lmhq;->D:Landroidx/wear/ambient/AmbientMode$AmbientController;

    new-instance p2, Lmaf;

    invoke-direct {p2}, Lmaf;-><init>()V

    iput-object p2, p0, Lmhq;->I:Lmaf;

    new-instance p3, Lmhn;

    invoke-direct {p3, p0}, Lmhn;-><init>(Lmhq;)V

    invoke-static {p3}, Lmhq;->o(Lmhp;)Landroid/animation/ValueAnimator;

    move-result-object p3

    invoke-virtual {p2, p3}, Lmaf;->b(Landroid/animation/ValueAnimator;)V

    new-instance p3, Lmhm;

    invoke-direct {p3, p0}, Lmhm;-><init>(Lmhq;)V

    invoke-static {p3}, Lmhq;->o(Lmhp;)Landroid/animation/ValueAnimator;

    move-result-object p3

    invoke-virtual {p2, p3}, Lmaf;->b(Landroid/animation/ValueAnimator;)V

    new-instance p3, Lmhm;

    invoke-direct {p3, p0}, Lmhm;-><init>(Lmhq;)V

    invoke-static {p3}, Lmhq;->o(Lmhp;)Landroid/animation/ValueAnimator;

    move-result-object p3

    invoke-virtual {p2, p3}, Lmaf;->b(Landroid/animation/ValueAnimator;)V

    new-instance p3, Lmhm;

    invoke-direct {p3, p0}, Lmhm;-><init>(Lmhq;)V

    invoke-static {p3}, Lmhq;->o(Lmhp;)Landroid/animation/ValueAnimator;

    move-result-object p3

    invoke-virtual {p2, p3}, Lmaf;->b(Landroid/animation/ValueAnimator;)V

    new-instance p3, Lmho;

    invoke-direct {p3, p0}, Lmho;-><init>(Lmhq;)V

    invoke-static {p3}, Lmhq;->o(Lmhp;)Landroid/animation/ValueAnimator;

    move-result-object p3

    invoke-virtual {p2, p3}, Lmaf;->b(Landroid/animation/ValueAnimator;)V

    new-instance p3, Lmhl;

    invoke-direct {p3, p0}, Lmhl;-><init>(Lmhq;)V

    invoke-static {p3}, Lmhq;->o(Lmhp;)Landroid/animation/ValueAnimator;

    move-result-object p3

    invoke-virtual {p2, p3}, Lmaf;->b(Landroid/animation/ValueAnimator;)V

    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getRotation()F

    return-void
.end method

.method private static final o(Lmhp;)Landroid/animation/ValueAnimator;
    .locals 3

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    sget-object v1, Lmhq;->a:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 p0, 0x2

    new-array p0, p0, [F

    fill-array-data p0, :array_0

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public a()F
    .locals 1

    iget v0, p0, Lmhq;->r:F

    return v0
.end method

.method public final b(Lmey;FFF)Landroid/animation/AnimatorSet;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lmhq;->B:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v4, v3, [F

    const/4 v5, 0x0

    aput p2, v4, v5

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-string v1, "opacity"

    invoke-virtual {p1, v1}, Lmey;->b(Ljava/lang/String;)Lmez;

    move-result-object v1

    invoke-virtual {v1, p2}, Lmez;->b(Landroid/animation/Animator;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lmhq;->B:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v2, v3, [F

    aput p3, v2, v5

    invoke-static {p2, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-string v1, "scale"

    invoke-virtual {p1, v1}, Lmey;->b(Ljava/lang/String;)Lmez;

    move-result-object v2

    invoke-virtual {v2, p2}, Lmez;->b(Landroid/animation/Animator;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lmhq;->B:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v4, v3, [F

    aput p3, v4, v5

    invoke-static {p2, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-virtual {p1, v1}, Lmey;->b(Ljava/lang/String;)Lmez;

    move-result-object p3

    invoke-virtual {p3, p2}, Lmez;->b(Landroid/animation/Animator;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lmhq;->H:Landroid/graphics/Matrix;

    invoke-virtual {p0, p4, p2}, Lmhq;->d(FLandroid/graphics/Matrix;)V

    iget-object p2, p0, Lmhq;->B:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    new-instance p3, Lmew;

    invoke-direct {p3}, Lmew;-><init>()V

    new-instance p4, Lmhj;

    invoke-direct {p4, p0}, Lmhj;-><init>(Lmhq;)V

    new-array v1, v3, [Landroid/graphics/Matrix;

    new-instance v2, Landroid/graphics/Matrix;

    iget-object v3, p0, Lmhq;->H:Landroid/graphics/Matrix;

    invoke-direct {v2, v3}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    aput-object v2, v1, v5

    invoke-static {p2, p3, p4, v1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-string p3, "iconScale"

    invoke-virtual {p1, p3}, Lmey;->b(Ljava/lang/String;)Lmez;

    move-result-object p1

    invoke-virtual {p1, p2}, Lmez;->b(Landroid/animation/Animator;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {p1, v0}, Lkwp;->q(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    return-object p1
.end method

.method public final c(FFFII)Landroid/animation/AnimatorSet;
    .locals 15

    move-object v10, p0

    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v13

    iget-object v0, v10, Lmhq;->B:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getAlpha()F

    move-result v2

    iget-object v0, v10, Lmhq;->B:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getScaleX()F

    move-result v4

    iget-object v0, v10, Lmhq;->B:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getScaleY()F

    move-result v6

    iget v7, v10, Lmhq;->y:F

    new-instance v9, Landroid/graphics/Matrix;

    iget-object v0, v10, Lmhq;->H:Landroid/graphics/Matrix;

    invoke-direct {v9, v0}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    new-instance v14, Lmhk;

    move-object v0, v14

    move-object v1, p0

    move/from16 v3, p1

    move/from16 v5, p2

    move/from16 v8, p3

    invoke-direct/range {v0 .. v9}, Lmhk;-><init>(Lmhq;FFFFFFFLandroid/graphics/Matrix;)V

    invoke-virtual {v13, v14}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v11, v12}, Lkwp;->q(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    iget-object v0, v10, Lmhq;->B:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, v10, Lmhq;->B:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0079

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    move/from16 v2, p4

    invoke-static {v0, v2, v1}, Lljr;->u(Landroid/content/Context;II)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v11, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, v10, Lmhq;->B:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lmev;->b:Landroid/animation/TimeInterpolator;

    move/from16 v2, p5

    invoke-static {v0, v2, v1}, Lljr;->z(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v11

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final d(FLandroid/graphics/Matrix;)V
    .locals 5

    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lmhq;->B:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lmhq;->z:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmhq;->F:Landroid/graphics/RectF;

    iget-object v2, p0, Lmhq;->G:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget v0, p0, Lmhq;->z:I

    int-to-float v0, v0

    invoke-virtual {v2, v4, v4, v0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p2, v1, v2, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    iget v0, p0, Lmhq;->z:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p2, p1, p1, v0, v0}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    :cond_0
    return-void
.end method

.method public e(Landroid/graphics/Rect;)V
    .locals 5

    iget-boolean v0, p0, Lmhq;->q:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lmhq;->u:I

    iget-object v1, p0, Lmhq;->B:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lmhq;->a()F

    move-result v1

    iget v2, p0, Lmhq;->t:F

    add-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float v1, v1, v3

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p1, v2, v0, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public f(FFF)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final g(F)V
    .locals 1

    iput p1, p0, Lmhq;->y:F

    iget-object v0, p0, Lmhq;->H:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, v0}, Lmhq;->d(FLandroid/graphics/Matrix;)V

    iget-object p1, p0, Lmhq;->B:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public final h(Lmkf;)V
    .locals 1

    iput-object p1, p0, Lmhq;->l:Lmkf;

    iget-object v0, p0, Lmhq;->m:Lmka;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lmka;->c(Lmkf;)V

    :cond_0
    iget-object v0, p0, Lmhq;->o:Lmhb;

    if-eqz v0, :cond_1

    iput-object p1, v0, Lmhb;->h:Lmkf;

    invoke-virtual {v0}, Lmhb;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public final i()V
    .locals 1

    iget v0, p0, Lmhq;->y:F

    invoke-virtual {p0, v0}, Lmhq;->g(F)V

    return-void
.end method

.method public final j()V
    .locals 8

    iget-object v0, p0, Lmhq;->E:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lmhq;->e(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lmhq;->p:Landroid/graphics/drawable/Drawable;

    const-string v2, "Didn\'t initialize content background"

    invoke-static {v1, v2}, Labf;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lmhq;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/graphics/drawable/InsetDrawable;

    iget-object v3, p0, Lmhq;->p:Landroid/graphics/drawable/Drawable;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    iget-object v2, p0, Lmhq;->D:Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-virtual {v2, v1}, Landroidx/wear/ambient/AmbientMode$AmbientController;->q(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lmhq;->D:Landroidx/wear/ambient/AmbientMode$AmbientController;

    iget-object v2, p0, Lmhq;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroidx/wear/ambient/AmbientMode$AmbientController;->q(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object v1, p0, Lmhq;->D:Landroidx/wear/ambient/AmbientMode$AmbientController;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v5, v1, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-object v5, v5, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->c:Landroid/graphics/Rect;

    invoke-virtual {v5, v2, v3, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, v1, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget v5, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->a:I

    add-int/2addr v2, v5

    add-int/2addr v3, v5

    add-int/2addr v4, v5

    add-int/2addr v0, v5

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setPadding(IIII)V

    return-void
.end method

.method public final k(F)V
    .locals 1

    iget-object v0, p0, Lmhq;->m:Lmka;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lmka;->h(F)V

    :cond_0
    return-void
.end method

.method public l()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final m()Z
    .locals 1

    iget-object v0, p0, Lmhq;->B:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-static {v0}, Lafe;->f(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmhq;->B:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final n()Z
    .locals 2

    iget-boolean v0, p0, Lmhq;->q:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmhq;->B:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b()I

    move-result v0

    iget v1, p0, Lmhq;->u:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
