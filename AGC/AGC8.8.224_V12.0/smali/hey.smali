.class public final Lhey;
.super Ljava/lang/Object;

# interfaces
.implements Lhfu;
.implements Lfaz;
.implements Lfal;
.implements Lfav;
.implements Lfay;
.implements Lfax;


# static fields
.field private static final t:Lnak;


# instance fields
.field private final A:Ldju;

.field private final B:Landroid/os/Handler;

.field private final C:Ljava/util/Set;

.field private D:Z

.field private final E:Lcvm;

.field private final F:Ligo;

.field public final a:Landroid/app/Activity;

.field public final b:Landroid/content/res/Resources;

.field public final c:Loiw;

.field public final d:Lhfs;

.field public final e:Lhel;

.field public final f:Lhtl;

.field public final g:Lchj;

.field public final h:Lgxi;

.field public final i:Ljvs;

.field public final j:Lcom/google/android/apps/camera/bottombar/BottomBar;

.field public final k:Lfak;

.field public final l:Ljuh;

.field public final m:Lgzm;

.field public final n:Lgzn;

.field public final o:Ljava/util/List;

.field public final p:Lhfv;

.field public q:I

.field public r:Ljava/lang/String;

.field public final s:Lcdi;

.field private final u:Lhfb;

.field private final v:Lgwf;

.field private final w:Lhgn;

.field private final x:Lhgd;

.field private final y:Z

.field private final z:Lgus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/socialshare/SocialShareControllerImpl"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lhey;->t:Lnak;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Loiw;Lhfs;Lhfb;Lgwf;Lhel;Lhtl;Lchj;Lgxi;Ljwb;Lcom/google/android/apps/camera/bottombar/BottomBar;Lfak;Lcdi;Lhgn;Lhgd;ZLgus;Ldju;Lcvm;Ljuh;Lgzm;Lgzn;Ligo;Landroid/os/Handler;[B[B[B)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, v0, Lhey;->C:Ljava/util/Set;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lhey;->o:Ljava/util/List;

    new-instance v1, Lhew;

    invoke-direct {v1, p0}, Lhew;-><init>(Lhey;)V

    iput-object v1, v0, Lhey;->p:Lhfv;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lhey;->D:Z

    iput v1, v0, Lhey;->q:I

    const-string v1, ""

    iput-object v1, v0, Lhey;->r:Ljava/lang/String;

    move-object v1, p1

    iput-object v1, v0, Lhey;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, v0, Lhey;->b:Landroid/content/res/Resources;

    move-object v1, p2

    iput-object v1, v0, Lhey;->c:Loiw;

    move-object v1, p3

    iput-object v1, v0, Lhey;->d:Lhfs;

    move-object v1, p4

    iput-object v1, v0, Lhey;->u:Lhfb;

    move-object v1, p5

    iput-object v1, v0, Lhey;->v:Lgwf;

    move-object v1, p6

    iput-object v1, v0, Lhey;->e:Lhel;

    move-object v1, p7

    iput-object v1, v0, Lhey;->f:Lhtl;

    move-object v1, p8

    iput-object v1, v0, Lhey;->g:Lchj;

    move-object v1, p9

    iput-object v1, v0, Lhey;->h:Lgxi;

    invoke-static {p10}, Ljvo;->c(Ljvs;)Ljvs;

    move-result-object v1

    iput-object v1, v0, Lhey;->i:Ljvs;

    move-object v1, p11

    iput-object v1, v0, Lhey;->j:Lcom/google/android/apps/camera/bottombar/BottomBar;

    move-object v1, p12

    iput-object v1, v0, Lhey;->k:Lfak;

    move-object v1, p13

    iput-object v1, v0, Lhey;->s:Lcdi;

    move-object/from16 v1, p14

    iput-object v1, v0, Lhey;->w:Lhgn;

    move-object/from16 v1, p15

    iput-object v1, v0, Lhey;->x:Lhgd;

    move/from16 v1, p16

    iput-boolean v1, v0, Lhey;->y:Z

    move-object/from16 v1, p17

    iput-object v1, v0, Lhey;->z:Lgus;

    move-object/from16 v1, p18

    iput-object v1, v0, Lhey;->A:Ldju;

    move-object/from16 v1, p19

    iput-object v1, v0, Lhey;->E:Lcvm;

    move-object/from16 v1, p20

    iput-object v1, v0, Lhey;->l:Ljuh;

    move-object/from16 v1, p21

    iput-object v1, v0, Lhey;->m:Lgzm;

    move-object/from16 v1, p22

    iput-object v1, v0, Lhey;->n:Lgzn;

    move-object/from16 v1, p23

    iput-object v1, v0, Lhey;->F:Ligo;

    move-object/from16 v1, p24

    iput-object v1, v0, Lhey;->B:Landroid/os/Handler;

    return-void
.end method

.method private final l(ZLchd;)V
    .locals 5

    iget-boolean v0, p0, Lhey;->y:Z

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lhey;->z:Lgus;

    invoke-interface {p2}, Lchd;->b()Lche;

    move-result-object v0

    invoke-interface {p2}, Lchd;->c()Lchf;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lgus;->d(Landroid/os/Parcelable;Ljava/io/Serializable;)V

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lhey;->u:Lhfb;

    invoke-virtual {v0, p2}, Lhfb;->i(Lchd;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget-object p1, p0, Lhey;->c:Loiw;

    invoke-interface {p1}, Loiw;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lhfq;

    invoke-virtual {p1}, Lhfq;->j()V

    return-void

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2}, Lchd;->b()Lche;

    move-result-object v0

    invoke-interface {v0}, Lche;->d()Lgxy;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lhey;->v:Lgwf;

    invoke-interface {v3, v2}, Lgwf;->a(Lgxy;)Lgxl;

    move-result-object v2

    :goto_1
    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-interface {v2}, Lgxl;->a()Lkae;

    move-result-object v2

    iget v2, v2, Lkae;->e:I

    const/16 v4, 0x64

    if-lt v2, v4, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    invoke-interface {v0}, Lche;->j()Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lhey;->c:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhfq;

    invoke-virtual {v0, p2, p1}, Lhfq;->d(Lchd;Z)V

    return-void

    :cond_6
    :goto_3
    iget-object v0, p0, Lhey;->c:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhfq;

    invoke-virtual {v0, p2, p1}, Lhfq;->b(Lchd;Z)V

    return-void
.end method


# virtual methods
.method public final a(Lhfv;)V
    .locals 2

    iget-object v0, p0, Lhey;->o:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lhey;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    iget-object v1, p0, Lhey;->o:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b(II)V
    .locals 1

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lhey;->D:Z

    iget-object p1, p0, Lhey;->c:Loiw;

    invoke-interface {p1}, Loiw;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lhfq;

    invoke-virtual {p1}, Lhfq;->n()V

    :cond_0
    return-void
.end method

.method public final bN()V
    .locals 3

    iget-object v0, p0, Lhey;->d:Lhfs;

    invoke-virtual {v0}, Lhfs;->c()V

    iget-boolean v0, p0, Lhey;->D:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lhey;->D:Z

    iget-object v0, p0, Lhey;->B:Landroid/os/Handler;

    new-instance v1, Lhfi;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lhfi;-><init>(Lhey;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final bO()V
    .locals 1

    sget-object v0, Lhft;->a:Lhft;

    invoke-virtual {p0, v0}, Lhey;->k(Lhft;)V

    return-void
.end method

.method public final e()V
    .locals 1

    sget-object v0, Lhft;->a:Lhft;

    invoke-virtual {p0, v0}, Lhey;->j(Lhft;)V

    iget-object v0, p0, Lhey;->F:Ligo;

    invoke-virtual {v0}, Ligo;->p()V

    iget-object v0, p0, Lhey;->u:Lhfb;

    iget-object v0, v0, Lhfb;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public final f(Landroid/view/ViewStub;Landroid/view/ViewStub;)V
    .locals 2

    iget-object v0, p0, Lhey;->x:Lhgd;

    invoke-interface {v0}, Lhgd;->f()V

    iget-object v0, p0, Lhey;->d:Lhfs;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    iput-object p1, v0, Lhfs;->f:Landroid/view/View;

    iget-object p1, v0, Lhfs;->f:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    iget-object p1, v0, Lhfs;->d:Lhet;

    iget-object v1, v0, Lhfs;->f:Landroid/view/View;

    invoke-interface {p1, v1}, Lhet;->d(Landroid/view/View;)V

    iget-object p1, v0, Lhfs;->f:Landroid/view/View;

    const v1, 0x7f0b033a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, v0, Lhfs;->g:Landroid/view/View;

    iget-object p1, v0, Lhfs;->c:Lhgn;

    iget-object v1, v0, Lhfs;->f:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Lhgn;->d(Landroid/view/View;Landroid/view/View;)V

    iget-object p1, v0, Lhfs;->f:Landroid/view/View;

    new-instance p2, Lhfi;

    const/4 v1, 0x5

    invoke-direct {p2, v0, v1}, Lhfi;-><init>(Lhfs;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v0}, Lhfs;->e()V

    iget-object p1, p0, Lhey;->d:Lhfs;

    iget-object p1, p1, Lhfs;->b:Lnph;

    new-instance p2, Lhbi;

    const/16 v0, 0x13

    invoke-direct {p2, p0, v0}, Lhbi;-><init>(Lhey;I)V

    iget-object v0, p0, Lhey;->l:Ljuh;

    invoke-interface {p1, p2, v0}, Lnou;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final g(Z)V
    .locals 1

    iget-object v0, p0, Lhey;->g:Lchj;

    invoke-interface {v0}, Lchj;->b()Lchd;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lhey;->l(ZLchd;)V

    return-void
.end method

.method public final h(Landroid/os/Parcelable;Ljava/io/Serializable;)V
    .locals 6

    check-cast p2, Lchf;

    move-object v3, p1

    check-cast v3, Lche;

    sget-object p1, Lchf;->b:Lchf;

    invoke-virtual {p1, p2}, Lchf;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lhey;->A:Ldju;

    sget-object v5, Lgyb;->a:Lgyb;

    new-instance p2, Ldjt;

    iget-object v1, p1, Ldju;->c:Landroid/content/Context;

    iget-object v2, p1, Ldju;->d:Ldjm;

    iget-object v4, p1, Ldju;->h:Lhkv;

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Ldjt;-><init>(Landroid/content/Context;Ldjm;Lche;Lhkv;Lgyb;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lchf;->c:Lchf;

    invoke-virtual {p1, p2}, Lchf;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lhey;->E:Lcvm;

    sget-object p2, Lgyb;->a:Lgyb;

    new-instance v0, Ldjv;

    iget-object v1, p1, Lcvm;->b:Ljava/lang/Object;

    iget-object p1, p1, Lcvm;->a:Ljava/lang/Object;

    check-cast p1, Ldjm;

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1, p1, v3, p2}, Ldjv;-><init>(Landroid/content/Context;Ldjm;Lche;Lgyb;)V

    move-object p2, v0

    :goto_0
    iget-object p1, p0, Lhey;->g:Lchj;

    invoke-interface {p1, p2}, Lchj;->f(Lchd;)Lchd;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p2, p1}, Lhey;->l(ZLchd;)V

    return-void

    :cond_1
    sget-object p1, Lhey;->t:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const/16 v0, 0xdc1

    invoke-interface {p1, v0}, Lnah;->G(I)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    iget-object v0, p0, Lhey;->r:Ljava/lang/String;

    const-string v1, "%sopen: invalid item type=%s data=%s"

    invoke-interface {p1, v1, v0, p2, v3}, Lnah;->B(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final i(Lhfv;)V
    .locals 2

    iget-object v0, p0, Lhey;->o:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lhey;->o:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final declared-synchronized j(Lhft;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lhey;->C:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lhey;->c:Loiw;

    invoke-interface {p1}, Loiw;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lhfq;

    invoke-virtual {p1}, Lhfq;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized k(Lhft;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lhey;->C:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lhey;->C:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lhey;->c:Loiw;

    invoke-interface {p1}, Loiw;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lhfq;

    invoke-virtual {p1}, Lhfq;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onLayoutUpdated(Lhyn;Liko;)V
    .locals 2

    iget-object v0, p0, Lhey;->d:Lhfs;

    iget-object v1, v0, Lhfs;->i:Lhyn;

    if-eq v1, p1, :cond_0

    iput-object p1, v0, Lhfs;->i:Lhyn;

    invoke-virtual {v0}, Lhfs;->e()V

    :cond_0
    iput-object p2, v0, Lhfs;->h:Liko;

    iget-object p1, p0, Lhey;->w:Lhgn;

    invoke-interface {p1, p2}, Lhgn;->e(Liko;)V

    iget-object p1, p0, Lhey;->d:Lhfs;

    invoke-virtual {p1}, Lhfs;->c()V

    return-void
.end method

.method public final synthetic onLayoutUpdated(Liko;)V
    .locals 0

    return-void
.end method
