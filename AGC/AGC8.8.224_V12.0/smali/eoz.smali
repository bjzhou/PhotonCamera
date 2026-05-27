.class final Leoz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlex/gcam/lasagna/LasagnaCallbacks;


# instance fields
.field final synthetic a:Lepb;


# direct methods
.method public constructor <init>(Lepb;)V
    .locals 0

    iput-object p1, p0, Leoz;->a:Lepb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IILjava/lang/String;Lmqp;)V
    .locals 2

    iget-object v0, p0, Leoz;->a:Lepb;

    iget-object v0, v0, Lepb;->n:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lepo;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p1, p2, p3, p4}, Lepo;->a(IILjava/lang/String;Lmqp;)V

    return-void
.end method

.method public final e(IJILjava/lang/String;Lcom/google/googlex/gcam/ShotMetadata;)V
    .locals 8

    iget-object v0, p0, Leoz;->a:Lepb;

    iget-object v0, v0, Lepb;->n:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lepo;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v2, p1

    move-wide v3, p2

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lepo;->e(IJILjava/lang/String;Lcom/google/googlex/gcam/ShotMetadata;)V

    return-void
.end method

.method public final synthetic onFinalStatusNative(IILjava/lang/String;[B)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lnsy;->$default$onFinalStatusNative(Lcom/google/googlex/gcam/lasagna/LasagnaCallbacks;IILjava/lang/String;[B)V

    return-void
.end method

.method public final synthetic onImageNative(IJILjava/lang/String;J)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lnsy;->$default$onImageNative(Lcom/google/googlex/gcam/lasagna/LasagnaCallbacks;IJILjava/lang/String;J)V

    return-void
.end method

.method public final onProgress(IF)V
    .locals 2

    iget-object v0, p0, Leoz;->a:Lepb;

    iget-object v0, v0, Lepb;->n:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lepo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Processing progress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lepo;->i:Leea;

    if-eqz p1, :cond_0

    iget-object p1, p1, Leea;->v:Lgkr;

    iget-object p1, p1, Lgkr;->a:Ljava/lang/Object;

    sget-object v0, Leqc;->t:Lilz;

    invoke-interface {p1, v0, p2}, Lgaa;->a(Lilz;F)V

    return-void

    :cond_0
    sget-object p1, Lepo;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    const-string p2, "Shot has been aborted."

    const/16 v0, 0x6fb

    invoke-static {p1, p2, v0}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void
.end method

.method public final onPslRequest(IZFF)V
    .locals 2

    iget-object v0, p0, Leoz;->a:Lepb;

    iget-object v0, v0, Lepb;->n:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lepo;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p1, p2, p3, p4}, Lepo;->onPslRequest(IZFF)V

    return-void
.end method
