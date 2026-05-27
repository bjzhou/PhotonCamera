.class public final Lehc;
.super Ljava/lang/Object;

# interfaces
.implements Lnoj;


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public constructor <init>(Lefh;JI)V
    .locals 0

    iput p4, p0, Lehc;->c:I

    iput-object p1, p0, Lehc;->b:Ljava/lang/Object;

    iput-wide p2, p0, Lehc;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lehe;JI)V
    .locals 0

    iput p4, p0, Lehc;->c:I

    iput-object p1, p0, Lehc;->b:Ljava/lang/Object;

    iput-wide p2, p0, Lehc;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lffp;JI)V
    .locals 0

    iput p4, p0, Lehc;->c:I

    iput-object p1, p0, Lehc;->b:Ljava/lang/Object;

    iput-wide p2, p0, Lehc;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lhba;JI)V
    .locals 0

    iput p4, p0, Lehc;->c:I

    iput-object p1, p0, Lehc;->b:Ljava/lang/Object;

    iput-wide p2, p0, Lehc;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 4

    iget v0, p0, Lehc;->c:I

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lehc;->a:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lehc;->b:Ljava/lang/Object;

    check-cast v2, Lhba;

    iget-object v2, v2, Lhba;->s:Lkbf;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lkbf;->a()V

    goto/16 :goto_0

    :pswitch_0
    sget-object p1, Lffp;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    const-string v0, "Cannot get final shutter timestamp from microvideo as it failed to start!"

    const/16 v1, 0x87e

    invoke-static {p1, v0, v1}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void

    :pswitch_1
    sget-object v0, Lefi;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    invoke-interface {v0, p1}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const/16 v0, 0x570

    invoke-interface {p1, v0}, Lnah;->G(I)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    iget-object v0, p0, Lehc;->b:Ljava/lang/Object;

    check-cast v0, Lefh;

    iget-object v0, v0, Lefh;->c:Ljava/lang/String;

    iget-wide v1, p0, Lehc;->a:J

    const-string v3, "[%s] Fusion effect failed for shot %d"

    invoke-interface {p1, v3, v0, v1, v2}, Lnah;->y(Ljava/lang/String;Ljava/lang/Object;J)V

    iget-object p1, p0, Lehc;->b:Ljava/lang/Object;

    check-cast p1, Lefh;

    iget-object p1, p1, Lefh;->i:Lnwn;

    iget-object v0, p1, Lnwn;->b:Lnws;

    invoke-virtual {v0}, Lnws;->ac()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lnwn;->p()V

    :cond_0
    iget-object p1, p1, Lnwn;->b:Lnws;

    check-cast p1, Lnib;

    sget-object v0, Lnib;->e:Lnib;

    const/4 v0, 0x3

    iput v0, p1, Lnib;->c:I

    iget v0, p1, Lnib;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p1, Lnib;->a:I

    iget-object p1, p0, Lehc;->b:Ljava/lang/Object;

    check-cast p1, Lefh;

    invoke-static {p1}, Lefh;->h(Lefh;)V

    iget-object p1, p0, Lehc;->b:Ljava/lang/Object;

    iget-wide v0, p0, Lehc;->a:J

    check-cast p1, Lefh;

    invoke-virtual {p1, v0, v1}, Lefh;->f(J)V

    return-void

    :pswitch_2
    sget-object v0, Lehf;->b:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    invoke-interface {v0, p1}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const/16 v0, 0x5b4

    invoke-interface {p1, v0}, Lnah;->G(I)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const-string v0, "Portrait effect failed for shot %d"

    iget-wide v1, p0, Lehc;->a:J

    invoke-interface {p1, v0, v1, v2}, Lnah;->q(Ljava/lang/String;J)V

    iget-object p1, p0, Lehc;->b:Ljava/lang/Object;

    check-cast p1, Lehe;

    invoke-static {p1}, Lehe;->g(Lehe;)V

    iget-object p1, p0, Lehc;->b:Ljava/lang/Object;

    iget-wide v0, p0, Lehc;->a:J

    sget-object v2, Lmpx;->a:Lmpx;

    check-cast p1, Lehe;

    invoke-virtual {p1, v0, v1, v2}, Lehe;->f(JLmqp;)V

    return-void

    :cond_1
    :goto_0
    sget-object v2, Lhba;->a:Lnak;

    invoke-virtual {v2}, Lnaf;->b()Lnaz;

    move-result-object v2

    check-cast v2, Lnah;

    invoke-interface {v2, p1}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const/16 v2, 0xd56

    invoke-interface {p1, v2}, Lnah;->G(I)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const-string v2, "HAL failed to restart after %dms due to an exception."

    invoke-interface {p1, v2, v0, v1}, Lnah;->q(Ljava/lang/String;J)V

    iget-object p1, p0, Lehc;->b:Ljava/lang/Object;

    check-cast p1, Lhba;

    iget-object p1, p1, Lhba;->c:Ldin;

    sget-object v0, Ldin;->c:Ldin;

    invoke-virtual {p1, v0}, Ldin;->b(Ldin;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lehc;->b:Ljava/lang/Object;

    check-cast p1, Lhba;

    iget-object p1, p1, Lhba;->u:Ldja;

    invoke-virtual {p1}, Ldja;->A()V

    :cond_2
    iget-object p1, p0, Lehc;->b:Ljava/lang/Object;

    check-cast p1, Lhba;

    iget-object p1, p1, Lhba;->q:Lnph;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnph;->e(Ljava/lang/Object;)Z

    iget-object p1, p0, Lehc;->b:Ljava/lang/Object;

    check-cast p1, Lhba;

    iget-object p1, p1, Lhba;->k:Lhbf;

    sget-object v0, Lkbo;->m:Lkbo;

    iget v0, v0, Lkbo;->u:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lhbf;->b(II)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic b(Ljava/lang/Object;)V
    .locals 8

    iget v0, p0, Lehc;->c:I

    const/4 v1, 0x4

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ldmy;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lehc;->a:J

    sub-long/2addr v2, v4

    iget-object v0, p0, Lehc;->b:Ljava/lang/Object;

    check-cast v0, Lhba;

    iget-object v0, v0, Lhba;->s:Lkbf;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lkbf;->a()V

    goto :goto_0

    :pswitch_0
    check-cast p1, Lffo;

    iget-object v0, p0, Lehc;->b:Ljava/lang/Object;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v3, p0, Lehc;->a:J

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    check-cast v0, Lffp;

    iget-object v0, v0, Lffp;->b:Ljava/util/concurrent/Executor;

    new-instance v4, Lepm;

    invoke-direct {v4, p1, v2, v3, v1}, Lepm;-><init>(Lffo;JI)V

    invoke-interface {v0, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_1
    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    :cond_0
    return-void

    :pswitch_2
    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    :cond_1
    return-void

    :cond_2
    :goto_0
    iget-boolean v0, p1, Ldmy;->a:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lehc;->b:Ljava/lang/Object;

    check-cast p1, Lhba;

    iget-object p1, p1, Lhba;->k:Lhbf;

    invoke-virtual {p1, v4, v5, v5}, Lhbf;->a(ZII)V

    goto :goto_4

    :cond_3
    iget-object v0, p1, Ldmy;->c:Ljava/lang/Exception;

    iget-object p1, p1, Ldmy;->b:Lkbo;

    if-eqz p1, :cond_4

    iget v5, p1, Lkbo;->u:I

    goto :goto_1

    :cond_4
    :goto_1
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lkbo;->c()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_5
    const-string p1, ""

    :goto_2
    sget-object v6, Lhba;->a:Lnak;

    invoke-virtual {v6}, Lnaf;->c()Lnaz;

    move-result-object v6

    check-cast v6, Lnah;

    invoke-interface {v6, v0}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object v6

    check-cast v6, Lnah;

    const/16 v7, 0xd57

    invoke-interface {v6, v7}, Lnah;->G(I)Lnaz;

    move-result-object v6

    check-cast v6, Lnah;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v7, "HAL failed to restart after %dms due to error (%d): %s"

    invoke-interface {v6, v7, v2, v3, p1}, Lnah;->B(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lehc;->b:Ljava/lang/Object;

    check-cast p1, Lhba;

    iget-object p1, p1, Lhba;->c:Ldin;

    sget-object v2, Ldin;->c:Ldin;

    invoke-virtual {p1, v2}, Ldin;->b(Ldin;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lehc;->b:Ljava/lang/Object;

    check-cast p1, Lhba;

    iget-object p1, p1, Lhba;->u:Ldja;

    invoke-virtual {p1}, Ldja;->A()V

    :cond_6
    instance-of p1, v0, Ljava/util/concurrent/TimeoutException;

    if-eqz p1, :cond_7

    const/4 v1, 0x7

    goto :goto_3

    :cond_7
    instance-of p1, v0, Ljava/lang/InterruptedException;

    if-eqz p1, :cond_8

    const/16 v1, 0x8

    goto :goto_3

    :cond_8
    instance-of p1, v0, Landroid/hardware/camera2/CameraAccessException;

    if-eqz p1, :cond_9

    goto :goto_3

    :cond_9
    const/4 v1, 0x3

    :goto_3
    iget-object p1, p0, Lehc;->b:Ljava/lang/Object;

    check-cast p1, Lhba;

    iget-object p1, p1, Lhba;->k:Lhbf;

    invoke-virtual {p1, v5, v1}, Lhbf;->b(II)V

    :goto_4
    iget-object p1, p0, Lehc;->b:Ljava/lang/Object;

    check-cast p1, Lhba;

    iget-object p1, p1, Lhba;->q:Lnph;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnph;->e(Ljava/lang/Object;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
