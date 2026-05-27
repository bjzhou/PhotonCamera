.class final Lgit;
.super Ljava/lang/Object;

# interfaces
.implements Lgxw;


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic b:Lnou;

.field final synthetic c:Lgio;

.field final synthetic d:Lgiv;

.field final synthetic e:Lgkr;


# direct methods
.method public constructor <init>(Lgiv;Ljava/util/concurrent/atomic/AtomicBoolean;Lnou;Lgio;Lgkr;[B[B)V
    .locals 0

    iput-object p1, p0, Lgit;->d:Lgiv;

    iput-object p2, p0, Lgit;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lgit;->b:Lnou;

    iput-object p4, p0, Lgit;->c:Lgio;

    iput-object p5, p0, Lgit;->e:Lgkr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a()V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 5

    iget-object v0, p0, Lgit;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgit;->b:Lnou;

    invoke-interface {v0, v1}, Lnou;->cancel(Z)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgit;->c:Lgio;

    iput-boolean v1, v0, Lgio;->c:Z

    iget-object v1, v0, Lgio;->e:Lnwn;

    if-eqz v1, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    iget-object v4, v1, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_1
    iget-object v1, v1, Lnwn;->b:Lnws;

    check-cast v1, Lngg;

    sget-object v4, Lngg;->d:Lngg;

    iget v4, v1, Lngg;->a:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v1, Lngg;->a:I

    iput-wide v2, v1, Lngg;->c:J

    :cond_2
    :try_start_0
    iget-object v0, v0, Lgio;->d:Lker;

    if-eqz v0, :cond_3

    check-cast v0, Lkgo;

    iget-object v0, v0, Lkgo;->a:Lkhd;

    invoke-virtual {v0}, Lkhd;->f()V

    goto :goto_0

    :cond_3
    sget-object v0, Lgio;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v1, 0xaa6

    invoke-interface {v0, v1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v1, "FrameServerSession not provided. Failed to abort capture."

    invoke-interface {v0, v1}, Lnah;->o(Ljava/lang/String;)V
    :try_end_0
    .catch Lkdf; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lgio;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->b()Lnaz;

    move-result-object v1

    const-string v2, "Failed to abort capture."

    const/16 v3, 0xaa7

    invoke-static {v1, v2, v3, v0}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    :goto_0
    iget-object v0, p0, Lgit;->d:Lgiv;

    iget-object v0, v0, Lgiv;->c:Landroidx/wear/ambient/AmbientDelegate;

    iget-object v0, v0, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    if-eqz v0, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    check-cast v0, Lnwn;

    iget-object v3, v0, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_4
    iget-object v0, v0, Lnwn;->b:Lnws;

    check-cast v0, Lnjw;

    sget-object v3, Lnjw;->g:Lnjw;

    iget v3, v0, Lnjw;->a:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v0, Lnjw;->a:I

    iput-wide v1, v0, Lnjw;->d:J

    :cond_5
    iget-object v0, p0, Lgit;->e:Lgkr;

    iget-object v0, v0, Lgkr;->b:Ljava/lang/Object;

    invoke-interface {v0}, Lfzz;->f()V

    return-void
.end method

.method public final synthetic c(Lfce;)V
    .locals 0

    return-void
.end method

.method public final synthetic d(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public final synthetic e()V
    .locals 0

    return-void
.end method

.method public final synthetic f(Lmqp;)V
    .locals 0

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
