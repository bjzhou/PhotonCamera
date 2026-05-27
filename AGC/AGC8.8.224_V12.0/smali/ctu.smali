.class public final Lctu;
.super Lkfg;


# static fields
.field private static final i:Lnak;

.field private static final j:Ljava/lang/Long;


# instance fields
.field private final A:J

.field private B:Z

.field private C:Z

.field private D:J

.field public a:J

.field public final b:Ljava/util/Deque;

.field public final c:Lcsc;

.field public final d:Lcrz;

.field public final e:Lcwx;

.field public final f:Lkbc;

.field public final g:Lczf;

.field public final h:Lbkc;

.field private k:J

.field private l:J

.field private m:J

.field private n:J

.field private o:J

.field private p:J

.field private q:I

.field private r:I

.field private s:J

.field private t:J

.field private final u:Ljava/util/Queue;

.field private final v:Ldhi;

.field private final w:Lj$/util/Optional;

.field private final x:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final y:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final z:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "com/google/android/apps/camera/camcorder/frameserver/listener/FrameDropListener"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lctu;->i:Lnak;

    const-wide/16 v0, 0xfa0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lctu;->j:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Lcsc;Lbkc;Ldhi;Lczf;Lcrz;Lcwx;Lkbc;[B[B[B)V
    .locals 1

    invoke-direct {p0}, Lkfg;-><init>()V

    const-wide/16 p8, -0x1

    iput-wide p8, p0, Lctu;->o:J

    new-instance p10, Ljava/util/ArrayDeque;

    invoke-direct {p10}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p10, p0, Lctu;->u:Ljava/util/Queue;

    new-instance p10, Ljava/util/ArrayDeque;

    invoke-direct {p10}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p10, p0, Lctu;->b:Ljava/util/Deque;

    new-instance p10, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-direct {p10, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p10, p0, Lctu;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p10, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p10, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p10, p0, Lctu;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lctu;->c:Lcsc;

    iput-object p3, p0, Lctu;->v:Ldhi;

    iput-object p5, p0, Lctu;->d:Lcrz;

    iput-object p6, p0, Lctu;->e:Lcwx;

    iput-object p7, p0, Lctu;->f:Lkbc;

    iget-object p1, p1, Lcsc;->c:Ljws;

    sget-object p3, Ljws;->a:Ljws;

    if-ne p1, p3, :cond_0

    goto :goto_0

    :cond_0
    iget p3, p1, Ljws;->i:I

    int-to-long p5, p3

    const-wide/32 p7, 0xf4240

    div-long p8, p7, p5

    :goto_0
    iput-wide p8, p0, Lctu;->z:J

    invoke-virtual {p1}, Ljws;->e()Z

    move-result p3

    if-eqz p3, :cond_1

    const-wide/16 p5, 0x4

    div-long/2addr p8, p5

    goto :goto_1

    :cond_1
    sget-object p3, Lctu;->j:Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    const-wide/16 p8, 0xfa0

    :goto_1
    iput-wide p8, p0, Lctu;->A:J

    iput-object p2, p0, Lctu;->h:Lbkc;

    iput-object p4, p0, Lctu;->g:Lczf;

    sget-object p2, Ldgu;->a:Ldhk;

    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object p2

    iput-object p2, p0, Lctu;->w:Lj$/util/Optional;

    iget p2, p1, Ljws;->i:I

    const p3, 0xf4240

    div-int/2addr p3, p2

    int-to-long p2, p3

    iput-wide p2, p0, Lctu;->k:J

    invoke-virtual {p1}, Ljws;->e()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p10, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_2
    return-void
.end method

.method private final declared-synchronized p(J)Z
    .locals 4

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lctu;->b:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lctu;->b:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmym;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmym;->k(Ljava/lang/Comparable;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lmym;->l()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lmym;->i()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v0, v2, p1

    if-gtz v0, :cond_1

    goto :goto_1

    :cond_1
    monitor-exit p0

    return v1

    :cond_2
    :goto_1
    :try_start_2
    iget-object v0, p0, Lctu;->b:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->poll()Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public final declared-synchronized bC(Lkou;)V
    .locals 12

    monitor-enter p0

    :try_start_0
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v0}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    sget-object v4, Landroid/hardware/camera2/CaptureResult;->SENSOR_FRAME_DURATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v4}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    cmp-long v9, v4, v6

    if-lez v9, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    const-string v7, "Sensor frame duration should be > 0"

    invoke-static {v6, v7}, Lmoz;->q(ZLjava/lang/Object;)V

    iget-wide v6, p0, Lctu;->z:J

    const-wide/16 v9, -0x1

    cmp-long v11, v6, v9

    if-nez v11, :cond_1

    div-long v6, v4, v2

    goto :goto_1

    :cond_1
    :goto_1
    invoke-direct {p0, v0, v1}, Lctu;->p(J)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lctu;->u:Ljava/util/Queue;

    new-instance v3, Lctt;

    iget-wide v4, p0, Lctu;->a:J

    sub-long/2addr v0, v4

    invoke-direct {v3, v0, v1, v6, v7}, Lctt;-><init>(JJ)V

    invoke-interface {v2, v3}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Lctu;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {p1}, Lkou;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lctu;->o:J

    cmp-long p1, v2, v0

    if-nez p1, :cond_4

    iget-object p1, p0, Lctu;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_2
    iget-object p1, p0, Lctu;->u:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result p1

    const/4 v0, 0x2

    if-le p1, v0, :cond_3

    iget-object p1, p0, Lctu;->u:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_3
    :goto_3
    monitor-exit p0

    return-void

    :cond_4
    :try_start_1
    iput-wide v0, p0, Lctu;->o:J

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lctu;->u:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result p1

    const/16 v0, 0x64

    if-le p1, v0, :cond_6

    goto :goto_4

    :cond_6
    iget-object p1, p0, Lctu;->c:Lcsc;

    iget-boolean p1, p1, Lcsc;->A:Z

    if-nez p1, :cond_7

    :goto_4
    iget-object p1, p0, Lctu;->u:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    iget-wide v0, p0, Lctu;->p:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lctu;->p:J

    iget-object p1, p0, Lctu;->u:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lctt;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v0, p1, Lctt;->a:J

    iget-wide v2, p1, Lctt;->b:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lctu;->k(JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :cond_7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method public final declared-synchronized g()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lctu;->q:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized h()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lctu;->r:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized i()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lctu;->p:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized j()V
    .locals 8

    monitor-enter p0

    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lctu;->u:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lctu;->u:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lctt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v0, v0, Lctt;->a:J

    iget-wide v2, p0, Lctu;->A:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lctu;->s:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    iget-object v0, p0, Lctu;->u:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lctt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v1, p0, Lctu;->t:J

    iget-wide v3, v0, Lctt;->a:J

    sub-long/2addr v1, v3

    iget-wide v5, p0, Lctu;->A:J

    cmp-long v7, v1, v5

    if-gtz v7, :cond_0

    iget-boolean v1, p0, Lctu;->B:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lctu;->B:Z

    :cond_1
    iget-wide v1, p0, Lctu;->p:J

    const-wide/16 v5, 0x1

    add-long/2addr v1, v5

    iput-wide v1, p0, Lctu;->p:J

    iget-wide v0, v0, Lctt;->b:J

    invoke-virtual {p0, v3, v4, v0, v1}, Lctu;->k(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method final declared-synchronized k(JJ)V
    .locals 21

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    monitor-enter p0

    :try_start_0
    iget-object v0, v1, Lctu;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v0, v7, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_5

    iget-wide v8, v1, Lctu;->n:J

    cmp-long v0, v2, v8

    if-lez v0, :cond_5

    iget-wide v8, v1, Lctu;->m:J

    sub-long v8, v2, v8

    iget-wide v10, v1, Lctu;->l:J

    iget-wide v12, v1, Lctu;->k:J

    const-wide/16 v14, 0x0

    cmp-long v0, v12, v14

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v14, "expectedDelayUs should be > 0"

    invoke-static {v0, v14}, Lmoz;->q(ZLjava/lang/Object;)V

    sub-long v14, v8, v10

    div-long/2addr v14, v12

    long-to-int v0, v14

    if-ltz v0, :cond_1

    const/16 v14, 0x3e8

    if-le v0, v14, :cond_2

    :cond_1
    sget-object v14, Lctu;->i:Lnak;

    invoke-virtual {v14}, Lnaf;->b()Lnaz;

    move-result-object v14

    check-cast v14, Lnah;

    const/16 v15, 0x28b

    invoke-interface {v14, v15}, Lnah;->G(I)Lnaz;

    move-result-object v14

    move-object v15, v14

    check-cast v15, Lnah;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    const-string v16, "Likely error in frame drop calculation: %d = (%d - %d) / %d"

    invoke-interface/range {v15 .. v20}, Lnah;->C(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    iget-wide v10, v1, Lctu;->k:J

    cmp-long v12, v4, v10

    if-lez v12, :cond_3

    if-eq v0, v7, :cond_5

    :cond_3
    iget v10, v1, Lctu;->r:I

    add-int/2addr v10, v0

    iput v10, v1, Lctu;->r:I

    iget-object v10, v1, Lctu;->w:Lj$/util/Optional;

    new-instance v11, Lcts;

    invoke-direct {v11, v1, v0, v7}, Lcts;-><init>(Lctu;II)V

    invoke-virtual {v10, v11}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget v7, v1, Lctu;->q:I

    if-le v0, v7, :cond_4

    iput v0, v1, Lctu;->q:I

    iget-object v7, v1, Lctu;->v:Ldhi;

    sget-object v10, Ldgu;->k:Ldhk;

    invoke-interface {v7, v10}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v7

    new-instance v10, Lcts;

    invoke-direct {v10, v1, v0, v6}, Lcts;-><init>(Lctu;II)V

    invoke-virtual {v7, v10}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_4
    sget-object v6, Lctu;->i:Lnak;

    invoke-virtual {v6}, Lnaf;->c()Lnaz;

    move-result-object v6

    check-cast v6, Lnah;

    const/16 v7, 0x28f

    invoke-interface {v6, v7}, Lnah;->G(I)Lnaz;

    move-result-object v6

    move-object v10, v6

    check-cast v10, Lnah;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-wide/32 v6, 0xf4240

    div-long/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v11, "Frame presentation time: %d us. Expected FPS: %d. Delay: %d us. Possible frame loss counts: %d"

    invoke-interface/range {v10 .. v15}, Lnah;->C(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    long-to-float v0, v4

    const v6, 0x3ecccccd    # 0.4f

    mul-float v0, v0, v6

    float-to-long v6, v0

    iput-wide v6, v1, Lctu;->l:J

    iput-wide v4, v1, Lctu;->k:J

    iput-wide v2, v1, Lctu;->m:J

    add-long/2addr v2, v4

    add-long/2addr v2, v6

    iput-wide v2, v1, Lctu;->n:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized l(J)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lctu;->C:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v4, v5}, Ljava/lang/Long;->signum(J)I

    mul-long v4, v4, v2

    sub-long/2addr v0, v4

    :try_start_1
    iput-wide v0, p0, Lctu;->D:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lctu;->C:Z

    :cond_0
    iget-object v0, p0, Lctu;->c:Lcsc;

    iget-object v0, v0, Lcsc;->c:Ljws;

    invoke-virtual {v0}, Ljws;->a()I

    move-result v0

    int-to-long v0, v0

    div-long/2addr p1, v0

    iget-wide v0, p0, Lctu;->D:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Lctu;->s:J

    iget-wide v0, p0, Lctu;->t:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    iput-wide p1, p0, Lctu;->t:J

    :cond_1
    invoke-virtual {p0}, Lctu;->j()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
