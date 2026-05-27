.class public Lcyp;
.super Lcys;


# instance fields
.field public final e:Lcom/google/android/apps/camera/bottombar/BottomBarController;

.field public final f:Liff;

.field public final g:Lhwu;

.field public final h:Libj;

.field public i:Lcys;

.field public final j:Ldfa;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/bottombar/BottomBarController;Liff;Lhwu;Libj;Ldfa;[B[B)V
    .locals 0

    invoke-direct {p0}, Lcys;-><init>()V

    iput-object p1, p0, Lcyp;->e:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    iput-object p2, p0, Lcyp;->f:Liff;

    iput-object p3, p0, Lcyp;->g:Lhwu;

    iput-object p4, p0, Lcyp;->h:Libj;

    iput-object p5, p0, Lcyp;->j:Ldfa;

    return-void
.end method


# virtual methods
.method public final bx()I
    .locals 1

    iget-object v0, p0, Lcyp;->i:Lcys;

    invoke-virtual {v0}, Lcys;->bx()I

    move-result v0

    return v0
.end method

.method public final k()V
    .locals 3

    iget-object v0, p0, Lcyp;->j:Ldfa;

    invoke-virtual {v0}, Ldfa;->h()V

    iget-object v0, p0, Lcyp;->e:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->stopRecording(ZZ)V

    iget-object v0, p0, Lcyp;->h:Libj;

    invoke-interface {v0, v2}, Libj;->v(Z)V

    iget-object v0, p0, Lcyp;->h:Libj;

    invoke-interface {v0, v2}, Libj;->l(Z)V

    iget-object v0, p0, Lcyp;->f:Liff;

    invoke-interface {v0}, Liff;->ad()V

    iget-object v0, p0, Lcyp;->g:Lhwu;

    invoke-virtual {v0, v2}, Lhwu;->d(Z)V

    invoke-static {}, Lipj;->d()V

    return-void
.end method
