.class public final Lfeq;
.super Ljava/lang/Object;

# interfaces
.implements Lgxm;


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final c:Lmqp;

.field public d:Lkad;

.field public final e:Lhfv;

.field private final f:Lihg;

.field private final g:Landroid/content/res/Resources;

.field private final h:Lell;

.field private final i:Lgwf;

.field private final j:Ljava/util/concurrent/ScheduledExecutorService;

.field private final k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final l:Ljew;


# direct methods
.method public constructor <init>(Lihg;Landroid/content/res/Resources;Ljew;Lell;Ljava/util/concurrent/ScheduledExecutorService;Lgwf;Lmqp;[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p8, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p9, 0x0

    invoke-direct {p8, p9}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p8, p0, Lfeq;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p8, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p8, p9}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p8, p0, Lfeq;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p8, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p8, p9}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p8, p0, Lfeq;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object p8, Lcgk;->m:Lcgk;

    iput-object p8, p0, Lfeq;->d:Lkad;

    new-instance p8, Lfep;

    invoke-direct {p8, p0}, Lfep;-><init>(Lfeq;)V

    iput-object p8, p0, Lfeq;->e:Lhfv;

    iput-object p1, p0, Lfeq;->f:Lihg;

    iput-object p2, p0, Lfeq;->g:Landroid/content/res/Resources;

    iput-object p3, p0, Lfeq;->l:Ljew;

    iput-object p6, p0, Lfeq;->i:Lgwf;

    iput-object p4, p0, Lfeq;->h:Lell;

    iput-object p5, p0, Lfeq;->j:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p7, p0, Lfeq;->c:Lmqp;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Lkad;
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfeq;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfeq;->l:Ljew;

    const-string v3, "long_press_photos_edu"

    invoke-virtual {v0, v3}, Ljew;->X(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lfeq;->f:Lihg;

    iget-object v0, v0, Lihg;->f:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/apps/camera/bottombar/BottomBar;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/bottombar/BottomBar;->getThumbnailButton()Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->getThumbnailFinalDiameter()F

    move-result v0

    iget-object v3, p0, Lfeq;->g:Landroid/content/res/Resources;

    const v4, 0x7f070284

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    neg-float v0, v0

    int-to-float v3, v3

    sget-object v4, Libt;->b:Libt;

    new-instance v5, Lifx;

    invoke-direct {v5, v4}, Lifx;-><init>(Lifw;)V

    iget-object v4, p0, Lfeq;->f:Lihg;

    iget-object v4, v4, Lihg;->f:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/apps/camera/bottombar/BottomBar;

    invoke-virtual {v4}, Lcom/google/android/apps/camera/bottombar/BottomBar;->getThumbnailButton()Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    move-result-object v4

    add-float/2addr v0, v3

    float-to-int v0, v0

    invoke-virtual {v5, v4, v0}, Lifx;->c(Landroid/view/View;I)V

    invoke-interface {v5}, Lify;->i()V

    invoke-interface {v5}, Lifz;->k()V

    invoke-interface {v5}, Liga;->m()V

    invoke-interface {v5}, Liga;->n()V

    const/16 v0, 0xc8

    iput v0, v5, Lifx;->d:I

    const/16 v0, 0x7530

    iput v0, v5, Lifx;->e:I

    new-instance v0, Lfeo;

    invoke-direct {v0, p0, v2}, Lfeo;-><init>(Lfeq;I)V

    invoke-interface {v5, v0}, Liga;->d(Ljava/util/function/Supplier;)V

    invoke-interface {v5}, Liga;->l()V

    iput-boolean v1, v5, Lifx;->g:Z

    iput-boolean v2, v5, Lifx;->h:Z

    new-instance v0, Lfcz;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lfcz;-><init>(Lfeq;I)V

    iget-object v3, p0, Lfeq;->j:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x1

    invoke-virtual {v6, v7, v8, v4}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    iget-object v4, v5, Lifx;->a:Ljava/util/List;

    new-instance v8, Lift;

    invoke-direct {v8, v0, v3, v6, v7}, Lift;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;J)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lfeq;->h:Lell;

    iput-object v0, v5, Lifx;->i:Lell;

    iput v1, v5, Lifx;->m:I

    iput-boolean v2, v5, Lifx;->f:Z

    invoke-interface {v5}, Liga;->a()Lkad;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcgk;->n:Lcgk;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final declared-synchronized b()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfeq;->l:Ljew;

    const-string v1, "long_press_photos_edu"

    invoke-virtual {v0, v1}, Ljew;->X(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lfeq;->l:Ljew;

    const-string v2, "long_press_photos_edu"

    invoke-virtual {v1, v2, v0}, Ljew;->aa(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final synthetic j(Lgxy;)V
    .locals 0

    return-void
.end method

.method public final synthetic k(Lgxy;)V
    .locals 0

    return-void
.end method

.method public final l(Lgxy;)V
    .locals 2

    iget-object v0, p0, Lfeq;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, Lfeq;->i:Lgwf;

    invoke-interface {v1, p1}, Lgwf;->a(Lgxy;)Lgxl;

    move-result-object p1

    invoke-static {p1}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object p1

    sget-object v1, Ldeo;->r:Ldeo;

    invoke-virtual {p1, v1}, Lmqp;->b(Lmqi;)Lmqp;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Lmqp;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lfeq;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lfeq;->a()Lkad;

    move-result-object p1

    iput-object p1, p0, Lfeq;->d:Lkad;

    :cond_0
    return-void
.end method

.method public final synthetic m(J)V
    .locals 0

    return-void
.end method

.method public final synthetic n(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public final synthetic o(Landroid/graphics/Bitmap;I)V
    .locals 0

    invoke-static {p0, p1}, Ljhp;->aw(Lgxm;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final synthetic p(Lgxy;Lkae;)V
    .locals 0

    return-void
.end method

.method public final synthetic q(Lgxy;Lgxt;Lgyb;)V
    .locals 0

    return-void
.end method

.method public final synthetic r(Lgxy;)V
    .locals 0

    return-void
.end method

.method public final synthetic x(Lgxy;)V
    .locals 0

    return-void
.end method
