.class public final Leuc;
.super Lchk;


# static fields
.field public static final b:Lnak;

.field public static final c:Ljava/lang/Float;


# instance fields
.field public final A:Ldfo;

.field public final B:Ldfb;

.field public final C:Lebi;

.field public final D:Lhxx;

.field public final E:Lmqp;

.field public final F:Lmqp;

.field public final G:Lmqp;

.field public H:Z

.field public I:Z

.field public J:Ljuf;

.field public K:Ldms;

.field public L:Landroid/os/CountDownTimer;

.field public M:Lhke;

.field public final N:Lfcv;

.field public final O:Lcom/google/android/apps/camera/bottombar/BottomBarListener;

.field public final P:Lenz;

.field public final Q:Lgrm;

.field public R:Lflk;

.field public S:Lhsa;

.field public final T:Lhdk;

.field public final U:Lgxb;

.field private final V:Lkbc;

.field private final W:Lfuq;

.field private final X:Lfux;

.field private final Y:Lhgy;

.field private final Z:Lhsl;

.field private final aa:Lhwd;

.field private final ab:Loiw;

.field private final ac:Ljwb;

.field private final ad:Ljwb;

.field private final ae:Lhkc;

.field private final af:Legw;

.field private final ag:Lhnb;

.field private final ah:Ljava/io/File;

.field private final ai:Lgeh;

.field private aj:Lflj;

.field private ak:Lcom/google/android/apps/camera/progressoverlay/ProgressOverlay;

.field private final al:Lgte;

.field private final am:Lmqp;

.field private final an:Lfcm;

.field private final ao:Lell;

.field private final ap:Lfmf;

.field private final aq:Lebk;

.field private final ar:Lhwf;

.field private final as:Lhxh;

.field private final at:Lbkc;

.field private final au:Lva;

.field public final d:Ldbf;

.field public final e:Lcgx;

.field public final f:Ljuh;

.field public final g:Lifj;

.field public final h:Lflv;

.field public final i:Leoa;

.field public final j:Lhtg;

.field public final k:Litm;

.field public final l:Lcbn;

.field public final m:Lmqp;

.field public final n:Lflp;

.field public final o:Ljwb;

.field public final p:Lfdu;

.field public final q:Ldhi;

.field public final r:Lcom/google/android/apps/camera/bottombar/BottomBarController;

.field public final s:Liff;

.field public final t:Landroid/view/accessibility/AccessibilityManager;

.field public final u:Ldpl;

.field public final v:Lgft;

.field public final w:Lebl;

.field public final x:Lfdc;

.field public final y:Lmqp;

.field public final z:Lgla;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/legacy/app/module/longexposure/LongExposureMode"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Leuc;->b:Lnak;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Leuc;->c:Ljava/lang/Float;

    return-void
.end method

.method public constructor <init>(Lkbc;Ldbf;Lfuq;Lcgy;Lfux;Lmqp;Ljuh;Lflv;Lhgy;Leoa;Lhtg;Litm;Lmqp;Ljwb;Loiw;Lflp;Lhwd;Lfdu;Ljwb;Ljwb;Lcbn;Lgrm;Lhdk;Ldhi;Lebl;Lbkc;Lcom/google/android/apps/camera/bottombar/BottomBarController;Liff;Landroid/view/accessibility/AccessibilityManager;Ldpl;Lgft;Lhkc;Lfcv;Lfdc;Lgxb;Legw;Lhnb;Landroid/content/Context;Lhxh;Lmqp;Lgla;Lgte;Lmqp;Lfcm;Ldfo;Lgeh;Ldfb;Lell;Lebi;Lhxx;Lhsl;Lmqp;Lmqp;Lfmf;Lva;[B[B[B[B[B)V
    .locals 7

    move-object v0, p0

    invoke-direct {p0}, Lchk;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Leuc;->H:Z

    new-instance v2, Letu;

    invoke-direct {v2, p0}, Letu;-><init>(Leuc;)V

    iput-object v2, v0, Leuc;->O:Lcom/google/android/apps/camera/bottombar/BottomBarListener;

    new-instance v2, Letv;

    invoke-direct {v2, p0, v1}, Letv;-><init>(Leuc;I)V

    iput-object v2, v0, Leuc;->P:Lenz;

    new-instance v2, Letw;

    invoke-direct {v2, p0}, Letw;-><init>(Leuc;)V

    iput-object v2, v0, Leuc;->aq:Lebk;

    new-instance v2, Lety;

    invoke-direct {v2, p0, v1}, Lety;-><init>(Leuc;I)V

    iput-object v2, v0, Leuc;->ar:Lhwf;

    move-object v1, p1

    iput-object v1, v0, Leuc;->V:Lkbc;

    move-object v1, p3

    iput-object v1, v0, Leuc;->W:Lfuq;

    move-object v1, p2

    iput-object v1, v0, Leuc;->d:Ldbf;

    move-object v1, p4

    iput-object v1, v0, Leuc;->e:Lcgx;

    move-object v1, p5

    iput-object v1, v0, Leuc;->X:Lfux;

    move-object v1, p6

    iput-object v1, v0, Leuc;->G:Lmqp;

    move-object v1, p7

    iput-object v1, v0, Leuc;->f:Ljuh;

    move-object v1, p8

    iput-object v1, v0, Leuc;->h:Lflv;

    move-object/from16 v2, p9

    iput-object v2, v0, Leuc;->Y:Lhgy;

    move-object/from16 v2, p10

    iput-object v2, v0, Leuc;->i:Leoa;

    move-object/from16 v2, p11

    iput-object v2, v0, Leuc;->j:Lhtg;

    move-object/from16 v2, p12

    iput-object v2, v0, Leuc;->k:Litm;

    move-object/from16 v2, p13

    iput-object v2, v0, Leuc;->m:Lmqp;

    move-object/from16 v2, p14

    iput-object v2, v0, Leuc;->o:Ljwb;

    move-object/from16 v2, p16

    iput-object v2, v0, Leuc;->n:Lflp;

    move-object/from16 v2, p17

    iput-object v2, v0, Leuc;->aa:Lhwd;

    move-object/from16 v2, p15

    iput-object v2, v0, Leuc;->ab:Loiw;

    move-object/from16 v2, p18

    iput-object v2, v0, Leuc;->p:Lfdu;

    move-object/from16 v3, p19

    iput-object v3, v0, Leuc;->ac:Ljwb;

    move-object/from16 v3, p20

    iput-object v3, v0, Leuc;->ad:Ljwb;

    move-object/from16 v3, p21

    iput-object v3, v0, Leuc;->l:Lcbn;

    move-object/from16 v3, p22

    iput-object v3, v0, Leuc;->Q:Lgrm;

    move-object/from16 v3, p24

    iput-object v3, v0, Leuc;->q:Ldhi;

    move-object/from16 v4, p26

    iput-object v4, v0, Leuc;->at:Lbkc;

    move-object/from16 v4, p27

    iput-object v4, v0, Leuc;->r:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    move-object/from16 v4, p28

    iput-object v4, v0, Leuc;->s:Liff;

    move-object/from16 v4, p25

    iput-object v4, v0, Leuc;->w:Lebl;

    move-object/from16 v5, p23

    iput-object v5, v0, Leuc;->T:Lhdk;

    move-object/from16 v5, p29

    iput-object v5, v0, Leuc;->t:Landroid/view/accessibility/AccessibilityManager;

    move-object/from16 v5, p30

    iput-object v5, v0, Leuc;->u:Ldpl;

    move-object/from16 v5, p31

    iput-object v5, v0, Leuc;->v:Lgft;

    move-object/from16 v5, p32

    iput-object v5, v0, Leuc;->ae:Lhkc;

    invoke-interface/range {p32 .. p32}, Lhkc;->a()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lhke;

    iput-object v5, v0, Leuc;->M:Lhke;

    move-object/from16 v5, p33

    iput-object v5, v0, Leuc;->N:Lfcv;

    move-object/from16 v6, p34

    iput-object v6, v0, Leuc;->x:Lfdc;

    move-object/from16 v6, p35

    iput-object v6, v0, Leuc;->U:Lgxb;

    move-object/from16 v6, p36

    iput-object v6, v0, Leuc;->af:Legw;

    move-object/from16 v6, p37

    iput-object v6, v0, Leuc;->ag:Lhnb;

    invoke-virtual/range {p38 .. p38}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    iput-object v6, v0, Leuc;->ah:Ljava/io/File;

    move-object/from16 v6, p39

    iput-object v6, v0, Leuc;->as:Lhxh;

    move-object/from16 v6, p40

    iput-object v6, v0, Leuc;->y:Lmqp;

    move-object/from16 v6, p41

    iput-object v6, v0, Leuc;->z:Lgla;

    move-object/from16 v6, p42

    iput-object v6, v0, Leuc;->al:Lgte;

    move-object/from16 v6, p43

    iput-object v6, v0, Leuc;->am:Lmqp;

    move-object/from16 v6, p44

    iput-object v6, v0, Leuc;->an:Lfcm;

    move-object/from16 v6, p45

    iput-object v6, v0, Leuc;->A:Ldfo;

    move-object/from16 v6, p46

    iput-object v6, v0, Leuc;->ai:Lgeh;

    move-object/from16 v6, p47

    iput-object v6, v0, Leuc;->B:Ldfb;

    move-object/from16 v6, p48

    iput-object v6, v0, Leuc;->ao:Lell;

    sget-object v6, Ldhq;->a:Ldhk;

    invoke-interface/range {p24 .. p24}, Ldhi;->g()V

    invoke-interface/range {p24 .. p24}, Ldhi;->g()V

    move-object/from16 v3, p49

    iput-object v3, v0, Leuc;->C:Lebi;

    move-object/from16 v6, p50

    iput-object v6, v0, Leuc;->D:Lhxx;

    move-object/from16 v6, p51

    iput-object v6, v0, Leuc;->Z:Lhsl;

    move-object/from16 v6, p52

    iput-object v6, v0, Leuc;->E:Lmqp;

    move-object/from16 v6, p53

    iput-object v6, v0, Leuc;->F:Lmqp;

    move-object/from16 v6, p54

    iput-object v6, v0, Leuc;->ap:Lfmf;

    move-object/from16 v6, p55

    iput-object v6, v0, Leuc;->au:Lva;

    new-instance v6, Letx;

    move-object p1, v6

    move-object p2, p0

    move-object/from16 p3, p25

    move-object/from16 p4, p49

    move-object p5, p8

    move-object/from16 p6, p18

    move-object/from16 p7, p33

    invoke-direct/range {p1 .. p7}, Letx;-><init>(Leuc;Lebl;Lebi;Lflv;Lfdu;Lfcv;)V

    iput-object v6, v0, Leuc;->g:Lifj;

    return-void
.end method

.method private final F(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Leuc;->ak:Lcom/google/android/apps/camera/progressoverlay/ProgressOverlay;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/progressoverlay/ProgressOverlay;->a()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Leuc;->ak:Lcom/google/android/apps/camera/progressoverlay/ProgressOverlay;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/progressoverlay/ProgressOverlay;->b()V

    :goto_0
    iget-object p1, p0, Leuc;->Q:Lgrm;

    iget-object v0, p0, Leuc;->ak:Lcom/google/android/apps/camera/progressoverlay/ProgressOverlay;

    invoke-virtual {p1, v0}, Lgrm;->d(Lcom/google/android/apps/camera/progressoverlay/ProgressOverlay;)V

    return-void
.end method


# virtual methods
.method public final A(I)V
    .locals 1

    iget-object v0, p0, Leuc;->u:Ldpl;

    invoke-virtual {v0}, Ldpl;->b()V

    iget-object v0, p0, Leuc;->t:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Leuc;->t:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->interrupt()V

    :cond_0
    iget-object v0, p0, Leuc;->aa:Lhwd;

    invoke-virtual {v0, p1}, Lhwd;->e(I)V

    return-void
.end method

.method public final B(Z)V
    .locals 1

    iget-object v0, p0, Leuc;->N:Lfcv;

    invoke-virtual {v0}, Licd;->f()V

    if-eqz p1, :cond_0

    iget-object p1, p0, Leuc;->Y:Lhgy;

    const v0, 0x7f130004

    invoke-interface {p1, v0}, Lhgy;->b(I)V

    iget-object p1, p0, Leuc;->e:Lcgx;

    invoke-interface {p1}, Lcgx;->g()Lcha;

    move-result-object p1

    invoke-interface {p1}, Lcha;->m()V

    return-void

    :cond_0
    iget-object p1, p0, Leuc;->Y:Lhgy;

    const v0, 0x7f130008

    invoke-interface {p1, v0}, Lhgy;->b(I)V

    return-void
.end method

.method public final C(Z)V
    .locals 4

    iget-object v0, p0, Leuc;->ai:Lgeh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, 0x7f080323

    const v2, 0x7f140087

    const-string v3, "AutoAstro"

    invoke-interface {v0, p1, v1, v2, v3}, Lgeh;->v(ZIILjava/lang/String;)V

    return-void
.end method

.method public final D()Z
    .locals 2

    iget-object v0, p0, Leuc;->aa:Lhwd;

    invoke-virtual {v0}, Lhwd;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Leuc;->k:Litm;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Litm;->K(Z)V

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final E()Z
    .locals 1

    iget-object v0, p0, Leuc;->R:Lflk;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lflk;->b()Ljvs;

    move-result-object v0

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final bH()Lmqp;
    .locals 1

    iget-object v0, p0, Leuc;->R:Lflk;

    invoke-static {v0}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    return-object v0
.end method

.method public final ca(I)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Leuc;->R:Lflk;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lflk;->b()Ljvs;

    move-result-object p1

    invoke-interface {p1}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Leuc;->y(Z)V

    :cond_0
    return-void
.end method

.method public final cc()V
    .locals 0

    invoke-virtual {p0}, Leuc;->x()V

    return-void
.end method

.method public final cd()V
    .locals 3

    invoke-virtual {p0}, Leuc;->D()Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Leuc;->w(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Leuc;->C(Z)V

    iget-object v1, p0, Leuc;->k:Litm;

    move-object v2, v1

    check-cast v2, Lisi;

    iput v0, v2, Lisi;->ai:I

    invoke-interface {v1}, Litm;->z()V

    iget-object v0, p0, Leuc;->k:Litm;

    invoke-interface {v0}, Litm;->p()V

    iget-object v0, p0, Leuc;->q:Ldhi;

    sget-object v1, Ldho;->ci:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Leuc;->D:Lhxx;

    invoke-virtual {v0}, Lhxx;->f()V

    :cond_0
    return-void
.end method

.method public final close()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Leuc;->y(Z)V

    return-void
.end method

.method public final k()V
    .locals 6

    iget-object v0, p0, Leuc;->V:Lkbc;

    const-string v1, "LongExposureMode#startCameraFromCameraSetting"

    invoke-interface {v0, v1}, Lkbc;->a(Ljava/lang/String;)Lkbf;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Leuc;->R:Lflk;

    iget-object v1, p0, Leuc;->aj:Lflj;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lnnb;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Leuc;->aj:Lflj;

    invoke-virtual {v1, v2}, Lnnb;->cancel(Z)Z

    :cond_0
    iget-object v1, p0, Leuc;->W:Lfuq;

    iget-object v3, p0, Leuc;->d:Ldbf;

    iget-object v4, p0, Leuc;->X:Lfux;

    sget-object v5, Lika;->m:Lika;

    invoke-interface {v1, v3, v4, v5}, Lfuq;->a(Ldbf;Lfux;Lika;)Lflj;

    move-result-object v1

    iput-object v1, p0, Leuc;->aj:Lflj;

    iget-object v1, p0, Leuc;->k:Litm;

    move-object v3, v1

    check-cast v3, Lisi;

    iput v2, v3, Lisi;->ai:I

    invoke-interface {v1}, Litm;->x()V

    iget-object v1, p0, Leuc;->k:Litm;

    invoke-interface {v1}, Litm;->s()V

    iget-object v1, p0, Leuc;->k:Litm;

    invoke-interface {v1}, Litm;->aa()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Leuc;->k:Litm;

    sget-object v2, Lika;->m:Lika;

    invoke-interface {v1, v2}, Litm;->Z(Lika;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Leuc;->k:Litm;

    check-cast v1, Lisi;

    iget-boolean v1, v1, Lisi;->S:Z

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Leuc;->k:Litm;

    invoke-interface {v1}, Litm;->p()V

    :cond_2
    iget-object v1, p0, Leuc;->aj:Lflj;

    new-instance v2, Lenq;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v0, v3}, Lenq;-><init>(Leuc;Lkbf;I)V

    iget-object v0, p0, Leuc;->f:Ljuh;

    invoke-static {v1, v2, v0}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final l()V
    .locals 3

    iget-object v0, p0, Leuc;->J:Ljuf;

    iget-object v1, p0, Leuc;->w:Lebl;

    iget-object v2, p0, Leuc;->aq:Lebk;

    invoke-virtual {v1, v2}, Lebl;->e(Lebk;)Lkad;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    iget-object v0, p0, Leuc;->q:Ldhi;

    sget-object v1, Ldho;->ci:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Leuc;->o:Ljwb;

    invoke-interface {v0}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgyu;

    sget-object v1, Lgyu;->a:Lgyu;

    invoke-virtual {v0, v1}, Lgyu;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Leuc;->D:Lhxx;

    invoke-virtual {v0}, Lhxx;->e()V

    :cond_0
    return-void
.end method

.method public final n()V
    .locals 6

    iget-object v0, p0, Leuc;->p:Lfdu;

    invoke-virtual {v0}, Lfdn;->f()V

    iget-object v0, p0, Leuc;->J:Ljuf;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljuf;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Leuc;->J:Ljuf;

    invoke-virtual {v0}, Ljuf;->close()V

    :cond_0
    new-instance v0, Ljuf;

    invoke-direct {v0}, Ljuf;-><init>()V

    iput-object v0, p0, Leuc;->J:Ljuf;

    iget-object v0, p0, Leuc;->Q:Lgrm;

    invoke-virtual {v0}, Lgrm;->b()V

    iget-object v0, p0, Leuc;->n:Lflp;

    invoke-virtual {v0}, Lflp;->d()V

    iget-object v0, p0, Leuc;->n:Lflp;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lflp;->e(Z)V

    iget-object v0, p0, Leuc;->n:Lflp;

    iget-object v0, v0, Lflp;->b:Lihx;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iput v2, v0, Lihx;->f:I

    iput v2, v0, Lihx;->g:I

    iput-boolean v2, v0, Lihx;->k:Z

    :cond_1
    iget-object v0, p0, Leuc;->V:Lkbc;

    const-string v3, "CuttlefishModule#start"

    invoke-interface {v0, v3}, Lkbc;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Lchk;->k()V

    invoke-virtual {p0, v1}, Leuc;->y(Z)V

    iget-object v0, p0, Leuc;->r:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    iget-object v3, p0, Leuc;->O:Lcom/google/android/apps/camera/bottombar/BottomBarListener;

    invoke-virtual {v0, v3}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->addListener(Lcom/google/android/apps/camera/bottombar/BottomBarListener;)V

    iget-object v0, p0, Leuc;->ap:Lfmf;

    sget-object v3, Lika;->m:Lika;

    iget-object v4, p0, Leuc;->J:Ljuf;

    invoke-virtual {v0, p0, v3, v4}, Lfmf;->b(Lchk;Lika;Ljuf;)V

    iget-object v0, p0, Leuc;->J:Ljuf;

    new-instance v3, Ledg;

    const/16 v4, 0xb

    invoke-direct {v3, p0, v4}, Ledg;-><init>(Leuc;I)V

    invoke-virtual {v0, v3}, Ljuf;->d(Lkad;)V

    iget-object v0, p0, Leuc;->J:Ljuf;

    iget-object v3, p0, Leuc;->s:Liff;

    iget-object v4, p0, Leuc;->g:Lifj;

    invoke-interface {v3, v4}, Liff;->e(Lifj;)Lkad;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljuf;->d(Lkad;)V

    iget-object v0, p0, Leuc;->J:Ljuf;

    iget-object v3, p0, Leuc;->o:Ljwb;

    invoke-static {v3}, Ljvo;->c(Ljvs;)Ljvs;

    move-result-object v3

    new-instance v4, Ldsk;

    const/16 v5, 0x11

    invoke-direct {v4, p0, v5}, Ldsk;-><init>(Leuc;I)V

    iget-object v5, p0, Leuc;->f:Ljuh;

    invoke-interface {v3, v4, v5}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljuf;->d(Lkad;)V

    iget-object v0, p0, Leuc;->J:Ljuf;

    iget-object v3, p0, Leuc;->w:Lebl;

    iget-object v4, p0, Leuc;->aq:Lebk;

    invoke-virtual {v3, v4}, Lebl;->e(Lebk;)Lkad;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljuf;->d(Lkad;)V

    iget-object v0, p0, Leuc;->J:Ljuf;

    iget-object v3, p0, Leuc;->Z:Lhsl;

    new-instance v4, Levh;

    invoke-direct {v4, p0, v1}, Levh;-><init>(Leuc;I)V

    invoke-interface {v3, v4}, Lhsl;->a(Lhsk;)Lkad;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljuf;->d(Lkad;)V

    iget-object v0, p0, Leuc;->i:Leoa;

    iget-object v3, p0, Leuc;->P:Lenz;

    invoke-virtual {v0, v3}, Leoa;->a(Lenz;)V

    iget-object v0, p0, Leuc;->J:Ljuf;

    new-instance v3, Ledg;

    const/16 v4, 0xc

    invoke-direct {v3, p0, v4}, Ledg;-><init>(Leuc;I)V

    invoke-virtual {v0, v3}, Ljuf;->d(Lkad;)V

    iget-object v0, p0, Leuc;->aa:Lhwd;

    iget-object v3, p0, Leuc;->ar:Lhwf;

    iget-object v4, p0, Leuc;->J:Ljuf;

    invoke-virtual {v0, p0, v3, v4}, Lhwd;->d(Lchk;Lhwf;Ljuf;)V

    iget-object v0, p0, Leuc;->ab:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldja;

    iget-object v0, v0, Ldja;->a:Ljava/lang/Object;

    check-cast v0, Ljew;

    const v3, 0x7f0b02ae

    invoke-virtual {v0, v3}, Ljew;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/progressoverlay/ProgressOverlay;

    iput-object v0, p0, Leuc;->ak:Lcom/google/android/apps/camera/progressoverlay/ProgressOverlay;

    invoke-direct {p0, v1}, Leuc;->F(Z)V

    iget-object v0, p0, Leuc;->at:Lbkc;

    invoke-static {v0}, Lcdg;->q(Lbkc;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Leuc;->at:Lbkc;

    invoke-virtual {v0}, Lbkc;->e()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcdg;->b(Landroid/content/Intent;)I

    move-result v0

    invoke-virtual {p0, v0}, Leuc;->A(I)V

    iget-object v0, p0, Leuc;->at:Lbkc;

    invoke-virtual {v0}, Lbkc;->e()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcdg;->f(Landroid/content/Intent;)V

    :cond_2
    iget-object v0, p0, Leuc;->T:Lhdk;

    invoke-virtual {v0}, Lhdk;->h()V

    iget-object v0, p0, Leuc;->T:Lhdk;

    invoke-virtual {v0}, Lhdk;->g()V

    iget-object v0, p0, Leuc;->x:Lfdc;

    invoke-virtual {v0}, Lfdc;->b()V

    iget-object v0, p0, Leuc;->J:Ljuf;

    new-instance v1, Ledg;

    const/16 v3, 0xd

    invoke-direct {v1, p0, v3}, Ledg;-><init>(Leuc;I)V

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    iget-object v0, p0, Leuc;->V:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    iget-object v0, p0, Leuc;->N:Lfcv;

    iget-object v1, p0, Leuc;->ao:Lell;

    invoke-virtual {v0, v1}, Licd;->e(Lell;)V

    iget-object v0, p0, Leuc;->J:Ljuf;

    iget-object v1, p0, Leuc;->N:Lfcv;

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    iget-object v0, p0, Leuc;->J:Ljuf;

    iget-object v1, p0, Leuc;->ag:Lhnb;

    iget-object v3, p0, Leuc;->af:Legw;

    invoke-interface {v1, v3}, Lhnb;->f(Lhmz;)Lkad;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    iget-object v0, p0, Leuc;->J:Ljuf;

    iget-object v1, p0, Leuc;->ag:Lhnb;

    iget-object v3, p0, Leuc;->al:Lgte;

    invoke-interface {v1, v3}, Lhnb;->f(Lhmz;)Lkad;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    iget-object v0, p0, Leuc;->q:Ldhi;

    sget-object v1, Ldhu;->g:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Leuc;->ah:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Leuc;->J:Ljuf;

    new-instance v1, Lnrx;

    iget-object v3, p0, Leuc;->ah:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lnrx;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    :cond_3
    iget-object v0, p0, Leuc;->am:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Leuc;->an:Lfcm;

    iget-boolean v0, v0, Lfcm;->i:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Leuc;->k:Litm;

    invoke-interface {v0}, Litm;->h()F

    move-result v0

    sget-object v1, Leuc;->c:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_4

    iget-object v0, p0, Leuc;->k:Litm;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v0, v1}, Litm;->D(F)V

    iget-object v0, p0, Leuc;->k:Litm;

    move-object v1, v0

    check-cast v1, Lisi;

    iget-boolean v1, v1, Lisi;->S:Z

    if-eqz v1, :cond_4

    invoke-interface {v0}, Litm;->p()V

    :cond_4
    iget-object v0, p0, Leuc;->am:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfde;

    invoke-interface {v0}, Lfde;->a()V

    iget-object v0, p0, Leuc;->an:Lfcm;

    iput-boolean v2, v0, Lfcm;->i:Z

    :cond_5
    iget-object v0, p0, Leuc;->au:Lva;

    new-instance v1, Lerm;

    const/16 v2, 0x13

    invoke-direct {v1, p0, v2}, Lerm;-><init>(Leuc;I)V

    iget-object v2, p0, Leuc;->J:Ljuf;

    invoke-virtual {v0, v1, v2}, Lva;->A(Ljava/lang/Runnable;Ljuf;)V

    return-void
.end method

.method public final p()V
    .locals 2

    iget-object v0, p0, Leuc;->aj:Lflj;

    invoke-virtual {v0}, Lnnb;->isDone()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Leuc;->R:Lflk;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lflk;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Leuc;->R:Lflk;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Leuc;->aj:Lflj;

    invoke-virtual {v0, v1}, Lnnb;->cancel(Z)Z

    :cond_1
    :goto_0
    iput-boolean v1, p0, Leuc;->H:Z

    iget-object v0, p0, Leuc;->X:Lfux;

    invoke-virtual {v0}, Lfux;->d()V

    iget-object v0, p0, Leuc;->n:Lflp;

    invoke-virtual {v0, v1}, Lflp;->e(Z)V

    invoke-direct {p0, v1}, Leuc;->F(Z)V

    iget-object v0, p0, Leuc;->Q:Lgrm;

    invoke-virtual {v0}, Lgrm;->a()V

    iget-object v0, p0, Leuc;->J:Ljuf;

    invoke-virtual {v0}, Ljuf;->close()V

    iget-object v0, p0, Leuc;->p:Lfdu;

    invoke-virtual {v0}, Lfdn;->g()V

    return-void
.end method

.method public final r()V
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Leuc;->V:Lkbc;

    const-string v2, "CuttlefishModule#takePictureNow"

    invoke-interface {v1, v2}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v1, v0, Leuc;->R:Lflk;

    if-nez v1, :cond_0

    sget-object v1, Leuc;->b:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    const-string v2, "Not taking picture since Camera is closed."

    const/16 v3, 0x79d

    invoke-static {v1, v2, v3}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void

    :cond_0
    invoke-virtual {v1}, Lflk;->b()Ljvs;

    move-result-object v2

    invoke-interface {v2}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v1, Leuc;->b:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    const-string v2, "Not taking picture since the Camera is not ready to take a picture."

    const/16 v3, 0x79c

    invoke-static {v1, v2, v3}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void

    :cond_1
    iget-object v2, v0, Leuc;->u:Ldpl;

    invoke-virtual {v2}, Ldpl;->b()V

    iget-object v2, v0, Leuc;->t:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Leuc;->t:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->interrupt()V

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Leuc;->y(Z)V

    iget-object v3, v0, Leuc;->Y:Lhgy;

    const v4, 0x7f130024

    invoke-interface {v3, v4}, Lhgy;->b(I)V

    iget-object v3, v0, Leuc;->w:Lebl;

    invoke-virtual {v3}, Lebl;->f()V

    iget-object v3, v0, Leuc;->n:Lflp;

    invoke-virtual {v3}, Lflp;->b()V

    invoke-virtual {v1}, Lflk;->i()Lmbe;

    move-result-object v3

    iget-object v3, v3, Lmbe;->a:Ljava/lang/Object;

    invoke-interface {v3}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj$/time/Duration;

    invoke-virtual {v3}, Lj$/time/Duration;->toMillis()J

    iget-object v4, v0, Leuc;->w:Lebl;

    invoke-virtual {v4}, Lebl;->k()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v0, Leuc;->E:Lmqp;

    invoke-virtual {v4}, Lmqp;->g()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v0, Leuc;->C:Lebi;

    iget-boolean v4, v4, Lebi;->h:Z

    if-eqz v4, :cond_3

    iget-object v4, v0, Leuc;->E:Lmqp;

    invoke-virtual {v4}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lckq;

    invoke-interface {v4, v3}, Lckq;->D(Lj$/time/Duration;)Z

    :cond_3
    iget-object v4, v0, Leuc;->C:Lebi;

    invoke-virtual {v4, v3}, Lebi;->d(Lj$/time/Duration;)Z

    move-result v3

    iget-object v4, v0, Leuc;->w:Lebl;

    invoke-virtual {v4}, Lebl;->k()Z

    move-result v4

    if-nez v4, :cond_5

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    iget-object v4, v0, Leuc;->p:Lfdu;

    invoke-virtual {v4}, Lfdn;->d()V

    goto :goto_1

    :cond_5
    :goto_0
    iget-object v4, v0, Leuc;->p:Lfdu;

    invoke-virtual {v4}, Lfdn;->i()V

    :goto_1
    iget-object v4, v0, Leuc;->as:Lhxh;

    invoke-virtual {v4}, Lhxh;->a()V

    iget-object v4, v0, Leuc;->h:Lflv;

    new-instance v5, Leub;

    invoke-direct {v5, v0, v3}, Leub;-><init>(Leuc;Z)V

    iget-boolean v3, v0, Leuc;->I:Z

    iget-object v6, v0, Leuc;->M:Lhke;

    iput-object v6, v4, Lflv;->s:Lhke;

    iget-object v6, v1, Lflk;->b:Lflg;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-object v9, v4, Lflv;->y:Lkpo;

    iget-object v10, v4, Lflv;->i:Ljwb;

    invoke-interface {v10}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v10, v4, Lflv;->j:Ljwb;

    invoke-interface {v10}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    :cond_6
    invoke-virtual {v9, v7, v8}, Lkpo;->h(J)Lgxr;

    move-result-object v18

    iget-object v9, v4, Lflv;->A:Ldqx;

    iget-object v10, v4, Lflv;->z:Ljew;

    invoke-virtual {v10, v7, v8}, Ljew;->S(J)Ljava/lang/String;

    move-result-object v16

    iget-object v7, v4, Lflv;->a:Lfbk;

    invoke-interface {v7}, Lfbk;->b()Lcjf;

    move-result-object v17

    iget-object v7, v4, Lflv;->s:Lhke;

    invoke-static {v7}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v19

    new-instance v7, Lgwv;

    iget-object v8, v9, Ldqx;->c:Ljava/lang/Object;

    invoke-interface {v8}, Loiw;->get()Ljava/lang/Object;

    move-result-object v12

    iget-object v8, v9, Ldqx;->d:Ljava/lang/Object;

    invoke-interface {v8}, Loiw;->get()Ljava/lang/Object;

    move-result-object v8

    move-object v13, v8

    check-cast v13, Lefq;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v9, Ldqx;->a:Ljava/lang/Object;

    invoke-interface {v8}, Loiw;->get()Ljava/lang/Object;

    move-result-object v8

    move-object v14, v8

    check-cast v14, Ljvs;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v9, Ldqx;->e:Ljava/lang/Object;

    invoke-interface {v8}, Loiw;->get()Ljava/lang/Object;

    move-result-object v8

    move-object v15, v8

    check-cast v15, Lgpv;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v9, Ldqx;->b:Ljava/lang/Object;

    check-cast v8, Lgca;

    invoke-virtual {v8}, Lgca;->a()Ljvs;

    move-result-object v20

    move-object v11, v7

    invoke-direct/range {v11 .. v20}, Lgwv;-><init>(Lgwc;Lefq;Ljvs;Lgpv;Ljava/lang/String;Lcjf;Lgxr;Lmqp;Ljvs;)V

    iget-object v6, v6, Lflg;->d:Lihb;

    iget-object v6, v6, Lihb;->a:Lkaf;

    iget-object v8, v4, Lflv;->c:Lgft;

    invoke-interface {v8}, Lgft;->j()I

    move-result v8

    invoke-static {v8}, Lgfp;->b(I)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v6}, Lkaf;->d()Lkaf;

    move-result-object v6

    goto :goto_2

    :cond_7
    invoke-virtual {v6}, Lkaf;->e()Lkaf;

    move-result-object v6

    :goto_2
    iget-object v8, v4, Lflv;->b:Lgwf;

    invoke-interface {v8, v7}, Lgwf;->e(Lgxl;)V

    iget-object v8, v4, Lflv;->r:Lgwu;

    invoke-virtual {v8, v7}, Lgwu;->a(Lgxl;)V

    invoke-interface {v7, v6}, Lgxl;->S(Lkaf;)V

    iput-object v7, v4, Lflv;->x:Lgxl;

    iget-object v6, v4, Lflv;->c:Lgft;

    invoke-interface {v6}, Lgft;->c()Lkab;

    move-result-object v6

    iget v6, v6, Lkab;->e:I

    iget-object v8, v4, Lflv;->p:Ldhi;

    sget-object v9, Ldhy;->r:Ldhj;

    invoke-interface {v8, v9}, Ldhi;->l(Ldhj;)Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, v4, Lflv;->i:Ljwb;

    invoke-interface {v8}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, v4, Lflv;->j:Ljwb;

    invoke-interface {v8}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, v1, Lflk;->c:Lfuz;

    invoke-virtual {v8}, Lklw;->K()Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v8, v4, Lflv;->q:Ljvs;

    invoke-interface {v8}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v8

    sget-object v10, Lika;->h:Lika;

    if-ne v8, v10, :cond_9

    iget-object v8, v4, Lflv;->p:Ldhi;

    sget-object v10, Ldhy;->q:Ldhj;

    invoke-interface {v8, v10}, Ldhi;->l(Ldhj;)Z

    move-result v8

    if-nez v8, :cond_8

    const/4 v8, 0x1

    goto :goto_4

    :cond_8
    const/4 v8, 0x0

    goto :goto_4

    :cond_9
    iget-object v8, v4, Lflv;->p:Ldhi;

    invoke-interface {v8}, Ldhi;->c()V

    goto :goto_3

    :cond_a
    :goto_3
    const/4 v8, 0x1

    goto :goto_4

    :cond_b
    const/4 v8, 0x0

    :goto_4
    invoke-static {}, Lfte;->a()Lftd;

    move-result-object v10

    invoke-virtual {v10, v6}, Lftd;->g(I)V

    invoke-virtual {v10, v5}, Lftd;->b(Lftf;)V

    iget-object v5, v4, Lflv;->d:Lgvw;

    iget v5, v5, Lgvw;->a:I

    invoke-virtual {v10, v5}, Lftd;->e(I)V

    iget-object v5, v1, Lflk;->c:Lfuz;

    invoke-virtual {v5}, Lklw;->k()Lklv;

    move-result-object v5

    invoke-virtual {v10, v5}, Lftd;->c(Lklv;)V

    iget-object v5, v1, Lflk;->c:Lfuz;

    invoke-virtual {v5}, Lklw;->O()[B

    move-result-object v5

    iput-object v5, v10, Lftd;->a:[B

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v5}, Ljwa;->a(Ljava/lang/Object;)Ljwb;

    move-result-object v5

    invoke-virtual {v10, v5}, Lftd;->h(Ljwb;)V

    invoke-virtual {v10, v8}, Lftd;->d(Z)V

    invoke-virtual {v10, v2}, Lftd;->f(Z)V

    invoke-virtual {v10}, Lftd;->a()Lfte;

    move-result-object v5

    invoke-virtual {v1, v5, v7}, Lflk;->f(Lfte;Lgxl;)Lnou;

    move-result-object v5

    invoke-interface {v7}, Lgxl;->M()V

    iget-object v1, v1, Lflk;->c:Lfuz;

    invoke-virtual {v1}, Lklw;->k()Lklv;

    move-result-object v6

    sget-object v8, Lklv;->a:Lklv;

    if-ne v6, v8, :cond_c

    const/4 v6, 0x1

    goto :goto_5

    :cond_c
    const/4 v6, 0x0

    :goto_5
    if-eqz v6, :cond_d

    iget-object v8, v4, Lflv;->o:Lgzm;

    sget-object v10, Lgzd;->x:Lgzu;

    invoke-interface {v8, v10}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    goto :goto_6

    :cond_d
    iget-object v8, v4, Lflv;->l:Ljava/lang/String;

    :goto_6
    iget-object v10, v4, Lflv;->k:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    iget-object v11, v4, Lflv;->o:Lgzm;

    sget-object v12, Lgzd;->d:Lgzs;

    invoke-interface {v11, v12}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    sget-object v12, Lhxs;->a:Lhxs;

    iget v12, v12, Lhxs;->e:I

    if-eq v11, v12, :cond_e

    const/4 v11, 0x1

    goto :goto_7

    :cond_e
    const/4 v11, 0x0

    :goto_7
    if-eqz v6, :cond_f

    iget-object v12, v4, Lflv;->n:Ljwb;

    goto :goto_8

    :cond_f
    iget-object v12, v4, Lflv;->m:Ljwb;

    :goto_8
    invoke-interface {v12}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Lgyp;->a(I)Lgyp;

    move-result-object v12

    iget-object v13, v4, Lflv;->u:Lmqp;

    invoke-virtual {v13}, Lmqp;->g()Z

    move-result v14

    if-eqz v14, :cond_10

    invoke-virtual {v13}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lglm;

    invoke-interface {v13}, Lglm;->c()Lnjm;

    move-result-object v13

    invoke-static {v13}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v13

    goto :goto_9

    :cond_10
    sget-object v13, Lmpx;->a:Lmpx;

    :goto_9
    invoke-interface {v7}, Lgxl;->k()Lhjc;

    move-result-object v14

    invoke-static {}, Lfcg;->a()Lfcf;

    move-result-object v15

    const/16 v9, 0x1d

    iput v9, v15, Lfcf;->e:I

    invoke-interface {v7}, Lgxl;->s()Ljava/lang/String;

    move-result-object v9

    sget-object v2, Lkqi;->c:Lkqi;

    iget-object v2, v2, Lkqi;->j:Ljava/lang/String;

    move-object/from16 v18, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "."

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lfcf;->a:Ljava/lang/String;

    invoke-virtual {v15, v6}, Lfcf;->g(Z)V

    iget-object v2, v4, Lflv;->h:Ljvs;

    invoke-interface {v2}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v15, v2}, Lfcf;->o(F)V

    invoke-virtual {v15, v8}, Lfcf;->e(Ljava/lang/String;)V

    iget-object v2, v4, Lflv;->g:Ljvs;

    invoke-interface {v2}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v15, v2}, Lfcf;->c(Z)V

    invoke-virtual {v15, v11}, Lfcf;->h(Z)V

    iget-object v2, v4, Lflv;->e:Ljwb;

    invoke-interface {v2}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgyu;

    iget v2, v2, Lgyu;->g:I

    int-to-float v2, v2

    invoke-virtual {v15, v2}, Lfcf;->n(F)V

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v15, Lfcf;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Lklw;->h()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v15, v1}, Lfcf;->b(Landroid/graphics/Rect;)V

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v15, v1}, Lfcf;->j(Ljava/lang/Boolean;)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v15, v2}, Lfcf;->k(Ljava/lang/Boolean;)V

    iget-object v2, v4, Lflv;->f:Ljwb;

    invoke-interface {v2}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v15, v2}, Lfcf;->l(Z)V

    invoke-virtual {v12}, Lgyp;->b()I

    move-result v2

    iput v2, v15, Lfcf;->f:I

    invoke-interface {v7}, Lgxl;->j()Lgyb;

    move-result-object v2

    sget-object v3, Lgyb;->b:Lgyb;

    if-ne v2, v3, :cond_11

    const/4 v2, 0x1

    goto :goto_a

    :cond_11
    const/4 v2, 0x0

    :goto_a
    invoke-virtual {v15, v2}, Lfcf;->i(Z)V

    iget-object v1, v4, Lflv;->t:Lgla;

    invoke-virtual {v1}, Lgla;->e()Lnhr;

    move-result-object v1

    invoke-virtual {v15, v1}, Lfcf;->d(Lnhr;)V

    iput-object v13, v15, Lfcf;->c:Lmqp;

    iget-object v1, v4, Lflv;->v:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    invoke-virtual {v15, v1}, Lfcf;->m(Z)V

    iget-object v1, v4, Lflv;->w:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhxx;

    invoke-virtual {v1}, Lhxx;->a()Lnio;

    move-result-object v1

    invoke-static {v1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v1

    iput-object v1, v15, Lfcf;->d:Lmqp;

    invoke-virtual {v15}, Lfcf;->a()Lfcg;

    move-result-object v1

    check-cast v14, Lhjd;

    iput-object v1, v14, Lhjd;->y:Lfcg;

    new-instance v1, Lerm;

    const/16 v2, 0x14

    invoke-direct {v1, v0, v2}, Lerm;-><init>(Leuc;I)V

    iget-object v2, v0, Leuc;->f:Ljuh;

    move-object/from16 v3, v18

    invoke-interface {v3, v1, v2}, Lnou;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object v1, v0, Leuc;->M:Lhke;

    invoke-virtual {v1}, Lhke;->c()J

    iget-object v1, v0, Leuc;->M:Lhke;

    invoke-virtual {v1}, Lhke;->d()J

    iget-object v1, v0, Leuc;->ae:Lhkc;

    invoke-interface {v1}, Lhkc;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhke;

    iput-object v1, v0, Leuc;->M:Lhke;

    iget-object v1, v0, Leuc;->V:Lkbc;

    invoke-interface {v1}, Lkbc;->f()V

    return-void
.end method

.method public final s(Ljava/lang/Runnable;)V
    .locals 0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final t()Z
    .locals 3

    invoke-static {}, Ljuh;->a()V

    invoke-virtual {p0}, Leuc;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Leuc;->R:Lflk;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lflk;->i()Lmbe;

    move-result-object v0

    iget-object v2, v0, Lmbe;->i:Ljava/lang/Object;

    check-cast v2, Ljvk;

    iget-object v2, v2, Ljvk;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Leuc;->h:Lflv;

    invoke-virtual {v2, v0}, Lflv;->d(Lmbe;)V

    :cond_1
    return v1
.end method

.method public final w(Z)V
    .locals 2

    iget-object v0, p0, Leuc;->k:Litm;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Litm;->K(Z)V

    iget-object v0, p0, Leuc;->n:Lflp;

    invoke-virtual {v0}, Lflp;->a()V

    iget-object v0, p0, Leuc;->e:Lcgx;

    invoke-interface {v0}, Lcgx;->g()Lcha;

    move-result-object v0

    invoke-interface {v0}, Lcha;->m()V

    iget-object v0, p0, Leuc;->N:Lfcv;

    invoke-virtual {v0}, Licd;->f()V

    iget-object v0, p0, Leuc;->N:Lfcv;

    invoke-virtual {v0}, Lfcv;->a()V

    iget-object v0, p0, Leuc;->s:Liff;

    invoke-interface {v0}, Liff;->q()V

    iget-object v0, p0, Leuc;->A:Ldfo;

    invoke-virtual {v0}, Ldfo;->e()V

    iget-object v0, p0, Leuc;->E:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Leuc;->C:Lebi;

    iget-boolean v0, v0, Lebi;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Leuc;->E:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lckq;

    xor-int/lit8 v1, p1, 0x1

    invoke-interface {v0, v1}, Lckq;->b(Z)V

    :cond_0
    iget-object v0, p0, Leuc;->L:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->onFinish()V

    :cond_1
    if-nez p1, :cond_2

    iget-object p1, p0, Leuc;->w:Lebl;

    invoke-virtual {p1}, Lebl;->l()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Leuc;->p:Lfdu;

    invoke-virtual {p1}, Lfdn;->a()V

    :cond_2
    return-void
.end method

.method public final x()V
    .locals 2

    iget-object v0, p0, Leuc;->ad:Ljwb;

    invoke-interface {v0}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lgyp;->a(I)Lgyp;

    move-result-object v0

    sget-object v1, Lgyp;->a:Lgyp;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Leuc;->ad:Ljwb;

    iget v1, v1, Lgyp;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Leuc;->ac:Ljwb;

    invoke-interface {v0}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lgyp;->a(I)Lgyp;

    move-result-object v0

    sget-object v1, Lgyp;->a:Lgyp;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Leuc;->ac:Ljwb;

    iget v1, v1, Lgyp;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final y(Z)V
    .locals 1

    iget-boolean v0, p0, Lchk;->a:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Leuc;->aa:Lhwd;

    invoke-virtual {v0}, Lhwd;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Leuc;->e:Lcgx;

    invoke-interface {v0}, Lcgx;->g()Lcha;

    move-result-object v0

    invoke-interface {v0, p1}, Lcha;->h(Z)V

    if-eqz p1, :cond_2

    iget-object p1, p0, Leuc;->p:Lfdu;

    invoke-virtual {p1}, Lfdn;->c()V

    return-void

    :cond_2
    iget-object p1, p0, Leuc;->p:Lfdu;

    invoke-virtual {p1}, Lfdn;->j()V

    return-void
.end method

.method public final z(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Leuc;->N:Lfcv;

    invoke-virtual {p1}, Licd;->f()V

    iget-object p1, p0, Leuc;->e:Lcgx;

    invoke-interface {p1}, Lcgx;->g()Lcha;

    move-result-object p1

    invoke-interface {p1}, Lcha;->l()V

    iget-object p1, p0, Leuc;->e:Lcgx;

    invoke-interface {p1}, Lcgx;->g()Lcha;

    move-result-object p1

    invoke-interface {p1}, Lcha;->c()V

    return-void

    :cond_0
    if-nez p2, :cond_1

    iget-object p1, p0, Leuc;->s:Liff;

    invoke-interface {p1}, Liff;->N()V

    return-void

    :cond_1
    iget-object p1, p0, Leuc;->p:Lfdu;

    invoke-virtual {p1}, Lfdn;->d()V

    return-void
.end method
