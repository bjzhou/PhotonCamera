.class public final Leax;
.super Ljava/lang/Object;

# interfaces
.implements Lecw;


# instance fields
.field final synthetic a:Lewa;

.field final synthetic b:Lgkr;


# direct methods
.method public constructor <init>(Lewa;Lgkr;[B[B)V
    .locals 0

    iput-object p1, p0, Leax;->a:Lewa;

    iput-object p2, p0, Leax;->b:Lgkr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final d()V
    .locals 2

    iget-object v0, p0, Leax;->b:Lgkr;

    iget-object v0, v0, Lgkr;->d:Ljava/lang/Object;

    check-cast v0, Lfte;

    iget-object v0, v0, Lfte;->f:Ljuf;

    invoke-virtual {v0}, Ljuf;->close()V

    iget-object v0, p0, Leax;->a:Lewa;

    iget-object v0, v0, Lewa;->l:Ljava/lang/Object;

    check-cast v0, Lcvr;

    invoke-virtual {v0}, Lcvr;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Leax;->a:Lewa;

    iget-object v0, v0, Lewa;->l:Ljava/lang/Object;

    check-cast v0, Lcvr;

    invoke-virtual {v0}, Lcvr;->G()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfsu;

    iget-object v1, p0, Leax;->b:Lgkr;

    iget-object v1, v1, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {v1}, Lgxl;->h()Lgxy;

    move-result-object v1

    invoke-interface {v0, v1}, Lfsu;->e(Lgxy;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final b(Lhjg;Lebd;)V
    .locals 4

    iget-object v0, p0, Leax;->a:Lewa;

    iget-object v0, v0, Lewa;->h:Ljava/lang/Object;

    const-string v1, "ShotStatus-ShotCompleted"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Leax;->b:Lgkr;

    iget-object v0, v0, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {v0}, Lgxl;->k()Lhjc;

    move-result-object v0

    new-instance v1, Lva;

    iget-wide v2, p1, Lhjg;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget p1, p1, Lhjg;->b:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v1, p2, v2, p1}, Lva;-><init>(Lfci;Ljava/lang/Long;Ljava/lang/Integer;)V

    invoke-interface {v0, v1}, Lhjc;->g(Lva;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Leax;->b:Lgkr;

    iget-object p1, p1, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {p1}, Lgxl;->k()Lhjc;

    move-result-object p1

    new-instance v0, Lva;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1, v1}, Lva;-><init>(Lfci;Ljava/lang/Long;Ljava/lang/Integer;)V

    invoke-interface {p1, v0}, Lhjc;->g(Lva;)V

    :goto_0
    iget-object p1, p0, Leax;->a:Lewa;

    iget-object p1, p1, Lewa;->h:Ljava/lang/Object;

    invoke-interface {p1}, Lkbc;->f()V

    return-void
.end method

.method public final c(Leea;Lecq;)V
    .locals 1

    iget-object p1, p0, Leax;->a:Lewa;

    iget-object p1, p1, Lewa;->g:Ljava/lang/Object;

    const-string v0, "Shot threw an error:"

    invoke-interface {p1, v0, p2}, Lkaq;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0}, Leax;->d()V

    return-void
.end method

.method public final p(Leea;)V
    .locals 1

    iget-object p1, p0, Leax;->a:Lewa;

    iget-object p1, p1, Lewa;->g:Ljava/lang/Object;

    const-string v0, "Shot aborted."

    invoke-interface {p1, v0}, Lkaq;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Leax;->d()V

    return-void
.end method
