.class public final Ldmb;
.super Ljava/lang/Object;

# interfaces
.implements Lgxw;


# instance fields
.field private final a:Lkbc;

.field private final b:J

.field private c:J

.field private d:Lkbf;

.field private final e:Lbkc;


# direct methods
.method public constructor <init>(Lbkc;Lkbc;Ldhi;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldmb;->e:Lbkc;

    iput-object p2, p0, Ldmb;->a:Lkbc;

    sget-object p1, Ldho;->x:Ldhk;

    invoke-interface {p3, p1}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Ldmb;->b:J

    return-void
.end method


# virtual methods
.method public final synthetic a()V
    .locals 0

    return-void
.end method

.method public final synthetic b()V
    .locals 0

    return-void
.end method

.method public final c(Lfce;)V
    .locals 1

    iget-object p1, p0, Ldmb;->a:Lkbc;

    const-string v0, "Thumbnail.CaptureToTinyThumb"

    invoke-interface {p1, v0}, Lkbc;->a(Ljava/lang/String;)Lkbf;

    move-result-object p1

    iput-object p1, p0, Ldmb;->d:Lkbf;

    return-void
.end method

.method public final synthetic d(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public final e()V
    .locals 5

    iget-object v0, p0, Ldmb;->d:Lkbf;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkbf;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Ldmb;->d:Lkbf;

    :cond_0
    iget-wide v0, p0, Ldmb;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    iget-wide v0, p0, Ldmb;->c:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    iget-wide v3, p0, Ldmb;->c:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iget-wide v2, p0, Ldmb;->b:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    iget-object v0, p0, Ldmb;->e:Lbkc;

    invoke-virtual {v0}, Lbkc;->v()V

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method public final f(Lmqp;)V
    .locals 2

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lhke;

    invoke-virtual {p1}, Lhke;->d()J

    move-result-wide v0

    iput-wide v0, p0, Ldmb;->c:J

    :cond_0
    return-void
.end method

.method public final synthetic g(IILjava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final synthetic h(IILjava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final synthetic i(II)V
    .locals 0

    return-void
.end method

.method public final synthetic j(II)V
    .locals 0

    return-void
.end method
