.class public final Lgrv;
.super Lgrs;

# interfaces
.implements Lhiv;


# instance fields
.field public final a:Lcom/google/android/apps/camera/progressoverlay/ProgressOverlay;

.field public b:Z

.field public final c:Lhiu;

.field public final d:Lhiw;

.field public final e:Lhiw;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/progressoverlay/ProgressOverlay;Lgrn;)V
    .locals 4

    invoke-direct {p0}, Lgrs;-><init>()V

    invoke-static {}, Ljuh;->a()V

    iput-object p1, p0, Lgrv;->a:Lcom/google/android/apps/camera/progressoverlay/ProgressOverlay;

    new-instance p1, Lgrk;

    invoke-direct {p1, p0}, Lgrk;-><init>(Lgrv;)V

    new-instance v0, Lhiw;

    const/4 v1, 0x0

    new-array v2, v1, [Lhis;

    invoke-direct {v0, p1, v2}, Lhiw;-><init>(Lhis;[Lhis;)V

    iput-object v0, p0, Lgrv;->d:Lhiw;

    new-instance p1, Lgrl;

    invoke-direct {p1, p0}, Lgrl;-><init>(Lgrv;)V

    new-instance v2, Lhiw;

    const/4 v3, 0x1

    new-array v3, v3, [Lhis;

    aput-object p2, v3, v1

    invoke-direct {v2, p1, v3}, Lhiw;-><init>(Lhis;[Lhis;)V

    iput-object v2, p0, Lgrv;->e:Lhiw;

    new-instance p1, Lhiu;

    invoke-direct {p1, v0, v1}, Lhiu;-><init>(Lhiw;Z)V

    iput-object p1, p0, Lgrv;->c:Lhiu;

    invoke-virtual {p1}, Lhiu;->f()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lgrv;->c:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lgrv;->c:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Lgrs;

    invoke-virtual {v0}, Lgrs;->a()V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lgrv;->c:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lgrv;->c:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Lgrs;

    invoke-virtual {v0}, Lgrs;->b()V

    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lgrv;->c:Lhiu;

    invoke-virtual {v0}, Lhiu;->b()V

    iget-object v0, p0, Lgrv;->d:Lhiw;

    invoke-virtual {v0}, Lhiw;->e()V

    iget-object v0, p0, Lgrv;->e:Lhiw;

    invoke-virtual {v0}, Lhiw;->e()V

    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lgrv;->c:Lhiu;

    invoke-virtual {v0}, Lhiu;->c()V

    return-void
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lgrv;->c:Lhiu;

    invoke-virtual {v0}, Lhiu;->d()V

    return-void
.end method

.method public final h()V
    .locals 0

    invoke-static {p0}, Ljcb;->l(Lhiv;)V

    return-void
.end method
