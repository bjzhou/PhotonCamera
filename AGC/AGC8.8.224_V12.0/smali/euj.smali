.class public final Leuj;
.super Lchk;


# static fields
.field public static final b:Lnak;


# instance fields
.field public final A:Ldpl;

.field public final B:Lgft;

.field public final C:Lhxx;

.field public final D:Lcom/google/android/apps/camera/bottombar/BottomBarListener;

.field public final E:Lmqp;

.field public final F:Lenz;

.field public G:Z

.field public H:Ljuf;

.field public I:Lhke;

.field public J:Z

.field public final K:Lhxt;

.field public L:Lflk;

.field public M:Lhsa;

.field public final N:Lhdk;

.field public final O:Ljew;

.field private final P:Lkbc;

.field private final Q:Lfuq;

.field private final R:Lfux;

.field private final S:Lifj;

.field private final T:Lhkc;

.field private final U:Leqc;

.field private final V:Lfmf;

.field private final W:Ljwb;

.field private final X:Lmqp;

.field private final Y:Lell;

.field private final Z:Lftf;

.field private final aa:Lhwf;

.field private ab:Lflj;

.field private final ac:Lva;

.field public final c:Ldbf;

.field public final d:Lcgx;

.field public final e:Ljuh;

.field public final f:Lhtg;

.field public final g:Lmqp;

.field public final h:Lflp;

.field public final i:Liff;

.field public final j:Lhgy;

.field public final k:Lfmd;

.field public final l:Lmqp;

.field public final m:Lcom/google/android/apps/camera/bottombar/BottomBarController;

.field public final n:Litm;

.field public final o:Leoa;

.field public final p:Lmqp;

.field public final q:Lcbn;

.field public final r:Lhwd;

.field public final s:Ldfo;

.field public final t:Lfcv;

.field public final u:Leqt;

.field public final v:Ljvs;

.field public final w:Ldhi;

.field public final x:Lfdc;

.field public final y:Lgto;

.field public final z:Landroid/view/accessibility/AccessibilityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/legacy/app/module/motionblur/MotionBlurMode"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Leuj;->b:Lnak;

    return-void
.end method

.method public constructor <init>(Lkbc;Ldbf;Lfuq;Lfmd;Lcgy;Lfux;Lmqp;Ljuh;Lhtg;Lhgy;Lhdk;Lhkc;Lflp;Liff;Lmqp;Lmqp;Lmqp;Lcom/google/android/apps/camera/bottombar/BottomBarController;Litm;Leoa;Lcbn;Lhwd;Lfmf;Ldfo;Lfcv;Leqt;Ljew;Ljvs;Ljwb;Ldhi;Lfdc;Lgto;Lhxt;Lell;Lmqp;Lmqp;Landroid/view/accessibility/AccessibilityManager;Ldpl;Lgft;Lhxx;Lva;[B[B[B[B[B)V
    .locals 4

    move-object v0, p0

    move-object/from16 v1, p22

    invoke-direct {p0}, Lchk;-><init>()V

    new-instance v2, Leuf;

    invoke-direct {v2, p0}, Leuf;-><init>(Leuj;)V

    iput-object v2, v0, Leuj;->D:Lcom/google/android/apps/camera/bottombar/BottomBarListener;

    new-instance v2, Leuh;

    invoke-direct {v2, p0}, Leuh;-><init>(Leuj;)V

    iput-object v2, v0, Leuj;->Z:Lftf;

    new-instance v2, Letv;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Letv;-><init>(Leuj;I)V

    iput-object v2, v0, Leuj;->F:Lenz;

    new-instance v2, Lety;

    invoke-direct {v2, p0, v3}, Lety;-><init>(Leuj;I)V

    iput-object v2, v0, Leuj;->aa:Lhwf;

    move-object v2, p1

    iput-object v2, v0, Leuj;->P:Lkbc;

    move-object v2, p2

    iput-object v2, v0, Leuj;->c:Ldbf;

    move-object v2, p3

    iput-object v2, v0, Leuj;->Q:Lfuq;

    move-object v2, p4

    iput-object v2, v0, Leuj;->k:Lfmd;

    move-object v2, p5

    iput-object v2, v0, Leuj;->d:Lcgx;

    move-object v2, p6

    iput-object v2, v0, Leuj;->R:Lfux;

    move-object v2, p7

    iput-object v2, v0, Leuj;->E:Lmqp;

    move-object v2, p8

    iput-object v2, v0, Leuj;->e:Ljuh;

    move-object v2, p9

    iput-object v2, v0, Leuj;->f:Lhtg;

    move-object v2, p10

    iput-object v2, v0, Leuj;->j:Lhgy;

    move-object v2, p11

    iput-object v2, v0, Leuj;->N:Lhdk;

    move-object/from16 v2, p12

    iput-object v2, v0, Leuj;->T:Lhkc;

    move-object/from16 v3, p13

    iput-object v3, v0, Leuj;->h:Lflp;

    move-object/from16 v3, p14

    iput-object v3, v0, Leuj;->i:Liff;

    invoke-interface/range {p12 .. p12}, Lhkc;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhke;

    iput-object v2, v0, Leuj;->I:Lhke;

    move-object/from16 v2, p18

    iput-object v2, v0, Leuj;->m:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    move-object/from16 v2, p19

    iput-object v2, v0, Leuj;->n:Litm;

    move-object/from16 v2, p20

    iput-object v2, v0, Leuj;->o:Leoa;

    move-object/from16 v2, p17

    iput-object v2, v0, Leuj;->p:Lmqp;

    move-object/from16 v2, p21

    iput-object v2, v0, Leuj;->q:Lcbn;

    iput-object v1, v0, Leuj;->r:Lhwd;

    move-object/from16 v2, p23

    iput-object v2, v0, Leuj;->V:Lfmf;

    move-object/from16 v2, p24

    iput-object v2, v0, Leuj;->s:Ldfo;

    move-object/from16 v2, p25

    iput-object v2, v0, Leuj;->t:Lfcv;

    move-object/from16 v2, p26

    iput-object v2, v0, Leuj;->u:Leqt;

    move-object/from16 v2, p27

    iput-object v2, v0, Leuj;->O:Ljew;

    move-object/from16 v2, p28

    iput-object v2, v0, Leuj;->v:Ljvs;

    move-object/from16 v2, p29

    iput-object v2, v0, Leuj;->W:Ljwb;

    move-object/from16 v2, p31

    iput-object v2, v0, Leuj;->x:Lfdc;

    move-object/from16 v2, p32

    iput-object v2, v0, Leuj;->y:Lgto;

    move-object/from16 v2, p33

    iput-object v2, v0, Leuj;->K:Lhxt;

    move-object/from16 v2, p34

    iput-object v2, v0, Leuj;->Y:Lell;

    move-object/from16 v2, p35

    iput-object v2, v0, Leuj;->X:Lmqp;

    new-instance v2, Leui;

    invoke-direct {v2, p0, v1}, Leui;-><init>(Leuj;Lhwd;)V

    iput-object v2, v0, Leuj;->S:Lifj;

    move-object/from16 v1, p36

    iput-object v1, v0, Leuj;->g:Lmqp;

    invoke-virtual/range {p15 .. p15}, Lmqp;->g()Z

    move-result v1

    invoke-static {v1}, Lmoz;->e(Z)V

    invoke-virtual/range {p15 .. p15}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leqc;

    iput-object v1, v0, Leuj;->U:Leqc;

    move-object/from16 v1, p16

    iput-object v1, v0, Leuj;->l:Lmqp;

    move-object/from16 v1, p30

    iput-object v1, v0, Leuj;->w:Ldhi;

    move-object/from16 v1, p37

    iput-object v1, v0, Leuj;->z:Landroid/view/accessibility/AccessibilityManager;

    move-object/from16 v1, p38

    iput-object v1, v0, Leuj;->A:Ldpl;

    move-object/from16 v1, p39

    iput-object v1, v0, Leuj;->B:Lgft;

    move-object/from16 v1, p40

    iput-object v1, v0, Leuj;->C:Lhxx;

    move-object/from16 v1, p41

    iput-object v1, v0, Leuj;->ac:Lva;

    return-void
.end method

.method private final y()V
    .locals 5

    iget-object v0, p0, Leuj;->P:Lkbc;

    const-string v1, "MotionBlurMode#startCameraFromCameraSetting"

    invoke-interface {v0, v1}, Lkbc;->a(Ljava/lang/String;)Lkbf;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Leuj;->L:Lflk;

    iget-object v1, p0, Leuj;->Q:Lfuq;

    iget-object v2, p0, Leuj;->c:Ldbf;

    iget-object v3, p0, Leuj;->R:Lfux;

    sget-object v4, Lika;->l:Lika;

    invoke-interface {v1, v2, v3, v4}, Lfuq;->a(Ldbf;Lfux;Lika;)Lflj;

    move-result-object v1

    iput-object v1, p0, Leuj;->ab:Lflj;

    iget-object v1, p0, Leuj;->n:Litm;

    invoke-interface {v1}, Litm;->x()V

    iget-object v1, p0, Leuj;->n:Litm;

    invoke-interface {v1}, Litm;->s()V

    iget-object v1, p0, Leuj;->ab:Lflj;

    new-instance v2, Lenq;

    const/4 v3, 0x4

    invoke-direct {v2, p0, v0, v3}, Lenq;-><init>(Leuj;Lkbf;I)V

    iget-object v0, p0, Leuj;->e:Ljuh;

    invoke-static {v1, v2, v0}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private final z()Z
    .locals 2

    iget-object v0, p0, Leuj;->L:Lflk;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lflk;->i()Lmbe;

    move-result-object v0

    iget-object v1, v0, Lmbe;->i:Ljava/lang/Object;

    check-cast v1, Ljvk;

    iget-object v1, v1, Ljvk;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Leuj;->k:Lfmd;

    invoke-interface {v1, v0}, Lfmd;->d(Lmbe;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final bH()Lmqp;
    .locals 1

    iget-object v0, p0, Leuj;->L:Lflk;

    invoke-static {v0}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    return-object v0
.end method

.method public final cd()V
    .locals 0

    invoke-direct {p0}, Leuj;->z()Z

    return-void
.end method

.method public final close()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Leuj;->w(Z)V

    return-void
.end method

.method public final k()V
    .locals 2

    iget-boolean v0, p0, Lchk;->a:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Leuj;->y()V

    iget-object v0, p0, Leuj;->w:Ldhi;

    sget-object v1, Ldho;->as:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Leuj;->n:Litm;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Litm;->B(Z)V

    :cond_1
    iget-object v0, p0, Leuj;->M:Lhsa;

    if-eqz v0, :cond_2

    iget-object v0, p0, Leuj;->c:Ldbf;

    invoke-virtual {v0}, Ldbf;->j()Z

    :cond_2
    return-void
.end method

.method public final l()V
    .locals 0

    return-void
.end method

.method public final n()V
    .locals 5

    iget-object v0, p0, Leuj;->P:Lkbc;

    const-string v1, "MotionBlur-ModuleStart"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, p0, Leuj;->u:Leqt;

    invoke-virtual {v0}, Leqo;->f()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Leuj;->w(Z)V

    new-instance v0, Ljuf;

    invoke-direct {v0}, Ljuf;-><init>()V

    iput-object v0, p0, Leuj;->H:Ljuf;

    iget-object v1, p0, Leuj;->U:Leqc;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Leqc;->a()Lkad;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    iget-object v0, p0, Leuj;->h:Lflp;

    invoke-virtual {v0}, Lflp;->d()V

    iget-object v0, p0, Leuj;->W:Ljwb;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v2}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v0, p0, Leuj;->r:Lhwd;

    iget-object v2, p0, Leuj;->aa:Lhwf;

    iget-object v3, p0, Leuj;->H:Ljuf;

    invoke-virtual {v0, p0, v2, v3}, Lhwd;->d(Lchk;Lhwf;Ljuf;)V

    invoke-direct {p0}, Leuj;->y()V

    iget-object v0, p0, Leuj;->m:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    iget-object v2, p0, Leuj;->D:Lcom/google/android/apps/camera/bottombar/BottomBarListener;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->addListener(Lcom/google/android/apps/camera/bottombar/BottomBarListener;)V

    iget-object v0, p0, Leuj;->H:Ljuf;

    new-instance v2, Ledg;

    const/16 v3, 0xe

    invoke-direct {v2, p0, v3}, Ledg;-><init>(Leuj;I)V

    invoke-virtual {v0, v2}, Ljuf;->d(Lkad;)V

    iget-object v0, p0, Leuj;->H:Ljuf;

    iget-object v2, p0, Leuj;->i:Liff;

    iget-object v4, p0, Leuj;->S:Lifj;

    invoke-interface {v2, v4}, Liff;->e(Lifj;)Lkad;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljuf;->d(Lkad;)V

    iget-object v0, p0, Leuj;->o:Leoa;

    iget-object v2, p0, Leuj;->F:Lenz;

    invoke-virtual {v0, v2}, Leoa;->a(Lenz;)V

    iget-object v0, p0, Leuj;->H:Ljuf;

    new-instance v2, Ledg;

    const/16 v4, 0xf

    invoke-direct {v2, p0, v4}, Ledg;-><init>(Leuj;I)V

    invoke-virtual {v0, v2}, Ljuf;->d(Lkad;)V

    iget-object v0, p0, Leuj;->t:Lfcv;

    iget-object v2, p0, Leuj;->Y:Lell;

    invoke-virtual {v0, v2}, Licd;->e(Lell;)V

    iget-object v0, p0, Leuj;->H:Ljuf;

    iget-object v2, p0, Leuj;->t:Lfcv;

    invoke-virtual {v0, v2}, Ljuf;->d(Lkad;)V

    iget-object v0, p0, Leuj;->X:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Leuj;->X:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lepc;

    iget-object v2, p0, Leuj;->Y:Lell;

    invoke-virtual {v0, v2}, Licd;->e(Lell;)V

    iget-object v0, p0, Leuj;->H:Ljuf;

    iget-object v2, p0, Leuj;->X:Lmqp;

    invoke-virtual {v2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lepc;

    invoke-virtual {v0, v2}, Ljuf;->d(Lkad;)V

    :cond_0
    iget-object v0, p0, Leuj;->V:Lfmf;

    sget-object v2, Lika;->l:Lika;

    iget-object v4, p0, Leuj;->H:Ljuf;

    invoke-virtual {v0, p0, v2, v4}, Lfmf;->b(Lchk;Lika;Ljuf;)V

    iget-object v0, p0, Leuj;->p:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Leuj;->p:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leqi;

    invoke-interface {v0, v1}, Leqi;->a(Z)V

    iget-object v0, p0, Leuj;->p:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leqi;

    invoke-interface {v0}, Leqi;->e()V

    :cond_1
    iget-object v0, p0, Leuj;->x:Lfdc;

    invoke-virtual {v0}, Lfdc;->b()V

    iget-object v0, p0, Leuj;->K:Lhxt;

    new-instance v1, Lhu;

    invoke-direct {v1, p0, v3}, Lhu;-><init>(Leuj;I)V

    iget-object v2, v0, Lhxt;->a:Lcom/google/android/apps/camera/ui/views/ToggleUi;

    if-eqz v2, :cond_2

    iget-object v2, v2, Lcom/google/android/apps/camera/ui/views/ToggleUi;->c:Lcom/google/android/apps/camera/ui/views/ToggleUi$ToggleButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v0, Lhxt;->a:Lcom/google/android/apps/camera/ui/views/ToggleUi;

    const v1, 0x7f14030b

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/ui/views/ToggleUi;->g(I)V

    :cond_2
    iget-object v0, p0, Leuj;->K:Lhxt;

    invoke-virtual {v0}, Lhxt;->b()V

    iget-object v0, p0, Leuj;->H:Ljuf;

    iget-object v1, p0, Leuj;->v:Ljvs;

    new-instance v2, Ldsk;

    const/16 v3, 0x13

    invoke-direct {v2, p0, v3}, Ldsk;-><init>(Leuj;I)V

    iget-object v3, p0, Leuj;->e:Ljuh;

    invoke-interface {v1, v2, v3}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    iget-object v0, p0, Leuj;->ac:Lva;

    new-instance v1, Lett;

    const/16 v2, 0x8

    invoke-direct {v1, p0, v2}, Lett;-><init>(Leuj;I)V

    iget-object v2, p0, Leuj;->H:Ljuf;

    invoke-virtual {v0, v1, v2}, Lva;->A(Ljava/lang/Runnable;Ljuf;)V

    iget-object v0, p0, Leuj;->P:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    return-void
.end method

.method public final p()V
    .locals 2

    iget-object v0, p0, Leuj;->P:Lkbc;

    const-string v1, "MotionBlur-StopModule"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, p0, Leuj;->ab:Lflj;

    invoke-virtual {v0}, Lnnb;->isDone()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Leuj;->L:Lflk;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lflk;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Leuj;->L:Lflk;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Leuj;->ab:Lflj;

    invoke-virtual {v0, v1}, Lnnb;->cancel(Z)Z

    :cond_1
    :goto_0
    iget-object v0, p0, Leuj;->H:Ljuf;

    invoke-virtual {v0}, Ljuf;->close()V

    iget-object v0, p0, Leuj;->r:Lhwd;

    invoke-virtual {v0}, Lhwd;->g()Z

    iget-object v0, p0, Leuj;->p:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Leuj;->p:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leqi;

    invoke-interface {v0, v1}, Leqi;->a(Z)V

    iget-object v0, p0, Leuj;->p:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leqi;

    invoke-interface {v0}, Leqi;->d()V

    :cond_2
    iget-object v0, p0, Leuj;->x:Lfdc;

    invoke-virtual {v0}, Lfdc;->a()V

    iget-object v0, p0, Leuj;->K:Lhxt;

    invoke-virtual {v0}, Lhxt;->a()V

    iget-object v0, p0, Leuj;->R:Lfux;

    invoke-virtual {v0}, Lfux;->d()V

    iput-boolean v1, p0, Leuj;->G:Z

    iget-object v0, p0, Leuj;->u:Leqt;

    invoke-virtual {v0}, Leqo;->g()V

    iget-object v0, p0, Leuj;->P:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    return-void
.end method

.method public final r()V
    .locals 6

    iget-object v0, p0, Leuj;->P:Lkbc;

    const-string v1, "MotionBlurModule#takePictureNow"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, p0, Leuj;->L:Lflk;

    if-nez v0, :cond_0

    sget-object v0, Leuj;->b:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Not taking picture since Camera is closed."

    const/16 v2, 0x7ad

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

    sget-object v0, Leuj;->b:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Not taking picture since the Camera is not ready to take a picture."

    const/16 v2, 0x7ac

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Leuj;->w(Z)V

    iget-object v2, p0, Leuj;->h:Lflp;

    invoke-virtual {v2}, Lflp;->b()V

    iget-object v2, p0, Leuj;->u:Leqt;

    invoke-virtual {v2}, Leqo;->c()V

    iget-object v2, p0, Leuj;->x:Lfdc;

    invoke-virtual {v2}, Lfdc;->d()V

    iget-object v2, p0, Leuj;->v:Ljvs;

    invoke-interface {v2}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leqg;

    sget-object v3, Leqg;->b:Leqg;

    invoke-virtual {v2, v3}, Leqg;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Leuj;->x:Lfdc;

    const/16 v3, 0x7f

    invoke-virtual {v2, v3}, Lfdc;->e(I)V

    :cond_2
    iget-object v2, p0, Leuj;->k:Lfmd;

    iget-object v3, p0, Leuj;->Z:Lftf;

    iget-boolean v4, p0, Leuj;->G:Z

    iget-object v5, p0, Leuj;->I:Lhke;

    invoke-interface {v2, v0, v3, v4, v5}, Lfmd;->b(Lflk;Lftf;ZLhke;)Lnou;

    move-result-object v0

    new-instance v2, Lett;

    const/16 v3, 0x9

    invoke-direct {v2, p0, v3}, Lett;-><init>(Leuj;I)V

    iget-object v3, p0, Leuj;->e:Ljuh;

    invoke-interface {v0, v2, v3}, Lnou;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object v0, p0, Leuj;->I:Lhke;

    invoke-virtual {v0}, Lhke;->c()J

    iget-object v0, p0, Leuj;->I:Lhke;

    invoke-virtual {v0}, Lhke;->d()J

    iput-boolean v1, p0, Leuj;->G:Z

    iget-object v0, p0, Leuj;->T:Lhkc;

    invoke-interface {v0}, Lhkc;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhke;

    iput-object v0, p0, Leuj;->I:Lhke;

    iget-object v0, p0, Leuj;->P:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    return-void
.end method

.method public final t()Z
    .locals 1

    invoke-static {}, Ljuh;->a()V

    invoke-direct {p0}, Leuj;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Leuj;->r:Lhwd;

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
    .locals 1

    iget-boolean v0, p0, Lchk;->a:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Leuj;->r:Lhwd;

    invoke-virtual {v0}, Lhwd;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Leuj;->u:Leqt;

    invoke-virtual {v0}, Leqo;->b()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Leuj;->u:Leqt;

    invoke-virtual {v0}, Leqo;->d()V

    :goto_0
    iget-object v0, p0, Leuj;->d:Lcgx;

    invoke-interface {v0}, Lcgx;->g()Lcha;

    move-result-object v0

    invoke-interface {v0, p1}, Lcha;->h(Z)V

    return-void
.end method

.method public final x()Z
    .locals 1

    iget-object v0, p0, Leuj;->L:Lflk;

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
