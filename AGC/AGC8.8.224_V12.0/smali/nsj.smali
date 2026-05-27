.class public final synthetic Lnsj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlex/gcam/hdrplus/MergedRawCallback;


# instance fields
.field public final synthetic a:Lfxf;


# direct methods
.method public synthetic constructor <init>(Lfxf;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnsj;->a:Lfxf;

    return-void
.end method


# virtual methods
.method public final accept(IJJJI)V
    .locals 4

    iget-object v0, p0, Lnsj;->a:Lfxf;

    new-instance v1, Lcom/google/googlex/gcam/ShotMetadata;

    invoke-direct {v1, p4, p5}, Lcom/google/googlex/gcam/ShotMetadata;-><init>(J)V

    new-instance p4, Lnqv;

    invoke-direct {p4, p6, p7}, Lnqv;-><init>(J)V

    invoke-static {p8}, Lnqz;->a(I)Lnqz;

    iget-object p5, v0, Lfxf;->b:Ljava/lang/Object;

    iget-object p6, v0, Lfxf;->a:Ljava/lang/Object;

    check-cast p5, Leea;

    iget-object p7, p5, Leea;->r:Lhna;

    invoke-static {p7}, Leea;->d(Lhna;)Lnqn;

    move-result-object p7

    invoke-static {v1, p7}, Lnsy;->j(Lcom/google/googlex/gcam/ShotMetadata;Lnqn;)V

    iget p7, p5, Leea;->s:I

    const/4 p8, 0x0

    const/4 v0, 0x1

    if-ne p7, v0, :cond_0

    const/4 p7, 0x1

    goto :goto_0

    :cond_0
    const/4 p7, 0x0

    :goto_0
    invoke-static {p7}, Lmoz;->p(Z)V

    iget-object p7, p5, Leea;->l:Leec;

    invoke-virtual {p7}, Leec;->j()Lmqp;

    move-result-object p7

    invoke-virtual {p7}, Lmqp;->g()Z

    move-result p7

    const-string v2, "Got merged RAW callback but no callback present"

    invoke-static {p7, v2}, Lmoz;->q(ZLjava/lang/Object;)V

    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->kInvalidAllocationId_get()J

    move-result-wide v2

    cmp-long p7, p2, v2

    if-eqz p7, :cond_1

    check-cast p6, Lnrr;

    iget-boolean p1, p6, Lnrr;->b:Z

    const-string p2, "doneWriting() must be called before getImage."

    invoke-static {p1, p2}, Lmoz;->q(ZLjava/lang/Object;)V

    iget-object p1, p6, Lnrr;->a:Lnrc;

    iget-object p2, p5, Leea;->l:Leec;

    invoke-virtual {p2}, Leec;->j()Lmqp;

    move-result-object p2

    invoke-virtual {p2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lecu;

    invoke-interface {p2, p5, p1, v1, p4}, Lecu;->a(Leea;Lnrc;Lcom/google/googlex/gcam/ShotMetadata;Lnqv;)V

    return-void

    :cond_1
    iget-object p2, p5, Leea;->l:Leec;

    invoke-virtual {p2}, Leec;->j()Lmqp;

    move-result-object p2

    invoke-virtual {p2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lecu;

    new-instance p3, Lecq;

    new-array p4, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p4, p8

    const-string p1, "MergeRaw failed (shotId = %d)"

    invoke-static {p1, p4}, Lkba;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lecq;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p3}, Lecu;->b(Lecq;)V

    return-void
.end method
