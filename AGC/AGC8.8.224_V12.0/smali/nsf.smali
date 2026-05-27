.class public final synthetic Lnsf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlex/gcam/hdrplus/BaseFrameAeCallback;


# instance fields
.field public final synthetic a:Landroidx/wear/ambient/AmbientMode$AmbientController;


# direct methods
.method public synthetic constructor <init>(Landroidx/wear/ambient/AmbientMode$AmbientController;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnsf;->a:Landroidx/wear/ambient/AmbientMode$AmbientController;

    return-void
.end method


# virtual methods
.method public final accept(IJ)V
    .locals 2

    iget-object p1, p0, Lnsf;->a:Landroidx/wear/ambient/AmbientMode$AmbientController;

    new-instance v0, Lcom/google/googlex/gcam/AeResults;

    const/4 v1, 0x1

    invoke-direct {v0, p2, p3, v1}, Lcom/google/googlex/gcam/AeResults;-><init>(JZ)V

    iget-object p1, p1, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    check-cast p1, Leea;

    iget p2, p1, Leea;->s:I

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lmoz;->p(Z)V

    iget-object p2, p1, Leea;->l:Leec;

    invoke-virtual {p2}, Leec;->a()Lmqp;

    move-result-object p2

    invoke-virtual {p2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lecl;

    invoke-interface {p2, p1, v0}, Lecl;->j(Leea;Lcom/google/googlex/gcam/AeResults;)V

    return-void
.end method
