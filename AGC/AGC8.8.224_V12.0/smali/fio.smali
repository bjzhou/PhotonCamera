.class public final Lfio;
.super Ljava/lang/Object;

# interfaces
.implements Lfhy;
.implements Ldxm;


# static fields
.field private static final e:Lnak;


# instance fields
.field private final A:Lgxb;

.field private final B:Lkns;

.field private final C:Lbkb;

.field public final a:Landroid/media/MediaFormat;

.field public volatile b:Lkxy;

.field public c:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

.field public final d:Lva;

.field private final f:Ljava/util/concurrent/Executor;

.field private final g:Lgsp;

.field private final h:Leah;

.field private final i:Lmqp;

.field private final j:Lmqp;

.field private final k:Ldxl;

.field private final l:Lkaf;

.field private final m:Lfij;

.field private final n:Ljava/util/concurrent/atomic/AtomicLong;

.field private final o:Ljava/util/concurrent/atomic/AtomicLong;

.field private final p:Ljava/util/concurrent/atomic/AtomicLong;

.field private final q:Ljava/util/concurrent/atomic/AtomicLong;

.field private final r:Ljava/util/concurrent/atomic/AtomicLong;

.field private final s:Ljava/util/concurrent/atomic/AtomicLong;

.field private final t:Ljava/util/concurrent/atomic/AtomicLong;

.field private final u:Ljava/util/concurrent/atomic/AtomicLong;

.field private final v:Ljava/util/concurrent/atomic/AtomicLong;

.field private final w:Ljava/util/concurrent/atomic/AtomicLong;

.field private final x:Ljava/util/concurrent/atomic/AtomicLong;

.field private final y:Ljava/util/concurrent/atomic/AtomicLong;

.field private final z:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/microvideo/gyro/MotionDataProcessorImpl"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lfio;->e:Lnak;

    return-void
.end method

.method public constructor <init>(Leah;Lva;Ldxl;Lmqp;Lmqp;Ljava/util/concurrent/Executor;Lkaf;Lgsp;Lgxb;Lfij;Lbkb;Landroid/media/MediaFormat;Ldhi;[B[B[B[B[B)V
    .locals 4

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, -0x1

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v1, v0, Lfio;->n:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v1, v0, Lfio;->o:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v1, v0, Lfio;->p:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v1, v0, Lfio;->q:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v1, v0, Lfio;->r:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v1, v0, Lfio;->s:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v1, v0, Lfio;->t:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v1, v0, Lfio;->u:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v1, v0, Lfio;->v:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v1, v0, Lfio;->w:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v1, v0, Lfio;->x:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v1, v0, Lfio;->y:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v1, v0, Lfio;->z:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v1, Lkns;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lkns;-><init>([B[B)V

    iput-object v1, v0, Lfio;->B:Lkns;

    iput-object v2, v0, Lfio;->c:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    move-object v1, p1

    iput-object v1, v0, Lfio;->h:Leah;

    move-object v1, p2

    iput-object v1, v0, Lfio;->d:Lva;

    move-object v1, p4

    iput-object v1, v0, Lfio;->i:Lmqp;

    move-object v1, p5

    iput-object v1, v0, Lfio;->j:Lmqp;

    move-object v1, p6

    iput-object v1, v0, Lfio;->f:Ljava/util/concurrent/Executor;

    move-object v1, p8

    iput-object v1, v0, Lfio;->g:Lgsp;

    move-object v1, p9

    iput-object v1, v0, Lfio;->A:Lgxb;

    move-object v1, p3

    iput-object v1, v0, Lfio;->k:Ldxl;

    move-object v1, p7

    iput-object v1, v0, Lfio;->l:Lkaf;

    move-object v1, p10

    iput-object v1, v0, Lfio;->m:Lfij;

    move-object v1, p11

    iput-object v1, v0, Lfio;->C:Lbkb;

    move-object/from16 v1, p12

    iput-object v1, v0, Lfio;->a:Landroid/media/MediaFormat;

    sget-object v1, Ldhv;->a:Ldhk;

    invoke-interface/range {p13 .. p13}, Ldhi;->c()V

    return-void
.end method

.method private final g(Z)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-nez p1, :cond_1

    iget-object p1, p0, Lfio;->y:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long p1, v2, v4

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object p1, p0, Lfio;->p:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    iget-object p1, p0, Lfio;->o:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    iget-object p1, p0, Lfio;->t:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    iget-object p1, p0, Lfio;->u:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    iget-object p1, p0, Lfio;->n:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    iget-object p1, p0, Lfio;->w:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    iget-object p1, p0, Lfio;->q:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    iget-object p1, p0, Lfio;->v:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    iget-object p1, p0, Lfio;->z:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    iget-object p1, p0, Lfio;->x:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    iget-object p1, p0, Lfio;->r:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    iget-object p1, p0, Lfio;->s:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    iget-object p1, p0, Lfio;->B:Lkns;

    invoke-virtual {p1}, Lkns;->h()I

    iget-object p1, p0, Lfio;->y:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method


# virtual methods
.method public final b(Landroid/media/MediaCodec$BufferInfo;)V
    .locals 5

    iget-object v0, p0, Lfio;->q:Ljava/util/concurrent/atomic/AtomicLong;

    iget-wide v1, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v0, p0, Lfio;->v:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    iget-object v0, p0, Lfio;->B:Lkns;

    iget-wide v1, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    new-instance v3, Lfin;

    const/4 v4, 0x1

    invoke-direct {v3, p1, v4}, Lfin;-><init>(Landroid/media/MediaCodec$BufferInfo;I)V

    invoke-virtual {v0, v1, v2, v3}, Lkns;->i(JLfla;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lfio;->e:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v1, 0x91c

    invoke-interface {v0, v1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    iget-wide v1, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-string p1, "onEncoded(%d) was received but we weren\'t expecting this timestamp"

    invoke-interface {v0, p1, v1, v2}, Lnah;->q(Ljava/lang/String;J)V

    :cond_0
    iget-object p1, p0, Lfio;->f:Ljava/util/concurrent/Executor;

    new-instance v0, Lfib;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lfib;-><init>(Lfio;I)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final bX(Lgrw;)V
    .locals 6

    iget-object v0, p0, Lfio;->n:Ljava/util/concurrent/atomic/AtomicLong;

    iget-wide v1, p1, Lgrw;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v0, p0, Lfio;->w:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lfio;->g(Z)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v2, p1, Lgrw;->c:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    iget-object v3, p0, Lfio;->B:Lkns;

    invoke-virtual {v3}, Lkns;->h()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lfio;->B:Lkns;

    new-instance v4, Lfin;

    invoke-direct {v4, p1, v0}, Lfin;-><init>(Lgrw;I)V

    invoke-virtual {v3, v1, v2, v4}, Lkns;->i(JLfla;)Z

    :cond_0
    iget-wide v0, p1, Lgrw;->c:J

    iget-object p1, p0, Lfio;->B:Lkns;

    iget-object p1, p1, Lkns;->a:Ljava/lang/Object;

    check-cast p1, Lkte;

    invoke-virtual {p1}, Lkte;->l()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfil;

    iget-object v2, v2, Lfil;->a:Lfim;

    iget-wide v3, v2, Lfim;->b:J

    cmp-long v5, v0, v3

    if-gtz v5, :cond_2

    goto :goto_1

    :cond_2
    iget-boolean v3, v2, Lfim;->g:Z

    if-nez v3, :cond_1

    const/4 v3, 0x1

    iput-boolean v3, v2, Lfim;->g:Z

    goto :goto_0

    :cond_3
    :goto_1
    iget-object p1, p0, Lfio;->f:Ljava/util/concurrent/Executor;

    new-instance v0, Lfib;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lfib;-><init>(Lfio;I)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c(J)V
    .locals 5

    iget-object v0, p0, Lfio;->o:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    invoke-static {}, Lflb;->b()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lfio;->g(Z)V

    iget-object v0, p0, Lfio;->h:Leah;

    invoke-virtual {v0}, Leah;->e()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lfio;->u:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    iget-object v0, p0, Lfio;->l:Lkaf;

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Lfil;->d(Lkaf;JI)Lfil;

    move-result-object v0

    iget-object v2, p0, Lfio;->B:Lkns;

    invoke-virtual {v2, v0}, Lkns;->j(Lfil;)V

    iget-object v2, p0, Lfio;->n:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v4, p1, v2

    if-gez v4, :cond_1

    iget-object v2, v0, Lfil;->a:Lfim;

    iput-boolean v1, v2, Lfim;->g:Z

    :cond_1
    iget-object v1, p0, Lfio;->k:Ldxl;

    invoke-virtual {v1, p1, p2}, Ldxl;->a(J)Lgrw;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p2, v0, Lfil;->a:Lfim;

    iget-object p2, p2, Lfim;->c:Lnph;

    invoke-virtual {p2, p1}, Lnph;->e(Ljava/lang/Object;)Z

    :cond_2
    iget-object p1, p0, Lfio;->f:Ljava/util/concurrent/Executor;

    new-instance p2, Lfib;

    const/4 v0, 0x3

    invoke-direct {p2, p0, v0}, Lfib;-><init>(Lfio;I)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d(JLjava/util/List;)V
    .locals 2

    iget-object v0, p0, Lfio;->p:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    invoke-static {}, Lflb;->b()V

    iget-object v0, p0, Lfio;->l:Lkaf;

    const/4 v1, 0x2

    invoke-static {v0, p1, p2, v1}, Lfil;->d(Lkaf;JI)Lfil;

    move-result-object v0

    iget-object v1, v0, Lfil;->a:Lfim;

    iget-object v1, v1, Lfim;->f:Lnph;

    invoke-virtual {v1, p3}, Lnph;->e(Ljava/lang/Object;)Z

    iget-object p3, p0, Lfio;->B:Lkns;

    invoke-virtual {p3, v0}, Lkns;->j(Lfil;)V

    iget-object p3, p0, Lfio;->t:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    iget-object p3, p0, Lfio;->k:Ldxl;

    invoke-virtual {p3, p1, p2}, Ldxl;->a(J)Lgrw;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, v0, Lfil;->a:Lfim;

    iget-object p2, p2, Lfim;->c:Lnph;

    invoke-virtual {p2, p1}, Lnph;->e(Ljava/lang/Object;)Z

    :cond_0
    iget-object p1, p0, Lfio;->f:Ljava/util/concurrent/Executor;

    new-instance p2, Lfib;

    const/4 p3, 0x3

    invoke-direct {p2, p0, p3}, Lfib;-><init>(Lfio;I)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final e()V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lfio;->g(Z)V

    iget-object v0, p0, Lfio;->f:Ljava/util/concurrent/Executor;

    new-instance v1, Lfib;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lfib;-><init>(Lfio;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final f()V
    .locals 13

    :goto_0
    iget-object v0, p0, Lfio;->B:Lkns;

    invoke-virtual {v0}, Lkns;->h()I

    move-result v0

    if-lez v0, :cond_18

    iget-object v0, p0, Lfio;->B:Lkns;

    iget-object v1, v0, Lkns;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lkns;->a:Ljava/lang/Object;

    check-cast v2, Lkte;

    invoke-virtual {v2}, Lkte;->j()Lkad;

    move-result-object v2

    check-cast v2, Lfil;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lfil;->c()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, v0, Lkns;->a:Ljava/lang/Object;

    check-cast v0, Lkte;

    invoke-virtual {v0}, Lkte;->k()Lkad;

    move-result-object v0

    check-cast v0, Lfil;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lfil;->c()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, v0, Lfil;->a:Lfim;

    move-object v3, v0

    :cond_2
    :goto_1
    monitor-exit v1

    goto :goto_3

    :cond_3
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    if-eqz v3, :cond_18

    sget-boolean v0, Lfgk;->a:Z

    iget-object v0, v3, Lfim;->f:Lnph;

    invoke-virtual {v0}, Lnph;->isDone()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v3, Lfim;->f:Lnph;

    invoke-static {v0}, Lnsy;->K(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lfio;->h:Leah;

    iget-wide v1, v3, Lfim;->b:J

    iget-object v4, v3, Lfim;->c:Lnph;

    invoke-static {v4}, Lnsy;->K(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgrw;

    invoke-virtual {v0, v1, v2, v4}, Leah;->b(JLgrw;)Ljava/util/List;

    move-result-object v0

    :goto_4
    iget-object v1, p0, Lfio;->i:Lmqp;

    iget-wide v4, v3, Lfim;->b:J

    invoke-static {v1, v4, v5}, Lflb;->h(Lmqp;J)Lmqp;

    iget-object v1, p0, Lfio;->j:Lmqp;

    iget-wide v4, v3, Lfim;->b:J

    invoke-static {v1, v4, v5}, Lflb;->g(Lmqp;J)Lmqp;

    iget-object v1, p0, Lfio;->g:Lgsp;

    iget-wide v4, v3, Lfim;->b:J

    invoke-virtual {v1, v4, v5}, Lgsp;->d(J)Lgsl;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v2, p0, Lfio;->A:Lgxb;

    iget-wide v4, v1, Lgsl;->a:J

    invoke-virtual {v2, v4, v5}, Lgxb;->b(J)V

    :cond_5
    if-eqz v1, :cond_6

    iget-object v2, p0, Lfio;->A:Lgxb;

    iget-wide v4, v1, Lgsl;->a:J

    invoke-virtual {v2, v4, v5}, Lgxb;->c(J)V

    :cond_6
    iget-object v1, p0, Lfio;->m:Lfij;

    iget-object v2, v1, Lfij;->b:Lgvb;

    iget-object v4, v1, Lfij;->c:Lkli;

    invoke-interface {v4}, Lkli;->k()Lklv;

    move-result-object v4

    invoke-interface {v2, v4}, Lgvb;->h(Lklv;)Z

    move-result v2

    iget-object v1, v1, Lfij;->d:Lknz;

    invoke-virtual {v1}, Lknz;->a()Lkab;

    move-result-object v1

    sget-object v4, Lkab;->b:Lkab;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v1, v4, :cond_8

    sget-object v4, Lkab;->d:Lkab;

    if-ne v1, v4, :cond_7

    const/4 v1, 0x1

    goto :goto_5

    :cond_7
    const/4 v1, 0x0

    goto :goto_5

    :cond_8
    const/4 v1, 0x1

    :goto_5
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Llau;

    if-eqz v2, :cond_a

    if-eqz v1, :cond_9

    sget-object v8, Llau;->b:Llau;

    goto :goto_7

    :cond_9
    sget-object v8, Llau;->a:Llau;

    :goto_7
    invoke-virtual {v7, v8}, Llau;->c(Llau;)Llau;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_a
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_b
    sget-boolean v0, Lfgk;->a:Z

    sget-boolean v0, Lfgk;->a:Z

    iget-object v0, v3, Lfim;->d:Lnph;

    invoke-virtual {v0}, Lnph;->isDone()Z

    move-result v0

    invoke-static {v0}, Lmoz;->p(Z)V

    iget-object v0, v3, Lfim;->c:Lnph;

    invoke-virtual {v0}, Lnph;->isDone()Z

    move-result v0

    invoke-static {v0}, Lmoz;->p(Z)V

    :try_start_1
    iget-object v0, p0, Lfio;->C:Lbkb;

    sget-object v1, Loai;->h:Loai;

    invoke-virtual {v1}, Lnws;->O()Lnwn;

    move-result-object v1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    const/16 v7, 0x9

    mul-int/lit8 v2, v2, 0x9

    new-array v2, v2, [F

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v8, 0x0

    :cond_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Llau;

    invoke-virtual {v9}, Llau;->d()[F

    move-result-object v9

    const/4 v10, 0x0

    :goto_8
    if-ge v10, v7, :cond_c

    add-int/lit8 v11, v8, 0x1

    aget v12, v9, v10

    aput v12, v2, v8

    add-int/lit8 v10, v10, 0x1

    move v8, v11

    goto :goto_8

    :cond_d
    invoke-static {v2}, Lnsy;->X([F)Ljava/util/List;

    move-result-object v2

    iget-object v4, v1, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_e

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_e
    iget-object v4, v1, Lnwn;->b:Lnws;

    check-cast v4, Loai;

    iget-object v5, v4, Loai;->b:Lnwx;

    invoke-interface {v5}, Lnwx;->c()Z

    move-result v7

    if-nez v7, :cond_f

    invoke-static {v5}, Lnws;->R(Lnwx;)Lnwx;

    move-result-object v5

    iput-object v5, v4, Loai;->b:Lnwx;

    :cond_f
    iget-object v4, v4, Loai;->b:Lnwx;

    invoke-static {v2, v4}, Lnvd;->e(Ljava/lang/Iterable;Ljava/util/List;)V

    iget-object v2, v3, Lfim;->a:Lkaf;

    iget v2, v2, Lkaf;->a:I

    iget-object v4, v1, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_10

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_10
    iget-object v4, v1, Lnwn;->b:Lnws;

    move-object v5, v4

    check-cast v5, Loai;

    iget v7, v5, Loai;->a:I

    or-int/2addr v7, v6

    iput v7, v5, Loai;->a:I

    iput v2, v5, Loai;->c:I

    iget-object v2, v3, Lfim;->a:Lkaf;

    iget v2, v2, Lkaf;->b:I

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_11

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_11
    iget-object v4, v1, Lnwn;->b:Lnws;

    check-cast v4, Loai;

    iget v5, v4, Loai;->a:I

    const/4 v7, 0x2

    or-int/2addr v5, v7

    iput v5, v4, Loai;->a:I

    iput v2, v4, Loai;->d:I

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v4, v3, Lfim;->b:J

    sget-object v8, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v8}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    iget-object v2, v1, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_12

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_12
    iget-object v2, v1, Lnwn;->b:Lnws;

    check-cast v2, Loai;

    iget v8, v2, Loai;->a:I

    or-int/lit8 v8, v8, 0x4

    iput v8, v2, Loai;->a:I

    iput-wide v4, v2, Loai;->e:J

    iget-object v2, v3, Lfim;->d:Lnph;

    invoke-static {v2}, Lnsy;->K(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/2addr v2, v6

    if-eq v6, v2, :cond_13

    const/4 v2, 0x2

    goto :goto_9

    :cond_13
    const/4 v2, 0x3

    :goto_9
    iget-object v4, v1, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_14

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_14
    iget-object v4, v1, Lnwn;->b:Lnws;

    move-object v5, v4

    check-cast v5, Loai;

    add-int/lit8 v2, v2, -0x1

    iput v2, v5, Loai;->f:I

    iget v2, v5, Loai;->a:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v5, Loai;->a:I

    iget v2, v3, Lfim;->h:I

    add-int/lit8 v2, v2, -0x1

    packed-switch v2, :pswitch_data_0

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v2

    goto :goto_a

    :pswitch_0
    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_15

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_15
    iget-object v2, v1, Lnwn;->b:Lnws;

    check-cast v2, Loai;

    iput v7, v2, Loai;->g:I

    iget v4, v2, Loai;->a:I

    or-int/lit8 v4, v4, 0x40

    iput v4, v2, Loai;->a:I

    goto :goto_b

    :goto_a
    if-nez v2, :cond_16

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_16
    iget-object v2, v1, Lnwn;->b:Lnws;

    check-cast v2, Loai;

    iput v6, v2, Loai;->g:I

    iget v4, v2, Loai;->a:I

    or-int/lit8 v4, v4, 0x40

    iput v4, v2, Loai;->a:I

    :goto_b
    iget-object v0, v0, Lbkb;->a:Ljava/lang/Object;

    check-cast v0, Ldne;

    invoke-virtual {v0}, Ldne;->k()V

    invoke-virtual {v1}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Loai;

    invoke-virtual {v0}, Lnve;->J()[B

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v4, v3, Lfim;->b:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v9

    iget-object v1, v3, Lfim;->d:Lnph;

    invoke-static {v1}, Lnsy;->K(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaCodec$BufferInfo;

    iget v11, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const/4 v7, 0x0

    array-length v8, v0

    move-object v6, v1

    invoke-virtual/range {v6 .. v11}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, p0, Lfio;->b:Lkxy;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lfio;->b:Lkxy;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/nio/ByteBuffer;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-interface {v1, v2, v0}, Lkxy;->b(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    iget-object v0, p0, Lfio;->z:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    iget-object v0, p0, Lfio;->r:Ljava/util/concurrent/atomic/AtomicLong;

    iget-wide v1, v3, Lfim;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto/16 :goto_0

    :cond_17
    iget-object v0, p0, Lfio;->x:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    iget-object v0, p0, Lfio;->s:Ljava/util/concurrent/atomic/AtomicLong;

    iget-wide v1, v3, Lfim;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lfio;->e:Lnak;

    invoke-virtual {v1}, Lnaf;->b()Lnaz;

    move-result-object v1

    const-string v2, "Cannot serialize gyro data."

    const/16 v3, 0x91e

    invoke-static {v1, v2, v3, v0}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_18
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
