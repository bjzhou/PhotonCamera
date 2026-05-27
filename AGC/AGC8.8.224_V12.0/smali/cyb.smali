.class Lcyb;
.super Lcys;


# instance fields
.field final synthetic b:Lcyd;


# direct methods
.method public constructor <init>(Lcyd;)V
    .locals 0

    iput-object p1, p0, Lcyb;->b:Lcyd;

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
    .locals 5

    iget-object v0, p0, Lcyb;->b:Lcyd;

    iget-object v1, v0, Lcyd;->h:Lczx;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lczx;->i(Z)V

    iget-object v1, v0, Lcyd;->g:Libj;

    invoke-interface {v1, v2}, Libj;->v(Z)V

    iget-object v1, v0, Lcyd;->g:Libj;

    invoke-interface {v1, v2}, Libj;->l(Z)V

    iget-object v1, v0, Lcyd;->k:Ldfa;

    invoke-virtual {v1}, Ldfa;->f()V

    iget-object v1, v0, Lcyd;->e:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    iget-object v3, v0, Lcyd;->i:Ldhi;

    sget-object v4, Ldgu;->Y:Ldhj;

    invoke-interface {v3, v4}, Ldhi;->l(Ldhj;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcyd;->i:Ldhi;

    sget-object v4, Ldgu;->p:Ldhj;

    invoke-interface {v3, v4}, Ldhi;->l(Ldhj;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    :goto_0
    iget-object v3, v0, Lcyd;->i:Ldhi;

    sget-object v4, Ldgu;->M:Ldhj;

    invoke-interface {v3, v4}, Ldhi;->l(Ldhj;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->startRecording(ZZ)V

    iget-object v0, v0, Lcyd;->f:Liff;

    invoke-interface {v0}, Liff;->J()V

    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lcyb;->b:Lcyd;

    iput-object p0, v0, Lcyd;->j:Lcys;

    return-void
.end method
