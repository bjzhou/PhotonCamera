.class public final Lhsn;
.super Ljava/lang/Object;

# interfaces
.implements Lhsl;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Ljava/util/List;

.field public c:Ljava/lang/Long;

.field public final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final e:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final f:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

.field private final g:Logd;

.field private final h:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$Callback;

.field private i:Z

.field private j:Z

.field private final k:Z

.field private final l:Lhlb;

.field private final m:Ljuh;

.field private final n:Ljava/util/concurrent/Executor;

.field private final o:Lgzm;

.field private p:Lnou;

.field private q:Landroid/graphics/Bitmap;

.field private final r:Lbkc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/ui/captureindicator/CaptureIndicatorControllerImpl"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lhsn;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;ZLbkc;Lhlb;Logd;Ljuh;Ljava/util/concurrent/Executor;Lgzm;[B[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p9, Lhsm;

    invoke-direct {p9, p0}, Lhsm;-><init>(Lhsn;)V

    iput-object p9, p0, Lhsn;->h:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$Callback;

    new-instance p10, Ljava/util/ArrayList;

    invoke-direct {p10}, Ljava/util/ArrayList;-><init>()V

    iput-object p10, p0, Lhsn;->b:Ljava/util/List;

    const/4 p10, 0x0

    iput-boolean p10, p0, Lhsn;->i:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, p10}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lhsn;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, p10}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lhsn;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lhsn;->f:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    iput-object p5, p0, Lhsn;->g:Logd;

    invoke-virtual {p1, p9}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->setCallback(Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$Callback;)V

    iput-boolean p2, p0, Lhsn;->k:Z

    iput-object p3, p0, Lhsn;->r:Lbkc;

    iput-object p4, p0, Lhsn;->l:Lhlb;

    iput-object p6, p0, Lhsn;->m:Ljuh;

    iput-boolean p2, p0, Lhsn;->j:Z

    iput-object p7, p0, Lhsn;->n:Ljava/util/concurrent/Executor;

    iput-object p8, p0, Lhsn;->o:Lgzm;

    return-void
.end method


# virtual methods
.method public final a(Lhsk;)Lkad;
    .locals 2

    iget-object v0, p0, Lhsn;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lgss;

    const/16 v1, 0x10

    invoke-direct {v0, p0, p1, v1}, Lgss;-><init>(Lhsn;Lhsk;I)V

    return-object v0
.end method

.method public final b()Lmqp;
    .locals 1

    iget-object v0, p0, Lhsn;->q:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    sget-object v0, Lmpx;->a:Lmpx;

    return-object v0

    :cond_0
    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lnou;
    .locals 4

    iget-object v0, p0, Lhsn;->p:Lnou;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-boolean v0, p0, Lhsn;->k:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lhsn;->h()V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v0

    iput-object v0, p0, Lhsn;->p:Lnou;

    return-object v0

    :cond_1
    iget-object v0, p0, Lhsn;->r:Lbkc;

    invoke-static {v0}, Lcdg;->p(Lbkc;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v0

    iput-object v0, p0, Lhsn;->p:Lnou;

    return-object v0

    :cond_2
    iget-object v0, p0, Lhsn;->l:Lhlb;

    invoke-virtual {v0}, Lhlb;->a()Lnou;

    move-result-object v0

    invoke-interface {v0}, Lnou;->isDone()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lnnv;->a:Lnnv;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lhsn;->m:Ljuh;

    :goto_0
    new-instance v2, Lhga;

    const/4 v3, 0x5

    invoke-direct {v2, p0, v3}, Lhga;-><init>(Lhsn;I)V

    invoke-static {v0, v2, v1}, Lnnf;->i(Lnou;Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v0

    iput-object v0, p0, Lhsn;->p:Lnou;

    return-object v0
.end method

.method public final d()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lhsn;->c:Ljava/lang/Long;

    return-object v0
.end method

.method public final e(Z)V
    .locals 1

    iget-boolean v0, p0, Lhsn;->j:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lhsn;->g:Logd;

    invoke-interface {p1}, Logd;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgus;

    invoke-interface {p1}, Lgus;->f()V

    :cond_0
    return-void

    :cond_1
    iget-object p1, p0, Lhsn;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhsk;

    invoke-interface {v0}, Lhsk;->b()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final f(Z)V
    .locals 0

    iput-boolean p1, p0, Lhsn;->i:Z

    return-void
.end method

.method public final g(Likn;)V
    .locals 3

    iget-object v0, p0, Lhsn;->f:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->getDefaultThumbnail(Likn;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lhsn;->f:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v2}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->setThumbnail(Landroid/graphics/Bitmap;IZ)V

    const/4 v0, 0x0

    iput-object v0, p0, Lhsn;->q:Landroid/graphics/Bitmap;

    sget-object v1, Likn;->f:Likn;

    if-eq p1, v1, :cond_0

    iget-object p1, p0, Lhsn;->l:Lhlb;

    iget-object v1, p1, Lhlb;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object v0, p1, Lhlb;->e:Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p1, Lhlb;->b:Lnou;

    new-instance v1, Lhkz;

    invoke-direct {v1, p1}, Lhkz;-><init>(Lhlb;)V

    iget-object p1, p1, Lhlb;->d:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lnnf;->i(Lnou;Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    return-void
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Lhsn;->o:Lgzm;

    sget-object v1, Lgzd;->at:Lgzr;

    invoke-interface {v0, v1}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Likn;->b:Likn;

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lhsn;->k:Z

    if-eqz v0, :cond_1

    sget-object v0, Likn;->f:Likn;

    goto :goto_0

    :cond_1
    sget-object v0, Likn;->a:Likn;

    :goto_0
    invoke-virtual {p0, v0}, Lhsn;->g(Likn;)V

    iget-boolean v0, p0, Lhsn;->k:Z

    iput-boolean v0, p0, Lhsn;->j:Z

    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lhsn;->i:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lhsn;->f:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lhsn;->f:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->startRevealThumbnailAnimation(Ljava/lang/String;)V

    iget-object p1, p0, Lhsn;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhsk;

    invoke-interface {v0}, Lhsk;->a()V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public final j(Ljava/util/function/Supplier;)V
    .locals 2

    iget-object v0, p0, Lhsn;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    new-instance v0, Lcop;

    const/16 v1, 0x8

    invoke-direct {v0, p0, p1, v1}, Lcop;-><init>(Lhsn;Ljava/util/function/Supplier;I)V

    iget-object p1, p0, Lhsn;->n:Ljava/util/concurrent/Executor;

    invoke-static {v0, p1}, Lnsy;->F(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object p1

    new-instance v0, Lgij;

    const/16 v1, 0xb

    invoke-direct {v0, p0, v1}, Lgij;-><init>(Lhsn;I)V

    iget-object v1, p0, Lhsn;->m:Ljuh;

    invoke-static {p1, v0, v1}, Ljvd;->t(Lnou;Ljzs;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final k(Landroid/graphics/Bitmap;I)V
    .locals 9

    iget-object v0, p0, Lhsn;->f:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->setEnabled(Z)V

    iget-object v0, p0, Lhsn;->f:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    iget-object v1, p0, Lhsn;->o:Lgzm;

    sget-object v2, Lgzd;->at:Lgzr;

    invoke-interface {v1, v2}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->setThumbnail(Landroid/graphics/Bitmap;IZ)V

    if-eqz p2, :cond_0

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v0, p2

    invoke-virtual {v7, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lhsn;->q:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lhsn;->j:Z

    iget-object v0, p0, Lhsn;->l:Lhlb;

    new-instance v1, Lhkx;

    invoke-static {p2}, Lkab;->b(I)Lkab;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Lhkx;-><init>(Landroid/graphics/Bitmap;Lkab;)V

    iget-object p1, v0, Lhlb;->b:Lnou;

    new-instance p2, Lhla;

    invoke-direct {p2, v0, v1}, Lhla;-><init>(Lhlb;Ljava/lang/Object;)V

    iget-object v0, v0, Lhlb;->d:Ljava/util/concurrent/Executor;

    invoke-static {p1, p2, v0}, Lnnf;->j(Lnou;Lnno;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object p1

    const-class p2, Ljava/lang/Throwable;

    sget-object v0, Lhop;->c:Lhop;

    sget-object v1, Lnnv;->a:Lnnv;

    invoke-static {p1, p2, v0, v1}, Lnml;->i(Lnou;Ljava/lang/Class;Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    return-void
.end method
