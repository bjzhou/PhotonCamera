.class public final Lffn;
.super Ljava/lang/Object;

# interfaces
.implements Lnoj;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Ljava/lang/Object;

.field private final synthetic d:I


# direct methods
.method public constructor <init>(Lffp;Lffo;Ldqx;I[B[B)V
    .locals 0

    iput p4, p0, Lffn;->d:I

    iput-object p1, p0, Lffn;->c:Ljava/lang/Object;

    iput-object p2, p0, Lffn;->a:Ljava/lang/Object;

    iput-object p3, p0, Lffn;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lkaq;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput p4, p0, Lffn;->d:I

    iput-object p1, p0, Lffn;->b:Ljava/lang/Object;

    iput-object p2, p0, Lffn;->c:Ljava/lang/Object;

    iput-object p3, p0, Lffn;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 3

    iget v0, p0, Lffn;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lffn;->b:Ljava/lang/Object;

    iget-object v1, p0, Lffn;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lkaq;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lffn;->a:Ljava/lang/Object;

    check-cast v0, Lffo;

    iget-object v0, v0, Lffo;->n:Lkxv;

    invoke-interface {v0}, Lkxv;->b()Lnou;

    move-result-object v0

    invoke-interface {v0}, Lnou;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lffn;->a:Ljava/lang/Object;

    iget-object v1, p0, Lffn;->b:Ljava/lang/Object;

    check-cast v1, Ldqx;

    check-cast v0, Lffo;

    invoke-static {v0, p1, v1}, Lffp;->k(Lffo;Ljava/lang/Throwable;Ldqx;)V

    iget-object v0, p0, Lffn;->a:Ljava/lang/Object;

    check-cast v0, Lffo;

    iget-object v0, v0, Lffo;->j:Lgxl;

    invoke-interface {v0, p1}, Lgxl;->w(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lffn;->c:Ljava/lang/Object;

    iget-object v1, p0, Lffn;->a:Ljava/lang/Object;

    iget-object v2, p0, Lffn;->b:Ljava/lang/Object;

    check-cast v2, Ldqx;

    check-cast v1, Lffo;

    check-cast v0, Lffp;

    invoke-virtual {v0, v1, p1, v2}, Lffp;->h(Lffo;Ljava/lang/Throwable;Ldqx;)V

    iget-object v0, p0, Lffn;->a:Ljava/lang/Object;

    check-cast v0, Lffo;

    iget-object v0, v0, Lffo;->j:Lgxl;

    sget-object v1, Ligh;->a:Ligf;

    invoke-interface {v0, v1, p1}, Lgxl;->B(Ligf;Ljava/lang/Throwable;)V

    :goto_0
    iget-object p1, p0, Lffn;->c:Ljava/lang/Object;

    iget-object v0, p0, Lffn;->a:Ljava/lang/Object;

    check-cast v0, Lffo;

    check-cast p1, Lffp;

    invoke-virtual {p1, v0}, Lffp;->c(Lffo;)V

    iget-object p1, p0, Lffn;->a:Ljava/lang/Object;

    sget-object v0, Lmpx;->a:Lmpx;

    check-cast p1, Lffo;

    iput-object v0, p1, Lffo;->p:Lmqp;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 8

    iget p1, p0, Lffn;->d:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lffn;->b:Ljava/lang/Object;

    iget-object v0, p0, Lffn;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Lkaq;->f(Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lffn;->a:Ljava/lang/Object;

    check-cast p1, Lffo;

    iget-object p1, p1, Lffo;->d:Lfht;

    invoke-virtual {p1}, Lfht;->a()Lfht;

    move-result-object p1

    iget v0, p1, Lfht;->a:I

    if-nez v0, :cond_4

    sget-object p1, Lffp;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->b()Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const/16 v0, 0x87f

    invoke-interface {p1, v0}, Lnah;->G(I)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    iget-object v0, p0, Lffn;->a:Ljava/lang/Object;

    check-cast v0, Lffo;

    iget-object v0, v0, Lffo;->a:Lgxy;

    const-string v1, "No key video frames in long shot. Shot=%s"

    invoke-interface {p1, v1, v0}, Lnah;->r(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lffn;->a:Ljava/lang/Object;

    check-cast p1, Lffo;

    iget-boolean v0, p1, Lffo;->o:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lffo;->p:Lmqp;

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "No video frames in long shot. Shot=%s"

    if-nez p1, :cond_1

    iget-object v3, p0, Lffn;->c:Ljava/lang/Object;

    iget-object v4, p0, Lffn;->a:Ljava/lang/Object;

    new-instance v5, Ljava/lang/IllegalStateException;

    new-array v6, v1, [Ljava/lang/Object;

    check-cast v4, Lffo;

    iget-object v7, v4, Lffo;->a:Lgxy;

    aput-object v7, v6, v2

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lffn;->b:Ljava/lang/Object;

    check-cast v6, Ldqx;

    check-cast v3, Lffp;

    invoke-virtual {v3, v4, v5, v6}, Lffp;->h(Lffo;Ljava/lang/Throwable;Ldqx;)V

    :cond_1
    iget-object v3, p0, Lffn;->c:Ljava/lang/Object;

    iget-object v4, p0, Lffn;->a:Ljava/lang/Object;

    check-cast v4, Lffo;

    check-cast v3, Lffp;

    invoke-virtual {v3, v4}, Lffp;->c(Lffo;)V

    if-eqz p1, :cond_3

    iget-object p1, p0, Lffn;->a:Ljava/lang/Object;

    check-cast p1, Lffo;

    iget-object p1, p1, Lffo;->p:Lmqp;

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lffn;->c:Ljava/lang/Object;

    check-cast p1, Lffp;

    iget-object p1, p1, Lffp;->x:Lgkr;

    iget-object v0, p0, Lffn;->a:Ljava/lang/Object;

    check-cast v0, Lffo;

    iget-object v0, v0, Lffo;->p:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbkb;

    iget-object v0, v0, Lbkb;->a:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lgkr;->b(Lfmd;)V

    const-string p1, "No video frames available. Trigger backup shot."

    goto :goto_1

    :cond_2
    sget-object p1, Lffp;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    const-string v0, "Didn\'t take second shot since UI resources are missing"

    const/16 v1, 0x881

    invoke-static {p1, v0, v1}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    const-string p1, "No video frames available. Unable to trigger backup shot."

    :goto_1
    iget-object v0, p0, Lffn;->a:Ljava/lang/Object;

    check-cast v0, Lffo;

    iget-object v0, v0, Lffo;->j:Lgxl;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lgxl;->w(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lffn;->a:Ljava/lang/Object;

    check-cast p1, Lffo;

    iget-object v3, p1, Lffo;->a:Lgxy;

    iget-object p1, p1, Lffo;->j:Lgxl;

    sget-object v4, Ligh;->a:Ligf;

    new-instance v5, Ljava/lang/IllegalStateException;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v4, v5}, Lgxl;->B(Ligf;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    iget-wide v0, p1, Lfht;->d:J

    iget-wide v2, p1, Lfht;->c:J

    sub-long/2addr v0, v2

    iget-object p1, p0, Lffn;->c:Ljava/lang/Object;

    iget-object v2, p0, Lffn;->a:Ljava/lang/Object;

    iget-object v3, p0, Lffn;->b:Ljava/lang/Object;

    check-cast v3, Ldqx;

    check-cast v2, Lffo;

    check-cast p1, Lffp;

    invoke-virtual {p1, v2, v3, v0, v1}, Lffp;->j(Lffo;Ldqx;J)V

    :goto_2
    iget-object p1, p0, Lffn;->a:Ljava/lang/Object;

    sget-object v0, Lmpx;->a:Lmpx;

    check-cast p1, Lffo;

    iput-object v0, p1, Lffo;->p:Lmqp;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
