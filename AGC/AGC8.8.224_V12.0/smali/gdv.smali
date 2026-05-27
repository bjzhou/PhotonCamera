.class public final Lgdv;
.super Ljava/lang/Object;

# interfaces
.implements Lgeh;
.implements Lgel;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Ljwb;

.field public final c:Ljuh;

.field public final d:Lkbc;

.field public e:Lklv;

.field public f:Lgef;

.field public g:Lgeg;

.field public h:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;

.field public i:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;

.field public final j:Lgel;

.field public final k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final l:Ljava/util/Set;

.field public final m:Ljwb;

.field public final n:Lgdm;

.field public final o:Lmwn;

.field public final p:Lgdx;

.field public final q:Ljuf;

.field private r:Z

.field private s:Z

.field private final t:Lgdz;

.field private final u:Lgzm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/optionsbar/OptionsBarController2"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lgdv;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Ljwb;Ljuh;Lkbc;Ljuf;Lfbz;Ljwb;Lgzm;Lgdm;Ljava/util/Set;Lgdx;Lgdz;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgdv;->r:Z

    sget-object v1, Lgdr;->a:Lgdr;

    iput-object v1, p0, Lgdv;->f:Lgef;

    sget-object v1, Lgds;->a:Lgds;

    iput-object v1, p0, Lgdv;->g:Lgeg;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lgdv;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {}, Lj$/util/concurrent/ConcurrentHashMap;->newKeySet()Lj$/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v0

    iput-object v0, p0, Lgdv;->l:Ljava/util/Set;

    iput-object p1, p0, Lgdv;->b:Ljwb;

    iput-object p2, p0, Lgdv;->c:Ljuh;

    iput-object p3, p0, Lgdv;->d:Lkbc;

    iput-object p4, p0, Lgdv;->q:Ljuf;

    iput-object p8, p0, Lgdv;->n:Lgdm;

    invoke-static {p9}, Lmwn;->F(Ljava/util/Collection;)Lmwn;

    move-result-object p1

    iput-object p1, p0, Lgdv;->o:Lmwn;

    iput-object p10, p0, Lgdv;->p:Lgdx;

    iput-object p11, p0, Lgdv;->t:Lgdz;

    iput-object p5, p0, Lgdv;->j:Lgel;

    iput-object p6, p0, Lgdv;->m:Ljwb;

    iput-object p7, p0, Lgdv;->u:Lgzm;

    return-void
.end method

.method private final N()V
    .locals 2

    iget-object v0, p0, Lgdv;->i:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->h()V

    iget-object v0, p0, Lgdv;->n:Lgdm;

    invoke-virtual {p0}, Lgdv;->B()Z

    move-result v1

    invoke-virtual {v0, v1}, Lgdm;->i(Z)V

    invoke-virtual {p0}, Lgdv;->D()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Llkj;->x(Z)V

    return-void
.end method

.method private final O()V
    .locals 2

    iget-object v0, p0, Lgdv;->i:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->i()V

    iget-object v0, p0, Lgdv;->n:Lgdm;

    invoke-virtual {p0}, Lgdv;->B()Z

    move-result v1

    invoke-virtual {v0, v1}, Lgdm;->i(Z)V

    invoke-virtual {p0}, Lgdv;->D()Z

    move-result v0

    invoke-static {v0}, Llkj;->x(Z)V

    return-void
.end method


# virtual methods
.method public final A(Lgec;)Z
    .locals 1

    iget-object v0, p0, Lgdv;->h:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;->b(Lgec;)Z

    move-result p1

    return p1
.end method

.method public final B()Z
    .locals 3

    iget-object v0, p0, Lgdv;->l:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgdv;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lgdv;->i:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->e()Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;->a()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    iget-object v0, p0, Lgdv;->o:Lmwn;

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Ldaa;

    const/16 v2, 0x10

    invoke-direct {v1, p0, v2}, Ldaa;-><init>(Lgdv;I)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public final C()Z
    .locals 1

    iget-boolean v0, p0, Lgdv;->s:Z

    return v0
.end method

.method public final D()Z
    .locals 1

    iget-object v0, p0, Lgdv;->i:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public final E()Z
    .locals 1

    iget-boolean v0, p0, Lgdv;->r:Z

    return v0
.end method

.method public final synthetic F()Z
    .locals 1

    invoke-static {p0}, Lged;->a(Lgeh;)Z

    move-result v0

    return v0
.end method

.method public final G()Z
    .locals 1

    iget-object v0, p0, Lgdv;->i:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->k()Z

    move-result v0

    return v0
.end method

.method public final H(Landroid/graphics/PointF;)Z
    .locals 1

    iget-object v0, p0, Lgdv;->h:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;

    invoke-static {p1, v0}, Ljvd;->B(Landroid/graphics/PointF;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lgdv;->i:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->c()Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Ljvd;->B(Landroid/graphics/PointF;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lgdv;->i:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->loadConfigsButton()Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Ljvd;->B(Landroid/graphics/PointF;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final I()Ljuf;
    .locals 1

    iget-object v0, p0, Lgdv;->q:Ljuf;

    return-object v0
.end method

.method public final J(Lfuz;)V
    .locals 4

    iget-object v0, p0, Lgdv;->e:Lklv;

    iget-boolean v1, p0, Lgdv;->r:Z

    iget-boolean v2, p0, Lgdv;->s:Z

    invoke-virtual {p1}, Lklw;->k()Lklv;

    move-result-object v3

    iput-object v3, p0, Lgdv;->e:Lklv;

    invoke-virtual {p1}, Lklw;->J()Z

    move-result v3

    iput-boolean v3, p0, Lgdv;->r:Z

    invoke-virtual {p1}, Lklw;->F()Z

    move-result p1

    iput-boolean p1, p0, Lgdv;->s:Z

    iget-object p1, p0, Lgdv;->e:Lklv;

    invoke-virtual {p1, v0}, Lklv;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lgdv;->r:Z

    if-ne p1, v1, :cond_1

    iget-boolean p1, p0, Lgdv;->s:Z

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lgdv;->o(ZLgec;)V

    return-void
.end method

.method public final L(I)V
    .locals 4

    invoke-virtual {p0}, Lgdv;->G()Z

    move-result v0

    iget-object v1, p0, Lgdv;->i:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->isEnabled()Z

    move-result v1

    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lgdv;->y()V

    invoke-virtual {p0}, Lgdv;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgdv;->i:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->b()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->e()Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;->a()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->h:Ljava/util/Set;

    sget-object v2, Lfah;->i:Lfah;

    invoke-static {v1, v2}, Lj$/util/Collection$-EL;->forEach(Ljava/util/Collection;Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->a()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lgfi;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3, v1}, Lgfi;-><init>(Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;ZLandroid/view/View;)V

    invoke-virtual {v2}, Lgfi;->a()Landroid/animation/Animator;

    move-result-object v1

    new-instance v2, Lgfk;

    invoke-direct {v2, v0}, Lgfk;-><init>(Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    invoke-virtual {v0, v3}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->j(Z)V

    iget-object v0, p0, Lgdv;->p:Lgdx;

    invoke-virtual {v0, p1}, Lgdx;->a(I)V

    return-void

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object p1, p0, Lgdv;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    iget-object p1, p0, Lgdv;->l:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    return-void
.end method

.method public final M()V
    .locals 4

    invoke-virtual {p0}, Lgdv;->G()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgdv;->i:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;

    iget-object v1, v0, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->e:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/Animator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->h:Ljava/util/Set;

    sget-object v2, Lfah;->h:Lfah;

    invoke-static {v1, v2}, Lj$/util/Collection$-EL;->forEach(Ljava/util/Collection;Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->a()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lgfi;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v1}, Lgfi;-><init>(Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;ZLandroid/view/View;)V

    invoke-virtual {v2}, Lgfi;->a()Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->e:Landroid/animation/Animator;

    iget-object v1, v0, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->e:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    invoke-virtual {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->e()Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;

    move-result-object v1

    const/16 v2, 0x21

    invoke-virtual {v1, v2}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;->fullScroll(I)Z

    invoke-virtual {v0, v3}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->j(Z)V

    iget-object v0, p0, Lgdv;->p:Lgdx;

    iget-object v1, p0, Lgdv;->e:Lklv;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v0, Lgdx;->c:Lklv;

    invoke-virtual {p0}, Lgdv;->b()Lika;

    move-result-object v1

    iput-object v1, v0, Lgdx;->b:Lika;

    iget-object v0, p0, Lgdv;->p:Lgdx;

    invoke-virtual {v0}, Lgdx;->b()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public final a()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lgdv;->n:Lgdm;

    iget-object v0, v0, Lgdm;->d:Lgeu;

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final b()Lika;
    .locals 1

    iget-object v0, p0, Lgdv;->b:Ljwb;

    invoke-interface {v0}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lika;

    return-object v0
.end method

.method public final bU(Lgej;Lgec;I)V
    .locals 3

    iget-object v0, p0, Lgdv;->o:Lmwn;

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lgdp;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p1, v2}, Lgdp;-><init>(Lgec;Lgej;I)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lgdv;->o:Lmwn;

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lgdp;

    const/4 v2, 0x2

    invoke-direct {v1, p2, p1, v2}, Lgdp;-><init>(Lgec;Lgej;I)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lgdq;

    invoke-direct {v1, p0, p1, p2, p3}, Lgdq;-><init>(Lgdv;Lgej;Lgec;I)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lgdv;->o:Lmwn;

    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance p3, Ldaa;

    const/16 v0, 0xb

    invoke-direct {p3, p2, v0}, Ldaa;-><init>(Lgec;I)V

    invoke-interface {p1, p3}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lfun;

    const/4 p3, 0x4

    invoke-direct {p2, p0, p3}, Lfun;-><init>(Lgdv;I)V

    invoke-interface {p1, p2}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic c()Lkad;
    .locals 2

    invoke-interface {p0}, Lgeh;->m()V

    new-instance v0, Leym;

    const/16 v1, 0x12

    invoke-direct {v0, p0, v1}, Leym;-><init>(Lgeh;I)V

    return-object v0
.end method

.method public final d(Lgec;Lgej;)Lmqp;
    .locals 4

    iget-object v0, p0, Lgdv;->h:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;->b:Ljava/util/ArrayList;

    invoke-static {v1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lgfd;

    const/4 v3, 0x2

    invoke-direct {v2, p1, v3}, Lgfd;-><init>(Lgec;I)V

    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcwd;

    const/16 v2, 0xf

    invoke-direct {v1, p2, v2}, Lcwd;-><init>(Lgej;I)V

    invoke-interface {p1, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object p1

    sget-object p2, Ldrk;->c:Ldrk;

    invoke-virtual {p1, p2}, Lj$/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmqp;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final e()Lnou;
    .locals 6

    iget-object v0, p0, Lgdv;->n:Lgdm;

    iget-object v1, v0, Lgdm;->d:Lgeu;

    invoke-interface {v1}, Lgeu;->k()V

    invoke-virtual {v0}, Lgdm;->f()V

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v0

    iget-object v1, p0, Lgdv;->i:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0080

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object v2, p0, Lgdv;->i:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;

    new-instance v3, Lgdo;

    invoke-direct {v3, v0}, Lgdo;-><init>(Lnph;)V

    int-to-long v4, v1

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object v0
.end method

.method public final f(Lj$/util/stream/Stream;)V
    .locals 2

    new-instance v0, Ldaa;

    const/16 v1, 0xc

    invoke-direct {v0, p0, v1}, Ldaa;-><init>(Lgdv;I)V

    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lfun;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1}, Lfun;-><init>(Lgdv;I)V

    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final g(Lgen;)V
    .locals 1

    iget-object v0, p0, Lgdv;->i:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->f(Lgen;)V

    return-void
.end method

.method public final h()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lgdv;->D()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lgdv;->N()V

    return-void
.end method

.method public final i()V
    .locals 2

    iget-object v0, p0, Lgdv;->i:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->i:Z

    :cond_0
    return-void
.end method

.method public final j()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lgdv;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lgdv;->O()V

    return-void
.end method

.method public final k()V
    .locals 2

    iget-object v0, p0, Lgdv;->i:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->i:Z

    :cond_0
    return-void
.end method

.method public final l()V
    .locals 4

    iget-object v0, p0, Lgdv;->i:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->m()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lgdv;->i:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;

    iget-object v0, v0, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->d:Likx;

    invoke-virtual {v0}, Likx;->a()V

    const/4 v1, 0x1

    iput v1, v0, Likx;->c:I

    iget-object v1, v0, Likx;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x10b0000

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, v0, Likx;->b:Landroid/animation/Animator;

    iget-object v1, v0, Likx;->b:Landroid/animation/Animator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v1, v0, Likx;->b:Landroid/animation/Animator;

    iget-object v2, v0, Likx;->a:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object v1, v0, Likx;->b:Landroid/animation/Animator;

    new-instance v2, Likv;

    invoke-direct {v2, v0}, Likv;-><init>(Likx;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, v0, Likx;->b:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    iget-object v0, v0, Likx;->b:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    invoke-static {v0}, Llkj;->x(Z)V

    :cond_0
    invoke-direct {p0}, Lgdv;->O()V

    return-void
.end method

.method public final m()V
    .locals 5

    invoke-direct {p0}, Lgdv;->N()V

    iget-object v0, p0, Lgdv;->i:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgdv;->i:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;

    iget-object v1, v0, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->d:Likx;

    invoke-virtual {v1}, Likx;->a()V

    const/4 v2, 0x2

    iput v2, v1, Likx;->c:I

    iget-object v2, v1, Likx;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10b0001

    invoke-static {v2, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    iput-object v2, v1, Likx;->b:Landroid/animation/Animator;

    iget-object v2, v1, Likx;->b:Landroid/animation/Animator;

    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v2, v1, Likx;->b:Landroid/animation/Animator;

    iget-object v3, v1, Likx;->a:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object v2, v1, Likx;->b:Landroid/animation/Animator;

    new-instance v3, Likw;

    invoke-direct {v3, v1}, Likw;-><init>(Likx;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, v1, Likx;->b:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    iget-object v0, v0, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->h:Ljava/util/Set;

    sget-object v1, Lfah;->g:Lfah;

    invoke-static {v0, v1}, Lj$/util/Collection$-EL;->forEach(Ljava/util/Collection;Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public final n(Lgen;)V
    .locals 1

    iget-object v0, p0, Lgdv;->i:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;

    iget-object v0, v0, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->h:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final o(ZLgec;)V
    .locals 2

    const/16 v0, 0xa

    if-eqz p1, :cond_0

    iget-object p1, p0, Lgdv;->c:Ljuh;

    new-instance v1, Lfqt;

    invoke-direct {v1, p0, p2, v0}, Lfqt;-><init>(Lgdv;Lgec;I)V

    invoke-virtual {p1, v1}, Ljuh;->c(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lgdv;->G()Z

    move-result p1

    :goto_0
    iget-object v1, p0, Lgdv;->l:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    if-nez p2, :cond_1

    iget-object p2, p0, Lgdv;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lgdv;->l:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lgdv;->y()V

    return-void

    :cond_2
    iget-object p1, p0, Lgdv;->c:Ljuh;

    new-instance p2, Lfzr;

    invoke-direct {p2, p0, v0}, Lfzr;-><init>(Lgdv;I)V

    invoke-virtual {p1, p2}, Ljuh;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final p(Lgef;)V
    .locals 0

    iput-object p1, p0, Lgdv;->f:Lgef;

    return-void
.end method

.method public final q(Liko;Lhyn;)V
    .locals 1

    iget-object v0, p0, Lgdv;->n:Lgdm;

    iget-object v0, v0, Lgdm;->d:Lgeu;

    invoke-interface {v0, p1, p2}, Lgeu;->b(Liko;Lhyn;)V

    iget-object p1, p0, Lgdv;->t:Lgdz;

    invoke-virtual {p1}, Lgdz;->b()V

    return-void
.end method

.method public final r(Lgyq;)V
    .locals 2

    iget-object v0, p0, Lgdv;->n:Lgdm;

    sget-object v1, Lgyq;->a:Lgyq;

    invoke-virtual {v1, p1}, Lgyq;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, v0, Lgdm;->d:Lgeu;

    sget-object v1, Lgyq;->a:Lgyq;

    invoke-interface {p1, v1}, Lgeu;->f(Lgyq;)V

    invoke-virtual {v0}, Lgdm;->f()V

    return-void

    :cond_0
    invoke-virtual {v0}, Lgdm;->e()V

    iget-object v0, v0, Lgdm;->d:Lgeu;

    invoke-interface {v0, p1}, Lgeu;->f(Lgyq;)V

    return-void
.end method

.method public final s(Lgeg;)V
    .locals 0

    iput-object p1, p0, Lgdv;->g:Lgeg;

    return-void
.end method

.method public final t()V
    .locals 3

    iget-object v0, p0, Lgdv;->u:Lgzm;

    sget-object v1, Lgzd;->ax:Lgzs;

    invoke-interface {v0, v1}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lgdv;->n:Lgdm;

    invoke-virtual {v1}, Lgdm;->e()V

    iget-object v1, v1, Lgdm;->d:Lgeu;

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1, v2}, Lgeu;->j(Z)V

    return-void
.end method

.method public final u(ZLgee;)V
    .locals 2

    check-cast p2, Lgfe;

    iget v0, p2, Lgfe;->c:I

    iget v1, p2, Lgfe;->d:I

    iget-object p2, p2, Lgfe;->e:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1, p2}, Lgdv;->v(ZIILjava/lang/String;)V

    return-void
.end method

.method public final v(ZIILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lgdv;->i:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3, p4}, Lgdv;->w(ZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final w(ZILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lgdv;->n:Lgdm;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object p1, v0, Lgdm;->d:Lgeu;

    invoke-interface {p1, v1}, Lgeu;->h(Z)V

    const/4 p1, 0x1

    invoke-virtual {v0, p4, p1, p2, p3}, Lgdm;->h(Ljava/lang/String;ZILjava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v0, p4, v1, p2, p3}, Lgdm;->h(Ljava/lang/String;ZILjava/lang/String;)V

    invoke-virtual {v0}, Lgdm;->g()V

    return-void
.end method

.method public final x(Lgei;)V
    .locals 9

    invoke-interface {p1}, Lgei;->g()Lgec;

    move-result-object v0

    iget-object v1, p0, Lgdv;->h:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;->b(Lgec;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-interface {p1, p0, v2}, Lgei;->z(Lgeh;Z)V

    return-void

    :cond_0
    invoke-interface {p1, p0}, Lgei;->m(Lgeh;)Z

    move-result v1

    invoke-interface {p1, p0, v1}, Lgei;->z(Lgeh;Z)V

    if-eqz v1, :cond_3

    iget-object v1, p0, Lgdv;->h:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;

    monitor-enter v1

    :try_start_0
    iget-object v3, v1, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;->b:Ljava/util/ArrayList;

    invoke-static {v3}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lgfd;

    const/4 v5, 0x5

    invoke-direct {v4, v0, v5}, Lgfd;-><init>(Lgec;I)V

    invoke-interface {v3, v4}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    sget-object v3, Lfah;->k:Lfah;

    invoke-interface {v0, v3}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    invoke-interface {p1}, Lgei;->j()Lmvv;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgej;

    invoke-interface {p1, p0, v3}, Lgei;->v(Lgeh;Lgej;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lgdv;->h:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;

    invoke-interface {p1}, Lgei;->g()Lgec;

    move-result-object v5

    monitor-enter v4

    :try_start_1
    iget-object v6, v4, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;->b:Ljava/util/ArrayList;

    invoke-static {v6}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v6

    new-instance v7, Lgfd;

    const/4 v8, 0x7

    invoke-direct {v7, v5, v8}, Lgfd;-><init>(Lgec;I)V

    invoke-interface {v6, v7}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lfun;

    const/16 v7, 0x10

    invoke-direct {v6, v3, v7}, Lfun;-><init>(Lgej;I)V

    invoke-interface {v5, v6}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    iget-object v4, p0, Lgdv;->h:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;

    invoke-interface {p1}, Lgei;->g()Lgec;

    move-result-object v5

    monitor-enter v4

    :try_start_2
    iget-object v6, v4, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;->b:Ljava/util/ArrayList;

    invoke-static {v6}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v6

    new-instance v7, Lgfd;

    const/4 v8, 0x4

    invoke-direct {v7, v5, v8}, Lgfd;-><init>(Lgec;I)V

    invoke-interface {v6, v7}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lfun;

    const/16 v7, 0xd

    invoke-direct {v6, v3, v7}, Lfun;-><init>(Lgej;I)V

    invoke-interface {v5, v6}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    monitor-exit v4

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_1
    move-exception p1

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_2
    return-void

    :catchall_2
    move-exception p1

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1

    :cond_3
    invoke-interface {p1}, Lgei;->c()I

    move-result p1

    if-gtz p1, :cond_4

    const/4 p1, 0x0

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lgdv;->h:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_2
    iget-object v1, p0, Lgdv;->h:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;

    monitor-enter v1

    :try_start_4
    iget-object v2, v1, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;->b:Ljava/util/ArrayList;

    invoke-static {v2}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lgfd;

    const/4 v4, 0x6

    invoke-direct {v3, v0, v4}, Lgfd;-><init>(Lgec;I)V

    invoke-interface {v2, v3}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lfun;

    const/16 v3, 0xe

    invoke-direct {v2, p1, v3}, Lfun;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v2}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    monitor-exit v1

    return-void

    :catchall_3
    move-exception p1

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public final y()V
    .locals 3

    iget-object v0, p0, Lgdv;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    iget-object v0, p0, Lgdv;->l:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    invoke-static {}, Ljuh;->d()Z

    iget-object v0, p0, Lgdv;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgdv;->c:Ljuh;

    new-instance v1, Lfzr;

    const/16 v2, 0xb

    invoke-direct {v1, p0, v2}, Lfzr;-><init>(Lgdv;I)V

    invoke-virtual {v0, v1}, Ljuh;->c(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lgdv;->l:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lgdv;->c:Ljuh;

    new-instance v1, Lfzr;

    const/16 v2, 0xc

    invoke-direct {v1, p0, v2}, Lfzr;-><init>(Lgdv;I)V

    invoke-virtual {v0, v1}, Ljuh;->c(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public final z(Landroid/view/View;Landroid/view/View;)V
    .locals 13

    invoke-static {}, Ljuh;->d()Z

    move-result v0

    invoke-static {v0}, Lmoz;->p(Z)V

    iget-object v0, p0, Lgdv;->d:Lkbc;

    const-string v1, "OptionsBarCtrl#wire"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    instance-of v0, p1, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;

    iput-object p1, p0, Lgdv;->i:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->e()Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;

    move-result-object v0

    new-instance v1, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    invoke-direct {v1, p0}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;-><init>(Lgeh;)V

    iput-object v1, v0, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;->h:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p1, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->g:Landroid/content/Context;

    new-instance v2, Lgfl;

    invoke-direct {v2, p1, p0}, Lgfl;-><init>(Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;Lgeh;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p1, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->j:Landroid/view/GestureDetector;

    new-instance v0, Lclb;

    const/4 v1, 0x5

    invoke-direct {v0, p1, v1}, Lclb;-><init>(Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;I)V

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lgdv;->i:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->e()Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;

    move-result-object p1

    iput-object p1, p0, Lgdv;->h:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;

    iput-object p0, p1, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;->f:Lgel;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;->c:Z

    iget-object v1, p1, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object p1, p1, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;->g:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lgdv;->i:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;

    new-instance v1, Lhqo;

    invoke-direct {v1, p0, v0}, Lhqo;-><init>(Lgdv;I)V

    invoke-virtual {p1, v1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->f(Lgen;)V

    iget-object p1, p0, Lgdv;->i:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->a()Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lgdv;->n:Lgdm;

    check-cast p1, Lgeu;

    iput-object p1, v1, Lgdm;->d:Lgeu;

    iget-object p1, v1, Lgdm;->d:Lgeu;

    new-instance v3, Lgdu;

    invoke-direct {v3, v1, v0}, Lgdu;-><init>(Lgdm;I)V

    invoke-interface {p1, v3}, Lgeu;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, v1, Lgdm;->e:Ljuf;

    iget-object v3, v1, Lgdm;->b:Ljvs;

    new-instance v4, Lgdl;

    invoke-direct {v4, v1, v2}, Lgdl;-><init>(Lgdm;I)V

    iget-object v5, v1, Lgdm;->c:Ljuh;

    invoke-interface {v3, v4, v5}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljuf;->d(Lkad;)V

    iget-object p1, v1, Lgdm;->a:Loiw;

    invoke-interface {p1}, Loiw;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgeh;

    invoke-interface {p1, v1}, Lgeh;->g(Lgen;)V

    iget-object p1, p0, Lgdv;->i:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object p1, p0, Lgdv;->i:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->loadConfigsButton()Landroid/view/View;

    move-result-object p1

    check-cast v4, Landroid/app/Activity;

    new-instance v1, Lcom/agc/pref/ConfigLoader;

    invoke-direct {v1, v4}, Lcom/agc/pref/ConfigLoader;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lgdv;->i:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->c()Landroid/view/View;

    move-result-object p1

    new-instance v1, Lgdu;

    invoke-direct {v1, p0, v2}, Lgdu;-><init>(Lgdv;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lixy;

    invoke-direct {v1, v4, v0}, Lixy;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    instance-of p1, p2, Lcom/google/android/apps/camera/optionsbar/view/TimerWidget;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lgdv;->o:Lmwn;

    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lfjd;->e:Lfjd;

    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object p1

    new-instance v0, Lcwd;

    const/16 v1, 0xe

    invoke-direct {v0, p0, v1}, Lcwd;-><init>(Lgdv;I)V

    invoke-virtual {p1, v0}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lges;

    invoke-static {p1}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object p1

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgdv;->t:Lgdz;

    check-cast p2, Lcom/google/android/apps/camera/optionsbar/view/TimerWidget;

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lges;

    iput-object p2, v0, Lgdz;->i:Lcom/google/android/apps/camera/optionsbar/view/TimerWidget;

    new-instance v7, Lgdy;

    invoke-direct {v7, p0}, Lgdy;-><init>(Lgel;)V

    sget-object p1, Lgdz;->b:Lmtc;

    check-cast p1, Lmyt;

    iget-object p1, p1, Lmyt;->c:Lmyt;

    iget-object v1, v0, Lgdz;->c:Ljwb;

    invoke-interface {v1}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lmtc;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgej;

    if-nez p1, :cond_0

    sget-object p1, Lgdz;->a:Lgej;

    :cond_0
    move-object v6, p1

    new-instance p1, Lgfn;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v12}, Lgfn;-><init>(Landroid/content/Context;Lges;Lgej;Lgel;Lgem;Lgek;IZZ)V

    iput-object p1, v0, Lgdz;->h:Lgfn;

    iget-object p1, v0, Lgdz;->h:Lgfn;

    const v1, 0x7f0b039d

    invoke-virtual {p2, v1}, Lcom/google/android/apps/camera/optionsbar/view/TimerWidget;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object p1, v0, Lgdz;->h:Lgfn;

    invoke-virtual {p1}, Lgfn;->e()V

    iget-object p1, v0, Lgdz;->h:Lgfn;

    invoke-virtual {p1}, Lgfn;->d()V

    iget-object p1, v0, Lgdz;->e:Ljuf;

    iget-object p2, v0, Lgdz;->c:Ljwb;

    new-instance v1, Lgdl;

    const/4 v3, 0x3

    invoke-direct {v1, v0, v3}, Lgdl;-><init>(Lgdz;I)V

    iget-object v3, v0, Lgdz;->d:Ljava/util/concurrent/Executor;

    invoke-interface {p2, v1, v3}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljuf;->d(Lkad;)V

    iget-object p1, v0, Lgdz;->e:Ljuf;

    iget-object p2, v0, Lgdz;->f:Ljvs;

    new-instance v1, Lgdl;

    const/4 v3, 0x4

    invoke-direct {v1, v0, v3}, Lgdl;-><init>(Lgdz;I)V

    iget-object v3, v0, Lgdz;->d:Ljava/util/concurrent/Executor;

    invoke-interface {p2, v1, v3}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljuf;->d(Lkad;)V

    new-instance v7, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    invoke-direct {v7, v0}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;-><init>(Lgdz;)V

    iget-object p1, v0, Lgdz;->g:Litm;

    check-cast p1, Lisi;

    iget-object p1, p1, Lisi;->j:Ljava/util/Set;

    invoke-interface {p1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p1, v0, Lgdz;->e:Ljuf;

    new-instance p2, Leid;

    const/16 v8, 0x12

    const/4 v10, 0x0

    move-object v5, p2

    move-object v6, v0

    invoke-direct/range {v5 .. v10}, Leid;-><init>(Lgdz;Landroidx/wear/ambient/AmbientModeSupport$AmbientController;I[B[B)V

    invoke-virtual {p1, p2}, Ljuf;->d(Lkad;)V

    :cond_1
    new-instance p1, Lxa;

    invoke-direct {p1}, Lxa;-><init>()V

    new-instance p2, Lxa;

    invoke-direct {p2}, Lxa;-><init>()V

    iget-object v0, p0, Lgdv;->o:Lmwn;

    new-instance v1, Lgdt;

    invoke-direct {v1, p1, p2, v2}, Lgdt;-><init>(Ljava/util/Set;Ljava/util/Set;I)V

    invoke-static {v0, v1}, Lj$/util/Collection$-EL;->forEach(Ljava/util/Collection;Ljava/util/function/Consumer;)V

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Lgdv;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    const-string v0, "wire: Some menu items have the same category:"

    const/16 v1, 0xa27

    invoke-static {p1, v0, v1}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    iget-object p1, p0, Lgdv;->o:Lmwn;

    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance v0, Ldaa;

    const/16 v1, 0xd

    invoke-direct {v0, p2, v1}, Ldaa;-><init>(Ljava/util/Set;I)V

    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p1

    sget-object p2, Lfah;->e:Lfah;

    invoke-interface {p1, p2}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    :cond_2
    iget-object p1, p0, Lgdv;->q:Ljuf;

    iget-object p2, p0, Lgdv;->b:Ljwb;

    new-instance v0, Lgdl;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lgdl;-><init>(Lgdv;I)V

    sget-object v1, Lnnv;->a:Lnnv;

    invoke-interface {p2, v0, v1}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljuf;->d(Lkad;)V

    iget-object p1, p0, Lgdv;->o:Lmwn;

    new-instance p2, Lfun;

    const/4 v0, 0x6

    invoke-direct {p2, p0, v0}, Lfun;-><init>(Lgdv;I)V

    invoke-static {p1, p2}, Lj$/util/Collection$-EL;->forEach(Ljava/util/Collection;Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lgdv;->o:Lmwn;

    new-instance p2, Lfun;

    const/4 v0, 0x7

    invoke-direct {p2, p0, v0}, Lfun;-><init>(Lgdv;I)V

    invoke-static {p1, p2}, Lj$/util/Collection$-EL;->forEach(Ljava/util/Collection;Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_3
    sget-object p1, Lgdv;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    const-string p2, "OptionsMenuContainer is null!"

    const/16 v0, 0xa26

    invoke-static {p1, p2, v0}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    :goto_0
    iget-object p1, p0, Lgdv;->d:Lkbc;

    invoke-interface {p1}, Lkbc;->f()V

    return-void
.end method
