.class public final Lgmw;
.super Lgmp;


# instance fields
.field final a:Lnph;

.field final b:Lnph;

.field final synthetic c:Lgmx;


# direct methods
.method public constructor <init>(Lgmx;Lgkr;Lebb;Lcom/google/googlex/gcam/BurstSpec;Lkou;[B[B)V
    .locals 7

    iput-object p1, p0, Lgmw;->c:Lgmx;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v6}, Lgmp;-><init>(Lgkr;Lebb;Lcom/google/googlex/gcam/BurstSpec;Lkou;[B[B)V

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object p1

    iput-object p1, p0, Lgmw;->a:Lnph;

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object p1

    iput-object p1, p0, Lgmw;->b:Lnph;

    return-void
.end method


# virtual methods
.method public final a(Lecc;)V
    .locals 1

    iget-object v0, p0, Lgmw;->b:Lnph;

    invoke-virtual {v0, p1}, Lnph;->e(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c(Lkeb;)V
    .locals 4

    iget-object v0, p0, Lgmw;->c:Lgmx;

    iget-object v0, v0, Lgmx;->c:Lgnq;

    invoke-interface {v0, p1}, Lgnq;->a(Lkeb;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lgmp;->c(Lkeb;)V

    return-void

    :cond_0
    sget-object v0, Lgmx;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    invoke-interface {p1}, Lkeb;->b()Lkeg;

    move-result-object v1

    const-string v2, "Frame %s rejected."

    const/16 v3, 0xbea

    invoke-static {v0, v2, v1, v3}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    invoke-interface {p1}, Lkeb;->close()V

    return-void
.end method
