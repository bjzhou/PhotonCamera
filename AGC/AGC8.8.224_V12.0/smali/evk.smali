.class public final Levk;
.super Lchk;

# interfaces
.implements Lhya;


# static fields
.field public static final b:Lnak;


# instance fields
.field public final A:Lebl;

.field public final B:Lmqp;

.field public final C:Lgla;

.field public final D:Lmqp;

.field public final E:Lhxx;

.field public final F:Lmqp;

.field public final G:Ljvk;

.field public H:Z

.field public I:Ljuf;

.field public final J:Lgow;

.field public K:Ldms;

.field public L:Ljvs;

.field public M:I

.field public N:Lhke;

.field public final O:Ljava/util/List;

.field public P:Lgya;

.field public final Q:Lcom/google/android/apps/camera/bottombar/BottomBarListener;

.field public final R:Lkai;

.field public final S:Lenz;

.field public T:Lflk;

.field public U:Lhsa;

.field public final V:Lhdk;

.field public final W:Lbkb;

.field private final X:Lfuq;

.field private final Y:Lfmd;

.field private final Z:Lgoy;

.field private final aa:Lhsl;

.field private final ab:Lgeh;

.field private final ac:Ljwb;

.field private final ad:Ldna;

.field private final ae:Lhkc;

.field private final af:Lhnb;

.field private final ag:Lhnf;

.field private final ah:Lfdc;

.field private final ai:Lebi;

.field private final aj:Lfmf;

.field private final ak:Lmqp;

.field private al:Z

.field private am:Lflj;

.field private final an:Lgte;

.field private final ao:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

.field private final ap:Lhwf;

.field private final aq:Lhxh;

.field private final ar:Lklx;

.field private final as:Lbkc;

.field private final at:Ldne;

.field private final au:Lva;

.field public final c:Lkbc;

.field public final d:Ldbf;

.field public final e:Lcgx;

.field public final f:Ljuh;

.field public final g:Ljava/util/concurrent/Executor;

.field public final h:Lfux;

.field public final i:Lifj;

.field public final j:Lhgy;

.field public final k:Lcbn;

.field public final l:Leoa;

.field public final m:Lici;

.field public final n:Lhtg;

.field public final o:Lgft;

.field public final p:Landroid/view/accessibility/AccessibilityManager;

.field public final q:Ldpl;

.field public final r:Litm;

.field public final s:Ldhi;

.field public final t:Lima;

.field public final u:Lflp;

.field public final v:Lcom/google/android/apps/camera/bottombar/BottomBarController;

.field public final w:Liff;

.field public final x:Lhwd;

.field public final y:Ljwb;

.field public final z:Libj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/legacy/app/module/portrait/PortraitModule"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Levk;->b:Lnak;

    return-void
.end method

.method public constructor <init>(Lkbc;Ldbf;Lfuq;Lcgy;Lfux;Lmqp;Ljuh;Ljava/util/concurrent/Executor;Lfmd;Lhgy;Lmqp;Lgow;Lcbn;Leoa;Lici;Lhtg;Lgft;Landroid/view/accessibility/AccessibilityManager;Ldpl;Lbkb;Litm;Libj;Ljwb;Ljwb;Lflp;Lhwd;Lhdk;Lklx;Ldhi;Lbkc;Ldna;Lcom/google/android/apps/camera/bottombar/BottomBarController;Liff;Lgeh;Ldne;Lhkc;Lhnb;Lhnf;Lebl;Lfdc;Lhxh;Lgte;Lmqp;Lmqp;Lgla;Lmqp;Lebi;Lhxx;Lhsl;Lfmf;Lva;[B[B[B[B[B[B)V
    .locals 6

    move-object v0, p0

    invoke-direct {p0}, Lchk;-><init>()V

    new-instance v1, Lima;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lima;-><init>(I)V

    iput-object v1, v0, Levk;->t:Lima;

    new-instance v1, Ljvk;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v1, v4}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Levk;->G:Ljvk;

    iput-boolean v3, v0, Levk;->al:Z

    const/4 v1, 0x0

    iput-object v1, v0, Levk;->P:Lgya;

    new-instance v1, Leve;

    invoke-direct {v1, p0}, Leve;-><init>(Levk;)V

    iput-object v1, v0, Levk;->Q:Lcom/google/android/apps/camera/bottombar/BottomBarListener;

    new-instance v1, Leus;

    invoke-direct {v1, p0, v2}, Leus;-><init>(Levk;I)V

    iput-object v1, v0, Levk;->R:Lkai;

    new-instance v1, Letv;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Letv;-><init>(Levk;I)V

    iput-object v1, v0, Levk;->S:Lenz;

    new-instance v1, Levf;

    invoke-direct {v1, p0, v3}, Levf;-><init>(Levk;I)V

    iput-object v1, v0, Levk;->ao:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    new-instance v1, Lety;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lety;-><init>(Levk;I)V

    iput-object v1, v0, Levk;->ap:Lhwf;

    move-object v1, p1

    iput-object v1, v0, Levk;->c:Lkbc;

    move-object v1, p3

    iput-object v1, v0, Levk;->X:Lfuq;

    move-object v1, p2

    iput-object v1, v0, Levk;->d:Ldbf;

    move-object v1, p4

    iput-object v1, v0, Levk;->e:Lcgx;

    move-object v1, p5

    iput-object v1, v0, Levk;->h:Lfux;

    move-object v1, p6

    iput-object v1, v0, Levk;->F:Lmqp;

    move-object v1, p7

    iput-object v1, v0, Levk;->f:Ljuh;

    move-object v1, p8

    iput-object v1, v0, Levk;->g:Ljava/util/concurrent/Executor;

    move-object v1, p9

    iput-object v1, v0, Levk;->Y:Lfmd;

    move-object/from16 v2, p10

    iput-object v2, v0, Levk;->j:Lhgy;

    move-object/from16 v2, p12

    iput-object v2, v0, Levk;->J:Lgow;

    move-object/from16 v2, p13

    iput-object v2, v0, Levk;->k:Lcbn;

    move-object/from16 v2, p14

    iput-object v2, v0, Levk;->l:Leoa;

    move-object/from16 v2, p15

    iput-object v2, v0, Levk;->m:Lici;

    move-object/from16 v2, p49

    iput-object v2, v0, Levk;->aa:Lhsl;

    move-object/from16 v2, p16

    iput-object v2, v0, Levk;->n:Lhtg;

    move-object/from16 v2, p17

    iput-object v2, v0, Levk;->o:Lgft;

    move-object/from16 v2, p18

    iput-object v2, v0, Levk;->p:Landroid/view/accessibility/AccessibilityManager;

    move-object/from16 v2, p19

    iput-object v2, v0, Levk;->q:Ldpl;

    move-object/from16 v2, p20

    iput-object v2, v0, Levk;->W:Lbkb;

    move-object/from16 v2, p21

    iput-object v2, v0, Levk;->r:Litm;

    move-object/from16 v2, p22

    iput-object v2, v0, Levk;->z:Libj;

    move-object/from16 v2, p23

    iput-object v2, v0, Levk;->ac:Ljwb;

    move-object/from16 v2, p24

    iput-object v2, v0, Levk;->y:Ljwb;

    move-object/from16 v2, p25

    iput-object v2, v0, Levk;->u:Lflp;

    move-object/from16 v2, p26

    iput-object v2, v0, Levk;->x:Lhwd;

    move-object/from16 v2, p28

    iput-object v2, v0, Levk;->ar:Lklx;

    move-object/from16 v2, p29

    iput-object v2, v0, Levk;->s:Ldhi;

    move-object/from16 v2, p30

    iput-object v2, v0, Levk;->as:Lbkc;

    move-object/from16 v2, p31

    iput-object v2, v0, Levk;->ad:Ldna;

    move-object/from16 v2, p32

    iput-object v2, v0, Levk;->v:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    move-object/from16 v2, p33

    iput-object v2, v0, Levk;->w:Liff;

    move-object/from16 v2, p34

    iput-object v2, v0, Levk;->ab:Lgeh;

    move-object/from16 v2, p27

    iput-object v2, v0, Levk;->V:Lhdk;

    move-object/from16 v2, p35

    iput-object v2, v0, Levk;->at:Ldne;

    move-object/from16 v2, p36

    iput-object v2, v0, Levk;->ae:Lhkc;

    invoke-interface/range {p36 .. p36}, Lhkc;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhke;

    iput-object v2, v0, Levk;->N:Lhke;

    move-object/from16 v2, p37

    iput-object v2, v0, Levk;->af:Lhnb;

    move-object/from16 v2, p38

    iput-object v2, v0, Levk;->ag:Lhnf;

    move-object/from16 v2, p39

    iput-object v2, v0, Levk;->A:Lebl;

    move-object/from16 v3, p40

    iput-object v3, v0, Levk;->ah:Lfdc;

    move-object/from16 v3, p44

    iput-object v3, v0, Levk;->B:Lmqp;

    move-object/from16 v3, p42

    iput-object v3, v0, Levk;->an:Lgte;

    move-object/from16 v3, p41

    iput-object v3, v0, Levk;->aq:Lhxh;

    move-object/from16 v3, p45

    iput-object v3, v0, Levk;->C:Lgla;

    move-object/from16 v3, p46

    iput-object v3, v0, Levk;->D:Lmqp;

    invoke-virtual/range {p11 .. p11}, Lmqp;->g()Z

    move-result v4

    invoke-static {v4}, Lmoz;->e(Z)V

    invoke-virtual/range {p11 .. p11}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgoy;

    iput-object v4, v0, Levk;->Z:Lgoy;

    move-object/from16 v4, p48

    iput-object v4, v0, Levk;->E:Lhxx;

    move-object/from16 v4, p47

    iput-object v4, v0, Levk;->ai:Lebi;

    move-object/from16 v5, p50

    iput-object v5, v0, Levk;->aj:Lfmf;

    move-object/from16 v5, p51

    iput-object v5, v0, Levk;->au:Lva;

    move-object/from16 v5, p43

    iput-object v5, v0, Levk;->ak:Lmqp;

    new-instance v5, Levg;

    move-object p1, v5

    move-object p2, p0

    move-object/from16 p3, p47

    move-object/from16 p4, p39

    move-object p5, p9

    move-object/from16 p6, p46

    invoke-direct/range {p1 .. p6}, Levg;-><init>(Levk;Lebi;Lebl;Lfmd;Lmqp;)V

    iput-object v5, v0, Levk;->i:Lifj;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Levk;->O:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final A(Lhxz;)V
    .locals 1

    sget-object v0, Lhxz;->a:Lhxz;

    invoke-virtual {p1, v0}, Lhxz;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Levk;->ab:Lgeh;

    invoke-interface {p1}, Lgeh;->M()V

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Levk;->x(I)V

    return-void

    :cond_0
    iget-object p1, p0, Levk;->x:Lhwd;

    invoke-virtual {p1}, Lhwd;->h()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Levk;->E:Lhxx;

    invoke-virtual {p1}, Lhxx;->b()V

    :cond_1
    iget-object p1, p0, Levk;->x:Lhwd;

    invoke-virtual {p1}, Lhwd;->g()Z

    return-void
.end method

.method public final bH()Lmqp;
    .locals 1

    iget-object v0, p0, Levk;->T:Lflk;

    invoke-static {v0}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    return-object v0
.end method

.method public final cc()V
    .locals 1

    iget-object v0, p0, Levk;->Z:Lgoy;

    invoke-interface {v0}, Lgoy;->c()V

    return-void
.end method

.method public final cd()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Levk;->P:Lgya;

    iget-object v0, p0, Levk;->x:Lhwd;

    invoke-virtual {v0}, Lhwd;->g()Z

    iget-object v0, p0, Levk;->p:Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, Levk;->ao:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    iget-object v0, p0, Levk;->s:Ldhi;

    sget-object v1, Ldho;->ci:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Levk;->E:Lhxx;

    invoke-virtual {v0, p0}, Lhxx;->g(Lhya;)V

    iget-object v0, p0, Levk;->E:Lhxx;

    invoke-virtual {v0}, Lhxx;->f()V

    :cond_0
    iget-object v0, p0, Levk;->ak:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Levk;->ak:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldzq;

    invoke-interface {v0}, Ldzq;->b()V

    :cond_1
    return-void
.end method

.method public final close()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Levk;->w(Z)V

    return-void
.end method

.method public final e(Landroid/content/res/Configuration;)V
    .locals 0

    iget-object p1, p0, Levk;->Z:Lgoy;

    invoke-interface {p1}, Lgoy;->d()V

    return-void
.end method

.method public final k()V
    .locals 5

    iget-object v0, p0, Levk;->c:Lkbc;

    const-string v1, "PortraitModule#reconfigureCamera"

    invoke-interface {v0, v1}, Lkbc;->a(Ljava/lang/String;)Lkbf;

    move-result-object v0

    iget-object v1, p0, Levk;->d:Ldbf;

    invoke-virtual {v1}, Ldbf;->d()Lklv;

    move-result-object v1

    iget-object v2, p0, Levk;->ad:Ldna;

    iget-object v3, p0, Levk;->ar:Lklx;

    iget-object v4, p0, Levk;->s:Ldhi;

    invoke-virtual {v2, v3, v4, v1}, Ldna;->b(Lklj;Ldhi;Lklv;)Lkll;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Levk;->ar:Lklx;

    invoke-virtual {v2, v1}, Lklx;->f(Lkll;)Lfuz;

    move-result-object v1

    iget-object v2, p0, Levk;->s:Ldhi;

    sget-object v3, Ldho;->aj:Ldhj;

    invoke-interface {v2, v3}, Ldhi;->l(Ldhj;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Levk;->d:Ldbf;

    invoke-virtual {v2}, Ldbf;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lklw;->C()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Levk;->r:Litm;

    invoke-interface {v1}, Litm;->p()V

    :cond_1
    iget-object v1, p0, Levk;->r:Litm;

    invoke-interface {v1}, Litm;->x()V

    iget-object v1, p0, Levk;->r:Litm;

    invoke-interface {v1}, Litm;->G()V

    iget-object v1, p0, Levk;->J:Lgow;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lgow;->a()V

    :cond_2
    iget-object v1, p0, Levk;->m:Lici;

    invoke-virtual {v1}, Lici;->a()V

    iget-object v1, p0, Levk;->D:Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Levk;->D:Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lckr;

    invoke-interface {v1}, Lckr;->h()V

    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Levk;->T:Lflk;

    iget-object v1, p0, Levk;->am:Lflj;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lnnb;->isDone()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Levk;->am:Lflj;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnnb;->cancel(Z)Z

    :cond_4
    const/4 v1, 0x1

    iput-boolean v1, p0, Levk;->al:Z

    iget-object v1, p0, Levk;->X:Lfuq;

    iget-object v2, p0, Levk;->d:Ldbf;

    iget-object v3, p0, Levk;->h:Lfux;

    sget-object v4, Lika;->g:Lika;

    invoke-interface {v1, v2, v3, v4}, Lfuq;->a(Ldbf;Lfux;Lika;)Lflj;

    move-result-object v1

    iput-object v1, p0, Levk;->am:Lflj;

    new-instance v2, Lenq;

    const/4 v3, 0x6

    invoke-direct {v2, p0, v0, v3}, Lenq;-><init>(Levk;Lkbf;I)V

    iget-object v0, p0, Levk;->f:Ljuh;

    invoke-static {v1, v2, v0}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final l()V
    .locals 3

    iget-object v0, p0, Levk;->s:Ldhi;

    sget-object v1, Ldho;->ci:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Levk;->y:Ljwb;

    invoke-interface {v0}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgyu;

    sget-object v1, Lgyu;->a:Lgyu;

    invoke-virtual {v0, v1}, Lgyu;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Levk;->g:Ljava/util/concurrent/Executor;

    new-instance v1, Lett;

    const/16 v2, 0xf

    invoke-direct {v1, p0, v2}, Lett;-><init>(Levk;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Levk;->E:Lhxx;

    invoke-virtual {v0, p0}, Lhxx;->c(Lhya;)V

    :cond_1
    iget-object v0, p0, Levk;->ak:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Levk;->ak:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldzq;

    invoke-interface {v0}, Ldzq;->a()V

    :cond_2
    iget-object v0, p0, Levk;->p:Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, Levk;->ao:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    return-void
.end method

.method public final n()V
    .locals 5

    iget-object v0, p0, Levk;->ac:Ljwb;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v2}, Ljwb;->bn(Ljava/lang/Object;)V

    new-instance v0, Ljuf;

    invoke-direct {v0}, Ljuf;-><init>()V

    iput-object v0, p0, Levk;->I:Ljuf;

    iget-object v2, p0, Levk;->af:Lhnb;

    iget-object v3, p0, Levk;->ag:Lhnf;

    invoke-interface {v2, v3}, Lhnb;->f(Lhmz;)Lkad;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljuf;->d(Lkad;)V

    iget-object v0, p0, Levk;->I:Ljuf;

    iget-object v2, p0, Levk;->ag:Lhnf;

    new-instance v3, Leus;

    const/4 v4, 0x3

    invoke-direct {v3, p0, v4}, Leus;-><init>(Levk;I)V

    iget-object v4, p0, Levk;->f:Ljuh;

    iget-object v2, v2, Lhnf;->a:Ljvs;

    invoke-interface {v2, v3, v4}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljuf;->d(Lkad;)V

    iget-object v0, p0, Levk;->I:Ljuf;

    iget-object v2, p0, Levk;->af:Lhnb;

    iget-object v3, p0, Levk;->an:Lgte;

    invoke-interface {v2, v3}, Lhnb;->f(Lhmz;)Lkad;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljuf;->d(Lkad;)V

    iget-object v0, p0, Levk;->I:Ljuf;

    iget-object v2, p0, Levk;->aa:Lhsl;

    new-instance v3, Levh;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Levh;-><init>(Levk;I)V

    invoke-interface {v2, v3}, Lhsl;->a(Lhsk;)Lkad;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljuf;->d(Lkad;)V

    iget-object v0, p0, Levk;->c:Lkbc;

    const-string v2, "PortraitModule#start"

    invoke-interface {v0, v2}, Lkbc;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Lchk;->k()V

    iget-object v0, p0, Levk;->A:Lebl;

    iget-object v2, p0, Levk;->s:Ldhi;

    sget-object v3, Ldhq;->ad:Ldhj;

    invoke-interface {v2, v3}, Ldhi;->l(Ldhj;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Levk;->s:Ldhi;

    sget-object v3, Ldhq;->ac:Ldhj;

    invoke-interface {v2, v3}, Ldhi;->l(Ldhj;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    :goto_0
    invoke-virtual {v0, v4}, Lebl;->h(Z)V

    invoke-virtual {p0, v1}, Levk;->w(Z)V

    iget-object v0, p0, Levk;->v:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    iget-object v1, p0, Levk;->Q:Lcom/google/android/apps/camera/bottombar/BottomBarListener;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->addListener(Lcom/google/android/apps/camera/bottombar/BottomBarListener;)V

    iget-object v0, p0, Levk;->I:Ljuf;

    new-instance v1, Ledg;

    const/16 v2, 0x11

    invoke-direct {v1, p0, v2}, Ledg;-><init>(Levk;I)V

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    iget-object v0, p0, Levk;->I:Ljuf;

    iget-object v1, p0, Levk;->w:Liff;

    iget-object v3, p0, Levk;->i:Lifj;

    invoke-interface {v1, v3}, Liff;->e(Lifj;)Lkad;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    iget-object v0, p0, Levk;->I:Ljuf;

    iget-object v1, p0, Levk;->y:Ljwb;

    new-instance v3, Leus;

    const/4 v4, 0x4

    invoke-direct {v3, p0, v4}, Leus;-><init>(Levk;I)V

    iget-object v4, p0, Levk;->f:Ljuh;

    invoke-interface {v1, v3, v4}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    iget-object v0, p0, Levk;->au:Lva;

    new-instance v1, Lett;

    invoke-direct {v1, p0, v2}, Lett;-><init>(Levk;I)V

    iget-object v2, p0, Levk;->I:Ljuf;

    invoke-virtual {v0, v1, v2}, Lva;->A(Ljava/lang/Runnable;Ljuf;)V

    iget-object v0, p0, Levk;->aj:Lfmf;

    sget-object v1, Lika;->g:Lika;

    iget-object v2, p0, Levk;->I:Ljuf;

    invoke-virtual {v0, p0, v1, v2}, Lfmf;->b(Lchk;Lika;Ljuf;)V

    iget-object v0, p0, Levk;->x:Lhwd;

    iget-object v1, p0, Levk;->ap:Lhwf;

    iget-object v2, p0, Levk;->I:Ljuf;

    invoke-virtual {v0, p0, v1, v2}, Lhwd;->d(Lchk;Lhwf;Ljuf;)V

    iget-object v0, p0, Levk;->e:Lcgx;

    invoke-interface {v0}, Lcgx;->g()Lcha;

    move-result-object v0

    check-cast v0, Lcie;

    iget-object v0, v0, Lcie;->C:Ldyk;

    iget-object v0, p0, Levk;->u:Lflp;

    invoke-virtual {v0}, Lflp;->d()V

    iget-object v0, p0, Levk;->I:Ljuf;

    iget-object v1, p0, Levk;->J:Lgow;

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    iget-object v0, p0, Levk;->l:Leoa;

    iget-object v1, p0, Levk;->S:Lenz;

    invoke-virtual {v0, v1}, Leoa;->a(Lenz;)V

    iget-object v0, p0, Levk;->I:Ljuf;

    new-instance v1, Ledg;

    const/16 v2, 0x12

    invoke-direct {v1, p0, v2}, Ledg;-><init>(Levk;I)V

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    iget-object v0, p0, Levk;->ah:Lfdc;

    invoke-virtual {v0}, Lfdc;->b()V

    iget-object v0, p0, Levk;->D:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Levk;->D:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lckr;

    sget-object v1, Lika;->g:Lika;

    iget-object v2, p0, Levk;->I:Ljuf;

    invoke-interface {v0, v1, v2}, Lckr;->e(Lika;Ljuf;)V

    :cond_1
    iget-object v0, p0, Levk;->as:Lbkc;

    invoke-static {v0}, Lcdg;->q(Lbkc;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Levk;->at:Ldne;

    invoke-virtual {v0}, Ldne;->r()V

    iget-object v0, p0, Levk;->as:Lbkc;

    invoke-virtual {v0}, Lbkc;->e()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcdg;->b(Landroid/content/Intent;)I

    move-result v0

    invoke-virtual {p0, v0}, Levk;->x(I)V

    iget-object v0, p0, Levk;->as:Lbkc;

    invoke-virtual {v0}, Lbkc;->e()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcdg;->f(Landroid/content/Intent;)V

    :cond_2
    iget-object v0, p0, Levk;->V:Lhdk;

    invoke-virtual {v0}, Lhdk;->h()V

    iget-object v0, p0, Levk;->V:Lhdk;

    invoke-virtual {v0}, Lhdk;->g()V

    iget-object v0, p0, Levk;->c:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    return-void
.end method

.method public final p()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Levk;->P:Lgya;

    iget-object v1, p0, Levk;->am:Lflj;

    invoke-virtual {v1}, Lnnb;->isDone()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Levk;->T:Lflk;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lflk;->close()V

    iput-object v0, p0, Levk;->T:Lflk;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Levk;->am:Lflj;

    invoke-virtual {v0, v2}, Lnnb;->cancel(Z)Z

    :cond_1
    :goto_0
    iget-object v0, p0, Levk;->h:Lfux;

    invoke-virtual {v0}, Lfux;->d()V

    iget-object v0, p0, Levk;->m:Lici;

    invoke-virtual {v0}, Lici;->a()V

    iget-object v0, p0, Levk;->ah:Lfdc;

    invoke-virtual {v0}, Lfdc;->a()V

    iget-object v0, p0, Levk;->e:Lcgx;

    invoke-interface {v0}, Lcgx;->g()Lcha;

    move-result-object v0

    check-cast v0, Lcie;

    iget-object v0, v0, Lcie;->C:Ldyk;

    iput v2, p0, Levk;->M:I

    iget-object v0, p0, Levk;->r:Litm;

    invoke-interface {v0}, Litm;->z()V

    iget-object v0, p0, Levk;->I:Ljuf;

    invoke-virtual {v0}, Ljuf;->close()V

    iget-object v0, p0, Levk;->A:Lebl;

    invoke-virtual {v0, v2}, Lebl;->h(Z)V

    return-void
.end method

.method public final r()V
    .locals 5

    iget-object v0, p0, Levk;->c:Lkbc;

    const-string v1, "PortraitModule#takePictureNow"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, p0, Levk;->T:Lflk;

    if-nez v0, :cond_0

    sget-object v0, Levk;->b:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Not taking picture since Camera is closed."

    const/16 v2, 0x7c3

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lflk;->b()Ljvs;

    move-result-object v1

    invoke-interface {v1}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v0, Levk;->b:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Not taking picture since the Camera is not ready to take a picture."

    const/16 v2, 0x7c2

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void

    :cond_1
    iget-object v1, p0, Levk;->q:Ldpl;

    invoke-virtual {v1}, Ldpl;->b()V

    iget-object v1, p0, Levk;->p:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Levk;->p:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->interrupt()V

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Levk;->w(Z)V

    iget-object v2, p0, Levk;->u:Lflp;

    invoke-virtual {v2}, Lflp;->b()V

    iget-object v2, p0, Levk;->z:Libj;

    invoke-interface {v2, v1}, Libj;->l(Z)V

    iget-object v2, p0, Levk;->e:Lcgx;

    invoke-interface {v2}, Lcgx;->g()Lcha;

    move-result-object v2

    invoke-interface {v2}, Lcha;->e()V

    iget-object v2, p0, Levk;->D:Lmqp;

    invoke-virtual {v2}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Levk;->D:Lmqp;

    invoke-virtual {v2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lckr;

    invoke-interface {v2}, Lckr;->g()V

    :cond_3
    iget-object v2, p0, Levk;->A:Lebl;

    iget-object v2, v2, Lebl;->b:Ljvs;

    invoke-interface {v2}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Levk;->D:Lmqp;

    invoke-virtual {v2}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lflk;->i()Lmbe;

    move-result-object v1

    iget-object v1, v1, Lmbe;->a:Ljava/lang/Object;

    invoke-interface {v1}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj$/time/Duration;

    invoke-virtual {v1}, Lj$/time/Duration;->toMillis()J

    iget-object v2, p0, Levk;->ai:Lebi;

    invoke-virtual {v2, v1}, Lebi;->d(Lj$/time/Duration;)Z

    move-result v2

    iget-object v3, p0, Levk;->D:Lmqp;

    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lckr;

    invoke-interface {v3, v2, v1}, Lckr;->j(ZLj$/time/Duration;)V

    sget-object v1, Lgya;->m:Lgya;

    iput-object v1, p0, Levk;->P:Lgya;

    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v2, p0, Levk;->r:Litm;

    invoke-interface {v2}, Litm;->n()V

    :goto_0
    iget-object v2, p0, Levk;->aq:Lhxh;

    invoke-virtual {v2}, Lhxh;->a()V

    iget-object v2, p0, Levk;->Y:Lfmd;

    new-instance v3, Levj;

    invoke-direct {v3, p0, v1}, Levj;-><init>(Levk;Z)V

    iget-boolean v1, p0, Levk;->H:Z

    iget-object v4, p0, Levk;->N:Lhke;

    invoke-interface {v2, v0, v3, v1, v4}, Lfmd;->b(Lflk;Lftf;ZLhke;)Lnou;

    move-result-object v0

    iget-object v1, p0, Levk;->O:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Levk;->O:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Lekf;

    const/16 v2, 0x14

    invoke-direct {v1, p0, v0, v2}, Lekf;-><init>(Levk;Lnou;I)V

    iget-object v2, p0, Levk;->f:Ljuh;

    invoke-interface {v0, v1, v2}, Lnou;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object v0, p0, Levk;->N:Lhke;

    invoke-virtual {v0}, Lhke;->c()J

    iget-object v0, p0, Levk;->N:Lhke;

    invoke-virtual {v0}, Lhke;->d()J

    iget-object v0, p0, Levk;->ae:Lhkc;

    invoke-interface {v0}, Lhkc;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhke;

    iput-object v0, p0, Levk;->N:Lhke;

    iget-object v0, p0, Levk;->c:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final s(Ljava/lang/Runnable;)V
    .locals 0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final t()Z
    .locals 1

    invoke-static {}, Ljuh;->a()V

    iget-object v0, p0, Levk;->x:Lhwd;

    invoke-virtual {v0}, Lhwd;->g()Z

    move-result v0

    return v0
.end method

.method public final u()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final w(Z)V
    .locals 2

    iget-boolean v0, p0, Lchk;->a:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lgya;->m:Lgya;

    iget-object v1, p0, Levk;->P:Lgya;

    invoke-virtual {v0, v1}, Lgya;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Levk;->e:Lcgx;

    invoke-interface {v0}, Lcgx;->g()Lcha;

    move-result-object v0

    invoke-interface {v0, p1}, Lcha;->h(Z)V

    iget-object v0, p0, Levk;->e:Lcgx;

    invoke-interface {v0}, Lcgx;->g()Lcha;

    move-result-object v0

    invoke-interface {v0, p1}, Lcha;->j(Z)V

    :cond_1
    iget-boolean p1, p0, Levk;->al:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Levk;->s:Ldhi;

    sget-object v0, Ldho;->ci:Ldhj;

    invoke-interface {p1, v0}, Ldhi;->l(Ldhj;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Levk;->E:Lhxx;

    invoke-virtual {p1}, Lhxx;->h()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Levk;->w:Liff;

    invoke-interface {p1}, Liff;->b()Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->sendAccessibilityEvent(I)V

    :cond_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Levk;->al:Z

    :cond_3
    return-void
.end method

.method public final x(I)V
    .locals 1

    iget-object v0, p0, Levk;->q:Ldpl;

    invoke-virtual {v0}, Ldpl;->b()V

    iget-object v0, p0, Levk;->p:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Levk;->p:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->interrupt()V

    :cond_0
    iget-object v0, p0, Levk;->x:Lhwd;

    invoke-virtual {v0, p1}, Lhwd;->e(I)V

    return-void
.end method
