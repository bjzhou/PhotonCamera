.class public final Lifu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/AutoCloseable;
.implements Lelk;


# instance fields
.field public final a:Lige;

.field public b:Ljava/util/List;

.field public c:Ljava/lang/Runnable;

.field private final d:I

.field private final e:Landroid/view/View;

.field private final f:Z

.field private final g:Z

.field private final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final i:Ligb;

.field private j:Ljava/util/Date;

.field private k:Z

.field private final l:I


# direct methods
.method public constructor <init>(Ligb;Landroid/view/View;ILandroid/view/View;IIIIIZZ)V
    .locals 12

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object/from16 v3, p4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v0, Lifu;->b:Ljava/util/List;

    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v4, v0, Lifu;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v4, Lhck;->i:Lhck;

    iput-object v4, v0, Lifu;->c:Ljava/lang/Runnable;

    iput-boolean v5, v0, Lifu;->k:Z

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v6, Lige;

    invoke-direct {v6, v4}, Lige;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v5}, Lige;->setWillNotDraw(Z)V

    iget-object v7, v6, Lige;->b:Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-virtual {v6, v8, v7}, Lige;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v7, v6, Lige;->c:Landroid/graphics/Paint;

    invoke-virtual {v6, v8, v7}, Lige;->setLayerType(ILandroid/graphics/Paint;)V

    new-instance v7, Lidm;

    const/4 v9, 0x2

    invoke-direct {v7, v6, v9}, Lidm;-><init>(Lige;I)V

    invoke-virtual {v6, v7}, Lige;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v7, "display"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/display/DisplayManager;

    iget-object v10, v6, Lige;->w:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v4}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-static {v4}, Ljvd;->o(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v7, v10, v4}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    iget-object v4, v6, Lige;->v:Ljava/util/List;

    new-instance v10, Lhqn;

    const/16 v11, 0x12

    invoke-direct {v10, v7, v6, v11}, Lhqn;-><init>(Landroid/hardware/display/DisplayManager;Lige;I)V

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v6, v0, Lifu;->a:Lige;

    iput-object v1, v6, Lige;->i:Landroid/view/View;

    new-instance v4, Landroid/widget/PopupWindow;

    invoke-direct {v4, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v4, v6, Lige;->f:Landroid/widget/PopupWindow;

    invoke-virtual {v6, p2}, Lige;->addView(Landroid/view/View;)V

    invoke-static {p3}, Lifu;->s(I)Z

    move-result v1

    if-eqz v1, :cond_3

    new-array v1, v9, [I

    invoke-virtual {v3, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static/range {p4 .. p4}, Lifu;->t(Landroid/view/View;)I

    move-result v7

    aget v1, v1, v8

    sub-int/2addr v4, v1

    sub-int/2addr v4, v7

    if-le v1, v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    if-ne v1, v2, :cond_1

    goto :goto_2

    :cond_1
    if-ne v2, v8, :cond_2

    const/4 v1, 0x2

    goto :goto_3

    :cond_2
    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    invoke-static/range {p3 .. p4}, Lifu;->r(ILandroid/view/View;)I

    move-result v1

    new-array v4, v9, [I

    invoke-virtual {v3, v4}, Landroid/view/View;->getLocationInWindow([I)V

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static/range {p4 .. p4}, Lifu;->u(Landroid/view/View;)I

    move-result v9

    aget v4, v4, v5

    sub-int/2addr v7, v4

    sub-int/2addr v7, v9

    if-le v4, v7, :cond_4

    const/4 v4, 0x5

    goto :goto_1

    :cond_4
    const/4 v4, 0x6

    :goto_1
    if-eq v4, v1, :cond_5

    const/4 v1, 0x3

    if-ne v2, v1, :cond_6

    const/4 v1, 0x4

    goto :goto_3

    :cond_5
    :goto_2
    move v1, v2

    :cond_6
    :goto_3
    move/from16 v2, p8

    iput v2, v0, Lifu;->d:I

    move/from16 v2, p9

    iput v2, v0, Lifu;->l:I

    iput-object v3, v0, Lifu;->e:Landroid/view/View;

    move/from16 v2, p10

    iput-boolean v2, v0, Lifu;->f:Z

    move/from16 v2, p11

    iput-boolean v2, v0, Lifu;->g:Z

    move-object v2, p1

    iput-object v2, v0, Lifu;->i:Ligb;

    iput-object v3, v6, Lige;->k:Landroid/view/View;

    iget-object v2, v6, Lige;->k:Landroid/view/View;

    if-eqz v2, :cond_7

    iget-object v3, v6, Lige;->a:[I

    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v4, Landroid/graphics/Rect;

    aget v5, v3, v5

    aget v7, v3, v8

    invoke-static {v2}, Lifu;->u(Landroid/view/View;)I

    move-result v9

    add-int/2addr v9, v5

    aget v3, v3, v8

    invoke-static {v2}, Lifu;->t(Landroid/view/View;)I

    move-result v2

    add-int/2addr v3, v2

    invoke-direct {v4, v5, v7, v9, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, v6, Lige;->l:Landroid/graphics/Rect;

    :cond_7
    iput v1, v6, Lige;->j:I

    move/from16 v1, p5

    iput v1, v6, Lige;->m:I

    move/from16 v1, p6

    iput v1, v6, Lige;->n:I

    move/from16 v1, p7

    iput v1, v6, Lige;->o:I

    invoke-virtual {v6}, Lige;->a()I

    return-void
.end method

.method static r(ILandroid/view/View;)I
    .locals 3

    invoke-static {p1}, Lafc;->c(Landroid/view/View;)I

    move-result p1

    const/4 v0, 0x5

    const/4 v1, 0x6

    const/4 v2, 0x1

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_0
    if-eq p1, v2, :cond_0

    return v1

    :cond_0
    return v0

    :pswitch_1
    if-eq p1, v2, :cond_1

    return v0

    :cond_1
    return v1

    :pswitch_2
    const/4 p0, 0x2

    return p0

    :pswitch_3
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static s(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method private static t(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0, v0, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method private static u(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0, v0, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    return p0

    :cond_0
    return v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lifu;->d:I

    return v0
.end method

.method public final b()Lelm;
    .locals 1

    sget-object v0, Lelm;->b:Lelm;

    return-object v0
.end method

.method public final synthetic c()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lfcr;->f()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 2

    iget-boolean v0, p0, Lifu;->k:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lifu;->k:Z

    iget-object v0, p0, Lifu;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lifu;->a:Lige;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lige;->b(Z)V

    iget-object v0, p0, Lifu;->a:Lige;

    invoke-virtual {v0}, Lige;->close()V

    return-void
.end method

.method public final synthetic d()Ljava/lang/Runnable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final e()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lifu;->j:Ljava/util/Date;

    return-object v0
.end method

.method public final f(Ljava/lang/Runnable;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Unsupported Operation delayedHide(Runnable) in: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lifu;->a:Lige;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lige;->b(Z)V

    iget-object v0, p0, Lifu;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lifu;->i:Ligb;

    invoke-interface {v0}, Ligb;->a()V

    :cond_0
    return-void
.end method

.method public final synthetic h()V
    .locals 0

    return-void
.end method

.method public final i(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lifu;->j:Ljava/util/Date;

    return-void
.end method

.method public final j()V
    .locals 8

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lifu;->e:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v1, p0, Lifu;->a:Lige;

    iput-object v0, v1, Lige;->l:Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lige;->setVisibility(I)V

    iget-object v2, v1, Lige;->f:Landroid/widget/PopupWindow;

    iget-object v3, v1, Lige;->k:Landroid/view/View;

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    new-instance v0, Landroid/transition/Fade;

    invoke-direct {v0}, Landroid/transition/Fade;-><init>()V

    iget-wide v4, v1, Lige;->s:J

    invoke-virtual {v0, v4, v5}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    new-instance v4, Lakf;

    invoke-direct {v4}, Lakf;-><init>()V

    invoke-virtual {v0, v4}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    iget-wide v4, v1, Lige;->r:J

    invoke-virtual {v0, v4, v5}, Landroid/transition/Transition;->setStartDelay(J)Landroid/transition/Transition;

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, ""

    invoke-direct {v0, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v0, v1, Lige;->g:Z

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    new-instance v0, Lclb;

    const/16 v4, 0x12

    invoke-direct {v0, v1, v4}, Lclb;-><init>(Lige;I)V

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Ldar;

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Ldar;-><init>(Lige;I)V

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lhqn;

    const/16 v4, 0x10

    invoke-direct {v2, v1, v0, v4}, Lhqn;-><init>(Lige;Ljava/lang/ref/WeakReference;I)V

    invoke-virtual {v3, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    new-instance v2, Lhqn;

    const/16 v4, 0x11

    invoke-direct {v2, v1, v0, v4}, Lhqn;-><init>(Lige;Ljava/lang/ref/WeakReference;I)V

    iget-wide v0, v1, Lige;->r:J

    invoke-virtual {v3, v2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object v0, p0, Lifu;->b:Ljava/util/List;

    iget-object v1, p0, Lifu;->a:Lige;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lift;

    iget-wide v3, v2, Lift;->a:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    iget-object v3, v2, Lift;->c:Ljava/lang/Object;

    iget-object v2, v2, Lift;->b:Ljava/lang/Object;

    invoke-interface {v3, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    new-instance v5, Lhqn;

    const/16 v6, 0xb

    invoke-direct {v5, v1, v2, v6}, Lhqn;-><init>(Lige;Lift;I)V

    invoke-virtual {v1, v5, v3, v4}, Lige;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lifu;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final synthetic k()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final l()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final m()Z
    .locals 1

    iget-boolean v0, p0, Lifu;->g:Z

    return v0
.end method

.method public final n()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final o()Z
    .locals 1

    iget-boolean v0, p0, Lifu;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final p()I
    .locals 1

    iget v0, p0, Lifu;->l:I

    return v0
.end method

.method public final synthetic q(IZZLiko;Lhyn;)V
    .locals 0

    return-void
.end method
