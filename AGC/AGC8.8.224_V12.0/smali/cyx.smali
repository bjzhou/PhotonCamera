.class public Lcyx;
.super Lcys;


# instance fields
.field public final e:Lcom/google/android/apps/camera/bottombar/BottomBarController;

.field public final f:Liff;

.field public final g:Lhwu;

.field public final h:Libj;

.field public final i:Lmqp;

.field public j:Lcys;

.field public k:Lcsc;

.field public final l:Ldfa;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/bottombar/BottomBarController;Liff;Lhwu;Libj;Ldfa;Lmqp;[B[B)V
    .locals 0

    invoke-direct {p0}, Lcys;-><init>()V

    iput-object p1, p0, Lcyx;->e:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    iput-object p2, p0, Lcyx;->f:Liff;

    iput-object p3, p0, Lcyx;->g:Lhwu;

    iput-object p4, p0, Lcyx;->h:Libj;

    iput-object p5, p0, Lcyx;->l:Ldfa;

    iput-object p6, p0, Lcyx;->i:Lmqp;

    return-void
.end method


# virtual methods
.method public final bx()I
    .locals 1

    iget-object v0, p0, Lcyx;->j:Lcys;

    invoke-virtual {v0}, Lcys;->bx()I

    move-result v0

    return v0
.end method

.method public final k()V
    .locals 2

    iget-object v0, p0, Lcyx;->l:Ldfa;

    invoke-virtual {v0}, Ldfa;->h()V

    iget-object v0, p0, Lcyx;->e:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->stopRecording(ZZ)V

    iget-object v0, p0, Lcyx;->h:Libj;

    invoke-interface {v0, v1}, Libj;->v(Z)V

    iget-object v0, p0, Lcyx;->h:Libj;

    invoke-interface {v0, v1}, Libj;->l(Z)V

    iget-object v0, p0, Lcyx;->f:Liff;

    invoke-interface {v0}, Liff;->ad()V

    iget-object v0, p0, Lcyx;->g:Lhwu;

    invoke-virtual {v0, v1}, Lhwu;->d(Z)V

    iget-object v0, p0, Lcyx;->i:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldal;

    invoke-interface {v0}, Ldal;->q()V

    :cond_0
    invoke-static {}, Lipj;->d()V

    return-void
.end method
