.class public final Ldfo;
.super Ljava/lang/Object;

# interfaces
.implements Lknx;
.implements Lhdy;
.implements Lhds;


# static fields
.field public static final a:D

.field private static final u:Lnak;


# instance fields
.field private final A:Ldfr;

.field private B:Lmqp;

.field private C:Z

.field public final b:Lmqp;

.field public final c:Lgft;

.field public final d:[F

.field public final e:Limk;

.field public final f:[F

.field public final g:Limk;

.field public final h:Ldgm;

.field public final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public j:Lmqp;

.field public k:Lmqp;

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Lmqp;

.field public p:Lmqp;

.field public q:Ldfn;

.field public final r:Lejf;

.field public final s:Ljew;

.field public final t:Ljew;

.field private final v:Ljava/util/concurrent/ScheduledExecutorService;

.field private final w:Ljwb;

.field private final x:Z

.field private final y:Ldfv;

.field private final z:Ldgh;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "com/google/android/apps/camera/coach/CameraLockIndicator"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Ldfo;->u:Lnak;

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    sput-wide v0, Ldfo;->a:D

    return-void
.end method

.method public constructor <init>(Lmqp;Lejf;Lgft;Ljwb;Ljava/util/concurrent/ScheduledExecutorService;Ldhi;Ldfv;Ldfr;Ldgh;Lfbz;[B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p11, 0x10

    new-array v0, p11, [F

    iput-object v0, p0, Ldfo;->d:[F

    new-instance v0, Limk;

    invoke-direct {v0}, Limk;-><init>()V

    iput-object v0, p0, Ldfo;->e:Limk;

    new-instance v0, Ljew;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljew;-><init>([B)V

    iput-object v0, p0, Ldfo;->s:Ljew;

    new-array p11, p11, [F

    iput-object p11, p0, Ldfo;->f:[F

    new-instance p11, Limk;

    invoke-direct {p11}, Limk;-><init>()V

    iput-object p11, p0, Ldfo;->g:Limk;

    new-instance p11, Ljew;

    invoke-direct {p11, v1}, Ljew;-><init>([B)V

    iput-object p11, p0, Ldfo;->t:Ljew;

    new-instance p11, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p11, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p11, p0, Ldfo;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object p11, Lmpx;->a:Lmpx;

    iput-object p11, p0, Ldfo;->j:Lmqp;

    iput-object p11, p0, Ldfo;->k:Lmqp;

    iput-object p11, p0, Ldfo;->B:Lmqp;

    iput-boolean v0, p0, Ldfo;->l:Z

    iput-boolean v0, p0, Ldfo;->m:Z

    iput-boolean v0, p0, Ldfo;->n:Z

    iput-object p11, p0, Ldfo;->o:Lmqp;

    iput-object p11, p0, Ldfo;->p:Lmqp;

    iput-boolean v0, p0, Ldfo;->C:Z

    sget-object p11, Ldfl;->a:Ldfl;

    iput-object p11, p0, Ldfo;->q:Ldfn;

    iput-object p1, p0, Ldfo;->b:Lmqp;

    iput-object p5, p0, Ldfo;->v:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p3, p0, Ldfo;->c:Lgft;

    iput-object p2, p0, Ldfo;->r:Lejf;

    iput-object p4, p0, Ldfo;->w:Ljwb;

    new-instance p1, Ldgn;

    const/4 p2, 0x6

    invoke-direct {p1, p2, p10}, Ldgn;-><init>(ILfbz;)V

    iput-object p1, p0, Ldfo;->h:Ldgm;

    sget-object p1, Ldgv;->q:Ldhj;

    invoke-interface {p6, p1}, Ldhi;->l(Ldhj;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Ldgv;->n:Ldhj;

    invoke-interface {p6, p1}, Ldhi;->l(Ldhj;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    :goto_0
    iput-boolean v0, p0, Ldfo;->x:Z

    iput-object p7, p0, Ldfo;->y:Ldfv;

    iput-object p9, p0, Ldfo;->z:Ldgh;

    iput-object p8, p0, Ldfo;->A:Ldfr;

    return-void
.end method

.method public static j(FF)Z
    .locals 4

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double p0, v0, v2

    if-gez p0, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p0

    cmpg-double v0, p0, v2

    if-gez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final l()Z
    .locals 3

    iget-boolean v0, p0, Ldfo;->x:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Ldfo;->A:Ldfr;

    invoke-virtual {v0}, Ldfr;->a()Lmqp;

    move-result-object v0

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldfo;->A:Ldfr;

    invoke-virtual {v0}, Ldfr;->a()Lmqp;

    move-result-object v0

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcvm;

    iget-object v0, v0, Lcvm;->d:Ljava/lang/Object;

    check-cast v0, Lklw;

    invoke-virtual {v0}, Lklw;->k()Lklv;

    move-result-object v0

    sget-object v2, Lklv;->b:Lklv;

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
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

.method public final c()V
    .locals 3

    iget-object v0, p0, Ldfo;->k:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Ldfo;->j:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Ldfo;->l:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Ldfo;->k:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldfb;

    iget-object v1, v0, Ldfb;->e:Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Ldfb;->e:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    iget-object v1, v0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->d:Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ldfd;

    const/4 v2, 0x5

    invoke-direct {v1, v0, v2}, Ldfd;-><init>(Lcom/google/android/apps/camera/coach/CameraCoachHudView;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    iget-object v0, p0, Ldfo;->j:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lell;

    sget-object v1, Lelm;->e:Lelm;

    invoke-interface {v0, v1}, Lell;->k(Lelm;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldfo;->l:Z

    iput-boolean v0, p0, Ldfo;->m:Z

    sget-object v1, Ldfl;->b:Ldfl;

    iput-object v1, p0, Ldfo;->q:Ldfn;

    iget-object v1, p0, Ldfo;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput-boolean v0, p0, Ldfo;->n:Z

    iget-object v0, p0, Ldfo;->h:Ldgm;

    invoke-interface {v0}, Ldgm;->g()V

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method public final d()V
    .locals 2

    iget-boolean v0, p0, Ldfo;->l:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Ldfo;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldfo;->h:Ldgm;

    sget-object v1, Lnih;->c:Lnih;

    invoke-interface {v0, v1}, Ldgm;->c(Lnih;)V

    return-void

    :cond_0
    iget-object v0, p0, Ldfo;->h:Ldgm;

    sget-object v1, Lnih;->b:Lnih;

    invoke-interface {v0, v1}, Ldgm;->c(Lnih;)V

    :cond_1
    return-void
.end method

.method public final e()V
    .locals 2

    invoke-direct {p0}, Ldfo;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Ldfo;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldfo;->y:Ldfv;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ldfv;->f(Z)V

    iget-object v0, p0, Ldfo;->z:Ldgh;

    invoke-virtual {v0, v1}, Ldgh;->f(Z)V

    :cond_0
    iget-object v0, p0, Ldfo;->r:Lejf;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lejf;->a:Z

    sget-object v0, Lmpx;->a:Lmpx;

    iput-object v0, p0, Ldfo;->o:Lmqp;

    invoke-virtual {p0}, Ldfo;->c()V

    iput-boolean v1, p0, Ldfo;->C:Z

    sget-object v0, Ldfl;->c:Ldfl;

    iput-object v0, p0, Ldfo;->q:Ldfn;

    iget-object v0, p0, Ldfo;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    return-void
.end method

.method public final f(Ldfn;)V
    .locals 2

    invoke-direct {p0}, Ldfo;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Ldfo;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldfo;->y:Ldfv;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldfv;->f(Z)V

    iget-object v0, p0, Ldfo;->z:Ldgh;

    invoke-virtual {v0, v1}, Ldgh;->f(Z)V

    :cond_0
    iget-object v0, p0, Ldfo;->r:Lejf;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lejf;->a:Z

    iget-object v0, p0, Ldfo;->p:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ldfo;->u:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    const-string v0, "No camera pose data available."

    const/16 v1, 0x35e

    invoke-static {p1, v0, v1}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void

    :cond_1
    iget-object v0, p0, Ldfo;->o:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Ldfo;->p:Lmqp;

    iput-object v0, p0, Ldfo;->o:Lmqp;

    :cond_2
    iput-boolean v1, p0, Ldfo;->C:Z

    iput-object p1, p0, Ldfo;->q:Ldfn;

    :cond_3
    return-void
.end method

.method public final declared-synchronized g()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldfo;->B:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldfo;->B:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljuf;

    invoke-virtual {v0}, Ljuf;->close()V

    :cond_0
    new-instance v0, Ljuf;

    invoke-direct {v0}, Ljuf;-><init>()V

    iget-object v1, p0, Ldfo;->k:Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Ldfo;->k:Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldfb;

    new-instance v1, Ldfm;

    invoke-direct {v1, p0}, Ldfm;-><init>(Ldfo;)V

    iget-object v2, p0, Ldfo;->v:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v1, v2}, Ldfb;->e(Ljava/lang/Runnable;Ljava/util/concurrent/ScheduledExecutorService;)Lkad;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    :cond_1
    iget-object v1, p0, Ldfo;->w:Ljwb;

    new-instance v2, Lcze;

    const/16 v3, 0xe

    invoke-direct {v2, p0, v3}, Lcze;-><init>(Ldfo;I)V

    iget-object v3, p0, Ldfo;->v:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1, v2, v3}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    iget-object v1, p0, Ldfo;->c:Lgft;

    invoke-interface {v1, p0}, Lgft;->g(Lknx;)V

    new-instance v1, Ldei;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Ldei;-><init>(Ldfo;I)V

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    iget-object v1, p0, Ldfo;->h:Ldgm;

    invoke-interface {v1}, Ldgm;->a()V

    iget-object v1, p0, Ldfo;->h:Ldgm;

    new-instance v2, Ldei;

    const/4 v3, 0x6

    invoke-direct {v2, v1, v3}, Ldei;-><init>(Ldgm;I)V

    invoke-virtual {v0, v2}, Ljuf;->d(Lkad;)V

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    iput-object v0, p0, Ldfo;->B:Lmqp;

    iget-object v0, p0, Ldfo;->r:Lejf;

    invoke-virtual {v0}, Lejf;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final h(Lkab;)V
    .locals 2

    iget-object p1, p0, Ldfo;->v:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Ldfd;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Ldfd;-><init>(Ldfo;I)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final declared-synchronized i()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ldfo;->c()V

    iget-object v0, p0, Ldfo;->B:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldfo;->B:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljuf;

    invoke-virtual {v0}, Ljuf;->close()V

    sget-object v0, Lmpx;->a:Lmpx;

    iput-object v0, p0, Ldfo;->B:Lmqp;

    :cond_0
    iget-object v0, p0, Ldfo;->r:Lejf;

    invoke-virtual {v0}, Lejf;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final k()Z
    .locals 1

    iget-object v0, p0, Ldfo;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final v()V
    .locals 3

    iget-boolean v0, p0, Ldfo;->C:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ldfo;->v:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Ldfd;

    const/16 v2, 0x8

    invoke-direct {v1, p0, v2}, Ldfd;-><init>(Ldfo;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final w()V
    .locals 3

    iget-object v0, p0, Ldfo;->v:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Ldfd;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2}, Ldfd;-><init>(Ldfo;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
