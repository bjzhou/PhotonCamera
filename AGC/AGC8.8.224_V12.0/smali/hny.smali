.class public final Lhny;
.super Ljava/lang/Object;

# interfaces
.implements Lcbi;


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final e:Ldol;

.field public final f:Lcbn;

.field public final g:Ldhi;

.field public final h:Lmqp;

.field public final i:Lmqp;

.field public final j:Lccg;

.field public final k:Lhpq;

.field public final l:Lfui;

.field public final m:Ljava/lang/Runnable;

.field public n:Lkli;

.field public o:Lken;

.field public p:Ljuf;

.field public q:Lgdk;

.field public r:Ljava/util/concurrent/ScheduledFuture;

.field public s:Lnph;

.field public final t:Lftu;

.field public u:Ljes;

.field public final v:Ldqx;

.field public final w:Lbkb;

.field private final x:Ljava/util/concurrent/ScheduledExecutorService;

.field private final y:Lgfp;


# direct methods
.method public constructor <init>(Ldqx;Lbkb;Ldol;Lcbn;Ldhi;Lmqp;Lmqp;Lccg;Ljava/util/concurrent/ScheduledExecutorService;Lgfp;Lhpq;Lfui;[B[B[B[B[B)V
    .locals 5

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, v0, Lhny;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, v0, Lhny;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, v0, Lhny;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, v0, Lhny;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Lhma;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-direct {v1, p0, v3, v4}, Lhma;-><init>(Lhny;I[B)V

    iput-object v1, v0, Lhny;->m:Ljava/lang/Runnable;

    move-object v1, p1

    iput-object v1, v0, Lhny;->v:Ldqx;

    move-object v1, p2

    iput-object v1, v0, Lhny;->w:Lbkb;

    new-instance v1, Lftu;

    invoke-direct {v1, v2}, Lftu;-><init>(Z)V

    iput-object v1, v0, Lhny;->t:Lftu;

    move-object v1, p3

    iput-object v1, v0, Lhny;->e:Ldol;

    move-object v1, p4

    iput-object v1, v0, Lhny;->f:Lcbn;

    move-object v1, p5

    iput-object v1, v0, Lhny;->g:Ldhi;

    move-object v1, p6

    iput-object v1, v0, Lhny;->h:Lmqp;

    move-object v1, p7

    iput-object v1, v0, Lhny;->i:Lmqp;

    move-object v1, p8

    iput-object v1, v0, Lhny;->j:Lccg;

    move-object v1, p9

    iput-object v1, v0, Lhny;->x:Ljava/util/concurrent/ScheduledExecutorService;

    move-object v1, p10

    iput-object v1, v0, Lhny;->y:Lgfp;

    move-object/from16 v1, p11

    iput-object v1, v0, Lhny;->k:Lhpq;

    move-object/from16 v1, p12

    iput-object v1, v0, Lhny;->l:Lfui;

    return-void
.end method

.method private final e()V
    .locals 5

    iget-object v0, p0, Lhny;->r:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lhny;->x:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lhma;

    const/16 v2, 0xc

    invoke-direct {v1, p0, v2}, Lhma;-><init>(Lhny;I)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x7d0

    invoke-interface {v0, v1, v3, v4, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lhny;->r:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method


# virtual methods
.method final b(ZZ)V
    .locals 3

    iget-object v0, p0, Lhny;->q:Lgdk;

    invoke-virtual {v0}, Ljwh;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgdj;

    iget-object v0, v0, Lgdj;->a:Landroid/graphics/Rect;

    sget-object v0, Lfua;->a:[Landroid/hardware/camera2/params/MeteringRectangle;

    sget-object v0, Lftz;->a:Lfua;

    sget-object v0, Lfua;->a:[Landroid/hardware/camera2/params/MeteringRectangle;

    iget-object v1, p0, Lhny;->o:Lken;

    iget-object v2, p0, Lhny;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-interface {v1, p1, p2, v2}, Lken;->m(ZZZ)V

    iget-object v1, p0, Lhny;->o:Lken;

    invoke-interface {v1}, Lken;->b()Lkdz;

    move-result-object v1

    if-eqz p1, :cond_0

    move-object v2, v1

    check-cast v2, Lkfr;

    iput-object v0, v2, Lkfr;->h:[Landroid/hardware/camera2/params/MeteringRectangle;

    :cond_0
    if-eqz p2, :cond_1

    move-object v2, v1

    check-cast v2, Lkfr;

    iput-object v0, v2, Lkfr;->i:[Landroid/hardware/camera2/params/MeteringRectangle;

    :cond_1
    move-object v2, v1

    check-cast v2, Lkfr;

    iput-object v0, v2, Lkfr;->j:[Landroid/hardware/camera2/params/MeteringRectangle;

    iget-object v0, p0, Lhny;->o:Lken;

    invoke-interface {v1}, Lkdz;->a()Lkea;

    move-result-object v1

    invoke-interface {v0, v1}, Lken;->o(Lkea;)V

    if-eqz p1, :cond_2

    iget-object p1, p0, Lhny;->j:Lccg;

    iget-object v0, p0, Lhny;->m:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lccg;->c(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lhny;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lhny;->w:Lbkb;

    iget-object p1, p1, Lbkb;->a:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljwb;->bn(Ljava/lang/Object;)V

    :cond_2
    if-eqz p2, :cond_3

    iget-object p1, p0, Lhny;->v:Ldqx;

    invoke-virtual {p1}, Ldqx;->f()V

    :cond_3
    return-void
.end method

.method public final bp(Lbkc;)Lccx;
    .locals 8

    iget-object v0, p0, Lhny;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lhny;->j:Lccg;

    iget-object v2, p0, Lhny;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lccg;->c(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lhny;->r:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    iget-object v0, p1, Lbkc;->a:Ljava/lang/Object;

    iget-object v2, p0, Lhny;->n:Lkli;

    invoke-interface {v2}, Lkli;->f()I

    move-result v2

    check-cast v0, Landroid/graphics/PointF;

    invoke-static {v0, v0, v2}, Lccd;->c(Landroid/graphics/PointF;Landroid/graphics/PointF;I)Lccd;

    move-result-object v0

    iget-object v2, p0, Lhny;->q:Lgdk;

    invoke-virtual {v2}, Ljwh;->bm()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgdj;

    iget-object v2, v2, Lgdj;->a:Landroid/graphics/Rect;

    iget-object v3, p0, Lhny;->v:Ldqx;

    iget-object v3, v3, Ldqx;->d:Ljava/lang/Object;

    check-cast v3, Ljvk;

    iget-object v3, v3, Ljvk;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    xor-int/2addr v3, v1

    invoke-interface {v0, v2}, Lfuc;->b(Landroid/graphics/Rect;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v0

    iget-object v2, p0, Lhny;->o:Lken;

    invoke-interface {v2}, Lken;->b()Lkdz;

    move-result-object v2

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v5, v2

    check-cast v5, Lkfr;

    iput-object v4, v5, Lkfr;->d:Ljava/lang/Integer;

    iput-object v0, v5, Lkfr;->h:[Landroid/hardware/camera2/params/MeteringRectangle;

    if-eqz v3, :cond_1

    iput-object v0, v5, Lkfr;->i:[Landroid/hardware/camera2/params/MeteringRectangle;

    :cond_1
    invoke-interface {v2}, Lkdz;->a()Lkea;

    move-result-object v0

    iget-object v2, p0, Lhny;->o:Lken;

    invoke-static {}, Lkfh;->a()Lkff;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lkff;->c(I)V

    if-eq v1, v3, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    :goto_0
    invoke-virtual {v4, v5}, Lkff;->b(I)V

    invoke-virtual {v4, v1}, Lkff;->e(I)V

    invoke-virtual {v4}, Lkff;->a()Lkfh;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lken;->l(Lkea;Lkfh;)V

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v0

    iput-object v0, p0, Lhny;->s:Lnph;

    iget-object v0, p0, Lhny;->g:Ldhi;

    sget-object v1, Ldil;->g:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lhny;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lhny;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lhny;->e()V

    iget-object v0, p0, Lhny;->k:Lhpq;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lhpq;->h(Z)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lhny;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-direct {p0}, Lhny;->e()V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lhny;->e()V

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lhny;->e()V

    :cond_6
    :goto_1
    iget-object v0, p0, Lhny;->u:Ljes;

    if-eqz v0, :cond_8

    iget-object v1, v0, Ljes;->b:Ljava/lang/Object;

    sget-object v2, Ldil;->g:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_2

    :cond_7
    iget-object v1, v0, Ljes;->a:Ljava/lang/Object;

    check-cast v1, Lhos;

    iget-object v1, v1, Lhos;->j:Ljvk;

    iget-object v1, v1, Ljvk;->d:Ljava/lang/Object;

    check-cast v1, Lhnw;

    sget-object v2, Lhnw;->h:Lhnw;

    invoke-virtual {v1, v2}, Lhnw;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v0, v0, Ljes;->a:Ljava/lang/Object;

    check-cast v0, Lhos;

    invoke-virtual {v0}, Lhos;->d()V

    :cond_8
    :goto_2
    new-instance v0, Lhnx;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lhnx;-><init>(Lhny;Lbkc;I[B[B[B)V

    return-object v0
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lhny;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lhny;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lhny;->o:Lken;

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1, v2}, Lken;->m(ZZZ)V

    iget-object v0, p0, Lhny;->k:Lhpq;

    invoke-virtual {v0, v1}, Lhpq;->h(Z)V

    return-void
.end method

.method public final d(Z)V
    .locals 4

    iget-object v0, p0, Lhny;->g:Ldhi;

    sget-object v1, Ldil;->g:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lhny;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, p1, :cond_1

    if-nez p1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lhny;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v2, 0x0

    :goto_0
    iget-object v0, p0, Lhny;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz p1, :cond_3

    iget-object v0, p0, Lhny;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lhny;->o:Lken;

    invoke-static {}, Lkfh;->a()Lkff;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lkff;->c(I)V

    invoke-virtual {v2, v1}, Lkff;->b(I)V

    invoke-virtual {v2, v1}, Lkff;->e(I)V

    invoke-virtual {v2}, Lkff;->a()Lkfh;

    move-result-object v2

    invoke-interface {v0, v2}, Lken;->k(Lkfh;)V

    iget-object v0, p0, Lhny;->r:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_2

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_2
    iget-object v0, p0, Lhny;->j:Lccg;

    iget-object v1, p0, Lhny;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lccg;->c(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    iget-object v0, p0, Lhny;->v:Ldqx;

    iget-object v0, v0, Ldqx;->d:Ljava/lang/Object;

    check-cast v0, Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Lhny;->b(ZZ)V

    :cond_4
    :goto_1
    iget-object v0, p0, Lhny;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lhny;->k:Lhpq;

    invoke-virtual {v0, p1}, Lhpq;->h(Z)V

    :cond_5
    return-void
.end method
