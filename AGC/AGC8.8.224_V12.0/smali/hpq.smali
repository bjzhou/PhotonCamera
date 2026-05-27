.class public final Lhpq;
.super Ljava/lang/Object;


# instance fields
.field public final A:Liov;

.field public final B:Lifj;

.field public final C:Lenz;

.field public final D:Lipk;

.field public final E:Landroid/animation/Animator$AnimatorListener;

.field public F:Landroid/widget/FrameLayout;

.field public G:Landroid/view/ViewGroup;

.field public H:Licf;

.field public I:Landroid/animation/ObjectAnimator;

.field public final J:Lczy;

.field public K:Lcty;

.field public L:Ljava/util/concurrent/ScheduledFuture;

.field public M:Landroid/widget/TextView;

.field public N:Lhpu;

.field public O:Landroid/view/View;

.field public P:Landroid/view/View;

.field public Q:Landroid/view/ViewGroup;

.field public R:Landroid/view/ViewGroup;

.field public S:Landroid/view/ViewGroup;

.field public T:I

.field public U:Lhpt;

.field public V:Ljes;

.field public final W:Ldja;

.field private final X:Lmrl;

.field private Y:Licf;

.field private Z:Licf;

.field public final a:Ljwb;

.field public final b:Ljava/util/concurrent/atomic/AtomicLong;

.field public final c:Lcom/google/android/apps/camera/bottombar/BottomBarController;

.field public final d:Ldbf;

.field public final e:Lihg;

.field public final f:Landroid/content/Context;

.field public final g:Lhwu;

.field public final h:Lhxb;

.field public final i:Ldhi;

.field public final j:Ljuf;

.field public final k:Ljuh;

.field public final l:Lell;

.field public final m:Lczq;

.field public final n:Lczx;

.field public final o:Ljava/util/concurrent/ScheduledExecutorService;

.field public final p:Liff;

.field public final q:Leoa;

.field public final r:Lcgy;

.field public final s:Ljwb;

.field public final t:Ljwb;

.field public final u:Loiw;

.field public final v:Lhrq;

.field public final w:Litm;

.field public final x:Lmqp;

.field public final y:Lgft;

.field public final z:Lcom/google/android/apps/camera/bottombar/BottomBarListener;


# direct methods
.method public constructor <init>(Ljew;Lcom/google/android/apps/camera/bottombar/BottomBarController;Ldbf;Lihg;Landroid/content/Context;Lhwu;Lhxb;Ldhi;Ljuf;Ljwb;Ljwb;Ljwb;Ljuh;Lell;Liov;Ljava/util/concurrent/ScheduledExecutorService;Liff;Leoa;Litm;Lcgy;Lczq;Lczx;Loiw;Lipk;Lhrq;Ldja;Lmqp;Ljwb;Lgft;Lmrl;[B[B[B)V
    .locals 7

    move-object v0, p0

    move-object v1, p7

    move-object/from16 v2, p19

    move-object/from16 v3, p28

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v5, 0x0

    invoke-direct {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v4, v0, Lhpq;->b:Ljava/util/concurrent/atomic/AtomicLong;

    move-object v4, p2

    iput-object v4, v0, Lhpq;->c:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    move-object v4, p3

    iput-object v4, v0, Lhpq;->d:Ldbf;

    move-object v4, p4

    iput-object v4, v0, Lhpq;->e:Lihg;

    move-object v4, p5

    iput-object v4, v0, Lhpq;->f:Landroid/content/Context;

    iput-object v1, v0, Lhpq;->h:Lhxb;

    move-object v4, p8

    iput-object v4, v0, Lhpq;->i:Ldhi;

    move-object/from16 v4, p13

    iput-object v4, v0, Lhpq;->k:Ljuh;

    move-object/from16 v4, p14

    iput-object v4, v0, Lhpq;->l:Lell;

    move-object/from16 v4, p15

    iput-object v4, v0, Lhpq;->A:Liov;

    move-object/from16 v4, p16

    iput-object v4, v0, Lhpq;->o:Ljava/util/concurrent/ScheduledExecutorService;

    move-object/from16 v4, p17

    iput-object v4, v0, Lhpq;->p:Liff;

    move-object/from16 v4, p9

    iput-object v4, v0, Lhpq;->j:Ljuf;

    move-object/from16 v4, p18

    iput-object v4, v0, Lhpq;->q:Leoa;

    move-object/from16 v4, p20

    iput-object v4, v0, Lhpq;->r:Lcgy;

    move-object/from16 v4, p21

    iput-object v4, v0, Lhpq;->m:Lczq;

    move-object/from16 v4, p22

    iput-object v4, v0, Lhpq;->n:Lczx;

    move-object/from16 v4, p23

    iput-object v4, v0, Lhpq;->u:Loiw;

    move-object/from16 v4, p10

    iput-object v4, v0, Lhpq;->s:Ljwb;

    move-object/from16 v4, p11

    iput-object v4, v0, Lhpq;->t:Ljwb;

    move-object v4, p6

    iput-object v4, v0, Lhpq;->g:Lhwu;

    move-object/from16 v4, p24

    iput-object v4, v0, Lhpq;->D:Lipk;

    move-object/from16 v4, p25

    iput-object v4, v0, Lhpq;->v:Lhrq;

    invoke-interface/range {p12 .. p12}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lhpt;

    iput-object v4, v0, Lhpq;->U:Lhpt;

    iput-object v2, v0, Lhpq;->w:Litm;

    move-object/from16 v4, p26

    iput-object v4, v0, Lhpq;->W:Ldja;

    move-object/from16 v4, p27

    iput-object v4, v0, Lhpq;->x:Lmqp;

    iput-object v3, v0, Lhpq;->a:Ljwb;

    move-object/from16 v4, p29

    iput-object v4, v0, Lhpq;->y:Lgft;

    move-object/from16 v4, p30

    iput-object v4, v0, Lhpq;->X:Lmrl;

    new-instance v4, Lhpk;

    invoke-direct {v4, p0}, Lhpk;-><init>(Lhpq;)V

    iput-object v4, v0, Lhpq;->z:Lcom/google/android/apps/camera/bottombar/BottomBarListener;

    new-instance v4, Lhpl;

    const/4 v5, 0x0

    move-object v6, p1

    invoke-direct {v4, p0, p1, v5}, Lhpl;-><init>(Lhpq;Ljew;[B)V

    iput-object v4, v0, Lhpq;->B:Lifj;

    new-instance v4, Lhpm;

    invoke-direct {v4, p0, v2}, Lhpm;-><init>(Lhpq;Litm;)V

    iput-object v4, v0, Lhpq;->C:Lenz;

    new-instance v2, Lhpj;

    invoke-direct {v2, p0, v3, p7}, Lhpj;-><init>(Lhpq;Ljwb;Lhxb;)V

    iput-object v2, v0, Lhpq;->J:Lczy;

    new-instance v1, Lhpn;

    invoke-direct {v1, p0}, Lhpn;-><init>(Lhpq;)V

    iput-object v1, v0, Lhpq;->E:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    iget-object v0, p0, Lhpq;->p:Liff;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Liff;->G(Z)V

    return-void
.end method

.method final b()V
    .locals 2

    iget-object v0, p0, Lhpq;->p:Liff;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Liff;->G(Z)V

    return-void
.end method

.method public final c(Z)V
    .locals 3

    iget-object v0, p0, Lhpq;->L:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lhpq;->L:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    iget-object v0, p0, Lhpq;->k:Ljuh;

    new-instance v1, Lbnd;

    const/16 v2, 0x11

    invoke-direct {v1, p0, p1, v2}, Lbnd;-><init>(Lhpq;ZI)V

    invoke-virtual {v0, v1}, Ljuh;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d(F)V
    .locals 3

    iget-object v0, p0, Lhpq;->k:Ljuh;

    new-instance v1, Leug;

    const/4 v2, 0x4

    invoke-direct {v1, p0, p1, v2}, Leug;-><init>(Lhpq;FI)V

    invoke-virtual {v0, v1}, Ljuh;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lhpq;->c:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->setSnapshotButtonClickEnabled(Z)V

    return-void
.end method

.method public final f()V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lhpq;->c(Z)V

    invoke-virtual {p0}, Lhpq;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhpq;->i:Ldhi;

    sget-object v1, Ldil;->a:Ldhj;

    invoke-interface {v0}, Ldhi;->c()V

    iget-object v0, p0, Lhpq;->o:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lhph;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lhph;-><init>(Lhpq;I)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v3, 0xea60

    invoke-interface {v0, v1, v3, v4, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lhpq;->L:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method

.method final g(Z)V
    .locals 9

    iget-object v5, p0, Lhpq;->f:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    if-eq v1, p1, :cond_0

    const p1, 0x7f14057e

    goto :goto_0

    :cond_0
    const p1, 0x7f14057d

    :goto_0
    const/4 v1, 0x0

    const/16 v2, 0xbb8

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/16 v8, 0xc

    move v0, v1

    move v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, p1

    invoke-static/range {v0 .. v8}, Ljpw;->k(ZILandroid/view/View$OnClickListener;Lice;Ljava/lang/String;Landroid/content/Context;ZII)Licf;

    move-result-object p1

    iput-object p1, p0, Lhpq;->Z:Licf;

    iget-object v0, p0, Lhpq;->l:Lell;

    invoke-interface {v0, p1}, Lell;->d(Lelk;)Lkad;

    return-void
.end method

.method final h(Z)V
    .locals 10

    iget-object v0, p0, Lhpq;->i:Ldhi;

    sget-object v1, Ldil;->g:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lhpq;->Y:Licf;

    if-nez v0, :cond_1

    iget-object v6, p0, Lhpq;->f:Landroid/content/Context;

    const/4 v1, 0x1

    const/16 v2, 0xbb8

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f140368

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x2

    invoke-static/range {v1 .. v9}, Ljpw;->k(ZILandroid/view/View$OnClickListener;Lice;Ljava/lang/String;Landroid/content/Context;ZII)Licf;

    move-result-object v0

    iput-object v0, p0, Lhpq;->Y:Licf;

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lhpq;->k()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lhpq;->d:Ldbf;

    invoke-virtual {p1}, Ldbf;->i()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lhpq;->l:Lell;

    iget-object v0, p0, Lhpq;->Y:Licf;

    invoke-interface {p1, v0}, Lell;->d(Lelk;)Lkad;

    return-void

    :cond_2
    iget-object p1, p0, Lhpq;->l:Lell;

    iget-object v0, p0, Lhpq;->Y:Licf;

    invoke-interface {p1, v0}, Lell;->g(Lelk;)V

    return-void
.end method

.method final i()V
    .locals 3

    iget-object v0, p0, Lhpq;->k:Ljuh;

    new-instance v1, Lhph;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lhph;-><init>(Lhpq;I)V

    invoke-virtual {v0, v1}, Ljuh;->c(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lhpq;->a:Ljwb;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v2}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v0, p0, Lhpq;->v:Lhrq;

    invoke-virtual {v0, v1}, Lhrq;->d(Z)V

    invoke-virtual {p0}, Lhpq;->f()V

    iget-object v0, p0, Lhpq;->U:Lhpt;

    sget-object v1, Lhpt;->a:Lhpt;

    invoke-virtual {v0, v1}, Lhpt;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhpq;->n:Lczx;

    invoke-interface {v0}, Lczx;->c()V

    iget-object v0, p0, Lhpq;->X:Lmrl;

    invoke-interface {v0}, Lmrl;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyt;

    iget-object v0, v0, Lhyt;->a:Lhys;

    iget-object v1, v0, Lhys;->i:Lhyn;

    iget-object v0, v0, Lhys;->g:Liko;

    invoke-static {v1, v0}, Lbze;->af(Lhyn;Liko;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhpq;->w:Litm;

    invoke-interface {v0}, Litm;->ab()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lhpq;->n:Lczx;

    invoke-interface {v0}, Lczx;->d()V

    iget-object v0, p0, Lhpq;->i:Ldhi;

    sget-object v1, Ldil;->h:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhpq;->n:Lczx;

    invoke-interface {v0}, Lczx;->l()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lhpq;->n:Lczx;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lczx;->h(Z)V

    return-void
.end method

.method public final j()V
    .locals 3

    iget-object v0, p0, Lhpq;->k:Ljuh;

    new-instance v1, Lhph;

    const/16 v2, 0x8

    invoke-direct {v1, p0, v2}, Lhph;-><init>(Lhpq;I)V

    invoke-virtual {v0, v1}, Ljuh;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method final k()Z
    .locals 1

    iget-object v0, p0, Lhpq;->a:Ljwb;

    invoke-interface {v0}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
