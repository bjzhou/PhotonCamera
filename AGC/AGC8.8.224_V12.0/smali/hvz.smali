.class public final Lhvz;
.super Lhvu;

# interfaces
.implements Lhiv;


# instance fields
.field public final a:Lcom/google/android/apps/camera/bottombar/BottomBarController;

.field public final b:Liff;

.field public final c:Lgeh;

.field public final d:Ljvk;

.field public final e:Lhiu;

.field public final f:Lhiw;

.field public final g:Lhiw;

.field public final h:Lhiw;

.field public final i:Lhiw;

.field public final j:Ldqx;

.field public final k:Ljew;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/bottombar/BottomBarController;Liff;Lgeh;Ljew;Ldqx;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Lhvu;-><init>()V

    iput-object p1, p0, Lhvz;->a:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    iput-object p2, p0, Lhvz;->b:Liff;

    iput-object p3, p0, Lhvz;->c:Lgeh;

    iput-object p4, p0, Lhvz;->k:Ljew;

    new-instance p1, Ljvk;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-direct {p1, p3}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lhvz;->d:Ljvk;

    iput-object p5, p0, Lhvz;->j:Ldqx;

    new-instance p1, Lhvj;

    invoke-direct {p1, p0}, Lhvj;-><init>(Lhvz;)V

    new-instance p3, Lhiw;

    new-array p4, p2, [Lhis;

    invoke-direct {p3, p1, p4}, Lhiw;-><init>(Lhis;[Lhis;)V

    iput-object p3, p0, Lhvz;->f:Lhiw;

    new-instance p1, Lhvk;

    invoke-direct {p1, p0}, Lhvk;-><init>(Lhvz;)V

    new-instance p3, Lhiw;

    new-array p4, p2, [Lhis;

    invoke-direct {p3, p1, p4}, Lhiw;-><init>(Lhis;[Lhis;)V

    iput-object p3, p0, Lhvz;->g:Lhiw;

    new-instance p1, Lhvl;

    invoke-direct {p1, p0}, Lhvl;-><init>(Lhvz;)V

    new-instance p3, Lhiw;

    new-array p4, p2, [Lhis;

    invoke-direct {p3, p1, p4}, Lhiw;-><init>(Lhis;[Lhis;)V

    iput-object p3, p0, Lhvz;->h:Lhiw;

    new-instance p1, Lhvm;

    invoke-direct {p1, p0}, Lhvm;-><init>(Lhvz;)V

    new-instance p4, Lhiw;

    new-array p5, p2, [Lhis;

    invoke-direct {p4, p1, p5}, Lhiw;-><init>(Lhis;[Lhis;)V

    iput-object p4, p0, Lhvz;->i:Lhiw;

    new-instance p1, Lhiu;

    invoke-direct {p1, p3, p2}, Lhiu;-><init>(Lhiw;Z)V

    iput-object p1, p0, Lhvz;->e:Lhiu;

    invoke-virtual {p1}, Lhiu;->f()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lhvz;->e:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lhvz;->e:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Lhvu;

    invoke-virtual {v0}, Lhvu;->a()V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lhvz;->e:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lhvz;->e:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Lhvu;

    invoke-virtual {v0}, Lhvu;->b()V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lhvz;->e:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lhvz;->e:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Lhvu;

    invoke-virtual {v0}, Lhvu;->c()V

    return-void
.end method

.method public final cl()V
    .locals 1

    iget-object v0, p0, Lhvz;->e:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lhvz;->e:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Lhvu;

    invoke-virtual {v0}, Lhvu;->cl()V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lhvz;->e:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lhvz;->e:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Lhvu;

    invoke-virtual {v0}, Lhvu;->d()V

    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lhvz;->e:Lhiu;

    invoke-virtual {v0}, Lhiu;->b()V

    iget-object v0, p0, Lhvz;->f:Lhiw;

    invoke-virtual {v0}, Lhiw;->e()V

    iget-object v0, p0, Lhvz;->g:Lhiw;

    invoke-virtual {v0}, Lhiw;->e()V

    iget-object v0, p0, Lhvz;->h:Lhiw;

    invoke-virtual {v0}, Lhiw;->e()V

    iget-object v0, p0, Lhvz;->i:Lhiw;

    invoke-virtual {v0}, Lhiw;->e()V

    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lhvz;->e:Lhiu;

    invoke-virtual {v0}, Lhiu;->c()V

    return-void
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lhvz;->e:Lhiu;

    invoke-virtual {v0}, Lhiu;->d()V

    return-void
.end method

.method public final h()V
    .locals 0

    invoke-static {p0}, Ljcb;->l(Lhiv;)V

    return-void
.end method
