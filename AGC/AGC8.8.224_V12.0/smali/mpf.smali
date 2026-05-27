.class public final Lmpf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;
.implements Lmpj;


# instance fields
.field public a:Lj$/time/Duration;

.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public d:Lmpk;

.field private e:Lj$/time/Instant;

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lmpf;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lmpf;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v0, Lj$/time/Instant;->EPOCH:Lj$/time/Instant;

    iput-object v0, p0, Lmpf;->e:Lj$/time/Instant;

    iput v1, p0, Lmpf;->f:I

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 7

    iget-object v0, p0, Lmpf;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lmpf;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_6

    const-wide/32 v0, 0x3b9aca00

    div-long v2, p1, v0

    mul-long v0, v0, v2

    sub-long/2addr p1, v0

    invoke-static {v2, v3, p1, p2}, Lj$/time/Instant;->ofEpochSecond(JJ)Lj$/time/Instant;

    move-result-object p1

    iget-object p2, p0, Lmpf;->e:Lj$/time/Instant;

    sget-object v0, Lj$/time/Instant;->EPOCH:Lj$/time/Instant;

    invoke-virtual {p2, v0}, Lj$/time/Instant;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iput-object p1, p0, Lmpf;->e:Lj$/time/Instant;

    :cond_0
    iget-object p2, p0, Lmpf;->e:Lj$/time/Instant;

    invoke-static {p2, p1}, Lj$/time/Duration;->between(Lj$/time/temporal/Temporal;Lj$/time/temporal/Temporal;)Lj$/time/Duration;

    move-result-object p1

    iget-object p2, p0, Lmpf;->a:Lj$/time/Duration;

    iget v0, p0, Lmpf;->f:I

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    invoke-virtual {p2, v0, v1}, Lj$/time/Duration;->multipliedBy(J)Lj$/time/Duration;

    move-result-object p2

    const-wide/32 v0, 0x1e8480

    invoke-virtual {p2, v0, v1}, Lj$/time/Duration;->minusNanos(J)Lj$/time/Duration;

    move-result-object p2

    invoke-virtual {p1, p2}, Lj$/time/Duration;->compareTo(Lj$/time/Duration;)I

    move-result p1

    if-ltz p1, :cond_6

    iget p1, p0, Lmpf;->f:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lmpf;->f:I

    iget-object p1, p0, Lmpf;->d:Lmpk;

    iget-object p2, p1, Lmpk;->b:Lmph;

    iget-boolean p2, p2, Lmph;->b:Z

    if-nez p2, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object p2, p1, Lmpk;->d:Lmpi;

    invoke-virtual {p2}, Lmpi;->b()V

    sget-object p2, Lnmh;->a:Lnmh;

    invoke-static {}, Lj$/time/Instant;->now()Lj$/time/Instant;

    move-result-object p2

    iget-object v0, p1, Lmpk;->h:Lj$/time/Instant;

    sget-object v1, Lj$/time/Instant;->EPOCH:Lj$/time/Instant;

    invoke-virtual {v0, v1}, Lj$/time/Instant;->isAfter(Lj$/time/Instant;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lmpk;->h:Lj$/time/Instant;

    invoke-static {v0, p2}, Lj$/time/Duration;->between(Lj$/time/temporal/Temporal;Lj$/time/temporal/Temporal;)Lj$/time/Duration;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lmpk;->b:Lmph;

    iget-object v0, v0, Lmph;->h:Lj$/time/Duration;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lj$/time/Duration;->plusSeconds(J)Lj$/time/Duration;

    move-result-object v0

    :goto_0
    iget-object v1, p1, Lmpk;->b:Lmph;

    iget-object v1, v1, Lmph;->h:Lj$/time/Duration;

    invoke-virtual {v0, v1}, Lj$/time/Duration;->compareTo(Lj$/time/Duration;)I

    move-result v0

    if-ltz v0, :cond_4

    iput-object p2, p1, Lmpk;->h:Lj$/time/Instant;

    iget-object p2, p1, Lmpk;->d:Lmpi;

    invoke-virtual {p2}, Lmpi;->a()D

    move-result-wide v0

    iget-object p2, p1, Lmpk;->b:Lmph;

    iget v2, p2, Lmph;->f:I

    int-to-double v2, v2

    iget p2, p2, Lmph;->g:I

    int-to-double v4, p2

    cmpg-double p2, v0, v2

    if-ltz p2, :cond_3

    cmpl-double p2, v0, v4

    if-lez p2, :cond_4

    :cond_3
    iget-object p2, p1, Lmpk;->k:Llhz;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StoredVideoFrameProcessor: current output FPS ("

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    double-to-int v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") is outside the allowed range ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    double-to-int v0, v2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    double-to-int v0, v4

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lmpk;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "%s"

    const/16 v2, 0x11e9

    invoke-static {v0, v1, p2, v2}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    sget-object p2, Lmpk;->a:Lnak;

    invoke-virtual {p2}, Lnaf;->c()Lnaz;

    move-result-object p2

    const-string v0, "SVFP: Output FPS warning"

    const/16 v1, 0x11ea

    invoke-static {p2, v0, v1}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    :cond_4
    :goto_1
    iget p2, p1, Lmpk;->j:I

    add-int/lit8 v0, p2, -0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_5

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object p2

    goto :goto_2

    :pswitch_0
    iget-object p2, p1, Lmpk;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmpl;

    invoke-static {p2}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object p2

    :goto_2
    iget-object p1, p1, Lmpk;->k:Llhz;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Licl;

    const/16 v2, 0xa

    invoke-direct {v0, p1, v2, v1, v1}, Licl;-><init>(Llhz;I[B[B)V

    invoke-virtual {p2, v0}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_3

    :cond_5
    throw v1

    :cond_6
    :goto_3
    iget-object p1, p0, Lmpf;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quitSafely()V

    return-void

    :cond_7
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
