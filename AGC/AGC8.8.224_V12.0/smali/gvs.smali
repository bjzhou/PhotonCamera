.class public final Lgvs;
.super Lgvl;

# interfaces
.implements Lhiv;


# instance fields
.field public final a:Lfbz;

.field public final b:Logd;

.field public final c:Lhiu;

.field public final d:Lhiw;

.field public final e:Lhiw;

.field public final f:Lhiw;

.field public final g:Lhiw;

.field private final h:Lcom/google/android/apps/camera/bottombar/BottomBarController;

.field private final i:Ljvs;

.field private final j:Lgzn;

.field private final k:Liks;

.field private final l:Lhmd;


# direct methods
.method public constructor <init>(Lfbz;Lcom/google/android/apps/camera/bottombar/BottomBarController;Logd;Liks;Lhmd;Ljwb;Lgzn;)V
    .locals 0

    invoke-direct {p0}, Lgvl;-><init>()V

    iput-object p1, p0, Lgvs;->a:Lfbz;

    iput-object p3, p0, Lgvs;->b:Logd;

    iput-object p2, p0, Lgvs;->h:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    iput-object p4, p0, Lgvs;->k:Liks;

    iput-object p5, p0, Lgvs;->l:Lhmd;

    iput-object p6, p0, Lgvs;->i:Ljvs;

    iput-object p7, p0, Lgvs;->j:Lgzn;

    new-instance p1, Lgve;

    invoke-direct {p1, p0}, Lgve;-><init>(Lgvs;)V

    new-instance p2, Lhiw;

    const/4 p3, 0x0

    new-array p4, p3, [Lhis;

    invoke-direct {p2, p1, p4}, Lhiw;-><init>(Lhis;[Lhis;)V

    iput-object p2, p0, Lgvs;->d:Lhiw;

    new-instance p1, Lgvf;

    invoke-direct {p1, p0}, Lgvf;-><init>(Lgvs;)V

    new-instance p2, Lhiw;

    new-array p4, p3, [Lhis;

    invoke-direct {p2, p1, p4}, Lhiw;-><init>(Lhis;[Lhis;)V

    iput-object p2, p0, Lgvs;->e:Lhiw;

    new-instance p1, Lgvg;

    invoke-direct {p1, p0}, Lgvg;-><init>(Lgvs;)V

    new-instance p2, Lhiw;

    new-array p4, p3, [Lhis;

    invoke-direct {p2, p1, p4}, Lhiw;-><init>(Lhis;[Lhis;)V

    iput-object p2, p0, Lgvs;->f:Lhiw;

    new-instance p1, Lgvh;

    invoke-direct {p1, p0}, Lgvh;-><init>(Lgvs;)V

    new-instance p4, Lhiw;

    new-array p5, p3, [Lhis;

    invoke-direct {p4, p1, p5}, Lhiw;-><init>(Lhis;[Lhis;)V

    iput-object p4, p0, Lgvs;->g:Lhiw;

    new-instance p1, Lhiu;

    invoke-direct {p1, p2, p3}, Lhiu;-><init>(Lhiw;Z)V

    iput-object p1, p0, Lgvs;->c:Lhiu;

    invoke-virtual {p1}, Lhiu;->f()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lgvs;->c:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lgvs;->c:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Lgvl;

    invoke-virtual {v0}, Lgvl;->a()V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lgvs;->c:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lgvs;->c:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Lgvl;

    invoke-virtual {v0}, Lgvl;->b()V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lgvs;->c:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lgvs;->c:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Lgvl;

    invoke-virtual {v0}, Lgvl;->c()V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lgvs;->c:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lgvs;->c:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Lgvl;

    invoke-virtual {v0}, Lgvl;->d()V

    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lgvs;->c:Lhiu;

    invoke-virtual {v0}, Lhiu;->b()V

    iget-object v0, p0, Lgvs;->d:Lhiw;

    invoke-virtual {v0}, Lhiw;->e()V

    iget-object v0, p0, Lgvs;->e:Lhiw;

    invoke-virtual {v0}, Lhiw;->e()V

    iget-object v0, p0, Lgvs;->f:Lhiw;

    invoke-virtual {v0}, Lhiw;->e()V

    iget-object v0, p0, Lgvs;->g:Lhiw;

    invoke-virtual {v0}, Lhiw;->e()V

    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lgvs;->c:Lhiu;

    invoke-virtual {v0}, Lhiu;->c()V

    return-void
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lgvs;->c:Lhiu;

    invoke-virtual {v0}, Lhiu;->d()V

    return-void
.end method

.method public final h()V
    .locals 0

    invoke-static {p0}, Ljcb;->l(Lhiv;)V

    return-void
.end method

.method public final i()V
    .locals 3

    iget-object v0, p0, Lgvs;->h:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->setSelfieFlashState(Z)V

    iget-object v0, p0, Lgvs;->j:Lgzn;

    sget-object v2, Lgzd;->u:Lgzr;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lgzn;->e(Lgzb;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lgvs;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgvs;->k:Liks;

    iget-object v1, p0, Lgvs;->b:Logd;

    invoke-interface {v1}, Logd;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgvv;

    invoke-interface {v1}, Lgvv;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Liks;->b(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgvs;->k:Liks;

    invoke-virtual {v0}, Liks;->c()V

    :goto_0
    iget-object v0, p0, Lgvs;->l:Lhmd;

    const/16 v1, 0x714

    invoke-virtual {v0, v1}, Lhmd;->a(I)V

    iget-object v0, p0, Lgvs;->b:Logd;

    invoke-interface {v0}, Logd;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgvv;

    invoke-virtual {p0}, Lgvs;->k()Z

    move-result v1

    invoke-interface {v0, v1}, Lgvv;->e(Z)V

    return-void
.end method

.method public final j()V
    .locals 3

    iget-object v0, p0, Lgvs;->h:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->setSelfieFlashState(Z)V

    iget-object v0, p0, Lgvs;->k:Liks;

    invoke-virtual {v0}, Liks;->a()V

    iget-object v0, p0, Lgvs;->b:Logd;

    invoke-interface {v0}, Logd;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgvv;

    invoke-interface {v0}, Lgvv;->d()V

    iget-object v0, p0, Lgvs;->j:Lgzn;

    sget-object v2, Lgzd;->u:Lgzr;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lgzn;->e(Lgzb;Ljava/lang/Object;)V

    iget-object v0, p0, Lgvs;->l:Lhmd;

    const/16 v1, 0x705

    invoke-virtual {v0, v1}, Lhmd;->a(I)V

    return-void
.end method

.method public final k()Z
    .locals 2

    iget-object v0, p0, Lgvs;->i:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lika;

    sget-object v1, Lika;->m:Lika;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
