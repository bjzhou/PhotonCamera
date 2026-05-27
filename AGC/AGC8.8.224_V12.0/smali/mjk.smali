.class public final Lmjk;
.super Lmjb;


# static fields
.field public static final a:[I

.field public static final b:[I

.field private static final i:Landroid/util/Property;


# instance fields
.field public final c:[Landroid/view/animation/Interpolator;

.field public final d:Lmim;

.field public e:I

.field public f:Z

.field public g:F

.field h:Latc;

.field private m:Landroid/animation/ObjectAnimator;

.field private n:Landroid/animation/ObjectAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x352

    const/16 v1, 0x2ee

    const/16 v2, 0x215

    const/16 v3, 0x237

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lmjk;->a:[I

    const/16 v0, 0x14d

    const/4 v1, 0x0

    const/16 v2, 0x4f3

    const/16 v3, 0x3e8

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lmjk;->b:[I

    new-instance v0, Lmjj;

    const-class v1, Ljava/lang/Float;

    invoke-direct {v0, v1}, Lmjj;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lmjk;->i:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmjl;)V
    .locals 3

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lmjb;-><init>(I)V

    const/4 v1, 0x0

    iput v1, p0, Lmjk;->e:I

    const/4 v2, 0x0

    iput-object v2, p0, Lmjk;->h:Latc;

    iput-object p2, p0, Lmjk;->d:Lmim;

    const/4 p2, 0x4

    new-array p2, p2, [Landroid/view/animation/Interpolator;

    const v2, 0x7f010036

    invoke-static {p1, v2}, Laso;->b(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    aput-object v2, p2, v1

    const v1, 0x7f010037

    invoke-static {p1, v1}, Laso;->b(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, p2, v2

    const v1, 0x7f010038

    invoke-static {p1, v1}, Laso;->b(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    aput-object v1, p2, v0

    const v0, 0x7f010039

    invoke-static {p1, v0}, Laso;->b(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    const/4 v0, 0x3

    aput-object p1, p2, v0

    iput-object p2, p0, Lmjk;->c:[Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lmjk;->m:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public final b(Latc;)V
    .locals 0

    iput-object p1, p0, Lmjk;->h:Latc;

    return-void
.end method

.method public final c()V
    .locals 4

    iget-object v0, p0, Lmjk;->n:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lmjk;->a()V

    iget-object v0, p0, Lmjk;->j:Lmjc;

    invoke-virtual {v0}, Lmjc;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmjk;->n:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lmjk;->g:F

    aput v3, v1, v2

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    iget-object v0, p0, Lmjk;->n:Landroid/animation/ObjectAnimator;

    iget v1, p0, Lmjk;->g:F

    sub-float/2addr v3, v1

    const/high16 v1, 0x44e10000    # 1800.0f

    mul-float v3, v3, v1

    float-to-long v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lmjk;->n:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public final d()V
    .locals 8

    iget-object v0, p0, Lmjk;->m:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x0

    const-wide/16 v2, 0x708

    if-nez v0, :cond_0

    sget-object v0, Lmjk;->i:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {p0, v0, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lmjk;->m:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lmjk;->m:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lmjk;->m:Landroid/animation/ObjectAnimator;

    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lmjk;->m:Landroid/animation/ObjectAnimator;

    new-instance v4, Lmjh;

    invoke-direct {v4, p0}, Lmjh;-><init>(Lmjk;)V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    iget-object v0, p0, Lmjk;->n:Landroid/animation/ObjectAnimator;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_1

    sget-object v0, Lmjk;->i:Landroid/util/Property;

    new-array v6, v4, [F

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v6, v5

    invoke-static {p0, v0, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lmjk;->n:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lmjk;->n:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lmjk;->n:Landroid/animation/ObjectAnimator;

    new-instance v1, Lmji;

    invoke-direct {v1, p0}, Lmji;-><init>(Lmjk;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    iput v5, p0, Lmjk;->e:I

    iget-object v0, p0, Lmjk;->d:Lmim;

    iget-object v0, v0, Lmim;->c:[I

    aget v0, v0, v5

    iget-object v1, p0, Lmjk;->j:Lmjc;

    iget v1, v1, Lmiz;->i:I

    invoke-static {v0, v1}, Lkwp;->k(II)I

    move-result v0

    iget-object v1, p0, Lmjk;->l:[I

    aput v0, v1, v5

    aput v0, v1, v4

    iget-object v0, p0, Lmjk;->m:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lmjk;->h:Latc;

    return-void
.end method
