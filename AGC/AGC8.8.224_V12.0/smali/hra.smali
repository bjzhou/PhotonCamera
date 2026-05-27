.class public final Lhra;
.super Ljava/lang/Object;

# interfaces
.implements Lhrj;


# static fields
.field private static final a:Lnak;


# instance fields
.field private final b:Lhmz;

.field private volatile c:Z

.field private volatile d:Z

.field private volatile e:Z

.field private f:Z

.field private g:I

.field private h:Ljvk;

.field private i:Lmqp;

.field private volatile j:Landroid/graphics/PointF;

.field private volatile k:Lmqp;

.field private final l:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final m:Ljava/util/concurrent/Executor;

.field private final n:Ljava/util/concurrent/Executor;

.field private final o:Ljava/util/List;

.field private final p:Lkbc;

.field private final q:Landroidx/wear/ambient/AmbientDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/tracking/TrackingControllerImpl"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lhra;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Landroidx/wear/ambient/AmbientDelegate;Lhnb;Ljava/util/concurrent/Executor;Lhna;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ldhi;Lkbc;[B[B[B)V
    .locals 0

    sget-object p9, Ldih;->a:Ldhk;

    invoke-interface {p7}, Ldhi;->e()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p7, 0x0

    iput-boolean p7, p0, Lhra;->c:Z

    iput-boolean p7, p0, Lhra;->d:Z

    iput-boolean p7, p0, Lhra;->e:Z

    iput-boolean p7, p0, Lhra;->f:Z

    const/4 p9, 0x2

    iput p9, p0, Lhra;->g:I

    sget-object p10, Lmpx;->a:Lmpx;

    iput-object p10, p0, Lhra;->i:Lmqp;

    iput-object p10, p0, Lhra;->k:Lmqp;

    new-instance p10, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p10, p7}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p10, p0, Lhra;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p7, Ljava/util/ArrayList;

    invoke-direct {p7}, Ljava/util/ArrayList;-><init>()V

    iput-object p7, p0, Lhra;->o:Ljava/util/List;

    new-instance p7, Ljvk;

    invoke-static {}, Lhrm;->b()Lhrm;

    move-result-object p10

    invoke-direct {p7, p10}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object p7, p0, Lhra;->h:Ljvk;

    invoke-static {}, Lhne;->a()Lhnd;

    move-result-object p7

    invoke-virtual {p7, p3}, Lhnd;->c(Ljava/util/concurrent/Executor;)V

    const-string p3, "FocusTracking"

    invoke-virtual {p7, p3}, Lhnd;->d(Ljava/lang/String;)V

    new-instance p3, Lhph;

    const/16 p10, 0xf

    invoke-direct {p3, p0, p10}, Lhph;-><init>(Lhra;I)V

    invoke-virtual {p7, p3}, Lhnd;->e(Ljava/lang/Runnable;)V

    new-instance p3, Lhph;

    const/16 p10, 0x10

    invoke-direct {p3, p0, p10}, Lhph;-><init>(Lhra;I)V

    invoke-virtual {p7, p3}, Lhnd;->f(Ljava/lang/Runnable;)V

    invoke-virtual {p7, p4}, Lhnd;->g(Lhna;)V

    invoke-virtual {p7}, Lhnd;->a()Lhne;

    move-result-object p3

    iput-object p3, p0, Lhra;->b:Lhmz;

    iput-object p5, p0, Lhra;->m:Ljava/util/concurrent/Executor;

    iput-object p6, p0, Lhra;->n:Ljava/util/concurrent/Executor;

    iput-object p8, p0, Lhra;->p:Lkbc;

    iput p9, p0, Lhra;->g:I

    invoke-interface {p2, p0}, Lhnb;->f(Lhmz;)Lkad;

    iput-object p1, p0, Lhra;->q:Landroidx/wear/ambient/AmbientDelegate;

    return-void
.end method


# virtual methods
.method public final b(Landroid/graphics/PointF;)Ljvs;
    .locals 6

    iget-object v0, p0, Lhra;->p:Lkbc;

    const-string v1, "startTracking"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lhra;->q:Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientDelegate;->Q()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmqr;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lmpx;->a:Lmpx;

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lhra;->i:Lmqp;

    new-instance v0, Ljvk;

    invoke-static {}, Lhrm;->b()Lhrm;

    move-result-object v1

    invoke-direct {v0, v1}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lhra;->h:Ljvk;

    iget-object v1, p0, Lhra;->k:Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lhra;->c:Z

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lhra;->d:Z

    iput-boolean v1, p0, Lhra;->e:Z

    iput-object p1, p0, Lhra;->j:Landroid/graphics/PointF;

    iget-object v1, p0, Lhra;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-enter p0

    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lhra;->o:Ljava/util/List;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    :goto_1
    if-ge v2, v3, :cond_2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lhrn;

    invoke-interface {v4}, Lhrn;->s()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-static {}, Lhrm;->a()Lhrl;

    move-result-object v1

    const/4 v2, 0x2

    iput v2, v1, Lhrl;->a:I

    sget-object v2, Lhrg;->a:Lhrg;

    invoke-virtual {v1, v2}, Lhrl;->f(Lhrg;)V

    new-instance v2, Landroid/graphics/RectF;

    iget v3, p1, Landroid/graphics/PointF;->x:F

    iget v4, p1, Landroid/graphics/PointF;->y:F

    iget v5, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {v2, v3, v4, v5, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Lhrl;->d(Landroid/graphics/RectF;)V

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {v1, p1}, Lhrl;->b(F)V

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lhrl;->e(J)V

    invoke-virtual {v1}, Lhrl;->a()Lhrm;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljvk;->bn(Ljava/lang/Object;)V

    iget-object p1, p0, Lhra;->p:Lkbc;

    invoke-interface {p1}, Lkbc;->f()V

    invoke-static {v0}, Ljvo;->c(Ljvs;)Ljvs;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_3
    :goto_2
    :try_start_3
    iget-object p1, p0, Lhra;->k:Lmqp;

    invoke-virtual {p1}, Lmqp;->g()Z

    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public final bG(Lhna;)V
    .locals 1

    iget-object v0, p0, Lhra;->b:Lhmz;

    invoke-interface {v0, p1}, Lhmz;->bG(Lhna;)V

    return-void
.end method

.method public final ci()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized d(Lmqp;Lmqp;)Lkad;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lhra;->h()V

    iput-object p2, p0, Lhra;->k:Lmqp;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lhra;->f:Z

    new-instance p1, Lgss;

    const/16 v0, 0xf

    invoke-direct {p1, p0, p2, v0}, Lgss;-><init>(Lhra;Lmqp;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized e(Lhrn;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lhra;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final f(Lkpb;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lhra;->g:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lhra;->g:I

    if-lez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    iget-object v0, p0, Lhra;->k:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    iget-boolean v0, p0, Lhra;->f:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lhra;->k:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrf;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lhra;->f:Z

    :cond_2
    iget-boolean v0, p0, Lhra;->e:Z

    if-nez v0, :cond_3

    monitor-exit p0

    return-void

    :cond_3
    iget-boolean v0, p0, Lhra;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iput-boolean v1, p0, Lhra;->d:Z

    iget-object v0, p0, Lhra;->k:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrf;

    iget-object v2, p0, Lhra;->j:Landroid/graphics/PointF;

    invoke-interface {v0, p1, v2}, Lhrf;->b(Lkpb;Landroid/graphics/PointF;)Lhrm;

    move-result-object p1

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lhra;->q:Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientDelegate;->Q()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lhra;->i:Lmqp;

    invoke-virtual {v2}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v0}, Lmqr;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lhra;->i:Lmqp;

    invoke-virtual {v2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lhra;->i:Lmqp;

    invoke-virtual {v2}, Lmqp;->c()Ljava/lang/Object;

    iget-object v2, p0, Lhra;->k:Lmqp;

    invoke-virtual {v2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhrf;

    invoke-interface {v2, p1}, Lhrf;->c(Lkpb;)Lhrm;

    move-result-object p1

    goto :goto_1

    :cond_6
    :goto_0
    iget-object v2, p0, Lhra;->k:Lmqp;

    invoke-virtual {v2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhrf;

    invoke-interface {v2, p1}, Lhrf;->c(Lkpb;)Lhrm;

    move-result-object p1

    :goto_1
    invoke-static {v0}, Lmqr;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v0, Lmpx;->a:Lmpx;

    goto :goto_2

    :cond_7
    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lhra;->i:Lmqp;

    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    iget-boolean v0, p0, Lhra;->c:Z

    if-eqz v0, :cond_8

    sget-object p1, Lhra;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    const-string v0, "tracking is disabled due the thermal issue"

    const/16 v1, 0xf4c

    invoke-static {p1, v0, v1}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    goto :goto_5

    :cond_8
    iget v0, p1, Lhrm;->c:F

    const v2, 0x3f19999a    # 0.6f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_9

    iget-object v0, p0, Lhra;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lhra;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :goto_4
    iget-object v0, p0, Lhra;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/16 v1, 0xa

    if-gt v0, v1, :cond_a

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lhra;->h:Ljvk;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-enter p0

    :try_start_2
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lhra;->o:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v3, p0, Lhra;->m:Ljava/util/concurrent/Executor;

    new-instance v4, Lgwr;

    invoke-direct {v4, v0, p1, v2, v1}, Lgwr;-><init>(Ljvk;Lhrm;Ljava/util/List;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1

    :cond_a
    :goto_5
    invoke-virtual {p0}, Lhra;->h()V

    return-void

    :catchall_2
    move-exception p1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1
.end method

.method public final declared-synchronized g(Lhrn;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lhra;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final h()V
    .locals 6

    iget-object v0, p0, Lhra;->p:Lkbc;

    const-string v1, "stopTracking"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lhra;->k:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lhra;->e:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lhra;->h:Ljvk;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lhra;->e:Z

    iput-boolean v1, p0, Lhra;->d:Z

    sget-object v2, Lmpx;->a:Lmpx;

    iput-object v2, p0, Lhra;->i:Lmqp;

    iget-object v2, p0, Lhra;->k:Lmqp;

    invoke-virtual {v2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhrf;

    invoke-interface {v2}, Lhrf;->a()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v2, v0, Ljvk;->d:Ljava/lang/Object;

    check-cast v2, Lhrm;

    invoke-static {}, Lhrm;->a()Lhrl;

    move-result-object v3

    iget-object v4, v2, Lhrm;->b:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Lhrl;->d(Landroid/graphics/RectF;)V

    iget-wide v4, v2, Lhrm;->e:J

    invoke-virtual {v3, v4, v5}, Lhrl;->e(J)V

    iget v4, v2, Lhrm;->d:I

    invoke-virtual {v3, v4}, Lhrl;->c(I)V

    iget-object v2, v2, Lhrm;->a:Lhrg;

    invoke-virtual {v3, v2}, Lhrl;->f(Lhrg;)V

    invoke-virtual {v3}, Lhrl;->a()Lhrm;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljvk;->bn(Ljava/lang/Object;)V

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lhra;->o:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhrn;

    invoke-interface {v3}, Lhrn;->t()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lhra;->p:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    :goto_1
    :try_start_3
    iget-object v0, p0, Lhra;->p:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public final i()Z
    .locals 1

    iget-object v0, p0, Lhra;->k:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    return v0
.end method

.method public final declared-synchronized j(Lmqp;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lhra;->k:Lmqp;

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lhra;->h()V

    sget-object v0, Lmpx;->a:Lmpx;

    iput-object v0, p0, Lhra;->k:Lmqp;

    :cond_0
    iget-object v0, p0, Lhra;->n:Ljava/util/concurrent/Executor;

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lhrf;

    new-instance v1, Lhph;

    const/16 v2, 0xe

    invoke-direct {v1, p1, v2}, Lhph;-><init>(Lhrf;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final k(Z)V
    .locals 0

    iput-boolean p1, p0, Lhra;->c:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lhra;->h()V

    :cond_0
    return-void
.end method
