.class public Lgmp;
.super Ljava/lang/Object;


# instance fields
.field final k:Lmvq;

.field public final l:Lnph;

.field final m:Lnph;

.field public final n:Lkou;

.field public final o:Lcom/google/googlex/gcam/BurstSpec;

.field p:Ljava/util/List;

.field q:Z

.field public r:I

.field public final s:Lebb;

.field public final t:Lgkr;


# direct methods
.method public constructor <init>(Lgkr;Lebb;Lcom/google/googlex/gcam/BurstSpec;Lkou;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lmvv;->e()Lmvq;

    move-result-object p5

    iput-object p5, p0, Lgmp;->k:Lmvq;

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object p5

    iput-object p5, p0, Lgmp;->l:Lnph;

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object p5

    iput-object p5, p0, Lgmp;->m:Lnph;

    const/4 p5, 0x0

    iput p5, p0, Lgmp;->r:I

    iput-object p1, p0, Lgmp;->t:Lgkr;

    iput-object p2, p0, Lgmp;->s:Lebb;

    iput-object p3, p0, Lgmp;->o:Lcom/google/googlex/gcam/BurstSpec;

    iput-object p4, p0, Lgmp;->n:Lkou;

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    iget-boolean v0, p0, Lgmp;->q:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgmp;->q:Z

    iget-object v1, p0, Lgmp;->l:Lnph;

    invoke-virtual {v1, v0}, Lnph;->cancel(Z)Z

    invoke-virtual {p0}, Lgmp;->g()V

    return-void
.end method

.method public c(Lkeb;)V
    .locals 1

    iget-object v0, p0, Lgmp;->k:Lmvq;

    invoke-virtual {v0, p1}, Lmvq;->g(Ljava/lang/Object;)V

    iget p1, p0, Lgmp;->r:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lgmp;->r:I

    return-void
.end method

.method public final f()Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lgmp;->p:Ljava/util/List;

    if-eqz v0, :cond_0

    iget v1, p0, Lgmp;->r:I

    move-object v2, v0

    check-cast v2, Lmyu;

    iget v2, v2, Lmyu;->c:I

    if-ne v1, v2, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lgmp;->k:Lmvq;

    invoke-virtual {v0}, Lmvq;->f()Lmvv;

    move-result-object v0

    iput-object v0, p0, Lgmp;->p:Ljava/util/List;

    return-object v0
.end method

.method public final g()V
    .locals 2

    invoke-virtual {p0}, Lgmp;->f()Ljava/util/List;

    move-result-object v0

    check-cast v0, Lmvv;

    invoke-virtual {v0}, Lmvv;->s()Lnad;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkeb;

    invoke-interface {v1}, Lkeb;->close()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final h(I)V
    .locals 1

    iget-object v0, p0, Lgmp;->l:Lnph;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnph;->e(Ljava/lang/Object;)Z

    return-void
.end method
