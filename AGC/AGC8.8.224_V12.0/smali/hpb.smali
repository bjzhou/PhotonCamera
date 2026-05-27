.class Lhpb;
.super Ljava/lang/Object;

# interfaces
.implements Lhou;


# instance fields
.field final synthetic b:Lhpg;


# direct methods
.method public constructor <init>(Lhpg;)V
    .locals 0

    iput-object p1, p0, Lhpb;->b:Lhpg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lhpb;->b:Lhpg;

    iget-object v0, v0, Lhpg;->l:Lhpq;

    invoke-virtual {v0}, Lhpq;->i()V

    iget-object v0, p0, Lhpb;->b:Lhpg;

    iget-object v0, v0, Lhpg;->l:Lhpq;

    iget-object v1, v0, Lhpq;->K:Lcty;

    invoke-virtual {v1}, Lcty;->d()V

    iget-object v0, v0, Lhpq;->a:Ljwb;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lhpb;->b:Lhpg;

    invoke-virtual {v0}, Lhpg;->j()V

    return-void
.end method

.method public final synthetic c()V
    .locals 0

    return-void
.end method

.method public final synthetic ck()V
    .locals 0

    return-void
.end method

.method public final synthetic d()V
    .locals 0

    return-void
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, Lhpb;->b:Lhpg;

    iget-object v0, v0, Lhpg;->g:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->pauseRecording()V

    iget-object v0, p0, Lhpb;->b:Lhpg;

    iget-object v0, v0, Lhpg;->k:Liff;

    invoke-interface {v0}, Liff;->s()V

    iget-object v0, p0, Lhpb;->b:Lhpg;

    iget-object v0, v0, Lhpg;->l:Lhpq;

    iget-object v1, v0, Lhpq;->K:Lcty;

    invoke-virtual {v1}, Lcty;->c()V

    iget-object v0, v0, Lhpq;->a:Ljwb;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v0, p0, Lhpb;->b:Lhpg;

    iget-object v0, v0, Lhpg;->o:Litm;

    move-object v1, v0

    check-cast v1, Lisi;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lisi;->V:Z

    invoke-interface {v0, v2}, Litm;->r(Z)V

    return-void
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lhpb;->b:Lhpg;

    iget-object v0, v0, Lhpg;->g:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->resumeRecording()V

    iget-object v0, p0, Lhpb;->b:Lhpg;

    iget-object v0, v0, Lhpg;->k:Liff;

    invoke-interface {v0}, Liff;->w()V

    return-void
.end method

.method public final synthetic h()V
    .locals 0

    return-void
.end method

.method public final synthetic i()V
    .locals 0

    return-void
.end method
