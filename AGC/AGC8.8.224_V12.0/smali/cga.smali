.class public final Lcga;
.super Ljava/lang/Object;

# interfaces
.implements Lcgi;


# static fields
.field public static final synthetic f:I

.field private static final g:Lnak;

.field private static final h:Ljava/lang/Object;

.field private static i:Lcgh;


# instance fields
.field public final a:Ljvs;

.field public final b:Z

.field public c:Landroid/widget/FrameLayout;

.field public d:Lcgn;

.field public final e:Landroidx/wear/ambient/AmbientMode$AmbientController;

.field private final j:Landroid/content/res/Resources;

.field private final k:Ljava/util/concurrent/Executor;

.field private final l:Loiw;

.field private final m:Lmqp;

.field private final n:Lgft;

.field private final o:Ljvs;

.field private final p:Ljvs;

.field private q:Lcgc;

.field private r:Ljzr;

.field private s:Lcgb;

.field private final t:Ldja;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/aizoom/AiZoomPreviewManagerImpl"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lcga;->g:Lnak;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcga;->h:Ljava/lang/Object;

    sget-object v0, Lcgh;->a:Lcgh;

    sput-object v0, Lcga;->i:Lcgh;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljvs;Loiw;Lcfy;Lgft;Ljvs;Ldja;Ljvs;Ldhi;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p10, Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-direct {p10, p0}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Lcga;)V

    iput-object p10, p0, Lcga;->e:Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p10

    iput-object p10, p0, Lcga;->j:Landroid/content/res/Resources;

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Lcga;->k:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcga;->a:Ljvs;

    iput-object p3, p0, Lcga;->l:Loiw;

    iput-object p5, p0, Lcga;->n:Lgft;

    iput-object p6, p0, Lcga;->o:Ljvs;

    iput-object p7, p0, Lcga;->t:Ldja;

    iput-object p8, p0, Lcga;->p:Ljvs;

    sget-object p1, Ldho;->bZ:Ldhj;

    invoke-interface {p9, p1}, Ldhi;->k(Ldhj;)Z

    move-result p1

    iput-boolean p1, p0, Lcga;->b:Z

    sget-object p1, Ldho;->ca:Ldhj;

    invoke-interface {p9, p1}, Ldhi;->k(Ldhj;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p4}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcga;->m:Lmqp;

    return-void

    :cond_0
    sget-object p1, Lmpx;->a:Lmpx;

    goto :goto_0
.end method

.method private final k(I)I
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcga;->j:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    float-to-int p1, p1

    return p1

    :catch_0
    move-exception v0

    sget-object v1, Lcga;->g:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    sget-object v2, Lnbk;->a:Lnbc;

    const-string v3, "BobaPreviewMgr"

    invoke-interface {v1, v2, v3}, Lnaz;->g(Lnbc;Ljava/lang/Object;)Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    invoke-interface {v1, v0}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v1, 0x5e

    invoke-interface {v0, v1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v1, "Dimension not found: %d"

    invoke-interface {v0, v1, p1}, Lnah;->p(Ljava/lang/String;I)V

    const/4 p1, 0x0

    return p1
.end method

.method private final declared-synchronized l()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcga;->m:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcga;->m:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcfy;

    invoke-virtual {v0}, Lcfy;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcga;->s:Lcgb;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcga;->d:Lcgn;

    if-eqz v1, :cond_1

    new-instance v1, Lcdw;

    const/16 v2, 0x8

    invoke-direct {v1, p0, v2}, Lcdw;-><init>(Lcga;I)V

    sget-object v2, Lnbk;->a:Lnbc;

    new-instance v2, Lcfz;

    const/4 v3, 0x3

    invoke-direct {v2, v0, v1, v3}, Lcfz;-><init>(Lcgb;Ljava/lang/Runnable;I)V

    iget-object v1, v0, Lcgb;->c:Ljava/util/concurrent/Executor;

    new-instance v3, Lcfz;

    const/4 v4, 0x4

    invoke-direct {v3, v0, v2, v4}, Lcfz;-><init>(Lcgb;Ljava/lang/Runnable;I)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final m(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcga;->k:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final declared-synchronized n()V
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcgn;

    iget-object v1, p0, Lcga;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcgn;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcga;->r:Ljzr;

    sget-object v2, Ljzr;->b:Ljzr;

    invoke-virtual {v1, v2}, Ljzr;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0705d4

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcga;->r:Ljzr;

    sget-object v2, Ljzr;->a:Ljzr;

    invoke-virtual {v1, v2}, Ljzr;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0705d5

    goto :goto_0

    :cond_1
    const v1, 0x7f0705d6

    :goto_0
    iget-object v2, p0, Lcga;->r:Ljzr;

    sget-object v3, Ljzr;->b:Ljzr;

    invoke-virtual {v2, v3}, Ljzr;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f0705c3

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcga;->r:Ljzr;

    sget-object v3, Ljzr;->a:Ljzr;

    invoke-virtual {v2, v3}, Ljzr;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x7f0705c4

    goto :goto_1

    :cond_3
    const v2, 0x7f0705c5

    :goto_1
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0, v1}, Lcga;->k(I)I

    move-result v1

    invoke-direct {p0, v2}, Lcga;->k(I)I

    move-result v2

    invoke-direct {v3, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x35

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const v1, 0x7f0705c9

    invoke-direct {p0, v1}, Lcga;->k(I)I

    move-result v1

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v0, v3}, Lcgn;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcgn;->setVisibility(I)V

    iget-object v1, v0, Lcgn;->b:Lcom/google/android/apps/camera/aizoom/previewpanel/PolyView;

    const v2, 0x7f0705d3

    invoke-direct {p0, v2}, Lcga;->k(I)I

    move-result v2

    iget-object v1, v1, Lcom/google/android/apps/camera/aizoom/previewpanel/PolyView;->a:Landroid/graphics/Paint;

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, v0, Lcgn;->b:Lcom/google/android/apps/camera/aizoom/previewpanel/PolyView;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    iget-object v1, v1, Lcom/google/android/apps/camera/aizoom/previewpanel/PolyView;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iput-object v0, p0, Lcga;->d:Lcgn;

    new-instance v1, Lcfz;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v0, v2}, Lcfz;-><init>(Lcga;Lcgn;I)V

    invoke-direct {p0, v1}, Lcga;->m(Ljava/lang/Runnable;)V

    new-instance v1, Lcgb;

    iget-object v2, p0, Lcga;->k:Ljava/util/concurrent/Executor;

    invoke-direct {v1, v0, v2}, Lcgb;-><init>(Lcgn;Ljava/util/concurrent/Executor;)V

    iput-object v1, p0, Lcga;->s:Lcgb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final o()V
    .locals 3

    iget-object v0, p0, Lcga;->m:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcge;

    invoke-direct {v0}, Lcge;-><init>()V

    iget-object v1, p0, Lcga;->r:Ljzr;

    iput-object v1, v0, Lcge;->a:Ljzr;

    iget-object v1, p0, Lcga;->r:Ljzr;

    sget-object v2, Ljzr;->b:Ljzr;

    invoke-virtual {v1, v2}, Ljzr;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0705d4

    invoke-direct {p0, v1}, Lcga;->k(I)I

    move-result v1

    iput v1, v0, Lcge;->b:I

    const v1, 0x7f0705c3

    invoke-direct {p0, v1}, Lcga;->k(I)I

    move-result v1

    iput v1, v0, Lcge;->c:I

    const v1, 0x7f0705c0

    invoke-direct {p0, v1}, Lcga;->k(I)I

    move-result v1

    iput v1, v0, Lcge;->i:I

    const v1, 0x7f0705bd

    invoke-direct {p0, v1}, Lcga;->k(I)I

    move-result v1

    iput v1, v0, Lcge;->j:I

    const v1, 0x7f0705d0

    invoke-direct {p0, v1}, Lcga;->k(I)I

    const v1, 0x7f0705cd

    invoke-direct {p0, v1}, Lcga;->k(I)I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcga;->r:Ljzr;

    sget-object v2, Ljzr;->a:Ljzr;

    invoke-virtual {v1, v2}, Ljzr;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f0705d5

    invoke-direct {p0, v1}, Lcga;->k(I)I

    move-result v1

    iput v1, v0, Lcge;->b:I

    const v1, 0x7f0705c4

    invoke-direct {p0, v1}, Lcga;->k(I)I

    move-result v1

    iput v1, v0, Lcge;->c:I

    const v1, 0x7f0705c1

    invoke-direct {p0, v1}, Lcga;->k(I)I

    move-result v1

    iput v1, v0, Lcge;->i:I

    const v1, 0x7f0705be

    invoke-direct {p0, v1}, Lcga;->k(I)I

    move-result v1

    iput v1, v0, Lcge;->j:I

    const v1, 0x7f0705d1

    invoke-direct {p0, v1}, Lcga;->k(I)I

    const v1, 0x7f0705ce

    invoke-direct {p0, v1}, Lcga;->k(I)I

    goto :goto_0

    :cond_2
    const v1, 0x7f0705d6

    invoke-direct {p0, v1}, Lcga;->k(I)I

    move-result v1

    iput v1, v0, Lcge;->b:I

    const v1, 0x7f0705c5

    invoke-direct {p0, v1}, Lcga;->k(I)I

    move-result v1

    iput v1, v0, Lcge;->c:I

    const v1, 0x7f0705c2

    invoke-direct {p0, v1}, Lcga;->k(I)I

    move-result v1

    iput v1, v0, Lcge;->i:I

    const v1, 0x7f0705bf

    invoke-direct {p0, v1}, Lcga;->k(I)I

    move-result v1

    iput v1, v0, Lcge;->j:I

    const v1, 0x7f0705d2

    invoke-direct {p0, v1}, Lcga;->k(I)I

    const v1, 0x7f0705cf

    invoke-direct {p0, v1}, Lcga;->k(I)I

    :goto_0
    const v1, 0x7f0705c9

    invoke-direct {p0, v1}, Lcga;->k(I)I

    move-result v1

    iput v1, v0, Lcge;->d:I

    const v1, 0x7f0705c8

    invoke-direct {p0, v1}, Lcga;->k(I)I

    move-result v1

    iput v1, v0, Lcge;->e:I

    const v1, 0x7f0705cc

    invoke-direct {p0, v1}, Lcga;->k(I)I

    move-result v1

    iput v1, v0, Lcge;->f:I

    const v1, 0x7f0705c7

    invoke-direct {p0, v1}, Lcga;->k(I)I

    move-result v1

    iput v1, v0, Lcge;->g:I

    const v1, 0x7f0705cb

    invoke-direct {p0, v1}, Lcga;->k(I)I

    move-result v1

    iput v1, v0, Lcge;->h:I

    const v1, 0x7f0705c6

    invoke-direct {p0, v1}, Lcga;->k(I)I

    move-result v1

    iput v1, v0, Lcge;->k:I

    const v1, 0x7f0705ca

    invoke-direct {p0, v1}, Lcga;->k(I)I

    move-result v1

    iput v1, v0, Lcge;->l:I

    iget-object v1, p0, Lcga;->m:Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcfy;

    invoke-virtual {v1, v0}, Lcfy;->f(Lcge;)V

    return-void
.end method


# virtual methods
.method public final a()Lcgc;
    .locals 2

    iget-object v0, p0, Lcga;->l:Loiw;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcga;->q:Lcgc;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcga;->l:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcgc;

    iput-object v1, p0, Lcga;->q:Lcgc;

    :cond_0
    iget-object v1, p0, Lcga;->q:Lcgc;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final declared-synchronized b(Landroid/widget/FrameLayout;Litm;)Lkad;
    .locals 3

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcga;->c:Landroid/widget/FrameLayout;

    iget-object p1, p0, Lcga;->e:Landroidx/wear/ambient/AmbientMode$AmbientController;

    move-object v0, p2

    check-cast v0, Lisi;

    iget-object v0, v0, Lisi;->O:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    iget-object v0, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Ljuf;

    invoke-direct {p1}, Ljuf;-><init>()V

    iget-object v0, p0, Lcga;->t:Ldja;

    iget-object v0, v0, Ldja;->a:Ljava/lang/Object;

    invoke-static {v0}, Ljvo;->c(Ljvs;)Ljvs;

    move-result-object v0

    new-instance v1, Lcbl;

    const/16 v2, 0xa

    invoke-direct {v1, p0, v2}, Lcbl;-><init>(Lcga;I)V

    iget-object v2, p0, Lcga;->k:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v1, v2}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljuf;->d(Lkad;)V

    iget-object v0, p0, Lcga;->p:Ljvs;

    new-instance v1, Lcbl;

    const/16 v2, 0xb

    invoke-direct {v1, p0, v2}, Lcbl;-><init>(Lcga;I)V

    iget-object v2, p0, Lcga;->k:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v1, v2}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljuf;->d(Lkad;)V

    new-instance v0, Lchq;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p2, v1}, Lchq;-><init>(Lcga;Litm;I)V

    invoke-virtual {p1, v0}, Ljuf;->d(Lkad;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c(Ljzr;)Lkad;
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lnbk;->a:Lnbc;

    iput-object p1, p0, Lcga;->r:Ljzr;

    iget-object p1, p0, Lcga;->m:Lmqp;

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcga;->o()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcga;->n()V

    :goto_0
    sget-object p1, Lcga;->h:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v0, Lcga;->i:Lcgh;

    sget-object v1, Lcgh;->a:Lcgh;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcga;->m:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcga;->m:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcfy;

    sget-object v1, Lcga;->i:Lcgh;

    invoke-virtual {v0, v1}, Lcfy;->g(Lcgh;)V

    goto :goto_1

    :cond_1
    new-instance v0, Lcdw;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, Lcdw;-><init>(Lcga;I)V

    invoke-direct {p0, v0}, Lcga;->m(Ljava/lang/Runnable;)V

    :cond_2
    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance p1, Lcfh;

    const/4 v0, 0x3

    invoke-direct {p1, p0, v0}, Lcfh;-><init>(Lcga;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized d(Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcga;->h:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v1, Lcga;->i:Lcgh;

    sget-object v2, Lcgh;->a:Lcgh;

    if-eq v1, v2, :cond_5

    sget-object v1, Lnbk;->a:Lnbc;

    if-eqz p1, :cond_1

    sget-object v1, Lcga;->i:Lcgh;

    sget-object v2, Lcgh;->b:Lcgh;

    if-ne v1, v2, :cond_1

    sget-object p1, Lcgh;->c:Lcgh;

    sput-object p1, Lcga;->i:Lcgh;

    iget-object p1, p0, Lcga;->m:Lmqp;

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcga;->m:Lmqp;

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcfy;

    invoke-virtual {p1}, Lcfy;->b()V

    goto/16 :goto_1

    :cond_0
    iget-object p1, p0, Lcga;->s:Lcgb;

    if-eqz p1, :cond_6

    const v1, 0x3ee66666    # 0.45f

    invoke-virtual {p1, v1}, Lcgb;->a(F)V

    goto :goto_1

    :cond_1
    if-nez p1, :cond_3

    sget-object v1, Lcga;->i:Lcgh;

    sget-object v2, Lcgh;->c:Lcgh;

    if-ne v1, v2, :cond_3

    sget-object p1, Lcgh;->b:Lcgh;

    sput-object p1, Lcga;->i:Lcgh;

    iget-object p1, p0, Lcga;->m:Lmqp;

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcga;->m:Lmqp;

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcfy;

    invoke-virtual {p1}, Lcfy;->c()V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcga;->s:Lcgb;

    if-eqz p1, :cond_6

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Lcgb;->a(F)V

    goto :goto_1

    :cond_3
    sget-object v1, Lcga;->g:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    sget-object v2, Lnbk;->a:Lnbc;

    const-string v3, "BobaPreviewMgr"

    invoke-interface {v1, v2, v3}, Lnaz;->g(Lnbc;Ljava/lang/Object;)Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const/16 v2, 0x63

    invoke-interface {v1, v2}, Lnah;->G(I)Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const-string v2, "Invalid request to %s in state %s."

    if-eqz p1, :cond_4

    const-string p1, "collapse"

    goto :goto_0

    :cond_4
    const-string p1, "expand"

    :goto_0
    sget-object v3, Lcga;->i:Lcgh;

    invoke-interface {v1, v2, p1, v3}, Lnah;->z(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    sget-object p1, Lcga;->g:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    sget-object v1, Lnbk;->a:Lnbc;

    const-string v2, "BobaPreviewMgr"

    invoke-interface {p1, v1, v2}, Lnaz;->g(Lnbc;Ljava/lang/Object;)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const/16 v1, 0x61

    invoke-interface {p1, v1}, Lnah;->G(I)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const-string v1, "Can\'t animate, already hidden."

    invoke-interface {p1, v1}, Lnah;->o(Ljava/lang/String;)V

    :cond_6
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized e()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcga;->d(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f()V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcga;->h:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v1, Lcga;->i:Lcgh;

    sget-object v2, Lcgh;->a:Lcgh;

    if-eq v1, v2, :cond_0

    sget-object v1, Lnbk;->a:Lnbc;

    sget-object v1, Lcgh;->c:Lcgh;

    sput-object v1, Lcga;->i:Lcgh;

    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v0, Lnbk;->a:Lnbc;

    invoke-direct {p0}, Lcga;->l()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized g()V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcga;->h:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v1, Lcga;->i:Lcgh;

    sget-object v2, Lcgh;->a:Lcgh;

    if-ne v1, v2, :cond_0

    sget-object v1, Lnbk;->a:Lnbc;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_2
    sget-object v1, Lcgh;->a:Lcgh;

    sput-object v1, Lcga;->i:Lcgh;

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    sget-object v0, Lnbk;->a:Lnbc;

    invoke-direct {p0}, Lcga;->l()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final h(Lkpb;Landroid/graphics/RectF;Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    iget-object v1, p0, Lcga;->m:Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcga;->r:Ljzr;

    sget-object v2, Ljzr;->c:Ljzr;

    invoke-virtual {v1, v2}, Ljzr;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcga;->o:Ljvs;

    invoke-interface {v1}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcga;->o:Ljvs;

    invoke-interface {v1}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcga;->n:Lgft;

    invoke-interface {v2}, Lgft;->f()Lkab;

    move-result-object v2

    iget v2, v2, Lkab;->e:I

    add-int/2addr v1, v2

    :goto_0
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    rem-int/lit16 v1, v1, 0x168

    int-to-float v1, v1

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v2, v1, v3, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    invoke-virtual {v2, p2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_2
    iget-object v1, p0, Lcga;->m:Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcga;->h:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcga;->m:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcfy;

    sget-object v2, Lcga;->i:Lcgh;

    invoke-virtual {v0, v2}, Lcfy;->g(Lcgh;)V

    iget-object v0, p0, Lcga;->m:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcfy;

    invoke-virtual {v0, p1, p2, p3}, Lcfy;->e(Lkpb;Landroid/graphics/RectF;Z)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    iget-object p3, p0, Lcga;->d:Lcgn;

    if-eqz p3, :cond_4

    invoke-virtual {p0}, Lcga;->a()Lcgc;

    move-result-object v1

    iget-object p3, p3, Lcgn;->a:Landroid/view/SurfaceView;

    invoke-virtual {v1, p1, p3}, Lcgc;->b(Lkpb;Landroid/view/SurfaceView;)V

    new-instance p1, Lcfz;

    invoke-direct {p1, p0, p2, v0}, Lcfz;-><init>(Lcga;Landroid/graphics/RectF;I)V

    invoke-direct {p0, p1}, Lcga;->m(Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method

.method public final declared-synchronized i()V
    .locals 13

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcga;->h:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v1, Lcga;->i:Lcgh;

    sget-object v2, Lcgh;->a:Lcgh;

    if-eq v1, v2, :cond_0

    sget-object v1, Lnbk;->a:Lnbc;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_2
    sget-object v1, Lcgh;->b:Lcgh;

    sput-object v1, Lcga;->i:Lcgh;

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    sget-object v0, Lnbk;->a:Lnbc;

    iget-object v0, p0, Lcga;->m:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcga;->o()V

    iget-object v0, p0, Lcga;->m:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcfy;

    iget-object v1, p0, Lcga;->t:Ldja;

    iget-object v1, v1, Ldja;->a:Ljava/lang/Object;

    check-cast v1, Ljvk;

    iget-object v1, v1, Ljvk;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcgh;->c:Lcgh;

    goto :goto_0

    :cond_1
    sget-object v1, Lcgh;->b:Lcgh;

    :goto_0
    invoke-virtual {v0, v1}, Lcfy;->g(Lcgh;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-void

    :cond_2
    :try_start_4
    iget-object v0, p0, Lcga;->d:Lcgn;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcga;->s:Lcgb;

    if-eqz v0, :cond_4

    sget-object v1, Lcgh;->b:Lcgh;

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v5, 0xa7

    invoke-virtual {v2, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    sget-object v3, Lcgh;->b:Lcgh;

    new-instance v12, Landroid/view/animation/ScaleAnimation;

    iget-object v5, v0, Lcgb;->b:Lcgn;

    invoke-virtual {v5}, Lcgn;->getWidth()I

    move-result v5

    int-to-float v10, v5

    if-ne v1, v3, :cond_3

    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_3
    const v4, 0x3ee66666    # 0.45f

    const v9, 0x3ee66666    # 0.45f

    :goto_1
    const v8, 0x3ee66666    # 0.45f

    const/4 v11, 0x0

    move-object v5, v12

    move v6, v8

    move v7, v9

    invoke-direct/range {v5 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v12, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, v0, Lcgb;->c:Ljava/util/concurrent/Executor;

    new-instance v3, Lcfz;

    const/4 v4, 0x5

    invoke-direct {v3, v0, v1, v4}, Lcfz;-><init>(Lcgb;Landroid/view/animation/AnimationSet;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-void

    :cond_4
    :try_start_5
    sget-object v0, Lcga;->g:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    sget-object v1, Lnbk;->a:Lnbc;

    const-string v2, "BobaPreviewMgr"

    invoke-interface {v0, v1, v2}, Lnaz;->g(Lnbc;Ljava/lang/Object;)Lnaz;

    move-result-object v0

    const-string v1, "Manager not initialized, must call start() first."

    const/16 v2, 0x6e

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized j()V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lnbk;->a:Lnbc;

    iget-object v0, p0, Lcga;->l:Loiw;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcga;->q:Lcgc;

    const/4 v2, 0x0

    iput-object v2, p0, Lcga;->q:Lcgc;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Lcgc;->close()V

    :cond_0
    iget-object v0, p0, Lcga;->m:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcga;->m:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcfy;

    invoke-virtual {v0}, Lcfy;->d()V

    :cond_1
    iget-object v0, p0, Lcga;->d:Lcgn;

    if-eqz v0, :cond_2

    new-instance v0, Lcdw;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1}, Lcdw;-><init>(Lcga;I)V

    invoke-direct {p0, v0}, Lcga;->m(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
