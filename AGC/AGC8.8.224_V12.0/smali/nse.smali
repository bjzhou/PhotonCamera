.class public final synthetic Lnse;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlex/gcam/hdrplus/MutableMergedRawCallback;


# instance fields
.field public final synthetic a:Landroidx/wear/ambient/AmbientMode$AmbientController;


# direct methods
.method public synthetic constructor <init>(Landroidx/wear/ambient/AmbientMode$AmbientController;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnse;->a:Landroidx/wear/ambient/AmbientMode$AmbientController;

    return-void
.end method


# virtual methods
.method public final onImageView(IJJ)V
    .locals 1

    iget-object p1, p0, Lnse;->a:Landroidx/wear/ambient/AmbientMode$AmbientController;

    new-instance v0, Lcom/google/googlex/gcam/ShotMetadata;

    invoke-direct {v0, p4, p5}, Lcom/google/googlex/gcam/ShotMetadata;-><init>(J)V

    iget-object p1, p1, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    check-cast p1, Leea;

    iget-object p4, p1, Leea;->r:Lhna;

    invoke-static {p4}, Leea;->d(Lhna;)Lnqn;

    move-result-object p4

    invoke-static {v0, p4}, Lnsy;->j(Lcom/google/googlex/gcam/ShotMetadata;Lnqn;)V

    iget p4, p1, Leea;->s:I

    const/4 p5, 0x1

    if-ne p4, p5, :cond_0

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    :goto_0
    invoke-static {p5}, Lmoz;->p(Z)V

    iget-object p4, p1, Leea;->l:Leec;

    invoke-virtual {p4}, Leec;->d()Lmqp;

    move-result-object p4

    invoke-virtual {p4}, Lmqp;->g()Z

    move-result p4

    const-string p5, "Got mutable merged RAW callback but no callback present"

    invoke-static {p4, p5}, Lmoz;->q(ZLjava/lang/Object;)V

    iget-object p4, p1, Leea;->l:Leec;

    invoke-virtual {p4}, Leec;->d()Lmqp;

    move-result-object p4

    invoke-virtual {p4}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lecr;

    invoke-interface {p4, p1, p2, p3, v0}, Lecr;->j(Leea;JLcom/google/googlex/gcam/ShotMetadata;)V

    return-void
.end method
