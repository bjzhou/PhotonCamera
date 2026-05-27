.class public final Lhno;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final a:Lnak;


# instance fields
.field public final A:Landroid/hardware/SensorEventListener;

.field public final B:Landroid/hardware/Sensor;

.field public C:Lhpy;

.field public D:Lhps;

.field public E:Lhpw;

.field public F:Lmqp;

.field public G:Lnph;

.field public H:Lhpu;

.field public I:Ljava/util/Timer;

.field public J:Ljwo;

.field public final K:Lemq;

.field public final L:Ldqx;

.field public final M:Ldja;

.field public N:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

.field private final O:J

.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final f:Lnnp;

.field public final g:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final h:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final i:Ljava/util/concurrent/atomic/AtomicLong;

.field public final j:Ljava/util/concurrent/atomic/AtomicLong;

.field public final k:Ljava/util/concurrent/atomic/AtomicLong;

.field public final l:Ljava/util/concurrent/atomic/AtomicLong;

.field public final m:Ljava/util/concurrent/atomic/AtomicLong;

.field public final n:Ljava/util/concurrent/atomic/AtomicLong;

.field public final o:Ljava/util/concurrent/atomic/AtomicLong;

.field public final p:Ljava/util/concurrent/atomic/AtomicLong;

.field public final q:Ljava/util/concurrent/atomic/AtomicLong;

.field public final r:Ljava/util/concurrent/atomic/AtomicLong;

.field public final s:Ljava/util/concurrent/atomic/AtomicLong;

.field public final t:Ljava/util/concurrent/atomic/AtomicLong;

.field public final u:Ldbf;

.field public final v:Ldhi;

.field public final w:Ljava/lang/Object;

.field public final x:Loiw;

.field public final y:Ljwb;

.field public final z:Landroid/hardware/SensorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/timelapse/FrameSelector"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lhno;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lcvr;Ldbf;Loiw;Ldhi;Ldja;Ldqx;Lemq;Ljwb;[B[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p9, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p10, 0x0

    invoke-direct {p9, p10}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p9, p0, Lhno;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p9, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p9, p10}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p9, p0, Lhno;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p9, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p9, p10}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p9, p0, Lhno;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p9, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p11, 0x1

    invoke-direct {p9, p11}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p9, p0, Lhno;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p9, Lnnp;

    const/4 p12, 0x0

    invoke-direct {p9, p12}, Lnnp;-><init>([B)V

    iput-object p9, p0, Lhno;->f:Lnnp;

    new-instance p9, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p9, p10}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p9, p0, Lhno;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p9, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p9, p10}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p9, p0, Lhno;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p9, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 p12, 0x0

    invoke-direct {p9, p12, p13}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p9, p0, Lhno;->i:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p9, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p9, p12, p13}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p9, p0, Lhno;->j:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p9, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p9, p12, p13}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p9, p0, Lhno;->k:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p9, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p9, p12, p13}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p9, p0, Lhno;->l:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p9, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p9, p12, p13}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p9, p0, Lhno;->m:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p9, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p9, p12, p13}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p9, p0, Lhno;->n:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p9, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p9, p12, p13}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p9, p0, Lhno;->o:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p9, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p9, p12, p13}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p9, p0, Lhno;->p:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p9, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p9, p12, p13}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p9, p0, Lhno;->q:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p9, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p9, p12, p13}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p9, p0, Lhno;->r:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p9, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p9, p12, p13}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p9, p0, Lhno;->s:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p9, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p9, p12, p13}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p9, p0, Lhno;->t:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p9, Ljava/lang/Object;

    invoke-direct {p9}, Ljava/lang/Object;-><init>()V

    iput-object p9, p0, Lhno;->w:Ljava/lang/Object;

    sget-object p9, Lmpx;->a:Lmpx;

    iput-object p9, p0, Lhno;->F:Lmqp;

    sget-object p9, Ldil;->b:Ldhj;

    invoke-interface {p4, p9}, Ldhi;->l(Ldhj;)Z

    move-result p9

    if-eqz p9, :cond_0

    const-wide/32 p9, 0x80e8

    iput-wide p9, p0, Lhno;->O:J

    goto :goto_0

    :cond_0
    const-wide/16 p9, 0x2710

    iput-wide p9, p0, Lhno;->O:J

    :goto_0
    iput-object p2, p0, Lhno;->u:Ldbf;

    iput-object p3, p0, Lhno;->x:Loiw;

    iput-object p4, p0, Lhno;->v:Ldhi;

    invoke-virtual {p1}, Lcvr;->D()Landroid/hardware/SensorManager;

    move-result-object p3

    const/4 p4, 0x4

    invoke-virtual {p3, p4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p3

    iput-object p3, p0, Lhno;->B:Landroid/hardware/Sensor;

    invoke-virtual {p1}, Lcvr;->D()Landroid/hardware/SensorManager;

    move-result-object p1

    iput-object p1, p0, Lhno;->z:Landroid/hardware/SensorManager;

    iput-object p5, p0, Lhno;->M:Ldja;

    iput-object p6, p0, Lhno;->L:Ldqx;

    iput-object p7, p0, Lhno;->K:Lemq;

    iput-object p8, p0, Lhno;->y:Ljwb;

    new-instance p1, Lhoq;

    invoke-direct {p1, p0, p2, p11}, Lhoq;-><init>(Lhno;Ldbf;I)V

    iput-object p1, p0, Lhno;->A:Landroid/hardware/SensorEventListener;

    sget-object p1, Lhpu;->b:Lhpu;

    iput-object p1, p0, Lhno;->H:Lhpu;

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object p1

    iput-object p1, p0, Lhno;->G:Lnph;

    return-void
.end method

.method private static final h(Lkeb;Lkpb;)V
    .locals 0

    invoke-interface {p1}, Lkpb;->close()V

    invoke-interface {p0}, Lkeb;->close()V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-object v0, p0, Lhno;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public final b()J
    .locals 4

    iget-object v0, p0, Lhno;->j:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    iget-object v2, p0, Lhno;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final c()J
    .locals 4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lhno;->j:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iget-object v2, p0, Lhno;->H:Lhpu;

    iget v2, v2, Lhpu;->h:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final d()J
    .locals 2

    iget-object v0, p0, Lhno;->k:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method final e()V
    .locals 3

    iget-object v0, p0, Lhno;->M:Ldja;

    invoke-virtual {v0}, Ldja;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhno;->B:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lhno;->z:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lhno;->A:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v2, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    :cond_0
    iget-object v0, p0, Lhno;->C:Lhpy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lhpy;->c()V

    :cond_1
    return-void
.end method

.method public final f(JLkeb;Lkpb;Lmqp;Lmqp;)V
    .locals 23

    move-object/from16 v9, p0

    iget-object v0, v9, Lhno;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v9, Lhno;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static/range {p3 .. p4}, Lhno;->h(Lkeb;Lkpb;)V

    return-void

    :cond_0
    invoke-virtual/range {p5 .. p5}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual/range {p5 .. p5}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static/range {p3 .. p4}, Lhno;->h(Lkeb;Lkpb;)V

    return-void

    :cond_2
    :goto_0
    invoke-virtual/range {p5 .. p5}, Lmqp;->g()Z

    move-result v0

    const/4 v10, 0x1

    if-eqz v0, :cond_4

    iget-object v0, v9, Lhno;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    if-gt v0, v10, :cond_4

    invoke-virtual/range {p5 .. p5}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, v9, Lhno;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    invoke-static/range {p3 .. p4}, Lhno;->h(Lkeb;Lkpb;)V

    return-void

    :cond_4
    :goto_1
    iget-object v0, v9, Lhno;->J:Ljwo;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Ljwo;->a:Ljyc;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Ljyc;->b()Landroid/media/MediaCodec;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v9, Lhno;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    if-eqz v1, :cond_6

    iget-object v1, v9, Lhno;->q:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    cmp-long v3, v1, v12

    if-lez v3, :cond_5

    iget-object v1, v9, Lhno;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v15, 0x1

    goto :goto_3

    :cond_5
    sget-object v1, Lhno;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    const-string v2, "onImageAvailable() - Wait for at least one frame to stop recording."

    const/16 v3, 0xebc

    invoke-static {v1, v2, v3}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    goto :goto_2

    :cond_6
    :goto_2
    const/4 v15, 0x0

    :goto_3
    iget-object v8, v9, Lhno;->w:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget-object v7, v9, Lhno;->N:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v9, Lhno;->H:Lhpu;

    iget-object v6, v9, Lhno;->E:Lhpw;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v9, Lhno;->D:Lhps;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v9, Lhno;->f:Lnnp;

    invoke-virtual {v1}, Lnnp;->a()D

    move-result-wide v2

    invoke-static {}, Lhpt;->values()[Lhpt;

    move-result-object v1

    array-length v12, v1

    const/4 v13, 0x0

    :goto_4
    if-ge v13, v12, :cond_1d

    aget-object v14, v1, v13

    iget-object v10, v5, Lhpu;->d:Lmwa;

    invoke-virtual {v10, v14}, Lmwa;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    move-object v10, v5

    move-object v5, v6

    move-object v6, v7

    move-object/from16 v19, v8

    const-wide/16 v16, 0x0

    move-wide v7, v2

    move-object v3, v4

    move-object v2, v9

    const/4 v4, 0x0

    const/4 v9, 0x1

    goto/16 :goto_f

    :cond_7
    iget-object v10, v5, Lhpu;->d:Lmwa;

    invoke-virtual {v10, v14}, Lmwa;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Double;

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v19

    cmpl-double v10, v19, v2

    if-nez v10, :cond_1c

    iget-object v1, v9, Lhno;->F:Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v9, Lhno;->F:Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v14, :cond_9

    invoke-virtual {v4, v14}, Lhps;->d(Lhpt;)V

    goto :goto_5

    :cond_8
    invoke-virtual {v4, v14}, Lhps;->f(Lhpt;)V

    invoke-virtual {v4, v14}, Lhps;->d(Lhpt;)V

    :cond_9
    :goto_5
    invoke-static {v14}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v1

    iput-object v1, v9, Lhno;->F:Lmqp;

    invoke-virtual/range {p6 .. p6}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, v9, Lhno;->C:Lhpy;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Lhpy;->d()Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_6

    :cond_a
    iget-object v1, v4, Lhps;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v10, 0x1

    :try_start_1
    iput-boolean v10, v4, Lhps;->i:Z

    monitor-exit v1

    goto :goto_6

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    :cond_b
    :goto_6
    iget v10, v5, Lhpu;->g:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object/from16 v1, p0

    move-wide v12, v2

    move-wide/from16 v2, p1

    move-object/from16 v21, v4

    move v4, v10

    move-object v10, v5

    move-object/from16 v22, v6

    move-wide v5, v12

    move-object v12, v7

    move v7, v15

    move-object/from16 v19, v8

    move-object/from16 v8, p6

    :try_start_3
    invoke-virtual/range {v1 .. v8}, Lhno;->g(JIDZLmqp;)Z

    move-result v1

    const/4 v8, 0x2

    if-eqz v1, :cond_10

    if-eqz v15, :cond_c

    iget-object v1, v9, Lhno;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v13, 0x1

    invoke-virtual {v1, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, v9, Lhno;->l:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-object v2, v9

    goto/16 :goto_8

    :cond_c
    const/4 v13, 0x1

    const-wide/16 v1, 0x2710

    invoke-virtual {v11, v1, v2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v2

    if-ltz v2, :cond_f

    invoke-virtual {v11, v2}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-interface/range {p4 .. p4}, Lkpb;->g()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkpa;

    invoke-interface {v3}, Lkpa;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-interface/range {p4 .. p4}, Lkpb;->g()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkpa;

    invoke-interface {v3}, Lkpa;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    iget-object v3, v9, Lhno;->q:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    iget v5, v10, Lhpu;->h:I

    iget-object v6, v9, Lhno;->n:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    const-wide/16 v16, 0x0

    cmp-long v18, v6, v16

    if-nez v18, :cond_d

    iget-object v3, v9, Lhno;->n:Ljava/util/concurrent/atomic/AtomicLong;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v3, v9, Lhno;->n:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    move-wide v5, v3

    goto :goto_7

    :cond_d
    iget-object v6, v9, Lhno;->n:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    sget-object v13, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v13, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    int-to-long v8, v5

    :try_start_4
    div-long/2addr v3, v8

    add-long/2addr v6, v3

    move-wide v5, v6

    :goto_7
    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    const/4 v7, 0x0

    move-object v1, v11

    invoke-virtual/range {v1 .. v7}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v2, p0

    :try_start_5
    iget-object v1, v2, Lhno;->l:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object/from16 v2, p0

    goto/16 :goto_11

    :cond_e
    move-object v2, v9

    goto/16 :goto_e

    :cond_f
    move-object v2, v9

    goto :goto_8

    :cond_10
    move-object v2, v9

    :goto_8
    iget-object v1, v2, Lhno;->l:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-gtz v1, :cond_12

    iget-object v1, v2, Lhno;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_9

    :cond_11
    move-object v9, v12

    move-object/from16 v3, v21

    goto/16 :goto_d

    :cond_12
    :goto_9
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iget-wide v3, v2, Lhno;->O:J

    invoke-virtual {v11, v1, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_13

    move-object v9, v12

    move-object/from16 v3, v21

    goto/16 :goto_c

    :cond_13
    const/4 v4, -0x2

    if-ne v3, v4, :cond_14

    invoke-virtual {v11}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    invoke-interface {v0, v1}, Ljyc;->l(Landroid/media/MediaFormat;)V

    move-object v9, v12

    move-object/from16 v3, v21

    goto/16 :goto_c

    :cond_14
    if-gez v3, :cond_15

    sget-object v0, Lhno;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v1, 0xec4

    invoke-interface {v0, v1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v1, "selectAndDropFrames() - Unexpected result during dequeueOutputBuffer: %d"

    invoke-interface {v0, v1, v3}, Lnah;->p(Ljava/lang/String;I)V

    move-object v9, v12

    move-object/from16 v3, v21

    goto/16 :goto_c

    :cond_15
    iget v4, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v5, 0x2

    and-int/2addr v4, v5

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    iput v4, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    :cond_16
    iget v4, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v4, :cond_18

    iget-object v4, v2, Lhno;->q:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    iget v6, v10, Lhpu;->h:I

    iget-object v7, v2, Lhno;->m:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v7

    const-wide/16 v16, 0x0

    cmp-long v9, v7, v16

    if-nez v9, :cond_17

    iget-object v4, v2, Lhno;->m:Ljava/util/concurrent/atomic/AtomicLong;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v4, v2, Lhno;->m:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    move-object v9, v12

    goto :goto_a

    :cond_17
    iget-object v7, v2, Lhno;->m:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v7

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v4

    move-object v9, v12

    int-to-long v11, v6

    div-long/2addr v4, v11

    add-long/2addr v4, v7

    :goto_a
    iput-wide v4, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-interface {v0, v3, v1}, Ljyc;->n(ILandroid/media/MediaCodec$BufferInfo;)V

    iget-object v0, v2, Lhno;->k:Ljava/util/concurrent/atomic/AtomicLong;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v3, v2, Lhno;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    iget v1, v10, Lhpu;->h:I

    int-to-long v5, v1

    div-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v0, v2, Lhno;->t:Ljava/util/concurrent/atomic/AtomicLong;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v3, v2, Lhno;->q:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    iget v1, v10, Lhpu;->h:I

    int-to-long v5, v1

    div-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    const/16 v18, 0x1

    goto :goto_b

    :cond_18
    move-object v9, v12

    const/4 v0, 0x0

    invoke-virtual {v11, v3, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    const/16 v18, 0x0

    :goto_b
    iget-object v0, v2, Lhno;->l:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    add-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    if-eqz v18, :cond_19

    move-object/from16 v3, v21

    invoke-virtual {v3, v14}, Lhps;->c(Lhpt;)V

    goto :goto_c

    :cond_19
    move-object/from16 v3, v21

    :goto_c
    if-eqz v15, :cond_1a

    sget-object v0, Lhno;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Received Eos frame. Stop recording."

    const/16 v4, 0xec1

    invoke-static {v0, v1, v4}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    iget-object v0, v2, Lhno;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, v2, Lhno;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual/range {p0 .. p0}, Lhno;->d()J

    move-result-wide v0

    move-object/from16 v5, v22

    invoke-virtual {v5, v0, v1}, Lhpw;->h(J)V

    invoke-virtual/range {p0 .. p0}, Lhno;->c()J

    move-result-wide v0

    invoke-virtual {v5, v0, v1}, Lhpw;->j(J)V

    invoke-virtual/range {p0 .. p0}, Lhno;->a()J

    move-result-wide v0

    invoke-virtual {v5, v0, v1}, Lhpw;->c(J)V

    invoke-virtual/range {p0 .. p0}, Lhno;->b()J

    move-result-wide v0

    invoke-virtual {v5, v0, v1}, Lhpw;->d(J)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, v2, Lhno;->r:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iget-object v4, v2, Lhno;->H:Lhpu;

    iget v4, v4, Lhpu;->h:I

    int-to-long v4, v4

    div-long/2addr v0, v4

    invoke-virtual {v3, v0, v1}, Lhps;->e(J)V

    iget-object v0, v2, Lhno;->t:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lhps;->g(J)V

    iget-object v0, v2, Lhno;->q:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    invoke-virtual {v3}, Lhps;->h()V

    iget-object v0, v2, Lhno;->r:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    iget-object v0, v2, Lhno;->q:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    invoke-virtual {v3}, Lhps;->i()V

    iget-object v0, v2, Lhno;->G:Lnph;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnph;->e(Ljava/lang/Object;)Z

    :cond_1a
    :goto_d
    if-nez v15, :cond_1b

    iget-object v0, v2, Lhno;->q:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    iget v4, v10, Lhpu;->h:I

    int-to-float v4, v4

    move-object v5, v9

    invoke-virtual {v5, v0, v1, v4}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->g(JF)V

    iget-object v0, v2, Lhno;->j:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    invoke-virtual {v3, v14}, Lhps;->b(Lhpt;)V

    :cond_1b
    :goto_e
    monitor-exit v19
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    invoke-static/range {p3 .. p4}, Lhno;->h(Lkeb;Lkpb;)V

    return-void

    :catchall_2
    move-exception v0

    goto :goto_10

    :cond_1c
    move-object v10, v5

    move-object v5, v6

    move-object v6, v7

    move-object/from16 v19, v8

    const-wide/16 v16, 0x0

    move-wide v7, v2

    move-object v3, v4

    move-object v2, v9

    const/4 v4, 0x0

    const/4 v9, 0x1

    :goto_f
    add-int/lit8 v13, v13, 0x1

    move-object v9, v2

    move-object v4, v3

    move-wide v2, v7

    move-object/from16 v8, v19

    const/4 v14, 0x0

    move-object v7, v6

    move-object v6, v5

    move-object v5, v10

    const/4 v10, 0x1

    goto/16 :goto_4

    :cond_1d
    move-object/from16 v19, v8

    move-wide v7, v2

    move-object v2, v9

    :try_start_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Capture rate "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, " is not valid."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_3
    move-exception v0

    move-object/from16 v19, v8

    :goto_10
    move-object v2, v9

    :goto_11
    monitor-exit v19
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    goto :goto_11
.end method

.method final g(JIDZLmqp;)Z
    .locals 2

    int-to-double v0, p3

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, p4

    double-to-int p3, v0

    int-to-long p3, p3

    rem-long/2addr p1, p3

    const-wide/16 p3, 0x0

    const/4 p5, 0x1

    const/4 v0, 0x0

    cmp-long v1, p1, p3

    if-nez v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p7}, Lmqp;->g()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p7}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_1

    if-eqz p1, :cond_1

    sget-object p2, Lhno;->a:Lnak;

    invoke-virtual {p2}, Lnaf;->b()Lnaz;

    move-result-object p2

    const-string p3, "The frame is not warped. Ignore"

    const/16 p4, 0xec5

    invoke-static {p2, p3, p4}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    :cond_1
    invoke-virtual {p7}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    and-int/2addr p1, p2

    :cond_2
    if-eqz p1, :cond_4

    :cond_3
    goto :goto_1

    :cond_4
    if-nez p6, :cond_3

    iget-object p1, p0, Lhno;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_5

    return v0

    :cond_5
    :goto_1
    return p5
.end method
