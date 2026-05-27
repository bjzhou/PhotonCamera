.class public final Laia;
.super Ljava/lang/Object;


# static fields
.field private static final e:Landroid/view/animation/Interpolator;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Landroid/view/View;

.field private f:[F

.field private g:[F

.field private h:[F

.field private i:[F

.field private j:[I

.field private k:[I

.field private l:[I

.field private m:I

.field private n:Landroid/view/VelocityTracker;

.field private final o:F

.field private p:F

.field private q:I

.field private final r:Landroid/widget/OverScroller;

.field private final s:Lahz;

.field private t:Z

.field private final u:Landroid/view/ViewGroup;

.field private final v:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lahy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lahy;-><init>(I)V

    sput-object v0, Laia;->e:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lahz;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Laia;->c:I

    new-instance v0, Lnk;

    const/16 v1, 0xc

    invoke-direct {v0, p0, v1}, Lnk;-><init>(Laia;I)V

    iput-object v0, p0, Laia;->v:Ljava/lang/Runnable;

    if-eqz p3, :cond_0

    iput-object p2, p0, Laia;->u:Landroid/view/ViewGroup;

    iput-object p3, p0, Laia;->s:Lahz;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x41a00000    # 20.0f

    mul-float p3, p3, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p3, v0

    float-to-int p3, p3

    iput p3, p0, Laia;->q:I

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p3

    iput p3, p0, Laia;->b:I

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Laia;->o:F

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Laia;->p:F

    new-instance p2, Landroid/widget/OverScroller;

    sget-object p3, Laia;->e:Landroid/view/animation/Interpolator;

    invoke-direct {p2, p1, p3}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p2, p0, Laia;->r:Landroid/widget/OverScroller;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Callback may not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static b(Landroid/view/ViewGroup;Lahz;)Laia;
    .locals 2

    new-instance v0, Laia;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Laia;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lahz;)V

    return-object v0
.end method

.method private final m(III)I
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Laia;->u:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v3, -0x41000000    # -0.5f

    add-float/2addr v2, v3

    const v3, 0x3ef1463b

    mul-float v2, v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-lez p2, :cond_1

    int-to-float p1, v1

    mul-float v2, v2, p1

    add-float/2addr p1, v2

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x447a0000    # 1000.0f

    mul-float p1, p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    int-to-float p2, p3

    div-float/2addr p1, p2

    add-float/2addr p1, v0

    const/high16 p2, 0x43800000    # 256.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    :goto_0
    const/16 p2, 0x258

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private final n(I)V
    .locals 2

    iget-object v0, p0, Laia;->f:[F

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Laia;->h(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    aput v1, v0, p1

    iget-object v0, p0, Laia;->g:[F

    aput v1, v0, p1

    iget-object v0, p0, Laia;->h:[F

    aput v1, v0, p1

    iget-object v0, p0, Laia;->i:[F

    aput v1, v0, p1

    iget-object v0, p0, Laia;->j:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    iget-object v0, p0, Laia;->k:[I

    aput v1, v0, p1

    iget-object v0, p0, Laia;->l:[I

    aput v1, v0, p1

    iget v0, p0, Laia;->m:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    xor-int/lit8 p1, p1, -0x1

    and-int/2addr p1, v0

    iput p1, p0, Laia;->m:I

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private final o(FF)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Laia;->t:Z

    iget-object v1, p0, Laia;->s:Lahz;

    iget-object v2, p0, Laia;->d:Landroid/view/View;

    invoke-virtual {v1, v2, p1, p2}, Lahz;->d(Landroid/view/View;FF)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Laia;->t:Z

    iget p2, p0, Laia;->a:I

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, p1}, Laia;->f(I)V

    :cond_0
    return-void
.end method

.method private final p()V
    .locals 4

    iget-object v0, p0, Laia;->n:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Laia;->o:F

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v0, p0, Laia;->n:Landroid/view/VelocityTracker;

    iget v1, p0, Laia;->c:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    iget v1, p0, Laia;->p:F

    iget v2, p0, Laia;->o:F

    invoke-static {v0, v1, v2}, Laia;->v(FFF)F

    move-result v0

    iget-object v1, p0, Laia;->n:Landroid/view/VelocityTracker;

    iget v2, p0, Laia;->c:I

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    iget v2, p0, Laia;->p:F

    iget v3, p0, Laia;->o:F

    invoke-static {v1, v2, v3}, Laia;->v(FFF)F

    move-result v1

    invoke-direct {p0, v0, v1}, Laia;->o(FF)V

    return-void
.end method

.method private final q(FFI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Laia;->x(FFI)V

    invoke-direct {p0, p2, p1, p3}, Laia;->x(FFI)V

    invoke-direct {p0, p1, p2, p3}, Laia;->x(FFI)V

    invoke-direct {p0, p2, p1, p3}, Laia;->x(FFI)V

    return-void
.end method

.method private final r(FFI)V
    .locals 10

    iget-object v0, p0, Laia;->f:[F

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    if-gt v2, p3, :cond_2

    :cond_0
    add-int/lit8 v2, p3, 0x1

    new-array v3, v2, [F

    new-array v4, v2, [F

    new-array v5, v2, [F

    new-array v6, v2, [F

    new-array v7, v2, [I

    new-array v8, v2, [I

    new-array v2, v2, [I

    if-eqz v0, :cond_1

    array-length v9, v0

    invoke-static {v0, v1, v3, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Laia;->g:[F

    array-length v9, v0

    invoke-static {v0, v1, v4, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Laia;->h:[F

    array-length v9, v0

    invoke-static {v0, v1, v5, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Laia;->i:[F

    array-length v9, v0

    invoke-static {v0, v1, v6, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Laia;->j:[I

    array-length v9, v0

    invoke-static {v0, v1, v7, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Laia;->k:[I

    array-length v9, v0

    invoke-static {v0, v1, v8, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Laia;->l:[I

    array-length v9, v0

    invoke-static {v0, v1, v2, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iput-object v3, p0, Laia;->f:[F

    iput-object v4, p0, Laia;->g:[F

    iput-object v5, p0, Laia;->h:[F

    iput-object v6, p0, Laia;->i:[F

    iput-object v7, p0, Laia;->j:[I

    iput-object v8, p0, Laia;->k:[I

    iput-object v2, p0, Laia;->l:[I

    :cond_2
    iget-object v0, p0, Laia;->f:[F

    iget-object v2, p0, Laia;->h:[F

    aput p1, v2, p3

    aput p1, v0, p3

    iget-object v0, p0, Laia;->g:[F

    iget-object v2, p0, Laia;->i:[F

    aput p2, v2, p3

    aput p2, v0, p3

    iget-object v0, p0, Laia;->j:[I

    float-to-int p1, p1

    float-to-int p2, p2

    iget-object v2, p0, Laia;->u:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v2

    iget v3, p0, Laia;->q:I

    add-int/2addr v2, v3

    const/4 v3, 0x1

    if-ge p1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    :goto_0
    iget-object v2, p0, Laia;->u:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTop()I

    move-result v2

    iget v4, p0, Laia;->q:I

    add-int/2addr v2, v4

    if-ge p2, v2, :cond_4

    or-int/lit8 v1, v1, 0x4

    :cond_4
    iget-object v2, p0, Laia;->u:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getRight()I

    move-result v2

    iget v4, p0, Laia;->q:I

    sub-int/2addr v2, v4

    if-le p1, v2, :cond_5

    or-int/lit8 v1, v1, 0x2

    :cond_5
    iget-object p1, p0, Laia;->u:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getBottom()I

    move-result p1

    iget v2, p0, Laia;->q:I

    sub-int/2addr p1, v2

    if-le p2, p1, :cond_6

    or-int/lit8 v1, v1, 0x8

    :cond_6
    aput v1, v0, p3

    iget p1, p0, Laia;->m:I

    shl-int p2, v3, p3

    or-int/2addr p1, p2

    iput p1, p0, Laia;->m:I

    return-void
.end method

.method private final s(Landroid/view/MotionEvent;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    invoke-direct {p0, v2}, Laia;->u(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iget-object v5, p0, Laia;->h:[F

    aput v3, v5, v2

    iget-object v3, p0, Laia;->i:[F

    aput v4, v3, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final t(Landroid/view/View;FF)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Laia;->s:Lahz;

    invoke-virtual {v1, p1}, Lahz;->a(Landroid/view/View;)I

    move-result p1

    const/4 v1, 0x1

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object v2, p0, Laia;->s:Lahz;

    invoke-virtual {v2}, Lahz;->h()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz p1, :cond_4

    if-eqz v2, :cond_4

    mul-float p2, p2, p2

    mul-float p3, p3, p3

    iget p1, p0, Laia;->b:I

    mul-int p1, p1, p1

    add-float/2addr p2, p3

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    if-eqz p1, :cond_6

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Laia;->b:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_5

    return v1

    :cond_5
    return v0

    :cond_6
    if-eqz v2, :cond_7

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Laia;->b:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_7

    return v1

    :cond_7
    return v0
.end method

.method private final u(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Laia;->h(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private static final v(FFF)F
    .locals 2

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float p1, v0, p1

    if-gez p1, :cond_0

    return v1

    :cond_0
    cmpl-float p1, v0, p2

    if-lez p1, :cond_2

    cmpl-float p0, p0, v1

    if-lez p0, :cond_1

    return p2

    :cond_1
    neg-float p0, p2

    :cond_2
    return p0
.end method

.method private static final w(III)I
    .locals 1

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-le v0, p2, :cond_2

    if-lez p0, :cond_1

    return p2

    :cond_1
    neg-int p0, p2

    :cond_2
    return p0
.end method

.method private final x(FFI)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    iget-object p1, p0, Laia;->j:[I

    aget p1, p1, p3

    return-void
.end method


# virtual methods
.method public final a(II)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Laia;->u:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Laia;->u:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt p1, v2, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge p1, v2, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt p2, v2, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-lt p2, v2, :cond_0

    goto :goto_1

    :cond_0
    return-object v1

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final c()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Laia;->c:I

    iget-object v0, p0, Laia;->f:[F

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Laia;->g:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Laia;->h:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Laia;->i:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Laia;->j:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Laia;->k:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Laia;->l:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iput v1, p0, Laia;->m:I

    :cond_0
    iget-object v0, p0, Laia;->n:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Laia;->n:Landroid/view/VelocityTracker;

    :cond_1
    return-void
.end method

.method public final d(Landroid/view/View;I)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Laia;->u:Landroid/view/ViewGroup;

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Laia;->d:Landroid/view/View;

    iput p2, p0, Laia;->c:I

    iget-object v0, p0, Laia;->s:Lahz;

    invoke-virtual {v0, p1, p2}, Lahz;->b(Landroid/view/View;I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Laia;->f(I)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "captureChildView: parameter must be a descendant of the ViewDragHelper\'s tracked parent view ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Laia;->u:Landroid/view/ViewGroup;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final e(Landroid/view/MotionEvent;)V
    .locals 9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Laia;->c()V

    const/4 v0, 0x0

    :cond_0
    iget-object v3, p0, Laia;->n:Landroid/view/VelocityTracker;

    if-nez v3, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Laia;->n:Landroid/view/VelocityTracker;

    :cond_1
    iget-object v3, p0, Laia;->n:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v3, -0x1

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_8

    :pswitch_1
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iget v1, p0, Laia;->a:I

    if-ne v1, v4, :cond_5

    iget v1, p0, Laia;->c:I

    if-ne v0, v1, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    :goto_0
    if-ge v2, v1, :cond_4

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iget v5, p0, Laia;->c:I

    if-ne v4, v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v5, v5

    float-to-int v6, v6

    invoke-virtual {p0, v5, v6}, Laia;->a(II)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Laia;->d:Landroid/view/View;

    if-ne v5, v6, :cond_3

    invoke-virtual {p0, v6, v4}, Laia;->k(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_3

    iget p1, p0, Laia;->c:I

    if-ne p1, v3, :cond_5

    goto :goto_2

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    invoke-direct {p0}, Laia;->p()V

    :cond_5
    invoke-direct {p0, v0}, Laia;->n(I)V

    return-void

    :pswitch_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-direct {p0, v2, p1, v0}, Laia;->r(FFI)V

    iget v1, p0, Laia;->a:I

    if-nez v1, :cond_6

    float-to-int v1, v2

    float-to-int p1, p1

    invoke-virtual {p0, v1, p1}, Laia;->a(II)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Laia;->k(Landroid/view/View;I)Z

    iget-object p1, p0, Laia;->j:[I

    aget p1, p1, v0

    return-void

    :cond_6
    float-to-int v1, v2

    float-to-int p1, p1

    iget-object v2, p0, Laia;->d:Landroid/view/View;

    if-nez v2, :cond_7

    goto/16 :goto_8

    :cond_7
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt v1, v3, :cond_11

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge v1, v3, :cond_11

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    if-lt p1, v1, :cond_11

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v1

    if-ge p1, v1, :cond_11

    iget-object p1, p0, Laia;->d:Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Laia;->k(Landroid/view/View;I)Z

    return-void

    :pswitch_3
    iget p1, p0, Laia;->a:I

    if-ne p1, v4, :cond_8

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Laia;->o(FF)V

    :cond_8
    invoke-virtual {p0}, Laia;->c()V

    return-void

    :pswitch_4
    iget v0, p0, Laia;->a:I

    if-ne v0, v4, :cond_c

    iget v0, p0, Laia;->c:I

    invoke-direct {p0, v0}, Laia;->u(I)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-eq v0, v3, :cond_11

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iget-object v2, p0, Laia;->h:[F

    iget v3, p0, Laia;->c:I

    aget v2, v2, v3

    sub-float/2addr v1, v2

    iget-object v2, p0, Laia;->i:[F

    aget v2, v2, v3

    sub-float/2addr v0, v2

    iget-object v2, p0, Laia;->d:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    float-to-int v1, v1

    add-int/2addr v2, v1

    iget-object v3, p0, Laia;->d:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    float-to-int v0, v0

    add-int/2addr v3, v0

    iget-object v4, p0, Laia;->d:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iget-object v5, p0, Laia;->d:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    if-eqz v1, :cond_9

    iget-object v6, p0, Laia;->s:Lahz;

    iget-object v7, p0, Laia;->d:Landroid/view/View;

    invoke-virtual {v6, v7, v2}, Lahz;->f(Landroid/view/View;I)I

    move-result v2

    iget-object v6, p0, Laia;->d:Landroid/view/View;

    sub-int v4, v2, v4

    sget-object v7, Lafq;->a:[I

    invoke-virtual {v6, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_3

    :cond_9
    :goto_3
    if-eqz v0, :cond_a

    iget-object v4, p0, Laia;->s:Lahz;

    iget-object v6, p0, Laia;->d:Landroid/view/View;

    invoke-virtual {v4, v6, v3}, Lahz;->g(Landroid/view/View;I)I

    move-result v3

    iget-object v4, p0, Laia;->d:Landroid/view/View;

    sub-int v5, v3, v5

    sget-object v6, Lafq;->a:[I

    invoke-virtual {v4, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_4

    :cond_a
    :goto_4
    if-nez v1, :cond_b

    if-eqz v0, :cond_f

    :cond_b
    iget-object v0, p0, Laia;->s:Lahz;

    iget-object v1, p0, Laia;->d:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v3}, Lahz;->i(Landroid/view/View;II)V

    goto :goto_7

    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    :goto_5
    if-ge v2, v0, :cond_f

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    invoke-direct {p0, v1}, Laia;->u(I)Z

    move-result v3

    if-nez v3, :cond_d

    goto :goto_6

    :cond_d
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    iget-object v6, p0, Laia;->f:[F

    aget v6, v6, v1

    sub-float v6, v3, v6

    iget-object v7, p0, Laia;->g:[F

    aget v7, v7, v1

    sub-float v7, v5, v7

    invoke-direct {p0, v6, v7, v1}, Laia;->q(FFI)V

    iget v8, p0, Laia;->a:I

    if-eq v8, v4, :cond_f

    float-to-int v3, v3

    float-to-int v5, v5

    invoke-virtual {p0, v3, v5}, Laia;->a(II)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, v6, v7}, Laia;->t(Landroid/view/View;FF)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual {p0, v3, v1}, Laia;->k(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_7

    :cond_e
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_f
    :goto_7
    invoke-direct {p0, p1}, Laia;->s(Landroid/view/MotionEvent;)V

    return-void

    :pswitch_5
    iget p1, p0, Laia;->a:I

    if-ne p1, v4, :cond_10

    invoke-direct {p0}, Laia;->p()V

    :cond_10
    invoke-virtual {p0}, Laia;->c()V

    return-void

    :pswitch_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    float-to-int v2, v0

    float-to-int v3, v1

    invoke-virtual {p0, v2, v3}, Laia;->a(II)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v0, v1, p1}, Laia;->r(FFI)V

    invoke-virtual {p0, v2, p1}, Laia;->k(Landroid/view/View;I)Z

    iget-object v0, p0, Laia;->j:[I

    aget p1, v0, p1

    return-void

    :cond_11
    :goto_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final f(I)V
    .locals 2

    iget-object v0, p0, Laia;->u:Landroid/view/ViewGroup;

    iget-object v1, p0, Laia;->v:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget v0, p0, Laia;->a:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Laia;->a:I

    iget-object v0, p0, Laia;->s:Lahz;

    invoke-virtual {v0, p1}, Lahz;->c(I)V

    iget p1, p0, Laia;->a:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Laia;->d:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public final g(IIII)Z
    .locals 9

    iget-object v0, p0, Laia;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v0, p0, Laia;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr p1, v2

    sub-int v5, p2, v3

    if-nez p1, :cond_1

    const/4 p1, 0x0

    if-eqz v5, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Laia;->r:Landroid/widget/OverScroller;

    invoke-virtual {p2}, Landroid/widget/OverScroller;->abortAnimation()V

    invoke-virtual {p0, p1}, Laia;->f(I)V

    return p1

    :cond_1
    move v4, p1

    :goto_0
    iget-object p1, p0, Laia;->d:Landroid/view/View;

    iget p2, p0, Laia;->p:F

    float-to-int p2, p2

    iget v0, p0, Laia;->o:F

    float-to-int v0, v0

    invoke-static {p3, p2, v0}, Laia;->w(III)I

    move-result p2

    iget p3, p0, Laia;->p:F

    float-to-int p3, p3

    iget v0, p0, Laia;->o:F

    float-to-int v0, v0

    invoke-static {p4, p3, v0}, Laia;->w(III)I

    move-result p3

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    add-int v7, v1, v6

    add-int v8, p4, v0

    if-eqz p2, :cond_2

    int-to-float p4, v1

    int-to-float v1, v7

    div-float/2addr p4, v1

    goto :goto_1

    :cond_2
    int-to-float p4, p4

    int-to-float v1, v8

    div-float/2addr p4, v1

    :goto_1
    if-eqz p3, :cond_3

    int-to-float v0, v6

    int-to-float v1, v7

    div-float/2addr v0, v1

    goto :goto_2

    :cond_3
    int-to-float v0, v0

    int-to-float v1, v8

    div-float/2addr v0, v1

    :goto_2
    iget-object v1, p0, Laia;->s:Lahz;

    invoke-virtual {v1, p1}, Lahz;->a(Landroid/view/View;)I

    move-result p1

    invoke-direct {p0, v4, p2, p1}, Laia;->m(III)I

    move-result p1

    iget-object p2, p0, Laia;->s:Lahz;

    invoke-virtual {p2}, Lahz;->h()I

    move-result p2

    invoke-direct {p0, v5, p3, p2}, Laia;->m(III)I

    move-result p2

    int-to-float p1, p1

    mul-float p1, p1, p4

    int-to-float p2, p2

    iget-object v1, p0, Laia;->r:Landroid/widget/OverScroller;

    mul-float p2, p2, v0

    add-float/2addr p1, p2

    float-to-int v6, p1

    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Laia;->f(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public final h(I)Z
    .locals 2

    iget v0, p0, Laia;->m:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final i(II)Z
    .locals 3

    iget-boolean v0, p0, Laia;->t:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Laia;->n:Landroid/view/VelocityTracker;

    iget v1, p0, Laia;->c:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Laia;->n:Landroid/view/VelocityTracker;

    iget v2, p0, Laia;->c:I

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, p1, p2, v0, v1}, Laia;->g(IIII)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final j(Landroid/view/MotionEvent;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    if-nez v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Laia;->c()V

    const/4 v2, 0x0

    :cond_0
    iget-object v5, v0, Laia;->n:Landroid/view/VelocityTracker;

    if-nez v5, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, v0, Laia;->n:Landroid/view/VelocityTracker;

    :cond_1
    iget-object v5, v0, Laia;->n:Landroid/view/VelocityTracker;

    invoke-virtual {v5, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v5, 0x2

    const/4 v6, 0x1

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    :pswitch_1
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    invoke-direct {v0, v1}, Laia;->n(I)V

    goto/16 :goto_3

    :pswitch_2
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-direct {v0, v7, v1, v2}, Laia;->r(FFI)V

    iget v3, v0, Laia;->a:I

    if-nez v3, :cond_2

    iget-object v1, v0, Laia;->j:[I

    aget v1, v1, v2

    goto/16 :goto_3

    :cond_2
    if-ne v3, v5, :cond_a

    float-to-int v3, v7

    float-to-int v1, v1

    invoke-virtual {v0, v3, v1}, Laia;->a(II)Landroid/view/View;

    move-result-object v1

    iget-object v3, v0, Laia;->d:Landroid/view/View;

    if-ne v1, v3, :cond_a

    invoke-virtual {v0, v1, v2}, Laia;->k(Landroid/view/View;I)Z

    goto/16 :goto_3

    :pswitch_3
    iget-object v2, v0, Laia;->f:[F

    if-eqz v2, :cond_a

    iget-object v2, v0, Laia;->g:[F

    if-eqz v2, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_8

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    invoke-direct {v0, v5}, Laia;->u(I)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    iget-object v9, v0, Laia;->f:[F

    aget v9, v9, v5

    sub-float v9, v7, v9

    iget-object v10, v0, Laia;->g:[F

    aget v10, v10, v5

    sub-float v10, v8, v10

    float-to-int v7, v7

    float-to-int v8, v8

    invoke-virtual {v0, v7, v8}, Laia;->a(II)Landroid/view/View;

    move-result-object v7

    invoke-direct {v0, v7, v9, v10}, Laia;->t(Landroid/view/View;FF)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v11

    float-to-int v12, v9

    add-int/2addr v12, v11

    iget-object v13, v0, Laia;->s:Lahz;

    invoke-virtual {v13, v7, v12}, Lahz;->f(Landroid/view/View;I)I

    move-result v12

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v13

    float-to-int v14, v10

    add-int/2addr v14, v13

    iget-object v15, v0, Laia;->s:Lahz;

    invoke-virtual {v15, v7, v14}, Lahz;->g(Landroid/view/View;I)I

    move-result v14

    iget-object v15, v0, Laia;->s:Lahz;

    invoke-virtual {v15, v7}, Lahz;->a(Landroid/view/View;)I

    move-result v15

    iget-object v4, v0, Laia;->s:Lahz;

    invoke-virtual {v4}, Lahz;->h()I

    move-result v4

    if-eqz v15, :cond_4

    if-lez v15, :cond_6

    if-ne v12, v11, :cond_6

    :cond_4
    if-eqz v4, :cond_5

    if-lez v4, :cond_6

    if-ne v14, v13, :cond_6

    :cond_5
    goto :goto_2

    :cond_6
    invoke-direct {v0, v9, v10, v5}, Laia;->q(FFI)V

    iget v4, v0, Laia;->a:I

    if-eq v4, v6, :cond_8

    if-eqz v8, :cond_7

    invoke-virtual {v0, v7, v5}, Laia;->k(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_2

    :cond_7
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_8
    :goto_2
    invoke-direct/range {p0 .. p1}, Laia;->s(Landroid/view/MotionEvent;)V

    goto :goto_3

    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Laia;->c()V

    goto :goto_3

    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    invoke-direct {v0, v2, v3, v1}, Laia;->r(FFI)V

    float-to-int v2, v2

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Laia;->a(II)Landroid/view/View;

    move-result-object v2

    iget-object v3, v0, Laia;->d:Landroid/view/View;

    if-ne v2, v3, :cond_9

    iget v3, v0, Laia;->a:I

    if-ne v3, v5, :cond_9

    invoke-virtual {v0, v2, v1}, Laia;->k(Landroid/view/View;I)Z

    :cond_9
    iget-object v2, v0, Laia;->j:[I

    aget v1, v2, v1

    :cond_a
    :goto_3
    iget v1, v0, Laia;->a:I

    if-ne v1, v6, :cond_b

    return v6

    :cond_b
    const/4 v1, 0x0

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method final k(Landroid/view/View;I)Z
    .locals 2

    iget-object v0, p0, Laia;->d:Landroid/view/View;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    iget v0, p0, Laia;->c:I

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Laia;->s:Lahz;

    invoke-virtual {v0, p1, p2}, Lahz;->e(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_2

    iput p2, p0, Laia;->c:I

    invoke-virtual {p0, p1, p2}, Laia;->d(Landroid/view/View;I)V

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final l()Z
    .locals 8

    iget v0, p0, Laia;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Laia;->r:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    iget-object v2, p0, Laia;->r:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v2

    iget-object v3, p0, Laia;->r:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v3

    iget-object v4, p0, Laia;->d:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int v4, v2, v4

    iget-object v5, p0, Laia;->d:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v5, v3, v5

    if-eqz v4, :cond_0

    iget-object v6, p0, Laia;->d:Landroid/view/View;

    sget-object v7, Lafq;->a:[I

    invoke-virtual {v6, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_0
    if-eqz v5, :cond_1

    iget-object v6, p0, Laia;->d:Landroid/view/View;

    sget-object v7, Lafq;->a:[I

    invoke-virtual {v6, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_1
    if-nez v4, :cond_2

    if-eqz v5, :cond_3

    :cond_2
    iget-object v4, p0, Laia;->s:Lahz;

    iget-object v5, p0, Laia;->d:Landroid/view/View;

    invoke-virtual {v4, v5, v2, v3}, Lahz;->i(Landroid/view/View;II)V

    :cond_3
    if-eqz v0, :cond_4

    iget-object v0, p0, Laia;->r:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v0

    if-ne v2, v0, :cond_5

    iget-object v0, p0, Laia;->r:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v0

    if-ne v3, v0, :cond_5

    iget-object v0, p0, Laia;->r:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    :cond_4
    iget-object v0, p0, Laia;->u:Landroid/view/ViewGroup;

    iget-object v2, p0, Laia;->v:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_5
    iget v0, p0, Laia;->a:I

    if-ne v0, v1, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method
