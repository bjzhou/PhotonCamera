.class public final synthetic Ledw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlex/gcam/base/function/IntLongConsumer;


# instance fields
.field public final synthetic a:Leea;


# direct methods
.method public synthetic constructor <init>(Leea;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ledw;->a:Leea;

    return-void
.end method


# virtual methods
.method public final accept(IJ)V
    .locals 6

    iget-object v0, p0, Ledw;->a:Leea;

    iget v1, v0, Leea;->s:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lmoz;->p(Z)V

    iget-object v1, v0, Leea;->l:Leec;

    invoke-virtual {v1}, Leec;->e()Lmqp;

    move-result-object v1

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v1

    const-string v4, "Got PD with no callback present"

    invoke-static {v1, v4}, Lmoz;->q(ZLjava/lang/Object;)V

    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->kInvalidAllocationId_get()J

    move-result-wide v4

    cmp-long v1, p2, v4

    if-eqz v1, :cond_1

    iget-object p1, v0, Leea;->k:Lnrp;

    iget-boolean p2, p1, Lnrp;->b:Z

    const-string p3, "doneWriting() must be called before getImage."

    invoke-static {p2, p3}, Lmoz;->q(ZLjava/lang/Object;)V

    iget-object p1, p1, Lnrp;->a:Lcom/google/googlex/gcam/InterleavedImageU16;

    iget-object p2, v0, Leea;->l:Leec;

    invoke-virtual {p2}, Leec;->e()Lmqp;

    move-result-object p2

    invoke-virtual {p2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lecs;

    invoke-interface {p2, p1}, Lecs;->a(Lcom/google/googlex/gcam/InterleavedImageU16;)V

    return-void

    :cond_1
    sget-object p2, Leea;->a:Lnak;

    invoke-virtual {p2}, Lnaf;->c()Lnaz;

    move-result-object p2

    check-cast p2, Lnah;

    const/16 p3, 0x535

    invoke-interface {p2, p3}, Lnah;->G(I)Lnaz;

    move-result-object p2

    check-cast p2, Lnah;

    const-string p3, "MergePD failed (shotId = %d)"

    invoke-interface {p2, p3, p1}, Lnah;->p(Ljava/lang/String;I)V

    iget-object p2, v0, Leea;->l:Leec;

    invoke-virtual {p2}, Leec;->e()Lmqp;

    move-result-object p2

    invoke-virtual {p2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lecs;

    new-instance v0, Lecq;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {p3, v1}, Lkba;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lecq;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lecs;->b(Lecq;)V

    return-void
.end method
