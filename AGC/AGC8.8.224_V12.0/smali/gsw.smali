.class public final Lgsw;
.super Ljava/lang/Object;


# instance fields
.field public final a:J

.field public final b:Lmqp;

.field public final c:F

.field public final d:Lmqp;

.field public final e:F

.field public final f:Lmqp;

.field public final g:Lmqp;


# direct methods
.method public constructor <init>(Lobe;Z)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Locp;->j:Llhj;

    invoke-virtual {p1, v0}, Lnwq;->e(Llhj;)V

    iget-object v1, p1, Lnwq;->l:Lnwj;

    iget-object v2, v0, Llhj;->b:Ljava/lang/Object;

    check-cast v2, Lnwr;

    invoke-virtual {v1, v2}, Lnwj;->k(Lnwr;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, v0, Llhj;->d:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Llhj;->b(Ljava/lang/Object;)V

    :goto_0
    check-cast v1, Locp;

    iget v0, p1, Lobe;->a:I

    and-int/lit16 v0, v0, 0x80

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    iget-wide v4, p1, Lobe;->i:J

    long-to-int v0, v4

    int-to-long v4, v0

    iput-wide v4, p0, Lgsw;->a:J

    if-eqz p2, :cond_2

    iget-wide p1, p1, Lobe;->j:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p1

    goto :goto_2

    :cond_2
    sget-object p1, Lmpx;->a:Lmpx;

    :goto_2
    iput-object p1, p0, Lgsw;->b:Lmqp;

    iget p1, v1, Locp;->d:F

    iput p1, p0, Lgsw;->c:F

    iget p1, v1, Locp;->e:F

    iget p1, v1, Locp;->f:F

    iget p1, v1, Locp;->a:I

    and-int/2addr p1, v2

    if-eqz p1, :cond_4

    iget-object p1, v1, Locp;->b:Locm;

    if-nez p1, :cond_3

    sget-object p1, Locm;->b:Locm;

    :cond_3
    iget-object p1, p1, Locm;->a:Lnwx;

    invoke-static {p1}, Lmvv;->j(Ljava/util/Collection;)Lmvv;

    move-result-object p1

    invoke-static {p1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p1

    goto :goto_3

    :cond_4
    sget-object p1, Lmpx;->a:Lmpx;

    :goto_3
    iput-object p1, p0, Lgsw;->g:Lmqp;

    iget p1, v1, Locp;->a:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_6

    iget-object p1, v1, Locp;->c:Locm;

    if-nez p1, :cond_5

    sget-object p1, Locm;->b:Locm;

    :cond_5
    iget-object p1, p1, Locm;->a:Lnwx;

    invoke-static {p1}, Lmvv;->j(Ljava/util/Collection;)Lmvv;

    move-result-object p1

    invoke-static {p1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p1

    goto :goto_4

    :cond_6
    sget-object p1, Lmpx;->a:Lmpx;

    :goto_4
    iput-object p1, p0, Lgsw;->f:Lmqp;

    iget p1, v1, Locp;->a:I

    and-int/lit8 p1, p1, 0x40

    if-eqz p1, :cond_7

    goto :goto_5

    :cond_7
    const/4 v2, 0x0

    :goto_5
    if-eqz v2, :cond_9

    iget-object p1, v1, Locp;->h:Locq;

    if-nez p1, :cond_8

    sget-object p1, Locq;->d:Locq;

    :cond_8
    iget p1, p1, Locq;->c:F

    goto :goto_6

    :cond_9
    const/4 p1, 0x0

    :goto_6
    iput p1, p0, Lgsw;->e:F

    if-eqz v2, :cond_b

    iget-object p1, v1, Locp;->h:Locq;

    if-nez p1, :cond_a

    sget-object p1, Locq;->d:Locq;

    :cond_a
    iget-object p1, p1, Locq;->b:Lnwx;

    invoke-static {p1}, Lmvv;->j(Ljava/util/Collection;)Lmvv;

    move-result-object p1

    invoke-static {p1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p1

    goto :goto_7

    :cond_b
    sget-object p1, Lmpx;->a:Lmpx;

    :goto_7
    iput-object p1, p0, Lgsw;->d:Lmqp;

    return-void
.end method
