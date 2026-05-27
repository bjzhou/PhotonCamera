.class public final Lihx;
.super Landroid/view/View;


# instance fields
.field private final A:Z

.field private B:I

.field private C:I

.field private D:I

.field private E:F

.field private F:F

.field private final G:Landroid/graphics/RectF;

.field private H:Landroid/animation/AnimatorSet;

.field public final a:Landroid/graphics/Paint;

.field public final b:Landroid/graphics/Paint;

.field public final c:Landroid/graphics/Paint;

.field public d:I

.field public e:F

.field public f:I

.field public g:I

.field public h:J

.field public i:I

.field public j:Z

.field public k:Z

.field public l:Ljava/lang/String;

.field public m:Landroid/animation/AnimatorSet;

.field public n:I

.field private final o:I

.field private final p:Landroid/graphics/Paint;

.field private final q:Landroid/view/animation/Interpolator;

.field private final r:Landroid/view/animation/Interpolator;

.field private final s:Ljava/lang/String;

.field private final t:F

.field private final u:F

.field private final v:F

.field private final w:F

.field private final x:F

.field private final y:F

.field private final z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput v0, p0, Lihx;->n:I

    const/4 v1, 0x0

    iput v1, p0, Lihx;->B:I

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lihx;->G:Landroid/graphics/RectF;

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lihx;->h:J

    const/4 v2, -0x1

    iput v2, p0, Lihx;->i:I

    iput-boolean v1, p0, Lihx;->j:Z

    iput-boolean v0, p0, Lihx;->k:Z

    const-string v3, ""

    iput-object v3, p0, Lihx;->l:Ljava/lang/String;

    const/4 v3, 0x0

    iput-object v3, p0, Lihx;->m:Landroid/animation/AnimatorSet;

    iput-object v3, p0, Lihx;->H:Landroid/animation/AnimatorSet;

    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lihx;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0705a7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lihx;->o:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0705a5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lihx;->f:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0705a8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lihx;->g:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0705a9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v3, p0, Lihx;->q:Landroid/view/animation/Interpolator;

    invoke-virtual {p0}, Lihx;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x10c000d

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    iput-object v3, p0, Lihx;->r:Landroid/view/animation/Interpolator;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lihx;->a:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v4, 0x33

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v4, p0, Lihx;->p:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lihx;->b:Landroid/graphics/Paint;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0700c9

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    const/16 v2, 0xa5

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v2, p0, Lihx;->c:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0700c8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f14012e

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lihx;->s:Ljava/lang/String;

    new-instance v5, Lihu;

    invoke-direct {v5, p0}, Lihu;-><init>(Lihx;)V

    const v6, 0x7f090007

    invoke-static {p1, v6, v5}, Lacn;->a(Landroid/content/Context;ILacl;)V

    invoke-virtual {v4}, Landroid/graphics/Paint;->descent()F

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    move-result v6

    add-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iput v5, p0, Lihx;->t:F

    const-string v7, "0:00"

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    const-string v8, ":"

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    const-string v9, "0"

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    iput v4, p0, Lihx;->u:F

    div-float/2addr v7, v6

    iput v7, p0, Lihx;->v:F

    div-float/2addr v8, v6

    iput v8, p0, Lihx;->w:F

    div-float/2addr v4, v6

    iput v4, p0, Lihx;->x:F

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v7

    add-float/2addr v4, v7

    div-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iput v4, p0, Lihx;->y:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0700c7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v7, v7

    iput v7, p0, Lihx;->z:F

    add-float/2addr v5, v4

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->bottom:F

    add-float/2addr v5, v7

    add-float/2addr v5, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    div-float/2addr v2, v6

    float-to-double v3, v5

    float-to-double v5, v2

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0705a6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-double v4, v4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(DD)D

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lihx;->A:Z

    return-void
.end method

.method static bridge synthetic c(Lihx;)V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lihx;->i:I

    return-void
.end method

.method static bridge synthetic d(Lihx;)V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lihx;->h:J

    return-void
.end method

.method private final e(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 2

    iget-object v0, p0, Lihx;->r:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0xa7

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private final f(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 2

    iget-object v0, p0, Lihx;->q:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x85

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lihx;->H:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lihx;->H:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    const/4 v0, 0x2

    new-array v1, v0, [F

    iget v2, p0, Lihx;->g:I

    int-to-float v2, v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Liba;

    const/16 v3, 0x10

    invoke-direct {v2, p0, v3}, Liba;-><init>(Lihx;I)V

    invoke-direct {p0, v1, v2}, Lihx;->f(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v2, Liba;

    const/16 v3, 0x11

    invoke-direct {v2, p0, v3}, Liba;-><init>(Lihx;I)V

    invoke-direct {p0, v0, v2}, Lihx;->f(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v1, p0, Lihx;->j:Z

    if-eqz v1, :cond_1

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lihx;->H:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object v0, p0, Lihx;->H:Landroid/animation/AnimatorSet;

    new-instance v1, Lihw;

    invoke-direct {v1, p0}, Lihw;-><init>(Lihx;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lihx;->H:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final b(I)V
    .locals 4

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/16 v1, 0x64

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lihx;->H:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lihx;->H:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    iput v0, p0, Lihx;->B:I

    iget-object p1, p0, Lihx;->m:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lihx;->m:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    iget p1, p0, Lihx;->o:I

    iget v1, p0, Lihx;->f:I

    filled-new-array {p1, v1}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance v1, Liba;

    const/16 v2, 0xd

    invoke-direct {v1, p0, v2}, Liba;-><init>(Lihx;I)V

    invoke-direct {p0, p1, v1}, Lihx;->e(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v1, 0x2

    new-array v2, v1, [F

    const/4 v3, 0x0

    aput v3, v2, v0

    iget v0, p0, Lihx;->g:I

    int-to-float v0, v0

    const/4 v3, 0x1

    aput v0, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v2, Liba;

    const/16 v3, 0xe

    invoke-direct {v2, p0, v3}, Liba;-><init>(Lihx;I)V

    invoke-direct {p0, v0, v2}, Lihx;->e(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Liba;

    const/16 v3, 0xf

    invoke-direct {v2, p0, v3}, Liba;-><init>(Lihx;I)V

    invoke-direct {p0, v1, v2}, Lihx;->e(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Lihx;->j:Z

    if-eqz p1, :cond_2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lihx;->m:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object p1, p0, Lihx;->m:Landroid/animation/AnimatorSet;

    new-instance v0, Lihv;

    invoke-direct {v0, p0}, Lihv;-><init>(Lihx;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lihx;->m:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_3
    iget-object v0, p0, Lihx;->m:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lihx;->m:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_4
    const/4 v0, 0x4

    iput v0, p0, Lihx;->n:I

    int-to-float v0, p1

    const v2, 0x40666666    # 3.6f

    mul-float v0, v0, v2

    float-to-int v0, v0

    iput v0, p0, Lihx;->B:I

    invoke-virtual {p0}, Lihx;->invalidate()V

    if-ne p1, v1, :cond_5

    invoke-virtual {p0}, Lihx;->a()V

    :cond_5
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    iget v0, p0, Lihx;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lihx;->k:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lihx;->C:I

    int-to-float v0, v0

    iget v2, p0, Lihx;->D:I

    int-to-float v2, v2

    iget v3, p0, Lihx;->d:I

    int-to-float v3, v3

    iget-object v4, p0, Lihx;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1
    iget-wide v2, p0, Lihx;->h:J

    const-wide/16 v4, -0x1

    const/4 v0, 0x4

    const/4 v6, 0x3

    cmp-long v7, v2, v4

    if-eqz v7, :cond_3

    iget-object v2, p0, Lihx;->l:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v0, :cond_3

    iget-object v2, p0, Lihx;->s:Ljava/lang/String;

    iget v3, p0, Lihx;->C:I

    int-to-float v3, v3

    iget v4, p0, Lihx;->D:I

    int-to-float v4, v4

    iget v5, p0, Lihx;->t:F

    add-float/2addr v4, v5

    iget v5, p0, Lihx;->y:F

    add-float/2addr v4, v5

    iget v5, p0, Lihx;->z:F

    add-float/2addr v4, v5

    iget-object v5, p0, Lihx;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-boolean v2, p0, Lihx;->A:Z

    const/4 v3, 0x2

    const-string v4, ":"

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    iget-object v2, p0, Lihx;->l:Ljava/lang/String;

    invoke-virtual {v2, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iget v7, p0, Lihx;->E:F

    iget v8, p0, Lihx;->x:F

    add-float/2addr v7, v8

    iget v8, p0, Lihx;->D:I

    int-to-float v8, v8

    iget-object v9, p0, Lihx;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v2, p0, Lihx;->l:Ljava/lang/String;

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lihx;->E:F

    iget v7, p0, Lihx;->u:F

    add-float/2addr v3, v7

    iget v7, p0, Lihx;->x:F

    add-float/2addr v3, v7

    iget v7, p0, Lihx;->D:I

    int-to-float v7, v7

    iget-object v8, p0, Lihx;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v2, p0, Lihx;->F:F

    iget v3, p0, Lihx;->u:F

    sub-float/2addr v2, v3

    iget v3, p0, Lihx;->w:F

    sub-float/2addr v2, v3

    iget v3, p0, Lihx;->D:I

    int-to-float v3, v3

    iget-object v7, p0, Lihx;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v2, v3, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v2, p0, Lihx;->l:Ljava/lang/String;

    invoke-virtual {v2, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lihx;->F:F

    iget v3, p0, Lihx;->x:F

    sub-float/2addr v2, v3

    iget v3, p0, Lihx;->D:I

    int-to-float v3, v3

    iget-object v4, p0, Lihx;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_2
    iget-object v2, p0, Lihx;->l:Ljava/lang/String;

    invoke-virtual {v2, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lihx;->E:F

    iget v5, p0, Lihx;->x:F

    add-float/2addr v2, v5

    iget v5, p0, Lihx;->D:I

    int-to-float v5, v5

    iget-object v7, p0, Lihx;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v5, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v1, p0, Lihx;->E:F

    iget v2, p0, Lihx;->u:F

    add-float/2addr v1, v2

    iget v2, p0, Lihx;->w:F

    add-float/2addr v1, v2

    iget v2, p0, Lihx;->D:I

    int-to-float v2, v2

    iget-object v5, p0, Lihx;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v1, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lihx;->l:Ljava/lang/String;

    invoke-virtual {v1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lihx;->F:F

    iget v3, p0, Lihx;->u:F

    sub-float/2addr v2, v3

    iget v3, p0, Lihx;->x:F

    sub-float/2addr v2, v3

    iget v3, p0, Lihx;->D:I

    int-to-float v3, v3

    iget-object v4, p0, Lihx;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lihx;->l:Ljava/lang/String;

    invoke-virtual {v1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lihx;->F:F

    iget v3, p0, Lihx;->x:F

    sub-float/2addr v2, v3

    iget v3, p0, Lihx;->D:I

    int-to-float v3, v3

    iget-object v4, p0, Lihx;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_3
    iget v1, p0, Lihx;->i:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lihx;->s:Ljava/lang/String;

    iget v2, p0, Lihx;->C:I

    int-to-float v2, v2

    iget v3, p0, Lihx;->D:I

    int-to-float v3, v3

    iget v4, p0, Lihx;->t:F

    add-float/2addr v3, v4

    iget v4, p0, Lihx;->y:F

    add-float/2addr v3, v4

    iget v4, p0, Lihx;->z:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lihx;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v1, p0, Lihx;->i:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lihx;->C:I

    int-to-float v2, v2

    iget v3, p0, Lihx;->D:I

    int-to-float v3, v3

    iget-object v4, p0, Lihx;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_4
    iget-boolean v1, p0, Lihx;->j:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lihx;->s:Ljava/lang/String;

    iget v2, p0, Lihx;->C:I

    int-to-float v2, v2

    iget v3, p0, Lihx;->D:I

    int-to-float v3, v3

    iget v4, p0, Lihx;->y:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lihx;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lihx;->s:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lihx;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_0
    iget v1, p0, Lihx;->n:I

    if-eq v1, v0, :cond_7

    if-ne v1, v6, :cond_6

    goto :goto_1

    :cond_6
    return-void

    :cond_7
    :goto_1
    iget-object v0, p0, Lihx;->a:Landroid/graphics/Paint;

    iget v1, p0, Lihx;->e:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lihx;->p:Landroid/graphics/Paint;

    iget v1, p0, Lihx;->e:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lihx;->G:Landroid/graphics/RectF;

    iget v1, p0, Lihx;->C:I

    iget v2, p0, Lihx;->d:I

    sub-int v3, v1, v2

    iget v4, p0, Lihx;->D:I

    sub-int v5, v4, v2

    add-int/2addr v1, v2

    add-int/2addr v4, v2

    int-to-float v2, v3

    int-to-float v3, v5

    int-to-float v1, v1

    int-to-float v4, v4

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v6, p0, Lihx;->G:Landroid/graphics/RectF;

    const/high16 v7, -0x3d4c0000    # -90.0f

    iget v0, p0, Lihx;->B:I

    int-to-float v8, v0

    const/4 v9, 0x0

    iget-object v10, p0, Lihx;->p:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    sub-int/2addr p4, p2

    div-int/lit8 p4, p4, 0x2

    iput p4, p0, Lihx;->C:I

    sub-int/2addr p5, p3

    div-int/lit8 p5, p5, 0x2

    iput p5, p0, Lihx;->D:I

    iget p1, p0, Lihx;->v:F

    int-to-float p2, p4

    sub-float p3, p2, p1

    iput p3, p0, Lihx;->E:F

    add-float/2addr p2, p1

    iput p2, p0, Lihx;->F:F

    :cond_0
    return-void
.end method
