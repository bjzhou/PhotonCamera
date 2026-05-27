.class public Lcom/google/android/apps/camera/ui/views/MainActivityLayout;
.super Lcom/google/android/apps/camera/ui/layout/GcaLayout;

# interfaces
.implements Lfaz;
.implements Lfat;


# static fields
.field private static final v:Lnak;


# instance fields
.field private A:Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;

.field private B:Lcom/google/android/apps/camera/ui/views/CutoutBar;

.field private C:Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;

.field private D:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;

.field private E:Lcom/google/android/apps/camera/ui/views/GradientBar;

.field private F:Z

.field private G:Liko;

.field private H:Landroid/view/View;

.field public final c:Ljava/util/Map;

.field public d:Lcom/google/android/apps/camera/ui/mars/MarsSwitch;

.field public e:Lhzo;

.field public f:Lcom/google/android/apps/camera/optionsbar/view/TimerWidget;

.field public g:Lczq;

.field public final h:Lmqp;

.field public i:Lmqp;

.field public j:Lmqp;

.field public k:Lmqp;

.field public l:Lmqp;

.field public m:Lmqp;

.field public n:Ljava/util/concurrent/atomic/AtomicReference;

.field public o:Ljwb;

.field public p:Ldhi;

.field public q:Lezx;

.field public r:Lkog;

.field public s:Ljvs;

.field public t:Ljwb;

.field public u:Lhmd;

.field private final w:Ljava/util/Set;

.field private final x:Ljava/util/Set;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private y:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

.field private z:Lcom/google/android/apps/camera/ui/breadcrumbs/BreadcrumbsView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/ui/views/MainActivityLayout"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->v:Lnak;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/camera/ui/layout/GcaLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {}, Lmjy;->C()Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->w:Ljava/util/Set;

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->x:Ljava/util/Set;

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->c:Ljava/util/Map;

    sget-object p2, Lmpx;->a:Lmpx;

    iput-object p2, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->h:Lmqp;

    iput-object p2, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->i:Lmqp;

    iput-object p2, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->j:Lmqp;

    iput-object p2, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->k:Lmqp;

    iput-object p2, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->l:Lmqp;

    iput-object p2, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->m:Lmqp;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->H:Landroid/view/View;

    check-cast p1, Lemk;

    const-class p2, Liib;

    invoke-interface {p1, p2}, Lemk;->b(Ljava/lang/Class;)Leml;

    move-result-object p1

    check-cast p1, Liib;

    invoke-interface {p1, p0}, Liib;->b(Lcom/google/android/apps/camera/ui/views/MainActivityLayout;)V

    iget-object p1, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->q:Lezx;

    invoke-virtual {p1, p0}, Lfak;->e(Lfaz;)V

    return-void
.end method

.method private final A()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->F:Z

    new-instance v0, Licv;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Licv;-><init>(Lcom/google/android/apps/camera/ui/views/MainActivityLayout;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final B(Lhys;)Z
    .locals 10

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyt;

    iget-object v0, v0, Lhyt;->a:Lhys;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->F:Z

    if-nez v0, :cond_1

    return v1

    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->F:Z

    invoke-virtual {p1}, Lhys;->a()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lhyq;->a:Lhyq;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyt;

    iget-object v0, v0, Lhyt;->b:Lhyq;

    :goto_1
    iget-object v3, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    move-object v3, v2

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhyt;

    iget-object v3, v3, Lhyt;->d:Lhyw;

    :goto_2
    iget-object v4, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1, v0, v2, v3}, Lhyt;->a(Lhys;Lhyq;Lhyx;Lhyw;)Lhyt;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->A()V

    return v1

    :cond_4
    const-string v0, "updateLayoutBoxes"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p1, Lhys;->i:Lhyn;

    sget-object v1, Lhyn;->c:Lhyn;

    invoke-virtual {v0, v1}, Lhyn;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->u:Lhmd;

    new-instance v4, Ldet;

    const/4 v5, 0x7

    invoke-direct {v4, p0, v5}, Ldet;-><init>(Lcom/google/android/apps/camera/ui/views/MainActivityLayout;I)V

    invoke-static {p1, v0, v1, v3, v4}, Lhyo;->d(Lhys;ZLandroid/content/Context;Lhmd;Lmrl;)Lhyq;

    move-result-object v0

    iget-boolean v1, v0, Lhyq;->r:Z

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->A()V

    :cond_5
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->H:Landroid/view/View;

    if-eqz v1, :cond_7

    iget-object v1, p1, Lhys;->i:Lhyn;

    sget-object v3, Lhyn;->c:Lhyn;

    invoke-virtual {v1, v3}, Lhyn;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Landroid/util/Size;

    iget-object v3, v0, Lhyq;->e:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, v0, Lhyq;->e:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/util/Size;-><init>(II)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    const/16 v5, 0x11

    invoke-static {v1, v3, v4, v5}, Lhyx;->a(Landroid/util/Size;Landroid/graphics/Rect;Landroid/graphics/Rect;I)Lhyx;

    move-result-object v1

    goto :goto_3

    :cond_6
    new-instance v1, Landroid/util/Size;

    iget-object v3, v0, Lhyq;->e:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, v0, Lhyq;->e:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/util/Size;-><init>(II)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    new-instance v4, Landroid/graphics/Rect;

    iget-object v5, v0, Lhyq;->e:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, v0, Lhyq;->e:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, v0, Lhyq;->b:Landroid/util/Size;

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v7

    iget-object v8, v0, Lhyq;->e:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    iget-object v8, v0, Lhyq;->b:Landroid/util/Size;

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v8

    iget-object v9, v0, Lhyq;->e:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v5, 0x33

    invoke-static {v1, v3, v4, v5}, Lhyx;->a(Landroid/util/Size;Landroid/graphics/Rect;Landroid/graphics/Rect;I)Lhyx;

    move-result-object v1

    goto :goto_3

    :cond_7
    move-object v1, v2

    :goto_3
    iget-object v3, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhyt;

    iget-object v3, v3, Lhyt;->b:Lhyq;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyt;

    iget-object v0, v0, Lhyt;->b:Lhyq;

    :cond_8
    iget-object v3, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhyt;

    iget-object v3, v3, Lhyt;->c:Lhyx;

    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v1, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhyt;

    iget-object v1, v1, Lhyt;->c:Lhyx;

    :cond_9
    iget-object v3, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_a

    goto :goto_4

    :cond_a
    iget-object v2, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhyt;

    iget-object v2, v2, Lhyt;->d:Lhyw;

    :goto_4
    iget-object v3, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1, v0, v1, v2}, Lhyt;->a(Lhys;Lhyq;Lhyx;Lhyw;)Lhyt;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    const/4 p1, 0x1

    return p1
.end method

.method public static final r(Lhys;Lhyi;Lhyh;)V
    .locals 2

    iget-object v0, p0, Lhys;->g:Liko;

    iget-object v1, p0, Lhys;->i:Lhyn;

    invoke-static {v0, v1, p2}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->y(Liko;Lhyn;Lhyh;)Liko;

    move-result-object p2

    invoke-interface {p1, p2}, Lhyi;->onLayoutUpdated(Liko;)V

    iget-object p0, p0, Lhys;->i:Lhyn;

    invoke-interface {p1, p0, p2}, Lhyi;->onLayoutUpdated(Lhyn;Liko;)V

    return-void
.end method

.method private final u(Landroid/content/Context;Landroid/view/Display;Lhyn;II)Liko;
    .locals 3

    sget-object v0, Lhyn;->c:Lhyn;

    invoke-virtual {p3, v0}, Lhyn;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    sget-object p1, Liko;->a:Liko;

    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v1, 0x1

    if-le p3, v0, :cond_2

    if-gt p5, p4, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v2, 0x0

    if-ge p3, v0, :cond_3

    if-ge p5, p4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-static {p2, p1}, Liko;->b(Landroid/view/Display;Landroid/content/Context;)Liko;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->G:Liko;

    if-nez p2, :cond_4

    iput-object p1, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->G:Liko;

    :cond_4
    if-eqz v1, :cond_5

    iput-object p1, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->G:Liko;

    return-object p1

    :cond_5
    iget-object p1, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->G:Liko;

    return-object p1
.end method

.method private final v(Liko;Lhyn;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->x:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Likj;

    invoke-interface {v1, p1, p2}, Likj;->q(Liko;Lhyn;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final w(Lhyn;Liko;Z)Liko;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lhyn;->a:Lhyn;

    invoke-virtual {p0, v0}, Lhyn;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lhyn;->e:Lhyn;

    invoke-virtual {p0, v0}, Lhyn;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    sget-object p1, Liko;->a:Liko;

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p1}, Liko;->d()Liko;

    move-result-object p0

    return-object p0

    :cond_2
    return-object p1
.end method

.method private final x(Landroid/util/Size;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->q(Landroid/util/Size;Ljava/lang/Integer;)V

    return-void
.end method

.method private static final y(Liko;Lhyn;Lhyh;)Liko;
    .locals 1

    sget-object v0, Lhyn;->a:Lhyn;

    sget-object v0, Lhyh;->a:Lhyh;

    invoke-virtual {p1}, Lhyn;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Unexpected CameraLayoutDecision: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-static {p0}, Liko;->e(Liko;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Liko;->a:Liko;

    return-object p0

    :pswitch_1
    sget-object p0, Liko;->a:Liko;

    return-object p0

    :pswitch_2
    return-object p0

    :goto_0
    :pswitch_3
    invoke-virtual {p2}, Lhyh;->ordinal()I

    move-result p0

    packed-switch p0, :pswitch_data_1

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Unexpected LayoutTransform: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_4
    sget-object p0, Liko;->b:Liko;

    return-object p0

    :pswitch_5
    sget-object p0, Liko;->c:Liko;

    return-object p0

    :pswitch_6
    sget-object p0, Liko;->a:Liko;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private static final z(Lhyn;Liko;)Liko;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->w(Lhyn;Liko;Z)Liko;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Lhys;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lhys;->a:Lhys;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyt;

    iget-object v0, v0, Lhyt;->a:Lhys;

    :goto_0
    return-object v0
.end method

.method public final bM()V
    .locals 0

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public final c(Likj;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->x:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->a()Lhys;

    move-result-object v0

    iget-object v0, v0, Lhys;->i:Lhyn;

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->a()Lhys;

    move-result-object v1

    iget-object v1, v1, Lhys;->g:Liko;

    invoke-static {v0, v1}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->z(Lhyn;Liko;)Liko;

    move-result-object v0

    sget-object v1, Liko;->a:Liko;

    invoke-virtual {v1, v0}, Liko;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lgwr;

    const/16 v2, 0xe

    invoke-direct {v1, p0, p1, v0, v2}, Lgwr;-><init>(Lcom/google/android/apps/camera/ui/views/MainActivityLayout;Likj;Liko;I)V

    invoke-virtual {p0, v1}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final d(Lhyi;Lhyh;)V
    .locals 1

    invoke-static {}, Ljuh;->a()V

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    :try_start_0
    const-string v0, "MAL.dispatchApplyWindowInsets"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/google/android/apps/camera/ui/layout/GcaLayout;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p1
.end method

.method public final dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const-string v0, "MAL.dispatchConfigurationChanged"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Loxq;->j(Landroid/content/Context;)V

    invoke-super {p0, p1}, Lcom/google/android/apps/camera/ui/layout/GcaLayout;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {}, Loxq;->k()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->H:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->H:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method public final f(Landroid/view/View;)V
    .locals 4

    iput-object p1, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->H:Landroid/view/View;

    iget-object p1, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lhyt;

    iget-object p1, p1, Lhyt;->b:Lhyq;

    sget-object v0, Lhys;->a:Lhys;

    invoke-virtual {v0}, Lhys;->b()Lhyr;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->a()Lhys;

    move-result-object v1

    iget-object v1, v1, Lhys;->e:Ljava/lang/Integer;

    iput-object v1, v0, Lhyr;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Lhyr;->a()Lhys;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhyt;

    iget-object v2, v2, Lhyt;->d:Lhyw;

    const/4 v3, 0x0

    invoke-static {v0, p1, v3, v2}, Lhyt;->a(Lhys;Lhyq;Lhyx;Lhyw;)Lhyt;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->invalidate()V

    return-void
.end method

.method public final g(IILjava/lang/Integer;)V
    .locals 1

    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p1, p2}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {p0, v0, p3}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->q(Landroid/util/Size;Ljava/lang/Integer;)V

    return-void
.end method

.method public final h()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->a()Lhys;

    move-result-object v0

    iget-object v0, v0, Lhys;->b:Landroid/util/Size;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->x(Landroid/util/Size;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-instance v2, Landroid/util/Size;

    invoke-direct {v2, v1, v0}, Landroid/util/Size;-><init>(II)V

    invoke-direct {p0, v2}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->x(Landroid/util/Size;)V

    return-void
.end method

.method public final i(Lhyn;Liko;Lika;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->l:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->l:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldol;

    sget-object v1, Lhyn;->d:Lhyn;

    invoke-virtual {p1, v1}, Lhyn;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {p1, p2, v1}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->w(Lhyn;Liko;Z)Liko;

    move-result-object p2

    invoke-interface {v0, p2}, Ldol;->o(Liko;)V

    invoke-interface {v0, p1, p3}, Ldol;->r(Lhyn;Lika;)V

    :cond_0
    return-void
.end method

.method public final j(Lhyn;Liko;Lika;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->k:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->k:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lire;

    sget-object v1, Lhyn;->d:Lhyn;

    invoke-virtual {p1, v1}, Lhyn;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {p1, p2, v1}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->w(Lhyn;Liko;Z)Liko;

    move-result-object p2

    invoke-interface {v0, p2, p1}, Lire;->g(Liko;Lhyn;)V

    iget-object p2, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->k:Lmqp;

    invoke-virtual {p2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lire;

    invoke-interface {p2, p1, p3}, Lire;->k(Lhyn;Lika;)V

    :cond_0
    return-void
.end method

.method public final k(Lhyn;Liko;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->d:Lcom/google/android/apps/camera/ui/mars/MarsSwitch;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p1, p2}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->z(Lhyn;Liko;)Liko;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/ui/mars/MarsSwitch;->b(Liko;)V

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->e:Lhzo;

    sget-object v1, Lhyh;->c:Lhyh;

    invoke-static {p2, p1, v1}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->y(Liko;Lhyn;Lhyh;)Liko;

    move-result-object p1

    iget-object p2, v0, Lhzo;->c:Ldhi;

    sget-object v1, Ldho;->cm:Ldhj;

    invoke-interface {p2, v1}, Ldhi;->l(Ldhj;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, v0, Lhzo;->m:Licy;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Licy;->g(Liko;)V

    :cond_0
    return-void
.end method

.method public final l(Lhyn;Liko;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->g:Lczq;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    sget-object v1, Lhyn;->d:Lhyn;

    invoke-virtual {p1, v1}, Lhyn;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {p1, p2, v1}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->w(Lhyn;Liko;Z)Liko;

    move-result-object p1

    invoke-interface {v0, p1}, Lczq;->g(Liko;)V

    :cond_0
    return-void
.end method

.method public final m(Lhyn;Liko;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->m:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    sget-object v0, Lhyn;->d:Lhyn;

    invoke-virtual {v0, p1}, Lhyn;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Liko;->d()Liko;

    move-result-object p2

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->m:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leqi;

    invoke-static {p1, p2}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->z(Lhyn;Liko;)Liko;

    move-result-object p1

    invoke-interface {v0, p1}, Leqi;->b(Liko;)V

    :cond_1
    return-void
.end method

.method public final n()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->a()Lhys;

    return-void
.end method

.method public final o(Lhyn;Liko;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->j:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->j:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldal;

    sget-object v1, Lhyn;->d:Lhyn;

    invoke-virtual {p1, v1}, Lhyn;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {p1, p2, v1}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->w(Lhyn;Liko;Z)Liko;

    move-result-object v1

    invoke-interface {v0, v1}, Ldal;->l(Liko;)V

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->j:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldal;

    invoke-interface {v0, p1, p2}, Ldal;->k(Lhyn;Liko;)V

    :cond_0
    return-void
.end method

.method protected final onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/google/android/apps/camera/ui/layout/GcaLayout;->onFinishInflate()V

    const v0, 0x7f0b0175

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/ui/views/GradientBar;

    iput-object v0, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->E:Lcom/google/android/apps/camera/ui/views/GradientBar;

    const v0, 0x7f0b00fa

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/ui/views/CutoutBar;

    iput-object v0, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->B:Lcom/google/android/apps/camera/ui/views/CutoutBar;

    const v0, 0x7f0b0169

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;

    iput-object v0, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->A:Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;

    const v0, 0x7f0b0236

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    iput-object v0, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->y:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    const v0, 0x7f0b0097

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/ui/breadcrumbs/BreadcrumbsView;

    iput-object v0, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->z:Lcom/google/android/apps/camera/ui/breadcrumbs/BreadcrumbsView;

    const v0, 0x7f0b023c

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;

    iput-object v0, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->C:Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;

    const v0, 0x7f0b0271

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;

    iput-object v0, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->D:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;

    const v0, 0x7f0b0087

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lhyi;

    sget-object v1, Lhyh;->c:Lhyh;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->d(Lhyi;Lhyh;)V

    new-instance v0, Liia;

    invoke-direct {v0, p0}, Liia;-><init>(Lcom/google/android/apps/camera/ui/views/MainActivityLayout;)V

    sget-object v1, Lhyh;->b:Lhyh;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->d(Lhyi;Lhyh;)V

    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->w:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljvd;

    invoke-static {p1}, Ljvd;->M(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ligo;

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->getRootView()Landroid/view/View;

    move-result-object v6

    invoke-direct {v5, p1, v6}, Ligo;-><init>(Landroid/view/MotionEvent;Landroid/view/View;)V

    invoke-virtual {v3, v5}, Ljvd;->a(Ligo;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget-object v6, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    iget-object v6, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lhyt;

    iget-object v6, v6, Lhyt;->b:Lhyq;

    iget-object v6, v6, Lhyq;->i:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    cmpl-float v7, v3, v7

    if-lez v7, :cond_2

    iget v7, v6, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    cmpg-float v3, v3, v7

    if-gez v3, :cond_2

    iget v3, v6, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    cmpl-float v3, v5, v3

    if-lez v3, :cond_2

    iget v3, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    cmpg-float v3, v5, v3

    if-gez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    xor-int/2addr v3, v4

    or-int/2addr v2, v3

    goto :goto_0

    :cond_3
    if-nez v2, :cond_5

    invoke-super {p0, p1}, Lcom/google/android/apps/camera/ui/layout/GcaLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    return v1

    :cond_5
    :goto_2
    return v4
.end method

.method protected final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/google/android/apps/camera/ui/layout/GcaLayout;->onLayout(ZIIII)V

    invoke-static {}, Loxq;->k()V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 8

    const-string v0, "MAL.onMeasurePrologue"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Loxq;->j(Landroid/content/Context;)V

    new-instance v0, Landroid/util/Size;

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-direct {v0, v1, v3}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->getDisplay()Landroid/view/Display;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->p:Ldhi;

    iget-object v5, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->o:Ljwb;

    invoke-interface {v5}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lika;

    iget-object v6, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->s:Ljvs;

    invoke-interface {v6}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lhxi;

    iget-object v6, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->r:Lkog;

    invoke-static {v1, v3, v4, v5, v6}, Ljji;->o(Landroid/content/Context;Landroid/view/Display;Ldhi;Lika;Lkog;)Lhyn;

    move-result-object v7

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v6

    move-object v1, p0

    move-object v4, v7

    invoke-direct/range {v1 .. v6}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->u(Landroid/content/Context;Landroid/view/Display;Lhyn;II)Liko;

    move-result-object v1

    sget-object v2, Lhyn;->d:Lhyn;

    invoke-virtual {v7, v2}, Lhyn;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Liko;->b:Liko;

    invoke-virtual {v1, v2}, Liko;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->getDisplay()Landroid/view/Display;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->r:Lkog;

    invoke-static {v2, v3, v4}, Ljji;->l(Landroid/content/Context;Landroid/view/Display;Lkog;)Lhyn;

    move-result-object v7

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->a()Lhys;

    move-result-object v2

    iget-object v3, v2, Lhys;->c:Landroid/util/Size;

    iget-object v4, v2, Lhys;->e:Ljava/lang/Integer;

    invoke-virtual {v2}, Lhys;->b()Lhyr;

    move-result-object v2

    invoke-virtual {v2, v1}, Lhyr;->f(Liko;)V

    iput-object v0, v2, Lhyr;->a:Landroid/util/Size;

    iget-object v1, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->o:Ljwb;

    invoke-interface {v1}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lika;

    invoke-virtual {v2, v1}, Lhyr;->e(Lika;)V

    invoke-static {p0}, Likp;->d(Landroid/view/View;)Z

    move-result v1

    invoke-virtual {v2, v1}, Lhyr;->c(Z)V

    if-eqz v3, :cond_1

    move-object v0, v3

    :cond_1
    iput-object v0, v2, Lhyr;->b:Landroid/util/Size;

    invoke-virtual {v2, v7}, Lhyr;->b(Lhyn;)V

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_2
    const/16 v0, 0x5a

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lhyr;->c:Ljava/lang/Integer;

    invoke-virtual {v2}, Lhyr;->a()Lhys;

    move-result-object v0

    invoke-virtual {v0}, Lhys;->a()Z

    move-result v1

    invoke-static {v1}, Llkj;->x(Z)V

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->B(Lhys;)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, v0, Lhys;->g:Liko;

    sget-object v2, Lhyn;->d:Lhyn;

    invoke-virtual {v7, v2}, Lhyn;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v7, v1, v2}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->w(Lhyn;Liko;Z)Liko;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->y:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    iget-object v3, v2, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->g:Liko;

    if-eq v3, v1, :cond_3

    iput-object v1, v2, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->g:Liko;

    invoke-virtual {v2}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->d()V

    :cond_3
    iget-object v2, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->C:Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;

    iput-object v1, v2, Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;->c:Liko;

    invoke-virtual {v2}, Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;->c()V

    iget-object v1, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->z:Lcom/google/android/apps/camera/ui/breadcrumbs/BreadcrumbsView;

    iget-object v2, v0, Lhys;->g:Liko;

    invoke-static {v7, v2}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->z(Lhyn;Liko;)Liko;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/apps/camera/ui/breadcrumbs/BreadcrumbsView;->a:Liko;

    if-eq v3, v2, :cond_4

    iput-object v2, v1, Lcom/google/android/apps/camera/ui/breadcrumbs/BreadcrumbsView;->a:Liko;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/ui/breadcrumbs/BreadcrumbsView;->a()V

    :cond_4
    iget-object v1, v0, Lhys;->g:Liko;

    iget-object v2, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->D:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;

    const/4 v3, 0x0

    if-eqz v2, :cond_a

    if-eqz v7, :cond_a

    if-nez v1, :cond_5

    goto/16 :goto_3

    :cond_5
    invoke-static {v7}, Ljji;->m(Lhyn;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {v1}, Liko;->e(Liko;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhyt;

    iget-object v2, v2, Lhyt;->b:Lhyq;

    iget-object v2, v2, Lhyq;->e:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lhyt;

    iget-object v4, v4, Lhyt;->b:Lhyq;

    iget-object v4, v4, Lhyq;->d:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    goto :goto_1

    :cond_6
    sget-object v2, Liko;->b:Liko;

    if-ne v1, v2, :cond_7

    iget-object v2, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhyt;

    iget-object v2, v2, Lhyt;->b:Lhyq;

    iget-object v2, v2, Lhyq;->e:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lhyt;

    iget-object v4, v4, Lhyt;->b:Lhyq;

    iget-object v4, v4, Lhyq;->d:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :cond_7
    iget-object v2, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhyt;

    iget-object v2, v2, Lhyt;->b:Lhyq;

    iget-object v2, v2, Lhyq;->b:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v4, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lhyt;

    iget-object v4, v4, Lhyt;->b:Lhyq;

    iget-object v4, v4, Lhyq;->e:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v4

    iget-object v4, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lhyt;

    iget-object v4, v4, Lhyt;->b:Lhyq;

    iget-object v4, v4, Lhyq;->b:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lhyt;

    iget-object v5, v5, Lhyt;->b:Lhyq;

    iget-object v5, v5, Lhyq;->d:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    :goto_1
    sub-int/2addr v2, v4

    goto :goto_2

    :cond_8
    const/4 v2, 0x0

    :goto_2
    iget-object v4, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->D:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;

    sget-object v5, Lhyn;->d:Lhyn;

    invoke-virtual {v7, v5}, Lhyn;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v7, v1, v5}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->w(Lhyn;Liko;Z)Liko;

    move-result-object v1

    iput-object v7, v4, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->c:Lhyn;

    iput-object v1, v4, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->b:Liko;

    iput v2, v4, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->a:I

    invoke-virtual {v4}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->g()V

    sget-object v1, Lhyn;->d:Lhyn;

    invoke-virtual {v7, v1}, Lhyn;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->D:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;

    iget-object v1, v1, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->j:Landroid/view/GestureDetector;

    if-eqz v1, :cond_a

    new-instance v2, Lclb;

    const/16 v4, 0x13

    invoke-direct {v2, v1, v4}, Lclb;-><init>(Landroid/view/GestureDetector;I)V

    invoke-virtual {p0, v2}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_3

    :cond_9
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_a
    :goto_3
    iget-object v1, v0, Lhys;->g:Liko;

    invoke-virtual {p0, v7, v1}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->l(Lhyn;Liko;)V

    iget-object v1, v0, Lhys;->g:Liko;

    invoke-virtual {p0, v7, v1}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->o(Lhyn;Liko;)V

    iget-object v1, v0, Lhys;->g:Liko;

    invoke-virtual {p0, v7, v1}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->m(Lhyn;Liko;)V

    iget-object v1, v0, Lhys;->g:Liko;

    invoke-virtual {p0, v7, v1}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->k(Lhyn;Liko;)V

    iget-object v1, v0, Lhys;->g:Liko;

    iget-object v2, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->o:Ljwb;

    invoke-interface {v2}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lika;

    invoke-virtual {p0, v7, v1, v2}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->i(Lhyn;Liko;Lika;)V

    iget-object v1, v0, Lhys;->g:Liko;

    iget-object v2, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->o:Ljwb;

    invoke-interface {v2}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lika;

    invoke-virtual {p0, v7, v1, v2}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->j(Lhyn;Liko;Lika;)V

    iget-object v1, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->E:Lcom/google/android/apps/camera/ui/views/GradientBar;

    iget-object v2, v0, Lhys;->i:Lhyn;

    iget-object v4, v0, Lhys;->g:Liko;

    sget-object v5, Lhyn;->d:Lhyn;

    invoke-virtual {v2, v5}, Lhyn;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v2, v4, v5}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->w(Lhyn;Liko;Z)Liko;

    move-result-object v2

    iget-object v4, v1, Lcom/google/android/apps/camera/ui/views/GradientBar;->a:Liko;

    if-eq v4, v2, :cond_b

    iput-object v2, v1, Lcom/google/android/apps/camera/ui/views/GradientBar;->a:Liko;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/ui/views/GradientBar;->a()V

    :cond_b
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->a()Lhys;

    move-result-object v1

    iget-object v1, v1, Lhys;->i:Lhyn;

    iget-object v2, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->B:Lcom/google/android/apps/camera/ui/views/CutoutBar;

    sget-object v4, Lhyn;->b:Lhyn;

    if-eq v1, v4, :cond_d

    sget-object v4, Lhyn;->c:Lhyn;

    if-ne v1, v4, :cond_c

    const/4 v1, 0x0

    goto :goto_4

    :cond_c
    const/16 v1, 0x8

    goto :goto_4

    :cond_d
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v2, v1}, Lcom/google/android/apps/camera/ui/views/CutoutBar;->setVisibility(I)V

    iget-object v1, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->B:Lcom/google/android/apps/camera/ui/views/CutoutBar;

    iget-object v2, v0, Lhys;->g:Liko;

    iget-object v4, v1, Lcom/google/android/apps/camera/ui/views/CutoutBar;->g:Liko;

    if-eq v4, v2, :cond_e

    iput-object v2, v1, Lcom/google/android/apps/camera/ui/views/CutoutBar;->g:Liko;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/ui/views/CutoutBar;->a()V

    :cond_e
    invoke-static {v1}, Likp;->e(Landroid/view/View;)[I

    move-result-object v4

    invoke-static {v2}, Liko;->e(Liko;)Z

    move-result v2

    const/4 v5, 0x1

    if-eqz v2, :cond_f

    aget v2, v4, v3

    int-to-float v2, v2

    iput v2, v1, Lcom/google/android/apps/camera/ui/views/CutoutBar;->d:F

    aget v2, v4, v5

    int-to-float v2, v2

    iput v2, v1, Lcom/google/android/apps/camera/ui/views/CutoutBar;->e:F

    goto :goto_5

    :cond_f
    aget v2, v4, v5

    int-to-float v2, v2

    iput v2, v1, Lcom/google/android/apps/camera/ui/views/CutoutBar;->d:F

    aget v2, v4, v3

    int-to-float v2, v2

    iput v2, v1, Lcom/google/android/apps/camera/ui/views/CutoutBar;->e:F

    :goto_5
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->A:Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;

    iget-object v2, v0, Lhys;->g:Liko;

    iget-object v4, v1, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->p:Liko;

    if-eq v4, v2, :cond_10

    iput-object v2, v1, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->p:Liko;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->a()V

    :cond_10
    invoke-static {v1}, Likp;->e(Landroid/view/View;)[I

    move-result-object v4

    invoke-static {v2}, Liko;->e(Liko;)Z

    move-result v2

    if-eqz v2, :cond_11

    aget v2, v4, v3

    int-to-float v2, v2

    iput v2, v1, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->k:F

    aget v2, v4, v5

    int-to-float v2, v2

    iput v2, v1, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->l:F

    goto :goto_6

    :cond_11
    aget v2, v4, v5

    int-to-float v2, v2

    iput v2, v1, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->k:F

    aget v2, v4, v3

    int-to-float v2, v2

    iput v2, v1, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->l:F

    :goto_6
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->n()V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->p()V

    iget-object v1, v0, Lhys;->i:Lhyn;

    iget-object v2, v0, Lhys;->g:Liko;

    invoke-static {v1, v2}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->z(Lhyn;Liko;)Liko;

    move-result-object v1

    iget-object v0, v0, Lhys;->i:Lhyn;

    invoke-direct {p0, v1, v0}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->v(Liko;Lhyn;)V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->t:Ljwb;

    check-cast v1, Ljvk;

    iget-object v1, v1, Ljvk;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, v0, :cond_12

    iget-object v1, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->t:Ljwb;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v0}, Ljwb;->bn(Ljava/lang/Object;)V

    :cond_12
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->a()Lhys;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhyi;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhyh;

    invoke-static {v0, v3, v2}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->r(Lhys;Lhyi;Lhyh;)V

    goto :goto_7

    :cond_13
    invoke-static {}, Landroid/os/Trace;->endSection()V

    invoke-super {p0, p1, p2}, Lcom/google/android/apps/camera/ui/layout/GcaLayout;->onMeasure(II)V

    return-void
.end method

.method public final p()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->f:Lcom/google/android/apps/camera/optionsbar/view/TimerWidget;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->a()Lhys;

    move-result-object v0

    iget-object v0, v0, Lhys;->i:Lhyn;

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->a()Lhys;

    move-result-object v1

    iget-object v1, v1, Lhys;->h:Lika;

    sget-object v2, Lhyn;->d:Lhyn;

    invoke-virtual {v0, v2}, Lhyn;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    sget-object v0, Lika;->g:Lika;

    invoke-virtual {v1, v0}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lika;->b:Lika;

    invoke-virtual {v1, v0}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lika;->m:Lika;

    invoke-virtual {v1, v0}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->f:Lcom/google/android/apps/camera/optionsbar/view/TimerWidget;

    if-eq v3, v0, :cond_3

    const/16 v2, 0x8

    goto :goto_1

    :cond_3
    :goto_1
    invoke-virtual {v1, v2}, Lcom/google/android/apps/camera/optionsbar/view/TimerWidget;->setVisibility(I)V

    return-void
.end method

.method public final q(Landroid/util/Size;Ljava/lang/Integer;)V
    .locals 8

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->v:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Display is null; not setting preview size."

    const/16 v2, 0x10a8

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    new-instance v0, Lgwr;

    const/16 v1, 0xf

    invoke-direct {v0, p0, p1, p2, v1}, Lgwr;-><init>(Lcom/google/android/apps/camera/ui/views/MainActivityLayout;Landroid/util/Size;Ljava/lang/Integer;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->a()Lhys;

    move-result-object v0

    iget-object v1, v0, Lhys;->b:Landroid/util/Size;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->getDisplay()Landroid/view/Display;

    move-result-object v4

    iget-object v5, v0, Lhys;->i:Lhyn;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v7

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->u(Landroid/content/Context;Landroid/view/Display;Lhyn;II)Liko;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lhys;->g:Liko;

    :goto_0
    invoke-virtual {v0}, Lhys;->b()Lhyr;

    move-result-object v2

    invoke-virtual {v2, v1}, Lhyr;->f(Liko;)V

    iput-object p1, v2, Lhyr;->b:Landroid/util/Size;

    if-nez p2, :cond_2

    iget-object p2, v0, Lhys;->e:Ljava/lang/Integer;

    :cond_2
    iput-object p2, v2, Lhyr;->c:Ljava/lang/Integer;

    invoke-virtual {v2}, Lhyr;->d()V

    invoke-virtual {v2}, Lhyr;->a()Lhys;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->B(Lhys;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->invalidate()V

    iget-object p2, p1, Lhys;->i:Lhyn;

    iget-object v0, p1, Lhys;->g:Liko;

    invoke-static {p2, v0}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->z(Lhyn;Liko;)Liko;

    move-result-object p2

    iget-object p1, p1, Lhys;->i:Lhyn;

    invoke-direct {p0, p2, p1}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->v(Liko;Lhyn;)V

    :cond_3
    iget-object p1, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->i:Lmqp;

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->i:Lmqp;

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/wear/ambient/AmbientMode$AmbientController;

    iget-object p1, p1, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    check-cast p1, Lert;

    iget-object p1, p1, Lert;->P:Lcom/google/android/apps/camera/ui/views/ViewfinderCover;

    iget-boolean p2, p1, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->h:Z

    if-eqz p2, :cond_4

    goto :goto_1

    :cond_4
    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->h:Z

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void

    :cond_5
    :goto_1
    return-void
.end method

.method public final s(Ljvd;)V
    .locals 1

    invoke-static {}, Ljuh;->a()V

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->w:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final t(Ljvd;)V
    .locals 1

    invoke-static {}, Ljuh;->a()V

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->w:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
