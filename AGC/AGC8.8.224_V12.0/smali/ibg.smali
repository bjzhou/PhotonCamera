.class public final Libg;
.super Ljava/lang/Object;


# static fields
.field private static final G:I

.field public static final a:Lnak;

.field static final b:I


# instance fields
.field public A:Lmqp;

.field public B:Libe;

.field public C:Ldbx;

.field public D:Lklv;

.field public final E:Ljava/util/List;

.field public F:I

.field private final H:Landroid/view/ViewGroup;

.field private I:Z

.field private J:Z

.field public final c:Landroid/animation/ObjectAnimator;

.field public final d:Landroid/animation/ValueAnimator;

.field public final e:Landroid/view/animation/BaseInterpolator;

.field public f:Landroid/animation/AnimatorSet;

.field public final g:Landroid/graphics/Paint;

.field public final h:Landroid/graphics/Paint;

.field public final i:Landroid/graphics/Paint;

.field public final j:Landroid/os/Handler;

.field public k:Lmqp;

.field public l:Landroid/graphics/Rect;

.field public m:Libd;

.field public n:I

.field public o:Lmqp;

.field public p:F

.field public q:Ljvs;

.field public r:I

.field public s:Ljwb;

.field public t:Lmqp;

.field public u:Lika;

.field public v:I

.field public w:Landroid/view/View;

.field public x:Landroid/view/View;

.field public y:Z

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/ui/modeswitch/animation/ViewfinderCoverAnimator"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Libg;->a:Lnak;

    const/high16 v0, 0x42cc0000    # 102.0f

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Libg;->G:I

    sget-object v0, Lhxs;->a:Lhxs;

    iget v0, v0, Lhxs;->e:I

    sput v0, Libg;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lmpx;->a:Lmpx;

    iput-object v0, p0, Libg;->k:Lmqp;

    const/4 v1, 0x0

    iput v1, p0, Libg;->n:I

    iput-object v0, p0, Libg;->o:Lmqp;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Libg;->p:F

    const/4 v0, -0x1

    iput v0, p0, Libg;->r:I

    sget v0, Libg;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljwa;->a(Ljava/lang/Object;)Ljwb;

    move-result-object v0

    iput-object v0, p0, Libg;->s:Ljwb;

    sget-object v0, Lmpx;->a:Lmpx;

    iput-object v0, p0, Libg;->t:Lmqp;

    const/4 v0, 0x1

    iput v0, p0, Libg;->F:I

    sget-object v2, Lika;->a:Lika;

    iput-object v2, p0, Libg;->u:Lika;

    iput v1, p0, Libg;->v:I

    iput-boolean v0, p0, Libg;->y:Z

    iput v1, p0, Libg;->z:I

    sget-object v2, Lmpx;->a:Lmpx;

    iput-object v2, p0, Libg;->A:Lmqp;

    sget-object v2, Liax;->a:Liax;

    iput-object v2, p0, Libg;->B:Libe;

    iput-boolean v1, p0, Libg;->I:Z

    sget-object v2, Liay;->a:Liay;

    iput-object v2, p0, Libg;->C:Ldbx;

    sget-object v2, Lklv;->b:Lklv;

    iput-object v2, p0, Libg;->D:Lklv;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Libg;->E:Ljava/util/List;

    iput-boolean v1, p0, Libg;->J:Z

    iput-object p1, p0, Libg;->H:Landroid/view/ViewGroup;

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Libg;->f:Landroid/animation/AnimatorSet;

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v2, p0, Libg;->e:Landroid/view/animation/BaseInterpolator;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Libg;->c:Landroid/animation/ObjectAnimator;

    const-wide/16 v3, 0xfa

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v5, Libb;

    invoke-direct {v5, p0}, Libb;-><init>(Libg;)V

    invoke-virtual {v2, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Libg;->g:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Libg;->i:Landroid/graphics/Paint;

    const/high16 v5, -0x1000000

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Libg;->h:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    sget v2, Libg;->G:I

    filled-new-array {v1, v2}, [I

    move-result-object v2

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Libg;->d:Landroid/animation/ValueAnimator;

    new-instance v5, Lafx;

    const/16 v6, 0x14

    invoke-direct {v5, p0, v6}, Lafx;-><init>(Libg;I)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v1, v1, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Libg;->l:Landroid/graphics/Rect;

    invoke-static {}, Libd;->a()Lllz;

    move-result-object v2

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v1, v1, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v3}, Lllz;->e(Landroid/graphics/Rect;)V

    invoke-virtual {v2, v1}, Lllz;->d(I)V

    invoke-virtual {v2}, Lllz;->c()Libd;

    move-result-object v0

    iput-object v0, p0, Libg;->m:Libd;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Ljvd;->o(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Libg;->j:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static a(Landroid/graphics/Rect;)F
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method public static b(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/animation/TimeInterpolator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;
    .locals 3

    new-instance v0, Landroid/animation/RectEvaluator;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v0, v1}, Landroid/animation/RectEvaluator;-><init>(Landroid/graphics/Rect;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p0
.end method

.method public static c(Landroid/graphics/Canvas;Landroid/graphics/Rect;ILandroid/graphics/Paint;)V
    .locals 9

    if-lez p2, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, p1

    int-to-float v7, p2

    move-object v1, p0

    move v6, v7

    move-object v8, p3

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method private final q()I
    .locals 1

    iget v0, p0, Libg;->v:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Libg;->v:I

    return v0
.end method


# virtual methods
.method public final d()V
    .locals 3

    iget v0, p0, Libg;->r:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v2, p0, Libg;->s:Ljwb;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljwb;->bn(Ljava/lang/Object;)V

    iput v1, p0, Libg;->r:I

    :cond_0
    const/4 v0, 0x5

    iput v0, p0, Libg;->F:I

    iget-object v0, p0, Libg;->c:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public final e()V
    .locals 3

    iget-object v0, p0, Libg;->H:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v0, 0x1

    iput v0, p0, Libg;->F:I

    invoke-direct {p0}, Libg;->q()I

    sget-object v0, Lmpx;->a:Lmpx;

    iput-object v0, p0, Libg;->k:Lmqp;

    iget-object v0, p0, Libg;->H:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    iget-boolean v0, p0, Libg;->J:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Libg;->A:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Libg;->A:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgft;

    const-class v2, Libg;

    invoke-interface {v0, v2}, Lgft;->b(Ljava/lang/Class;)V

    iput-boolean v1, p0, Libg;->J:Z

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Libg;->w:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Libg;->x:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final h()V
    .locals 1

    iget-object v0, p0, Libg;->H:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public final i()V
    .locals 1

    iget-object v0, p0, Libg;->H:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->postInvalidateOnAnimation()V

    return-void
.end method

.method public final j(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Libg;->l:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Libg;->i()V

    return-void
.end method

.method final k(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p1

    iput-object p1, p0, Libg;->t:Lmqp;

    return-void
.end method

.method public final l()V
    .locals 2

    iget-object v0, p0, Libg;->H:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Libg;->c:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    iget-object v0, p0, Libg;->H:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Libg;->H:Landroid/view/ViewGroup;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    return-void
.end method

.method public final m()V
    .locals 2

    iget-object v0, p0, Libg;->w:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method final n()Z
    .locals 1

    sget-object v0, Lika;->a:Lika;

    iget-object v0, p0, Libg;->u:Lika;

    invoke-virtual {v0}, Lika;->ordinal()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x0

    return v0

    :sswitch_0
    iget-object v0, p0, Libg;->B:Libe;

    invoke-interface {v0}, Libe;->a()Z

    move-result v0

    return v0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0xd -> :sswitch_0
        0x13 -> :sswitch_0
    .end sparse-switch
.end method

.method public final o()Z
    .locals 1

    invoke-virtual {p0}, Libg;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Libg;->I:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final p(Lika;Ljava/lang/Runnable;Libf;Libc;)V
    .locals 10

    new-instance v7, Liaz;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Liaz;-><init>(Libg;Lika;Ljava/lang/Runnable;Libf;Libc;)V

    iget v0, p0, Libg;->F:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Libg;->t:Lmqp;

    new-instance v1, Lhqn;

    const/16 v2, 0x8

    invoke-direct {v1, v0, v7, v2}, Lhqn;-><init>(Lmqp;Ljava/lang/Runnable;I)V

    invoke-virtual {p0, v1}, Libg;->k(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-direct {p0}, Libg;->q()I

    move-result v2

    invoke-virtual {p0, p2}, Libg;->k(Ljava/lang/Runnable;)V

    iget-object v0, p0, Libg;->A:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Libg;->A:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgft;

    const-class v4, Libg;

    invoke-interface {v0, v4}, Lgft;->a(Ljava/lang/Class;)V

    iput-boolean v3, p0, Libg;->J:Z

    :cond_1
    iget-object v0, p0, Libg;->H:Landroid/view/ViewGroup;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-interface {p3}, Libf;->h()Z

    move-result v0

    iput-boolean v0, p0, Libg;->y:Z

    invoke-virtual {p0}, Libg;->n()Z

    move-result v0

    iput-boolean v0, p0, Libg;->I:Z

    iget v0, p0, Libg;->r:I

    const/4 v5, -0x1

    if-ne v0, v5, :cond_2

    iget-object v0, p0, Libg;->s:Ljwb;

    invoke-interface {v0}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Libg;->r:I

    iget-object v0, p0, Libg;->s:Ljwb;

    sget v5, Libg;->b:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljwb;->bn(Ljava/lang/Object;)V

    :cond_2
    invoke-interface {p3}, Libf;->c()Lmqp;

    move-result-object v7

    invoke-interface {p3}, Libf;->b()Lmqp;

    move-result-object v0

    iget-object v5, p0, Libg;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iput-object p1, p0, Libg;->u:Lika;

    iget-object v5, p0, Libg;->q:Ljvs;

    invoke-interface {v5}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iput v5, p0, Libg;->p:F

    iget v5, p0, Libg;->F:I

    if-eq v5, v1, :cond_9

    if-eq v5, v3, :cond_4

    invoke-virtual {v7}, Lmqp;->g()Z

    move-result v0

    if-nez v0, :cond_3

    iput v3, p0, Libg;->F:I

    goto/16 :goto_1

    :cond_3
    iput v4, p0, Libg;->F:I

    invoke-virtual {p0}, Libg;->h()V

    goto/16 :goto_1

    :cond_4
    iget-object v1, p0, Libg;->c:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    iget-object v1, p0, Libg;->f:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v1, p0, Libg;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v7, p0, Libg;->k:Lmqp;

    invoke-virtual {v7}, Lmqp;->g()Z

    move-result v1

    if-nez v1, :cond_5

    iput v3, p0, Libg;->F:I

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v7}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lihc;

    iget-object v1, v1, Lihc;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->prepareToDraw()V

    invoke-virtual {v7}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lihc;

    invoke-virtual {v1}, Lihc;->a()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Libg;->l:Landroid/graphics/Rect;

    sget-object v1, Lhop;->d:Lhop;

    invoke-virtual {v0, v1}, Lmqp;->b(Lmqi;)Lmqp;

    move-result-object v1

    invoke-virtual {v7}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lihc;

    new-instance v5, Landroid/graphics/Rect;

    iget-object v8, v3, Lihc;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    iget v9, v3, Lihc;->b:I

    mul-int v8, v8, v9

    iget-object v9, v3, Lihc;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    iget v3, v3, Lihc;->b:I

    mul-int v9, v9, v3

    const/4 v3, 0x0

    invoke-direct {v5, v3, v3, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v5}, Lmqp;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v7}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lihc;

    iget-object v5, v5, Lihc;->c:Lmqp;

    invoke-virtual {v5}, Lmqp;->g()Z

    move-result v8

    if-eqz v8, :cond_7

    new-instance v8, Landroid/graphics/Rect;

    invoke-virtual {v5}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    invoke-direct {v8, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v5, v1, Landroid/graphics/Rect;->left:I

    iget v9, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v8, v5, v9}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v1, v8}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v5

    if-nez v5, :cond_6

    sget-object v5, Libg;->a:Lnak;

    invoke-virtual {v5}, Lnaf;->c()Lnaz;

    move-result-object v5

    check-cast v5, Lnah;

    const/16 v9, 0x1006

    invoke-interface {v5, v9}, Lnah;->G(I)Lnaz;

    move-result-object v5

    check-cast v5, Lnah;

    const-string v9, "Source %s is not contained in preview box %s"

    invoke-interface {v5, v9, v8, v1}, Lnah;->z(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_6
    move-object v1, v8

    :cond_7
    :goto_0
    invoke-static {}, Libd;->a()Lllz;

    move-result-object v5

    invoke-virtual {v5, v1}, Lllz;->e(Landroid/graphics/Rect;)V

    sget-object v1, Lhop;->e:Lhop;

    invoke-virtual {v0, v1}, Lmqp;->b(Lmqi;)Lmqp;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmqp;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v5, v0}, Lllz;->d(I)V

    invoke-virtual {v5}, Lllz;->c()Libd;

    move-result-object v0

    iput-object v0, p0, Libg;->m:Libd;

    iget v0, v0, Libd;->b:I

    iput v0, p0, Libg;->z:I

    sget v0, Libg;->G:I

    iget-object v1, p0, Libg;->d:Landroid/animation/ValueAnimator;

    filled-new-array {v3, v0}, [I

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iput v3, p0, Libg;->n:I

    iput v4, p0, Libg;->F:I

    invoke-virtual {p0}, Libg;->h()V

    :goto_1
    invoke-interface {p3}, Libf;->d()V

    invoke-interface {p3}, Libf;->e()V

    invoke-interface {p3, p1}, Libf;->f(Lika;)V

    invoke-virtual {p0}, Libg;->l()V

    iget-object v0, p0, Libg;->j:Landroid/os/Handler;

    new-instance v1, Lgcm;

    invoke-direct {v1, p0, v2, v4}, Lgcm;-><init>(Libg;II)V

    const-wide/16 v4, 0xfa0

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v8, Lgkp;

    const/4 v9, 0x2

    move-object v0, v8

    move-object v1, p0

    move-object v3, p3

    move-object v4, p1

    move-object v5, p4

    move v6, v9

    invoke-direct/range {v0 .. v6}, Lgkp;-><init>(Libg;ILibf;Lika;Libc;I)V

    invoke-virtual {v7}, Lmqp;->g()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_8
    invoke-static {v8}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    iput-object v0, p0, Libg;->o:Lmqp;

    return-void

    :cond_9
    sget-object v0, Libg;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v1, "Somehow trying to go from FADING to WAITING_FOR_BITMAP: Illegal!"

    const/16 v2, 0x100a

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Going from FADING to WAITING_FOR_BITMAP"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
