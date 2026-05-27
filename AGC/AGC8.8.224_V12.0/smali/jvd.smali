.class public Ljvd;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Landroid/view/ViewGroup;)Ljava/util/Collection;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static B(Landroid/graphics/PointF;Landroid/view/View;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Likp;->f(Landroid/view/View;)[I

    move-result-object v0

    iget v1, p0, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    aget v3, v0, v2

    int-to-float v3, v3

    add-float/2addr v1, v3

    iget p0, p0, Landroid/graphics/PointF;->y:F

    const/4 v3, 0x1

    aget v0, v0, v3

    int-to-float v0, v0

    add-float/2addr p0, v0

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v4, v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    aget v5, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v5, p1

    aget p1, v0, v2

    int-to-float p1, p1

    cmpl-float p1, v1, p1

    if-ltz p1, :cond_0

    int-to-float p1, v4

    cmpg-float p1, v1, p1

    if-gtz p1, :cond_0

    aget p1, v0, v3

    int-to-float p1, p1

    cmpl-float p1, p0, p1

    if-ltz p1, :cond_0

    int-to-float p1, v5

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_0

    return v3

    :cond_0
    return v2
.end method

.method public static C(Landroid/view/View;)V
    .locals 2

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static D(Liko;)I
    .locals 1

    invoke-static {p0}, Liko;->e(Liko;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Liko;->c()Liko;

    move-result-object p0

    iget p0, p0, Liko;->e:I

    return p0
.end method

.method public static E(Landroid/view/View;Liko;)Lmqp;
    .locals 1

    new-instance v0, Likq;

    invoke-direct {v0, p0}, Likq;-><init>(Landroid/view/View;)V

    invoke-static {v0, p1}, Ljvd;->F(Lcom/google/android/apps/camera/uiutils/ViewSmoothRotationUtil$Rotatee;Liko;)Lmqp;

    move-result-object p0

    return-object p0
.end method

.method public static F(Lcom/google/android/apps/camera/uiutils/ViewSmoothRotationUtil$Rotatee;Liko;)Lmqp;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ljvd;->D(Liko;)I

    move-result p1

    int-to-float p1, p1

    invoke-interface {p0}, Lcom/google/android/apps/camera/uiutils/ViewSmoothRotationUtil$Rotatee;->a()F

    move-result v0

    invoke-static {v0}, Ljvd;->P(F)F

    move-result v0

    invoke-static {p1}, Ljvd;->P(F)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    sget-object p0, Lmpx;->a:Lmpx;

    return-object p0

    :cond_0
    invoke-interface {p0}, Lcom/google/android/apps/camera/uiutils/ViewSmoothRotationUtil$Rotatee;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0}, Lcom/google/android/apps/camera/uiutils/ViewSmoothRotationUtil$Rotatee;->c()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [F

    invoke-interface {p0}, Lcom/google/android/apps/camera/uiutils/ViewSmoothRotationUtil$Rotatee;->a()F

    move-result p0

    const/4 v4, 0x0

    aput p0, v3, v4

    const/4 p0, 0x1

    invoke-static {p1}, Ljvd;->P(F)F

    move-result p1

    aput p1, v3, p0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    new-instance p1, Lakf;

    invoke-direct {p1}, Lakf;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/high16 p1, 0x42b40000    # 90.0f

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_1

    const-wide/16 v0, 0xfa

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-static {p0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p0

    return-object p0
.end method

.method public static G(Landroid/view/View;Liko;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Liko;->d:Liko;

    invoke-virtual {p1, v0}, Liko;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget v0, p1, Liko;->e:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setRotation(F)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/View;->setRotation(F)V

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotY(F)V

    sget-object v0, Liko;->b:Liko;

    invoke-virtual {p1, v0}, Liko;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void

    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public static H(Landroid/view/View;Liko;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotY(F)V

    invoke-static {p1}, Liko;->e(Liko;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/View;->setRotation(F)V

    return-void

    :cond_0
    iget p1, p1, Liko;->e:I

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    return-void
.end method

.method public static I(Landroid/view/View;Liko;)V
    .locals 0

    invoke-static {p0, p1}, Ljvd;->E(Landroid/view/View;Liko;)Lmqp;

    move-result-object p0

    invoke-virtual {p0}, Lmqp;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method public static J(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8

    rem-int/lit16 v0, p1, 0x168

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, p1

    invoke-virtual {v6, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static K(Ljava/util/function/Consumer;)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    new-instance v0, Likb;

    invoke-direct {v0, p0}, Likb;-><init>(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public static L(Ljava/util/function/Consumer;)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    new-instance v0, Likc;

    invoke-direct {v0, p0}, Likc;-><init>(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public static M(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic N(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 6

    :try_start_0
    const-class v0, Ljava/lang/Throwable;

    const-string v1, "addSuppressed"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Throwable;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    return-void
.end method

.method private static O(Ljur;)Ljava/util/concurrent/ThreadFactory;
    .locals 6

    iget v0, p0, Ljur;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v3, 0xd

    if-nez v0, :cond_2

    iget-object v4, p0, Ljur;->b:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, v3, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    const/4 v4, 0x1

    :goto_1
    iget-object v5, p0, Ljur;->b:Ljava/lang/String;

    if-eqz v4, :cond_3

    new-instance v1, Ljus;

    invoke-direct {v1, p0, v0}, Ljus;-><init>(Ljur;Z)V

    return-object v1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v5, v0, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "Thread name %s is too long, must be less than %s"

    invoke-static {v1, v0}, Llkj;->F(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static P(F)F
    .locals 2

    const/high16 v0, 0x43340000    # 180.0f

    cmpl-float v1, p0, v0

    if-ltz v1, :cond_0

    sub-float/2addr v0, p0

    return v0

    :cond_0
    return p0
.end method

.method public static b(Ljava/util/concurrent/Executor;)Ljvb;
    .locals 2

    new-instance v0, Ljvb;

    sget-object v1, Ljuz;->a:Ljuz;

    invoke-direct {v0, p0, v1}, Ljvb;-><init>(Ljava/util/concurrent/Executor;Ljzw;)V

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    invoke-static {}, Ljur;->a()Ljuq;

    move-result-object v0

    iput-object p0, v0, Ljuq;->a:Ljava/lang/String;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljuq;->c(I)V

    invoke-virtual {v0}, Ljuq;->a()Ljur;

    move-result-object p0

    invoke-static {p0}, Ljvd;->d(Ljur;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljur;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lmoz;->e(Z)V

    invoke-static {p0}, Ljvd;->O(Ljur;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    iget p0, p0, Ljur;->a:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p0, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static e(Ljava/lang/String;I)Ljava/util/concurrent/ExecutorService;
    .locals 1

    invoke-static {}, Ljur;->a()Ljuq;

    move-result-object v0

    iput-object p0, v0, Ljuq;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljuq;->c(I)V

    invoke-virtual {v0}, Ljuq;->a()Ljur;

    move-result-object p0

    invoke-static {p0}, Ljvd;->d(Ljur;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    invoke-static {}, Ljur;->a()Ljuq;

    move-result-object v0

    iput-object p0, v0, Ljuq;->a:Ljava/lang/String;

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljuq;->c(I)V

    invoke-virtual {v0}, Ljuq;->a()Ljur;

    move-result-object p0

    invoke-static {p0}, Ljvd;->d(Ljur;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/util/concurrent/RunnableScheduledFuture;)Ljava/util/concurrent/RunnableScheduledFuture;
    .locals 1

    new-instance v0, Ljuu;

    invoke-direct {v0, p0}, Ljuu;-><init>(Ljava/util/concurrent/RunnableScheduledFuture;)V

    return-object v0
.end method

.method public static h(Ljur;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2

    iget v0, p0, Ljur;->a:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lmoz;->e(Z)V

    invoke-static {p0}, Ljvd;->O(Ljur;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    iget v1, p0, Ljur;->a:I

    iget-boolean p0, p0, Ljur;->d:Z

    if-nez p0, :cond_1

    new-instance p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-direct {p0, v1, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljut;

    invoke-direct {p0, v1, v0}, Ljut;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    :goto_1
    return-object p0
.end method

.method public static i(Ljava/lang/String;I)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    invoke-static {}, Ljur;->a()Ljuq;

    move-result-object v0

    iput-object p0, v0, Ljuq;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljuq;->c(I)V

    invoke-virtual {v0}, Ljuq;->a()Ljur;

    move-result-object p0

    invoke-static {p0}, Ljvd;->h(Ljur;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p0

    return-object p0
.end method

.method public static j(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    invoke-static {}, Ljur;->a()Ljuq;

    move-result-object v0

    iput-object p0, v0, Ljuq;->a:Ljava/lang/String;

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljuq;->c(I)V

    invoke-virtual {v0}, Ljuq;->a()Ljur;

    move-result-object p0

    invoke-static {p0}, Ljvd;->h(Ljur;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p0

    return-object p0
.end method

.method public static k(Ljava/lang/String;I)Ljava/util/concurrent/ExecutorService;
    .locals 1

    invoke-static {}, Ljur;->a()Ljuq;

    move-result-object v0

    iput-object p0, v0, Ljuq;->a:Ljava/lang/String;

    const/4 p0, 0x2

    invoke-virtual {v0, p0}, Ljuq;->c(I)V

    invoke-virtual {v0, p1}, Ljuq;->b(I)V

    invoke-virtual {v0}, Ljuq;->a()Ljur;

    move-result-object p0

    invoke-static {p0}, Ljvd;->d(Ljur;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    return-object p0
.end method

.method public static l()Ljava/util/concurrent/Executor;
    .locals 1

    new-instance v0, Ljuh;

    invoke-direct {v0}, Ljuh;-><init>()V

    invoke-static {v0}, Ljvd;->m(Ljuh;)Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method public static m(Ljuh;)Ljava/util/concurrent/Executor;
    .locals 2

    new-instance v0, Lkud;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lkud;-><init>(Ljuh;I)V

    return-object v0
.end method

.method public static n()Landroid/os/Handler;
    .locals 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    return-object v0
.end method

.method public static o(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method public static p(Ljuf;Ljava/lang/String;)Landroid/os/Handler;
    .locals 1

    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance p1, Ljue;

    invoke-direct {p1, v0}, Ljue;-><init>(Landroid/os/HandlerThread;)V

    invoke-virtual {p0, p1}, Ljuf;->d(Lkad;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {p0}, Ljvd;->o(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public static q(Lnou;Lnou;Ljzv;)Lnou;
    .locals 2

    new-instance v0, Ljuc;

    invoke-direct {v0, p2}, Ljuc;-><init>(Ljzv;)V

    new-instance p2, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p2}, Lnsy;->x(Ljava/lang/Iterable;)Lnou;

    move-result-object p0

    new-instance p1, Lcmq;

    const/16 p2, 0x9

    invoke-direct {p1, v0, p2}, Lcmq;-><init>(Ljub;I)V

    sget-object p2, Lnnv;->a:Lnnv;

    invoke-static {p0, p1, p2}, Lnnf;->j(Lnou;Lnno;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object p0

    return-object p0
.end method

.method public static r(Lnou;)Ljava/lang/Object;
    .locals 2

    invoke-interface {p0}, Lnou;->isDone()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Lnou;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-interface {p0}, Lnou;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_1
    throw p0

    :catch_0
    move-exception p0

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    return-object v1

    :catch_1
    move-exception v0

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public static s(Lnou;Ljzs;)V
    .locals 1

    sget-object v0, Lnnv;->a:Lnnv;

    invoke-static {p0, p1, v0}, Ljvd;->t(Lnou;Ljzs;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static t(Lnou;Ljzs;Ljava/util/concurrent/Executor;)V
    .locals 2

    new-instance v0, Ljua;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljua;-><init>(Ljzs;I)V

    invoke-static {p0, v0, p2}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static u(Lnou;Lnou;Ljub;Ljava/util/concurrent/Executor;)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lnsy;->x(Ljava/lang/Iterable;)Lnou;

    move-result-object p0

    new-instance p1, Lcmq;

    const/16 v0, 0x8

    invoke-direct {p1, p2, v0}, Lcmq;-><init>(Ljub;I)V

    invoke-static {p0, p1, p3}, Lnnf;->j(Lnou;Lnno;Ljava/util/concurrent/Executor;)Lnou;

    return-void
.end method

.method public static v(I)Lcom/google/android/gms/common/api/Status;
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    invoke-static {p0}, Ljfc;->d(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    const-string v1, "FEATURE_DISABLED"

    goto :goto_0

    :pswitch_2
    const-string v1, "NO_MIGRATION_FOUND_TO_CANCEL"

    goto :goto_0

    :pswitch_3
    const-string v1, "MIGRATION_NOT_CANCELLABLE"

    goto :goto_0

    :pswitch_4
    const-string v1, "ACCOUNT_KEY_CREATION_FAILED"

    goto :goto_0

    :pswitch_5
    const-string v1, "UNSUPPORTED_BY_TARGET"

    goto :goto_0

    :pswitch_6
    const-string v1, "WIFI_CREDENTIAL_SYNC_NO_CREDENTIAL_FETCHED"

    goto :goto_0

    :pswitch_7
    const-string v1, "UNKNOWN_CAPABILITY"

    goto :goto_0

    :pswitch_8
    const-string v1, "DUPLICATE_CAPABILITY"

    goto :goto_0

    :pswitch_9
    const-string v1, "ASSET_UNAVAILABLE"

    goto :goto_0

    :pswitch_a
    const-string v1, "INVALID_TARGET_NODE"

    goto :goto_0

    :pswitch_b
    const-string v1, "DATA_ITEM_TOO_LARGE"

    goto :goto_0

    :pswitch_c
    const-string v1, "UNKNOWN_LISTENER"

    goto :goto_0

    :pswitch_d
    const-string v1, "DUPLICATE_LISTENER"

    goto :goto_0

    :pswitch_e
    const-string v1, "TARGET_NODE_NOT_CONNECTED"

    :goto_0
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0xfa0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static w(Ljava/lang/Class;Lmwn;)Ljava/lang/Object;
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lmwn;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lilv;

    invoke-direct {v0, p1}, Lilv;-><init>(Lmwn;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {p1, v1, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static bridge synthetic x(Landroid/animation/Animator;)Lila;
    .locals 1

    new-instance v0, Lilc;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p0}, Lilc;-><init>(Landroid/animation/Animator;)V

    return-object v0
.end method

.method public static y(Landroid/view/View;)Landroid/graphics/Point;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    new-instance p0, Landroid/graphics/Point;

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-direct {p0, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object p0
.end method

.method public static z(Landroid/view/View;)Landroid/graphics/Point;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance p0, Landroid/graphics/Point;

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-direct {p0, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object p0
.end method


# virtual methods
.method public a(Ligo;)Z
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method
