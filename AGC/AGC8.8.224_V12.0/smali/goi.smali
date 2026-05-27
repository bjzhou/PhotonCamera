.class public final synthetic Lgoi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlex/gcam/base/function/LongConsumer;


# instance fields
.field public final synthetic a:Lnph;

.field public final synthetic b:Lehb;


# direct methods
.method public synthetic constructor <init>(Lnph;Lehb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgoi;->a:Lnph;

    iput-object p2, p0, Lgoi;->b:Lehb;

    return-void
.end method


# virtual methods
.method public final accept(J)V
    .locals 6

    iget-object v0, p0, Lgoi;->a:Lnph;

    iget-object v1, p0, Lgoi;->b:Lehb;

    sget-object v2, Lgop;->a:Lnak;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnph;->e(Ljava/lang/Object;)Z

    if-eqz v1, :cond_1

    iget-object v0, v1, Lehb;->d:Lehe;

    iget-object v0, v0, Lehe;->f:Lnwn;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, v1, Lehb;->d:Lehe;

    iget-wide v4, v4, Lehe;->b:J

    sub-long/2addr v2, v4

    iget-object v4, v0, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    long-to-int v3, v2

    iget-object v0, v0, Lnwn;->b:Lnws;

    check-cast v0, Lnki;

    sget-object v2, Lnki;->f:Lnki;

    iget v2, v0, Lnki;->a:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Lnki;->a:I

    iput v3, v0, Lnki;->c:I

    iget-object v0, v1, Lehb;->d:Lehe;

    invoke-static {v0}, Lehe;->g(Lehe;)V

    iget-object v0, v1, Lehb;->d:Lehe;

    sget-object v1, Lmpx;->a:Lmpx;

    invoke-virtual {v0, p1, p2, v1}, Lehe;->f(JLmqp;)V

    :cond_1
    return-void
.end method
