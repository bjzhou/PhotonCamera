.class Lcyn;
.super Lcys;


# instance fields
.field final synthetic b:Lcyp;


# direct methods
.method public constructor <init>(Lcyp;)V
    .locals 0

    iput-object p1, p0, Lcyn;->b:Lcyp;

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
    .locals 3

    iget-object v0, p0, Lcyn;->b:Lcyp;

    iget-object v1, v0, Lcyp;->j:Ldfa;

    invoke-virtual {v1}, Ldfa;->f()V

    iget-object v1, v0, Lcyp;->e:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->startRecording(ZZ)V

    iget-object v1, v0, Lcyp;->h:Libj;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Libj;->v(Z)V

    iget-object v1, v0, Lcyp;->h:Libj;

    invoke-interface {v1, v2}, Libj;->l(Z)V

    iget-object v1, v0, Lcyp;->f:Liff;

    invoke-interface {v1}, Liff;->V()V

    iget-object v0, v0, Lcyp;->g:Lhwu;

    invoke-virtual {v0, v2}, Lhwu;->d(Z)V

    invoke-static {}, Lipj;->c()V

    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lcyn;->b:Lcyp;

    iput-object p0, v0, Lcyp;->i:Lcys;

    return-void
.end method
