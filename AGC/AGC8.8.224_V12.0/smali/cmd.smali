.class public final Lcmd;
.super Ljava/lang/Object;

# interfaces
.implements Ldft;
.implements Lfaz;
.implements Lfax;
.implements Lfay;
.implements Lhdx;
.implements Lgxm;
.implements Lcmo;
.implements Lhrn;
.implements Lcmf;
.implements Lknx;


# static fields
.field public static final a:Lnak;


# instance fields
.field private A:Lgrw;

.field private B:Lklv;

.field private C:Ljuf;

.field private D:Landroid/graphics/Rect;

.field private E:J

.field private F:J

.field private final G:Ljava/util/Queue;

.field private final H:Ljava/util/List;

.field private final I:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final J:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final K:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final L:Ljvs;

.field private final M:Ljwb;

.field private N:Z

.field private O:I

.field private P:I

.field private Q:I

.field private R:I

.field private final S:Lgft;

.field private final T:Limq;

.field private final U:Ljvs;

.field private final V:Lnaa;

.field public final b:Ldhi;

.field public final c:Lgxi;

.field public final d:Lcnt;

.field public final e:Ljuh;

.field public final f:Lezx;

.field public final g:Lcny;

.field public final h:Ljava/util/concurrent/ExecutorService;

.field public i:Z

.field public j:J

.field public final k:Ljava/util/concurrent/atomic/AtomicLong;

.field private final l:Lmqp;

.field private final m:Lmqp;

.field private final n:Ldsy;

.field private final o:Ldsy;

.field private final p:Ldsy;

.field private final q:Ldsy;

.field private final r:Ljpl;

.field private final s:Lmul;

.field private final t:Lgzm;

.field private final u:Lmqp;

.field private final v:Lcmg;

.field private final w:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

.field private final x:Lkrn;

.field private final y:I

.field private final z:Lcoh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/brella/BeholderExampleGenerator"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lcmd;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Ldhi;Ljuh;Lezx;Lgxi;Lcnt;Ljpl;Lgzm;Lkrn;Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;Lmqp;Lcmg;Lcoh;Lcny;Lgft;Ljvs;Ljwb;Lmqp;Lmqp;Ldsy;Ldsy;Ldsy;Ldsy;ILjava/util/concurrent/ExecutorService;Limq;Ljvs;)V
    .locals 5

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcmd;->b:Ldhi;

    move-object v1, p4

    iput-object v1, v0, Lcmd;->c:Lgxi;

    move-object v1, p5

    iput-object v1, v0, Lcmd;->d:Lcnt;

    move-object v1, p2

    iput-object v1, v0, Lcmd;->e:Ljuh;

    move-object v1, p3

    iput-object v1, v0, Lcmd;->f:Lezx;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcmd;->l:Lmqp;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcmd;->m:Lmqp;

    move-object v1, p6

    iput-object v1, v0, Lcmd;->r:Ljpl;

    move-object v1, p7

    iput-object v1, v0, Lcmd;->t:Lgzm;

    move-object v1, p10

    iput-object v1, v0, Lcmd;->u:Lmqp;

    move-object/from16 v1, p11

    iput-object v1, v0, Lcmd;->v:Lcmg;

    move-object/from16 v1, p24

    iput-object v1, v0, Lcmd;->h:Ljava/util/concurrent/ExecutorService;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcmd;->i:Z

    move/from16 v2, p23

    iput v2, v0, Lcmd;->y:I

    invoke-static/range {p23 .. p23}, Lmul;->c(I)Lmul;

    move-result-object v2

    iput-object v2, v0, Lcmd;->s:Lmul;

    move-object v2, p8

    iput-object v2, v0, Lcmd;->x:Lkrn;

    move-object v2, p9

    iput-object v2, v0, Lcmd;->w:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    const/4 v2, 0x1

    invoke-static {v2}, Lmul;->c(I)Lmul;

    move-result-object v2

    iput-object v2, v0, Lcmd;->G:Ljava/util/Queue;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcmd;->H:Ljava/util/List;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcmd;->j:J

    new-instance v2, Lnaa;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v3}, Lnaa;-><init>([B[C[B)V

    iput-object v2, v0, Lcmd;->V:Lnaa;

    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcmd;->E:J

    iput-wide v2, v0, Lcmd;->F:J

    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v4, v0, Lcmd;->I:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v4, v0, Lcmd;->J:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v4, v0, Lcmd;->K:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v4, p15

    iput-object v4, v0, Lcmd;->L:Ljvs;

    move-object/from16 v4, p16

    iput-object v4, v0, Lcmd;->M:Ljwb;

    move-object/from16 v4, p13

    iput-object v4, v0, Lcmd;->g:Lcny;

    move-object/from16 v4, p19

    iput-object v4, v0, Lcmd;->n:Ldsy;

    move-object/from16 v4, p20

    iput-object v4, v0, Lcmd;->o:Ldsy;

    move-object/from16 v4, p21

    iput-object v4, v0, Lcmd;->p:Ldsy;

    move-object/from16 v4, p22

    iput-object v4, v0, Lcmd;->q:Ldsy;

    move-object/from16 v4, p12

    iput-object v4, v0, Lcmd;->z:Lcoh;

    new-instance v4, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v4, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v4, v0, Lcmd;->k:Ljava/util/concurrent/atomic/AtomicLong;

    iput v1, v0, Lcmd;->O:I

    iput v1, v0, Lcmd;->P:I

    move-object/from16 v1, p14

    iput-object v1, v0, Lcmd;->S:Lgft;

    const/16 v1, 0x5a

    iput v1, v0, Lcmd;->Q:I

    sget-object v1, Lkab;->a:Lkab;

    iget v1, v1, Lkab;->e:I

    iput v1, v0, Lcmd;->R:I

    move-object/from16 v1, p25

    iput-object v1, v0, Lcmd;->T:Limq;

    move-object/from16 v1, p26

    iput-object v1, v0, Lcmd;->U:Ljvs;

    return-void
.end method

.method private static A(Lnwn;Ljava/lang/String;Ljava/lang/Iterable;)V
    .locals 3

    sget-object v0, Lpas;->c:Lpas;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    sget-object v1, Lpav;->b:Lpav;

    invoke-virtual {v1}, Lnws;->O()Lnwn;

    move-result-object v1

    iget-object v2, v1, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_0
    iget-object v2, v1, Lnwn;->b:Lnws;

    check-cast v2, Lpav;

    invoke-virtual {v2}, Lpav;->c()V

    iget-object v2, v2, Lpav;->a:Lnwx;

    invoke-static {p2, v2}, Lnvd;->e(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {v1}, Lnwn;->i()Lnws;

    move-result-object p2

    check-cast p2, Lpav;

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_1
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Lpas;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, v1, Lpas;->b:Ljava/lang/Object;

    const/4 p2, 0x2

    iput p2, v1, Lpas;->a:I

    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object p2

    check-cast p2, Lpas;

    invoke-virtual {p0, p1, p2}, Lnwn;->aA(Ljava/lang/String;Lpas;)V

    return-void
.end method

.method private static varargs B(Lnwn;Ljava/lang/String;[F)V
    .locals 4

    sget-object v0, Lpav;->b:Lpav;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p2, v2

    invoke-virtual {v0, v3}, Lnwn;->aB(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget-object p2, Lpas;->c:Lpas;

    invoke-virtual {p2}, Lnws;->O()Lnwn;

    move-result-object p2

    iget-object v1, p2, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Lnwn;->p()V

    :cond_1
    iget-object v1, p2, Lnwn;->b:Lnws;

    check-cast v1, Lpas;

    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Lpav;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v1, Lpas;->b:Ljava/lang/Object;

    const/4 v0, 0x2

    iput v0, v1, Lpas;->a:I

    invoke-virtual {p2}, Lnwn;->i()Lnws;

    move-result-object p2

    check-cast p2, Lpas;

    invoke-virtual {p0, p1, p2}, Lnwn;->aA(Ljava/lang/String;Lpas;)V

    return-void
.end method

.method private static C(Lnwn;Ljava/lang/String;J)V
    .locals 2

    sget-object v0, Lpas;->c:Lpas;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    sget-object v1, Lpaw;->b:Lpaw;

    invoke-virtual {v1}, Lnws;->O()Lnwn;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lnwn;->aC(J)V

    invoke-virtual {v1}, Lnwn;->i()Lnws;

    move-result-object p2

    check-cast p2, Lpaw;

    iget-object p3, v0, Lnwn;->b:Lnws;

    invoke-virtual {p3}, Lnws;->ac()Z

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object p3, v0, Lnwn;->b:Lnws;

    check-cast p3, Lpas;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p3, Lpas;->b:Ljava/lang/Object;

    const/4 p2, 0x3

    iput p2, p3, Lpas;->a:I

    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object p2

    check-cast p2, Lpas;

    invoke-virtual {p0, p1, p2}, Lnwn;->aA(Ljava/lang/String;Lpas;)V

    return-void
.end method

.method private final declared-synchronized D(Lnwn;I)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcmd;->G:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcmd;->G:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    new-instance v1, Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-static {v1, p2}, Lkof;->a(Landroid/graphics/PointF;I)Landroid/graphics/PointF;

    move-result-object v1

    new-instance v2, Landroid/graphics/PointF;

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v2, v3, v0}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-static {v2, p2}, Lkof;->a(Landroid/graphics/PointF;I)Landroid/graphics/PointF;

    move-result-object p2

    const/4 v0, 0x1

    new-array v2, v0, [F

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v4, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    const-string v3, "tracking/left"

    invoke-static {p1, v3, v2}, Lcmd;->B(Lnwn;Ljava/lang/String;[F)V

    new-array v2, v0, [F

    iget v3, v1, Landroid/graphics/PointF;->y:F

    iget v5, p2, Landroid/graphics/PointF;->y:F

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v2, v4

    const-string v3, "tracking/top"

    invoke-static {p1, v3, v2}, Lcmd;->B(Lnwn;Ljava/lang/String;[F)V

    new-array v2, v0, [F

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v5, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    aput v3, v2, v4

    const-string v3, "tracking/right"

    invoke-static {p1, v3, v2}, Lcmd;->B(Lnwn;Ljava/lang/String;[F)V

    new-array v0, v0, [F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {v1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    aput p2, v0, v4

    const-string p2, "tracking/bottom"

    invoke-static {p1, p2, v0}, Lcmd;->B(Lnwn;Ljava/lang/String;[F)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static final E(Ldsy;Ljava/lang/String;Lnwn;)V
    .locals 2

    invoke-interface {p0}, Ldsy;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Ldsy;->d()Ldsv;

    invoke-interface {p0}, Ldsy;->d()Ldsv;

    move-result-object p0

    invoke-virtual {p0}, Ldsv;->a()F

    move-result p0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x7fc00000    # Float.NaN

    :goto_0
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p0, v0, v1

    invoke-static {p2, p1, v0}, Lcmd;->B(Lnwn;Ljava/lang/String;[F)V

    :cond_1
    return-void
.end method

.method private final y()V
    .locals 2

    iget-object v0, p0, Lcmd;->s:Lmul;

    invoke-virtual {v0}, Lmuo;->clear()V

    invoke-direct {p0}, Lcmd;->z()V

    iget-object v0, p0, Lcmd;->I:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcmd;->J:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcmd;->K:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcmd;->j:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcmd;->A:Lgrw;

    return-void
.end method

.method private final declared-synchronized z()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcmd;->G:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    iget-object v0, p0, Lcmd;->H:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b(Lhec;)V
    .locals 0

    return-void
.end method

.method public final bO()V
    .locals 5

    new-instance v0, Ljuf;

    invoke-direct {v0}, Ljuf;-><init>()V

    iget-object v1, p0, Lcmd;->c:Lgxi;

    invoke-virtual {v1, p0}, Lgxi;->a(Lgxm;)V

    new-instance v1, Lcfh;

    const/16 v2, 0x9

    invoke-direct {v1, p0, v2}, Lcfh;-><init>(Lcmd;I)V

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    iput-object v0, p0, Lcmd;->C:Ljuf;

    iget-object v0, p0, Lcmd;->b:Ldhi;

    sget-object v1, Ldho;->a:Ldhk;

    invoke-interface {v0}, Ldhi;->c()V

    iget-object v0, p0, Lcmd;->r:Ljpl;

    invoke-interface {v0}, Ljpl;->h()Ljot;

    move-result-object v0

    invoke-static {v0}, Lktf;->b(Ljot;)Lnou;

    move-result-object v0

    new-instance v1, Lcmc;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcmc;-><init>(Lcmd;I)V

    sget-object v2, Lnnv;->a:Lnnv;

    invoke-static {v0, v1, v2}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    iget-object v0, p0, Lcmd;->u:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrd;

    invoke-interface {v0, p0}, Lhrd;->e(Lhrn;)V

    :cond_0
    iget-object v0, p0, Lcmd;->v:Lcmg;

    iput-object p0, v0, Lcmg;->b:Lcmf;

    iget-object v0, p0, Lcmd;->S:Lgft;

    invoke-interface {v0, p0}, Lgft;->g(Lknx;)V

    iget-object v0, p0, Lcmd;->b:Ldhi;

    sget-object v1, Ldho;->bA:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcmd;->g:Lcny;

    invoke-virtual {v0}, Lcny;->c()V

    :cond_1
    iget-object v0, p0, Lcmd;->b:Ldhi;

    sget-object v1, Ldho;->bB:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    iput-boolean v0, p0, Lcmd;->N:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcmd;->k:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcmd;->d:Lcnt;

    invoke-interface {v0}, Lcnt;->c()Lnou;

    move-result-object v0

    new-instance v1, Lcmc;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcmc;-><init>(Lcmd;I)V

    iget-object v2, p0, Lcmd;->h:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, v1, v2}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method public final c(Lkli;)V
    .locals 1

    invoke-interface {p1}, Lkli;->k()Lklv;

    move-result-object v0

    iput-object v0, p0, Lcmd;->B:Lklv;

    invoke-interface {p1}, Lkli;->f()I

    move-result v0

    iput v0, p0, Lcmd;->Q:I

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p1, v0}, Lkli;->l(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    iput-object p1, p0, Lcmd;->D:Landroid/graphics/Rect;

    iget-object p1, p0, Lcmd;->s:Lmul;

    invoke-virtual {p1}, Lmuo;->clear()V

    return-void
.end method

.method public final e()V
    .locals 6

    iget-object v0, p0, Lcmd;->C:Ljuf;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljuf;->close()V

    iput-object v1, p0, Lcmd;->C:Ljuf;

    :cond_0
    iget-object v0, p0, Lcmd;->u:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrd;

    invoke-interface {v0, p0}, Lhrd;->g(Lhrn;)V

    :cond_1
    iget-object v0, p0, Lcmd;->v:Lcmg;

    iput-object v1, v0, Lcmg;->b:Lcmf;

    iget-object v0, p0, Lcmd;->S:Lgft;

    invoke-interface {v0, p0}, Lgft;->h(Lknx;)V

    iget-object v0, p0, Lcmd;->b:Ldhi;

    sget-object v1, Ldho;->bA:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcmd;->g:Lcny;

    invoke-virtual {v0}, Lcny;->close()V

    :cond_2
    iget-boolean v0, p0, Lcmd;->N:Z

    if-eqz v0, :cond_4

    sget-object v0, Lpau;->b:Lpau;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    iget-wide v3, p0, Lcmd;->E:J

    sub-long/2addr v1, v3

    iget-object v3, p0, Lcmd;->k:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    const-string v5, "session/id"

    invoke-static {v0, v5, v3, v4}, Lcmd;->C(Lnwn;Ljava/lang/String;J)V

    const-string v3, "session/duration"

    invoke-static {v0, v3, v1, v2}, Lcmd;->C(Lnwn;Ljava/lang/String;J)V

    iget v1, p0, Lcmd;->O:I

    int-to-long v1, v1

    const-string v3, "session/total_image_count"

    invoke-static {v0, v3, v1, v2}, Lcmd;->C(Lnwn;Ljava/lang/String;J)V

    iget v1, p0, Lcmd;->P:I

    int-to-long v1, v1

    const-string v3, "session/total_other_mode"

    invoke-static {v0, v3, v1, v2}, Lcmd;->C(Lnwn;Ljava/lang/String;J)V

    iget-object v1, p0, Lcmd;->d:Lcnt;

    iget-object v2, p0, Lcmd;->k:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sget-object v4, Lpar;->b:Lpar;

    invoke-virtual {v4}, Lnws;->O()Lnwn;

    move-result-object v4

    iget-object v5, v4, Lnwn;->b:Lnws;

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Lnwn;->p()V

    :cond_3
    iget-object v5, v4, Lnwn;->b:Lnws;

    check-cast v5, Lpar;

    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Lpau;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v5, Lpar;->a:Lpau;

    invoke-virtual {v4}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Lpar;

    invoke-virtual {v0}, Lnve;->J()[B

    move-result-object v0

    invoke-interface {v1, v2, v3, v0}, Lcnt;->i(J[B)Lnou;

    move-result-object v0

    new-instance v1, Lcnr;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcnr;-><init>(I)V

    iget-object v2, p0, Lcmd;->h:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, v1, v2}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    iget-object v0, p0, Lcmd;->k:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :cond_4
    const/4 v0, 0x0

    iput v0, p0, Lcmd;->O:I

    iput v0, p0, Lcmd;->P:I

    return-void
.end method

.method public final f(Lika;)V
    .locals 1

    invoke-virtual {p1}, Lika;->name()Ljava/lang/String;

    sget-object v0, Lgya;->a:Lgya;

    invoke-virtual {p1}, Lika;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    return-void

    :sswitch_0
    iget-object p1, p0, Lcmd;->J:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void

    :sswitch_1
    iget-object p1, p0, Lcmd;->I:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void

    :sswitch_2
    iget-object p1, p0, Lcmd;->K:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_2
        0x6 -> :sswitch_1
        0xc -> :sswitch_0
    .end sparse-switch
.end method

.method public final g(JLjava/util/Map;)V
    .locals 0

    iget-object p1, p0, Lcmd;->V:Lnaa;

    invoke-static {p3}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object p2

    iput-object p2, p1, Lnaa;->a:Ljava/lang/Object;

    return-void
.end method

.method public final h(Lkab;)V
    .locals 0

    iget p1, p1, Lkab;->e:I

    iput p1, p0, Lcmd;->R:I

    return-void
.end method

.method public final i(Lkou;)V
    .locals 4

    iget-object v0, p0, Lcmd;->D:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lgrw;

    const/4 v1, 0x0

    iget-object v2, p0, Lcmd;->D:Landroid/graphics/Rect;

    invoke-direct {v0, p1, v1, v2}, Lgrw;-><init>(Lkoq;ILandroid/graphics/Rect;)V

    iput-object v0, p0, Lcmd;->A:Lgrw;

    iget-wide v1, v0, Lgrw;->d:J

    iget p1, v0, Lgrw;->g:I

    iget v0, v0, Lgrw;->f:I

    iget-object v3, p0, Lcmd;->s:Lmul;

    long-to-float v1, v1

    const v2, 0x358637bd    # 1.0E-6f

    mul-float v1, v1, v2

    int-to-float p1, p1

    int-to-float v0, v0

    mul-float v1, v1, p1

    mul-float v1, v1, v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v3, p1}, Lmuo;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final synthetic j(Lgxy;)V
    .locals 0

    return-void
.end method

.method public final synthetic k(Lgxy;)V
    .locals 0

    return-void
.end method

.method public final synthetic l(Lgxy;)V
    .locals 0

    return-void
.end method

.method public final synthetic m(J)V
    .locals 0

    return-void
.end method

.method public final synthetic n(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public final synthetic o(Landroid/graphics/Bitmap;I)V
    .locals 0

    invoke-static {p0, p1}, Ljhp;->aw(Lgxm;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final synthetic p(Lgxy;Lkae;)V
    .locals 0

    return-void
.end method

.method public final q(Lgxy;Lgxt;Lgyb;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    sget-object v2, Lgyb;->b:Lgyb;

    move-object/from16 v3, p3

    if-ne v3, v2, :cond_0

    invoke-direct/range {p0 .. p0}, Lcmd;->y()V

    return-void

    :cond_0
    iget v2, v0, Lcmd;->O:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v0, Lcmd;->O:I

    sget-object v2, Lika;->a:Lika;

    sget-object v2, Lgya;->a:Lgya;

    iget-object v2, v1, Lgxt;->c:Lgya;

    invoke-virtual {v2}, Lgya;->ordinal()I

    move-result v2

    const/4 v4, -0x1

    const/4 v5, 0x0

    sparse-switch v2, :sswitch_data_0

    iget v2, v0, Lcmd;->P:I

    add-int/2addr v2, v3

    iput v2, v0, Lcmd;->P:I

    const/4 v2, -0x1

    goto :goto_0

    :sswitch_0
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_1
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_3
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_4
    const/4 v2, 0x0

    :goto_0
    iget-boolean v6, v0, Lcmd;->i:Z

    if-eqz v6, :cond_28

    if-eq v2, v4, :cond_28

    iget-object v6, v0, Lcmd;->b:Ldhi;

    sget-object v7, Ldho;->bU:Ldhj;

    invoke-interface {v6, v7}, Ldhi;->l(Ldhj;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v0, Lcmd;->U:Ljvs;

    invoke-interface {v6}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_1

    :cond_1
    iget v6, v0, Lcmd;->Q:I

    :goto_1
    iget v7, v0, Lcmd;->R:I

    iget-object v8, v0, Lcmd;->T:Limq;

    iget-object v9, v0, Lcmd;->B:Lklv;

    sget-object v10, Lklv;->a:Lklv;

    if-ne v9, v10, :cond_2

    const/4 v9, 0x1

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    :goto_2
    iget-object v10, v0, Lcmd;->b:Ldhi;

    invoke-static {v6, v7, v8, v9, v10}, Lcea;->a(IILimq;ZLdhi;)I

    move-result v6

    sget-object v7, Lpau;->b:Lpau;

    invoke-virtual {v7}, Lnws;->O()Lnwn;

    move-result-object v7

    int-to-long v8, v2

    const-string v10, "CAMERA/mode"

    invoke-static {v7, v10, v8, v9}, Lcmd;->C(Lnwn;Ljava/lang/String;J)V

    int-to-long v8, v6

    const-string v10, "metadata/image_rotation_degrees"

    invoke-static {v7, v10, v8, v9}, Lcmd;->C(Lnwn;Ljava/lang/String;J)V

    iget-object v8, v0, Lcmd;->I:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    int-to-long v8, v8

    const-string v10, "smarts/portrait"

    invoke-static {v7, v10, v8, v9}, Lcmd;->C(Lnwn;Ljava/lang/String;J)V

    iget-object v8, v0, Lcmd;->J:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    int-to-long v8, v8

    const-string v10, "smarts/long_exposure"

    invoke-static {v7, v10, v8, v9}, Lcmd;->C(Lnwn;Ljava/lang/String;J)V

    iget-object v8, v0, Lcmd;->K:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    int-to-long v8, v8

    const-string v10, "smarts/imax"

    invoke-static {v7, v10, v8, v9}, Lcmd;->C(Lnwn;Ljava/lang/String;J)V

    iget-object v8, v0, Lcmd;->V:Lnaa;

    iget-object v9, v8, Lnaa;->a:Ljava/lang/Object;

    check-cast v9, Lmqp;

    invoke-virtual {v9}, Lmqp;->g()Z

    move-result v9

    const-wide/16 v10, 0x0

    if-nez v9, :cond_3

    sget-object v8, Lmpx;->a:Lmpx;

    goto :goto_3

    :cond_3
    iget-object v8, v8, Lnaa;->a:Ljava/lang/Object;

    check-cast v8, Lmqp;

    invoke-virtual {v8}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v8}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object v8

    :goto_3
    invoke-virtual {v8}, Lmqp;->g()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v8}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    const-string v9, "ICA/labels"

    invoke-static {v7, v9, v8}, Lcmd;->A(Lnwn;Ljava/lang/String;Ljava/lang/Iterable;)V

    :cond_4
    iget-object v8, v0, Lcmd;->V:Lnaa;

    iget-object v9, v8, Lnaa;->a:Ljava/lang/Object;

    check-cast v9, Lmqp;

    invoke-virtual {v9}, Lmqp;->g()Z

    move-result v9

    const-wide/16 v12, 0x1

    if-nez v9, :cond_5

    sget-object v8, Lmpx;->a:Lmpx;

    goto :goto_4

    :cond_5
    iget-object v8, v8, Lnaa;->a:Ljava/lang/Object;

    check-cast v8, Lmqp;

    invoke-virtual {v8}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v8}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object v8

    :goto_4
    invoke-virtual {v8}, Lmqp;->g()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v8}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Iterable;

    const-string v14, "ICA/embeddings"

    invoke-static {v7, v14, v9}, Lcmd;->A(Lnwn;Ljava/lang/String;Ljava/lang/Iterable;)V

    invoke-virtual {v8}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    :cond_6
    iget-object v8, v0, Lcmd;->l:Lmqp;

    check-cast v8, Lmqt;

    iget-object v8, v8, Lmqt;->a:Ljava/lang/Object;

    check-cast v8, Ldsy;

    invoke-interface {v8}, Ldsy;->e()Z

    move-result v8

    if-nez v8, :cond_7

    iget-object v8, v0, Lcmd;->l:Lmqp;

    check-cast v8, Lmqt;

    iget-object v8, v8, Lmqt;->a:Ljava/lang/Object;

    check-cast v8, Ldsy;

    invoke-interface {v8}, Ldsy;->d()Ldsv;

    move-result-object v8

    invoke-static {v8}, Lfjo;->a(Ldsv;)Lfjo;

    move-result-object v8

    goto :goto_5

    :cond_7
    const/4 v8, 0x0

    :goto_5
    iget-object v14, v0, Lcmd;->B:Lklv;

    if-eqz v14, :cond_c

    sget-object v15, Lklv;->a:Lklv;

    if-ne v14, v15, :cond_8

    const/4 v14, 0x1

    goto :goto_6

    :cond_8
    const/4 v14, 0x0

    :goto_6
    int-to-long v9, v14

    const-string v11, "CAMERA/front"

    invoke-static {v7, v11, v9, v10}, Lcmd;->C(Lnwn;Ljava/lang/String;J)V

    iget-object v9, v0, Lcmd;->t:Lgzm;

    if-eqz v9, :cond_a

    sget-object v10, Lgzd;->s:Lgzu;

    invoke-interface {v9, v10}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-ne v14, v3, :cond_9

    iget-object v9, v0, Lcmd;->t:Lgzm;

    sget-object v10, Lgzd;->t:Lgzu;

    invoke-interface {v9, v10}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    goto :goto_7

    :cond_9
    :goto_7
    const-string v10, "on"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    int-to-long v9, v9

    const-string v11, "CAMERA/flash"

    invoke-static {v7, v11, v9, v10}, Lcmd;->C(Lnwn;Ljava/lang/String;J)V

    :cond_a
    if-eqz v8, :cond_c

    iget v8, v8, Lfjo;->b:F

    const/high16 v9, 0x428c0000    # 70.0f

    cmpl-float v8, v8, v9

    if-lez v8, :cond_b

    iget-object v8, v0, Lcmd;->B:Lklv;

    sget-object v9, Lklv;->a:Lklv;

    if-eq v8, v9, :cond_b

    const/4 v8, 0x1

    goto :goto_8

    :cond_b
    const/4 v8, 0x0

    :goto_8
    int-to-long v8, v8

    const-string v10, "CAMERA/to_ground"

    invoke-static {v7, v10, v8, v9}, Lcmd;->C(Lnwn;Ljava/lang/String;J)V

    :cond_c
    new-array v8, v3, [F

    iget-object v9, v0, Lcmd;->L:Ljvs;

    invoke-interface {v9}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    aput v9, v8, v5

    const-string v9, "CAMERA/zoom"

    invoke-static {v7, v9, v8}, Lcmd;->B(Lnwn;Ljava/lang/String;[F)V

    iget-object v8, v0, Lcmd;->l:Lmqp;

    check-cast v8, Lmqt;

    iget-object v8, v8, Lmqt;->a:Ljava/lang/Object;

    check-cast v8, Ldsy;

    invoke-interface {v8}, Ldsy;->e()Z

    move-result v8

    if-eqz v8, :cond_d

    goto :goto_b

    :cond_d
    iget-object v8, v0, Lcmd;->l:Lmqp;

    check-cast v8, Lmqt;

    iget-object v8, v8, Lmqt;->a:Ljava/lang/Object;

    check-cast v8, Ldsy;

    iget v9, v0, Lcmd;->y:I

    if-ltz v9, :cond_e

    const/4 v10, 0x1

    goto :goto_9

    :cond_e
    const/4 v10, 0x0

    :goto_9
    invoke-static {v10}, Lmoz;->e(Z)V

    invoke-interface {v8}, Ldsy;->b()J

    move-result-wide v10

    invoke-interface {v8, v10, v11, v9}, Ldsy;->f(JI)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    new-array v10, v9, [F

    new-array v11, v9, [F

    new-array v14, v9, [F

    add-int/lit8 v16, v9, -0x1

    move/from16 v12, v16

    const/4 v13, 0x0

    :goto_a
    if-ge v13, v9, :cond_f

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ldsv;

    invoke-static/range {v16 .. v16}, Lfjo;->a(Ldsv;)Lfjo;

    move-result-object v15

    iget v5, v15, Lfjo;->b:F

    aput v5, v10, v13

    iget v5, v15, Lfjo;->c:F

    aput v5, v11, v13

    iget v5, v15, Lfjo;->a:I

    int-to-float v5, v5

    aput v5, v14, v13

    add-int/2addr v12, v4

    add-int/lit8 v13, v13, 0x1

    const/4 v5, 0x0

    goto :goto_a

    :cond_f
    const-string v4, "imu/pitch_buffer"

    invoke-static {v7, v4, v10}, Lcmd;->B(Lnwn;Ljava/lang/String;[F)V

    const-string v4, "imu/roll_buffer"

    invoke-static {v7, v4, v11}, Lcmd;->B(Lnwn;Ljava/lang/String;[F)V

    const-string v4, "imu/rotation_buffer"

    invoke-static {v7, v4, v14}, Lcmd;->B(Lnwn;Ljava/lang/String;[F)V

    int-to-long v4, v9

    const-string v8, "imu/buffer_size"

    invoke-static {v7, v8, v4, v5}, Lcmd;->C(Lnwn;Ljava/lang/String;J)V

    :goto_b
    iget-object v4, v0, Lcmd;->m:Lmqp;

    check-cast v4, Lmqt;

    iget-object v4, v4, Lmqt;->a:Ljava/lang/Object;

    check-cast v4, Ldsy;

    invoke-interface {v4}, Ldsy;->e()Z

    move-result v4

    if-nez v4, :cond_10

    iget-object v4, v0, Lcmd;->m:Lmqp;

    check-cast v4, Lmqt;

    iget-object v4, v4, Lmqt;->a:Ljava/lang/Object;

    check-cast v4, Ldsy;

    invoke-interface {v4}, Ldsy;->d()Ldsv;

    new-instance v9, Lfjq;

    iget-object v4, v0, Lcmd;->m:Lmqp;

    check-cast v4, Lmqt;

    iget-object v4, v4, Lmqt;->a:Ljava/lang/Object;

    check-cast v4, Ldsy;

    invoke-interface {v4}, Ldsy;->d()Ldsv;

    move-result-object v4

    iget-object v4, v4, Ldsv;->a:[F

    invoke-direct {v9, v4}, Lfjq;-><init>([F)V

    goto :goto_c

    :cond_10
    const/4 v9, 0x0

    :goto_c
    if-eqz v9, :cond_11

    invoke-static {v9}, Ldgw;->d(Lfjq;)Landroid/util/Pair;

    move-result-object v4

    new-array v5, v3, [F

    iget-object v8, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    const/4 v9, 0x0

    aput v8, v5, v9

    const-string v8, "imu/pitch_radius"

    invoke-static {v7, v8, v5}, Lcmd;->B(Lnwn;Ljava/lang/String;[F)V

    new-array v5, v3, [F

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    aput v4, v5, v9

    const-string v4, "imu/yaw_radius"

    invoke-static {v7, v4, v5}, Lcmd;->B(Lnwn;Ljava/lang/String;[F)V

    :cond_11
    iget-object v4, v0, Lcmd;->n:Ldsy;

    const-string v5, "frame/topshot_score"

    invoke-static {v4, v5, v7}, Lcmd;->E(Ldsy;Ljava/lang/String;Lnwn;)V

    iget-object v4, v0, Lcmd;->o:Ldsy;

    const-string v5, "frame/face_quality"

    invoke-static {v4, v5, v7}, Lcmd;->E(Ldsy;Ljava/lang/String;Lnwn;)V

    iget-object v4, v0, Lcmd;->p:Ldsy;

    const-string v5, "frame/aesthetic_score"

    invoke-static {v4, v5, v7}, Lcmd;->E(Ldsy;Ljava/lang/String;Lnwn;)V

    sget-object v4, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v8, v0, Lcmd;->x:Lkrn;

    invoke-interface {v8}, Lkrn;->a()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    const-string v8, "CAMERA/timestamp"

    invoke-static {v7, v8, v4, v5}, Lcmd;->C(Lnwn;Ljava/lang/String;J)V

    iget-object v4, v0, Lcmd;->w:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    if-eqz v4, :cond_14

    iget-boolean v5, v4, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->c:Z

    if-eqz v5, :cond_12

    goto :goto_e

    :cond_12
    invoke-virtual {v4}, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->getActivityOnCreateStartNs()J

    move-result-wide v4

    const-wide/16 v8, -0x1

    cmp-long v10, v4, v8

    if-eqz v10, :cond_14

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v8

    iget-wide v10, v0, Lcmd;->F:J

    cmp-long v12, v10, v4

    if-eqz v12, :cond_13

    iput-wide v4, v0, Lcmd;->E:J

    sget-object v10, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v11, v0, Lcmd;->E:J

    sub-long v11, v8, v11

    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v10

    const-string v12, "CAMERA/first_capture_since_session_start_timing"

    invoke-static {v7, v12, v10, v11}, Lcmd;->C(Lnwn;Ljava/lang/String;J)V

    goto :goto_d

    :cond_13
    sget-object v10, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v11, v0, Lcmd;->E:J

    sub-long v11, v8, v11

    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v10

    const-string v12, "CAMERA/capture_intervals"

    invoke-static {v7, v12, v10, v11}, Lcmd;->C(Lnwn;Ljava/lang/String;J)V

    :goto_d
    iput-wide v4, v0, Lcmd;->F:J

    iput-wide v8, v0, Lcmd;->E:J

    :cond_14
    :goto_e
    invoke-direct {v0, v7, v6}, Lcmd;->D(Lnwn;I)V

    iget-wide v4, v0, Lcmd;->j:J

    const-string v8, "tap/count"

    invoke-static {v7, v8, v4, v5}, Lcmd;->C(Lnwn;Ljava/lang/String;J)V

    iget-object v4, v0, Lcmd;->H:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const/16 v5, 0xa

    if-eqz v4, :cond_15

    goto/16 :goto_11

    :cond_15
    iget-object v4, v0, Lcmd;->H:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget-object v8, v0, Lcmd;->H:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_16

    iget-object v8, v0, Lcmd;->H:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v4

    goto :goto_f

    :cond_16
    const/4 v8, 0x0

    :goto_f
    new-array v9, v4, [F

    new-array v10, v4, [F

    new-array v11, v4, [F

    new-array v12, v4, [F

    const/4 v13, 0x0

    :goto_10
    if-ge v13, v4, :cond_17

    iget-object v14, v0, Lcmd;->H:Ljava/util/List;

    add-int v15, v13, v8

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/RectF;

    new-instance v15, Landroid/graphics/PointF;

    iget v5, v14, Landroid/graphics/RectF;->left:F

    iget v3, v14, Landroid/graphics/RectF;->top:F

    invoke-direct {v15, v5, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-static {v15, v6}, Lkof;->a(Landroid/graphics/PointF;I)Landroid/graphics/PointF;

    move-result-object v3

    new-instance v5, Landroid/graphics/PointF;

    iget v15, v14, Landroid/graphics/RectF;->right:F

    move/from16 v16, v4

    iget v4, v14, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v5, v15, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-static {v5, v6}, Lkof;->a(Landroid/graphics/PointF;I)Landroid/graphics/PointF;

    move-result-object v4

    iget v5, v3, Landroid/graphics/PointF;->x:F

    iget v15, v4, Landroid/graphics/PointF;->x:F

    invoke-static {v5, v15}, Ljava/lang/Math;->min(FF)F

    move-result v5

    aput v5, v9, v13

    iget v5, v3, Landroid/graphics/PointF;->y:F

    iget v15, v4, Landroid/graphics/PointF;->y:F

    invoke-static {v5, v15}, Ljava/lang/Math;->min(FF)F

    move-result v5

    aput v5, v10, v13

    iget v5, v3, Landroid/graphics/PointF;->x:F

    iget v15, v4, Landroid/graphics/PointF;->x:F

    invoke-static {v5, v15}, Ljava/lang/Math;->max(FF)F

    move-result v5

    aput v5, v11, v13

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    aput v3, v12, v13

    iget v3, v14, Landroid/graphics/RectF;->left:F

    iget v3, v14, Landroid/graphics/RectF;->top:F

    iget v3, v14, Landroid/graphics/RectF;->right:F

    iget v3, v14, Landroid/graphics/RectF;->bottom:F

    add-int/lit8 v13, v13, 0x1

    move/from16 v4, v16

    const/4 v3, 0x1

    const/16 v5, 0xa

    goto :goto_10

    :cond_17
    const-string v3, "tracking/cancelled/left"

    invoke-static {v7, v3, v9}, Lcmd;->B(Lnwn;Ljava/lang/String;[F)V

    const-string v3, "tracking/cancelled/top"

    invoke-static {v7, v3, v10}, Lcmd;->B(Lnwn;Ljava/lang/String;[F)V

    const-string v3, "tracking/cancelled/right"

    invoke-static {v7, v3, v11}, Lcmd;->B(Lnwn;Ljava/lang/String;[F)V

    const-string v3, "tracking/cancelled/bottom"

    invoke-static {v7, v3, v12}, Lcmd;->B(Lnwn;Ljava/lang/String;[F)V

    :goto_11
    iget-object v3, v0, Lcmd;->A:Lgrw;

    if-eqz v3, :cond_25

    const/4 v4, 0x1

    new-array v5, v4, [F

    iget v8, v3, Lgrw;->h:F

    const/4 v9, 0x0

    aput v8, v5, v9

    const-string v8, "metadata/focal_length"

    invoke-static {v7, v8, v5}, Lcmd;->B(Lnwn;Ljava/lang/String;[F)V

    new-array v5, v4, [F

    iget v8, v3, Lgrw;->i:F

    aput v8, v5, v9

    const-string v8, "metadata/focal_distance"

    invoke-static {v7, v8, v5}, Lcmd;->B(Lnwn;Ljava/lang/String;[F)V

    new-array v5, v4, [F

    iget v8, v3, Lgrw;->A:F

    aput v8, v5, v9

    const-string v8, "metadata/fnumber"

    invoke-static {v7, v8, v5}, Lcmd;->B(Lnwn;Ljava/lang/String;[F)V

    new-array v5, v4, [F

    iget v4, v3, Lgrw;->p:F

    aput v4, v5, v9

    const-string v4, "metadata/subject_motion"

    invoke-static {v7, v4, v5}, Lcmd;->B(Lnwn;Ljava/lang/String;[F)V

    iget v4, v3, Lgrw;->x:I

    int-to-long v4, v4

    const-string v8, "metadata/auto_white_balance_mode"

    invoke-static {v7, v8, v4, v5}, Lcmd;->C(Lnwn;Ljava/lang/String;J)V

    iget-boolean v4, v3, Lgrw;->z:Z

    const/4 v5, 0x1

    if-eq v5, v4, :cond_18

    const-wide/16 v4, 0x0

    goto :goto_12

    :cond_18
    const-wide/16 v4, 0x1

    :goto_12
    const-string v8, "metadata/auto_white_balance_lock"

    invoke-static {v7, v8, v4, v5}, Lcmd;->C(Lnwn;Ljava/lang/String;J)V

    iget-byte v4, v3, Lgrw;->B:B

    invoke-static {v4}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v8, "metadata/jpeg_quality"

    invoke-static {v7, v8, v4, v5}, Lcmd;->C(Lnwn;Ljava/lang/String;J)V

    iget-object v4, v3, Lgrw;->C:[Landroid/hardware/camera2/params/MeteringRectangle;

    const/16 v5, 0xb4

    if-eqz v4, :cond_1b

    array-length v8, v4

    if-lez v8, :cond_1b

    iget-object v8, v0, Lcmd;->D:Landroid/graphics/Rect;

    if-eqz v8, :cond_1b

    const/4 v9, 0x0

    aget-object v4, v4, v9

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    iget-object v9, v0, Lcmd;->D:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-virtual {v4}, Landroid/hardware/camera2/params/MeteringRectangle;->getWidth()I

    move-result v10

    int-to-float v10, v10

    int-to-float v8, v8

    invoke-virtual {v4}, Landroid/hardware/camera2/params/MeteringRectangle;->getHeight()I

    move-result v11

    int-to-float v11, v11

    int-to-float v9, v9

    invoke-virtual {v4}, Landroid/hardware/camera2/params/MeteringRectangle;->getX()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v4}, Landroid/hardware/camera2/params/MeteringRectangle;->getY()I

    move-result v4

    int-to-float v4, v4

    new-instance v13, Landroid/graphics/PointF;

    div-float/2addr v12, v8

    div-float/2addr v4, v9

    invoke-direct {v13, v12, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-static {v13, v6}, Lkof;->a(Landroid/graphics/PointF;I)Landroid/graphics/PointF;

    move-result-object v13

    div-float/2addr v11, v9

    div-float/2addr v10, v8

    new-instance v8, Landroid/graphics/PointF;

    add-float/2addr v12, v10

    add-float/2addr v4, v11

    invoke-direct {v8, v12, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-static {v8, v6}, Lkof;->a(Landroid/graphics/PointF;I)Landroid/graphics/PointF;

    move-result-object v4

    const/4 v8, 0x1

    new-array v9, v8, [F

    iget v12, v13, Landroid/graphics/PointF;->x:F

    iget v14, v4, Landroid/graphics/PointF;->x:F

    invoke-static {v12, v14}, Ljava/lang/Math;->min(FF)F

    move-result v12

    const/4 v14, 0x0

    aput v12, v9, v14

    const-string v12, "AF/left_x"

    invoke-static {v7, v12, v9}, Lcmd;->B(Lnwn;Ljava/lang/String;[F)V

    new-array v9, v8, [F

    iget v8, v13, Landroid/graphics/PointF;->y:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-static {v8, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    aput v4, v9, v14

    const-string v4, "AF/upper_y"

    invoke-static {v7, v4, v9}, Lcmd;->B(Lnwn;Ljava/lang/String;[F)V

    const-string v4, "AF/height"

    const-string v8, "AF/width"

    if-eqz v6, :cond_1a

    if-ne v6, v5, :cond_19

    const/4 v9, 0x1

    const/4 v13, 0x0

    goto :goto_13

    :cond_19
    const/4 v9, 0x1

    new-array v12, v9, [F

    const/4 v13, 0x0

    aput v10, v12, v13

    invoke-static {v7, v4, v12}, Lcmd;->B(Lnwn;Ljava/lang/String;[F)V

    new-array v4, v9, [F

    aput v11, v4, v13

    invoke-static {v7, v8, v4}, Lcmd;->B(Lnwn;Ljava/lang/String;[F)V

    goto :goto_14

    :cond_1a
    const/4 v9, 0x1

    const/4 v13, 0x0

    :goto_13
    new-array v12, v9, [F

    aput v10, v12, v13

    invoke-static {v7, v8, v12}, Lcmd;->B(Lnwn;Ljava/lang/String;[F)V

    new-array v8, v9, [F

    aput v11, v8, v13

    invoke-static {v7, v4, v8}, Lcmd;->B(Lnwn;Ljava/lang/String;[F)V

    :cond_1b
    :goto_14
    iget v4, v3, Lgrw;->w:I

    int-to-long v8, v4

    const-string v4, "AF/mode"

    invoke-static {v7, v4, v8, v9}, Lcmd;->C(Lnwn;Ljava/lang/String;J)V

    iget-object v4, v0, Lcmd;->s:Lmul;

    const-string v8, "EXPOSURE/buffer"

    invoke-static {v7, v8, v4}, Lcmd;->A(Lnwn;Ljava/lang/String;Ljava/lang/Iterable;)V

    iget-object v4, v0, Lcmd;->s:Lmul;

    invoke-virtual {v4}, Lmuo;->size()I

    move-result v4

    int-to-long v8, v4

    const-string v4, "EXPOSURE/buffer_size"

    invoke-static {v7, v4, v8, v9}, Lcmd;->C(Lnwn;Ljava/lang/String;J)V

    iget-object v4, v0, Lcmd;->B:Lklv;

    if-eqz v4, :cond_1d

    sget-object v8, Lklv;->a:Lklv;

    if-ne v4, v8, :cond_1c

    iget-object v4, v0, Lcmd;->b:Ldhi;

    sget-object v8, Ldhu;->d:Ldhj;

    invoke-interface {v4, v8}, Ldhi;->h(Ldhj;)Lj$/util/Optional;

    move-result-object v4

    goto :goto_15

    :cond_1c
    iget-object v4, v0, Lcmd;->b:Ldhi;

    sget-object v8, Ldhu;->e:Ldhj;

    invoke-interface {v4, v8}, Ldhi;->h(Ldhj;)Lj$/util/Optional;

    move-result-object v4

    :goto_15
    const/4 v8, 0x1

    new-array v9, v8, [F

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v4, v8}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/4 v8, 0x0

    aput v4, v9, v8

    const-string v4, "EXPOSURE/max"

    invoke-static {v7, v4, v9}, Lcmd;->B(Lnwn;Ljava/lang/String;[F)V

    goto :goto_16

    :cond_1d
    const/4 v8, 0x0

    :goto_16
    iget v4, v3, Lgrw;->v:I

    int-to-long v9, v4

    const-string v4, "AE/mode"

    invoke-static {v7, v4, v9, v10}, Lcmd;->C(Lnwn;Ljava/lang/String;J)V

    iget-boolean v4, v3, Lgrw;->y:Z

    const/4 v9, 0x1

    if-eq v9, v4, :cond_1e

    const-wide/16 v10, 0x0

    goto :goto_17

    :cond_1e
    const-wide/16 v10, 0x1

    :goto_17
    const-string v4, "AE/lock"

    invoke-static {v7, v4, v10, v11}, Lcmd;->C(Lnwn;Ljava/lang/String;J)V

    iget-object v4, v3, Lgrw;->q:[Lgrz;

    if-eqz v4, :cond_24

    iget-object v3, v3, Lgrw;->o:Landroid/graphics/Rect;

    if-eqz v3, :cond_24

    array-length v9, v4

    int-to-long v10, v9

    const-string v12, "FACE/num"

    invoke-static {v7, v12, v10, v11}, Lcmd;->C(Lnwn;Ljava/lang/String;J)V

    sget-object v10, Lamx;->c:Lamx;

    invoke-static {v4, v10}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/16 v10, 0xa

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    new-array v10, v9, [F

    new-array v11, v9, [F

    new-array v12, v9, [F

    new-array v13, v9, [F

    const/4 v14, 0x0

    :goto_18
    if-ge v14, v9, :cond_21

    aget-object v15, v4, v14

    iget-object v15, v15, Lgrz;->a:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v16, v4

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    move/from16 v17, v2

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v15}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    move/from16 v18, v9

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v15}, Landroid/graphics/Rect;->centerY()I

    move-result v15

    int-to-float v15, v15

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    move-object/from16 v19, v3

    new-instance v3, Landroid/graphics/PointF;

    div-float/2addr v1, v9

    div-float/2addr v15, v0

    invoke-direct {v3, v1, v15}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-static {v3, v6}, Lkof;->a(Landroid/graphics/PointF;I)Landroid/graphics/PointF;

    move-result-object v0

    div-float/2addr v4, v2

    div-float/2addr v8, v5

    if-eqz v6, :cond_20

    const/16 v1, 0xb4

    if-ne v6, v1, :cond_1f

    goto :goto_19

    :cond_1f
    aput v4, v10, v14

    aput v8, v11, v14

    goto :goto_1a

    :cond_20
    const/16 v1, 0xb4

    :goto_19
    aput v8, v10, v14

    aput v4, v11, v14

    :goto_1a
    iget v2, v0, Landroid/graphics/PointF;->x:F

    aput v2, v12, v14

    iget v0, v0, Landroid/graphics/PointF;->y:F

    aput v0, v13, v14

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v4, v16

    move/from16 v2, v17

    move/from16 v9, v18

    move-object/from16 v3, v19

    const/16 v5, 0xb4

    const/4 v8, 0x0

    goto :goto_18

    :cond_21
    move/from16 v17, v2

    move/from16 v18, v9

    const-string v0, "FACE/width"

    invoke-static {v7, v0, v10}, Lcmd;->B(Lnwn;Ljava/lang/String;[F)V

    const-string v0, "FACE/height"

    invoke-static {v7, v0, v11}, Lcmd;->B(Lnwn;Ljava/lang/String;[F)V

    const-string v0, "FACE/center_x"

    invoke-static {v7, v0, v12}, Lcmd;->B(Lnwn;Ljava/lang/String;[F)V

    const-string v0, "FACE/center_y"

    invoke-static {v7, v0, v13}, Lcmd;->B(Lnwn;Ljava/lang/String;[F)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcmd;->M:Ljwb;

    invoke-interface {v1}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v1, v0, Lcmd;->q:Ldsy;

    invoke-interface {v1}, Ldsy;->e()Z

    move-result v2

    if-nez v2, :cond_26

    invoke-interface {v1}, Ldsy;->d()Ldsv;

    invoke-interface {v1}, Ldsy;->d()Ldsv;

    move-result-object v2

    iget-object v2, v2, Ldsv;->a:[F

    array-length v2, v2

    move/from16 v3, v18

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    new-array v3, v2, [F

    const/4 v5, 0x0

    :goto_1b
    if-ge v5, v2, :cond_23

    invoke-interface {v1}, Ldsy;->d()Ldsv;

    move-result-object v4

    invoke-virtual {v4, v5}, Ldsv;->b(I)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_22

    goto :goto_1c

    :cond_22
    invoke-interface {v1}, Ldsy;->d()Ldsv;

    move-result-object v4

    invoke-virtual {v4, v5}, Ldsv;->b(I)F

    move-result v4

    aput v4, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    :cond_23
    const-string v1, "FACE/familiarity"

    invoke-static {v7, v1, v3}, Lcmd;->B(Lnwn;Ljava/lang/String;[F)V

    int-to-long v1, v2

    const-string v3, "FACE/familiarity/num"

    invoke-static {v7, v3, v1, v2}, Lcmd;->C(Lnwn;Ljava/lang/String;J)V

    goto :goto_1c

    :cond_24
    move/from16 v17, v2

    goto :goto_1c

    :cond_25
    move/from16 v17, v2

    :cond_26
    :goto_1c
    iget-boolean v1, v0, Lcmd;->N:Z

    if-eqz v1, :cond_27

    iget-object v1, v0, Lcmd;->k:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    const-string v3, "session/id"

    invoke-static {v7, v3, v1, v2}, Lcmd;->C(Lnwn;Ljava/lang/String;J)V

    :cond_27
    iget-object v1, v0, Lcmd;->z:Lcoh;

    move-object/from16 v2, p2

    iget-object v2, v2, Lgxt;->b:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcoh;->a(Landroid/net/Uri;)Lmqp;

    move-result-object v1

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcmd;->d:Lcnt;

    iget-object v3, v0, Lcmd;->k:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    invoke-interface {v2, v1, v3, v4}, Lcnt;->b(Ljava/lang/String;J)Lnou;

    move-result-object v1

    invoke-static {v1}, Lnoo;->q(Lnou;)Lnoo;

    move-result-object v1

    new-instance v2, Lcmb;

    move/from16 v3, v17

    invoke-direct {v2, v0, v3, v6, v7}, Lcmb;-><init>(Lcmd;IILnwn;)V

    iget-object v3, v0, Lcmd;->h:Ljava/util/concurrent/ExecutorService;

    invoke-static {v1, v2, v3}, Lnnf;->j(Lnou;Lnno;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v1

    new-instance v2, Lcmc;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lcmc;-><init>(Lcmd;I)V

    iget-object v3, v0, Lcmd;->h:Ljava/util/concurrent/ExecutorService;

    invoke-static {v1, v2, v3}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    :cond_28
    invoke-direct/range {p0 .. p0}, Lcmd;->y()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_4
        0x3 -> :sswitch_4
        0x5 -> :sswitch_3
        0xa -> :sswitch_2
        0xb -> :sswitch_3
        0xc -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method public final synthetic r(Lgxy;)V
    .locals 0

    return-void
.end method

.method public final s()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized t()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcmd;->G:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcmd;->G:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget-object v1, p0, Lcmd;->H:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcmd;->G:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized u(Landroid/graphics/RectF;FLhrg;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iget-object p2, p0, Lcmd;->G:Ljava/util/Queue;

    invoke-interface {p2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final v()V
    .locals 0

    return-void
.end method

.method public final w()V
    .locals 0

    return-void
.end method

.method public final synthetic x(Lgxy;)V
    .locals 0

    return-void
.end method
