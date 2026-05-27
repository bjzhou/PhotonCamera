.class public final Lhjf;
.super Ljava/lang/Object;

# interfaces
.implements Lgxw;


# static fields
.field private static final g:Lnak;


# instance fields
.field public a:J

.field public b:J

.field public c:J

.field public d:J

.field public e:J

.field public f:Ljava/util/List;

.field private final h:Lfbz;

.field private final i:Lgxy;

.field private j:Lgya;

.field private k:J

.field private l:J

.field private m:J

.field private n:J

.field private o:J

.field private p:J

.field private q:Z

.field private r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/stats/CaptureSessionTrace"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lhjf;->g:Lnak;

    return-void
.end method

.method public constructor <init>(Lfbz;Lgxy;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lhjf;->q:Z

    iput-boolean v0, p0, Lhjf;->r:Z

    iput-object p1, p0, Lhjf;->h:Lfbz;

    iput-object p2, p0, Lhjf;->i:Lgxy;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-boolean v0, p0, Lhjf;->q:Z

    if-nez v0, :cond_0

    sget-object v0, Lhjf;->g:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    invoke-static {}, Lkba;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onCaptureFinalized invoked without the final result being set!%s"

    const/16 v3, 0xe6b

    invoke-static {v0, v2, v1, v3}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c(Lfce;)V
    .locals 3

    iget-boolean v0, p0, Lhjf;->r:Z

    if-eqz v0, :cond_0

    sget-object p1, Lhjf;->g:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    invoke-static {}, Lkba;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCaptureStarted invoked after stated event was logged!%s"

    const/16 v2, 0xe75

    invoke-static {p1, v1, v0, v2}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhjf;->r:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lhjf;->a:J

    iget-object v2, p1, Lfce;->a:Lgya;

    iput-object v2, p0, Lhjf;->j:Lgya;

    iget-object v2, p0, Lhjf;->h:Lfbz;

    invoke-interface {v2, v0, v1, p1}, Lfbz;->t(JLfce;)V

    return-void
.end method

.method public final d(Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lhjf;->l:J

    return-void
.end method

.method public final e()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lhjf;->m:J

    return-void
.end method

.method public final f(Lmqp;)V
    .locals 2

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhke;

    invoke-virtual {v0}, Lhke;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lhjf;->o:J

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lhke;

    invoke-virtual {p1}, Lhke;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lhjf;->p:J

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lhjf;->k:J

    return-void
.end method

.method public final g(IILjava/lang/Throwable;)V
    .locals 8

    iget-boolean v0, p0, Lhjf;->r:Z

    if-nez v0, :cond_0

    sget-object p1, Lhjf;->g:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    invoke-static {}, Lkba;->b()Ljava/lang/String;

    move-result-object p2

    const-string p3, "onCaptureCanceled invoked before capture was started!%s"

    const/16 v0, 0xe66

    invoke-static {p1, p3, p2, v0}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lhjf;->q:Z

    if-eqz v0, :cond_1

    sget-object p1, Lhjf;->g:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    invoke-static {}, Lkba;->b()Ljava/lang/String;

    move-result-object p2

    const-string p3, "onCaptureCanceled invoked after final event was logged!%s"

    const/16 v0, 0xe65

    invoke-static {p1, p3, p2, v0}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhjf;->q:Z

    iget-object v1, p0, Lhjf;->h:Lfbz;

    iget-wide v2, p0, Lhjf;->a:J

    iget-object v4, p0, Lhjf;->j:Lgya;

    move v5, p1

    move v6, p2

    move-object v7, p3

    invoke-interface/range {v1 .. v7}, Lfbz;->af(JLgya;IILjava/lang/Throwable;)V

    return-void
.end method

.method public final h(IILjava/lang/Throwable;)V
    .locals 8

    iget-boolean v0, p0, Lhjf;->r:Z

    if-nez v0, :cond_0

    sget-object p1, Lhjf;->g:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    invoke-static {}, Lkba;->b()Ljava/lang/String;

    move-result-object p2

    const-string p3, "onCaptureFailed invoked before capture was started!%s"

    const/16 v0, 0xe69

    invoke-static {p1, p3, p2, v0}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lhjf;->q:Z

    if-eqz v0, :cond_1

    sget-object p1, Lhjf;->g:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    invoke-static {}, Lkba;->b()Ljava/lang/String;

    move-result-object p2

    const-string p3, "onCaptureFailed invoked after final event was logged!%s"

    const/16 v0, 0xe68

    invoke-static {p1, p3, p2, v0}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhjf;->q:Z

    iget-object v1, p0, Lhjf;->h:Lfbz;

    iget-wide v2, p0, Lhjf;->a:J

    iget-object v4, p0, Lhjf;->j:Lgya;

    move v5, p1

    move v6, p2

    move-object v7, p3

    invoke-interface/range {v1 .. v7}, Lfbz;->ag(JLgya;IILjava/lang/Throwable;)V

    return-void
.end method

.method public final i(II)V
    .locals 31

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lhjf;->r:Z

    if-nez v1, :cond_0

    sget-object v1, Lhjf;->g:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    invoke-static {}, Lkba;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onCapturePersisted invoked before capture was started!%s"

    const/16 v4, 0xe70

    invoke-static {v1, v3, v2, v4}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    return-void

    :cond_0
    iget-boolean v1, v0, Lhjf;->q:Z

    if-eqz v1, :cond_1

    sget-object v1, Lhjf;->g:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    invoke-static {}, Lkba;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onCapturePersisted invoked after final event was logged!%s"

    const/16 v4, 0xe6f

    invoke-static {v1, v3, v2, v4}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    return-void

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Lhjf;->q:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    iput-wide v1, v0, Lhjf;->n:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v2, v0, Lhjf;->n:J

    iget-wide v4, v0, Lhjf;->a:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v2, v0, Lhjf;->b:J

    iget-wide v4, v0, Lhjf;->a:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v2, v0, Lhjf;->n:J

    iget-wide v4, v0, Lhjf;->c:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    iget-object v4, v0, Lhjf;->h:Lfbz;

    iget-wide v5, v0, Lhjf;->o:J

    iget-wide v7, v0, Lhjf;->p:J

    iget-wide v9, v0, Lhjf;->a:J

    iget-wide v11, v0, Lhjf;->k:J

    iget-wide v13, v0, Lhjf;->l:J

    iget-wide v1, v0, Lhjf;->m:J

    move-wide v15, v1

    iget-wide v1, v0, Lhjf;->b:J

    move-wide/from16 v17, v1

    iget-wide v1, v0, Lhjf;->c:J

    move-wide/from16 v19, v1

    iget-wide v1, v0, Lhjf;->d:J

    move-wide/from16 v21, v1

    iget-wide v1, v0, Lhjf;->e:J

    move-wide/from16 v23, v1

    iget-object v1, v0, Lhjf;->f:Ljava/util/List;

    move-object/from16 v25, v1

    iget-wide v1, v0, Lhjf;->n:J

    move-wide/from16 v26, v1

    iget-object v1, v0, Lhjf;->j:Lgya;

    move-object/from16 v28, v1

    move/from16 v29, p1

    move/from16 v30, p2

    invoke-interface/range {v4 .. v30}, Lfbz;->ah(JJJJJJJJJJLjava/util/List;JLgya;II)V

    return-void
.end method

.method public final j(II)V
    .locals 8

    iget-boolean v0, p0, Lhjf;->r:Z

    if-nez v0, :cond_0

    sget-object p1, Lhjf;->g:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    invoke-static {}, Lkba;->b()Ljava/lang/String;

    move-result-object p2

    const-string v0, "onCaptureStartCommitted invoked before capture was started!%s"

    const/16 v1, 0xe73

    invoke-static {p1, v0, p2, v1}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lhjf;->q:Z

    if-eqz v0, :cond_1

    sget-object p1, Lhjf;->g:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    invoke-static {}, Lkba;->b()Ljava/lang/String;

    move-result-object p2

    const-string v0, "onCaptureStartCommitted invoked after final event was logged!%s"

    const/16 v1, 0xe72

    invoke-static {p1, v0, p2, v1}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    return-void

    :cond_1
    iget-object v2, p0, Lhjf;->h:Lfbz;

    iget-wide v3, p0, Lhjf;->a:J

    iget-object v5, p0, Lhjf;->j:Lgya;

    move v6, p1

    move v7, p2

    invoke-interface/range {v2 .. v7}, Lfbz;->ai(JLgya;II)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lmoz;->y(Ljava/lang/Object;)Lmqo;

    move-result-object v0

    iget-object v1, p0, Lhjf;->i:Lgxy;

    const-string v2, "shotId"

    invoke-virtual {v0, v2, v1}, Lmqo;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-wide v1, p0, Lhjf;->a:J

    const-string v3, "CaptureStartTimeNs"

    invoke-virtual {v0, v3, v1, v2}, Lmqo;->f(Ljava/lang/String;J)V

    iget-wide v1, p0, Lhjf;->o:J

    const-string v3, "ShutterButtonDownTimeNs"

    invoke-virtual {v0, v3, v1, v2}, Lmqo;->f(Ljava/lang/String;J)V

    iget-wide v1, p0, Lhjf;->p:J

    const-string v3, "ShutterButtonUpTimeNs"

    invoke-virtual {v0, v3, v1, v2}, Lmqo;->f(Ljava/lang/String;J)V

    iget-wide v1, p0, Lhjf;->k:J

    const-string v3, "TinyThumbTimeNs"

    invoke-virtual {v0, v3, v1, v2}, Lmqo;->f(Ljava/lang/String;J)V

    iget-wide v1, p0, Lhjf;->l:J

    const-string v3, "MediumThumbTimeNs"

    invoke-virtual {v0, v3, v1, v2}, Lmqo;->f(Ljava/lang/String;J)V

    iget-wide v1, p0, Lhjf;->b:J

    const-string v3, "ProcessingStartedTimeNs"

    invoke-virtual {v0, v3, v1, v2}, Lmqo;->f(Ljava/lang/String;J)V

    iget-wide v1, p0, Lhjf;->c:J

    const-string v3, "ProcessingCompleteTimeNs"

    invoke-virtual {v0, v3, v1, v2}, Lmqo;->f(Ljava/lang/String;J)V

    iget-wide v1, p0, Lhjf;->n:J

    const-string v3, "CapturePersistedTimeNs"

    invoke-virtual {v0, v3, v1, v2}, Lmqo;->f(Ljava/lang/String;J)V

    iget-object v1, p0, Lhjf;->j:Lgya;

    const-string v2, "SessionType"

    invoke-virtual {v0, v2, v1}, Lmqo;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lmqo;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
