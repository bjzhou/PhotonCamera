.class Lcyv;
.super Lcys;


# instance fields
.field final synthetic b:Lcyx;


# direct methods
.method public constructor <init>(Lcyx;)V
    .locals 0

    iput-object p1, p0, Lcyv;->b:Lcyx;

    invoke-direct {p0}, Lcys;-><init>()V

    return-void
.end method


# virtual methods
.method public final bx()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c()V
    .locals 4

    iget-object v0, p0, Lcyv;->b:Lcyx;

    iget-object v1, v0, Lcyx;->l:Ldfa;

    invoke-virtual {v1}, Ldfa;->f()V

    iget-object v1, v0, Lcyx;->e:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    iget-object v2, v0, Lcyx;->k:Lcsc;

    iget-boolean v2, v2, Lcsc;->E:Z

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-virtual {v1, v3, v2}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->startRecording(ZZ)V

    iget-object v1, v0, Lcyx;->h:Libj;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Libj;->v(Z)V

    iget-object v1, v0, Lcyx;->h:Libj;

    invoke-interface {v1, v2}, Libj;->l(Z)V

    iget-object v1, v0, Lcyx;->f:Liff;

    invoke-interface {v1}, Liff;->V()V

    iget-object v1, v0, Lcyx;->g:Lhwu;

    invoke-virtual {v1, v2}, Lhwu;->d(Z)V

    iget-object v0, v0, Lcyx;->i:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldal;

    invoke-interface {v0}, Ldal;->p()V

    :cond_0
    invoke-static {}, Lipj;->c()V

    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lcyv;->b:Lcyx;

    iput-object p0, v0, Lcyx;->j:Lcys;

    return-void
.end method

.method public final j(Lcsc;)V
    .locals 1

    iget-object v0, p0, Lcyv;->b:Lcyx;

    iput-object p1, v0, Lcyx;->k:Lcsc;

    return-void
.end method
