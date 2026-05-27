.class public final Lhos;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final A:Lhny;

.field public final B:Lhol;

.field public final C:Lhpg;

.field public final D:Lhoz;

.field public final E:Lhpq;

.field public final F:Lfbz;

.field public final G:Lkai;

.field public final H:Landroid/hardware/Sensor;

.field public final I:Ldlj;

.field public final J:Lcsd;

.field public K:Lklv;

.field public L:Lnou;

.field public M:Lmqp;

.field public N:D

.field public O:D

.field public P:J

.field public Q:J

.field public final R:Lhpu;

.field public final S:Ldqx;

.field public final T:Ldfa;

.field public final U:Ldja;

.field public final V:Lbkc;

.field private final W:Ljvs;

.field private final X:Ljwb;

.field private final Y:Lkbc;

.field private final Z:Ligx;

.field private final aa:Lmqp;

.field private final ab:Litm;

.field private ac:Ljava/util/concurrent/ScheduledFuture;

.field private final ad:Lhor;

.field private final ae:Ljes;

.field private final af:Ljes;

.field private final ag:Ljes;

.field private final ah:Ljew;

.field public final b:Ljava/lang/Object;

.field public final c:[D

.field public d:J

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final f:Lcvf;

.field public final g:Ldbf;

.field public final h:Lhgy;

.field public final i:Lhsl;

.field public final j:Ljvk;

.field public final k:Landroid/content/Context;

.field public final l:Ljava/util/concurrent/Executor;

.field public final m:Lhno;

.field public final n:Ldhi;

.field public final o:Lhof;

.field public final p:Ljuh;

.field public final q:Ljava/lang/Object;

.field public final r:Lmqp;

.field public final s:Loiw;

.field public final t:Ljwb;

.field public final u:Ljwb;

.field public final v:Ljava/util/concurrent/ScheduledExecutorService;

.field public final w:Liec;

.field public final x:Landroid/hardware/SensorEventListener;

.field public final y:Landroid/hardware/SensorManager;

.field public final z:Lcwm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/timelapse/TimelapseRecordingController"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lhos;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lcvr;Ldbf;Lhgy;Lhsl;Landroid/content/Context;Ljava/util/concurrent/Executor;Lhno;Ldhi;Lbkc;Ljuf;Ljuh;Lell;Lmqp;Ljvs;Lmqp;Ljwb;Ljwb;Ljwb;Loiw;Liec;Ljava/util/concurrent/ScheduledExecutorService;Lhny;Lhof;Lhol;Lhpg;Lhoz;Lhpq;Lkbc;Lfbz;Ldja;Lgzw;Ldqx;Lkai;Ligx;Lcwm;Lcvf;Ldfa;Litm;Ljew;Ldlj;Lva;Lhpu;Lcsd;[B[B[B[B[B)V
    .locals 14

    move-object v0, p0

    move-object/from16 v1, p8

    move-object/from16 v2, p10

    move-object/from16 v3, p11

    move-object/from16 v4, p22

    move-object/from16 v5, p24

    move-object/from16 v6, p26

    move-object/from16 v7, p27

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v8, Ljava/lang/Object;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    iput-object v8, v0, Lhos;->b:Ljava/lang/Object;

    const/4 v8, 0x3

    new-array v8, v8, [D

    iput-object v8, v0, Lhos;->c:[D

    new-instance v8, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v8, v0, Lhos;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v8, Ljava/lang/Object;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    iput-object v8, v0, Lhos;->q:Ljava/lang/Object;

    sget-object v8, Lmpx;->a:Lmpx;

    iput-object v8, v0, Lhos;->M:Lmqp;

    invoke-virtual {p1}, Lcvr;->D()Landroid/hardware/SensorManager;

    move-result-object v8

    const/4 v10, 0x4

    invoke-virtual {v8, v10}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v8

    iput-object v8, v0, Lhos;->H:Landroid/hardware/Sensor;

    move-object/from16 v8, p2

    iput-object v8, v0, Lhos;->g:Ldbf;

    move-object/from16 v8, p19

    iput-object v8, v0, Lhos;->s:Loiw;

    move-object/from16 v8, p3

    iput-object v8, v0, Lhos;->h:Lhgy;

    move-object/from16 v8, p4

    iput-object v8, v0, Lhos;->i:Lhsl;

    move-object/from16 v8, p5

    iput-object v8, v0, Lhos;->k:Landroid/content/Context;

    iput-object v1, v0, Lhos;->n:Ldhi;

    move-object/from16 v10, p33

    iput-object v10, v0, Lhos;->G:Lkai;

    move-object/from16 v10, p23

    iput-object v10, v0, Lhos;->o:Lhof;

    move-object/from16 v10, p7

    iput-object v10, v0, Lhos;->m:Lhno;

    move-object/from16 v10, p9

    iput-object v10, v0, Lhos;->V:Lbkc;

    move-object/from16 v10, p6

    iput-object v10, v0, Lhos;->l:Ljava/util/concurrent/Executor;

    iput-object v3, v0, Lhos;->p:Ljuh;

    move-object/from16 v10, p13

    iput-object v10, v0, Lhos;->r:Lmqp;

    move-object/from16 v10, p16

    iput-object v10, v0, Lhos;->t:Ljwb;

    move-object/from16 v10, p17

    iput-object v10, v0, Lhos;->u:Ljwb;

    move-object/from16 v10, p18

    iput-object v10, v0, Lhos;->X:Ljwb;

    move-object/from16 v10, p20

    iput-object v10, v0, Lhos;->w:Liec;

    invoke-virtual {p1}, Lcvr;->D()Landroid/hardware/SensorManager;

    move-result-object v10

    iput-object v10, v0, Lhos;->y:Landroid/hardware/SensorManager;

    new-instance v10, Ljvk;

    sget-object v11, Lhnw;->a:Lhnw;

    invoke-direct {v10, v11}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object v10, v0, Lhos;->j:Ljvk;

    iput-object v4, v0, Lhos;->A:Lhny;

    iput-object v5, v0, Lhos;->B:Lhol;

    move-object/from16 v10, p25

    iput-object v10, v0, Lhos;->C:Lhpg;

    iput-object v6, v0, Lhos;->D:Lhoz;

    iput-object v7, v0, Lhos;->E:Lhpq;

    move-object/from16 v11, p28

    iput-object v11, v0, Lhos;->Y:Lkbc;

    move-object/from16 v11, p29

    iput-object v11, v0, Lhos;->F:Lfbz;

    move-object/from16 v11, p30

    iput-object v11, v0, Lhos;->U:Ldja;

    move-object/from16 v11, p32

    iput-object v11, v0, Lhos;->S:Ldqx;

    move-object/from16 v11, p34

    iput-object v11, v0, Lhos;->Z:Ligx;

    move-object/from16 v11, p15

    iput-object v11, v0, Lhos;->aa:Lmqp;

    move-object/from16 v11, p14

    iput-object v11, v0, Lhos;->W:Ljvs;

    move-object/from16 v11, p35

    iput-object v11, v0, Lhos;->z:Lcwm;

    move-object/from16 v11, p36

    iput-object v11, v0, Lhos;->f:Lcvf;

    move-object/from16 v11, p37

    iput-object v11, v0, Lhos;->T:Ldfa;

    move-object/from16 v11, p38

    iput-object v11, v0, Lhos;->ab:Litm;

    move-object/from16 v11, p21

    iput-object v11, v0, Lhos;->v:Ljava/util/concurrent/ScheduledExecutorService;

    move-object/from16 v11, p39

    iput-object v11, v0, Lhos;->ah:Ljew;

    move-object/from16 v11, p40

    iput-object v11, v0, Lhos;->I:Ldlj;

    move-object/from16 v11, p42

    iput-object v11, v0, Lhos;->R:Lhpu;

    move-object/from16 v11, p43

    iput-object v11, v0, Lhos;->J:Lcsd;

    iget-object v11, v5, Lhol;->e:Ljvk;

    new-instance v12, Lhml;

    const/16 v13, 0x8

    invoke-direct {v12, p0, v13}, Lhml;-><init>(Lhos;I)V

    invoke-interface {v11, v12, v3}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljuf;->d(Lkad;)V

    new-instance v11, Lhml;

    const/16 v12, 0x9

    invoke-direct {v11, p0, v12}, Lhml;-><init>(Lhos;I)V

    move-object/from16 v12, p31

    invoke-virtual {v12, v11, v3}, Ljwi;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljuf;->d(Lkad;)V

    new-instance v11, Lhon;

    const/4 v12, 0x6

    invoke-direct {v11, p0, v12}, Lhon;-><init>(Lhos;I)V

    move-object/from16 v12, p41

    invoke-virtual {v12, v11, v2}, Lva;->A(Ljava/lang/Runnable;Ljuf;)V

    new-instance v2, Lhoq;

    invoke-direct {v2, p0, v7, v9}, Lhoq;-><init>(Lhos;Lhpq;I)V

    iput-object v2, v0, Lhos;->x:Landroid/hardware/SensorEventListener;

    new-instance v2, Lhor;

    move-object/from16 p13, v2

    move-object/from16 p14, p0

    move-object/from16 p15, p11

    move-object/from16 p16, p25

    move-object/from16 p17, p12

    move-object/from16 p18, p5

    invoke-direct/range {p13 .. p18}, Lhor;-><init>(Lhos;Ljuh;Lhpg;Lell;Landroid/content/Context;)V

    iput-object v2, v0, Lhos;->ad:Lhor;

    new-instance v3, Ljes;

    invoke-direct {v3, p0, v7}, Ljes;-><init>(Lhos;Lhpq;)V

    iput-object v3, v0, Lhos;->ag:Ljes;

    new-instance v8, Ljes;

    invoke-direct {v8, p0, v7}, Ljes;-><init>(Lhos;Lhpq;)V

    iput-object v8, v0, Lhos;->af:Ljes;

    new-instance v9, Ljes;

    invoke-direct {v9, p0, v1}, Ljes;-><init>(Lhos;Ldhi;)V

    iput-object v9, v0, Lhos;->ae:Ljes;

    iput-object v2, v5, Lhol;->ag:Lhor;

    iput-object v3, v7, Lhpq;->V:Ljes;

    iput-object v8, v6, Lhoz;->n:Ljes;

    iput-object v9, v4, Lhny;->u:Ljes;

    return-void
.end method


# virtual methods
.method public final a()Lhpu;
    .locals 1

    iget-object v0, p0, Lhos;->R:Lhpu;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public final b(Lklv;)V
    .locals 9

    iget-object v0, p0, Lhos;->R:Lhpu;

    sget-object v1, Lhpu;->a:Lhpu;

    invoke-static {}, Ljws;->values()[Ljws;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_4

    aget-object v5, v1, v4

    iget v6, v0, Lhpu;->g:I

    iget v7, v5, Ljws;->i:I

    if-ne v6, v7, :cond_3

    iget v7, v0, Lhpu;->h:I

    iget v8, v5, Ljws;->j:I

    if-ne v7, v8, :cond_3

    iget v7, v5, Ljws;->k:I

    if-ne v6, v7, :cond_3

    iput-object p1, p0, Lhos;->K:Lklv;

    iget-object v0, p0, Lhos;->E:Lhpq;

    iget-object v1, v0, Lhpq;->k:Ljuh;

    new-instance v2, Lhph;

    invoke-direct {v2, v0, v3}, Lhph;-><init>(Lhpq;I)V

    invoke-virtual {v1, v2}, Ljuh;->c(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lhos;->B:Lhol;

    iget-object v1, p0, Lhos;->R:Lhpu;

    iget-object v2, v0, Lhol;->e:Ljvk;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljvk;->bn(Ljava/lang/Object;)V

    iput-object v5, v0, Lhol;->J:Ljws;

    iput-object p1, v0, Lhol;->M:Lklv;

    iput-object v1, v0, Lhol;->W:Lhpu;

    iget-object p1, v0, Lhol;->g:Ldbf;

    iget-object v1, v0, Lhol;->d:Ldhi;

    iget-object v2, v0, Lhol;->am:Ldja;

    iget-object v3, v0, Lhol;->ah:Ldqx;

    invoke-static {p1, v1, v2, v3}, Ljhp;->ay(Ldbf;Ldhi;Ldja;Ldqx;)Ljwu;

    move-result-object p1

    iput-object p1, v0, Lhol;->K:Ljwu;

    new-instance p1, Lfzj;

    iget-object v1, v0, Lhol;->o:Ljwb;

    iget-object v2, v0, Lhol;->ac:Lkha;

    iget-object v2, v2, Lkha;->a:Lklj;

    iget-object v3, v0, Lhol;->g:Ldbf;

    invoke-virtual {v3}, Ldbf;->e()Lmqp;

    move-result-object v3

    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkli;

    const-string v4, "TimelapseDynamicSensorOrientationListener"

    invoke-static {v4}, Ljvd;->f(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    invoke-direct {p1, v1, v2, v3, v4}, Lfzj;-><init>(Ljwb;Lklj;Lkli;Ljava/util/concurrent/Executor;)V

    iput-object p1, v0, Lhol;->L:Lfzj;

    iget-object p1, v0, Lhol;->d:Ldhi;

    sget-object v1, Ldil;->d:Ldhj;

    invoke-interface {p1, v1}, Ldhi;->l(Ldhj;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, v0, Lhol;->j:Lhno;

    iget-object v1, p1, Lhno;->M:Ldja;

    invoke-virtual {v1}, Ldja;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lhno;->u:Ldbf;

    iget-object v2, p1, Lhno;->v:Ldhi;

    iget-object v3, p1, Lhno;->M:Ldja;

    iget-object v4, p1, Lhno;->L:Ldqx;

    invoke-static {v1, v2, v3, v4}, Ljhp;->ay(Ldbf;Ldhi;Ldja;Ldqx;)Ljwu;

    move-result-object v1

    iget-object v2, p1, Lhno;->x:Loiw;

    check-cast v2, Lhqa;

    invoke-virtual {v2}, Lhqa;->a()Lhpz;

    move-result-object v2

    iput-object v2, p1, Lhno;->C:Lhpy;

    iget-object v2, p1, Lhno;->C:Lhpy;

    iget-object v3, p1, Lhno;->u:Ldbf;

    invoke-virtual {v3}, Ldbf;->j()Z

    move-result v3

    invoke-virtual {v1}, Ljwu;->b()Lkaf;

    move-result-object v4

    iget v4, v4, Lkaf;->a:I

    invoke-virtual {v1}, Ljwu;->b()Lkaf;

    move-result-object v1

    iget v1, v1, Lkaf;->b:I

    new-instance v5, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    invoke-direct {v5, p1}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;-><init>(Lhno;)V

    invoke-interface {v2, v3, v4, v1, v5}, Lhpy;->e(ZIILandroidx/wear/ambient/AmbientModeSupport$AmbientController;)V

    iget-object v1, p1, Lhno;->B:Landroid/hardware/Sensor;

    if-eqz v1, :cond_0

    iget-object v2, p1, Lhno;->z:Landroid/hardware/SensorManager;

    iget-object v3, p1, Lhno;->A:Landroid/hardware/SensorEventListener;

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v1, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_0
    iget-object v1, p1, Lhno;->p:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object p1, p1, Lhno;->s:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :cond_1
    new-instance p1, Lhoi;

    invoke-direct {p1, v0}, Lhoi;-><init>(Lhol;)V

    iput-object p1, v0, Lhol;->F:Ljwj;

    iget-object p1, p0, Lhos;->R:Lhpu;

    iget-object v0, p0, Lhos;->n:Ldhi;

    sget-object v1, Ldil;->d:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lhos;->o:Lhof;

    iget-object v1, v0, Lhof;->t:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, v0, Lhof;->z:Lhpu;

    iget-object p1, v0, Lhof;->e:Lnnp;

    iget-object v2, v0, Lhof;->u:Ljwb;

    invoke-interface {v2}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lnnp;->b(D)V

    iget-object p1, v0, Lhof;->v:Ljwb;

    invoke-interface {p1}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lhpt;

    iput-object p1, v0, Lhof;->A:Lhpt;

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    iget-object v0, p0, Lhos;->m:Lhno;

    iput-object p1, v0, Lhno;->H:Lhpu;

    iget-object p1, v0, Lhno;->f:Lnnp;

    iget-object v0, v0, Lhno;->y:Ljwb;

    invoke-interface {v0}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lnnp;->b(D)V

    :goto_1
    iget-object p1, p0, Lhos;->ab:Litm;

    invoke-interface {p1}, Litm;->s()V

    return-void

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No camcorderCaptureRate found."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method final c()V
    .locals 17

    move-object/from16 v1, p0

    iget-object v0, v1, Lhos;->Y:Lkbc;

    const-string v2, "Cheetah-OpenCameraAndStartPreview"

    invoke-interface {v0, v2}, Lkbc;->a(Ljava/lang/String;)Lkbf;

    move-result-object v0

    iget-object v2, v1, Lhos;->B:Lhol;

    invoke-virtual {v2}, Lhol;->e()V

    new-instance v3, Ljuf;

    invoke-direct {v3}, Ljuf;-><init>()V

    iput-object v3, v2, Lhol;->O:Ljuf;

    iget-object v3, v2, Lhol;->ai:Lfvx;

    invoke-virtual {v3}, Lfvx;->b()Lkll;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, v2, Lhol;->G:Lkll;

    iget-object v3, v2, Lhol;->ai:Lfvx;

    invoke-virtual {v3}, Lfvx;->c()Lkll;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, v2, Lhol;->H:Lkll;

    iget-object v3, v2, Lhol;->g:Ldbf;

    invoke-virtual {v3}, Ldbf;->e()Lmqp;

    move-result-object v3

    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkli;

    iput-object v3, v2, Lhol;->I:Lkli;

    iget-object v3, v2, Lhol;->I:Lkli;

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {v3, v4}, Lkli;->n(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lhol;->Z:I

    iget-object v3, v2, Lhol;->d:Ldhi;

    sget-object v4, Ldho;->ag:Ldhj;

    invoke-interface {v3, v4}, Ldhi;->l(Ldhj;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Lgdk;

    iget v5, v2, Lhol;->p:F

    iget-object v6, v2, Lhol;->q:Ljvs;

    iget-object v7, v2, Lhol;->I:Lkli;

    iget-object v8, v2, Lhol;->d:Ldhi;

    iget-object v9, v2, Lhol;->h:Lklj;

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Lgdk;-><init>(FLjvs;Lkli;Ldhi;Lklj;)V

    iput-object v3, v2, Lhol;->P:Lgdk;

    goto :goto_0

    :cond_0
    new-instance v3, Lgdk;

    iget v11, v2, Lhol;->p:F

    iget-object v12, v2, Lhol;->q:Ljvs;

    iget-object v13, v2, Lhol;->I:Lkli;

    iget-object v4, v2, Lhol;->K:Ljwu;

    invoke-virtual {v4}, Ljwu;->b()Lkaf;

    move-result-object v4

    invoke-static {v4}, Ljzr;->j(Lkaf;)Ljzr;

    move-result-object v14

    iget-object v15, v2, Lhol;->d:Ldhi;

    iget-object v4, v2, Lhol;->h:Lklj;

    move-object v10, v3

    move-object/from16 v16, v4

    invoke-direct/range {v10 .. v16}, Lgdk;-><init>(FLjvs;Lkli;Ljzr;Ldhi;Lklj;)V

    iput-object v3, v2, Lhol;->P:Lgdk;

    :goto_0
    iget-object v3, v2, Lhol;->K:Ljwu;

    invoke-virtual {v2, v3}, Lhol;->b(Ljwu;)Lkaf;

    move-result-object v3

    iget-object v4, v2, Lhol;->P:Lgdk;

    iget-object v5, v2, Lhol;->v:Lkbc;

    const-string v6, "Cheetah-FrameServerStart"

    invoke-interface {v5, v6}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v5, v2, Lhol;->A:Ljvs;

    invoke-interface {v5}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/16 v6, 0x22

    const/4 v7, 0x7

    if-eqz v5, :cond_1

    invoke-static {}, Lkfl;->a()Lkfk;

    move-result-object v5

    sget-object v8, Lkfm;->a:Lkfm;

    invoke-virtual {v5, v8}, Lkfk;->k(Lkfm;)V

    iget-object v8, v2, Lhol;->H:Lkll;

    invoke-virtual {v5, v8}, Lkfk;->b(Lkll;)V

    invoke-virtual {v5, v3}, Lkfk;->i(Lkaf;)V

    invoke-virtual {v5, v6}, Lkfk;->h(I)V

    invoke-virtual {v5, v7}, Lkfk;->c(I)V

    const-wide/16 v8, 0x100

    invoke-virtual {v5, v8, v9}, Lkfk;->l(J)V

    invoke-virtual {v5}, Lkfk;->a()Lkfl;

    move-result-object v3

    goto :goto_1

    :cond_1
    iget-object v5, v2, Lhol;->H:Lkll;

    invoke-static {v5, v3}, Lkkk;->c(Lkll;Lkaf;)Lkfl;

    move-result-object v3

    :goto_1
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v9}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v9}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v8, v2, Lhol;->am:Ldja;

    invoke-virtual {v8}, Ldja;->p()Z

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v8, :cond_2

    invoke-static {v10}, Ljhp;->am(I)Lkfa;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_OIS_DATA_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v8, v11}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-static {v9}, Ljhp;->am(I)Lkfa;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_2
    iget-object v8, v2, Lhol;->d:Ldhi;

    sget-object v11, Ldil;->d:Ldhj;

    invoke-interface {v8, v11}, Ldhi;->l(Ldhj;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, v2, Lhol;->am:Ldja;

    invoke-virtual {v8}, Ldja;->o()Z

    move-result v8

    invoke-static {v8}, Ljhp;->an(I)Lkfa;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v8, Liuz;->f:Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz v8, :cond_3

    sget-object v8, Liuz;->f:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-static {v8, v11}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object v8

    invoke-static {v8}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v8

    goto :goto_3

    :cond_3
    sget-object v8, Lmpx;->a:Lmpx;

    :goto_3
    invoke-virtual {v8}, Lmqp;->g()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {v8}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkfa;

    invoke-interface {v5, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_4
    invoke-static {v9}, Ljhp;->an(I)Lkfa;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v8, Liuv;->j:Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz v8, :cond_5

    sget-object v8, Liuv;->j:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v8, v11}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object v8

    invoke-static {v8}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v8

    goto :goto_4

    :cond_5
    sget-object v8, Lmpx;->a:Lmpx;

    :goto_4
    invoke-virtual {v8}, Lmqp;->g()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {v8}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkfa;

    invoke-interface {v5, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_5
    invoke-virtual {v4}, Ljwh;->bm()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgdj;

    iget-object v8, v8, Lgdj;->a:Landroid/graphics/Rect;

    invoke-virtual {v4}, Ljwh;->bm()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgdj;

    iget v4, v4, Lgdj;->c:F

    invoke-static {v8, v4}, Ljhp;->ao(Landroid/graphics/Rect;F)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    sget-object v4, Lika;->n:Lika;

    iget-object v8, v2, Lhol;->I:Lkli;

    invoke-static {v4, v8}, Lgky;->c(Lika;Lkli;)Lmwn;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v4, v2, Lhol;->d:Ldhi;

    sget-object v8, Ldil;->d:Ldhj;

    invoke-interface {v4, v8}, Ldhi;->l(Ldhj;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {}, Lkfl;->a()Lkfk;

    move-result-object v4

    iget-object v8, v2, Lhol;->K:Ljwu;

    invoke-virtual {v8}, Ljwu;->b()Lkaf;

    move-result-object v8

    invoke-virtual {v4, v8}, Lkfk;->i(Lkaf;)V

    iget-object v8, v2, Lhol;->H:Lkll;

    invoke-virtual {v4, v8}, Lkfk;->b(Lkll;)V

    invoke-virtual {v4, v6}, Lkfk;->h(I)V

    const/16 v6, 0x14

    invoke-virtual {v4, v6}, Lkfk;->c(I)V

    sget-object v6, Lkfm;->a:Lkfm;

    invoke-virtual {v4, v6}, Lkfk;->k(Lkfm;)V

    const-wide/32 v11, 0x10000

    invoke-virtual {v4, v11, v12}, Lkfk;->l(J)V

    invoke-virtual {v4, v10}, Lkfk;->e(Z)V

    invoke-virtual {v4}, Lkfk;->a()Lkfl;

    move-result-object v4

    iget-object v6, v2, Lhol;->I:Lkli;

    iget-object v8, v2, Lhol;->J:Ljws;

    invoke-static {v6, v8, v5}, Ljhp;->al(Lkli;Ljws;Ljava/util/Set;)Lkep;

    move-result-object v6

    iget-object v8, v2, Lhol;->G:Lkll;

    invoke-virtual {v6, v8}, Lkep;->f(Lkll;)V

    invoke-virtual {v6, v4}, Lkep;->d(Lkfl;)V

    invoke-virtual {v6, v3}, Lkep;->d(Lkfl;)V

    iget-object v8, v2, Lhol;->aj:Lkfg;

    invoke-virtual {v6, v8}, Lkep;->k(Lkfg;)V

    invoke-virtual {v6}, Lkep;->a()Lkeq;

    move-result-object v6

    goto :goto_6

    :cond_7
    invoke-static {}, Lkfl;->a()Lkfk;

    move-result-object v4

    iget-object v6, v2, Lhol;->K:Ljwu;

    invoke-virtual {v6}, Ljwu;->b()Lkaf;

    move-result-object v6

    invoke-virtual {v4, v6}, Lkfk;->i(Lkaf;)V

    iget-object v6, v2, Lhol;->H:Lkll;

    invoke-virtual {v4, v6}, Lkfk;->b(Lkll;)V

    const/16 v6, 0x23

    invoke-virtual {v4, v6}, Lkfk;->h(I)V

    const/16 v8, 0xf

    invoke-virtual {v4, v8}, Lkfk;->c(I)V

    sget-object v8, Lkfm;->a:Lkfm;

    invoke-virtual {v4, v8}, Lkfk;->k(Lkfm;)V

    invoke-virtual {v4, v10}, Lkfk;->e(Z)V

    invoke-virtual {v4}, Lkfk;->a()Lkfl;

    move-result-object v4

    iget-object v8, v2, Lhol;->I:Lkli;

    invoke-interface {v8}, Lkli;->h()Landroid/graphics/Rect;

    move-result-object v8

    invoke-static {}, Lkfl;->a()Lkfk;

    move-result-object v11

    new-instance v12, Lkaf;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v13

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-direct {v12, v13, v8}, Lkaf;-><init>(II)V

    invoke-virtual {v11, v12}, Lkfk;->i(Lkaf;)V

    iget-object v8, v2, Lhol;->H:Lkll;

    invoke-virtual {v11, v8}, Lkfk;->b(Lkll;)V

    invoke-virtual {v11, v6}, Lkfk;->h(I)V

    invoke-virtual {v11, v10}, Lkfk;->c(I)V

    sget-object v6, Lkfm;->a:Lkfm;

    invoke-virtual {v11, v6}, Lkfk;->k(Lkfm;)V

    invoke-virtual {v11}, Lkfk;->a()Lkfl;

    move-result-object v6

    iget-object v8, v2, Lhol;->I:Lkli;

    iget-object v11, v2, Lhol;->J:Ljws;

    invoke-static {v8, v11, v5}, Ljhp;->al(Lkli;Ljws;Ljava/util/Set;)Lkep;

    move-result-object v8

    iget-object v11, v2, Lhol;->G:Lkll;

    invoke-virtual {v8, v11}, Lkep;->f(Lkll;)V

    invoke-virtual {v8, v4}, Lkep;->d(Lkfl;)V

    invoke-virtual {v8, v3}, Lkep;->d(Lkfl;)V

    invoke-virtual {v8, v6}, Lkep;->d(Lkfl;)V

    iget-object v6, v2, Lhol;->aj:Lkfg;

    invoke-virtual {v8, v6}, Lkep;->k(Lkfg;)V

    invoke-virtual {v8}, Lkep;->a()Lkeq;

    move-result-object v6

    :goto_6
    iget-object v8, v2, Lhol;->ac:Lkha;

    invoke-virtual {v8, v6}, Lkha;->a(Lkeq;)Lken;

    move-result-object v6

    iget-object v8, v2, Lhol;->O:Ljuf;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8, v6}, Ljuf;->d(Lkad;)V

    iput-object v6, v2, Lhol;->ab:Lken;

    invoke-interface {v6, v5}, Lken;->j(Ljava/util/Set;)V

    invoke-interface {v6}, Lken;->c()Lkeo;

    move-result-object v5

    invoke-interface {v5, v3}, Lkeo;->b(Lkfl;)Lkfj;

    move-result-object v3

    iput-object v3, v2, Lhol;->R:Lkfj;

    invoke-interface {v6}, Lken;->c()Lkeo;

    move-result-object v5

    invoke-interface {v5, v4}, Lkeo;->b(Lkfl;)Lkfj;

    move-result-object v4

    iget-object v5, v2, Lhol;->m:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iput-object v4, v2, Lhol;->V:Lkfj;

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v6, v3}, Lken;->s(Lkfj;)Lkgq;

    move-result-object v3

    iput-object v3, v2, Lhol;->ad:Lkgq;

    invoke-interface {v6, v4}, Lken;->s(Lkfj;)Lkgq;

    move-result-object v3

    iput-object v3, v2, Lhol;->ae:Lkgq;

    iget-object v3, v2, Lhol;->O:Ljuf;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v6}, Ljuf;->d(Lkad;)V

    iget-object v3, v2, Lhol;->v:Lkbc;

    invoke-interface {v3}, Lkbc;->f()V

    iget-object v3, v2, Lhol;->ab:Lken;

    if-eqz v3, :cond_8

    iget-object v4, v2, Lhol;->ad:Lkgq;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v3, v4, v10}, Lken;->r(Lkgq;I)Lkef;

    move-result-object v3

    iput-object v3, v2, Lhol;->N:Lkef;

    iget-object v3, v2, Lhol;->O:Ljuf;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v2, Lhol;->N:Lkef;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljuf;->d(Lkad;)V

    new-instance v3, Ldsp;

    invoke-direct {v3, v2, v7}, Ldsp;-><init>(Lhol;I)V

    iput-object v3, v2, Lhol;->aa:Lkee;

    iget-object v3, v2, Lhol;->N:Lkef;

    invoke-static {v3}, Llkj;->C(Ljava/lang/Object;)V

    iget-object v4, v2, Lhol;->aa:Lkee;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v3, v4}, Lkef;->k(Lkee;)V

    :cond_8
    iget-object v3, v2, Lhol;->d:Ldhi;

    sget-object v4, Ldil;->d:Ldhj;

    invoke-interface {v3, v4}, Ldhi;->l(Ldhj;)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v2}, Lhol;->d()V

    :cond_9
    iget-object v3, v2, Lhol;->ab:Lken;

    if-nez v3, :cond_a

    goto :goto_8

    :cond_a
    iget-object v4, v2, Lhol;->d:Ldhi;

    sget-object v5, Ldho;->ag:Ldhj;

    invoke-interface {v4, v5}, Ldhi;->l(Ldhj;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, v2, Lhol;->b:Lkoe;

    iget-boolean v4, v4, Lkoe;->d:Z

    iget-object v4, v2, Lhol;->O:Ljuf;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v2, Lhol;->q:Ljvs;

    new-instance v6, Lglh;

    const/16 v8, 0xb

    invoke-direct {v6, v2, v3, v8}, Lglh;-><init>(Lhol;Lken;I)V

    iget-object v3, v2, Lhol;->l:Ljuh;

    invoke-interface {v5, v6, v3}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljuf;->d(Lkad;)V

    goto :goto_7

    :cond_b
    iget-object v4, v2, Lhol;->O:Ljuf;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v2, Lhol;->P:Lgdk;

    new-instance v6, Lhml;

    invoke-direct {v6, v3, v7}, Lhml;-><init>(Lken;I)V

    sget-object v3, Lnnv;->a:Lnnv;

    invoke-virtual {v5, v6, v3}, Ljwh;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljuf;->d(Lkad;)V

    :goto_7
    iget-object v3, v2, Lhol;->d:Ldhi;

    sget-object v4, Ldho;->cc:Ldhj;

    invoke-interface {v3, v4}, Ldhi;->l(Ldhj;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, v2, Lhol;->d:Ldhi;

    invoke-interface {v3}, Ldhi;->e()V

    :cond_c
    sget-object v3, Liva;->d:Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz v3, :cond_d

    iget-object v3, v2, Lhol;->ab:Lken;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Liva;->d:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v5, Lhmo;->b:Ljava/lang/Byte;

    invoke-static {v4, v5}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object v4

    invoke-interface {v3, v4}, Lken;->h(Lkfa;)V

    :cond_d
    :goto_8
    iget-object v3, v2, Lhol;->M:Lklv;

    iget-object v4, v2, Lhol;->g:Ldbf;

    invoke-virtual {v4, v3}, Ldbf;->g(Lklv;)V

    iget-object v3, v2, Lhol;->w:Litm;

    iget-object v4, v2, Lhol;->W:Lhpu;

    iget v4, v4, Lhpu;->h:I

    const/16 v5, 0x1e

    if-ne v4, v5, :cond_11

    sget-object v4, Ljws;->c:Ljws;

    invoke-static {v4}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v4

    iget-object v5, v2, Lhol;->K:Ljwu;

    invoke-virtual {v5}, Ljwu;->d()Z

    move-result v5

    invoke-interface {v3, v4, v5}, Litm;->O(Lmqp;Z)V

    iget-object v3, v2, Lhol;->w:Litm;

    invoke-interface {v3}, Litm;->x()V

    iget-object v3, v2, Lhol;->t:Lhny;

    iget-object v4, v2, Lhol;->I:Lkli;

    iget-object v5, v2, Lhol;->ab:Lken;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v2, Lhol;->O:Ljuf;

    iget-object v2, v2, Lhol;->P:Lgdk;

    iget-object v8, v3, Lhny;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v8, v3, Lhny;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v8, v3, Lhny;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput-object v4, v3, Lhny;->n:Lkli;

    iput-object v5, v3, Lhny;->o:Lken;

    iput-object v2, v3, Lhny;->q:Lgdk;

    iput-object v6, v3, Lhny;->p:Ljuf;

    invoke-virtual {v3, v10, v10}, Lhny;->b(ZZ)V

    invoke-interface {v5}, Lken;->b()Lkdz;

    move-result-object v2

    iget-object v4, v3, Lhny;->l:Lfui;

    iget-object v4, v4, Lfui;->a:Ljvs;

    invoke-interface {v4}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    move-object v8, v2

    check-cast v8, Lkfr;

    iput-object v4, v8, Lkfr;->f:Ljava/lang/Integer;

    invoke-interface {v2}, Lkdz;->a()Lkea;

    move-result-object v2

    invoke-interface {v5, v2}, Lken;->n(Lkea;)V

    iget-object v2, v3, Lhny;->v:Ldqx;

    iget-object v2, v2, Ldqx;->c:Ljava/lang/Object;

    new-instance v4, Lhml;

    const/4 v8, 0x5

    invoke-direct {v4, v5, v8}, Lhml;-><init>(Lken;I)V

    sget-object v8, Lnnv;->a:Lnnv;

    invoke-interface {v2, v4, v8}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljuf;->d(Lkad;)V

    iget-object v2, v3, Lhny;->h:Lmqp;

    invoke-virtual {v2}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, v3, Lhny;->h:Lmqp;

    invoke-virtual {v2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lglm;

    invoke-interface {v2}, Lglm;->b()Ljwb;

    move-result-object v2

    new-instance v3, Lhml;

    const/4 v4, 0x6

    invoke-direct {v3, v5, v4}, Lhml;-><init>(Lken;I)V

    sget-object v4, Lnnv;->a:Lnnv;

    invoke-interface {v2, v3, v4}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljuf;->d(Lkad;)V

    :cond_e
    iget-object v2, v1, Lhos;->g:Ldbf;

    iget-object v3, v1, Lhos;->n:Ldhi;

    iget-object v4, v1, Lhos;->U:Ldja;

    iget-object v5, v1, Lhos;->S:Ldqx;

    invoke-static {v2, v3, v4, v5}, Ljhp;->ay(Ldbf;Ldhi;Ldja;Ldqx;)Ljwu;

    move-result-object v2

    invoke-virtual {v2}, Ljwu;->b()Lkaf;

    move-result-object v3

    invoke-static {v3}, Ljzr;->j(Lkaf;)Ljzr;

    move-result-object v3

    iget-object v4, v1, Lhos;->X:Ljwb;

    invoke-interface {v4, v2}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v4, v1, Lhos;->K:Lklv;

    iget-object v5, v1, Lhos;->B:Lhol;

    invoke-virtual {v5, v2}, Lhol;->b(Ljwu;)Lkaf;

    move-result-object v2

    invoke-static {v4, v2, v3}, Lihb;->a(Lklv;Lkaf;Ljzr;)Lihb;

    move-result-object v2

    iget-object v3, v1, Lhos;->W:Ljvs;

    invoke-interface {v3}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, v1, Lhos;->aa:Lmqp;

    sget-object v4, Lhop;->a:Lhop;

    invoke-virtual {v3, v4}, Lmqp;->b(Lmqi;)Lmqp;

    move-result-object v3

    iput-object v3, v1, Lhos;->M:Lmqp;

    :cond_f
    iget-object v3, v1, Lhos;->g:Ldbf;

    invoke-virtual {v3}, Ldbf;->e()Lmqp;

    move-result-object v3

    invoke-virtual {v3}, Lmqp;->g()Z

    move-result v4

    if-eqz v4, :cond_10

    iget-object v4, v1, Lhos;->Z:Ligx;

    iget-object v5, v1, Lhos;->M:Lmqp;

    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfuz;

    invoke-virtual {v3}, Lklw;->f()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v5, v3}, Ligx;->f(Lihb;Lmqp;Ljava/lang/Integer;)Lnou;

    move-result-object v2

    goto :goto_9

    :cond_10
    iget-object v3, v1, Lhos;->Z:Ligx;

    iget-object v4, v1, Lhos;->M:Lmqp;

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, v5}, Ligx;->f(Lihb;Lmqp;Ljava/lang/Integer;)Lnou;

    move-result-object v2

    :goto_9
    new-instance v3, Lcoi;

    invoke-direct {v3, v1, v0, v7}, Lcoi;-><init>(Lhos;Lkbf;I)V

    sget-object v0, Lnnv;->a:Lnnv;

    invoke-static {v2, v3, v0}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    return-void

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unsupported capture frame rate ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " and encoding frame rate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final d()V
    .locals 5

    iget-object v0, p0, Lhos;->n:Ldhi;

    sget-object v1, Ldil;->g:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lhos;->ac:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lhos;->ac:Ljava/util/concurrent/ScheduledFuture;

    :cond_1
    iget-object v0, p0, Lhos;->v:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lhma;

    const/16 v3, 0x14

    invoke-direct {v2, p0, v3}, Lhma;-><init>(Lhos;I)V

    iget-object v3, p0, Lhos;->j:Ljvk;

    iget-object v3, v3, Ljvk;->d:Ljava/lang/Object;

    check-cast v3, Lhnw;

    sget-object v4, Lhnw;->h:Lhnw;

    invoke-virtual {v3, v4}, Lhnw;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eq v1, v3, :cond_2

    const-wide/16 v3, 0x2

    goto :goto_0

    :cond_2
    const-wide/16 v3, 0xf

    :goto_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v4, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lhos;->ac:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public final e()V
    .locals 5

    iget-object v0, p0, Lhos;->j:Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    check-cast v0, Lhnw;

    sget-object v1, Lhnw;->e:Lhnw;

    invoke-virtual {v0, v1}, Lhnw;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lhos;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lhos;->j:Ljvk;

    sget-object v1, Lhnw;->f:Lhnw;

    invoke-virtual {v0, v1}, Ljvk;->bn(Ljava/lang/Object;)V

    iget-object v0, p0, Lhos;->J:Lcsd;

    invoke-virtual {v0}, Lcsd;->c()V

    iget-object v0, p0, Lhos;->C:Lhpg;

    invoke-virtual {v0}, Lhpg;->ck()V

    iget-object v0, p0, Lhos;->p:Ljuh;

    iget-object v1, p0, Lhos;->w:Liec;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lhon;

    const/16 v3, 0xe

    invoke-direct {v2, v1, v3}, Lhon;-><init>(Liec;I)V

    invoke-virtual {v0, v2}, Ljuh;->c(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lhos;->h:Lhgy;

    const v1, 0x7f13002f

    invoke-interface {v0, v1}, Lhgy;->b(I)V

    iget-object v0, p0, Lhos;->w:Liec;

    invoke-interface {v0}, Liec;->e()V

    iget-object v0, p0, Lhos;->ah:Ljew;

    invoke-virtual {v0}, Ljew;->z()V

    iget-object v0, p0, Lhos;->B:Lhol;

    iget-object v1, v0, Lhol;->Q:Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lhol;->al:Ljyx;

    invoke-static {}, Landroid/media/MediaCodec;->createPersistentInputSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-static {v1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v1

    iput-object v1, v0, Lhol;->Q:Lmqp;

    :cond_0
    iget-object v1, v0, Lhol;->T:Lctd;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lctd;->close()V

    const/4 v1, 0x0

    iput-object v1, v0, Lhol;->T:Lctd;

    :cond_1
    iget-object v1, v0, Lhol;->an:Lcvm;

    sget-object v2, Lkqi;->e:Lkqi;

    invoke-virtual {v1, v2}, Lcvm;->i(Lkqi;)Lctd;

    move-result-object v1

    iput-object v1, v0, Lhol;->T:Lctd;

    iget-object v1, v0, Lhol;->u:Lhof;

    invoke-virtual {v1}, Lhof;->m()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lhol;->an:Lcvm;

    sget-object v2, Lkqi;->e:Lkqi;

    invoke-virtual {v1, v2}, Lcvm;->i(Lkqi;)Lctd;

    move-result-object v1

    iput-object v1, v0, Lhol;->U:Lctd;

    :cond_2
    iget-object v1, v0, Lhol;->n:Lgft;

    invoke-interface {v1}, Lgft;->c()Lkab;

    move-result-object v1

    iget-object v2, v0, Lhol;->K:Ljwu;

    invoke-static {v2}, Ljxi;->a(Ljwu;)Ljxi;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Lhol;->ak:Ljyx;

    iget-object v3, v0, Lhol;->H:Lkll;

    invoke-static {v3, v2}, Ljyx;->g(Lkll;Ljxi;)Ljxl;

    move-result-object v2

    new-instance v3, Ljxp;

    iget-object v4, v0, Lhol;->K:Ljwu;

    invoke-direct {v3, v4}, Ljxp;-><init>(Ljwu;)V

    iput-object v2, v3, Ljxp;->j:Ljxl;

    iget-object v2, v0, Lhol;->am:Ldja;

    invoke-virtual {v2}, Ldja;->n()Z

    move-result v2

    iput-boolean v2, v3, Ljxp;->c:Z

    iget-object v2, v0, Lhol;->T:Lctd;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lhog;

    invoke-direct {v4, v0, v3, v2, v1}, Lhog;-><init>(Lhol;Ljxp;Lctd;Lkab;)V

    iget-object v1, v0, Lhol;->i:Ljava/util/concurrent/Executor;

    invoke-static {v4, v1}, Lnsy;->G(Lnnn;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v1

    new-instance v2, Lhma;

    const/16 v3, 0x11

    invoke-direct {v2, v0, v3}, Lhma;-><init>(Lhol;I)V

    iget-object v0, v0, Lhol;->l:Ljuh;

    invoke-interface {v1, v2, v0}, Lnou;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object v0, p0, Lhos;->D:Lhoz;

    iget-object v1, v0, Lhoz;->h:Lhlu;

    new-instance v2, Lhox;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lhox;-><init>(Lhoz;I)V

    invoke-virtual {v1, v2}, Lhlu;->b(Lhlt;)V

    iget-object v0, p0, Lhos;->D:Lhoz;

    iget-object v1, v0, Lhoz;->c:Lcgy;

    invoke-interface {v1}, Lcgy;->s()Landroid/content/Context;

    move-result-object v1

    iget-object v0, v0, Lhoz;->b:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :cond_3
    sget-object v0, Lhos;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v1, "Device status is not allowed to start recording"

    const/16 v2, 0xf0a

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void

    :cond_4
    sget-object v0, Lhos;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Recording state is not IDLE. Ignore start recording"

    const/16 v2, 0xf0b

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void
.end method

.method public final f(Z)V
    .locals 6

    iget-object v0, p0, Lhos;->n:Ldhi;

    sget-object v1, Ldil;->g:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lhos;->ac:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lhos;->ac:Ljava/util/concurrent/ScheduledFuture;

    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lhos;->N:D

    iput-wide v0, p0, Lhos;->O:D

    iget-object v2, p0, Lhos;->b:Ljava/lang/Object;

    monitor-enter v2

    const-wide/16 v3, 0x0

    :try_start_0
    iput-wide v3, p0, Lhos;->d:J

    iget-object v3, p0, Lhos;->c:[D

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-static {v3, v4, v5, v0, v1}, Ljava/util/Arrays;->fill([DIID)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lhos;->A:Lhny;

    invoke-virtual {p1, v4}, Lhny;->d(Z)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final g(Z)V
    .locals 8

    iget-object v0, p0, Lhos;->j:Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    check-cast v0, Lhnw;

    invoke-static {v0}, Lhnw;->a(Lhnw;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lhos;->j:Ljvk;

    iget-object p1, p1, Ljvk;->d:Ljava/lang/Object;

    return-void

    :cond_0
    iget-object v0, p0, Lhos;->j:Ljvk;

    sget-object v1, Lhnw;->i:Lhnw;

    invoke-virtual {v0, v1}, Ljvk;->bn(Ljava/lang/Object;)V

    iget-object v0, p0, Lhos;->B:Lhol;

    iget-object v1, v0, Lhol;->D:Ljava/util/concurrent/ScheduledFuture;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    iget-object p1, v0, Lhol;->d:Ldhi;

    sget-object v2, Ldil;->d:Ldhj;

    invoke-interface {p1, v2}, Ldhi;->l(Ldhj;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lhol;->f()V

    :cond_1
    invoke-static {}, Lnph;->g()Lnph;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Codec error"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lnph;->a(Ljava/lang/Throwable;)Z

    goto :goto_1

    :cond_2
    iget-object p1, v0, Lhol;->d:Ldhi;

    sget-object v3, Ldil;->d:Ldhj;

    invoke-interface {p1, v3}, Ldhi;->l(Ldhj;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, v0, Lhol;->u:Lhof;

    iget-object v3, p1, Lhof;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v3, p1, Lhof;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v2, p1, Lhof;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p1}, Lhof;->k()V

    iget-object v2, p1, Lhof;->t:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p1, Lhof;->n:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    cmp-long v7, v3, v5

    if-lez v7, :cond_3

    iget-object p1, p1, Lhof;->B:Lklb;

    invoke-static {p1}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object p1

    monitor-exit v2

    goto :goto_0

    :cond_3
    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v3

    iput-object v3, p1, Lhof;->y:Lnph;

    iget-object p1, p1, Lhof;->y:Lnph;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    new-instance v2, Lhga;

    const/4 v3, 0x4

    invoke-direct {v2, v0, v3}, Lhga;-><init>(Lhol;I)V

    sget-object v0, Lnnv;->a:Lnnv;

    invoke-static {p1, v2, v0}, Lnnf;->i(Lnou;Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object p1

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_4
    iget-object p1, v0, Lhol;->j:Lhno;

    iget-object v2, p1, Lhno;->I:Ljava/util/Timer;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    :cond_5
    iget-object v2, p1, Lhno;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v2

    iput-object v2, p1, Lhno;->G:Lnph;

    iget-object p1, p1, Lhno;->G:Lnph;

    new-instance v2, Lhga;

    const/4 v3, 0x3

    invoke-direct {v2, v0, v3}, Lhga;-><init>(Lhol;I)V

    sget-object v0, Lnnv;->a:Lnnv;

    invoke-static {p1, v2, v0}, Lnnf;->i(Lnou;Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lhos;->L:Lnou;

    iget-object p1, p0, Lhos;->D:Lhoz;

    iget-object p1, p1, Lhoz;->h:Lhlu;

    invoke-virtual {p1}, Lhlu;->a()V

    iget-object p1, p0, Lhos;->D:Lhoz;

    iget-object v0, p1, Lhoz;->c:Lcgy;

    invoke-interface {v0}, Lcgy;->s()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p1, Lhoz;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object p1, p0, Lhos;->w:Liec;

    invoke-interface {p1}, Liec;->f()V

    iget-object p1, p0, Lhos;->ah:Ljew;

    invoke-virtual {p1}, Ljew;->A()V

    invoke-virtual {p0, v1}, Lhos;->f(Z)V

    iget-object p1, p0, Lhos;->p:Ljuh;

    new-instance v0, Lhon;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Lhon;-><init>(Lhos;I)V

    invoke-virtual {p1, v0}, Ljuh;->c(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lhos;->h:Lhgy;

    const v0, 0x7f130030

    invoke-interface {p1, v0}, Lhgy;->b(I)V

    return-void
.end method

.method final h()Z
    .locals 4

    iget-object v0, p0, Lhos;->j:Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    check-cast v0, Lhnw;

    invoke-static {v0}, Lhnw;->a(Lhnw;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lhos;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v2, "stopRecordingOnCriticalState()"

    const/16 v3, 0xf13

    invoke-static {v0, v2, v3}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    invoke-virtual {p0, v1}, Lhos;->g(Z)V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method final i(Z)V
    .locals 2

    iget-object v0, p0, Lhos;->j:Ljvk;

    sget-object v1, Lhnw;->c:Lhnw;

    invoke-virtual {v0, v1}, Ljvk;->bn(Ljava/lang/Object;)V

    iget-object v0, p0, Lhos;->B:Lhol;

    invoke-virtual {v0}, Lhol;->e()V

    iget-object v0, p0, Lhos;->C:Lhpg;

    invoke-virtual {v0}, Lhpg;->g()V

    iget-object v0, p0, Lhos;->n:Ldhi;

    sget-object v1, Ldil;->d:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lhos;->m:Lhno;

    invoke-virtual {v0}, Lhno;->e()V

    :cond_0
    iget-object v0, p0, Lhos;->g:Ldbf;

    invoke-virtual {v0}, Ldbf;->d()Lklv;

    move-result-object v0

    invoke-virtual {p0, v0}, Lhos;->b(Lklv;)V

    invoke-virtual {p0}, Lhos;->c()V

    iget-object v0, p0, Lhos;->B:Lhol;

    invoke-virtual {v0}, Lhol;->g()V

    iget-object v0, p0, Lhos;->ab:Litm;

    move-object v1, v0

    check-cast v1, Lisi;

    iget-boolean v1, v1, Lisi;->S:Z

    if-eqz v1, :cond_1

    invoke-interface {v0}, Litm;->p()V

    :cond_1
    if-eqz p1, :cond_2

    iget-object p1, p0, Lhos;->n:Ldhi;

    sget-object v0, Ldho;->as:Ldhj;

    invoke-interface {p1, v0}, Ldhi;->l(Ldhj;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lhos;->ab:Litm;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Litm;->B(Z)V

    :cond_2
    return-void
.end method
