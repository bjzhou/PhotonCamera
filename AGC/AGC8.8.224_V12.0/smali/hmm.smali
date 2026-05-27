.class public final Lhmm;
.super Ljava/lang/Object;

# interfaces
.implements Lhms;
.implements Lhrb;


# instance fields
.field public A:I

.field public final B:Lmvq;

.field private final C:Ljwb;

.field private final D:Lell;

.field private final E:Lgeh;

.field private final F:Ljuh;

.field private final G:Ldbf;

.field private final H:Landroid/os/Handler;

.field private I:Landroid/content/Context;

.field private J:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;

.field private K:Licf;

.field private L:Licf;

.field private M:I

.field private N:Licf;

.field private final O:Ljava/lang/Object;

.field public final a:Ljwb;

.field public final b:Ljwb;

.field public final c:Ljvs;

.field public final d:Ljwb;

.field public final e:Lcfp;

.field public final f:Lhmp;

.field public final g:Lhna;

.field public final h:Lhnb;

.field public final i:Lfbz;

.field public final j:Ldhi;

.field public final k:Lmqp;

.field public final l:Lgzn;

.field public final m:Lgzm;

.field public n:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

.field public o:Licf;

.field public p:Lhmu;

.field public q:Lmqp;

.field public r:Z

.field public s:Z

.field public t:I

.field public u:I

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:Lhmu;


# direct methods
.method public constructor <init>(Ljwb;Ljwb;Ljwb;Ljvs;Ljwb;Lcfp;Lell;Lhmp;Ldbf;Lhnb;Lhna;Lfbz;Ldhi;Lmqp;Lgeh;Lgzn;Lgzm;Ljuh;)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, Lhmm;->p:Lhmu;

    iput-object v1, v0, Lhmm;->q:Lmqp;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lhmm;->r:Z

    iput-boolean v1, v0, Lhmm;->s:Z

    iput v1, v0, Lhmm;->t:I

    iput v1, v0, Lhmm;->u:I

    iput-boolean v1, v0, Lhmm;->v:Z

    iput-boolean v1, v0, Lhmm;->w:Z

    iput-boolean v1, v0, Lhmm;->x:Z

    iput-boolean v1, v0, Lhmm;->y:Z

    iput v1, v0, Lhmm;->A:I

    iput v1, v0, Lhmm;->M:I

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lhmm;->O:Ljava/lang/Object;

    invoke-static {}, Lmvv;->e()Lmvq;

    move-result-object v1

    iput-object v1, v0, Lhmm;->B:Lmvq;

    move-object v1, p1

    iput-object v1, v0, Lhmm;->a:Ljwb;

    move-object v2, p2

    iput-object v2, v0, Lhmm;->b:Ljwb;

    move-object v2, p3

    iput-object v2, v0, Lhmm;->C:Ljwb;

    move-object v2, p4

    iput-object v2, v0, Lhmm;->c:Ljvs;

    move-object v2, p5

    iput-object v2, v0, Lhmm;->d:Ljwb;

    move-object v2, p6

    iput-object v2, v0, Lhmm;->e:Lcfp;

    move-object v2, p7

    iput-object v2, v0, Lhmm;->D:Lell;

    move-object v2, p8

    iput-object v2, v0, Lhmm;->f:Lhmp;

    move-object v2, p11

    iput-object v2, v0, Lhmm;->g:Lhna;

    move-object v2, p10

    iput-object v2, v0, Lhmm;->h:Lhnb;

    move-object v2, p12

    iput-object v2, v0, Lhmm;->i:Lfbz;

    move-object/from16 v2, p13

    iput-object v2, v0, Lhmm;->j:Ldhi;

    move-object/from16 v2, p14

    iput-object v2, v0, Lhmm;->k:Lmqp;

    move-object/from16 v2, p15

    iput-object v2, v0, Lhmm;->E:Lgeh;

    move-object/from16 v2, p16

    iput-object v2, v0, Lhmm;->l:Lgzn;

    move-object/from16 v2, p17

    iput-object v2, v0, Lhmm;->m:Lgzm;

    move-object/from16 v2, p18

    iput-object v2, v0, Lhmm;->F:Ljuh;

    move-object v2, p9

    iput-object v2, v0, Lhmm;->G:Ldbf;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v2}, Ljvd;->o(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v2

    iput-object v2, v0, Lhmm;->H:Landroid/os/Handler;

    invoke-interface {p1}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhmu;

    iput-object v1, v0, Lhmm;->z:Lhmu;

    return-void
.end method

.method private final w(IZ)Licf;
    .locals 9

    const/16 v1, 0xbb8

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lhmm;->I:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lhmm;->I:Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/16 v8, 0xc

    move v0, p2

    invoke-static/range {v0 .. v8}, Ljpw;->k(ZILandroid/view/View$OnClickListener;Lice;Ljava/lang/String;Landroid/content/Context;ZII)Licf;

    move-result-object p1

    return-object p1
.end method

.method private final x(Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {}, Ljuh;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    iget-object v0, p0, Lhmm;->H:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final y(Lmqp;Lhmt;ZZ)V
    .locals 7

    new-instance v6, Lhmk;

    move-object v0, v6

    move-object v1, p0

    move v2, p3

    move v3, p4

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lhmk;-><init>(Lhmm;ZZLhmt;Lmqp;)V

    invoke-direct {p0, v6}, Lhmm;->x(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final a(Lika;)Lkad;
    .locals 5

    iget-object v0, p0, Lhmm;->G:Ldbf;

    invoke-virtual {v0}, Ldbf;->i()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lgnl;->d:Lgnl;

    return-object p1

    :cond_0
    new-instance v0, Ljuf;

    invoke-direct {v0}, Ljuf;-><init>()V

    const v1, 0x7f140525

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lhmm;->w(IZ)Licf;

    move-result-object v1

    iput-object v1, p0, Lhmm;->K:Licf;

    const v1, 0x7f140524

    invoke-direct {p0, v1, v2}, Lhmm;->w(IZ)Licf;

    move-result-object v1

    iput-object v1, p0, Lhmm;->L:Licf;

    const v1, 0x7f140521

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lhmm;->w(IZ)Licf;

    move-result-object v1

    iput-object v1, p0, Lhmm;->o:Licf;

    iget-object v1, p0, Lhmm;->e:Lcfp;

    iput-boolean v2, v1, Lcfp;->a:Z

    iget-object v1, p0, Lhmm;->k:Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhrd;

    sget-object v2, Lhrc;->b:Lhrc;

    invoke-interface {v1, v2, p0}, Lhrd;->b(Lhrc;Lhrb;)V

    :cond_1
    iget-object v1, p0, Lhmm;->J:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;

    new-instance v2, Lgfm;

    const/4 v4, 0x5

    invoke-direct {v2, p0, p1, v4}, Lgfm;-><init>(Lhmm;Lika;I)V

    invoke-virtual {v1, v2}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lhmm;->b:Ljwb;

    new-instance v1, Lhml;

    invoke-direct {v1, p0, v3}, Lhml;-><init>(Lhmm;I)V

    iget-object v2, p0, Lhmm;->F:Ljuh;

    invoke-interface {p1, v1, v2}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljuf;->d(Lkad;)V

    iget-object p1, p0, Lhmm;->j:Ldhi;

    sget-object v1, Ldho;->ce:Ldhj;

    invoke-interface {p1, v1}, Ldhi;->l(Ldhj;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lhmm;->a:Ljwb;

    new-instance v1, Lhml;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lhml;-><init>(Lhmm;I)V

    iget-object v2, p0, Lhmm;->F:Ljuh;

    invoke-interface {p1, v1, v2}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljuf;->d(Lkad;)V

    :cond_2
    iget-object p1, p0, Lhmm;->j:Ldhi;

    invoke-interface {p1}, Ldhi;->e()V

    iget-object p1, p0, Lhmm;->C:Ljwb;

    new-instance v1, Lhml;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lhml;-><init>(Lhmm;I)V

    iget-object v2, p0, Lhmm;->F:Ljuh;

    invoke-interface {p1, v1, v2}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljuf;->d(Lkad;)V

    iget-object p1, p0, Lhmm;->j:Ldhi;

    sget-object v1, Ldho;->ch:Ldhj;

    invoke-interface {p1, v1}, Ldhi;->l(Ldhj;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lhmm;->d:Ljwb;

    new-instance v1, Lhml;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lhml;-><init>(Lhmm;I)V

    iget-object v2, p0, Lhmm;->F:Ljuh;

    invoke-interface {p1, v1, v2}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljuf;->d(Lkad;)V

    :cond_3
    new-instance p1, Lgss;

    const/16 v1, 0xc

    invoke-direct {p1, p0, v0, v1}, Lgss;-><init>(Lhmm;Ljuf;I)V

    return-object p1
.end method

.method public final b()V
    .locals 1

    iget-boolean v0, p0, Lhmm;->w:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhmm;->w:Z

    sget-object v0, Lmpx;->a:Lmpx;

    invoke-virtual {p0, v0}, Lhmm;->m(Lmqp;)V

    return-void
.end method

.method public final c(Lhrc;)V
    .locals 1

    sget-object v0, Lhrc;->c:Lhrc;

    invoke-virtual {p1, v0}, Lhrc;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lhmm;->w:Z

    invoke-virtual {p0}, Lhmm;->f()V

    return-void
.end method

.method public final d(Lmqp;)V
    .locals 3

    iget-object v0, p0, Lhmm;->n:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lhmm;->k:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lhmm;->v:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrd;

    sget-object v1, Lhrc;->b:Lhrc;

    invoke-interface {v0, v1}, Lhrd;->k(Lhrc;)Z

    iget-object v0, p0, Lhmm;->k:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrd;

    sget-object v1, Lhrc;->b:Lhrc;

    invoke-interface {v0, v1}, Lhrd;->j(Lhrc;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lhmm;->v:Z

    :cond_0
    sget-object v0, Lmpx;->a:Lmpx;

    iget-object v1, p0, Lhmm;->q:Lmqp;

    if-eqz v1, :cond_1

    invoke-virtual {p1, v1}, Lmqp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lhmm;->n:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    iget-object v1, v1, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->h:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v0, p0, Lhmm;->n:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->h(Lmqp;)Likz;

    move-result-object v0

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    :cond_2
    iget-object v1, p0, Lhmm;->j:Ldhi;

    sget-object v2, Ldho;->ch:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Likz;

    invoke-interface {v0}, Likz;->a()Lnou;

    move-result-object v0

    new-instance v1, Lhma;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lhma;-><init>(Lhmm;I)V

    iget-object v2, p0, Lhmm;->F:Ljuh;

    invoke-interface {v0, v1, v2}, Lnou;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lhmm;->n:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->A()V

    :cond_4
    :goto_0
    iput-object p1, p0, Lhmm;->q:Lmqp;

    return-void

    :cond_5
    return-void
.end method

.method public final e()V
    .locals 3

    iget-object v0, p0, Lhmm;->n:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lhmm;->q:Lmqp;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->i()Likz;

    move-result-object v0

    invoke-interface {v0}, Likz;->a()Lnou;

    move-result-object v0

    new-instance v1, Lhma;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lhma;-><init>(Lhmm;I)V

    iget-object v2, p0, Lhmm;->F:Ljuh;

    invoke-interface {v0, v1, v2}, Lnou;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 2

    new-instance v0, Lhma;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lhma;-><init>(Lhmm;I)V

    invoke-direct {p0, v0}, Lhmm;->x(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lhmm;->i()V

    return-void
.end method

.method public final g()V
    .locals 3

    iget-object v0, p0, Lhmm;->O:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lhmm;->N:Licf;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lhmm;->D:Lell;

    invoke-interface {v2, v1}, Lell;->g(Lelk;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lhmm;->N:Licf;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final h()V
    .locals 5

    iget-object v0, p0, Lhmm;->j:Ldhi;

    sget-object v1, Ldho;->cg:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lhmm;->A:I

    if-eqz v0, :cond_1

    iget v1, p0, Lhmm;->M:I

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lhmm;->E:Lgeh;

    const-class v3, Lhmm;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v4, v0, v1, v3}, Lgeh;->v(ZIILjava/lang/String;)V

    iput v4, p0, Lhmm;->A:I

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public final i()V
    .locals 1

    iget-object v0, p0, Lhmm;->f:Lhmp;

    invoke-virtual {v0}, Lhdo;->c()V

    invoke-virtual {p0}, Lhmm;->g()V

    return-void
.end method

.method public final j()V
    .locals 1

    iget v0, p0, Lhmm;->t:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lhmm;->t:I

    return-void
.end method

.method public final k(Landroid/view/View;Landroid/content/Context;)V
    .locals 0

    iput-object p2, p0, Lhmm;->I:Landroid/content/Context;

    iget-object p2, p0, Lhmm;->n:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    if-nez p2, :cond_0

    check-cast p1, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    iput-object p1, p0, Lhmm;->n:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    iget-object p1, p1, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->h:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;

    iput-object p1, p0, Lhmm;->J:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;

    :cond_0
    return-void
.end method

.method public final l()V
    .locals 3

    iget-boolean v0, p0, Lhmm;->x:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhmm;->x:Z

    iget-object v0, p0, Lhmm;->a:Ljwb;

    invoke-interface {v0}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhmu;

    sget-object v1, Lhmu;->b:Lhmu;

    invoke-virtual {v0, v1}, Lhmu;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lhmu;->b:Lhmu;

    iput-object v0, p0, Lhmm;->p:Lhmu;

    iget-object v0, p0, Lhmm;->a:Ljwb;

    iget-object v1, p0, Lhmm;->b:Ljwb;

    invoke-interface {v1}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhmt;

    sget-object v2, Lhmt;->b:Lhmt;

    invoke-virtual {v1, v2}, Lhmt;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lhmu;->c:Lhmu;

    goto :goto_0

    :cond_1
    sget-object v1, Lhmu;->a:Lhmu;

    :goto_0
    invoke-interface {v0, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final m(Lmqp;)V
    .locals 3

    iget-object v0, p0, Lhmm;->b:Ljwb;

    invoke-interface {v0}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhmt;

    iget-object v1, p0, Lhmm;->c:Ljvs;

    invoke-interface {v1}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lhmm;->c:Ljvs;

    invoke-interface {v2}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Lhmm;->y(Lmqp;Lhmt;ZZ)V

    return-void
.end method

.method public final n(ZLmqp;)V
    .locals 2

    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    const-string v1, "TQ2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lhmm;->s:Z

    iput-boolean p1, p0, Lhmm;->s:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-object p1, p0, Lhmm;->b:Ljwb;

    invoke-interface {p1}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lhmt;

    iget-object v0, p0, Lhmm;->c:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, p2, p1, v0}, Lhmm;->u(Lmqp;Lhmt;Z)V

    :cond_0
    return-void

    :cond_1
    iput-boolean p1, p0, Lhmm;->s:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lhmm;->b:Ljwb;

    invoke-interface {p1}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lhmt;

    iget-object v0, p0, Lhmm;->c:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, p2, p1, v0}, Lhmm;->u(Lmqp;Lhmt;Z)V

    :cond_2
    return-void
.end method

.method public final o(Z)V
    .locals 0

    iput-boolean p1, p0, Lhmm;->y:Z

    return-void
.end method

.method public final p(Lhmu;)V
    .locals 1

    sget-object v0, Lhmu;->c:Lhmu;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lhmm;->K:Licf;

    invoke-virtual {p0, p1}, Lhmm;->q(Licf;)V

    return-void

    :cond_0
    sget-object v0, Lhmu;->a:Lhmu;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lhmm;->L:Licf;

    invoke-virtual {p0, p1}, Lhmm;->q(Licf;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lhmm;->g()V

    return-void
.end method

.method public final q(Licf;)V
    .locals 2

    iget-object v0, p0, Lhmm;->O:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v1, p0, Lhmm;->N:Licf;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lhmm;->g()V

    iput-object p1, p0, Lhmm;->N:Licf;

    iget-object v1, p0, Lhmm;->D:Lell;

    invoke-interface {v1, p1}, Lell;->d(Lelk;)Lkad;

    monitor-exit v0

    return-void

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final declared-synchronized r(Lhmu;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lhmm;->j:Ldhi;

    sget-object v1, Ldho;->cg:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lhmu;->c:Lhmu;

    invoke-virtual {p1, v0}, Lhmu;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const p1, 0x7f080225

    goto :goto_0

    :cond_1
    sget-object v0, Lhmu;->b:Lhmu;

    invoke-virtual {p1, v0}, Lhmu;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x7f080222

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iget v0, p0, Lhmm;->A:I

    if-eq p1, v0, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lhmm;->h()V

    iget-object v0, p0, Lhmm;->E:Lgeh;

    const-class v1, Lhmm;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f140520

    const/4 v3, 0x1

    invoke-interface {v0, v3, p1, v2, v1}, Lgeh;->v(ZIILjava/lang/String;)V

    iput p1, p0, Lhmm;->A:I

    iput v2, p0, Lhmm;->M:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final s()V
    .locals 2

    iget-boolean v0, p0, Lhmm;->x:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lhmm;->y:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lhmm;->p:Lhmu;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lhmm;->a:Ljwb;

    invoke-interface {v1}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhmu;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lhmm;->a:Ljwb;

    iget-object v1, p0, Lhmm;->p:Lhmu;

    invoke-interface {v0, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lhmm;->p:Lhmu;

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhmm;->x:Z

    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method public final t()V
    .locals 5

    iget-object v0, p0, Lhmm;->n:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    iget-object v1, p0, Lhmm;->c:Ljvs;

    invoke-interface {v1}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget-object v1, p0, Lhmm;->b:Ljwb;

    invoke-interface {v1}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhmt;

    sget-object v3, Lhmt;->e:Lhmt;

    invoke-virtual {v1, v3}, Lhmt;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    :goto_0
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->u(F)V

    const/4 v1, 0x0

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->i:Ldwa;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f06095b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-interface {v2, v3}, Ldwa;->j(I)V

    iget-object v2, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->e:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

    invoke-virtual {v2}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->invalidate()V

    iget-object v2, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->h:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;

    invoke-virtual {v2}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f140523

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->h:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;

    invoke-virtual {v2}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080226

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->h:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;

    invoke-virtual {v0, v1}, Liq;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_2
    iget-object v2, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->i:Ldwa;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x106000b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-interface {v2, v3}, Ldwa;->j(I)V

    iget-object v2, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->e:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

    invoke-virtual {v2}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->invalidate()V

    iget-object v2, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->h:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;

    invoke-virtual {v2}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f140522

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->h:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;

    invoke-virtual {v2}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080224

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->h:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;

    invoke-virtual {v0, v1}, Liq;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final u(Lmqp;Lhmt;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lhmm;->y(Lmqp;Lhmt;ZZ)V

    return-void
.end method

.method public final v()Z
    .locals 1

    iget-boolean v0, p0, Lhmm;->y:Z

    return v0
.end method
