.class public final Lfng;
.super Lchk;

# interfaces
.implements Ldzw;


# static fields
.field private static V:Z

.field public static final b:Lnak;


# instance fields
.field public final A:Lhvz;

.field public final B:Landroid/os/Handler;

.field public final C:Ldzf;

.field public final D:Ljwb;

.field public final E:Ljava/util/Set;

.field public final F:I

.field public G:Z

.field public H:Landroid/os/Handler;

.field public I:Ldzx;

.field public J:Leg;

.field public K:Leg;

.field public final L:Landroid/content/DialogInterface$OnClickListener;

.field public final M:Landroid/view/View$OnTouchListener;

.field public N:I

.field public O:J

.field public P:I

.field public Q:I

.field public final R:Ldym;

.field public S:Lexx;

.field public final T:Ljew;

.field public final U:Lcvr;

.field private final W:Lexs;

.field private final X:Liff;

.field private final Y:Lcom/google/android/apps/camera/bottombar/BottomBarListener;

.field private final Z:Lchi;

.field private final aa:Ljuh;

.field private final ab:Landroid/content/Context;

.field private final ac:Ldhi;

.field private ad:Landroid/view/View;

.field private ae:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private af:Lexf;

.field private ag:Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;

.field private final ah:Ljvs;

.field private final ai:Ljvs;

.field private aj:Ljuf;

.field private final ak:Lgfs;

.field private final al:Lcoo;

.field private am:Landroid/os/HandlerThread;

.field private final an:Lidu;

.field private final ao:Lkai;

.field private final ap:Lexz;

.field private final aq:Lexz;

.field private final ar:Lexz;

.field private final as:Lham;

.field private final at:Leoa;

.field private final au:Lenz;

.field private final av:Ljava/lang/Runnable;

.field private final aw:Ljava/lang/Runnable;

.field private final ax:Lhlw;

.field private ay:Lnaa;

.field public final c:Lgqa;

.field public final d:Lgpv;

.field public final e:Lhgy;

.field public final f:Lcom/google/android/apps/camera/bottombar/BottomBarController;

.field public final g:Lifj;

.field public h:Lewp;

.field public i:Lewd;

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;

.field public n:Lcom/google/android/apps/camera/ui/views/MainActivityLayout;

.field public o:Z

.field public p:I

.field public q:Lewz;

.field public r:Leww;

.field public final s:Lcgy;

.field public final t:Liec;

.field public final u:Lfbz;

.field public v:Ljava/lang/Thread;

.field public w:I

.field public x:I

.field public y:I

.field public final z:Lgwf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/modules/lightcycle/PanoramaModule"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lfng;->b:Lnak;

    return-void
.end method

.method public constructor <init>(Lgwf;Lchi;Lcgy;Liec;Lhgy;Ldhi;Lgqa;Lgpv;Ljew;Ljuf;Ljuh;Ljvs;Ljvs;Leoa;Lhvz;Ljew;Lcom/google/android/apps/camera/bottombar/BottomBarController;Liff;Lfbz;Ldzf;Ldym;Lgxb;Lgxk;Lgfs;Ljwb;Ljava/util/Set;Lhlw;Lkpo;Lkbc;[B[B[B[B[B)V
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p10

    move-object/from16 v5, p11

    move-object/from16 v6, p12

    move-object/from16 v7, p13

    move-object/from16 v8, p15

    move-object/from16 v9, p26

    invoke-direct/range {p0 .. p0}, Lchk;-><init>()V

    const/4 v10, 0x1

    iput v10, v1, Lfng;->Q:I

    const/4 v10, 0x0

    iput-boolean v10, v1, Lfng;->o:Z

    iput v10, v1, Lfng;->p:I

    new-instance v11, Lfne;

    invoke-direct {v11, v1}, Lfne;-><init>(Lfng;)V

    iput-object v11, v1, Lfng;->B:Landroid/os/Handler;

    iput-boolean v10, v1, Lfng;->G:Z

    new-instance v11, Lcdc;

    const/16 v12, 0xc

    invoke-direct {v11, v1, v12}, Lcdc;-><init>(Lfng;I)V

    iput-object v11, v1, Lfng;->L:Landroid/content/DialogInterface$OnClickListener;

    new-instance v11, Lclb;

    const/4 v12, 0x4

    invoke-direct {v11, v1, v12}, Lclb;-><init>(Lfng;I)V

    iput-object v11, v1, Lfng;->M:Landroid/view/View$OnTouchListener;

    new-instance v11, Lidv;

    invoke-direct {v11, v1}, Lidv;-><init>(Lfng;)V

    iput-object v11, v1, Lfng;->an:Lidu;

    iput v10, v1, Lfng;->N:I

    const-wide/16 v13, 0x0

    iput-wide v13, v1, Lfng;->O:J

    new-instance v13, Lfnb;

    invoke-direct {v13, v1, v10}, Lfnb;-><init>(Lfng;I)V

    iput-object v13, v1, Lfng;->ao:Lkai;

    new-instance v14, Lfmt;

    invoke-direct {v14, v1, v12}, Lfmt;-><init>(Lfng;I)V

    iput-object v14, v1, Lfng;->ap:Lexz;

    new-instance v12, Lfmt;

    const/4 v14, 0x5

    invoke-direct {v12, v1, v14}, Lfmt;-><init>(Lfng;I)V

    iput-object v12, v1, Lfng;->aq:Lexz;

    new-instance v12, Lfmt;

    const/4 v14, 0x6

    invoke-direct {v12, v1, v14}, Lfmt;-><init>(Lfng;I)V

    iput-object v12, v1, Lfng;->ar:Lexz;

    const/4 v12, 0x2

    iput v12, v1, Lfng;->P:I

    new-instance v12, Lfnc;

    invoke-direct {v12}, Lfnc;-><init>()V

    iput-object v12, v1, Lfng;->as:Lham;

    new-instance v14, Lfnd;

    invoke-direct {v14, v1, v10}, Lfnd;-><init>(Lfng;I)V

    iput-object v14, v1, Lfng;->au:Lenz;

    new-instance v14, Lfib;

    const/16 v15, 0xf

    invoke-direct {v14, v1, v15}, Lfib;-><init>(Lfng;I)V

    iput-object v14, v1, Lfng;->av:Ljava/lang/Runnable;

    new-instance v14, Lfib;

    const/16 v15, 0x10

    invoke-direct {v14, v1, v15}, Lfib;-><init>(Lfng;I)V

    iput-object v14, v1, Lfng;->aw:Ljava/lang/Runnable;

    iput-object v5, v1, Lfng;->aa:Ljuh;

    move-object/from16 v14, p27

    iput-object v14, v1, Lfng;->ax:Lhlw;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v1, Lfng;->s:Lcgy;

    iput-object v0, v1, Lfng;->Z:Lchi;

    move-object/from16 v14, p4

    iput-object v14, v1, Lfng;->t:Liec;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v14, p5

    iput-object v14, v1, Lfng;->e:Lhgy;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, v1, Lfng;->ac:Ldhi;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v14, p7

    iput-object v14, v1, Lfng;->c:Lgqa;

    move-object/from16 v14, p8

    iput-object v14, v1, Lfng;->d:Lgpv;

    invoke-virtual/range {p14 .. p14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v14, p14

    iput-object v14, v1, Lfng;->at:Leoa;

    invoke-virtual/range {p15 .. p15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v8, v1, Lfng;->A:Lhvz;

    move-object/from16 v14, p16

    iput-object v14, v1, Lfng;->T:Ljew;

    iput-object v7, v1, Lfng;->ai:Ljvs;

    iput-object v6, v1, Lfng;->ah:Ljvs;

    invoke-virtual/range {p17 .. p17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v14, p17

    iput-object v14, v1, Lfng;->f:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    invoke-virtual/range {p18 .. p18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v14, p18

    iput-object v14, v1, Lfng;->X:Liff;

    move-object/from16 v14, p19

    iput-object v14, v1, Lfng;->u:Lfbz;

    move-object/from16 v14, p20

    iput-object v14, v1, Lfng;->C:Ldzf;

    move-object/from16 v14, p21

    iput-object v14, v1, Lfng;->R:Ldym;

    move-object/from16 v14, p24

    iput-object v14, v1, Lfng;->ak:Lgfs;

    move-object/from16 v14, p25

    iput-object v14, v1, Lfng;->D:Ljwb;

    iput-object v9, v1, Lfng;->E:Ljava/util/Set;

    move-object/from16 v15, p1

    iput-object v15, v1, Lfng;->z:Lgwf;

    const v14, 0x7f1503e3

    iput v14, v1, Lfng;->F:I

    new-instance v14, Lcoo;

    move-object/from16 v10, p29

    invoke-direct {v14, v10, v9}, Lcoo;-><init>(Lkbc;Ljava/util/Set;)V

    iput-object v14, v1, Lfng;->al:Lcoo;

    new-instance v9, Lexs;

    invoke-direct {v9, v0}, Lexs;-><init>(Lchi;)V

    iput-object v9, v1, Lfng;->W:Lexs;

    invoke-interface/range {p3 .. p3}, Lcgy;->k()Lgzi;

    move-result-object v9

    invoke-virtual {v12, v9}, Lham;->d(Lgzi;)V

    invoke-interface {v6, v13, v5}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljuf;->d(Lkad;)V

    new-instance v5, Lfms;

    invoke-direct {v5, v1}, Lfms;-><init>(Lfng;)V

    iput-object v5, v1, Lfng;->Y:Lcom/google/android/apps/camera/bottombar/BottomBarListener;

    new-instance v5, Lfmu;

    invoke-direct {v5, v1, v8}, Lfmu;-><init>(Lfng;Lhvz;)V

    iput-object v5, v1, Lfng;->g:Lifj;

    invoke-interface/range {p3 .. p3}, Lcgy;->w()Lcvr;

    move-result-object v5

    iput-object v5, v1, Lfng;->U:Lcvr;

    invoke-interface/range {p3 .. p3}, Lcgy;->f()Landroid/content/Context;

    move-result-object v6

    iput-object v6, v1, Lfng;->ab:Landroid/content/Context;

    :try_start_0
    invoke-interface/range {p3 .. p3}, Lcgy;->i()Lfbk;

    move-result-object v19

    new-instance v6, Lexx;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object v14, v6

    move-object/from16 v15, p1

    move-object/from16 v16, p9

    move-object/from16 v17, p22

    move-object/from16 v18, p23

    move-object/from16 v20, p28

    invoke-direct/range {v14 .. v24}, Lexx;-><init>(Lgwf;Ljew;Lgxb;Lgxk;Lfbk;Lkpo;[B[B[B[B)V

    sput-object v6, Lewq;->a:Lexx;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v6, Lewq;->a:Lexx;

    iput-object v6, v1, Lfng;->S:Lexx;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lfng;->F(Z)V

    invoke-interface/range {p2 .. p2}, Lchi;->l()V

    invoke-interface {v2, v11, v6}, Lcgy;->r(Lidu;Z)V

    invoke-virtual {v5}, Lcvr;->F()Landroid/view/WindowManager;

    move-result-object v0

    invoke-static {v0}, Lgfp;->c(Landroid/view/WindowManager;)I

    move-result v0

    iput v0, v1, Lfng;->y:I

    new-instance v0, Lnaa;

    invoke-direct {v0}, Lnaa;-><init>()V

    iput-object v0, v1, Lfng;->ay:Lnaa;

    invoke-virtual {v5}, Lcvr;->F()Landroid/view/WindowManager;

    move-result-object v0

    invoke-static {v0}, Lgfp;->c(Landroid/view/WindowManager;)I

    move-result v0

    iput v0, v1, Lfng;->y:I

    new-instance v0, Lfmv;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lfmv;-><init>(Lfng;I)V

    iput-object v0, v1, Lfng;->ae:Landroid/hardware/display/DisplayManager$DisplayListener;

    sget-object v0, Ldho;->bL:Ldhj;

    invoke-interface {v3, v0}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Leus;

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Leus;-><init>(Lfng;I)V

    sget-object v2, Lnnv;->a:Lnnv;

    invoke-interface {v7, v0, v2}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljuf;->d(Lkad;)V

    return-void

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot instantiate PanoramaModule."

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private final J()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lfng;->L(Z)V

    return-void
.end method

.method private final K()V
    .locals 4

    iget-object v0, p0, Lfng;->r:Leww;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Leww;->f()V

    :cond_0
    iget-object v0, p0, Lfng;->W:Lexs;

    invoke-virtual {v0}, Lexs;->d()V

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v0

    iget-object v1, p0, Lfng;->H:Landroid/os/Handler;

    if-eqz v1, :cond_1

    new-instance v2, Lfmz;

    invoke-direct {v2, p0, v0}, Lfmz;-><init>(Lfng;Lnph;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3, v1}, Lnph;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    :goto_0
    sget-object v0, Lfng;->b:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v1, "Fail to wait freeGLMemory to finish"

    const/16 v2, 0x956

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void
.end method

.method private final L(Z)V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lfng;->p:I

    if-eqz p1, :cond_0

    iget-object p1, p0, Lfng;->aw:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lfng;->av:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    iget-object p1, p0, Lfng;->B:Landroid/os/Handler;

    new-instance v1, Lfib;

    const/16 v2, 0xc

    invoke-direct {v1, p0, v2}, Lfib;-><init>(Lfng;I)V

    const-wide/16 v2, 0x578

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v0, p0, Lfng;->l:Z

    iget-object p1, p0, Lfng;->ah:Ljvs;

    if-eqz p1, :cond_1

    check-cast p1, Ljvk;

    iget-object p1, p1, Ljvk;->d:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lfng;->D(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private final M()V
    .locals 7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lfng;->o:Z

    iget-object v1, p0, Lfng;->d:Lgpv;

    iget-object v2, v1, Lgpv;->b:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, v1, Lgpv;->a:Lkaq;

    iget-object v4, v1, Lgpv;->c:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Resume processing. Queue size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lkaq;->b(Ljava/lang/String;)V

    iget-boolean v3, v1, Lgpv;->e:Z

    if-eqz v3, :cond_0

    iput-boolean v0, v1, Lgpv;->e:Z

    iget-object v3, v1, Lgpv;->c:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lgpv;->b()V

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lfng;->r:Leww;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Leww;->f()V

    :cond_1
    iput v0, p0, Lfng;->p:I

    iput-boolean v0, p0, Lfng;->k:Z

    invoke-direct {p0, v0}, Lfng;->L(Z)V

    iget-object v0, p0, Lfng;->t:Liec;

    invoke-interface {v0}, Liec;->i()V

    iget-object v0, p0, Lfng;->s:Lcgy;

    invoke-interface {v0}, Lcgy;->g()Lcha;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lfng;->w()V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final A()V
    .locals 3

    iget-object v0, p0, Lfng;->B:Landroid/os/Handler;

    new-instance v1, Lfib;

    const/16 v2, 0xd

    invoke-direct {v1, p0, v2}, Lfib;-><init>(Lfng;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final B()V
    .locals 3

    iget-boolean v0, p0, Lfng;->j:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lfng;->Q:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lfng;->z()V

    return-void

    :cond_1
    sget-object v0, Lewr;->a:Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->GetNumTotalTargets()I

    move-result v0

    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->GetNumCapturedTargets()I

    move-result v1

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lfng;->B:Landroid/os/Handler;

    new-instance v1, Lfib;

    const/16 v2, 0xe

    invoke-direct {v1, p0, v2}, Lfib;-><init>(Lfng;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    invoke-virtual {p0}, Lfng;->z()V

    return-void
.end method

.method public final C()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lfng;->l:Z

    iget-object v0, p0, Lfng;->A:Lhvz;

    invoke-virtual {v0}, Lhvu;->b()V

    return-void
.end method

.method public final D(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lchk;->a:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lfng;->l:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lfng;->ab:Landroid/content/Context;

    const v1, 0x7f140380

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget p1, p0, Lfng;->Q:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_a

    iput v0, p0, Lfng;->Q:I

    iget-object p1, p0, Lfng;->r:Leww;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Leww;->h(I)V

    :cond_1
    iget-object p1, p0, Lfng;->q:Lewz;

    if-eqz p1, :cond_a

    iget v0, p0, Lfng;->Q:I

    invoke-virtual {p1, v0}, Lewz;->f(I)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lfng;->ab:Landroid/content/Context;

    const v1, 0x7f140382

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget p1, p0, Lfng;->Q:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_a

    iput v0, p0, Lfng;->Q:I

    iget-object p1, p0, Lfng;->r:Leww;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Leww;->h(I)V

    :cond_3
    iget-object p1, p0, Lfng;->q:Lewz;

    if-eqz p1, :cond_a

    iget v0, p0, Lfng;->Q:I

    invoke-virtual {p1, v0}, Lewz;->f(I)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lfng;->ab:Landroid/content/Context;

    const v1, 0x7f140383

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget p1, p0, Lfng;->Q:I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_a

    iput v0, p0, Lfng;->Q:I

    iget-object p1, p0, Lfng;->r:Leww;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v0}, Leww;->h(I)V

    :cond_5
    iget-object p1, p0, Lfng;->q:Lewz;

    if-eqz p1, :cond_a

    iget v0, p0, Lfng;->Q:I

    invoke-virtual {p1, v0}, Lewz;->f(I)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lfng;->ab:Landroid/content/Context;

    const v1, 0x7f14037f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget p1, p0, Lfng;->Q:I

    const/4 v0, 0x5

    if-eq p1, v0, :cond_a

    iput v0, p0, Lfng;->Q:I

    iget-object p1, p0, Lfng;->r:Leww;

    if-eqz p1, :cond_7

    invoke-virtual {p1, v0}, Leww;->h(I)V

    :cond_7
    iget-object p1, p0, Lfng;->q:Lewz;

    if-eqz p1, :cond_a

    iget v0, p0, Lfng;->Q:I

    invoke-virtual {p1, v0}, Lewz;->f(I)V

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lfng;->ab:Landroid/content/Context;

    const v1, 0x7f140381

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget p1, p0, Lfng;->Q:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_a

    iput v0, p0, Lfng;->Q:I

    iget-object p1, p0, Lfng;->r:Leww;

    if-eqz p1, :cond_9

    invoke-virtual {p1, v0}, Leww;->h(I)V

    :cond_9
    iget-object p1, p0, Lfng;->q:Lewz;

    if-eqz p1, :cond_a

    iget v0, p0, Lfng;->Q:I

    invoke-virtual {p1, v0}, Lewz;->f(I)V

    :cond_a
    :goto_0
    iget-object p1, p0, Lfng;->m:Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;

    if-eqz p1, :cond_b

    iget v0, p0, Lfng;->Q:I

    iput v0, p1, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->j:I

    :cond_b
    return-void

    :cond_c
    :goto_1
    return-void
.end method

.method public final declared-synchronized E()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lchk;->a:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lfng;->M()V

    invoke-virtual {p0}, Lfng;->H()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final F(Z)V
    .locals 1

    iget-object v0, p0, Lfng;->s:Lcgy;

    invoke-interface {v0}, Lcgy;->g()Lcha;

    move-result-object v0

    invoke-interface {v0, p1}, Lcha;->j(Z)V

    iput-boolean p1, p0, Lfng;->j:Z

    return-void
.end method

.method public final G()V
    .locals 5

    invoke-direct {p0}, Lfng;->M()V

    iget-object v0, p0, Lfng;->Z:Lchi;

    invoke-interface {v0}, Lchi;->i()V

    iget-object v0, p0, Lfng;->r:Leww;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Leww;->z:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    iput-object v1, p0, Lfng;->r:Leww;

    :cond_0
    iget-object v0, p0, Lfng;->I:Ldzx;

    if-eqz v0, :cond_1

    iget-object v2, v0, Ldzx;->i:Landroid/os/Handler;

    new-instance v3, Ldrh;

    const/16 v4, 0xe

    invoke-direct {v3, v0, v4}, Ldrh;-><init>(Ldzx;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-object v1, p0, Lfng;->I:Ldzx;

    :cond_1
    iget-object v0, p0, Lfng;->m:Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->e:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lfng;->E:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfng;->E:Ljava/util/Set;

    iget-object v2, p0, Lfng;->m:Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;

    iget-object v2, v2, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->e:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    return-void
.end method

.method public final H()V
    .locals 15

    iget-object v0, p0, Lfng;->i:Lewd;

    if-nez v0, :cond_0

    sget-object v0, Lfng;->b:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "startCapture: camera device not open yet."

    const/16 v2, 0x959

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lfng;->k:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lfng;->M()V

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lfng;->p:I

    iget-object v1, p0, Lfng;->t:Liec;

    invoke-interface {v1}, Liec;->i()V

    iput v0, p0, Lfng;->N:I

    :try_start_0
    iget-object v1, p0, Lfng;->S:Lexx;

    const-string v2, "PHOTOSPHERE"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, v1, Lexx;->h:Lkpo;

    sget-object v6, Ldyy;->c:Ldyy;

    invoke-virtual {v5, v3, v4, v6, v2}, Lkpo;->f(JLdyy;Ljava/lang/String;)Lgxr;

    move-result-object v13

    const-string v2, "yyyyMMdd_HHmmss"

    new-instance v5, Ljava/text/SimpleDateFormat;

    invoke-direct {v5, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "session_"

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    iget-object v7, v1, Lexx;->d:Ljava/io/File;

    invoke-direct {v6, v7, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v6}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    :goto_0
    array-length v8, v5

    if-ge v7, v8, :cond_2

    new-instance v8, Ljava/io/File;

    aget-object v9, v5, v7

    invoke-direct {v8, v6, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :catch_0
    move-exception v5

    :try_start_2
    sget-object v5, Lexx;->a:Lnak;

    invoke-virtual {v5}, Lnaf;->b()Lnaz;

    move-result-object v5

    const-string v7, "Could not delete temporary images."

    const/16 v8, 0x7f8

    invoke-static {v5, v7, v8}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    :cond_2
    new-instance v5, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;

    invoke-direct {v5}, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;-><init>()V

    iput-object v2, v5, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->a:Ljava/lang/String;

    iget-object v7, v1, Lexx;->c:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->c:Ljava/lang/String;

    iget-object v7, v1, Lexx;->d:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->d:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->e:Ljava/lang/String;

    const/4 v14, 0x1

    new-array v7, v14, [Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v8, "session_"

    invoke-virtual {v8, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v0

    const-string v2, "panorama_sessions"

    invoke-static {v2, v7}, Lj$/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Lj$/nio/file/Path;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->f:Ljava/lang/String;

    iget-object v2, v1, Lexx;->i:Ljew;

    invoke-virtual {v2, v3, v4}, Ljew;->T(J)Ljava/lang/String;

    move-result-object v2

    new-instance v10, Lgxv;

    iget-object v3, v1, Lexx;->g:Lgxk;

    iget-object v4, v5, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->f:Ljava/lang/String;

    invoke-direct {v10, v3, v4, v2}, Lgxv;-><init>(Lgxk;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10}, Lgxv;->c()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, v1, Lexx;->f:Lgxb;

    iget-object v4, v1, Lexx;->e:Lfbk;

    invoke-interface {v4}, Lfbk;->b()Lcjf;

    move-result-object v12

    new-instance v4, Lgxa;

    iget-object v7, v3, Lgxb;->a:Ljava/lang/Object;

    invoke-interface {v7}, Loiw;->get()Ljava/lang/Object;

    move-result-object v8

    iget-object v3, v3, Lgxb;->b:Ljava/lang/Object;

    invoke-interface {v3}, Loiw;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lgpv;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v7, v4

    move-object v11, v2

    invoke-direct/range {v7 .. v13}, Lgxa;-><init>(Lgwc;Lgpv;Lgxv;Ljava/lang/String;Lcjf;Lgxr;)V

    iput-object v4, v5, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->b:Lgxa;

    sget-object v3, Lkqi;->c:Lkqi;

    iget-object v3, v3, Lkqi;->j:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lexx;->a()Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_3

    sget-object v1, Lexx;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->b()Lnaz;

    move-result-object v1

    const-string v2, "Could not get the thumbnail directory."

    const/16 v3, 0x7f9

    invoke-static {v1, v2, v3}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    const-string v1, ""

    iput-object v1, v5, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->g:Ljava/lang/String;

    goto :goto_1

    :cond_3
    new-instance v3, Ljava/io/File;

    invoke-virtual {v1}, Lexx;->a()Ljava/io/File;

    move-result-object v1

    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->g:Ljava/lang/String;

    :goto_1
    const-string v1, "orientations.txt"

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v6, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->i:Ljava/lang/String;

    const-string v1, "session.meta"

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v6, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->h:Ljava/lang/String;

    iput-object v5, p0, Lfng;->m:Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;

    iget-object v1, p0, Lfng;->E:Ljava/util/Set;

    monitor-enter v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    iget-object v2, p0, Lfng;->E:Ljava/util/Set;

    iget-object v3, p0, Lfng;->m:Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;

    iget-object v3, v3, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->e:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v1, p0, Lfng;->al:Lcoo;

    iget-object v2, p0, Lfng;->m:Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;

    iget-object v2, v2, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcoo;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lfng;->al:Lcoo;

    iget-object v2, p0, Lfng;->m:Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;

    iget-object v3, v2, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->c:Ljava/lang/String;

    iget-object v2, v2, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->d:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcoo;->a(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    iget-object v1, p0, Lfng;->m:Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;

    iget-object v2, v1, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->h:Ljava/lang/String;

    iget-object v2, v1, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->i:Ljava/lang/String;

    iget-object v2, v1, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->e:Ljava/lang/String;

    iget-object v2, v1, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->a:Ljava/lang/String;

    iget-object v2, v1, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->g:Ljava/lang/String;

    iget v2, p0, Lfng;->Q:I

    iput v2, v1, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->j:I

    new-instance v1, Lewp;

    invoke-direct {v1}, Lewp;-><init>()V

    iput-object v1, p0, Lfng;->h:Lewp;

    new-instance v1, Lewz;

    iget-object v2, p0, Lfng;->ab:Landroid/content/Context;

    iget-object v3, p0, Lfng;->af:Lexf;

    iget-object v4, p0, Lfng;->ag:Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;

    iget-object v5, p0, Lfng;->s:Lcgy;

    invoke-interface {v5}, Lcgy;->j()Lgft;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lewz;-><init>(Landroid/content/Context;Lexf;Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;Lgft;)V

    iput-object v1, p0, Lfng;->q:Lewz;

    iget v2, p0, Lfng;->Q:I

    invoke-virtual {v1, v2}, Lewz;->f(I)V

    iget-object v1, p0, Lfng;->W:Lexs;

    iget-object v2, p0, Lfng;->ab:Landroid/content/Context;

    iget-boolean v3, v1, Lexs;->n:Z

    if-nez v3, :cond_4

    iput-boolean v14, v1, Lexs;->n:Z

    iget-object v3, v1, Lexs;->a:Lchi;

    invoke-interface {v3}, Lchi;->e()I

    move-result v4

    invoke-interface {v3, v4}, Lchi;->f(I)Lbnq;

    move-result-object v3

    invoke-virtual {v3}, Lbnq;->a()I

    move-result v3

    int-to-float v3, v3

    iput v3, v1, Lexs;->k:F

    const-string v3, "sensor"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    iput-object v2, v1, Lexs;->b:Landroid/hardware/SensorManager;

    new-instance v2, Lexr;

    invoke-direct {v2, v1}, Lexr;-><init>(Lexs;)V

    iput-object v2, v1, Lexs;->o:Landroid/os/HandlerThread;

    iget-object v2, v1, Lexs;->o:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    iput-boolean v0, v1, Lexs;->d:Z

    invoke-virtual {v1}, Lexs;->b()V

    iget-object v1, v1, Lexs;->j:Leag;

    invoke-virtual {v1}, Leag;->e()V

    :cond_4
    new-instance v1, Leww;

    iget-object v3, p0, Lfng;->ab:Landroid/content/Context;

    iget-object v4, p0, Lfng;->ac:Ldhi;

    iget-object v5, p0, Lfng;->i:Lewd;

    iget-object v6, p0, Lfng;->W:Lexs;

    iget-object v7, p0, Lfng;->m:Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;

    iget-object v8, p0, Lfng;->h:Lewp;

    iget-object v9, p0, Lfng;->q:Lewz;

    iget-object v2, p0, Lfng;->s:Lcgy;

    invoke-interface {v2}, Lcgy;->i()Lfbk;

    move-result-object v10

    iget-object v11, p0, Lfng;->U:Lcvr;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v13}, Leww;-><init>(Landroid/content/Context;Ldhi;Lewd;Lexs;Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;Lewp;Lewz;Lfbk;Lcvr;[B[B)V

    iput-object v1, p0, Lfng;->r:Leww;

    iget-object v2, p0, Lfng;->ap:Lexz;

    iput-object v2, v1, Leww;->B:Lexz;

    iget-object v2, p0, Lfng;->I:Ldzx;

    iput-object v2, v1, Leww;->t:Ldzx;

    iget-object v2, p0, Lfng;->aq:Lexz;

    iput-object v2, v1, Leww;->w:Lexz;

    iget-object v2, p0, Lfng;->ar:Lexz;

    iput-object v2, v1, Leww;->x:Lexz;

    iget-object v1, p0, Lfng;->s:Lcgy;

    invoke-interface {v1}, Lcgy;->t()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iput v14, v2, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v1, p0, Lfng;->i:Lewd;

    iget-object v2, p0, Lfng;->U:Lcvr;

    invoke-virtual {v2}, Lcvr;->F()Landroid/view/WindowManager;

    move-result-object v2

    iget-object v3, p0, Lfng;->ac:Ldhi;

    iget-object v4, p0, Lfng;->r:Leww;

    iget-object v4, v4, Leww;->I:Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-virtual {v1, v2, v3, v4, v14}, Lewd;->a(Landroid/view/WindowManager;Ldhi;Landroidx/wear/ambient/AmbientMode$AmbientController;Z)Lbob;

    move-result-object v1

    iget-object v2, p0, Lfng;->r:Leww;

    invoke-virtual {v2}, Leww;->g()V

    iget-object v2, p0, Lfng;->r:Leww;

    invoke-virtual {v1}, Lbob;->b()I

    move-result v3

    invoke-virtual {v1}, Lbob;->a()I

    move-result v1

    iget-object v2, v2, Leww;->b:Lewz;

    iput v3, v2, Lewz;->A:I

    iput v1, v2, Lewz;->B:I

    iget-object v1, p0, Lfng;->r:Leww;

    iget v2, p0, Lfng;->Q:I

    iget-object v3, v1, Leww;->c:Lewd;

    if-nez v3, :cond_5

    sget-object v0, Lfng;->b:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Can\'t setup LightCycleController for startPreview."

    const/16 v2, 0x957

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void

    :cond_5
    invoke-virtual {v1}, Leww;->b()F

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x6

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_6

    const/4 v2, 0x6

    :cond_6
    iget-object v3, v1, Leww;->c:Lewd;

    iget-object v3, v3, Lewd;->b:Lbne;

    invoke-virtual {v3}, Lbne;->e()Lbnp;

    move-result-object v3

    if-eq v2, v14, :cond_8

    if-eq v2, v5, :cond_8

    const/4 v4, 0x5

    if-ne v2, v4, :cond_7

    goto :goto_2

    :cond_7
    invoke-static {v3}, Lewe;->a(Lbnp;)Lgxb;

    move-result-object v3

    goto :goto_3

    :cond_8
    :goto_2
    invoke-static {v3}, Lewe;->a(Lbnp;)Lgxb;

    move-result-object v3

    :goto_3
    iget-object v3, v3, Lgxb;->a:Ljava/lang/Object;

    check-cast v3, Lbob;

    invoke-virtual {v3}, Lbob;->b()I

    iget-object v3, v1, Leww;->b:Lewz;

    invoke-virtual {v3, v2}, Lewz;->f(I)V

    invoke-virtual {v1, v2}, Leww;->h(I)V

    :try_start_5
    iget-object v2, v1, Leww;->p:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, v1, Leww;->p:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_4

    :catch_1
    move-exception v2

    const/4 v2, 0x0

    :goto_4
    if-eqz v2, :cond_9

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sget-object v3, Lewr;->a:Ljava/lang/Object;

    invoke-static {v2}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->SetAppVersion(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v1}, Leww;->e()V

    new-instance v1, Lfmw;

    invoke-direct {v1, p0, v0}, Lfmw;-><init>(Lfng;I)V

    iget-object v0, p0, Lfng;->i:Lewd;

    iget-object v0, v0, Lewd;->b:Lbne;

    iget-object v2, p0, Lfng;->B:Landroid/os/Handler;

    invoke-virtual {v0, v2, v1}, Lbne;->r(Landroid/os/Handler;Lbnf;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v0

    :cond_a
    const-string v0, "Cannot create temporary session file."

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :catch_2
    move-exception v0

    sget-object v1, Lfng;->b:Lnak;

    invoke-virtual {v1}, Lnaf;->b()Lnaz;

    move-result-object v1

    const-string v2, "Cannot start capture, local session storage not ready."

    const/16 v3, 0x958

    invoke-static {v1, v2, v3, v0}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    return-void
.end method

.method public final I()V
    .locals 2

    iget-object v0, p0, Lfng;->H:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public final bT()Lmqp;
    .locals 5

    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Lihc;

    sget-object v3, Lmpx;->a:Lmpx;

    const/4 v4, 0x0

    invoke-direct {v2, v0, v1, v3, v4}, Lihc;-><init>(Landroid/graphics/Bitmap;ILmqp;Z)V

    invoke-static {v2}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lfng;->Q:I

    add-int/lit8 v1, v0, -0x1

    if-eqz v0, :cond_0

    packed-switch v1, :pswitch_data_0

    const v0, 0x7f1402ae

    goto :goto_0

    :pswitch_0
    const v0, 0x7f1401a6

    goto :goto_0

    :pswitch_1
    const v0, 0x7f1405e8

    goto :goto_0

    :pswitch_2
    const v0, 0x7f140579

    goto :goto_0

    :pswitch_3
    const v0, 0x7f140214

    goto :goto_0

    :pswitch_4
    const v0, 0x7f1403a8

    :goto_0
    iget-object v1, p0, Lfng;->s:Lcgy;

    invoke-interface {v1}, Lcgy;->f()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final ca(I)V
    .locals 4

    iput p1, p0, Lfng;->P:I

    iget-object v0, p0, Lfng;->q:Lewz;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lewz;->s:Z

    if-nez v1, :cond_2

    if-ne p1, v3, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    iput-boolean v2, v0, Lewz;->t:Z

    return-void
.end method

.method public final cd()V
    .locals 0

    return-void
.end method

.method public final close()V
    .locals 0

    return-void
.end method

.method public final d(Lbne;)V
    .locals 7

    new-instance v0, Lewd;

    iget-object v1, p0, Lfng;->B:Landroid/os/Handler;

    invoke-direct {v0, p1, v1}, Lewd;-><init>(Lbne;Landroid/os/Handler;)V

    iput-object v0, p0, Lfng;->i:Lewd;

    sget-boolean v0, Lfng;->V:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Lbne;->e()Lbnp;

    move-result-object v0

    new-instance v1, Lbob;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lbob;-><init>(II)V

    invoke-static {v0}, Lewe;->a(Lbnp;)Lgxb;

    move-result-object v0

    new-instance v1, Lbob;

    iget-object v3, v0, Lgxb;->b:Ljava/lang/Object;

    check-cast v3, Lbob;

    invoke-virtual {v3}, Lbob;->b()I

    move-result v3

    iget-object v0, v0, Lgxb;->b:Ljava/lang/Object;

    check-cast v0, Lbob;

    invoke-virtual {v0}, Lbob;->a()I

    move-result v0

    invoke-direct {v1, v3, v0}, Lbob;-><init>(II)V

    if-nez p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lbne;->e()Lbnp;

    move-result-object v0

    invoke-static {v0}, Lewe;->a(Lbnp;)Lgxb;

    move-result-object v0

    invoke-virtual {p1}, Lbne;->f()Lbnw;

    move-result-object v3

    new-instance v4, Lbob;

    iget-object v5, v0, Lgxb;->a:Ljava/lang/Object;

    check-cast v5, Lbob;

    invoke-virtual {v5}, Lbob;->b()I

    move-result v5

    iget-object v6, v0, Lgxb;->a:Ljava/lang/Object;

    check-cast v6, Lbob;

    invoke-virtual {v6}, Lbob;->a()I

    move-result v6

    invoke-direct {v4, v5, v6}, Lbob;-><init>(II)V

    invoke-virtual {v3, v4}, Lbnw;->k(Lbob;)V

    new-instance v4, Lbob;

    iget-object v5, v0, Lgxb;->b:Ljava/lang/Object;

    check-cast v5, Lbob;

    invoke-virtual {v5}, Lbob;->b()I

    move-result v5

    iget-object v0, v0, Lgxb;->b:Ljava/lang/Object;

    check-cast v0, Lbob;

    invoke-virtual {v0}, Lbob;->a()I

    move-result v0

    invoke-direct {v4, v5, v0}, Lbob;-><init>(II)V

    invoke-virtual {v3, v4}, Lbnw;->l(Lbob;)V

    invoke-virtual {p1, v3}, Lbne;->m(Lbnw;)V

    invoke-virtual {p1}, Lbne;->e()Lbnp;

    move-result-object v0

    iget v0, v0, Lbnp;->u:F

    invoke-static {v0}, Lewn;->a(F)F

    move-result v0

    :goto_0
    invoke-virtual {v1}, Lbob;->b()I

    move-result v3

    invoke-virtual {v1}, Lbob;->a()I

    move-result v1

    sget-object v4, Lewr;->a:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    sget-object v5, Lewr;->d:Lcom/google/android/apps/camera/legacy/lightcycle/panorama/LightCycle$LightCycleProgressCallback;

    invoke-static {v3, v1, v0, v5}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->Init(IIFLcom/google/android/apps/camera/legacy/lightcycle/panorama/LightCycle$LightCycleProgressCallback;)V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lewr;->b:Ljava/lang/Boolean;

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    sput-boolean v0, Lfng;->V:Z

    :goto_1
    iget-object v0, p0, Lfng;->I:Ldzx;

    if-nez v0, :cond_3

    iget-object v0, p0, Lfng;->s:Lcgy;

    invoke-interface {v0}, Lcgy;->g()Lcha;

    move-result-object v0

    check-cast v0, Lcie;

    iget-object v1, v0, Lcie;->t:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lbne;->n()V

    iget-object p1, p0, Lfng;->an:Lidu;

    iget v2, v0, Lcie;->u:I

    iget v0, v0, Lcie;->v:I

    invoke-interface {p1, v1, v2, v0}, Lidu;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0}, Lfng;->H()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final e(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object p1, p0, Lfng;->U:Lcvr;

    invoke-virtual {p1}, Lcvr;->F()Landroid/view/WindowManager;

    move-result-object p1

    invoke-static {p1}, Lgfp;->c(Landroid/view/WindowManager;)I

    move-result p1

    iput p1, p0, Lfng;->y:I

    iget-object v0, p0, Lfng;->ag:Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;->b(I)V

    invoke-virtual {p0}, Lfng;->w()V

    return-void
.end method

.method public final l()V
    .locals 3

    iget-object v0, p0, Lfng;->ax:Lhlw;

    invoke-virtual {v0}, Lhlw;->a()Lnou;

    move-result-object v0

    new-instance v1, Lcig;

    const/16 v2, 0x12

    invoke-direct {v1, p0, v2}, Lcig;-><init>(Lfng;I)V

    iget-object v2, p0, Lfng;->aa:Ljuh;

    invoke-static {v0, v1, v2}, Ljvd;->t(Lnou;Ljzs;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final n()V
    .locals 4

    iget-object v0, p0, Lfng;->s:Lcgy;

    invoke-interface {v0}, Lcgy;->g()Lcha;

    move-result-object v1

    check-cast v1, Lcie;

    iget-object v1, v1, Lcie;->f:Lcom/google/android/apps/camera/ui/views/MainActivityLayout;

    iput-object v1, p0, Lfng;->n:Lcom/google/android/apps/camera/ui/views/MainActivityLayout;

    const v2, 0x7f0b0239

    invoke-virtual {v1, v2}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    if-gtz v2, :cond_0

    invoke-interface {v0}, Lcgy;->s()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0e00b4

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    iget-object v0, p0, Lfng;->n:Lcom/google/android/apps/camera/ui/views/MainActivityLayout;

    const v1, 0x7f0b0290

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;

    iput-object v0, p0, Lfng;->ag:Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;

    iget v1, p0, Lfng;->y:I

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;->b(I)V

    iget-object v0, p0, Lfng;->n:Lcom/google/android/apps/camera/ui/views/MainActivityLayout;

    const v1, 0x7f0b015d

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lfng;->ad:Landroid/view/View;

    :cond_0
    new-instance v0, Ljuf;

    invoke-direct {v0}, Ljuf;-><init>()V

    iput-object v0, p0, Lfng;->aj:Ljuf;

    iget-object v1, p0, Lfng;->X:Liff;

    iget-object v2, p0, Lfng;->g:Lifj;

    invoke-interface {v1, v2}, Liff;->e(Lifj;)Lkad;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    iget-object v0, p0, Lfng;->aj:Ljuf;

    iget-object v1, p0, Lfng;->A:Lhvz;

    iget-object v1, v1, Lhvz;->d:Ljvk;

    new-instance v2, Lfnb;

    invoke-direct {v2, p0, v3}, Lfnb;-><init>(Lfng;I)V

    sget-object v3, Lnnv;->a:Lnnv;

    invoke-virtual {v1, v2, v3}, Ljvk;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    iget-object v0, p0, Lfng;->f:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    iget-object v1, p0, Lfng;->Y:Lcom/google/android/apps/camera/bottombar/BottomBarListener;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->addListener(Lcom/google/android/apps/camera/bottombar/BottomBarListener;)V

    iget-object v0, p0, Lfng;->s:Lcgy;

    iget-object v1, p0, Lfng;->an:Lidu;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcgy;->r(Lidu;Z)V

    iget-object v0, p0, Lfng;->Z:Lchi;

    invoke-interface {v0}, Lchi;->l()V

    invoke-virtual {p0}, Lfng;->y()V

    iget-object v0, p0, Lfng;->Z:Lchi;

    invoke-interface {v0}, Lchi;->e()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lchk;->j()V

    invoke-virtual {p0}, Lchk;->q()V

    new-instance v0, Lmgv;

    iget-object v1, p0, Lfng;->s:Lcgy;

    invoke-interface {v1}, Lcgy;->s()Landroid/content/Context;

    move-result-object v1

    iget v3, p0, Lfng;->F:I

    invoke-direct {v0, v1, v3}, Lmgv;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f1403b2

    invoke-virtual {v0, v1}, Lmgv;->l(I)V

    invoke-virtual {v0, v2}, Lmgv;->k(Z)V

    new-instance v1, Lcdc;

    const/16 v2, 0xd

    invoke-direct {v1, p0, v2}, Lcdc;-><init>(Lfng;I)V

    const v2, 0x7f14036d

    invoke-virtual {v0, v2, v1}, Lmgv;->q(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Lef;->b()Leg;

    move-result-object v0

    invoke-virtual {v0}, Leg;->show()V

    return-void

    :cond_1
    const/16 v0, -0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-static {}, Ljfc;->g()Lhlc;

    move-result-object v0

    iget-object v1, p0, Lfng;->S:Lexx;

    invoke-virtual {v0}, Lhlc;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lexx;->b:Ljava/io/File;

    iget-object v0, v1, Lexx;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v1, Lexx;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lexx;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v1, "Panorama directory not created."

    const/16 v2, 0x7fd

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    :cond_2
    iget-object v0, p0, Lfng;->s:Lcgy;

    invoke-interface {v0}, Lcgy;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lfng;->ae:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    new-instance v0, Lexf;

    invoke-direct {v0}, Lexf;-><init>()V

    iput-object v0, p0, Lfng;->af:Lexf;

    iget-object v0, p0, Lfng;->at:Leoa;

    iget-object v1, p0, Lfng;->au:Lenz;

    invoke-virtual {v0, v1}, Leoa;->a(Lenz;)V

    return-void
.end method

.method public final p()V
    .locals 4

    iget-object v0, p0, Lfng;->aj:Ljuf;

    invoke-virtual {v0}, Ljuf;->close()V

    iget-object v0, p0, Lfng;->f:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    iget-object v1, p0, Lfng;->Y:Lcom/google/android/apps/camera/bottombar/BottomBarListener;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->removeListener(Lcom/google/android/apps/camera/bottombar/BottomBarListener;)V

    invoke-direct {p0}, Lfng;->J()V

    iget-object v0, p0, Lfng;->s:Lcgy;

    invoke-interface {v0}, Lcgy;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lfng;->ae:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    invoke-virtual {p0}, Lfng;->G()V

    iget-object v0, p0, Lfng;->am:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    iput-object v1, p0, Lfng;->am:Landroid/os/HandlerThread;

    iput-object v1, p0, Lfng;->H:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lfng;->W:Lexs;

    invoke-virtual {v0}, Lexs;->d()V

    iget-object v0, p0, Lfng;->h:Lewp;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lewp;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lfng;->h:Lewp;

    invoke-virtual {v0}, Lewp;->interrupt()V

    :cond_1
    iget-object v0, p0, Lfng;->B:Landroid/os/Handler;

    new-instance v2, Lfib;

    const/16 v3, 0x12

    invoke-direct {v2, p0, v3}, Lfib;-><init>(Lfng;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-object v1, p0, Lfng;->i:Lewd;

    iget-object v0, p0, Lfng;->at:Leoa;

    iget-object v1, p0, Lfng;->au:Lenz;

    invoke-virtual {v0, v1}, Leoa;->b(Lenz;)V

    return-void
.end method

.method public final t()Z
    .locals 1

    iget-boolean v0, p0, Lfng;->l:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lfng;->A()V

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lfng;->A:Lhvz;

    invoke-virtual {v0}, Lhvu;->cl()V

    const/4 v0, 0x0

    return v0
.end method

.method public final v()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final w()V
    .locals 2

    iget v0, p0, Lfng;->p:I

    iget-object v1, p0, Lfng;->s:Lcgy;

    invoke-interface {v1}, Lcgy;->g()Lcha;

    move-result-object v1

    invoke-interface {v1}, Lcha;->b()V

    const-class v1, Lfng;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfng;->ak:Lgfs;

    invoke-interface {v0, v1}, Lgfs;->a(Ljava/lang/Class;)V

    return-void

    :cond_0
    iget-object v0, p0, Lfng;->ak:Lgfs;

    invoke-interface {v0, v1}, Lgfs;->b(Ljava/lang/Class;)V

    return-void
.end method

.method public final x()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lfng;->F(Z)V

    invoke-direct {p0}, Lfng;->K()V

    iget-object v0, p0, Lfng;->h:Lewp;

    invoke-virtual {v0}, Lewp;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lfng;->h:Lewp;

    invoke-virtual {v0}, Lewp;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfng;->h:Lewp;

    new-instance v1, Lfmt;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lfmt;-><init>(Lfng;I)V

    invoke-virtual {v0, v1}, Lewp;->a(Lexz;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lfng;->B:Landroid/os/Handler;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    invoke-direct {p0}, Lfng;->J()V

    invoke-virtual {p0}, Lfng;->w()V

    iget-object v0, p0, Lfng;->E:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfng;->E:Ljava/util/Set;

    iget-object v2, p0, Lfng;->m:Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;

    iget-object v2, v2, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->e:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final declared-synchronized y()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfng;->am:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PhotoSphereGLThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lfng;->am:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lfnf;

    iget-object v1, p0, Lfng;->am:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lfnf;-><init>(Lfng;Landroid/os/Looper;)V

    iput-object v0, p0, Lfng;->H:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final z()V
    .locals 10

    iget-object v0, p0, Lfng;->q:Lewz;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lewz;->q:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lfng;->b:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Not finishing capture since photo taking is in progress."

    const/16 v2, 0x951

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lfng;->e:Lhgy;

    const v1, 0x7f130028

    invoke-interface {v0, v1}, Lhgy;->b(I)V

    invoke-virtual {p0}, Lfng;->w()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lfng;->F(Z)V

    sget-object v0, Lewr;->a:Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->SetOutputResolutionLarge()V

    iget-object v0, p0, Lfng;->ay:Lnaa;

    iget-object v3, p0, Lfng;->ad:Landroid/view/View;

    iget-object v1, v0, Lnaa;->a:Ljava/lang/Object;

    if-eqz v1, :cond_2

    check-cast v1, Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lnaa;->a:Ljava/lang/Object;

    check-cast v1, Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_2
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {v3, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, v0, Lnaa;->a:Ljava/lang/Object;

    iget-object v1, v0, Lnaa;->a:Ljava/lang/Object;

    check-cast v1, Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v8, v0, Lnaa;->a:Ljava/lang/Object;

    new-instance v9, Liqx;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v9

    move-object v2, v0

    invoke-direct/range {v1 .. v7}, Liqx;-><init>(Lnaa;Landroid/view/View;I[B[B[B)V

    check-cast v8, Landroid/animation/ObjectAnimator;

    invoke-virtual {v8, v9}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, v0, Lnaa;->a:Ljava/lang/Object;

    check-cast v0, Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    new-instance v0, Lfmy;

    invoke-direct {v0, p0}, Lfmy;-><init>(Lfng;)V

    iput-object v0, p0, Lfng;->v:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-direct {p0}, Lfng;->K()V

    iget-object v0, p0, Lfng;->h:Lewp;

    new-instance v1, Lfmt;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lfmt;-><init>(Lfng;I)V

    invoke-virtual {v0, v1}, Lewp;->a(Lexz;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3e99999a    # 0.3f
        0x0
    .end array-data
.end method
