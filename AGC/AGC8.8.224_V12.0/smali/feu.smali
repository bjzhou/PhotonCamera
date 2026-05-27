.class public final Lfeu;
.super Ljava/lang/Object;


# instance fields
.field private final A:Lhsl;

.field public final a:Liff;

.field public final b:Litm;

.field public final c:Lhxb;

.field public final d:Libj;

.field public final e:Ljava/util/concurrent/ScheduledExecutorService;

.field public final f:Landroid/os/Handler;

.field public final g:Lcom/google/android/apps/camera/bottombar/BottomBarController;

.field public final h:Lgeh;

.field public final i:Liec;

.field public final j:Lgft;

.field public final k:Ljuh;

.field public final l:Ldhi;

.field public m:Ljuf;

.field public volatile n:Ljava/util/concurrent/ScheduledFuture;

.field public o:Z

.field public p:Z

.field public q:Z

.field public final r:Z

.field public final s:Ljava/util/concurrent/atomic/AtomicReference;

.field public final t:Lhrq;

.field public final u:Ldfb;

.field public final v:Lijx;

.field public final w:Llij;

.field private final x:Lhgy;

.field private final y:Lfga;

.field private final z:Lfbz;


# direct methods
.method public constructor <init>(Ldhi;Lgeh;Lcom/google/android/apps/camera/bottombar/BottomBarController;Liff;Lijx;Litm;Lhxb;Ljava/util/concurrent/atomic/AtomicBoolean;Libj;Ljava/util/concurrent/ScheduledExecutorService;Lhgy;Liec;Lgft;Lfga;Llij;Ljuh;Ldfb;Lfbz;Lhrq;Lhsl;[B[B[B[B)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljuf;

    invoke-direct {v3}, Ljuf;-><init>()V

    iput-object v3, v0, Lfeu;->m:Ljuf;

    const/4 v3, 0x0

    iput-object v3, v0, Lfeu;->n:Ljava/util/concurrent/ScheduledFuture;

    const/4 v3, 0x0

    iput-boolean v3, v0, Lfeu;->o:Z

    iput-boolean v3, v0, Lfeu;->p:Z

    iput-boolean v3, v0, Lfeu;->q:Z

    new-instance v4, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v4, v0, Lfeu;->s:Ljava/util/concurrent/atomic/AtomicReference;

    move-object v4, p2

    iput-object v4, v0, Lfeu;->h:Lgeh;

    move-object v4, p3

    iput-object v4, v0, Lfeu;->g:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    iput-object v2, v0, Lfeu;->a:Liff;

    move-object v4, p7

    iput-object v4, v0, Lfeu;->c:Lhxb;

    move-object/from16 v4, p9

    iput-object v4, v0, Lfeu;->d:Libj;

    move-object/from16 v4, p10

    iput-object v4, v0, Lfeu;->e:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-static {v4}, Ljvd;->o(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v4

    iput-object v4, v0, Lfeu;->f:Landroid/os/Handler;

    move-object/from16 v4, p11

    iput-object v4, v0, Lfeu;->x:Lhgy;

    move-object/from16 v4, p12

    iput-object v4, v0, Lfeu;->i:Liec;

    move-object/from16 v4, p13

    iput-object v4, v0, Lfeu;->j:Lgft;

    move-object/from16 v4, p14

    iput-object v4, v0, Lfeu;->y:Lfga;

    move-object v5, p6

    iput-object v5, v0, Lfeu;->b:Litm;

    move-object/from16 v5, p15

    iput-object v5, v0, Lfeu;->w:Llij;

    move-object v5, p5

    iput-object v5, v0, Lfeu;->v:Lijx;

    move-object/from16 v6, p16

    iput-object v6, v0, Lfeu;->k:Ljuh;

    move-object/from16 v6, p18

    iput-object v6, v0, Lfeu;->z:Lfbz;

    move-object/from16 v6, p17

    iput-object v6, v0, Lfeu;->u:Ldfb;

    move-object/from16 v6, p19

    iput-object v6, v0, Lfeu;->t:Lhrq;

    iput-object v1, v0, Lfeu;->l:Ldhi;

    move-object/from16 v6, p20

    iput-object v6, v0, Lfeu;->A:Lhsl;

    sget-object v6, Ldhv;->n:Ldhj;

    invoke-interface {p1, v6}, Ldhi;->l(Ldhj;)Z

    move-result v6

    sget-object v7, Ldhv;->p:Ldhj;

    invoke-interface {p1, v7}, Ldhi;->l(Ldhj;)Z

    move-result v1

    iput-boolean v1, v0, Lfeu;->r:Z

    const/4 v7, 0x1

    if-nez v6, :cond_1

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    :goto_0
    invoke-interface {p4, v3}, Liff;->A(Z)V

    new-instance v1, Lfet;

    move-object/from16 p15, v1

    move-object/from16 p16, p0

    move-object/from16 p17, p5

    move/from16 p18, v6

    move-object/from16 p19, p8

    move-object/from16 p20, p14

    invoke-direct/range {p15 .. p20}, Lfet;-><init>(Lfeu;Lijx;ZLjava/util/concurrent/atomic/AtomicBoolean;Lfga;)V

    invoke-interface {p4, v1}, Liff;->B(Liek;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    iget-object v0, p0, Lfeu;->m:Ljuf;

    invoke-virtual {v0}, Ljuf;->close()V

    new-instance v0, Ljuf;

    invoke-direct {v0}, Ljuf;-><init>()V

    iput-object v0, p0, Lfeu;->m:Ljuf;

    iget-boolean v0, p0, Lfeu;->p:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lfeu;->r:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfeu;->v:Lijx;

    invoke-virtual {v0}, Lijx;->a()V

    iget-object v0, p0, Lfeu;->v:Lijx;

    iget-object v3, v0, Lijx;->c:Landroid/widget/ImageView;

    iget-object v4, v0, Lijx;->d:Landroid/content/res/Resources;

    const v5, 0x7f080219

    invoke-virtual {v4, v5, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, v0, Lijx;->b:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->bringToFront()V

    iput-boolean v2, v0, Lijx;->h:Z

    :cond_1
    iget-boolean v0, p0, Lfeu;->o:Z

    const/4 v3, 0x1

    if-nez v0, :cond_2

    iput-boolean v3, p0, Lfeu;->q:Z

    return-void

    :cond_2
    iget-object v0, p0, Lfeu;->n:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lfeu;->n:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    iput-object v1, p0, Lfeu;->n:Ljava/util/concurrent/ScheduledFuture;

    :cond_3
    iget-object v0, p0, Lfeu;->y:Lfga;

    invoke-virtual {v0}, Lfga;->b()V

    iget-object v1, v0, Lfga;->b:Lj$/util/Optional;

    invoke-virtual {v1}, Lj$/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lfga;->a:Ljwb;

    iget-object v4, v0, Lfga;->b:Lj$/util/Optional;

    invoke-virtual {v4}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-interface {v1, v4}, Ljwb;->bn(Ljava/lang/Object;)V

    :cond_4
    const/4 v1, 0x0

    iput v1, v0, Lfga;->c:F

    iput v1, v0, Lfga;->d:F

    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v4

    iput-object v4, v0, Lfga;->b:Lj$/util/Optional;

    iget-object v4, v0, Lfga;->f:Lnoc;

    invoke-virtual {v4}, Lnoc;->k()V

    iput v1, v0, Lfga;->e:F

    iget-object v0, p0, Lfeu;->c:Lhxb;

    invoke-interface {v0, v3}, Lhxb;->a(Z)V

    iget-object v0, p0, Lfeu;->t:Lhrq;

    invoke-virtual {v0, v2}, Lhrq;->d(Z)V

    iget-boolean v0, p0, Lfeu;->r:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lfeu;->v:Lijx;

    iget-boolean v0, v0, Lijx;->h:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lfeu;->z:Lfbz;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v1, 0x3

    invoke-interface {v0, v1, v4, v5}, Lfbz;->an(IJ)V

    iget-object v0, p0, Lfeu;->a:Liff;

    invoke-interface {v0}, Liff;->ac()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lfeu;->a:Liff;

    invoke-interface {v0}, Liff;->ab()V

    :goto_0
    iget-object v0, p0, Lfeu;->b:Litm;

    invoke-interface {v0, v2}, Litm;->q(Z)V

    iget-object v0, p0, Lfeu;->w:Llij;

    iget-object v0, v0, Llij;->d:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkad;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lkad;->close()V

    iget-object v0, p0, Lfeu;->g:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->stopLongShot()V

    iget-object v0, p0, Lfeu;->h:Lgeh;

    invoke-interface {v0}, Lgeh;->l()V

    iget-object v0, p0, Lfeu;->d:Libj;

    invoke-interface {v0, v3}, Libj;->v(Z)V

    iget-object v0, p0, Lfeu;->u:Ldfb;

    invoke-virtual {v0, v3}, Ldfb;->c(Z)V

    iget-object v0, p0, Lfeu;->k:Ljuh;

    iget-object v1, p0, Lfeu;->i:Liec;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lfcz;

    const/16 v4, 0x9

    invoke-direct {v3, v1, v4}, Lfcz;-><init>(Liec;I)V

    invoke-virtual {v0, v3}, Ljuh;->c(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lfeu;->i:Liec;

    invoke-interface {v0}, Liec;->f()V

    iget-object v0, p0, Lfeu;->x:Lhgy;

    const v1, 0x7f130030

    invoke-interface {v0, v1}, Lhgy;->b(I)V

    iget-object v0, p0, Lfeu;->A:Lhsl;

    sget-object v1, Likn;->e:Likn;

    invoke-interface {v0, v1}, Lhsl;->g(Likn;)V

    iget-object v0, p0, Lfeu;->j:Lgft;

    const-class v1, Lfeu;

    invoke-interface {v0, v1}, Lgft;->b(Ljava/lang/Class;)V

    iput-boolean v2, p0, Lfeu;->o:Z

    iput-boolean v2, p0, Lfeu;->q:Z

    iput-boolean v2, p0, Lfeu;->p:Z

    return-void
.end method
